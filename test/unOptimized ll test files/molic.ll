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
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.molecule_t*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %15, %struct._IO_FILE** %5, align 8
  br label %41

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %21, %struct._IO_FILE** %5, align 8
  br label %40

22:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  %23 = call i32 @get_mytaskid()
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8
  %27 = call %struct._IO_FILE* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** %5, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  store i32 -1, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %7, align 4
  call void @reducerror(i32 %35)
  %36 = call i32 @get_mytaskid()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8
  br label %39

39:                                               ; preds = %38, %34
  br label %40

40:                                               ; preds = %39, %20
  br label %41

41:                                               ; preds = %40, %14
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call %struct.molecule_t* @fgetpdb(%struct._IO_FILE* %42, i8* %43)
  store %struct.molecule_t* %44, %struct.molecule_t** %6, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %47 = icmp ne %struct._IO_FILE* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = call i32 @get_mytaskid()
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %53 = call i32 @fclose(%struct._IO_FILE* %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8
  ret %struct.molecule_t* %56
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @get_mytaskid() #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local void @reducerror(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.molecule_t* @fgetpdb(%struct._IO_FILE* %0, i8* %1) #0 {
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
  store i8* %1, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %31, i64 0, i64 0
  store i8 0, i8* %37, align 16
  br label %42

38:                                               ; preds = %2
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %31, i64 0, i64 0
  %40 = load i8*, i8** %4, align 8
  %41 = call i8* @strcpy(i8* %39, i8* %40) #8
  br label %42

42:                                               ; preds = %38, %36
  call void @initres()
  call void @init_atab()
  %43 = call %struct.molecule_t* @newmolecule()
  store %struct.molecule_t* %43, %struct.molecule_t** %5, align 8
  store i32 0, i32* %7, align 4
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %44, align 1
  store i32 0, i32* %21, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* @n_atab, align 4
  br label %45

45:                                               ; preds = %492, %42
  %46 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %48 = call i8* @ggets(i8* %46, i32 82, %struct._IO_FILE* %47)
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %493

51:                                               ; preds = %45
  %52 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0
  %53 = call i64 @strlen(i8* %52) #7
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %29, align 4
  br label %55

55:                                               ; preds = %62, %51
  %56 = load i32, i32* %29, align 4
  %57 = icmp slt i32 %56, 80
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %29, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 %60
  store i8 32, i8* %61, align 1
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %29, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %29, align 4
  br label %55

65:                                               ; preds = %55
  %66 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 80
  store i8 0, i8* %66, align 16
  %67 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0
  %68 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %67, i64 4) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0
  %72 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %71, i64 6) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %463

74:                                               ; preds = %70, %65
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %76 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 12
  %77 = call i8* @strncpy(i8* %75, i8* %76, i64 4) #8
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 4
  store i8 0, i8* %78, align 1
  %79 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  store i8* %79, i8** %19, align 8
  store i8* %79, i8** %18, align 8
  br label %80

80:                                               ; preds = %95, %74
  %81 = load i8*, i8** %18, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load i8*, i8** %18, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 32
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %18, align 8
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %19, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %19, align 8
  store i8 %91, i8* %92, align 1
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94
  %96 = load i8*, i8** %18, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %18, align 8
  br label %80

98:                                               ; preds = %80
  %99 = load i8*, i8** %19, align 8
  store i8 0, i8* %99, align 1
  %100 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 49
  br i1 %103, label %114, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 50
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 51
  br i1 %113, label %114, label %141

114:                                              ; preds = %109, %104, %98
  %115 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %116 = load i8, i8* %115, align 1
  store i8 %116, i8* %30, align 1
  store i32 0, i32* %29, align 4
  br label %117

117:                                              ; preds = %133, %114
  %118 = load i32, i32* %29, align 4
  %119 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %120 = call i64 @strlen(i8* %119) #7
  %121 = trunc i64 %120 to i32
  %122 = sub nsw i32 %121, 1
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %117
  %125 = load i32, i32* %29, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = load i32, i32* %29, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %131
  store i8 %129, i8* %132, align 1
  br label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %29, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %29, align 4
  br label %117

136:                                              ; preds = %117
  %137 = load i8, i8* %30, align 1
  %138 = load i32, i32* %29, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %139
  store i8 %137, i8* %140, align 1
  br label %141

141:                                              ; preds = %136, %109
  %142 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 2
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 42
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 2
  store i8 39, i8* %147, align 1
  br label %148

148:                                              ; preds = %146, %141
  %149 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #7
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %154 = call i8* @strcpy(i8* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #8
  br label %155

155:                                              ; preds = %152, %148
  %156 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %157 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 17
  %158 = call i8* @strncpy(i8* %156, i8* %157, i64 3) #8
  %159 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 3
  store i8 0, i8* %159, align 1
  %160 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  store i8* %160, i8** %19, align 8
  store i8* %160, i8** %18, align 8
  br label %161

161:                                              ; preds = %176, %155
  %162 = load i8*, i8** %18, align 8
  %163 = load i8, i8* %162, align 1
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %161
  %166 = load i8*, i8** %18, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 32
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load i8*, i8** %18, align 8
  %172 = load i8, i8* %171, align 1
  %173 = load i8*, i8** %19, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %19, align 8
  store i8 %172, i8* %173, align 1
  br label %175

175:                                              ; preds = %170, %165
  br label %176

176:                                              ; preds = %175
  %177 = load i8*, i8** %18, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %18, align 8
  br label %161

179:                                              ; preds = %161
  %180 = load i8*, i8** %19, align 8
  store i8 0, i8* %180, align 1
  %181 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #7
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  store i32 2, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 7), align 4
  br label %185

185:                                              ; preds = %184, %179
  %186 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #7
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 7), align 4
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %194 = call i8* @strcpy(i8* %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #8
  br label %195

195:                                              ; preds = %192, %189, %185
  %196 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %197 = call i32 @strcmp(i8* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #7
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %201 = call i8* @strcpy(i8* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #8
  br label %202

202:                                              ; preds = %199, %195
  %203 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %204 = call i32 @strcmp(i8* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #7
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %208 = call i8* @strcpy(i8* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #8
  br label %209

209:                                              ; preds = %206, %202
  %210 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #7
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %215 = call i8* @strcpy(i8* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #8
  br label %216

216:                                              ; preds = %213, %209
  %217 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %218 = call i32 @strcmp(i8* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0)) #7
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %222 = call i8* @strcpy(i8* %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #8
  br label %223

223:                                              ; preds = %220, %216
  %224 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %225 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #7
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %229 = call i8* @strcpy(i8* %228, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #8
  br label %230

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %232 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 21
  %233 = call i8* @strncpy(i8* %231, i8* %232, i64 6) #8
  %234 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 6
  store i8 0, i8* %234, align 1
  %235 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 21
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  store i32 %237, i32* %8, align 4
  %238 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 22
  %239 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32* %20) #8
  %240 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %241 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 30
  %242 = call i8* @strncpy(i8* %240, i8* %241, i64 8) #8
  %243 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 8
  store i8 0, i8* %243, align 1
  %244 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %245 = call double @atof(i8* %244) #7
  store double %245, double* %22, align 8
  %246 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %247 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 38
  %248 = call i8* @strncpy(i8* %246, i8* %247, i64 8) #8
  %249 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 8
  store i8 0, i8* %249, align 1
  %250 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %251 = call double @atof(i8* %250) #7
  store double %251, double* %23, align 8
  %252 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %253 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 46
  %254 = call i8* @strncpy(i8* %252, i8* %253, i64 8) #8
  %255 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 8
  store i8 0, i8* %255, align 1
  %256 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %257 = call double @atof(i8* %256) #7
  store double %257, double* %24, align 8
  %258 = getelementptr inbounds [256 x i8], [256 x i8]* %31, i64 0, i64 0
  %259 = call i8* @strstr(i8* %258, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #7
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %230
  %262 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 54
  %263 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %262, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double* %25, double* %26) #8
  store double 1.000000e+00, double* %27, align 8
  store double 0.000000e+00, double* %28, align 8
  br label %313

264:                                              ; preds = %230
  %265 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %266 = call i32 @strncmp(i8* %265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i64 1) #7
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  store double 1.200000e+00, double* %26, align 8
  br label %300

269:                                              ; preds = %264
  %270 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %271 = call i32 @strncmp(i8* %270, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 1) #7
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %269
  store double 1.700000e+00, double* %26, align 8
  br label %299

274:                                              ; preds = %269
  %275 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %276 = call i32 @strncmp(i8* %275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i64 1) #7
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %274
  store double 1.550000e+00, double* %26, align 8
  br label %298

279:                                              ; preds = %274
  %280 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %281 = call i32 @strncmp(i8* %280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i64 1) #7
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %279
  store double 1.500000e+00, double* %26, align 8
  br label %297

284:                                              ; preds = %279
  %285 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %286 = call i32 @strncmp(i8* %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i64 1) #7
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %284
  store double 1.800000e+00, double* %26, align 8
  br label %296

289:                                              ; preds = %284
  %290 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %291 = call i32 @strncmp(i8* %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i64 1) #7
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %289
  store double 1.850000e+00, double* %26, align 8
  br label %295

294:                                              ; preds = %289
  store double 1.700000e+00, double* %26, align 8
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
  store double 0.000000e+00, double* %25, align 8
  %301 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %302 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 54
  %303 = call i8* @strncpy(i8* %301, i8* %302, i64 6) #8
  %304 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 6
  store i8 0, i8* %304, align 1
  %305 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %306 = call double @atof(i8* %305) #7
  store double %306, double* %27, align 8
  %307 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %308 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 60
  %309 = call i8* @strncpy(i8* %307, i8* %308, i64 6) #8
  %310 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 6
  store i8 0, i8* %310, align 1
  %311 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %312 = call double @atof(i8* %311) #7
  store double %312, double* %28, align 8
  br label %313

313:                                              ; preds = %300, %261
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* %7, align 4
  %316 = icmp ne i32 %314, %315
  br i1 %316, label %317, label %396

317:                                              ; preds = %313
  %318 = load i32, i32* @n_atab, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %332

320:                                              ; preds = %317
  %321 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %322 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %323 = call i8* @strcpy(i8* %321, i8* %322) #8
  %324 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %325 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %326 = call i8* @strcpy(i8* %324, i8* %325) #8
  %327 = load i32, i32* %21, align 4
  store i32 %327, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8
  %328 = load i32, i32* @n_atab, align 4
  store i32 %328, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8
  call void @makebonds(%struct.residue_t* @res)
  %329 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %330 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %331 = call i32 @addresidue(%struct.molecule_t* %329, i8* %330, %struct.residue_t* @res)
  call void @initres()
  store i32 0, i32* @n_atab, align 4
  br label %332

332:                                              ; preds = %320, %317
  %333 = load i32, i32* %9, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %9, align 4
  %335 = load i32, i32* %8, align 4
  %336 = icmp eq i32 %335, 32
  br i1 %336, label %337, label %341

337:                                              ; preds = %332
  %338 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %339 = load i32, i32* %9, align 4
  %340 = call i32 (i8*, i8*, ...) @sprintf(i8* %338, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %339) #8
  br label %346

341:                                              ; preds = %332
  %342 = load i32, i32* %8, align 4
  %343 = trunc i32 %342 to i8
  %344 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  store i8 %343, i8* %344, align 1
  %345 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 1
  store i8 0, i8* %345, align 1
  br label %346

346:                                              ; preds = %341, %337
  %347 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %348 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %349 = call i32 @addstrand(%struct.molecule_t* %347, i8* %348)
  store %struct.strand_t* null, %struct.strand_t** %32, align 8
  %350 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %351 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %350, i32 0, i32 2
  %352 = load %struct.strand_t*, %struct.strand_t** %351, align 8
  store %struct.strand_t* %352, %struct.strand_t** %33, align 8
  br label %353

353:                                              ; preds = %366, %346
  %354 = load %struct.strand_t*, %struct.strand_t** %33, align 8
  %355 = icmp ne %struct.strand_t* %354, null
  br i1 %355, label %356, label %370

356:                                              ; preds = %353
  %357 = load %struct.strand_t*, %struct.strand_t** %33, align 8
  %358 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  %360 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %361 = call i32 @strcmp(i8* %359, i8* %360) #7
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %365, label %363

363:                                              ; preds = %356
  %364 = load %struct.strand_t*, %struct.strand_t** %33, align 8
  store %struct.strand_t* %364, %struct.strand_t** %32, align 8
  br label %370

365:                                              ; preds = %356
  br label %366

366:                                              ; preds = %365
  %367 = load %struct.strand_t*, %struct.strand_t** %33, align 8
  %368 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %367, i32 0, i32 4
  %369 = load %struct.strand_t*, %struct.strand_t** %368, align 8
  store %struct.strand_t* %369, %struct.strand_t** %33, align 8
  br label %353

370:                                              ; preds = %363, %353
  %371 = load %struct.strand_t*, %struct.strand_t** %32, align 8
  %372 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %371, i32 0, i32 6
  store i32 10000, i32* %372, align 4
  %373 = load %struct.strand_t*, %struct.strand_t** %32, align 8
  %374 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %373, i32 0, i32 6
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = mul i64 %376, 128
  %378 = call noalias i8* @malloc(i64 %377) #8
  %379 = bitcast i8* %378 to %struct.residue_t**
  %380 = load %struct.strand_t*, %struct.strand_t** %32, align 8
  %381 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %380, i32 0, i32 7
  store %struct.residue_t** %379, %struct.residue_t*** %381, align 8
  %382 = load %struct.strand_t*, %struct.strand_t** %32, align 8
  %383 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %382, i32 0, i32 7
  %384 = load %struct.residue_t**, %struct.residue_t*** %383, align 8
  %385 = icmp eq %struct.residue_t** %384, null
  br i1 %385, label %386, label %387

386:                                              ; preds = %370
  br label %387

387:                                              ; preds = %386, %370
  %388 = load i32, i32* %8, align 4
  store i32 %388, i32* %7, align 4
  %389 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %390 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %391 = call i8* @strcpy(i8* %389, i8* %390) #8
  %392 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %393 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %394 = call i8* @strcpy(i8* %392, i8* %393) #8
  %395 = load i32, i32* %20, align 4
  store i32 %395, i32* %21, align 4
  br label %423

396:                                              ; preds = %313
  %397 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %398 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %399 = load i32, i32* %21, align 4
  %400 = load i32, i32* %20, align 4
  %401 = call i32 @isnewres(i8* %397, i8* %398, i32 %399, i32 %400)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %422

403:                                              ; preds = %396
  %404 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %405 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %406 = call i8* @strcpy(i8* %404, i8* %405) #8
  %407 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %408 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %409 = call i8* @strcpy(i8* %407, i8* %408) #8
  %410 = load i32, i32* %21, align 4
  store i32 %410, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8
  %411 = load i32, i32* @n_atab, align 4
  store i32 %411, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8
  call void @makebonds(%struct.residue_t* @res)
  %412 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %413 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %414 = call i32 @addresidue(%struct.molecule_t* %412, i8* %413, %struct.residue_t* @res)
  call void @initres()
  %415 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %416 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %417 = call i8* @strcpy(i8* %415, i8* %416) #8
  %418 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %419 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %420 = call i8* @strcpy(i8* %418, i8* %419) #8
  %421 = load i32, i32* %20, align 4
  store i32 %421, i32* %21, align 4
  store i32 0, i32* @n_atab, align 4
  br label %422

422:                                              ; preds = %403, %396
  br label %423

423:                                              ; preds = %422, %387
  %424 = load i32, i32* @n_atab, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %425
  store %struct.atom_t* %426, %struct.atom_t** %6, align 8
  %427 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  call void @NAB_initatom(%struct.atom_t* %427, i32 0)
  %428 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %429 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %428, i32 0, i32 0
  %430 = load i8*, i8** %429, align 8
  %431 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %432 = call i8* @strcpy(i8* %430, i8* %431) #8
  %433 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %434 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %433, i32 0, i32 2
  store i32 0, i32* %434, align 8
  %435 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %436 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %435, i32 0, i32 5
  store %struct.residue_t* null, %struct.residue_t** %436, align 8
  %437 = load double, double* %22, align 8
  %438 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %439 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %438, i32 0, i32 17
  %440 = getelementptr inbounds [3 x double], [3 x double]* %439, i64 0, i64 0
  store double %437, double* %440, align 8
  %441 = load double, double* %23, align 8
  %442 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %443 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %442, i32 0, i32 17
  %444 = getelementptr inbounds [3 x double], [3 x double]* %443, i64 0, i64 1
  store double %441, double* %444, align 8
  %445 = load double, double* %24, align 8
  %446 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %447 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %446, i32 0, i32 17
  %448 = getelementptr inbounds [3 x double], [3 x double]* %447, i64 0, i64 2
  store double %445, double* %448, align 8
  %449 = load double, double* %25, align 8
  %450 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %451 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %450, i32 0, i32 6
  store double %449, double* %451, align 8
  %452 = load double, double* %26, align 8
  %453 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %454 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %453, i32 0, i32 7
  store double %452, double* %454, align 8
  %455 = load double, double* %27, align 8
  %456 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %457 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %456, i32 0, i32 9
  store double %455, double* %457, align 8
  %458 = load double, double* %28, align 8
  %459 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %460 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %459, i32 0, i32 8
  store double %458, double* %460, align 8
  %461 = load i32, i32* @n_atab, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* @n_atab, align 4
  br label %492

463:                                              ; preds = %70
  %464 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0
  %465 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* %464, i64 3) #7
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %485

467:                                              ; preds = %463
  %468 = load i32, i32* @n_atab, align 4
  %469 = icmp sgt i32 %468, 0
  br i1 %469, label %470, label %482

470:                                              ; preds = %467
  %471 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %472 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %473 = call i8* @strcpy(i8* %471, i8* %472) #8
  %474 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %475 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %476 = call i8* @strcpy(i8* %474, i8* %475) #8
  %477 = load i32, i32* %21, align 4
  store i32 %477, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8
  %478 = load i32, i32* @n_atab, align 4
  store i32 %478, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8
  call void @makebonds(%struct.residue_t* @res)
  %479 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %480 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %481 = call i32 @addresidue(%struct.molecule_t* %479, i8* %480, %struct.residue_t* @res)
  call void @initres()
  store i32 0, i32* @n_atab, align 4
  br label %482

482:                                              ; preds = %470, %467
  store i32 0, i32* %7, align 4
  %483 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %483, align 1
  %484 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %484, align 1
  store i32 0, i32* %21, align 4
  br label %491

485:                                              ; preds = %463
  %486 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0
  %487 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* %486, i64 3) #7
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %485
  br label %493

490:                                              ; preds = %485
  br label %491

491:                                              ; preds = %490, %482
  br label %492

492:                                              ; preds = %491, %423
  br label %45

493:                                              ; preds = %489, %50
  %494 = load i32, i32* @n_atab, align 4
  %495 = icmp sgt i32 %494, 0
  br i1 %495, label %496, label %508

496:                                              ; preds = %493
  %497 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %498 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %499 = call i8* @strcpy(i8* %497, i8* %498) #8
  %500 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %501 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %502 = call i8* @strcpy(i8* %500, i8* %501) #8
  %503 = load i32, i32* %21, align 4
  store i32 %503, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8
  %504 = load i32, i32* @n_atab, align 4
  store i32 %504, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8
  call void @makebonds(%struct.residue_t* @res)
  %505 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %506 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %507 = call i32 @addresidue(%struct.molecule_t* %505, i8* %506, %struct.residue_t* @res)
  call void @initres()
  br label %508

508:                                              ; preds = %496, %493
  %509 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %510 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %509, i32 0, i32 5
  store i32 0, i32* %510, align 8
  %511 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  ret %struct.molecule_t* %511
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local [4 x [4 x double]]* @getmatrix(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8
  store i32 0, i32* %9, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false)
  %10 = load i8*, i8** %2, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %90

20:                                               ; preds = %12
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %25, %struct._IO_FILE** %3, align 8
  br label %35

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %3, align 8
  %29 = icmp eq %struct._IO_FILE* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  store i32 1, i32* %9, align 4
  br label %90

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %81, %47, %36
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %40 = call i8* @fgets(i8* %38, i32 256, %struct._IO_FILE* %39)
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %82

42:                                               ; preds = %37
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %37

48:                                               ; preds = %42
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %51
  %53 = getelementptr inbounds [4 x double], [4 x double]* %52, i64 0, i64 0
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %55
  %57 = getelementptr inbounds [4 x double], [4 x double]* %56, i64 0, i64 1
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %59
  %61 = getelementptr inbounds [4 x double], [4 x double]* %60, i64 0, i64 2
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %63
  %65 = getelementptr inbounds [4 x double], [4 x double]* %64, i64 0, i64 3
  %66 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* %53, double* %57, double* %61, double* %65) #8
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 4
  br i1 %68, label %69, label %75

69:                                               ; preds = %48
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %72, i32 %73)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false)
  store i32 1, i32* %9, align 4
  br label %90

75:                                               ; preds = %48
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %78, 4
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %82

81:                                               ; preds = %75
  br label %37

82:                                               ; preds = %80, %37
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 4
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false)
  store i32 1, i32* %9, align 4
  br label %90

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %85, %69, %30, %17
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %92 = icmp ne %struct._IO_FILE* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %96 = icmp ne %struct._IO_FILE* %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %99 = call i32 @fclose(%struct._IO_FILE* %98)
  br label %100

100:                                              ; preds = %97, %93, %90
  store i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8** %8, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = bitcast i8* %101 to [4 x [4 x double]]*
  ret [4 x [4 x double]]* %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putpdb(i8* %0, %struct.molecule_t* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.molecule_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.molecule_t* %1, %struct.molecule_t** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8
  %11 = icmp ne %struct.molecule_t* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = call i32 @get_mytaskid()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  store i32 0, i32* %4, align 4
  br label %53

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %20 = call i32 @get_mytaskid()
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %27, %struct._IO_FILE** %8, align 8
  br label %36

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = call %struct._IO_FILE* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store %struct._IO_FILE* %30, %struct._IO_FILE** %8, align 8
  %31 = icmp eq %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %41 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8
  %42 = load i8*, i8** %7, align 8
  call void @fputpdb(%struct._IO_FILE* %40, %struct.molecule_t* %41, i8* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %45 = icmp ne %struct._IO_FILE* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %48 = call i32 @fclose(%struct._IO_FILE* %47)
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50, %19
  %52 = load i32, i32* %9, align 4
  call void @reducerror(i32 %52)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @rt_errormsg_s(i32, i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fputpdb(%struct._IO_FILE* %0, %struct.molecule_t* %1, i8* %2) #0 {
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
  store %struct.molecule_t* %1, %struct.molecule_t** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store %struct.cid_t* null, %struct.cid_t** %27, align 8
  %28 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %29 = icmp ne %struct.molecule_t* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0))
  br label %355

33:                                               ; preds = %3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %35 = icmp ne %struct._IO_FILE* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0))
  br label %355

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %43, align 16
  br label %49

44:                                               ; preds = %39
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @strncpy(i8* %45, i8* %46, i64 255) #8
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 255
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %44, %42
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %51 = call i8* @strstr(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #7
  %52 = icmp ne i8* %51, null
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %20, align 4
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #7
  %56 = icmp ne i8* %55, null
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %21, align 4
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #7
  %60 = icmp ne i8* %59, null
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %22, align 4
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %63 = call i8* @strstr(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #7
  %64 = icmp ne i8* %63, null
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %23, align 4
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %67 = call i8* @strstr(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #7
  %68 = icmp ne i8* %67, null
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %24, align 4
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %71 = call i8* @strstr(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #7
  %72 = icmp ne i8* %71, null
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %25, align 4
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %75 = call i8* @strstr(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #7
  %76 = icmp ne i8* %75, null
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %26, align 4
  %78 = load i32, i32* %26, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %49
  store i32 0, i32* %25, align 4
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i32, i32* %25, align 4
  %83 = load i32, i32* %26, align 4
  %84 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %85 = call %struct.cid_t* @initcid(i32 %82, i32 %83, %struct.molecule_t* %84)
  store %struct.cid_t* %85, %struct.cid_t** %27, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  %86 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %87 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %86, i32 0, i32 2
  %88 = load %struct.strand_t*, %struct.strand_t** %87, align 8
  store %struct.strand_t* %88, %struct.strand_t** %13, align 8
  br label %89

89:                                               ; preds = %349, %81
  %90 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  %91 = icmp ne %struct.strand_t* %90, null
  br i1 %91, label %92, label %353

92:                                               ; preds = %89
  %93 = load %struct.cid_t*, %struct.cid_t** %27, align 8
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %26, align 4
  %96 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  %97 = call i32 @nextcid(%struct.cid_t* %93, i32 %94, i32 %95, %struct.strand_t* %96)
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %12, align 1
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %341, %92
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  %102 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %346

105:                                              ; preds = %99
  %106 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  %107 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %106, i32 0, i32 7
  %108 = load %struct.residue_t**, %struct.residue_t*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %108, i64 %110
  %112 = load %struct.residue_t*, %struct.residue_t** %111, align 8
  store %struct.residue_t* %112, %struct.residue_t** %14, align 8
  %113 = getelementptr inbounds [7 x i8], [7 x i8]* %18, i64 0, i64 0
  %114 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %114, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %105
  %119 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  %120 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %119, i32 0, i32 5
  %121 = load i8*, i8** %120, align 8
  br label %123

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %118
  %124 = phi i8* [ %121, %118 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), %122 ]
  %125 = call i8* @strcpy(i8* %113, i8* %124) #8
  %126 = load i32, i32* %22, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %130 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  call void @mk_brook_rname(i8* %129, %struct.residue_t* %130)
  br label %144

131:                                              ; preds = %123
  %132 = load i32, i32* %23, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %136 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  call void @mk_wwpdb_rname(i8* %135, %struct.residue_t* %136)
  br label %143

137:                                              ; preds = %131
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %139 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  %140 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @strcpy(i8* %138, i8* %141) #8
  br label %143

143:                                              ; preds = %137, %134
  br label %144

144:                                              ; preds = %143, %128
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %337, %144
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  %148 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %147, i32 0, i32 15
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %340

151:                                              ; preds = %145
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  %154 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  %155 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %154, i32 0, i32 17
  %156 = load %struct.atom_t*, %struct.atom_t** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %156, i64 %158
  store %struct.atom_t* %159, %struct.atom_t** %15, align 8
  %160 = load i32, i32* %22, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %151
  %163 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %164 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %165 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  call void @mk_brook_aname(i8* %163, i8* %166, i8* %167)
  br label %184

168:                                              ; preds = %151
  %169 = load i32, i32* %23, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %173 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %174 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  call void @mk_wwpdb_aname(i8* %172, i8* %175, i8* %176)
  br label %183

177:                                              ; preds = %168
  %178 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %179 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %180 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @strcpy(i8* %178, i8* %181) #8
  br label %183

183:                                              ; preds = %177, %171
  br label %184

184:                                              ; preds = %183, %162
  %185 = getelementptr inbounds [7 x i8], [7 x i8]* %18, i64 0, i64 0
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0)) #7
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* %24, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %248

191:                                              ; preds = %188, %184
  %192 = load i32, i32* %24, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  br label %200

197:                                              ; preds = %191
  %198 = load i32, i32* %7, align 4
  %199 = add nsw i32 %198, 1
  br label %200

200:                                              ; preds = %197, %194
  %201 = phi i32 [ %196, %194 ], [ %199, %197 ]
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp slt i32 %202, 100000
  br i1 %203, label %204, label %225

204:                                              ; preds = %200
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %206 = load i32, i32* %11, align 4
  %207 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %208 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %209 = load i8, i8* %12, align 1
  %210 = sext i8 %209 to i32
  %211 = load i32, i32* %9, align 4
  %212 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %213 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %212, i32 0, i32 17
  %214 = getelementptr inbounds [3 x double], [3 x double]* %213, i64 0, i64 0
  %215 = load double, double* %214, align 8
  %216 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %217 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %216, i32 0, i32 17
  %218 = getelementptr inbounds [3 x double], [3 x double]* %217, i64 0, i64 1
  %219 = load double, double* %218, align 8
  %220 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %221 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %220, i32 0, i32 17
  %222 = getelementptr inbounds [3 x double], [3 x double]* %221, i64 0, i64 2
  %223 = load double, double* %222, align 8
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 %206, i8* %207, i8* %208, i32 %210, i32 %211, double %215, double %219, double %223)
  br label %247

225:                                              ; preds = %200
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %227 = load i32, i32* %11, align 4
  %228 = srem i32 %227, 100000
  %229 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %230 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %231 = load i8, i8* %12, align 1
  %232 = sext i8 %231 to i32
  %233 = load i32, i32* %9, align 4
  %234 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %235 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %234, i32 0, i32 17
  %236 = getelementptr inbounds [3 x double], [3 x double]* %235, i64 0, i64 0
  %237 = load double, double* %236, align 8
  %238 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %239 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %238, i32 0, i32 17
  %240 = getelementptr inbounds [3 x double], [3 x double]* %239, i64 0, i64 1
  %241 = load double, double* %240, align 8
  %242 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %243 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %242, i32 0, i32 17
  %244 = getelementptr inbounds [3 x double], [3 x double]* %243, i64 0, i64 2
  %245 = load double, double* %244, align 8
  %246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %226, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 %228, i8* %229, i8* %230, i32 %232, i32 %233, double %237, double %241, double %245)
  br label %247

247:                                              ; preds = %225, %204
  br label %291

248:                                              ; preds = %188
  %249 = load i32, i32* %11, align 4
  %250 = icmp slt i32 %249, 100000
  br i1 %250, label %251, label %270

251:                                              ; preds = %248
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %253 = load i32, i32* %11, align 4
  %254 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %255 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %256 = getelementptr inbounds [7 x i8], [7 x i8]* %18, i64 0, i64 0
  %257 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %258 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %257, i32 0, i32 17
  %259 = getelementptr inbounds [3 x double], [3 x double]* %258, i64 0, i64 0
  %260 = load double, double* %259, align 8
  %261 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %262 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %261, i32 0, i32 17
  %263 = getelementptr inbounds [3 x double], [3 x double]* %262, i64 0, i64 1
  %264 = load double, double* %263, align 8
  %265 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %266 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %265, i32 0, i32 17
  %267 = getelementptr inbounds [3 x double], [3 x double]* %266, i64 0, i64 2
  %268 = load double, double* %267, align 8
  %269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 %253, i8* %254, i8* %255, i8* %256, double %260, double %264, double %268)
  br label %290

270:                                              ; preds = %248
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %272 = load i32, i32* %11, align 4
  %273 = srem i32 %272, 100000
  %274 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %275 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %276 = getelementptr inbounds [7 x i8], [7 x i8]* %18, i64 0, i64 0
  %277 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %278 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %277, i32 0, i32 17
  %279 = getelementptr inbounds [3 x double], [3 x double]* %278, i64 0, i64 0
  %280 = load double, double* %279, align 8
  %281 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %282 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %281, i32 0, i32 17
  %283 = getelementptr inbounds [3 x double], [3 x double]* %282, i64 0, i64 1
  %284 = load double, double* %283, align 8
  %285 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %286 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %285, i32 0, i32 17
  %287 = getelementptr inbounds [3 x double], [3 x double]* %286, i64 0, i64 2
  %288 = load double, double* %287, align 8
  %289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %271, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 %273, i8* %274, i8* %275, i8* %276, double %280, double %284, double %288)
  br label %290

290:                                              ; preds = %270, %251
  br label %291

291:                                              ; preds = %290, %247
  %292 = load i32, i32* %20, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %291
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %296 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %297 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %296, i32 0, i32 6
  %298 = load double, double* %297, align 8
  %299 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %300 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %299, i32 0, i32 7
  %301 = load double, double* %300, align 8
  %302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %295, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double %298, double %301)
  br label %316

303:                                              ; preds = %291
  %304 = load i32, i32* %21, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %315, label %306

306:                                              ; preds = %303
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %308 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %309 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %308, i32 0, i32 9
  %310 = load double, double* %309, align 8
  %311 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %312 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %311, i32 0, i32 8
  %313 = load double, double* %312, align 8
  %314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %307, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double %310, double %313)
  br label %315

315:                                              ; preds = %306, %303
  br label %316

316:                                              ; preds = %315, %294
  %317 = load i32, i32* %22, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %316
  %320 = load i32, i32* %23, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %334

322:                                              ; preds = %319, %316
  %323 = load i32, i32* %20, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %334, label %325

325:                                              ; preds = %322
  %326 = load i32, i32* %21, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %325
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %330 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %331 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %330, i32 0, i32 0
  %332 = load i8*, i8** %331, align 8
  %333 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* %332)
  br label %334

334:                                              ; preds = %328, %325, %322, %319
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %336 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %335, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %337

337:                                              ; preds = %334
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %10, align 4
  br label %145

340:                                              ; preds = %145
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %7, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %7, align 4
  %344 = load i32, i32* %8, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %8, align 4
  br label %99

346:                                              ; preds = %99
  %347 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %348 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %347, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0))
  br label %349

349:                                              ; preds = %346
  %350 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  %351 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %350, i32 0, i32 4
  %352 = load %struct.strand_t*, %struct.strand_t** %351, align 8
  store %struct.strand_t* %352, %struct.strand_t** %13, align 8
  br label %89

353:                                              ; preds = %89
  %354 = load %struct.cid_t*, %struct.cid_t** %27, align 8
  call void @freecid(%struct.cid_t* %354)
  br label %355

355:                                              ; preds = %353, %36, %30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putcif(i8* %0, i8* %1, %struct.molecule_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.molecule_t*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.molecule_t* %2, %struct.molecule_t** %7, align 8
  %9 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8
  %10 = icmp ne %struct.molecule_t* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %39

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %19, %struct._IO_FILE** %8, align 8
  br label %28

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store %struct._IO_FILE* %22, %struct._IO_FILE** %8, align 8
  %23 = icmp eq %struct._IO_FILE* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %25)
  call void @exit(i32 1) #9
  unreachable

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8
  call void @fputcif(%struct._IO_FILE* %29, i8* %30, %struct.molecule_t* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = icmp ne %struct._IO_FILE* %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %37 = call i32 @fclose(%struct._IO_FILE* %36)
  br label %38

38:                                               ; preds = %35, %28
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %11
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fputcif(%struct._IO_FILE* %0, i8* %1, %struct.molecule_t* %2) #0 {
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
  store i8* %1, i8** %5, align 8
  store %struct.molecule_t* %2, %struct.molecule_t** %6, align 8
  %16 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8
  %17 = icmp ne %struct.molecule_t* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %20

19:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1389, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #9
  unreachable

20:                                               ; preds = %18
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %22 = icmp ne %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1390, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #9
  unreachable

25:                                               ; preds = %23
  %26 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8
  %27 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 65, i32 46
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %12, align 1
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* %39)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %53 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8
  %54 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %53, i32 0, i32 2
  %55 = load %struct.strand_t*, %struct.strand_t** %54, align 8
  store %struct.strand_t* %55, %struct.strand_t** %13, align 8
  br label %56

56:                                               ; preds = %137, %25
  %57 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  %58 = icmp ne %struct.strand_t* %57, null
  br i1 %58, label %59, label %141

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %123, %59
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  %65 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %128

68:                                               ; preds = %62
  %69 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %69, i32 0, i32 7
  %71 = load %struct.residue_t**, %struct.residue_t*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %71, i64 %73
  %75 = load %struct.residue_t*, %struct.residue_t** %74, align 8
  store %struct.residue_t* %75, %struct.residue_t** %14, align 8
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %119, %68
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %78, i32 0, i32 15
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  %85 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  %86 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %85, i32 0, i32 17
  %87 = load %struct.atom_t*, %struct.atom_t** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i64 %89
  store %struct.atom_t* %90, %struct.atom_t** %15, align 8
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %94 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = load i8, i8* %12, align 1
  %100 = sext i8 %99 to i32
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %104 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %103, i32 0, i32 17
  %105 = getelementptr inbounds [3 x double], [3 x double]* %104, i64 0, i64 0
  %106 = load double, double* %105, align 8
  %107 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %108 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %107, i32 0, i32 17
  %109 = getelementptr inbounds [3 x double], [3 x double]* %108, i64 0, i64 1
  %110 = load double, double* %109, align 8
  %111 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %111, i32 0, i32 17
  %113 = getelementptr inbounds [3 x double], [3 x double]* %112, i64 0, i64 2
  %114 = load double, double* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 %92, i8* %95, i8* %98, i32 %100, i32 %102, double %106, double %110, double %114, i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %82
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %76

122:                                              ; preds = %76
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %62

128:                                              ; preds = %62
  %129 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8
  %130 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp sgt i32 %131, 1
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8, i8* %12, align 1
  %135 = add i8 %134, 1
  store i8 %135, i8* %12, align 1
  br label %136

136:                                              ; preds = %133, %128
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  %139 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %138, i32 0, i32 4
  %140 = load %struct.strand_t*, %struct.strand_t** %139, align 8
  store %struct.strand_t* %140, %struct.strand_t** %13, align 8
  br label %56

141:                                              ; preds = %56
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putbnd(i8* %0, %struct.molecule_t* %1) #0 {
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
  store %struct.molecule_t* %1, %struct.molecule_t** %5, align 8
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %20 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %21 = icmp ne %struct.molecule_t* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %257

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = call %struct._IO_FILE* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** %6, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %30)
  call void @exit(i32 1) #9
  unreachable

32:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  %33 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %34 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %33, i32 0, i32 2
  %35 = load %struct.strand_t*, %struct.strand_t** %34, align 8
  store %struct.strand_t* %35, %struct.strand_t** %7, align 8
  br label %36

36:                                               ; preds = %45, %32
  %37 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %38 = icmp ne %struct.strand_t* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %41 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %39
  %46 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %46, i32 0, i32 4
  %48 = load %struct.strand_t*, %struct.strand_t** %47, align 8
  store %struct.strand_t* %48, %struct.strand_t** %7, align 8
  br label %36

49:                                               ; preds = %36
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = call noalias i8* @malloc(i64 %52) #8
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %17, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %247

58:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %59 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %60 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %59, i32 0, i32 2
  %61 = load %struct.strand_t*, %struct.strand_t** %60, align 8
  store %struct.strand_t* %61, %struct.strand_t** %7, align 8
  br label %62

62:                                               ; preds = %120, %58
  %63 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %64 = icmp ne %struct.strand_t* %63, null
  br i1 %64, label %65, label %124

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %72 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %119

75:                                               ; preds = %65
  %76 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %77 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %76, i32 0, i32 7
  %78 = load %struct.residue_t**, %struct.residue_t*** %77, align 8
  %79 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %78, i64 0
  %80 = load %struct.residue_t*, %struct.residue_t** %79, align 8
  %81 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %80, i32 0, i32 15
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %110, %75
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %88 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %100 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %99, i32 0, i32 7
  %101 = load %struct.residue_t**, %struct.residue_t*** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %101, i64 %103
  %105 = load %struct.residue_t*, %struct.residue_t** %104, align 8
  %106 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %105, i32 0, i32 15
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %85

113:                                              ; preds = %85
  %114 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %115 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %113, %65
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %122 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %121, i32 0, i32 4
  %123 = load %struct.strand_t*, %struct.strand_t** %122, align 8
  store %struct.strand_t* %123, %struct.strand_t** %7, align 8
  br label %62

124:                                              ; preds = %62
  store i32 0, i32* %15, align 4
  %125 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %126 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %125, i32 0, i32 2
  %127 = load %struct.strand_t*, %struct.strand_t** %126, align 8
  store %struct.strand_t* %127, %struct.strand_t** %7, align 8
  br label %128

128:                                              ; preds = %242, %124
  %129 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %130 = icmp ne %struct.strand_t* %129, null
  br i1 %130, label %131, label %246

131:                                              ; preds = %128
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %233, %131
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %135 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %236

138:                                              ; preds = %132
  %139 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %140 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %139, i32 0, i32 7
  %141 = load %struct.residue_t**, %struct.residue_t*** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %141, i64 %143
  %145 = load %struct.residue_t*, %struct.residue_t** %144, align 8
  store %struct.residue_t* %145, %struct.residue_t** %8, align 8
  %146 = load i32*, i32** %17, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %9, align 4
  store i32 0, i32* %18, align 4
  br label %153

153:                                              ; preds = %182, %138
  %154 = load i32, i32* %18, align 4
  %155 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %156 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %185

159:                                              ; preds = %153
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %161 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %162 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %161, i32 0, i32 12
  %163 = load [2 x i32]*, [2 x i32]** %162, align 8
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %163, i64 %165
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i64 0, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %168, %169
  %171 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %172 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %171, i32 0, i32 12
  %173 = load [2 x i32]*, [2 x i32]** %172, align 8
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %173, i64 %175
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %176, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %178, %179
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %170, i32 %180)
  br label %182

182:                                              ; preds = %159
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %18, align 4
  br label %153

185:                                              ; preds = %153
  %186 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %187 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %186, i32 0, i32 10
  %188 = load %struct.extbond_t*, %struct.extbond_t** %187, align 8
  store %struct.extbond_t* %188, %struct.extbond_t** %19, align 8
  br label %189

189:                                              ; preds = %228, %185
  %190 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8
  %191 = icmp ne %struct.extbond_t* %190, null
  br i1 %191, label %192, label %232

192:                                              ; preds = %189
  %193 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8
  %194 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %13, align 4
  %197 = add nsw i32 %196, 1
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %228

200:                                              ; preds = %192
  %201 = load i32*, i32** %17, align 8
  %202 = load i32, i32* %15, align 4
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %11, align 4
  %208 = load i32*, i32** %17, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %209, %210
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %208, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %12, align 4
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %217 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8
  %218 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %219, %220
  %222 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8
  %223 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %224, %225
  %227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %221, i32 %226)
  br label %228

228:                                              ; preds = %200, %199
  %229 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8
  %230 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %229, i32 0, i32 0
  %231 = load %struct.extbond_t*, %struct.extbond_t** %230, align 8
  store %struct.extbond_t* %231, %struct.extbond_t** %19, align 8
  br label %189

232:                                              ; preds = %189
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %13, align 4
  br label %132

236:                                              ; preds = %132
  %237 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %238 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %15, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %15, align 4
  br label %242

242:                                              ; preds = %236
  %243 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %244 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %243, i32 0, i32 4
  %245 = load %struct.strand_t*, %struct.strand_t** %244, align 8
  store %struct.strand_t* %245, %struct.strand_t** %7, align 8
  br label %128

246:                                              ; preds = %128
  br label %247

247:                                              ; preds = %246, %56
  %248 = load i32*, i32** %17, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32*, i32** %17, align 8
  %252 = bitcast i32* %251 to i8*
  call void @free(i8* %252) #8
  br label %253

253:                                              ; preds = %250, %247
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %255 = call i32 @fclose(%struct._IO_FILE* %254)
  %256 = load i32, i32* %16, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %253, %22
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putdist(i8* %0, %struct.molecule_t* %1, i8* %2, i8* %3) #0 {
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
  store %struct.molecule_t* %1, %struct.molecule_t** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8
  %24 = icmp ne %struct.molecule_t* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %301

28:                                               ; preds = %4
  %29 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8
  %30 = load i8*, i8** %8, align 8
  call void @select_atoms(%struct.molecule_t* %29, i8* %30)
  %31 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8
  %32 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %31, i32 0, i32 2
  %33 = load %struct.strand_t*, %struct.strand_t** %32, align 8
  store %struct.strand_t* %33, %struct.strand_t** %11, align 8
  br label %34

34:                                               ; preds = %117, %28
  %35 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %36 = icmp ne %struct.strand_t* %35, null
  br i1 %36, label %37, label %121

37:                                               ; preds = %34
  %38 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -3
  store i32 %41, i32* %39, align 4
  %42 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 2, i32 0
  %49 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %113, %37
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %56 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %116

59:                                               ; preds = %53
  %60 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %60, i32 0, i32 7
  %62 = load %struct.residue_t**, %struct.residue_t*** %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %62, i64 %64
  %66 = load %struct.residue_t*, %struct.residue_t** %65, align 8
  store %struct.residue_t* %66, %struct.residue_t** %12, align 8
  %67 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %68 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, -3
  store i32 %70, i32* %68, align 8
  %71 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %72 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 2, i32 0
  %78 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  store i32 0, i32* %19, align 4
  %82 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %82, i32 0, i32 17
  %84 = load %struct.atom_t*, %struct.atom_t** %83, align 8
  store %struct.atom_t* %84, %struct.atom_t** %14, align 8
  br label %85

85:                                               ; preds = %107, %59
  %86 = load i32, i32* %19, align 4
  %87 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %88 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %87, i32 0, i32 15
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %85
  %92 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %93 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, -3
  store i32 %95, i32* %93, align 8
  %96 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %97 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 2, i32 0
  %103 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %104 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %91
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %19, align 4
  %110 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %111 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 1
  store %struct.atom_t* %111, %struct.atom_t** %14, align 8
  br label %85

112:                                              ; preds = %85
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %53

116:                                              ; preds = %53
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %119 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %118, i32 0, i32 4
  %120 = load %struct.strand_t*, %struct.strand_t** %119, align 8
  store %struct.strand_t* %120, %struct.strand_t** %11, align 8
  br label %34

121:                                              ; preds = %34
  %122 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8
  %123 = load i8*, i8** %9, align 8
  call void @select_atoms(%struct.molecule_t* %122, i8* %123)
  store i32 0, i32* %16, align 4
  %124 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8
  %125 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %124, i32 0, i32 2
  %126 = load %struct.strand_t*, %struct.strand_t** %125, align 8
  store %struct.strand_t* %126, %struct.strand_t** %11, align 8
  br label %127

127:                                              ; preds = %136, %121
  %128 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %129 = icmp ne %struct.strand_t* %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %132 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %130
  %137 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %138 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %137, i32 0, i32 4
  %139 = load %struct.strand_t*, %struct.strand_t** %138, align 8
  store %struct.strand_t* %139, %struct.strand_t** %11, align 8
  br label %127

140:                                              ; preds = %127
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 8
  %144 = call noalias i8* @malloc(i64 %143) #8
  %145 = bitcast i8* %144 to %struct.residue_t**
  store %struct.residue_t** %145, %struct.residue_t*** %21, align 8
  %146 = icmp eq %struct.residue_t** %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %293

150:                                              ; preds = %140
  store i32 0, i32* %18, align 4
  %151 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8
  %152 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %151, i32 0, i32 2
  %153 = load %struct.strand_t*, %struct.strand_t** %152, align 8
  store %struct.strand_t* %153, %struct.strand_t** %11, align 8
  br label %154

154:                                              ; preds = %181, %150
  %155 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %156 = icmp ne %struct.strand_t* %155, null
  br i1 %156, label %157, label %185

157:                                              ; preds = %154
  store i32 0, i32* %17, align 4
  br label %158

158:                                              ; preds = %177, %157
  %159 = load i32, i32* %17, align 4
  %160 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %161 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %166 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %165, i32 0, i32 7
  %167 = load %struct.residue_t**, %struct.residue_t*** %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %167, i64 %169
  %171 = load %struct.residue_t*, %struct.residue_t** %170, align 8
  %172 = load %struct.residue_t**, %struct.residue_t*** %21, align 8
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %18, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %172, i64 %175
  store %struct.residue_t* %171, %struct.residue_t** %176, align 8
  br label %177

177:                                              ; preds = %164
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  br label %158

180:                                              ; preds = %158
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %183 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %182, i32 0, i32 4
  %184 = load %struct.strand_t*, %struct.strand_t** %183, align 8
  store %struct.strand_t* %184, %struct.strand_t** %11, align 8
  br label %154

185:                                              ; preds = %154
  %186 = load i8*, i8** %6, align 8
  %187 = call %struct._IO_FILE* @fopen(i8* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store %struct._IO_FILE* %187, %struct._IO_FILE** %10, align 8
  %188 = icmp eq %struct._IO_FILE* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %191)
  br label %293

193:                                              ; preds = %185
  store i32 0, i32* %22, align 4
  store i32 0, i32* %17, align 4
  br label %194

194:                                              ; preds = %289, %193
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %292

198:                                              ; preds = %194
  %199 = load %struct.residue_t**, %struct.residue_t*** %21, align 8
  %200 = load i32, i32* %17, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %199, i64 %201
  %203 = load %struct.residue_t*, %struct.residue_t** %202, align 8
  store %struct.residue_t* %203, %struct.residue_t** %12, align 8
  store i32 0, i32* %19, align 4
  br label %204

204:                                              ; preds = %285, %198
  %205 = load i32, i32* %19, align 4
  %206 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %207 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %206, i32 0, i32 15
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %205, %208
  br i1 %209, label %210, label %288

210:                                              ; preds = %204
  %211 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %212 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %211, i32 0, i32 17
  %213 = load %struct.atom_t*, %struct.atom_t** %212, align 8
  %214 = load i32, i32* %19, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %213, i64 %215
  store %struct.atom_t* %216, %struct.atom_t** %14, align 8
  %217 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %218 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = and i32 2, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %284

222:                                              ; preds = %210
  store i32 0, i32* %18, align 4
  br label %223

223:                                              ; preds = %280, %222
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %16, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %283

227:                                              ; preds = %223
  %228 = load %struct.residue_t**, %struct.residue_t*** %21, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %228, i64 %230
  %232 = load %struct.residue_t*, %struct.residue_t** %231, align 8
  store %struct.residue_t* %232, %struct.residue_t** %13, align 8
  store i32 0, i32* %20, align 4
  br label %233

233:                                              ; preds = %276, %227
  %234 = load i32, i32* %20, align 4
  %235 = load %struct.residue_t*, %struct.residue_t** %13, align 8
  %236 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %235, i32 0, i32 15
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %279

239:                                              ; preds = %233
  %240 = load %struct.residue_t*, %struct.residue_t** %13, align 8
  %241 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %240, i32 0, i32 17
  %242 = load %struct.atom_t*, %struct.atom_t** %241, align 8
  %243 = load i32, i32* %20, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %242, i64 %244
  store %struct.atom_t* %245, %struct.atom_t** %15, align 8
  %246 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %247 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = and i32 1, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %275

251:                                              ; preds = %239
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %253, 1
  %255 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %256 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %255, i32 0, i32 4
  %257 = load i8*, i8** %256, align 8
  %258 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %259 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = load i32, i32* %18, align 4
  %262 = add nsw i32 %261, 1
  %263 = load %struct.residue_t*, %struct.residue_t** %13, align 8
  %264 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %263, i32 0, i32 4
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %267 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %270 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %271 = call double @dist(%struct.atom_t* %269, %struct.atom_t* %270)
  %272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %254, i8* %257, i8* %260, i32 %262, i8* %265, i8* %268, double %271)
  %273 = load i32, i32* %22, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %22, align 4
  br label %275

275:                                              ; preds = %251, %239
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %20, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %20, align 4
  br label %233

279:                                              ; preds = %233
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %18, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %18, align 4
  br label %223

283:                                              ; preds = %223
  br label %284

284:                                              ; preds = %283, %210
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %19, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %19, align 4
  br label %204

288:                                              ; preds = %204
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %17, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %17, align 4
  br label %194

292:                                              ; preds = %194
  br label %293

293:                                              ; preds = %292, %189, %147
  %294 = load %struct.residue_t**, %struct.residue_t*** %21, align 8
  %295 = icmp ne %struct.residue_t** %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load %struct.residue_t**, %struct.residue_t*** %21, align 8
  %298 = bitcast %struct.residue_t** %297 to i8*
  call void @free(i8* %298) #8
  br label %299

299:                                              ; preds = %296, %293
  %300 = load i32, i32* %22, align 4
  store i32 %300, i32* %5, align 4
  br label %301

301:                                              ; preds = %299, %25
  %302 = load i32, i32* %5, align 4
  ret i32 %302
}

declare dso_local void @select_atoms(%struct.molecule_t*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal double @dist(%struct.atom_t* %0, %struct.atom_t* %1) #0 {
  %3 = alloca %struct.atom_t*, align 8
  %4 = alloca %struct.atom_t*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.atom_t* %0, %struct.atom_t** %3, align 8
  store %struct.atom_t* %1, %struct.atom_t** %4, align 8
  %8 = load %struct.atom_t*, %struct.atom_t** %3, align 8
  %9 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i32 0, i32 17
  %10 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  %11 = load double, double* %10, align 8
  %12 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i32 0, i32 17
  %14 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 0
  %15 = load double, double* %14, align 8
  %16 = fsub double %11, %15
  store double %16, double* %5, align 8
  %17 = load %struct.atom_t*, %struct.atom_t** %3, align 8
  %18 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i32 0, i32 17
  %19 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 1
  %20 = load double, double* %19, align 8
  %21 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i32 0, i32 17
  %23 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  %24 = load double, double* %23, align 8
  %25 = fsub double %20, %24
  store double %25, double* %6, align 8
  %26 = load %struct.atom_t*, %struct.atom_t** %3, align 8
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i32 0, i32 17
  %28 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 2
  %29 = load double, double* %28, align 8
  %30 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %30, i32 0, i32 17
  %32 = getelementptr inbounds [3 x double], [3 x double]* %31, i64 0, i64 2
  %33 = load double, double* %32, align 8
  %34 = fsub double %29, %33
  store double %34, double* %7, align 8
  %35 = load double, double* %5, align 8
  %36 = load double, double* %5, align 8
  %37 = fmul double %35, %36
  %38 = load double, double* %6, align 8
  %39 = load double, double* %6, align 8
  %40 = fmul double %38, %39
  %41 = fadd double %37, %40
  %42 = load double, double* %7, align 8
  %43 = load double, double* %7, align 8
  %44 = fmul double %42, %43
  %45 = fadd double %41, %44
  %46 = call double @sqrt(double %45) #8
  ret double %46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putmatrix(i8* %0, [4 x double]* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca [4 x double]*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store [4 x double]* %1, [4 x double]** %4, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %64

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %24, %struct._IO_FILE** %5, align 8
  br label %34

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call %struct._IO_FILE* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** %5, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* %31)
  store i32 1, i32* %8, align 4
  br label %64

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %45 = load [4 x double]*, [4 x double]** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x double], [4 x double]* %45, i64 %47
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x double], [4 x double]* %48, i64 0, i64 %50
  %52 = load double, double* %51, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %52)
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %40

57:                                               ; preds = %40
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %36

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63, %29, %16
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %66 = icmp ne %struct._IO_FILE* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %70 = icmp ne %struct._IO_FILE* %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %73 = call i32 @fclose(%struct._IO_FILE* %72)
  br label %74

74:                                               ; preds = %71, %67, %64
  %75 = load i32, i32* %8, align 4
  ret i32 %75
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
  %1 = alloca i32, align 4
  %2 = alloca %struct.atom_t*, align 8
  %3 = load i32, i32* @init_atab.init, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %37

6:                                                ; preds = %0
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** %2, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %31, %6
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = call noalias i8* @malloc(i64 8) #8
  %12 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  %15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

21:                                               ; preds = %10
  %22 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  %23 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8 0, i8* %24, align 1
  %25 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 1
  store i8* null, i8** %26, align 8
  %27 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i32 0, i32 10
  store i8* null, i8** %28, align 8
  %29 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %29, i32 0, i32 16
  store i8* null, i8** %30, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  %34 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  %35 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i32 1
  store %struct.atom_t* %35, %struct.atom_t** %2, align 8
  br label %7

36:                                               ; preds = %7
  store i32 0, i32* @init_atab.init, align 4
  br label %37

37:                                               ; preds = %36, %5
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
  %2 = alloca %struct.residue_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_t*, align 8
  %6 = alloca %struct.atom_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store %struct.residue_t* %0, %struct.residue_t** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.residue_t*, %struct.residue_t** %2, align 8
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.residue_t*, %struct.residue_t** %2, align 8
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 17
  %19 = load %struct.atom_t*, %struct.atom_t** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %19, i64 %21
  store %struct.atom_t* %22, %struct.atom_t** %5, align 8
  %23 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %24 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %23, i32 0, i32 3
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %239, %28
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.residue_t*, %struct.residue_t** %2, align 8
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %242

36:                                               ; preds = %29
  %37 = load %struct.residue_t*, %struct.residue_t** %2, align 8
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %37, i32 0, i32 17
  %39 = load %struct.atom_t*, %struct.atom_t** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i64 %41
  store %struct.atom_t* %42, %struct.atom_t** %5, align 8
  %43 = call i16** @__ctype_b_loc() #10
  %44 = load i16*, i16** %43, align 8
  %45 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %44, i64 %50
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %53, 2048
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %36
  %57 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 72
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 104
  br label %72

72:                                               ; preds = %64, %56
  %73 = phi i1 [ true, %56 ], [ %71, %64 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %7, align 4
  br label %92

75:                                               ; preds = %36
  %76 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 72
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 104
  br label %89

89:                                               ; preds = %82, %75
  %90 = phi i1 [ true, %75 ], [ %88, %82 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %72
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %235, %92
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.residue_t*, %struct.residue_t** %2, align 8
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %97, i32 0, i32 15
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %238

101:                                              ; preds = %95
  %102 = load %struct.residue_t*, %struct.residue_t** %2, align 8
  %103 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %102, i32 0, i32 17
  %104 = load %struct.atom_t*, %struct.atom_t** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %104, i64 %106
  store %struct.atom_t* %107, %struct.atom_t** %6, align 8
  %108 = call i16** @__ctype_b_loc() #10
  %109 = load i16*, i16** %108, align 8
  %110 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %111 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %109, i64 %115
  %117 = load i16, i16* %116, align 2
  %118 = zext i16 %117 to i32
  %119 = and i32 %118, 2048
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %101
  %122 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %123 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 72
  br i1 %128, label %137, label %129

129:                                              ; preds = %121
  %130 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %131 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 104
  br label %137

137:                                              ; preds = %129, %121
  %138 = phi i1 [ true, %121 ], [ %136, %129 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %8, align 4
  br label %157

140:                                              ; preds = %101
  %141 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %142 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 72
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %149 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 104
  br label %154

154:                                              ; preds = %147, %140
  %155 = phi i1 [ true, %140 ], [ %153, %147 ]
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %154, %137
  %158 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %159 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %160 = call double @dist(%struct.atom_t* %158, %struct.atom_t* %159)
  store double %160, double* %9, align 8
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %200

166:                                              ; preds = %163, %157
  %167 = load double, double* %9, align 8
  %168 = fcmp ole double %167, 1.200000e+00
  br i1 %168, label %169, label %199

169:                                              ; preds = %166
  %170 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %171 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %198

174:                                              ; preds = %169
  %175 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %176 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %177, 8
  br i1 %178, label %179, label %198

179:                                              ; preds = %174
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %182 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %181, i32 0, i32 4
  %183 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %184 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %182, i64 0, i64 %187
  store i32 %180, i32* %188, align 4
  %189 = load i32, i32* %3, align 4
  %190 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %191 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %190, i32 0, i32 4
  %192 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %193 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* %191, i64 0, i64 %196
  store i32 %189, i32* %197, align 4
  br label %198

198:                                              ; preds = %179, %174, %169
  br label %199

199:                                              ; preds = %198, %166
  br label %234

200:                                              ; preds = %163
  %201 = load double, double* %9, align 8
  %202 = fcmp ole double %201, 1.850000e+00
  br i1 %202, label %203, label %233

203:                                              ; preds = %200
  %204 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %205 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %206, 8
  br i1 %207, label %208, label %232

208:                                              ; preds = %203
  %209 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %210 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %211, 8
  br i1 %212, label %213, label %232

213:                                              ; preds = %208
  %214 = load i32, i32* %4, align 4
  %215 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %216 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %215, i32 0, i32 4
  %217 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %218 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds [8 x i32], [8 x i32]* %216, i64 0, i64 %221
  store i32 %214, i32* %222, align 4
  %223 = load i32, i32* %3, align 4
  %224 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %225 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i32 0, i32 4
  %226 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %227 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds [8 x i32], [8 x i32]* %225, i64 0, i64 %230
  store i32 %223, i32* %231, align 4
  br label %232

232:                                              ; preds = %213, %208, %203
  br label %233

233:                                              ; preds = %232, %200
  br label %234

234:                                              ; preds = %233, %199
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %4, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %4, align 4
  br label %95

238:                                              ; preds = %95
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %3, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %3, align 4
  br label %29

242:                                              ; preds = %29
  ret void
}

declare dso_local i32 @addresidue(%struct.molecule_t*, i8*, %struct.residue_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #4

declare dso_local i32 @addstrand(%struct.molecule_t*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isnewres(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @strcmp(i8* %9, i8* %10) #7
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %14, %15
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i1 [ true, %4 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local void @NAB_initatom(%struct.atom_t*, i32) #2

declare dso_local void @NAB_initres(%struct.residue_t*, i32) #2

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cid_t* @initcid(i32 %0, i32 %1, %struct.molecule_t* %2) #0 {
  %4 = alloca %struct.cid_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.molecule_t*, align 8
  %8 = alloca %struct.cid_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strand_t*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.molecule_t* %2, %struct.molecule_t** %7, align 8
  store %struct.cid_t* null, %struct.cid_t** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.cid_t* null, %struct.cid_t** %4, align 8
  br label %140

15:                                               ; preds = %3
  %16 = call noalias i8* @malloc(i64 16) #8
  %17 = bitcast i8* %16 to %struct.cid_t*
  store %struct.cid_t* %17, %struct.cid_t** %8, align 8
  %18 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %19 = icmp eq %struct.cid_t* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %133

23:                                               ; preds = %15
  %24 = call noalias i8* @malloc(i64 128) #8
  %25 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %26 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %28 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %133

34:                                               ; preds = %23
  %35 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %36 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %35, i32 0, i32 0
  store i32 65, i32* %36, align 8
  %37 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %38 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %37, i32 0, i32 1
  store i32 90, i32* %38, align 4
  %39 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %40 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %55, %34
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %45 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %50 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %132

61:                                               ; preds = %58
  %62 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8
  %63 = icmp eq %struct.molecule_t* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %133

67:                                               ; preds = %61
  %68 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8
  %69 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %68, i32 0, i32 2
  %70 = load %struct.strand_t*, %struct.strand_t** %69, align 8
  store %struct.strand_t* %70, %struct.strand_t** %10, align 8
  br label %71

71:                                               ; preds = %100, %67
  %72 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  %73 = icmp ne %struct.strand_t* %72, null
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  %76 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strlen(i8* %77) #7
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  %82 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp sge i32 %86, 65
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = load i32, i32* %9, align 4
  %90 = icmp sle i32 %89, 90
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %93 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 1, i8* %97, align 1
  br label %98

98:                                               ; preds = %91, %88, %80
  br label %99

99:                                               ; preds = %98, %74
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  %102 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %101, i32 0, i32 4
  %103 = load %struct.strand_t*, %struct.strand_t** %102, align 8
  store %struct.strand_t* %103, %struct.strand_t** %10, align 8
  br label %71

104:                                              ; preds = %71
  br label %105

105:                                              ; preds = %126, %104
  %106 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %107 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %110 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp sle i32 %108, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %105
  %114 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %115 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %118 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %116, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %113
  br label %131

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  %128 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  br label %105

131:                                              ; preds = %124, %105
  br label %132

132:                                              ; preds = %131, %58
  br label %133

133:                                              ; preds = %132, %64, %31, %20
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  call void @freecid(%struct.cid_t* %137)
  store %struct.cid_t* null, %struct.cid_t** %8, align 8
  br label %138

138:                                              ; preds = %136, %133
  %139 = load %struct.cid_t*, %struct.cid_t** %8, align 8
  store %struct.cid_t* %139, %struct.cid_t** %4, align 8
  br label %140

140:                                              ; preds = %138, %14
  %141 = load %struct.cid_t*, %struct.cid_t** %4, align 8
  ret %struct.cid_t* %141
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nextcid(%struct.cid_t* %0, i32 %1, i32 %2, %struct.strand_t* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cid_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strand_t*, align 8
  %10 = alloca i32, align 4
  store %struct.cid_t* %0, %struct.cid_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.strand_t* %3, %struct.strand_t** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 32, i32* %5, align 4
  br label %105

14:                                               ; preds = %4
  %15 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %16 = icmp eq %struct.cid_t* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0))
  store i32 32, i32* %5, align 4
  br label %105

20:                                               ; preds = %14
  %21 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %22 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %25 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 32, i32* %5, align 4
  br label %105

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %96

32:                                               ; preds = %29
  %33 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strlen(i8* %35) #7
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp sge i32 %44, 65
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = icmp sle i32 %47, 90
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %105

51:                                               ; preds = %46, %38
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %54 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %10, align 4
  %56 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %57 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %60 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  store i8 1, i8* %63, align 1
  %64 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %65 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %89, %52
  %69 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %70 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %73 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sle i32 %71, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %68
  %77 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %78 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %81 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  br label %94

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %91 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %68

94:                                               ; preds = %87, %68
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %105

96:                                               ; preds = %29
  %97 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %98 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %10, align 4
  %100 = load %struct.cid_t*, %struct.cid_t** %6, align 8
  %101 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %96, %94, %49, %28, %17, %13
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_brook_rname(i8* %0, %struct.residue_t* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.residue_t*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.residue_t* %1, %struct.residue_t** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.residue_t*, %struct.residue_t** %4, align 8
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i32 0, i32 4
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @strcpy(i8* %5, i8* %8) #8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #7
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strcpy(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @strcpy(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #7
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @strcpy(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #7
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = call i8* @strcpy(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #7
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = call i8* @strcpy(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #7
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = call i8* @strcpy(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)) #7
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = call i8* @strcpy(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)) #7
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %3, align 8
  %64 = call i8* @strcpy(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #7
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @strcpy(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #7
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %3, align 8
  %78 = call i8* @strcpy(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #7
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %3, align 8
  %85 = call i8* @strcpy(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #7
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %3, align 8
  %92 = call i8* @strcpy(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0)) #7
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %3, align 8
  %99 = call i8* @strcpy(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #7
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %3, align 8
  %106 = call i8* @strcpy(i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #7
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %3, align 8
  %113 = call i8* @strcpy(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #7
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i8*, i8** %3, align 8
  %120 = call i8* @strcpy(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #8
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #7
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load i8*, i8** %3, align 8
  %127 = call i8* @strcpy(i8* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #7
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %3, align 8
  %134 = call i8* @strcpy(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i8*, i8** %3, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #7
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load i8*, i8** %3, align 8
  %141 = call i8* @strcpy(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %142

142:                                              ; preds = %139, %135
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #7
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %3, align 8
  %148 = call i8* @strcpy(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %149

149:                                              ; preds = %146, %142
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #7
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load i8*, i8** %3, align 8
  %155 = call i8* @strcpy(i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i8*, i8** %3, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #7
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load i8*, i8** %3, align 8
  %162 = call i8* @strcpy(i8* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %163

163:                                              ; preds = %160, %156
  %164 = load i8*, i8** %3, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #7
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load i8*, i8** %3, align 8
  %169 = call i8* @strcpy(i8* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %170

170:                                              ; preds = %167, %163
  %171 = load i8*, i8** %3, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #7
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load i8*, i8** %3, align 8
  %176 = call i8* @strcpy(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #8
  br label %177

177:                                              ; preds = %174, %170
  %178 = load i8*, i8** %3, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #7
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %3, align 8
  %183 = call i8* @strcpy(i8* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %184

184:                                              ; preds = %181, %177
  %185 = load i8*, i8** %3, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #7
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8
  %190 = call i8* @strcpy(i8* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %191

191:                                              ; preds = %188, %184
  %192 = load i8*, i8** %3, align 8
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #7
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = load i8*, i8** %3, align 8
  %197 = call i8* @strcpy(i8* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %198

198:                                              ; preds = %195, %191
  %199 = load i8*, i8** %3, align 8
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #7
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = load i8*, i8** %3, align 8
  %204 = call i8* @strcpy(i8* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %205

205:                                              ; preds = %202, %198
  %206 = load i8*, i8** %3, align 8
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #7
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %205
  %210 = load i8*, i8** %3, align 8
  %211 = call i8* @strcpy(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %212

212:                                              ; preds = %209, %205
  %213 = load i8*, i8** %3, align 8
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #7
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = load i8*, i8** %3, align 8
  %218 = call i8* @strcpy(i8* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %219

219:                                              ; preds = %216, %212
  %220 = load i8*, i8** %3, align 8
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #7
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = load i8*, i8** %3, align 8
  %225 = call i8* @strcpy(i8* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i8*, i8** %3, align 8
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #7
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %226
  %231 = load i8*, i8** %3, align 8
  %232 = call i8* @strcpy(i8* %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %233

233:                                              ; preds = %230, %226
  %234 = load i8*, i8** %3, align 8
  %235 = call i32 @strcmp(i8* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #7
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = load i8*, i8** %3, align 8
  %239 = call i8* @strcpy(i8* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #8
  br label %240

240:                                              ; preds = %237, %233
  %241 = load i8*, i8** %3, align 8
  %242 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #7
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  %245 = load i8*, i8** %3, align 8
  %246 = call i8* @strcpy(i8* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #8
  br label %247

247:                                              ; preds = %244, %240
  %248 = load i8*, i8** %3, align 8
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #7
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  %252 = load i8*, i8** %3, align 8
  %253 = call i8* @strcpy(i8* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #8
  br label %254

254:                                              ; preds = %251, %247
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_wwpdb_rname(i8* %0, %struct.residue_t* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.residue_t*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.residue_t* %1, %struct.residue_t** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.residue_t*, %struct.residue_t** %4, align 8
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i32 0, i32 4
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @strcpy(i8* %5, i8* %8) #8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #7
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strcpy(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @strcpy(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #7
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @strcpy(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #7
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = call i8* @strcpy(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #7
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = call i8* @strcpy(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #7
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = call i8* @strcpy(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)) #7
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = call i8* @strcpy(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)) #7
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %3, align 8
  %64 = call i8* @strcpy(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #7
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @strcpy(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #8
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #7
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %3, align 8
  %78 = call i8* @strcpy(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #8
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #7
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %3, align 8
  %85 = call i8* @strcpy(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #8
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #7
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %3, align 8
  %92 = call i8* @strcpy(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #8
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0)) #7
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %3, align 8
  %99 = call i8* @strcpy(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #8
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #7
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %3, align 8
  %106 = call i8* @strcpy(i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #8
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #7
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %3, align 8
  %113 = call i8* @strcpy(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #8
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #7
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i8*, i8** %3, align 8
  %120 = call i8* @strcpy(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #8
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #7
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load i8*, i8** %3, align 8
  %127 = call i8* @strcpy(i8* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #8
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #7
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %3, align 8
  %134 = call i8* @strcpy(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #8
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i8*, i8** %3, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #7
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load i8*, i8** %3, align 8
  %141 = call i8* @strcpy(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #8
  br label %142

142:                                              ; preds = %139, %135
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #7
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %3, align 8
  %148 = call i8* @strcpy(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #8
  br label %149

149:                                              ; preds = %146, %142
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #7
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load i8*, i8** %3, align 8
  %155 = call i8* @strcpy(i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #8
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i8*, i8** %3, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #7
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load i8*, i8** %3, align 8
  %162 = call i8* @strcpy(i8* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #8
  br label %163

163:                                              ; preds = %160, %156
  %164 = load i8*, i8** %3, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #7
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load i8*, i8** %3, align 8
  %169 = call i8* @strcpy(i8* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #8
  br label %170

170:                                              ; preds = %167, %163
  %171 = load i8*, i8** %3, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #7
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load i8*, i8** %3, align 8
  %176 = call i8* @strcpy(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #8
  br label %177

177:                                              ; preds = %174, %170
  %178 = load i8*, i8** %3, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #7
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %3, align 8
  %183 = call i8* @strcpy(i8* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #8
  br label %184

184:                                              ; preds = %181, %177
  %185 = load i8*, i8** %3, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #7
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8
  %190 = call i8* @strcpy(i8* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #8
  br label %191

191:                                              ; preds = %188, %184
  %192 = load i8*, i8** %3, align 8
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #7
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = load i8*, i8** %3, align 8
  %197 = call i8* @strcpy(i8* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #8
  br label %198

198:                                              ; preds = %195, %191
  %199 = load i8*, i8** %3, align 8
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #7
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = load i8*, i8** %3, align 8
  %204 = call i8* @strcpy(i8* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #8
  br label %205

205:                                              ; preds = %202, %198
  %206 = load i8*, i8** %3, align 8
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #7
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %205
  %210 = load i8*, i8** %3, align 8
  %211 = call i8* @strcpy(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #8
  br label %212

212:                                              ; preds = %209, %205
  %213 = load i8*, i8** %3, align 8
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #7
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = load i8*, i8** %3, align 8
  %218 = call i8* @strcpy(i8* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %219

219:                                              ; preds = %216, %212
  %220 = load i8*, i8** %3, align 8
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #7
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = load i8*, i8** %3, align 8
  %225 = call i8* @strcpy(i8* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i8*, i8** %3, align 8
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #7
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %226
  %231 = load i8*, i8** %3, align 8
  %232 = call i8* @strcpy(i8* %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %233

233:                                              ; preds = %230, %226
  %234 = load i8*, i8** %3, align 8
  %235 = call i32 @strcmp(i8* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #7
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = load i8*, i8** %3, align 8
  %239 = call i8* @strcpy(i8* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #8
  br label %240

240:                                              ; preds = %237, %233
  %241 = load i8*, i8** %3, align 8
  %242 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #7
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  %245 = load i8*, i8** %3, align 8
  %246 = call i8* @strcpy(i8* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #8
  br label %247

247:                                              ; preds = %244, %240
  %248 = load i8*, i8** %3, align 8
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #7
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  %252 = load i8*, i8** %3, align 8
  %253 = call i8* @strcpy(i8* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #8
  br label %254

254:                                              ; preds = %251, %247
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_brook_aname(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 32, i8* %8, align 1
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9) #7
  %11 = icmp uge i64 %10, 4
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 32
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %21, i8* %23, align 1
  br label %24

24:                                               ; preds = %18, %12, %3
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %27, i8* %29, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8 %32, i8* %34, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 %37, i8* %39, align 1
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 39
  br i1 %44, label %45, label %48

45:                                               ; preds = %24
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  store i8 42, i8* %47, align 1
  br label %48

48:                                               ; preds = %45, %24
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #7
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %97, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 49
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 50
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 51
  br i1 %71, label %72, label %97

72:                                               ; preds = %66, %60, %54
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @strncmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #7
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i64 0, i64 0)
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load i8*, i8** %6, align 8
  %81 = icmp ne i8* %80, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i64 0, i64 0)
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = icmp ne i8* %83, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0)
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i64 2) #7
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85, %72
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 %92, i8* %94, align 1
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  store i8 32, i8* %96, align 1
  br label %97

97:                                               ; preds = %89, %85, %82, %79, %76, %66, %48
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_wwpdb_aname(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7) #7
  %9 = icmp uge i64 %8, 4
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 3
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 32
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strncpy(i8* %17, i8* %18, i64 5) #8
  br label %29

20:                                               ; preds = %10, %3
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 32, i8* %22, align 1
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strncpy(i8* %24, i8* %25, i64 3) #8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %20, %16
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 32, i8* %37, align 1
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8 32, i8* %46, align 1
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  store i8 32, i8* %55, align 1
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #7
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  %62 = call i8* @strncpy(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5) #8
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #7
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8
  %69 = call i8* @strncpy(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 5) #8
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #7
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = call i8* @strncpy(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5) #8
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #7
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %4, align 8
  %83 = call i8* @strncpy(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5) #8
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #7
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %4, align 8
  %90 = call i8* @strncpy(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 5) #8
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #7
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %4, align 8
  %97 = call i8* @strncpy(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 5) #8
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @strncmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #7
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %4, align 8
  %104 = call i8* @strncpy(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 5) #8
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 @strncmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #7
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i8*, i8** %4, align 8
  %111 = call i8* @strncpy(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 5) #8
  br label %112

112:                                              ; preds = %109, %105
  %113 = load i8*, i8** %4, align 8
  %114 = call i32 @strncmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #7
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %176

116:                                              ; preds = %112
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 @strncmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #7
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %176

120:                                              ; preds = %116
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @strncmp(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #7
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %176

124:                                              ; preds = %120
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 @strncmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #7
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %176

128:                                              ; preds = %124
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 @strncmp(i8* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #7
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %176

132:                                              ; preds = %128
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 @strncmp(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #7
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %176

136:                                              ; preds = %132
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @strncmp(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #7
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %176

140:                                              ; preds = %136
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 @strncmp(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #7
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %140
  %145 = load i8*, i8** %4, align 8
  %146 = call i32 @strncmp(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #7
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %176

148:                                              ; preds = %144
  %149 = load i8*, i8** %4, align 8
  %150 = call i32 @strncmp(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #7
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %176

152:                                              ; preds = %148
  %153 = load i8*, i8** %4, align 8
  %154 = call i32 @strncmp(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #7
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %152
  %157 = load i8*, i8** %4, align 8
  %158 = call i32 @strncmp(i8* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #7
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %156
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 @strncmp(i8* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #7
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %160
  %165 = load i8*, i8** %4, align 8
  %166 = call i32 @strncmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #7
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load i8*, i8** %4, align 8
  %170 = call i32 @strncmp(i8* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #7
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i8*, i8** %4, align 8
  %174 = call i32 @strncmp(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #7
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %194, label %176

176:                                              ; preds = %172, %168, %164, %160, %156, %152, %148, %144, %140, %136, %132, %128, %124, %120, %116, %112
  %177 = load i8*, i8** %4, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  store i8 %179, i8* %181, align 1
  %182 = load i8*, i8** %4, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  %184 = load i8, i8* %183, align 1
  %185 = load i8*, i8** %4, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8 %184, i8* %186, align 1
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = load i8*, i8** %4, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 2
  store i8 %189, i8* %191, align 1
  %192 = load i8*, i8** %4, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 3
  store i8 32, i8* %193, align 1
  br label %194

194:                                              ; preds = %176, %172
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freecid(%struct.cid_t* %0) #0 {
  %2 = alloca %struct.cid_t*, align 8
  store %struct.cid_t* %0, %struct.cid_t** %2, align 8
  %3 = load %struct.cid_t*, %struct.cid_t** %2, align 8
  %4 = icmp ne %struct.cid_t* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load %struct.cid_t*, %struct.cid_t** %2, align 8
  %7 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.cid_t*, %struct.cid_t** %2, align 8
  %12 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* %13) #8
  br label %14

14:                                               ; preds = %10, %5
  %15 = load %struct.cid_t*, %struct.cid_t** %2, align 8
  %16 = bitcast %struct.cid_t* %15 to i8*
  call void @free(i8* %16) #8
  br label %17

17:                                               ; preds = %14, %1
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
