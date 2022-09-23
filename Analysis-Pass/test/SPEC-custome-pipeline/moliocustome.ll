; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/molio.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/molio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@n_atab = internal unnamed_addr global i32 0, align 4, !dbg !264
@.str.25 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"C7\00", align 1
@res = internal global %struct.residue_t zeroinitializer, align 8, !dbg !266
@.str.29 = private unnamed_addr constant [5 x i8] c"H2'1\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"-pqr\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%lf%lf\00", align 1
@atab = internal global [1000 x %struct.atom_t] zeroinitializer, align 16, !dbg !268
@.str.49 = private unnamed_addr constant [4 x i8] c"TER\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"initres: can't allocate res->r_resname.\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"initres: can't allocate res->r_resid.\0A\00", align 1
@init_atab.init = internal unnamed_addr global i1 false, align 4, !dbg !344
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
define dso_local %struct.molecule_t* @getpdb(i8* noundef %fname, i8* noundef readonly %options) local_unnamed_addr #0 !dbg !350 {
entry:
  %line.i = alloca [82 x i8], align 16
  %sname.i = alloca [10 x i8], align 1
  %aname.i = alloca [10 x i8], align 4
  %rname.i = alloca [10 x i8], align 4
  %l_rname.i = alloca [10 x i8], align 1
  %rid.i = alloca [10 x i8], align 1
  %l_rid.i = alloca [10 x i8], align 1
  %field.i = alloca [10 x i8], align 1
  %rnum.i = alloca i32, align 4
  %q.i = alloca double, align 8
  %r.i = alloca double, align 8
  %loptions.i = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %fname, metadata !356, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i8* %options, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !358, metadata !DIExpression()), !dbg !361
  %tobool.not = icmp eq i8* %fname, null, !dbg !362
  br i1 %tobool.not, label %if.then, label %lor.lhs.false, !dbg !364

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %fname, align 1, !dbg !365, !tbaa !366
  %tobool1.not = icmp eq i8 %0, 0, !dbg !365
  br i1 %tobool1.not, label %if.then, label %if.else, !dbg !369

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !370, !tbaa !372
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !358, metadata !DIExpression()), !dbg !361
  br label %if.end17, !dbg !374

if.else:                                          ; preds = %lor.lhs.false
  %call = tail call i32 @strcmp(i8* noundef nonnull %fname, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #19, !dbg !375
  %tobool2.not = icmp eq i32 %call, 0, !dbg !375
  br i1 %tobool2.not, label %if.then3, label %if.else4, !dbg !377

if.then3:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !378, !tbaa !372
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !358, metadata !DIExpression()), !dbg !361
  br label %if.end17, !dbg !380

if.else4:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !360, metadata !DIExpression()), !dbg !361
  %call5 = tail call i32 @get_mytaskid() #20, !dbg !381
  %cmp = icmp eq i32 %call5, 0, !dbg !384
  br i1 %cmp, label %if.then6, label %if.end11, !dbg !385

if.then6:                                         ; preds = %if.else4
  %call7 = tail call %struct._IO_FILE* @fopen(i8* noundef nonnull %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !386
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call7, metadata !358, metadata !DIExpression()), !dbg !361
  %cmp8 = icmp eq %struct._IO_FILE* %call7, null, !dbg !389
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !390

if.then9:                                         ; preds = %if.then6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !391, !tbaa !372
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %fname) #21, !dbg !393
  call void @llvm.dbg.value(metadata i32 -1, metadata !360, metadata !DIExpression()), !dbg !361
  br label %if.end11, !dbg !394

if.end11:                                         ; preds = %if.then6, %if.then9, %if.else4
  %fp.0 = phi %struct._IO_FILE* [ null, %if.then9 ], [ %call7, %if.then6 ], [ null, %if.else4 ], !dbg !361
  %ier.0 = phi i32 [ -1, %if.then9 ], [ 0, %if.then6 ], [ 0, %if.else4 ], !dbg !395
  call void @llvm.dbg.value(metadata i32 %ier.0, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.0, metadata !358, metadata !DIExpression()), !dbg !361
  tail call void @reducerror(i32 noundef %ier.0) #20, !dbg !396
  %call12 = tail call i32 @get_mytaskid() #20, !dbg !397
  %cmp13.not = icmp eq i32 %call12, 0, !dbg !399
  %spec.select = select i1 %cmp13.not, %struct._IO_FILE* %fp.0, %struct._IO_FILE* null, !dbg !400
  br label %if.end17, !dbg !400

if.end17:                                         ; preds = %if.end11, %if.then3, %if.then
  %fp.1 = phi %struct._IO_FILE* [ %2, %if.then3 ], [ %1, %if.then ], [ %spec.select, %if.end11 ], !dbg !401
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.1, metadata !358, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.1, metadata !402, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %options, metadata !407, metadata !DIExpression()) #20, !dbg !451
  %4 = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 0, !dbg !453
  call void @llvm.lifetime.start.p0i8(i64 82, i8* nonnull %4) #20, !dbg !453
  call void @llvm.dbg.declare(metadata [82 x i8]* %line.i, metadata !413, metadata !DIExpression()) #20, !dbg !454
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %sname.i, i64 0, i64 0, !dbg !455
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %5) #20, !dbg !455
  call void @llvm.dbg.declare(metadata [10 x i8]* %sname.i, metadata !417, metadata !DIExpression()) #20, !dbg !456
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %aname.i, i64 0, i64 0, !dbg !457
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %6) #20, !dbg !457
  call void @llvm.dbg.declare(metadata [10 x i8]* %aname.i, metadata !421, metadata !DIExpression()) #20, !dbg !458
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %rname.i, i64 0, i64 0, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %7) #20, !dbg !459
  call void @llvm.dbg.declare(metadata [10 x i8]* %rname.i, metadata !422, metadata !DIExpression()) #20, !dbg !460
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %l_rname.i, i64 0, i64 0, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %8) #20, !dbg !459
  call void @llvm.dbg.declare(metadata [10 x i8]* %l_rname.i, metadata !423, metadata !DIExpression()) #20, !dbg !461
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %rid.i, i64 0, i64 0, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %9) #20, !dbg !462
  call void @llvm.dbg.declare(metadata [10 x i8]* %rid.i, metadata !424, metadata !DIExpression()) #20, !dbg !463
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %l_rid.i, i64 0, i64 0, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %10) #20, !dbg !462
  call void @llvm.dbg.declare(metadata [10 x i8]* %l_rid.i, metadata !425, metadata !DIExpression()) #20, !dbg !464
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %field.i, i64 0, i64 0, !dbg !465
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %11) #20, !dbg !465
  call void @llvm.dbg.declare(metadata [10 x i8]* %field.i, metadata !426, metadata !DIExpression()) #20, !dbg !466
  %12 = bitcast i32* %rnum.i to i8*, !dbg !467
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #20, !dbg !467
  %13 = bitcast double* %q.i to i8*, !dbg !468
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #20, !dbg !468
  %14 = bitcast double* %r.i to i8*, !dbg !468
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #20, !dbg !468
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 0, !dbg !469
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %15) #20, !dbg !469
  call void @llvm.dbg.declare(metadata [256 x i8]* %loptions.i, metadata !440, metadata !DIExpression()) #20, !dbg !470
  %cmp.i = icmp eq i8* %options, null, !dbg !471
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !473

if.then.i:                                        ; preds = %if.end17
  store i8 0, i8* %15, align 16, !dbg !474, !tbaa !366
  br label %if.end.i, !dbg !475

if.else.i:                                        ; preds = %if.end17
  %call.i = call i8* @strcpy(i8* noundef nonnull %15, i8* noundef nonnull %options) #20, !dbg !476
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  call fastcc void @initres() #20, !dbg !477
  %.b.i.i = load i1, i1* @init_atab.init, align 4, !dbg !478
  br i1 %.b.i.i, label %init_atab.exit.i, label %for.body.i.i, !dbg !481

for.body.i.i:                                     ; preds = %if.end.i, %if.end5.i.i
  %ap.018.i.i = phi %struct.atom_t* [ %incdec.ptr.i.i, %if.end5.i.i ], [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %if.end.i ]
  %a.017.i.i = phi i32 [ %inc.i.i, %if.end5.i.i ], [ 0, %if.end.i ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap.018.i.i, metadata !263, metadata !DIExpression()) #20, !dbg !482
  call void @llvm.dbg.value(metadata i32 %a.017.i.i, metadata !262, metadata !DIExpression()) #20, !dbg !482
  %call.i.i = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #20, !dbg !483
  %a_atomname.i.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.018.i.i, i64 0, i32 0, !dbg !487
  store i8* %call.i.i, i8** %a_atomname.i.i, align 8, !dbg !488, !tbaa !489
  %cmp2.i.i = icmp eq i8* %call.i.i, null, !dbg !493
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end5.i.i, !dbg !495

if.then3.i.i:                                     ; preds = %for.body.i.i
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !496, !tbaa !372
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %16) #22, !dbg !498
  call void @exit(i32 noundef 1) #23, !dbg !499
  unreachable, !dbg !499

if.end5.i.i:                                      ; preds = %for.body.i.i
  store i8 0, i8* %call.i.i, align 1, !dbg !500, !tbaa !366
  %a_atomtype.i.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.018.i.i, i64 0, i32 1, !dbg !501
  store i8* null, i8** %a_atomtype.i.i, align 8, !dbg !502, !tbaa !503
  %a_element.i.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.018.i.i, i64 0, i32 10, !dbg !504
  store i8* null, i8** %a_element.i.i, align 8, !dbg !505, !tbaa !506
  %a_fullname.i.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.018.i.i, i64 0, i32 16, !dbg !507
  store i8* null, i8** %a_fullname.i.i, align 8, !dbg !508, !tbaa !509
  %inc.i.i = add nuw nsw i32 %a.017.i.i, 1, !dbg !510
  call void @llvm.dbg.value(metadata i32 %inc.i.i, metadata !262, metadata !DIExpression()) #20, !dbg !482
  %incdec.ptr.i.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.018.i.i, i64 1, !dbg !511
  call void @llvm.dbg.value(metadata %struct.atom_t* %incdec.ptr.i.i, metadata !263, metadata !DIExpression()) #20, !dbg !482
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000, !dbg !512
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i, !dbg !513, !llvm.loop !514

for.end.i.i:                                      ; preds = %if.end5.i.i
  store i1 true, i1* @init_atab.init, align 4, !dbg !518
  br label %init_atab.exit.i, !dbg !519

init_atab.exit.i:                                 ; preds = %for.end.i.i, %if.end.i
  %call2.i = call %struct.molecule_t* @newmolecule() #20, !dbg !520
  call void @llvm.dbg.value(metadata %struct.molecule_t* %call2.i, metadata !408, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 0, metadata !410, metadata !DIExpression()) #20, !dbg !451
  store i8 0, i8* %8, align 1, !dbg !521, !tbaa !366
  call void @llvm.dbg.value(metadata i32 0, metadata !430, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()) #20, !dbg !451
  store i32 0, i32* @n_atab, align 4, !dbg !522, !tbaa !523
  %arrayidx14.i = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 80
  %18 = bitcast [82 x i8]* %line.i to i32*
  %arrayidx25.i = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 12
  %arrayidx27.i = getelementptr inbounds [10 x i8], [10 x i8]* %aname.i, i64 0, i64 4
  %arrayidx72.i = getelementptr inbounds [10 x i8], [10 x i8]* %aname.i, i64 0, i64 2
  %19 = bitcast [10 x i8]* %aname.i to i32*
  %arrayidx87.i = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 17
  %arrayidx89.i = getelementptr inbounds [10 x i8], [10 x i8]* %rname.i, i64 0, i64 3
  %20 = bitcast [10 x i8]* %rname.i to i16*
  %21 = bitcast [10 x i8]* %rname.i to i32*
  %arrayidx153.i = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 21
  %arrayidx155.i = getelementptr inbounds [10 x i8], [10 x i8]* %rid.i, i64 0, i64 6
  %arrayidx158.i = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 22
  %arrayidx161.i = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 30
  %arrayidx163.i = getelementptr inbounds [10 x i8], [10 x i8]* %field.i, i64 0, i64 8
  %arrayidx167.i = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 38
  %arrayidx173.i = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 46
  %arrayidx182.i = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 54
  %arrayidx224.i = getelementptr inbounds [10 x i8], [10 x i8]* %field.i, i64 0, i64 6
  %arrayidx228.i = getelementptr inbounds [82 x i8], [82 x i8]* %line.i, i64 0, i64 60
  %arrayidx256.i = getelementptr inbounds [10 x i8], [10 x i8]* %sname.i, i64 0, i64 1
  %m_strands.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %call2.i, i64 0, i32 2
  call void @llvm.dbg.value(metadata i32 0, metadata !410, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 0, metadata !430, metadata !DIExpression()) #20, !dbg !451
  %call5489.i = call i8* @ggets(i8* noundef nonnull %4, i32 noundef 82, %struct._IO_FILE* noundef %fp.1) #20, !dbg !524
  %cmp6490.i = icmp eq i8* %call5489.i, null, !dbg !526
  br i1 %cmp6490.i, label %for.end341.i, label %if.end8.i, !dbg !527

if.end8.i:                                        ; preds = %init_atab.exit.i, %if.end340.i
  %l_cid.0495.i = phi i32 [ %l_cid.2.i, %if.end340.i ], [ 0, %init_atab.exit.i ]
  %nchains.0493.i = phi i32 [ %nchains.2.i, %if.end340.i ], [ 0, %init_atab.exit.i ]
  %l_rnum.0491.i = phi i32 [ %l_rnum.2.i, %if.end340.i ], [ 0, %init_atab.exit.i ]
  call void @llvm.dbg.value(metadata i32 %l_cid.0495.i, metadata !410, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %nchains.0493.i, metadata !412, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %l_rnum.0491.i, metadata !430, metadata !DIExpression()) #20, !dbg !451
  %call10.i = call i64 @strlen(i8* noundef nonnull %4) #19, !dbg !528
  %conv.i = trunc i64 %call10.i to i32, !dbg !528
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !438, metadata !DIExpression()) #20, !dbg !451
  %cmp12482.i = icmp slt i32 %conv.i, 80, !dbg !530
  br i1 %cmp12482.i, label %for.body.preheader.i, label %for.end.i, !dbg !532

for.body.preheader.i:                             ; preds = %if.end8.i
  %sext500.i = shl i64 %call10.i, 32, !dbg !532
  %22 = ashr exact i64 %sext500.i, 32, !dbg !532
  %scevgep.i = getelementptr [82 x i8], [82 x i8]* %line.i, i64 0, i64 %22, !dbg !532
  %23 = sub i64 79, %call10.i, !dbg !532
  %24 = and i64 %23, 4294967295, !dbg !532
  %25 = add nuw nsw i64 %24, 1, !dbg !532
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 32, i64 %25, i1 false) #20, !dbg !533, !tbaa !366
  call void @llvm.dbg.value(metadata i32 undef, metadata !438, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 undef, metadata !438, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !451
  br label %for.end.i, !dbg !534

for.end.i:                                        ; preds = %for.body.preheader.i, %if.end8.i
  store i8 0, i8* %arrayidx14.i, align 16, !dbg !534, !tbaa !366
  %rhsv.i = load i32, i32* %18, align 16, !dbg !535
  %.not.i = icmp eq i32 %rhsv.i, 1297044545, !dbg !535
  br i1 %.not.i, label %if.then23.i, label %lor.lhs.false.i, !dbg !536

lor.lhs.false.i:                                  ; preds = %for.end.i
  %bcmp.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %4, i64 6) #20, !dbg !537
  %cmp21.i = icmp eq i32 %bcmp.i, 0, !dbg !538
  br i1 %cmp21.i, label %if.then23.i, label %if.else314.i, !dbg !539

if.then23.i:                                      ; preds = %lor.lhs.false.i, %for.end.i
  %call26.i = call i8* @strncpy(i8* noundef nonnull %6, i8* noundef nonnull %arrayidx25.i, i64 noundef 4) #20, !dbg !540
  store i8 0, i8* %arrayidx27.i, align 4, !dbg !541, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %6, metadata !428, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %6, metadata !427, metadata !DIExpression()) #20, !dbg !451
  br label %for.cond29.i, !dbg !542

for.cond29.i:                                     ; preds = %for.inc36.i, %if.then23.i
  %np1.0.i = phi i8* [ %6, %if.then23.i ], [ %np1.1.i, %for.inc36.i ], !dbg !544
  %np.0.i = phi i8* [ %6, %if.then23.i ], [ %incdec.ptr37.i, %for.inc36.i ], !dbg !544
  call void @llvm.dbg.value(metadata i8* %np.0.i, metadata !427, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %np1.0.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  %26 = load i8, i8* %np.0.i, align 1, !dbg !545, !tbaa !366
  switch i8 %26, label %if.then34.i [
    i8 0, label %for.end38.i
    i8 32, label %for.inc36.i
  ], !dbg !547

if.then34.i:                                      ; preds = %for.cond29.i
  %incdec.ptr.i = getelementptr inbounds i8, i8* %np1.0.i, i64 1, !dbg !548
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  store i8 %26, i8* %np1.0.i, align 1, !dbg !551, !tbaa !366
  br label %for.inc36.i, !dbg !552

for.inc36.i:                                      ; preds = %if.then34.i, %for.cond29.i
  %np1.1.i = phi i8* [ %incdec.ptr.i, %if.then34.i ], [ %np1.0.i, %for.cond29.i ], !dbg !544
  call void @llvm.dbg.value(metadata i8* %np1.1.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  %incdec.ptr37.i = getelementptr inbounds i8, i8* %np.0.i, i64 1, !dbg !553
  call void @llvm.dbg.value(metadata i8* %incdec.ptr37.i, metadata !427, metadata !DIExpression()) #20, !dbg !451
  br label %for.cond29.i, !dbg !554, !llvm.loop !555

for.end38.i:                                      ; preds = %for.cond29.i
  store i8 0, i8* %np1.0.i, align 1, !dbg !557, !tbaa !366
  %27 = load i8, i8* %6, align 4, !dbg !558, !tbaa !366
  %28 = add i8 %27, -49, !dbg !560
  %29 = icmp ult i8 %28, 3, !dbg !560
  br i1 %29, label %for.cond55.preheader.i, label %if.end71.i, !dbg !560

for.cond55.preheader.i:                           ; preds = %for.end38.i
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()) #20, !dbg !451
  %call57484.i = call i64 @strlen(i8* noundef nonnull %6) #19, !dbg !561
  %conv58485.i = trunc i64 %call57484.i to i32, !dbg !565
  %cmp59487.i = icmp sgt i32 %conv58485.i, 1, !dbg !566
  br i1 %cmp59487.i, label %for.body61.i, label %for.end68.i, !dbg !567

for.body61.i:                                     ; preds = %for.cond55.preheader.i, %for.body61.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body61.i ], [ 0, %for.cond55.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !438, metadata !DIExpression()) #20, !dbg !451
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !568
  %arrayidx63.i = getelementptr inbounds [10 x i8], [10 x i8]* %aname.i, i64 0, i64 %indvars.iv.next.i, !dbg !569
  %30 = load i8, i8* %arrayidx63.i, align 1, !dbg !569, !tbaa !366
  %arrayidx65.i = getelementptr inbounds [10 x i8], [10 x i8]* %aname.i, i64 0, i64 %indvars.iv.i, !dbg !570
  store i8 %30, i8* %arrayidx65.i, align 1, !dbg !571, !tbaa !366
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !438, metadata !DIExpression()) #20, !dbg !451
  %call57.i = call i64 @strlen(i8* noundef nonnull %6) #19, !dbg !561
  %sub.i = shl i64 %call57.i, 32, !dbg !566
  %sext.i = add i64 %sub.i, -4294967296, !dbg !566
  %31 = ashr exact i64 %sext.i, 32, !dbg !566
  %cmp59.i = icmp slt i64 %indvars.iv.next.i, %31, !dbg !566
  br i1 %cmp59.i, label %for.body61.i, label %for.end68.i, !dbg !567, !llvm.loop !572

for.end68.i:                                      ; preds = %for.body61.i, %for.cond55.preheader.i
  %i.1.lcssa.i = phi i64 [ 0, %for.cond55.preheader.i ], [ %indvars.iv.next.i, %for.body61.i ], !dbg !574
  %idxprom69.i = and i64 %i.1.lcssa.i, 4294967295, !dbg !575
  %arrayidx70.i = getelementptr inbounds [10 x i8], [10 x i8]* %aname.i, i64 0, i64 %idxprom69.i, !dbg !575
  store i8 %27, i8* %arrayidx70.i, align 1, !dbg !576, !tbaa !366
  br label %if.end71.i, !dbg !577

if.end71.i:                                       ; preds = %for.end68.i, %for.end38.i
  %32 = load i8, i8* %arrayidx72.i, align 2, !dbg !578, !tbaa !366
  %cmp74.i = icmp eq i8 %32, 42, !dbg !580
  br i1 %cmp74.i, label %if.then76.i, label %if.end78.i, !dbg !581

if.then76.i:                                      ; preds = %if.end71.i
  store i8 39, i8* %arrayidx72.i, align 2, !dbg !582, !tbaa !366
  br label %if.end78.i, !dbg !583

if.end78.i:                                       ; preds = %if.then76.i, %if.end71.i
  %lhsv455.i = load i32, i32* %19, align 4, !dbg !584
  %.not456.i = icmp eq i32 %lhsv455.i, 5059907, !dbg !584
  br i1 %.not456.i, label %if.then82.i, label %if.end85.i, !dbg !586

if.then82.i:                                      ; preds = %if.end78.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(3) %6, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 3, i1 false) #20, !dbg !587
  br label %if.end85.i, !dbg !587

if.end85.i:                                       ; preds = %if.then82.i, %if.end78.i
  %call88.i = call i8* @strncpy(i8* noundef nonnull %7, i8* noundef nonnull %arrayidx87.i, i64 noundef 3) #20, !dbg !588
  store i8 0, i8* %arrayidx89.i, align 1, !dbg !589, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %7, metadata !428, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %7, metadata !427, metadata !DIExpression()) #20, !dbg !451
  br label %for.cond91.i, !dbg !590

for.cond91.i:                                     ; preds = %for.inc100.i, %if.end85.i
  %np1.2.i = phi i8* [ %7, %if.end85.i ], [ %np1.3.i, %for.inc100.i ], !dbg !592
  %np.1.i = phi i8* [ %7, %if.end85.i ], [ %incdec.ptr101.i, %for.inc100.i ], !dbg !592
  call void @llvm.dbg.value(metadata i8* %np.1.i, metadata !427, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %np1.2.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  %33 = load i8, i8* %np.1.i, align 1, !dbg !593, !tbaa !366
  switch i8 %33, label %if.then97.i [
    i8 0, label %for.end102.i
    i8 32, label %for.inc100.i
  ], !dbg !595

if.then97.i:                                      ; preds = %for.cond91.i
  %incdec.ptr98.i = getelementptr inbounds i8, i8* %np1.2.i, i64 1, !dbg !596
  call void @llvm.dbg.value(metadata i8* %incdec.ptr98.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  store i8 %33, i8* %np1.2.i, align 1, !dbg !599, !tbaa !366
  br label %for.inc100.i, !dbg !600

for.inc100.i:                                     ; preds = %if.then97.i, %for.cond91.i
  %np1.3.i = phi i8* [ %incdec.ptr98.i, %if.then97.i ], [ %np1.2.i, %for.cond91.i ], !dbg !592
  call void @llvm.dbg.value(metadata i8* %np1.3.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  %incdec.ptr101.i = getelementptr inbounds i8, i8* %np.1.i, i64 1, !dbg !601
  call void @llvm.dbg.value(metadata i8* %incdec.ptr101.i, metadata !427, metadata !DIExpression()) #20, !dbg !451
  br label %for.cond91.i, !dbg !602, !llvm.loop !603

for.end102.i:                                     ; preds = %for.cond91.i
  store i8 0, i8* %np1.2.i, align 1, !dbg !605, !tbaa !366
  %lhsv457.i = load i32, i32* %19, align 4, !dbg !606
  %.not458.i = icmp eq i32 %lhsv457.i, 2568783, !dbg !606
  br i1 %.not458.i, label %if.then106.i, label %for.end102.if.end107_crit_edge.i, !dbg !608

for.end102.if.end107_crit_edge.i:                 ; preds = %for.end102.i
  %.pre.i = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 7), align 4
  br label %if.end107.i, !dbg !608

if.then106.i:                                     ; preds = %for.end102.i
  store i32 2, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 7), align 4, !dbg !609, !tbaa !610
  br label %if.end107.i, !dbg !612

if.end107.i:                                      ; preds = %if.then106.i, %for.end102.if.end107_crit_edge.i
  %34 = phi i32 [ %.pre.i, %for.end102.if.end107_crit_edge.i ], [ 2, %if.then106.i ]
  %bcmp425.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %6, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 5) #20, !dbg !613
  %tobool110.i = icmp eq i32 %bcmp425.i, 0, !dbg !613
  %cmp111.i = icmp eq i32 %34, 2
  %or.cond353.i = select i1 %tobool110.i, i1 %cmp111.i, i1 false, !dbg !615
  br i1 %or.cond353.i, label %if.then113.i, label %if.end116.i, !dbg !615

if.then113.i:                                     ; preds = %if.end107.i
  store i32 2568776, i32* %19, align 4, !dbg !616
  br label %if.end116.i, !dbg !616

if.end116.i:                                      ; preds = %if.then113.i, %if.end107.i
  %lhsv459.i = load i16, i16* %20, align 4, !dbg !617
  switch i16 %lhsv459.i, label %if.end151.i [
    i16 65, label %if.end123.thread.i
    i16 67, label %if.then127.i
    i16 71, label %if.end137.thread.i
    i16 84, label %if.then141.i
    i16 85, label %if.then148.i
  ], !dbg !619

if.end123.thread.i:                               ; preds = %if.end116.i
  store i32 4539457, i32* %21, align 4, !dbg !620
  br label %if.end151.i, !dbg !621

if.then127.i:                                     ; preds = %if.end116.i
  store i32 5527875, i32* %21, align 4, !dbg !622
  br label %if.end151.i, !dbg !622

if.end137.thread.i:                               ; preds = %if.end116.i
  store i32 4281671, i32* %21, align 4, !dbg !624
  br label %if.end151.i, !dbg !626

if.then141.i:                                     ; preds = %if.end116.i
  store i32 5851220, i32* %21, align 4, !dbg !627
  br label %if.end151.i, !dbg !627

if.then148.i:                                     ; preds = %if.end116.i
  store i32 4280917, i32* %21, align 4, !dbg !629
  br label %if.end151.i, !dbg !629

if.end151.i:                                      ; preds = %if.then148.i, %if.then141.i, %if.end137.thread.i, %if.then127.i, %if.end123.thread.i, %if.end116.i
  %call154.i = call i8* @strncpy(i8* noundef nonnull %9, i8* noundef nonnull %arrayidx153.i, i64 noundef 6) #20, !dbg !631
  store i8 0, i8* %arrayidx155.i, align 1, !dbg !632, !tbaa !366
  %35 = load i8, i8* %arrayidx153.i, align 1, !dbg !633, !tbaa !366
  %conv157.i = sext i8 %35 to i32, !dbg !633
  call void @llvm.dbg.value(metadata i32 %conv157.i, metadata !411, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32* %rnum.i, metadata !429, metadata !DIExpression(DW_OP_deref)) #20, !dbg !451
  %call159.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %arrayidx158.i, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32* noundef nonnull %rnum.i) #20, !dbg !634
  %call162.i = call i8* @strncpy(i8* noundef nonnull %11, i8* noundef nonnull %arrayidx161.i, i64 noundef 8) #20, !dbg !635
  store i8 0, i8* %arrayidx163.i, align 1, !dbg !636, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %11, metadata !637, metadata !DIExpression()) #20, !dbg !645
  %call.i461.i = call double @strtod(i8* nocapture noundef nonnull %11, i8** noundef null) #20, !dbg !647
  call void @llvm.dbg.value(metadata double %call.i461.i, metadata !431, metadata !DIExpression()) #20, !dbg !451
  %call168.i = call i8* @strncpy(i8* noundef nonnull %11, i8* noundef nonnull %arrayidx167.i, i64 noundef 8) #20, !dbg !648
  store i8 0, i8* %arrayidx163.i, align 1, !dbg !649, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %11, metadata !637, metadata !DIExpression()) #20, !dbg !650
  %call.i462.i = call double @strtod(i8* nocapture noundef nonnull %11, i8** noundef null) #20, !dbg !652
  call void @llvm.dbg.value(metadata double %call.i462.i, metadata !432, metadata !DIExpression()) #20, !dbg !451
  %call174.i = call i8* @strncpy(i8* noundef nonnull %11, i8* noundef nonnull %arrayidx173.i, i64 noundef 8) #20, !dbg !653
  store i8 0, i8* %arrayidx163.i, align 1, !dbg !654, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %11, metadata !637, metadata !DIExpression()) #20, !dbg !655
  %call.i463.i = call double @strtod(i8* nocapture noundef nonnull %11, i8** noundef null) #20, !dbg !657
  call void @llvm.dbg.value(metadata double %call.i463.i, metadata !433, metadata !DIExpression()) #20, !dbg !451
  %call179.i = call i8* @strstr(i8* noundef nonnull %15, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #19, !dbg !658
  %tobool180.not.i = icmp eq i8* %call179.i, null, !dbg !658
  br i1 %tobool180.not.i, label %if.else184.i, label %if.then181.i, !dbg !660

if.then181.i:                                     ; preds = %if.end151.i
  call void @llvm.dbg.value(metadata double* %q.i, metadata !434, metadata !DIExpression(DW_OP_deref)) #20, !dbg !451
  call void @llvm.dbg.value(metadata double* %r.i, metadata !435, metadata !DIExpression(DW_OP_deref)) #20, !dbg !451
  %call183.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %arrayidx182.i, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double* noundef nonnull %q.i, double* noundef nonnull %r.i) #20, !dbg !661
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !436, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !437, metadata !DIExpression()) #20, !dbg !451
  br label %if.end233.i, !dbg !663

if.else184.i:                                     ; preds = %if.end151.i
  %lhsc.i = load i8, i8* %6, align 4, !dbg !664
  switch i8 %lhsc.i, label %if.else214.i [
    i8 72, label %if.then188.i
    i8 67, label %if.then193.i
    i8 78, label %if.then198.i
    i8 79, label %if.then203.i
    i8 83, label %if.then208.i
    i8 80, label %if.then213.i
  ], !dbg !667

if.then188.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.200000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.200000e+00, double* %r.i, align 8, !dbg !668, !tbaa !669
  br label %if.end220.i, !dbg !670

if.then193.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.700000e+00, double* %r.i, align 8, !dbg !671, !tbaa !669
  br label %if.end220.i, !dbg !673

if.then198.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.550000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.550000e+00, double* %r.i, align 8, !dbg !674, !tbaa !669
  br label %if.end220.i, !dbg !676

if.then203.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.500000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.500000e+00, double* %r.i, align 8, !dbg !677, !tbaa !669
  br label %if.end220.i, !dbg !679

if.then208.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.800000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.800000e+00, double* %r.i, align 8, !dbg !680, !tbaa !669
  br label %if.end220.i, !dbg !682

if.then213.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.850000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.850000e+00, double* %r.i, align 8, !dbg !683, !tbaa !669
  br label %if.end220.i, !dbg !685

if.else214.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.700000e+00, double* %r.i, align 8, !dbg !686, !tbaa !669
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.else214.i, %if.then213.i, %if.then208.i, %if.then203.i, %if.then198.i, %if.then193.i, %if.then188.i
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !434, metadata !DIExpression()) #20, !dbg !451
  store double 0.000000e+00, double* %q.i, align 8, !dbg !687, !tbaa !669
  %call223.i = call i8* @strncpy(i8* noundef nonnull %11, i8* noundef nonnull %arrayidx182.i, i64 noundef 6) #20, !dbg !688
  store i8 0, i8* %arrayidx224.i, align 1, !dbg !689, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %11, metadata !637, metadata !DIExpression()) #20, !dbg !690
  %call.i464.i = call double @strtod(i8* nocapture noundef nonnull %11, i8** noundef null) #20, !dbg !692
  call void @llvm.dbg.value(metadata double %call.i464.i, metadata !436, metadata !DIExpression()) #20, !dbg !451
  %call229.i = call i8* @strncpy(i8* noundef nonnull %11, i8* noundef nonnull %arrayidx228.i, i64 noundef 6) #20, !dbg !693
  store i8 0, i8* %arrayidx224.i, align 1, !dbg !694, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %11, metadata !637, metadata !DIExpression()) #20, !dbg !695
  %call.i465.i = call double @strtod(i8* nocapture noundef nonnull %11, i8** noundef null) #20, !dbg !697
  call void @llvm.dbg.value(metadata double %call.i465.i, metadata !437, metadata !DIExpression()) #20, !dbg !451
  br label %if.end233.i

if.end233.i:                                      ; preds = %if.end220.i, %if.then181.i
  %occ.0.i = phi double [ 1.000000e+00, %if.then181.i ], [ %call.i464.i, %if.end220.i ], !dbg !698
  %bfact.0.i = phi double [ 0.000000e+00, %if.then181.i ], [ %call.i465.i, %if.end220.i ], !dbg !698
  call void @llvm.dbg.value(metadata double %bfact.0.i, metadata !437, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata double %occ.0.i, metadata !436, metadata !DIExpression()) #20, !dbg !451
  %cmp234.not.i = icmp eq i32 %l_cid.0495.i, %conv157.i, !dbg !699
  br i1 %cmp234.not.i, label %if.else284.i, label %if.then236.i, !dbg !700

if.then236.i:                                     ; preds = %if.end233.i
  %36 = load i32, i32* @n_atab, align 4, !dbg !701, !tbaa !523
  %cmp237.i = icmp sgt i32 %36, 0, !dbg !703
  br i1 %cmp237.i, label %if.then239.i, label %if.end246.i, !dbg !704

if.then239.i:                                     ; preds = %if.then236.i
  %37 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !705, !tbaa !707
  %call241.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %37, i8* noundef nonnull %8) #20, !dbg !708
  %38 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !709, !tbaa !710
  %call243.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %38, i8* noundef nonnull %10) #20, !dbg !711
  store i32 %l_rnum.0491.i, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !712, !tbaa !713
  store i32 %36, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !714, !tbaa !715
  call fastcc void @makebonds() #20, !dbg !716
  %call245.i = call i32 @addresidue(%struct.molecule_t* noundef %call2.i, i8* noundef nonnull %5, %struct.residue_t* noundef nonnull @res) #20, !dbg !717
  call fastcc void @initres() #20, !dbg !718
  store i32 0, i32* @n_atab, align 4, !dbg !719, !tbaa !523
  br label %if.end246.i, !dbg !720

if.end246.i:                                      ; preds = %if.then239.i, %if.then236.i
  %inc247.i = add nsw i32 %nchains.0493.i, 1, !dbg !721
  call void @llvm.dbg.value(metadata i32 %inc247.i, metadata !412, metadata !DIExpression()) #20, !dbg !451
  %cmp248.i = icmp eq i8 %35, 32, !dbg !722
  br i1 %cmp248.i, label %if.then250.i, label %if.else253.i, !dbg !724

if.then250.i:                                     ; preds = %if.end246.i
  %call252.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 noundef %inc247.i) #20, !dbg !725
  br label %if.end257.i, !dbg !725

if.else253.i:                                     ; preds = %if.end246.i
  store i8 %35, i8* %5, align 1, !dbg !726, !tbaa !366
  store i8 0, i8* %arrayidx256.i, align 1, !dbg !728, !tbaa !366
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.else253.i, %if.then250.i
  %call259.i = call i32 @addstrand(%struct.molecule_t* noundef %call2.i, i8* noundef nonnull %5) #20, !dbg !729
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !441, metadata !DIExpression()) #20, !dbg !730
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !450, metadata !DIExpression()) #20, !dbg !730
  br label %for.cond260.i, !dbg !731

for.cond260.i:                                    ; preds = %for.cond260.i, %if.end257.i
  %spl.0.in.i = phi %struct.strand_t** [ %m_strands.i, %if.end257.i ], [ %s_next.i, %for.cond260.i ]
  %spl.0.i = load %struct.strand_t*, %struct.strand_t** %spl.0.in.i, align 8, !dbg !733, !tbaa !372, !nonnull !734
  call void @llvm.dbg.value(metadata %struct.strand_t* %spl.0.i, metadata !450, metadata !DIExpression()) #20, !dbg !730
  %s_strandname.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %spl.0.i, i64 0, i32 0, !dbg !735
  %39 = load i8*, i8** %s_strandname.i, align 8, !dbg !735, !tbaa !739
  %call264.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %39, i8* noundef nonnull %5) #19, !dbg !741
  %tobool265.not.i = icmp eq i32 %call264.i, 0, !dbg !741
  %s_next.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %spl.0.i, i64 0, i32 4, !dbg !742
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !450, metadata !DIExpression()) #20, !dbg !730
  br i1 %tobool265.not.i, label %for.end269.i, label %for.cond260.i, !dbg !743, !llvm.loop !744

for.end269.i:                                     ; preds = %for.cond260.i
  call void @llvm.dbg.value(metadata %struct.strand_t* %spl.0.i, metadata !441, metadata !DIExpression()) #20, !dbg !730
  %s_res_size.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %spl.0.i, i64 0, i32 6, !dbg !747
  store i32 10000, i32* %s_res_size.i, align 4, !dbg !748, !tbaa !749
  %call272.i = call noalias dereferenceable_or_null(1280000) i8* @malloc(i64 noundef 1280000) #20, !dbg !750
  %s_residues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %spl.0.i, i64 0, i32 7, !dbg !751
  %40 = bitcast %struct.residue_t*** %s_residues.i to i8**, !dbg !752
  store i8* %call272.i, i8** %40, align 8, !dbg !752, !tbaa !753
  call void @llvm.dbg.value(metadata i32 %conv157.i, metadata !410, metadata !DIExpression()) #20, !dbg !451
  %call280.i = call i8* @strcpy(i8* noundef nonnull %8, i8* noundef nonnull %7) #20, !dbg !754
  %call283.i = call i8* @strcpy(i8* noundef nonnull %10, i8* noundef nonnull %9) #20, !dbg !755
  %41 = load i32, i32* %rnum.i, align 4, !dbg !756, !tbaa !523
  call void @llvm.dbg.value(metadata i32 %41, metadata !429, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %41, metadata !430, metadata !DIExpression()) #20, !dbg !451
  br label %if.end303.i, !dbg !757

if.else284.i:                                     ; preds = %if.end233.i
  %42 = load i32, i32* %rnum.i, align 4, !dbg !758, !tbaa !523
  call void @llvm.dbg.value(metadata i32 %42, metadata !429, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %8, metadata !760, metadata !DIExpression()) #20, !dbg !768
  call void @llvm.dbg.value(metadata i8* %7, metadata !765, metadata !DIExpression()) #20, !dbg !768
  call void @llvm.dbg.value(metadata i32 %l_rnum.0491.i, metadata !766, metadata !DIExpression()) #20, !dbg !768
  call void @llvm.dbg.value(metadata i32 %42, metadata !767, metadata !DIExpression()) #20, !dbg !768
  %call.i466.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %8, i8* noundef nonnull dereferenceable(1) %7) #19, !dbg !770
  %tobool.i.i = icmp eq i32 %call.i466.i, 0, !dbg !770
  %cmp.i.i = icmp eq i32 %l_rnum.0491.i, %42, !dbg !771
  %tobool288.not.i = and i1 %cmp.i.i, %tobool.i.i, !dbg !772
  br i1 %tobool288.not.i, label %if.end303.i, label %if.then289.i, !dbg !773

if.then289.i:                                     ; preds = %if.else284.i
  %43 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !774, !tbaa !707
  %call291.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %43, i8* noundef nonnull %8) #20, !dbg !776
  %44 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !777, !tbaa !710
  %call293.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %44, i8* noundef nonnull %10) #20, !dbg !778
  store i32 %l_rnum.0491.i, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !779, !tbaa !713
  %45 = load i32, i32* @n_atab, align 4, !dbg !780, !tbaa !523
  store i32 %45, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !781, !tbaa !715
  call fastcc void @makebonds() #20, !dbg !782
  %call295.i = call i32 @addresidue(%struct.molecule_t* noundef %call2.i, i8* noundef nonnull %5, %struct.residue_t* noundef nonnull @res) #20, !dbg !783
  call fastcc void @initres() #20, !dbg !784
  %call298.i = call i8* @strcpy(i8* noundef nonnull %8, i8* noundef nonnull %7) #20, !dbg !785
  %call301.i = call i8* @strcpy(i8* noundef nonnull %10, i8* noundef nonnull %9) #20, !dbg !786
  %46 = load i32, i32* %rnum.i, align 4, !dbg !787, !tbaa !523
  call void @llvm.dbg.value(metadata i32 %46, metadata !429, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %46, metadata !430, metadata !DIExpression()) #20, !dbg !451
  store i32 0, i32* @n_atab, align 4, !dbg !788, !tbaa !523
  br label %if.end303.i, !dbg !789

if.end303.i:                                      ; preds = %if.then289.i, %if.else284.i, %for.end269.i
  %l_rnum.1.i = phi i32 [ %41, %for.end269.i ], [ %46, %if.then289.i ], [ %l_rnum.0491.i, %if.else284.i ], !dbg !451
  %nchains.1.i = phi i32 [ %inc247.i, %for.end269.i ], [ %nchains.0493.i, %if.then289.i ], [ %nchains.0493.i, %if.else284.i ], !dbg !790
  %l_cid.1.i = phi i32 [ %conv157.i, %for.end269.i ], [ %l_cid.0495.i, %if.then289.i ], [ %l_cid.0495.i, %if.else284.i ], !dbg !451
  call void @llvm.dbg.value(metadata i32 %l_cid.1.i, metadata !410, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %nchains.1.i, metadata !412, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %l_rnum.1.i, metadata !430, metadata !DIExpression()) #20, !dbg !451
  %47 = load i32, i32* @n_atab, align 4, !dbg !791, !tbaa !523
  %idxprom304.i = sext i32 %47 to i64, !dbg !792
  %arrayidx305.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, !dbg !792
  call void @llvm.dbg.value(metadata %struct.atom_t* %arrayidx305.i, metadata !409, metadata !DIExpression()) #20, !dbg !451
  call void @NAB_initatom(%struct.atom_t* noundef nonnull %arrayidx305.i, i32 noundef 0) #20, !dbg !793
  %a_atomname.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %arrayidx305.i, i64 0, i32 0, !dbg !794
  %48 = load i8*, i8** %a_atomname.i, align 16, !dbg !794, !tbaa !489
  %call307.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %48, i8* noundef nonnull %6) #20, !dbg !795
  %a_attr.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 2, !dbg !796
  store i32 0, i32* %a_attr.i, align 16, !dbg !797, !tbaa !798
  %a_residue.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 5, !dbg !799
  store %struct.residue_t* null, %struct.residue_t** %a_residue.i, align 8, !dbg !800, !tbaa !801
  %arrayidx308.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 17, i64 0, !dbg !802
  store double %call.i461.i, double* %arrayidx308.i, align 16, !dbg !803, !tbaa !669
  %arrayidx310.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 17, i64 1, !dbg !804
  store double %call.i462.i, double* %arrayidx310.i, align 8, !dbg !805, !tbaa !669
  %arrayidx312.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 17, i64 2, !dbg !806
  store double %call.i463.i, double* %arrayidx312.i, align 16, !dbg !807, !tbaa !669
  %49 = load double, double* %q.i, align 8, !dbg !808, !tbaa !669
  call void @llvm.dbg.value(metadata double %49, metadata !434, metadata !DIExpression()) #20, !dbg !451
  %a_charge.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 6, !dbg !809
  store double %49, double* %a_charge.i, align 16, !dbg !810, !tbaa !811
  %50 = load double, double* %r.i, align 8, !dbg !812, !tbaa !669
  call void @llvm.dbg.value(metadata double %50, metadata !435, metadata !DIExpression()) #20, !dbg !451
  %a_radius.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 7, !dbg !813
  store double %50, double* %a_radius.i, align 8, !dbg !814, !tbaa !815
  %a_occ.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 9, !dbg !816
  store double %occ.0.i, double* %a_occ.i, align 8, !dbg !817, !tbaa !818
  %a_bfact.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 8, !dbg !819
  store double %bfact.0.i, double* %a_bfact.i, align 16, !dbg !820, !tbaa !821
  %51 = load i32, i32* @n_atab, align 4, !dbg !822, !tbaa !523
  %inc313.i = add nsw i32 %51, 1, !dbg !822
  store i32 %inc313.i, i32* @n_atab, align 4, !dbg !822, !tbaa !523
  br label %if.end340.i, !dbg !823

if.else314.i:                                     ; preds = %lor.lhs.false.i
  %bcmp421.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull dereferenceable(3) %4, i64 3) #20, !dbg !824
  %cmp317.i = icmp eq i32 %bcmp421.i, 0, !dbg !826
  br i1 %cmp317.i, label %if.then319.i, label %if.else332.i, !dbg !827

if.then319.i:                                     ; preds = %if.else314.i
  %52 = load i32, i32* @n_atab, align 4, !dbg !828, !tbaa !523
  %cmp320.i = icmp sgt i32 %52, 0, !dbg !831
  br i1 %cmp320.i, label %if.then322.i, label %if.end329.i, !dbg !832

if.then322.i:                                     ; preds = %if.then319.i
  %53 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !833, !tbaa !707
  %call324.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %53, i8* noundef nonnull %8) #20, !dbg !835
  %54 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !836, !tbaa !710
  %call326.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull %10) #20, !dbg !837
  store i32 %l_rnum.0491.i, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !838, !tbaa !713
  store i32 %52, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !839, !tbaa !715
  call fastcc void @makebonds() #20, !dbg !840
  %call328.i = call i32 @addresidue(%struct.molecule_t* noundef %call2.i, i8* noundef nonnull %5, %struct.residue_t* noundef nonnull @res) #20, !dbg !841
  call fastcc void @initres() #20, !dbg !842
  store i32 0, i32* @n_atab, align 4, !dbg !843, !tbaa !523
  br label %if.end329.i, !dbg !844

if.end329.i:                                      ; preds = %if.then322.i, %if.then319.i
  call void @llvm.dbg.value(metadata i32 0, metadata !410, metadata !DIExpression()) #20, !dbg !451
  store i8 0, i8* %8, align 1, !dbg !845, !tbaa !366
  store i8 0, i8* %10, align 1, !dbg !846, !tbaa !366
  call void @llvm.dbg.value(metadata i32 0, metadata !430, metadata !DIExpression()) #20, !dbg !451
  br label %if.end340.i, !dbg !847

if.else332.i:                                     ; preds = %if.else314.i
  %bcmp422.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* noundef nonnull dereferenceable(3) %4, i64 3) #20, !dbg !848
  %cmp335.i = icmp eq i32 %bcmp422.i, 0, !dbg !850
  br i1 %cmp335.i, label %for.end341.i, label %if.end340.i, !dbg !851

if.end340.i:                                      ; preds = %if.else332.i, %if.end329.i, %if.end303.i
  %l_rnum.2.i = phi i32 [ %l_rnum.1.i, %if.end303.i ], [ 0, %if.end329.i ], [ %l_rnum.0491.i, %if.else332.i ], !dbg !451
  %nchains.2.i = phi i32 [ %nchains.1.i, %if.end303.i ], [ %nchains.0493.i, %if.end329.i ], [ %nchains.0493.i, %if.else332.i ], !dbg !790
  %l_cid.2.i = phi i32 [ %l_cid.1.i, %if.end303.i ], [ 0, %if.end329.i ], [ %l_cid.0495.i, %if.else332.i ], !dbg !451
  call void @llvm.dbg.value(metadata i32 %l_cid.2.i, metadata !410, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %nchains.2.i, metadata !412, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %l_rnum.2.i, metadata !430, metadata !DIExpression()) #20, !dbg !451
  %call5.i = call i8* @ggets(i8* noundef nonnull %4, i32 noundef 82, %struct._IO_FILE* noundef %fp.1) #20, !dbg !524
  %cmp6.i = icmp eq i8* %call5.i, null, !dbg !526
  br i1 %cmp6.i, label %for.end341.i, label %if.end8.i, !dbg !527, !llvm.loop !852

for.end341.i:                                     ; preds = %if.end340.i, %if.else332.i, %init_atab.exit.i
  %l_rnum.0.lcssa.i = phi i32 [ 0, %init_atab.exit.i ], [ %l_rnum.2.i, %if.end340.i ], [ %l_rnum.0491.i, %if.else332.i ], !dbg !451
  %55 = load i32, i32* @n_atab, align 4, !dbg !855, !tbaa !523
  %cmp342.i = icmp sgt i32 %55, 0, !dbg !857
  br i1 %cmp342.i, label %if.then344.i, label %fgetpdb.exit, !dbg !858

if.then344.i:                                     ; preds = %for.end341.i
  %56 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !859, !tbaa !707
  %call346.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %56, i8* noundef nonnull %8) #20, !dbg !861
  %57 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !862, !tbaa !710
  %call348.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull %10) #20, !dbg !863
  store i32 %l_rnum.0.lcssa.i, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !864, !tbaa !713
  store i32 %55, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !865, !tbaa !715
  call fastcc void @makebonds() #20, !dbg !866
  %call350.i = call i32 @addresidue(%struct.molecule_t* noundef %call2.i, i8* noundef nonnull %5, %struct.residue_t* noundef nonnull @res) #20, !dbg !867
  call fastcc void @initres() #20, !dbg !868
  br label %fgetpdb.exit, !dbg !869

fgetpdb.exit:                                     ; preds = %for.end341.i, %if.then344.i
  %m_nvalid.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %call2.i, i64 0, i32 5, !dbg !870
  store i32 0, i32* %m_nvalid.i, align 8, !dbg !871, !tbaa !872
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %15) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %11) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %10) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %9) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %8) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %7) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %6) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %5) #20, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 82, i8* nonnull %4) #20, !dbg !874
  call void @llvm.dbg.value(metadata %struct.molecule_t* %call2.i, metadata !359, metadata !DIExpression()), !dbg !361
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !875, !tbaa !372
  %cmp19.not = icmp eq %struct._IO_FILE* %fp.1, %58, !dbg !877
  br i1 %cmp19.not, label %if.end26, label %if.then20, !dbg !878

if.then20:                                        ; preds = %fgetpdb.exit
  %call21 = call i32 @get_mytaskid() #20, !dbg !879
  %cmp22 = icmp eq i32 %call21, 0, !dbg !882
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !883

if.then23:                                        ; preds = %if.then20
  %call24 = call i32 @fclose(%struct._IO_FILE* noundef %fp.1), !dbg !884
  br label %if.end26, !dbg !886

if.end26:                                         ; preds = %if.then20, %if.then23, %fgetpdb.exit
  ret %struct.molecule_t* %call2.i, !dbg !887
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #3

declare !dbg !888 dso_local i32 @get_mytaskid() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

declare !dbg !891 dso_local void @reducerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !894 dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull [4 x [4 x double]]* @getmatrix(i8* noundef %fname) local_unnamed_addr #6 !dbg !2 {
entry:
  %line = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %fname, metadata !274, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !275, metadata !DIExpression()), !dbg !898
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i64 0, i64 0, !dbg !899
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #20, !dbg !899
  call void @llvm.dbg.declare(metadata [256 x i8]* %line, metadata !334, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.declare(metadata i32* undef, metadata !339, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i32 0, metadata !342, metadata !DIExpression()), !dbg !898
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !902
  %cmp = icmp eq i8* %fname, null, !dbg !903
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !905

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %fname, align 1, !dbg !906, !tbaa !366
  %cmp1 = icmp eq i8 %1, 0, !dbg !907
  br i1 %cmp1, label %if.then, label %if.else, !dbg !908

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !909, !tbaa !372
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %2) #21, !dbg !911
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !898
  br label %if.end53, !dbg !912

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %fname, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #19, !dbg !913
  %tobool.not = icmp eq i32 %call3, 0, !dbg !913
  br i1 %tobool.not, label %if.then4, label %if.else5, !dbg !915

if.then4:                                         ; preds = %if.else
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !916, !tbaa !372
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, metadata !275, metadata !DIExpression()), !dbg !898
  br label %if.end12, !dbg !917

if.else5:                                         ; preds = %if.else
  %call6 = tail call %struct._IO_FILE* @fopen(i8* noundef nonnull %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !918
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call6, metadata !275, metadata !DIExpression()), !dbg !898
  %cmp7 = icmp eq %struct._IO_FILE* %call6, null, !dbg !920
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !921

if.then9:                                         ; preds = %if.else5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !922, !tbaa !372
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %fname) #21, !dbg !924
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !898
  br label %if.end53, !dbg !925

if.end12:                                         ; preds = %if.then4, %if.else5
  %fp.0 = phi %struct._IO_FILE* [ %call6, %if.else5 ], [ %4, %if.then4 ], !dbg !926
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.0, metadata !275, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 0, metadata !338, metadata !DIExpression()), !dbg !898
  br label %for.cond.outer, !dbg !927

for.cond.outer:                                   ; preds = %if.end37, %if.end12
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end37 ], [ 0, %if.end12 ]
  br label %for.cond, !dbg !929

for.cond:                                         ; preds = %for.cond.outer, %for.body
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !338, metadata !DIExpression()), !dbg !898
  %call13 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 256, %struct._IO_FILE* noundef %fp.0), !dbg !930
  %tobool14.not = icmp eq i8* %call13, null, !dbg !929
  br i1 %tobool14.not, label %for.end, label %for.body, !dbg !929

for.body:                                         ; preds = %for.cond
  %6 = load i8, i8* %0, align 16, !dbg !932, !tbaa !366
  %cmp17 = icmp eq i8 %6, 35, !dbg !935
  br i1 %cmp17, label %for.cond, label %if.end20, !dbg !936, !llvm.loop !937

if.end20:                                         ; preds = %for.body
  %arrayidx22 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv, i64 0, !dbg !939
  %arrayidx25 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv, i64 1, !dbg !940
  %arrayidx28 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv, i64 2, !dbg !941
  %arrayidx31 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv, i64 3, !dbg !942
  %call32 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* noundef nonnull %arrayidx22, double* noundef nonnull %arrayidx25, double* noundef nonnull %arrayidx28, double* noundef nonnull %arrayidx31) #20, !dbg !943
  call void @llvm.dbg.value(metadata i32 %call32, metadata !340, metadata !DIExpression()), !dbg !898
  %cmp33.not = icmp eq i32 %call32, 4, !dbg !944
  br i1 %cmp33.not, label %if.end37, label %if.then35, !dbg !946

if.then35:                                        ; preds = %if.end20
  %7 = trunc i64 %indvars.iv to i32, !dbg !947
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !947, !tbaa !372
  %add = add nuw nsw i32 %7, 1, !dbg !949
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 noundef %add, i32 noundef %call32) #21, !dbg !950
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !898
  br label %CLEAN_UP.sink.split, !dbg !951

if.end37:                                         ; preds = %if.end20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !952
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !338, metadata !DIExpression()), !dbg !898
  %exitcond = icmp eq i64 %indvars.iv.next, 4, !dbg !953
  br i1 %exitcond, label %CLEAN_UP, label %for.cond.outer, !dbg !955, !llvm.loop !937

for.end:                                          ; preds = %for.cond
  %9 = trunc i64 %indvars.iv to i32, !dbg !956
  call void @llvm.dbg.value(metadata i32 %9, metadata !338, metadata !DIExpression()), !dbg !898
  %cmp42.not = icmp eq i32 %9, 4, !dbg !956
  br i1 %cmp42.not, label %CLEAN_UP, label %if.then44, !dbg !958

if.then44:                                        ; preds = %for.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !959, !tbaa !372
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 noundef %9) #21, !dbg !961
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !898
  br label %CLEAN_UP.sink.split, !dbg !962

CLEAN_UP.sink.split:                              ; preds = %if.then35, %if.then44
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !898
  br label %CLEAN_UP, !dbg !963

CLEAN_UP:                                         ; preds = %if.end37, %CLEAN_UP.sink.split, %for.end
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.0, metadata !275, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.label(metadata !343), !dbg !965
  %cmp47.not = icmp eq %struct._IO_FILE* %fp.0, null, !dbg !963
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp49.not = icmp eq %struct._IO_FILE* %fp.0, %11
  %or.cond = select i1 %cmp47.not, i1 true, i1 %cmp49.not, !dbg !966
  br i1 %or.cond, label %if.end53, label %if.then51, !dbg !966

if.then51:                                        ; preds = %CLEAN_UP
  %call52 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %fp.0), !dbg !967
  br label %if.end53, !dbg !967

if.end53:                                         ; preds = %if.then9, %if.then, %if.then51, %CLEAN_UP
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), metadata !341, metadata !DIExpression()), !dbg !898
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #20, !dbg !968
  ret [4 x [4 x double]]* @getmatrix.mat, !dbg !969
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare !dbg !970 dso_local noundef i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @__isoc99_sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @putpdb(i8* noundef %fname, %struct.molecule_t* noundef readonly %mol, i8* noundef readonly %options) local_unnamed_addr #0 !dbg !975 {
entry:
  %rname.i = alloca [8 x i8], align 4
  %aname.i = alloca [8 x i8], align 1
  %rid.i = alloca [7 x i8], align 1
  %loptions.i = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %fname, metadata !979, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !980, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %options, metadata !981, metadata !DIExpression()), !dbg !984
  %tobool.not = icmp eq %struct.molecule_t* %mol, null, !dbg !985
  %call = tail call i32 @get_mytaskid() #20, !dbg !984
  %cmp = icmp eq i32 %call, 0, !dbg !984
  br i1 %tobool.not, label %if.then, label %if.end3, !dbg !987

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then1, label %cleanup, !dbg !988

if.then1:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !990, !tbaa !372
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %0) #21, !dbg !993
  br label %cleanup, !dbg !994

if.end3:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !983, metadata !DIExpression()), !dbg !984
  br i1 %cmp, label %if.then6, label %if.end23, !dbg !995

if.then6:                                         ; preds = %if.end3
  %call7 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %fname, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #19, !dbg !996
  %tobool8.not = icmp eq i32 %call7, 0, !dbg !996
  br i1 %tobool8.not, label %if.end.i, label %if.else, !dbg !1000

if.else:                                          ; preds = %if.then6
  %call10 = tail call %struct._IO_FILE* @fopen(i8* noundef %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1001
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call10, metadata !982, metadata !DIExpression()), !dbg !984
  %cmp11 = icmp eq %struct._IO_FILE* %call10, null, !dbg !1003
  br i1 %cmp11, label %if.end15, label %if.end.i.thread, !dbg !1004

if.end.i.thread:                                  ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !983, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !982, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1005, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1010, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %options, metadata !1011, metadata !DIExpression()) #20, !dbg !1037
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %rname.i, i64 0, i64 0, !dbg !1041
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20, !dbg !1041
  call void @llvm.dbg.declare(metadata [8 x i8]* %rname.i, metadata !1021, metadata !DIExpression()) #20, !dbg !1042
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 0, !dbg !1043
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20, !dbg !1043
  call void @llvm.dbg.declare(metadata [8 x i8]* %aname.i, metadata !1023, metadata !DIExpression()) #20, !dbg !1044
  %4 = getelementptr inbounds [7 x i8], [7 x i8]* %rid.i, i64 0, i64 0, !dbg !1045
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %4) #20, !dbg !1045
  call void @llvm.dbg.declare(metadata [7 x i8]* %rid.i, metadata !1024, metadata !DIExpression()) #20, !dbg !1046
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 0, !dbg !1047
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #20, !dbg !1047
  call void @llvm.dbg.declare(metadata [256 x i8]* %loptions.i, metadata !1028, metadata !DIExpression()) #20, !dbg !1048
  call void @llvm.dbg.value(metadata i32 0, metadata !1029, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1030, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1031, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1033, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1034, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1035, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1036, metadata !DIExpression()) #20, !dbg !1037
  br label %if.end4.i, !dbg !1049

if.end15:                                         ; preds = %if.else
  %call13 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* noundef %fname) #20, !dbg !1050
  call void @llvm.dbg.value(metadata i32 undef, metadata !983, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !982, metadata !DIExpression()), !dbg !984
  br label %if.end23, !dbg !1052

if.end.i:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1053, !tbaa !372
  call void @llvm.dbg.value(metadata i32 undef, metadata !983, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !982, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1005, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1010, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %options, metadata !1011, metadata !DIExpression()) #20, !dbg !1037
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %rname.i, i64 0, i64 0, !dbg !1041
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20, !dbg !1041
  call void @llvm.dbg.declare(metadata [8 x i8]* %rname.i, metadata !1021, metadata !DIExpression()) #20, !dbg !1042
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 0, !dbg !1043
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #20, !dbg !1043
  call void @llvm.dbg.declare(metadata [8 x i8]* %aname.i, metadata !1023, metadata !DIExpression()) #20, !dbg !1044
  %9 = getelementptr inbounds [7 x i8], [7 x i8]* %rid.i, i64 0, i64 0, !dbg !1045
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %9) #20, !dbg !1045
  call void @llvm.dbg.declare(metadata [7 x i8]* %rid.i, metadata !1024, metadata !DIExpression()) #20, !dbg !1046
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 0, !dbg !1047
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %10) #20, !dbg !1047
  call void @llvm.dbg.declare(metadata [256 x i8]* %loptions.i, metadata !1028, metadata !DIExpression()) #20, !dbg !1048
  call void @llvm.dbg.value(metadata i32 0, metadata !1029, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1030, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1031, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1033, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1034, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1035, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1036, metadata !DIExpression()) #20, !dbg !1037
  %tobool1.not.i = icmp eq %struct._IO_FILE* %6, null, !dbg !1054
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end4.i, !dbg !1049

if.then2.i:                                       ; preds = %if.end.i
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1056, !tbaa !372
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %11) #22, !dbg !1058
  br label %fputpdb.exit, !dbg !1059

if.end4.i:                                        ; preds = %if.end.i.thread, %if.end.i
  %fp.0.ph38 = phi %struct._IO_FILE* [ %call10, %if.end.i.thread ], [ %6, %if.end.i ]
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %rname.i, i64 0, i64 0
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 0
  %15 = getelementptr inbounds [7 x i8], [7 x i8]* %rid.i, i64 0, i64 0
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 0
  %cmp.i = icmp eq i8* %options, null, !dbg !1060
  br i1 %cmp.i, label %if.then5.i, label %if.else.i, !dbg !1062

if.then5.i:                                       ; preds = %if.end4.i
  store i8 0, i8* %16, align 16, !dbg !1063, !tbaa !366
  br label %if.end8.i, !dbg !1064

if.else.i:                                        ; preds = %if.end4.i
  %call7.i = call i8* @strncpy(i8* noundef nonnull %16, i8* noundef nonnull %options, i64 noundef 255) #20, !dbg !1065
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 255, !dbg !1067
  store i8 0, i8* %arrayidx.i, align 1, !dbg !1068, !tbaa !366
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then5.i
  %call10.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #19, !dbg !1069
  %cmp11.i = icmp ne i8* %call10.i, null, !dbg !1070
  call void @llvm.dbg.value(metadata i1 %cmp11.i, metadata !1029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1037
  %call13.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #19, !dbg !1071
  %cmp14.i = icmp ne i8* %call13.i, null, !dbg !1072
  call void @llvm.dbg.value(metadata i1 %cmp14.i, metadata !1030, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1037
  %call17.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #19, !dbg !1073
  %cmp18.i = icmp ne i8* %call17.i, null, !dbg !1074
  call void @llvm.dbg.value(metadata i1 %cmp18.i, metadata !1031, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1037
  %call21.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #19, !dbg !1075
  %cmp22.i = icmp ne i8* %call21.i, null, !dbg !1076
  call void @llvm.dbg.value(metadata i1 %cmp22.i, metadata !1032, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1037
  %call25.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #19, !dbg !1077
  %cmp26.i = icmp ne i8* %call25.i, null, !dbg !1078
  call void @llvm.dbg.value(metadata i1 %cmp26.i, metadata !1033, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1037
  %call29.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #19, !dbg !1079
  %cmp30.i = icmp eq i8* %call29.i, null, !dbg !1080
  call void @llvm.dbg.value(metadata i1 %cmp30.i, metadata !1034, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1037
  %call33.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #19, !dbg !1081
  %cmp34.i = icmp ne i8* %call33.i, null, !dbg !1082
  call void @llvm.dbg.value(metadata i1 %cmp34.i, metadata !1035, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i1 undef, metadata !1034, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i1 undef, metadata !1083, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1095
  call void @llvm.dbg.value(metadata i1 %cmp34.i, metadata !1088, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1089, metadata !DIExpression()) #20, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1090, metadata !DIExpression()) #20, !dbg !1095
  call void @llvm.dbg.value(metadata i32 0, metadata !1093, metadata !DIExpression()) #20, !dbg !1095
  %tobool.not.i.i = select i1 %cmp34.i, i1 true, i1 %cmp30.i, !dbg !1097
  br i1 %tobool.not.i.i, label %if.end.i.i, label %initcid.exit.i, !dbg !1099

if.end.i.i:                                       ; preds = %if.end8.i
  %call.i.i = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #20, !dbg !1100
  %17 = bitcast i8* %call.i.i to %struct.cid_t*, !dbg !1101
  call void @llvm.dbg.value(metadata %struct.cid_t* %17, metadata !1090, metadata !DIExpression()) #20, !dbg !1095
  %cmp.i.i = icmp eq i8* %call.i.i, null, !dbg !1102
  br i1 %cmp.i.i, label %if.then58.thread103.i.i, label %if.end3.i.i, !dbg !1104

if.then58.thread103.i.i:                          ; preds = %if.end.i.i
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1105, !tbaa !372
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %18) #22, !dbg !1107
  call void @llvm.dbg.value(metadata i32 undef, metadata !1093, metadata !DIExpression()) #20, !dbg !1095
  call void @llvm.dbg.label(metadata !1094) #20, !dbg !1108
  call void @llvm.dbg.value(metadata %struct.cid_t* %17, metadata !1109, metadata !DIExpression()) #20, !dbg !1114
  br label %initcid.exit.i, !dbg !1118

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = call noalias dereferenceable_or_null(128) i8* @malloc(i64 noundef 128) #20, !dbg !1119
  %c_cids.i.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %17, i64 0, i32 2, !dbg !1120
  store i8* %call4.i.i, i8** %c_cids.i.i, align 8, !dbg !1121, !tbaa !1122
  %cmp6.i.i = icmp eq i8* %call4.i.i, null, !dbg !1124
  br i1 %cmp6.i.i, label %if.end.i.i.i, label %if.end9.i.i, !dbg !1126

if.end9.i.i:                                      ; preds = %if.end3.i.i
  %c_next.i.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %17, i64 0, i32 0, !dbg !1127
  store i32 65, i32* %c_next.i.i, align 8, !dbg !1128, !tbaa !1129
  %c_last.i.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %17, i64 0, i32 1, !dbg !1130
  store i32 90, i32* %c_last.i.i, align 4, !dbg !1131, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 65, metadata !1091, metadata !DIExpression()) #20, !dbg !1095
  %scevgep.i.i = getelementptr i8, i8* %call4.i.i, i64 65, !dbg !1133
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(26) %scevgep.i.i, i8 0, i64 26, i1 false) #20, !dbg !1135, !tbaa !366
  call void @llvm.dbg.value(metadata i32 undef, metadata !1091, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !1095
  br i1 %cmp34.i, label %if.end19.i.i, label %initcid.exit.i, !dbg !1137

if.end19.i.i:                                     ; preds = %if.end9.i.i
  %m_strands.i.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1138
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1092, metadata !DIExpression()) #20, !dbg !1095
  %sp.097.i.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i.i, align 8, !dbg !1142, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.097.i.i, metadata !1092, metadata !DIExpression()) #20, !dbg !1095
  %tobool21.not98.i.i = icmp eq %struct.strand_t* %sp.097.i.i, null, !dbg !1143
  br i1 %tobool21.not98.i.i, label %for.body44.i.i.preheader, label %for.body22.i.i, !dbg !1143

for.body22.i.i:                                   ; preds = %if.end19.i.i, %for.inc37.i.i
  %sp.099.i.i = phi %struct.strand_t* [ %sp.0.i.i, %for.inc37.i.i ], [ %sp.097.i.i, %if.end19.i.i ]
  %s_strandname.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.099.i.i, i64 0, i32 0, !dbg !1144
  %20 = load i8*, i8** %s_strandname.i.i, align 8, !dbg !1144, !tbaa !739
  %call23.i.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %20) #19, !dbg !1148
  %cmp24.i.i = icmp eq i64 %call23.i.i, 1, !dbg !1149
  br i1 %cmp24.i.i, label %if.then25.i.i, label %for.inc37.i.i, !dbg !1150

if.then25.i.i:                                    ; preds = %for.body22.i.i
  %21 = load i8, i8* %20, align 1, !dbg !1151, !tbaa !366
  call void @llvm.dbg.value(metadata i8 %21, metadata !1091, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #20, !dbg !1095
  %22 = add i8 %21, -65, !dbg !1153
  %23 = icmp ult i8 %22, 26, !dbg !1153
  br i1 %23, label %if.then31.i.i, label %for.inc37.i.i, !dbg !1153

if.then31.i.i:                                    ; preds = %if.then25.i.i
  call void @llvm.dbg.value(metadata i8 %21, metadata !1091, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #20, !dbg !1095
  %idxprom3395.i.i = zext i8 %21 to i64, !dbg !1155
  %arrayidx34.i.i = getelementptr inbounds i8, i8* %call4.i.i, i64 %idxprom3395.i.i, !dbg !1155
  store i8 1, i8* %arrayidx34.i.i, align 1, !dbg !1156, !tbaa !366
  br label %for.inc37.i.i, !dbg !1155

for.inc37.i.i:                                    ; preds = %if.then31.i.i, %if.then25.i.i, %for.body22.i.i
  %s_next.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.099.i.i, i64 0, i32 4, !dbg !1157
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1092, metadata !DIExpression()) #20, !dbg !1095
  %sp.0.i.i = load %struct.strand_t*, %struct.strand_t** %s_next.i.i, align 8, !dbg !1142, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i.i, metadata !1092, metadata !DIExpression()) #20, !dbg !1095
  %tobool21.not.i.i = icmp eq %struct.strand_t* %sp.0.i.i, null, !dbg !1143
  br i1 %tobool21.not.i.i, label %for.body44.i.i.preheader, label %for.body22.i.i, !dbg !1143, !llvm.loop !1158

for.body44.i.i.preheader:                         ; preds = %for.inc37.i.i, %if.end19.i.i
  br label %for.body44.i.i, !dbg !1160

for.body44.i.i:                                   ; preds = %for.body44.i.i.preheader, %for.inc52.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc52.i.i ], [ 65, %for.body44.i.i.preheader ]
  %arrayidx48.i.i = getelementptr inbounds i8, i8* %call4.i.i, i64 %indvars.iv.i.i, !dbg !1162
  %24 = load i8, i8* %arrayidx48.i.i, align 1, !dbg !1162, !tbaa !366
  %tobool49.not.i.i = icmp eq i8 %24, 0, !dbg !1162
  br i1 %tobool49.not.i.i, label %initcid.exit.i, label %for.inc52.i.i, !dbg !1166

for.inc52.i.i:                                    ; preds = %for.body44.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1167
  %25 = trunc i64 %indvars.iv.next.i.i to i32, !dbg !1167
  store i32 %25, i32* %c_next.i.i, align 8, !dbg !1167, !tbaa !1129
  %exitcond.i = icmp eq i64 %indvars.iv.next.i.i, 91, !dbg !1168
  br i1 %exitcond.i, label %initcid.exit.i, label %for.body44.i.i, !dbg !1160, !llvm.loop !1169

if.end.i.i.i:                                     ; preds = %if.end3.i.i
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1171, !tbaa !372
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %26) #22, !dbg !1173
  call void @llvm.dbg.value(metadata i32 undef, metadata !1093, metadata !DIExpression()) #20, !dbg !1095
  call void @llvm.dbg.label(metadata !1094) #20, !dbg !1108
  call void @llvm.dbg.value(metadata %struct.cid_t* %17, metadata !1109, metadata !DIExpression()) #20, !dbg !1114
  call void @free(i8* noundef nonnull %call.i.i) #20, !dbg !1174
  br label %initcid.exit.i, !dbg !1177

initcid.exit.i:                                   ; preds = %for.inc52.i.i, %for.body44.i.i, %if.end.i.i.i, %if.end9.i.i, %if.then58.thread103.i.i, %if.end8.i
  %retval.0.i.i = phi %struct.cid_t* [ null, %if.end8.i ], [ %17, %if.end9.i.i ], [ null, %if.end.i.i.i ], [ null, %if.then58.thread103.i.i ], [ %17, %for.body44.i.i ], [ %17, %for.inc52.i.i ], !dbg !1095
  call void @llvm.dbg.value(metadata %struct.cid_t* %retval.0.i.i, metadata !1036, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1016, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()) #20, !dbg !1037
  %m_strands.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1178
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1018, metadata !DIExpression()) #20, !dbg !1037
  %cmp.i286.i = icmp eq %struct.cid_t* %retval.0.i.i, null
  %c_next.i288.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %retval.0.i.i, i64 0, i32 0
  %c_last.i289.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %retval.0.i.i, i64 0, i32 1
  %c_cids.i292.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %retval.0.i.i, i64 0, i32 2
  %28 = bitcast [8 x i8]* %rname.i to i32*
  %add.ptr.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 1
  %arrayidx6.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 4
  %arrayidx14.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 2
  %arrayidx21.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 3
  %29 = bitcast [8 x i8]* %rname.i to i16*
  %or.cond197.i = select i1 %cmp18.i, i1 true, i1 %cmp22.i
  %or.cond197.not.i = xor i1 %or.cond197.i, true
  %or.cond198.i = select i1 %or.cond197.not.i, i1 true, i1 %cmp11.i
  %or.cond199.i = select i1 %or.cond198.i, i1 true, i1 %cmp14.i
  %sp.0698.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1180, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0698.i, metadata !1018, metadata !DIExpression()) #20, !dbg !1037
  %tobool40.not699.i = icmp eq %struct.strand_t* %sp.0698.i, null, !dbg !1181
  br i1 %tobool40.not699.i, label %for.end176.i, label %for.body.i, !dbg !1181

for.body.i:                                       ; preds = %initcid.exit.i, %for.end173.i
  %sp.0702.i = phi %struct.strand_t* [ %sp.0.i, %for.end173.i ], [ %sp.0698.i, %initcid.exit.i ]
  %tr.0701.i = phi i32 [ %tr.1.lcssa.i, %for.end173.i ], [ 0, %initcid.exit.i ]
  %ta.0700.i = phi i32 [ %ta.1.lcssa.i, %for.end173.i ], [ 0, %initcid.exit.i ]
  call void @llvm.dbg.value(metadata i32 %tr.0701.i, metadata !1013, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %ta.0700.i, metadata !1016, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.cid_t* %retval.0.i.i, metadata !1182, metadata !DIExpression()) #20, !dbg !1191
  call void @llvm.dbg.value(metadata i1 undef, metadata !1187, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1191
  call void @llvm.dbg.value(metadata i1 %cmp34.i, metadata !1188, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1191
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0702.i, metadata !1189, metadata !DIExpression()) #20, !dbg !1191
  br i1 %tobool.not.i.i, label %if.end.i287.i, label %nextcid.exit.i, !dbg !1195

if.end.i287.i:                                    ; preds = %for.body.i
  br i1 %cmp.i286.i, label %if.then1.i.i, label %if.else.i.i, !dbg !1196

if.then1.i.i:                                     ; preds = %if.end.i287.i
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1197, !tbaa !372
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %30) #22, !dbg !1200
  br label %nextcid.exit.i, !dbg !1201

if.else.i.i:                                      ; preds = %if.end.i287.i
  %32 = load i32, i32* %c_next.i288.i, align 8, !dbg !1202, !tbaa !1129
  %33 = load i32, i32* %c_last.i289.i, align 4, !dbg !1204, !tbaa !1132
  %cmp2.i.i = icmp sgt i32 %32, %33, !dbg !1205
  br i1 %cmp2.i.i, label %nextcid.exit.i, label %if.else4.i.i, !dbg !1206

if.else4.i.i:                                     ; preds = %if.else.i.i
  br i1 %cmp34.i, label %if.then6.i.i, label %if.else34.i.i, !dbg !1207

if.then6.i.i:                                     ; preds = %if.else4.i.i
  %s_strandname.i290.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0702.i, i64 0, i32 0, !dbg !1208
  %34 = load i8*, i8** %s_strandname.i290.i, align 8, !dbg !1208, !tbaa !739
  %call7.i.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %34) #19, !dbg !1212
  %cmp8.i.i = icmp eq i64 %call7.i.i, 1, !dbg !1213
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end17.i.i, !dbg !1214

if.then9.i.i:                                     ; preds = %if.then6.i.i
  %35 = load i8, i8* %34, align 1, !dbg !1215, !tbaa !366
  call void @llvm.dbg.value(metadata i8 %35, metadata !1190, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #20, !dbg !1191
  %36 = add i8 %35, -65, !dbg !1217
  %37 = icmp ult i8 %36, 26, !dbg !1217
  br i1 %37, label %if.then15.i291.i, label %if.end17.i.i, !dbg !1217

if.then15.i291.i:                                 ; preds = %if.then9.i.i
  %conv58.i.i = zext i8 %35 to i32, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %conv58.i.i, metadata !1190, metadata !DIExpression()) #20, !dbg !1191
  br label %nextcid.exit.i, !dbg !1219

if.end17.i.i:                                     ; preds = %if.then9.i.i, %if.then6.i.i
  call void @llvm.dbg.value(metadata i32 %32, metadata !1190, metadata !DIExpression()) #20, !dbg !1191
  %38 = load i8*, i8** %c_cids.i292.i, align 8, !dbg !1220, !tbaa !1122
  %idxprom.i.i = sext i32 %32 to i64, !dbg !1221
  %arrayidx.i.i = getelementptr inbounds i8, i8* %38, i64 %idxprom.i.i, !dbg !1221
  store i8 1, i8* %arrayidx.i.i, align 1, !dbg !1222, !tbaa !366
  %39 = load i32, i32* %c_next.i288.i, align 8, !dbg !1223, !tbaa !1129
  %40 = load i32, i32* %c_last.i289.i, align 4, !tbaa !1132
  %41 = sext i32 %39 to i64, !dbg !1223
  %smax.i.i = call i32 @llvm.smax.i32(i32 %39, i32 %40) #20, !dbg !1223
  %wide.trip.count.i.i = sext i32 %smax.i.i to i64, !dbg !1225
  br label %for.cond.i.i, !dbg !1223

for.cond.i.i:                                     ; preds = %for.body.i.i, %if.end17.i.i
  %indvars.iv.i293.i = phi i64 [ %indvars.iv.next.i294.i, %for.body.i.i ], [ %41, %if.end17.i.i ]
  %indvars.iv.next.i294.i = add nsw i64 %indvars.iv.i293.i, 1, !dbg !1227
  %42 = trunc i64 %indvars.iv.next.i294.i to i32, !dbg !1227
  store i32 %42, i32* %c_next.i288.i, align 8, !dbg !1227, !tbaa !1129
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i293.i, %wide.trip.count.i.i, !dbg !1225
  br i1 %exitcond.not.i.i, label %nextcid.exit.i, label %for.body.i.i, !dbg !1228

for.body.i.i:                                     ; preds = %for.cond.i.i
  %43 = load i8*, i8** %c_cids.i292.i, align 8, !dbg !1229, !tbaa !1122
  %arrayidx28.i.i = getelementptr inbounds i8, i8* %43, i64 %indvars.iv.next.i294.i, !dbg !1232
  %44 = load i8, i8* %arrayidx28.i.i, align 1, !dbg !1232, !tbaa !366
  %tobool29.not.i.i = icmp eq i8 %44, 0, !dbg !1232
  br i1 %tobool29.not.i.i, label %nextcid.exit.i, label %for.cond.i.i, !dbg !1233, !llvm.loop !1234

if.else34.i.i:                                    ; preds = %if.else4.i.i
  call void @llvm.dbg.value(metadata i32 %32, metadata !1190, metadata !DIExpression()) #20, !dbg !1191
  %inc37.i.i = add nsw i32 %32, 1, !dbg !1236
  store i32 %inc37.i.i, i32* %c_next.i288.i, align 8, !dbg !1236, !tbaa !1129
  br label %nextcid.exit.i, !dbg !1238

nextcid.exit.i:                                   ; preds = %for.body.i.i, %for.cond.i.i, %if.else34.i.i, %if.then15.i291.i, %if.else.i.i, %if.then1.i.i, %for.body.i
  %retval.0.i295.i = phi i32 [ 32, %if.then1.i.i ], [ %conv58.i.i, %if.then15.i291.i ], [ %32, %if.else34.i.i ], [ 32, %for.body.i ], [ 32, %if.else.i.i ], [ %32, %for.cond.i.i ], [ %32, %for.body.i.i ], !dbg !1191
  call void @llvm.dbg.value(metadata i32 %retval.0.i295.i, metadata !1017, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1012, metadata !DIExpression()) #20, !dbg !1037
  %s_nresidues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0702.i, i64 0, i32 5
  %s_residues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0702.i, i64 0, i32 7
  %sext.i = shl i32 %retval.0.i295.i, 24
  %conv112.i = ashr exact i32 %sext.i, 24
  call void @llvm.dbg.value(metadata i32 %tr.0701.i, metadata !1013, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %ta.0700.i, metadata !1016, metadata !DIExpression()) #20, !dbg !1037
  %45 = load i32, i32* %s_nresidues.i, align 8, !dbg !1239, !tbaa !1242
  %cmp44692.i = icmp sgt i32 %45, 0, !dbg !1243
  br i1 %cmp44692.i, label %for.body46.i, label %for.end173.i, !dbg !1244

for.body46.i:                                     ; preds = %nextcid.exit.i, %for.inc170.i
  %indvars.iv705.i = phi i64 [ %indvars.iv.next706.i, %for.inc170.i ], [ 0, %nextcid.exit.i ]
  %tr.1694.i = phi i32 [ %inc172.i, %for.inc170.i ], [ %tr.0701.i, %nextcid.exit.i ]
  %ta.1693.i = phi i32 [ %ta.2.lcssa.i, %for.inc170.i ], [ %ta.0700.i, %nextcid.exit.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv705.i, metadata !1012, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %tr.1694.i, metadata !1013, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %ta.1693.i, metadata !1016, metadata !DIExpression()) #20, !dbg !1037
  %46 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i, align 8, !dbg !1245, !tbaa !753
  %arrayidx47.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %46, i64 %indvars.iv705.i, !dbg !1247
  %47 = load %struct.residue_t*, %struct.residue_t** %arrayidx47.i, align 8, !dbg !1247, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %47, metadata !1019, metadata !DIExpression()) #20, !dbg !1037
  %r_resid.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i64 0, i32 5, !dbg !1248
  %48 = load i8*, i8** %r_resid.i, align 8, !dbg !1248, !tbaa !710
  %tobool49.not.i = icmp eq i8* %48, null, !dbg !1249
  %spec.select283.i = select i1 %tobool49.not.i, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), i8* %48, !dbg !1249
  %call51.i = call i8* @strcpy(i8* noundef nonnull %15, i8* noundef nonnull dereferenceable(1) %spec.select283.i) #20, !dbg !1250
  %.idx.i = getelementptr %struct.residue_t, %struct.residue_t* %47, i64 0, i32 4, !dbg !1251
  %.idx.val.i = load i8*, i8** %.idx.i, align 8, !dbg !1251, !tbaa !707
  br i1 %cmp18.i, label %if.then53.i, label %if.else55.i, !dbg !1253

if.then53.i:                                      ; preds = %for.body46.i
  call void @llvm.dbg.value(metadata i8* %7, metadata !1254, metadata !DIExpression()) #20, !dbg !1260
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1259, metadata !DIExpression()) #20, !dbg !1260
  %call.i296.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %13, i8* noundef nonnull dereferenceable(1) %.idx.val.i) #20, !dbg !1262
  %lhsv.i = load i32, i32* %28, align 4, !dbg !1263
  switch i32 %lhsv.i, label %if.end22.i.i [
    i32 4281671, label %if.end.i298.thread.i
    i32 4539457, label %if.then5.i.i
    i32 5851220, label %if.then10.i.i
    i32 5527875, label %if.then15.i300.i
    i32 4280917, label %if.then20.i.i
  ], !dbg !1265

if.end.i298.thread.i:                             ; preds = %if.then53.i
  store i32 4661280, i32* %28, align 4, !dbg !1266
  br label %if.end22.i.i, !dbg !1267

if.then5.i.i:                                     ; preds = %if.then53.i
  store i32 4268064, i32* %28, align 4, !dbg !1268
  br label %if.end22.i.i, !dbg !1268

if.then10.i.i:                                    ; preds = %if.then53.i
  store i32 5513248, i32* %28, align 4, !dbg !1270
  br label %if.end22.i.i, !dbg !1270

if.then15.i300.i:                                 ; preds = %if.then53.i
  store i32 4399136, i32* %28, align 4, !dbg !1272
  br label %if.end22.i.i, !dbg !1272

if.then20.i.i:                                    ; preds = %if.then53.i
  store i32 5578784, i32* %28, align 4, !dbg !1274
  br label %if.end22.i.i, !dbg !1274

if.end22.i.i:                                     ; preds = %if.then20.i.i, %if.then15.i300.i, %if.then10.i.i, %if.then5.i.i, %if.end.i298.thread.i, %if.then53.i
  %lhsv566754.i = phi i32 [ 5578784, %if.then20.i.i ], [ 4399136, %if.then15.i300.i ], [ 5513248, %if.then10.i.i ], [ 4661280, %if.end.i298.thread.i ], [ 4268064, %if.then5.i.i ], [ %lhsv.i, %if.then53.i ]
  %bcmp558.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #20, !dbg !1276
  %tobool24.not.i.i = icmp eq i32 %bcmp558.i, 0, !dbg !1276
  br i1 %tobool24.not.i.i, label %if.then25.i303.i, label %if.end27.i.i, !dbg !1278

if.then25.i303.i:                                 ; preds = %if.end22.i.i
  store i32 4661280, i32* %28, align 4, !dbg !1279
  br label %if.end27.i.i, !dbg !1279

if.end27.i.i:                                     ; preds = %if.then25.i303.i, %if.end22.i.i
  %lhsv566753.i = phi i32 [ 4661280, %if.then25.i303.i ], [ %lhsv566754.i, %if.end22.i.i ]
  %bcmp559.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #20, !dbg !1280
  %tobool29.not.i304.i = icmp eq i32 %bcmp559.i, 0, !dbg !1280
  br i1 %tobool29.not.i304.i, label %if.then30.i.i, label %if.end32.i.i, !dbg !1282

if.then30.i.i:                                    ; preds = %if.end27.i.i
  store i32 4268064, i32* %28, align 4, !dbg !1283
  br label %if.end32.i.i, !dbg !1283

if.end32.i.i:                                     ; preds = %if.then30.i.i, %if.end27.i.i
  %lhsv566752.i = phi i32 [ 4268064, %if.then30.i.i ], [ %lhsv566753.i, %if.end27.i.i ]
  %bcmp560.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #20, !dbg !1284
  %tobool34.not.i.i = icmp eq i32 %bcmp560.i, 0, !dbg !1284
  br i1 %tobool34.not.i.i, label %if.then35.i.i, label %if.end37.i.i, !dbg !1286

if.then35.i.i:                                    ; preds = %if.end32.i.i
  store i32 5513248, i32* %28, align 4, !dbg !1287
  br label %if.end37.i.i, !dbg !1287

if.end37.i.i:                                     ; preds = %if.then35.i.i, %if.end32.i.i
  %lhsv566751.i = phi i32 [ 5513248, %if.then35.i.i ], [ %lhsv566752.i, %if.end32.i.i ]
  %bcmp561.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #20, !dbg !1288
  %tobool39.not.i.i = icmp eq i32 %bcmp561.i, 0, !dbg !1288
  br i1 %tobool39.not.i.i, label %if.then40.i.i, label %if.end42.i.i, !dbg !1290

if.then40.i.i:                                    ; preds = %if.end37.i.i
  store i32 4399136, i32* %28, align 4, !dbg !1291
  br label %if.end42.i.i, !dbg !1291

if.end42.i.i:                                     ; preds = %if.then40.i.i, %if.end37.i.i
  %lhsv566750.i = phi i32 [ 4399136, %if.then40.i.i ], [ %lhsv566751.i, %if.end37.i.i ]
  %bcmp562.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #20, !dbg !1292
  %tobool44.not.i.i = icmp eq i32 %bcmp562.i, 0, !dbg !1292
  br i1 %tobool44.not.i.i, label %if.then45.i.i, label %if.end47.i.i, !dbg !1294

if.then45.i.i:                                    ; preds = %if.end42.i.i
  store i32 4661280, i32* %28, align 4, !dbg !1295
  br label %if.end47.i.i, !dbg !1295

if.end47.i.i:                                     ; preds = %if.then45.i.i, %if.end42.i.i
  %lhsv566749.i = phi i32 [ 4661280, %if.then45.i.i ], [ %lhsv566750.i, %if.end42.i.i ]
  %bcmp563.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #20, !dbg !1296
  %tobool49.not.i305.i = icmp eq i32 %bcmp563.i, 0, !dbg !1296
  br i1 %tobool49.not.i305.i, label %if.then50.i.i, label %if.end52.i.i, !dbg !1298

if.then50.i.i:                                    ; preds = %if.end47.i.i
  store i32 4268064, i32* %28, align 4, !dbg !1299
  br label %if.end52.i.i, !dbg !1299

if.end52.i.i:                                     ; preds = %if.then50.i.i, %if.end47.i.i
  %lhsv566748.i = phi i32 [ 4268064, %if.then50.i.i ], [ %lhsv566749.i, %if.end47.i.i ]
  %bcmp564.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #20, !dbg !1300
  %tobool54.not.i.i = icmp eq i32 %bcmp564.i, 0, !dbg !1300
  br i1 %tobool54.not.i.i, label %if.then55.i.i, label %if.end57.i.i, !dbg !1302

if.then55.i.i:                                    ; preds = %if.end52.i.i
  store i32 5578784, i32* %28, align 4, !dbg !1303
  br label %if.end57.i.i, !dbg !1303

if.end57.i.i:                                     ; preds = %if.then55.i.i, %if.end52.i.i
  %lhsv566747.i = phi i32 [ 5578784, %if.then55.i.i ], [ %lhsv566748.i, %if.end52.i.i ]
  %bcmp565.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #20, !dbg !1304
  %tobool59.not.i.i = icmp eq i32 %bcmp565.i, 0, !dbg !1304
  br i1 %tobool59.not.i.i, label %if.end62.i.thread.i, label %if.end62.i.i, !dbg !1306

if.end62.i.thread.i:                              ; preds = %if.end57.i.i
  store i32 4399136, i32* %28, align 4, !dbg !1307
  br label %if.end63.i, !dbg !1308

if.end62.i.i:                                     ; preds = %if.end57.i.i
  switch i32 %lhsv566747.i, label %if.end63.i [
    i32 3360580, label %if.then65.i.i
    i32 3359044, label %if.then70.i.i
    i32 3363908, label %if.then75.i.i
    i32 3359556, label %if.then80.i.i
    i32 3360594, label %if.then85.i.i
    i32 3359058, label %if.then90.i.i
    i32 3364178, label %if.then95.i.i
    i32 3359570, label %if.then100.i.i
    i32 3491652, label %if.then105.i.i
    i32 3490116, label %if.then110.i.i
    i32 3494980, label %if.then115.i.i
    i32 3490628, label %if.then120.i.i
    i32 3491666, label %if.then125.i.i
    i32 3490130, label %if.then130.i.i
    i32 3495250, label %if.then135.i.i
    i32 3490642, label %if.end142.i.thread.i
    i32 4475208, label %if.then145.i.i
    i32 5261640, label %if.then155.i.i
    i32 5790019, label %if.then160.i.i
    i32 4739905, label %if.then165.i.i
    i32 4738119, label %if.then170.i.i
  ], !dbg !1308

if.then65.i.i:                                    ; preds = %if.end62.i.i
  store i32 4661280, i32* %28, align 4, !dbg !1309
  br label %if.end63.i, !dbg !1309

if.then70.i.i:                                    ; preds = %if.end62.i.i
  store i32 4268064, i32* %28, align 4, !dbg !1311
  br label %if.end63.i, !dbg !1311

if.then75.i.i:                                    ; preds = %if.end62.i.i
  store i32 5513248, i32* %28, align 4, !dbg !1313
  br label %if.end63.i, !dbg !1313

if.then80.i.i:                                    ; preds = %if.end62.i.i
  store i32 4399136, i32* %28, align 4, !dbg !1315
  br label %if.end63.i, !dbg !1315

if.then85.i.i:                                    ; preds = %if.end62.i.i
  store i32 4661280, i32* %28, align 4, !dbg !1317
  br label %if.end63.i, !dbg !1317

if.then90.i.i:                                    ; preds = %if.end62.i.i
  store i32 4268064, i32* %28, align 4, !dbg !1319
  br label %if.end63.i, !dbg !1319

if.then95.i.i:                                    ; preds = %if.end62.i.i
  store i32 5578784, i32* %28, align 4, !dbg !1321
  br label %if.end63.i, !dbg !1321

if.then100.i.i:                                   ; preds = %if.end62.i.i
  store i32 4399136, i32* %28, align 4, !dbg !1323
  br label %if.end63.i, !dbg !1323

if.then105.i.i:                                   ; preds = %if.end62.i.i
  store i32 4661280, i32* %28, align 4, !dbg !1325
  br label %if.end63.i, !dbg !1325

if.then110.i.i:                                   ; preds = %if.end62.i.i
  store i32 4268064, i32* %28, align 4, !dbg !1327
  br label %if.end63.i, !dbg !1327

if.then115.i.i:                                   ; preds = %if.end62.i.i
  store i32 5513248, i32* %28, align 4, !dbg !1329
  br label %if.end63.i, !dbg !1329

if.then120.i.i:                                   ; preds = %if.end62.i.i
  store i32 4399136, i32* %28, align 4, !dbg !1331
  br label %if.end63.i, !dbg !1331

if.then125.i.i:                                   ; preds = %if.end62.i.i
  store i32 4661280, i32* %28, align 4, !dbg !1333
  br label %if.end63.i, !dbg !1333

if.then130.i.i:                                   ; preds = %if.end62.i.i
  store i32 4268064, i32* %28, align 4, !dbg !1335
  br label %if.end63.i, !dbg !1335

if.then135.i.i:                                   ; preds = %if.end62.i.i
  store i32 5578784, i32* %28, align 4, !dbg !1337
  br label %if.end63.i, !dbg !1337

if.end142.i.thread.i:                             ; preds = %if.end62.i.i
  store i32 4399136, i32* %28, align 4, !dbg !1339
  br label %if.end63.i, !dbg !1341

if.then145.i.i:                                   ; preds = %if.end62.i.i
  store i32 5458248, i32* %28, align 4, !dbg !1342
  br label %if.end63.i, !dbg !1342

if.then155.i.i:                                   ; preds = %if.end62.i.i
  store i32 5458248, i32* %28, align 4, !dbg !1344
  br label %if.end63.i, !dbg !1344

if.then160.i.i:                                   ; preds = %if.end62.i.i
  store i32 5462339, i32* %28, align 4, !dbg !1346
  br label %if.end63.i, !dbg !1346

if.then165.i.i:                                   ; preds = %if.end62.i.i
  store i32 5264193, i32* %28, align 4, !dbg !1348
  br label %if.end63.i, !dbg !1348

if.then170.i.i:                                   ; preds = %if.end62.i.i
  store i32 5590087, i32* %28, align 4, !dbg !1350
  br label %if.end63.i, !dbg !1350

if.else55.i:                                      ; preds = %for.body46.i
  br i1 %cmp22.i, label %if.then57.i, label %if.else59.i, !dbg !1352

if.then57.i:                                      ; preds = %if.else55.i
  call void @llvm.dbg.value(metadata i8* %7, metadata !1353, metadata !DIExpression()) #20, !dbg !1357
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1356, metadata !DIExpression()) #20, !dbg !1357
  %call.i306.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %13, i8* noundef nonnull dereferenceable(1) %.idx.val.i) #20, !dbg !1360
  %lhsv634.i = load i32, i32* %28, align 4, !dbg !1361
  switch i32 %lhsv634.i, label %if.end22.i328.i [
    i32 4281671, label %if.end.i312.thread.i
    i32 4539457, label %if.then5.i313.i
    i32 5851220, label %if.then10.i317.i
    i32 5527875, label %if.then15.i321.i
    i32 4280917, label %if.then20.i325.i
  ], !dbg !1363

if.end.i312.thread.i:                             ; preds = %if.then57.i
  store i32 4661280, i32* %28, align 4, !dbg !1364
  br label %if.end22.i328.i, !dbg !1365

if.then5.i313.i:                                  ; preds = %if.then57.i
  store i32 4268064, i32* %28, align 4, !dbg !1366
  br label %if.end22.i328.i, !dbg !1366

if.then10.i317.i:                                 ; preds = %if.then57.i
  store i32 5513248, i32* %28, align 4, !dbg !1368
  br label %if.end22.i328.i, !dbg !1368

if.then15.i321.i:                                 ; preds = %if.then57.i
  store i32 4399136, i32* %28, align 4, !dbg !1370
  br label %if.end22.i328.i, !dbg !1370

if.then20.i325.i:                                 ; preds = %if.then57.i
  store i32 5578784, i32* %28, align 4, !dbg !1372
  br label %if.end22.i328.i, !dbg !1372

if.end22.i328.i:                                  ; preds = %if.then20.i325.i, %if.then15.i321.i, %if.then10.i317.i, %if.then5.i313.i, %if.end.i312.thread.i, %if.then57.i
  %lhsv644720.i = phi i32 [ 5578784, %if.then20.i325.i ], [ 4399136, %if.then15.i321.i ], [ 5513248, %if.then10.i317.i ], [ 4661280, %if.end.i312.thread.i ], [ 4268064, %if.then5.i313.i ], [ %lhsv634.i, %if.then57.i ]
  %bcmp515.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #20, !dbg !1374
  %tobool24.not.i327.i = icmp eq i32 %bcmp515.i, 0, !dbg !1374
  br i1 %tobool24.not.i327.i, label %if.then25.i329.i, label %if.end27.i332.i, !dbg !1376

if.then25.i329.i:                                 ; preds = %if.end22.i328.i
  store i32 4670496, i32* %28, align 4, !dbg !1377
  br label %if.end27.i332.i, !dbg !1377

if.end27.i332.i:                                  ; preds = %if.then25.i329.i, %if.end22.i328.i
  %lhsv644719.i = phi i32 [ 4670496, %if.then25.i329.i ], [ %lhsv644720.i, %if.end22.i328.i ]
  %bcmp516.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #20, !dbg !1378
  %tobool29.not.i331.i = icmp eq i32 %bcmp516.i, 0, !dbg !1378
  br i1 %tobool29.not.i331.i, label %if.then30.i333.i, label %if.end32.i336.i, !dbg !1380

if.then30.i333.i:                                 ; preds = %if.end27.i332.i
  store i32 4277280, i32* %28, align 4, !dbg !1381
  br label %if.end32.i336.i, !dbg !1381

if.end32.i336.i:                                  ; preds = %if.then30.i333.i, %if.end27.i332.i
  %lhsv644718.i = phi i32 [ 4277280, %if.then30.i333.i ], [ %lhsv644719.i, %if.end27.i332.i ]
  %bcmp517.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #20, !dbg !1382
  %tobool34.not.i335.i = icmp eq i32 %bcmp517.i, 0, !dbg !1382
  br i1 %tobool34.not.i335.i, label %if.then35.i337.i, label %if.end37.i340.i, !dbg !1384

if.then35.i337.i:                                 ; preds = %if.end32.i336.i
  store i32 5522464, i32* %28, align 4, !dbg !1385
  br label %if.end37.i340.i, !dbg !1385

if.end37.i340.i:                                  ; preds = %if.then35.i337.i, %if.end32.i336.i
  %lhsv644717.i = phi i32 [ 5522464, %if.then35.i337.i ], [ %lhsv644718.i, %if.end32.i336.i ]
  %bcmp518.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #20, !dbg !1386
  %tobool39.not.i339.i = icmp eq i32 %bcmp518.i, 0, !dbg !1386
  br i1 %tobool39.not.i339.i, label %if.then40.i341.i, label %if.end42.i344.i, !dbg !1388

if.then40.i341.i:                                 ; preds = %if.end37.i340.i
  store i32 4408352, i32* %28, align 4, !dbg !1389
  br label %if.end42.i344.i, !dbg !1389

if.end42.i344.i:                                  ; preds = %if.then40.i341.i, %if.end37.i340.i
  %lhsv644716.i = phi i32 [ 4408352, %if.then40.i341.i ], [ %lhsv644717.i, %if.end37.i340.i ]
  %bcmp519.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #20, !dbg !1390
  %tobool44.not.i343.i = icmp eq i32 %bcmp519.i, 0, !dbg !1390
  br i1 %tobool44.not.i343.i, label %if.then45.i345.i, label %if.end47.i348.i, !dbg !1392

if.then45.i345.i:                                 ; preds = %if.end42.i344.i
  store i32 4674080, i32* %28, align 4, !dbg !1393
  br label %if.end47.i348.i, !dbg !1393

if.end47.i348.i:                                  ; preds = %if.then45.i345.i, %if.end42.i344.i
  %lhsv644715.i = phi i32 [ 4674080, %if.then45.i345.i ], [ %lhsv644716.i, %if.end42.i344.i ]
  %bcmp520.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #20, !dbg !1394
  %tobool49.not.i347.i = icmp eq i32 %bcmp520.i, 0, !dbg !1394
  br i1 %tobool49.not.i347.i, label %if.then50.i349.i, label %if.end52.i352.i, !dbg !1396

if.then50.i349.i:                                 ; preds = %if.end47.i348.i
  store i32 4280864, i32* %28, align 4, !dbg !1397
  br label %if.end52.i352.i, !dbg !1397

if.end52.i352.i:                                  ; preds = %if.then50.i349.i, %if.end47.i348.i
  %lhsv644714.i = phi i32 [ 4280864, %if.then50.i349.i ], [ %lhsv644715.i, %if.end47.i348.i ]
  %bcmp521.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #20, !dbg !1398
  %tobool54.not.i351.i = icmp eq i32 %bcmp521.i, 0, !dbg !1398
  br i1 %tobool54.not.i351.i, label %if.then55.i353.i, label %if.end57.i356.i, !dbg !1400

if.then55.i353.i:                                 ; preds = %if.end52.i352.i
  store i32 5591584, i32* %28, align 4, !dbg !1401
  br label %if.end57.i356.i, !dbg !1401

if.end57.i356.i:                                  ; preds = %if.then55.i353.i, %if.end52.i352.i
  %lhsv644713.i = phi i32 [ 5591584, %if.then55.i353.i ], [ %lhsv644714.i, %if.end52.i352.i ]
  %bcmp522.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #20, !dbg !1402
  %tobool59.not.i355.i = icmp eq i32 %bcmp522.i, 0, !dbg !1402
  br i1 %tobool59.not.i355.i, label %if.end62.i360.thread.i, label %if.end62.i360.i, !dbg !1404

if.end62.i360.thread.i:                           ; preds = %if.end57.i356.i
  store i32 4411936, i32* %28, align 4, !dbg !1405
  br label %if.end63.i, !dbg !1406

if.end62.i360.i:                                  ; preds = %if.end57.i356.i
  switch i32 %lhsv644713.i, label %if.end63.i [
    i32 3360580, label %if.then65.i361.i
    i32 3359044, label %if.then70.i365.i
    i32 3363908, label %if.then75.i369.i
    i32 3359556, label %if.then80.i373.i
    i32 3360594, label %if.then85.i377.i
    i32 3359058, label %if.then90.i381.i
    i32 3364178, label %if.then95.i385.i
    i32 3359570, label %if.then100.i389.i
    i32 3491652, label %if.then105.i393.i
    i32 3490116, label %if.then110.i397.i
    i32 3494980, label %if.then115.i401.i
    i32 3490628, label %if.then120.i405.i
    i32 3491666, label %if.then125.i409.i
    i32 3490130, label %if.then130.i413.i
    i32 3495250, label %if.then135.i417.i
    i32 3490642, label %if.end142.i424.thread.i
    i32 4475208, label %if.then145.i425.i
    i32 5261640, label %if.then155.i433.i
    i32 5790019, label %if.then160.i437.i
    i32 4739905, label %if.then165.i441.i
    i32 4738119, label %if.then170.i445.i
  ], !dbg !1406

if.then65.i361.i:                                 ; preds = %if.end62.i360.i
  store i32 4670496, i32* %28, align 4, !dbg !1407
  br label %if.end63.i, !dbg !1407

if.then70.i365.i:                                 ; preds = %if.end62.i360.i
  store i32 4277280, i32* %28, align 4, !dbg !1409
  br label %if.end63.i, !dbg !1409

if.then75.i369.i:                                 ; preds = %if.end62.i360.i
  store i32 5522464, i32* %28, align 4, !dbg !1411
  br label %if.end63.i, !dbg !1411

if.then80.i373.i:                                 ; preds = %if.end62.i360.i
  store i32 4408352, i32* %28, align 4, !dbg !1413
  br label %if.end63.i, !dbg !1413

if.then85.i377.i:                                 ; preds = %if.end62.i360.i
  store i32 4674080, i32* %28, align 4, !dbg !1415
  br label %if.end63.i, !dbg !1415

if.then90.i381.i:                                 ; preds = %if.end62.i360.i
  store i32 4280864, i32* %28, align 4, !dbg !1417
  br label %if.end63.i, !dbg !1417

if.then95.i385.i:                                 ; preds = %if.end62.i360.i
  store i32 5591584, i32* %28, align 4, !dbg !1419
  br label %if.end63.i, !dbg !1419

if.then100.i389.i:                                ; preds = %if.end62.i360.i
  store i32 4411936, i32* %28, align 4, !dbg !1421
  br label %if.end63.i, !dbg !1421

if.then105.i393.i:                                ; preds = %if.end62.i360.i
  store i32 4670496, i32* %28, align 4, !dbg !1423
  br label %if.end63.i, !dbg !1423

if.then110.i397.i:                                ; preds = %if.end62.i360.i
  store i32 4277280, i32* %28, align 4, !dbg !1425
  br label %if.end63.i, !dbg !1425

if.then115.i401.i:                                ; preds = %if.end62.i360.i
  store i32 5522464, i32* %28, align 4, !dbg !1427
  br label %if.end63.i, !dbg !1427

if.then120.i405.i:                                ; preds = %if.end62.i360.i
  store i32 4408352, i32* %28, align 4, !dbg !1429
  br label %if.end63.i, !dbg !1429

if.then125.i409.i:                                ; preds = %if.end62.i360.i
  store i32 4674080, i32* %28, align 4, !dbg !1431
  br label %if.end63.i, !dbg !1431

if.then130.i413.i:                                ; preds = %if.end62.i360.i
  store i32 4280864, i32* %28, align 4, !dbg !1433
  br label %if.end63.i, !dbg !1433

if.then135.i417.i:                                ; preds = %if.end62.i360.i
  store i32 5591584, i32* %28, align 4, !dbg !1435
  br label %if.end63.i, !dbg !1435

if.end142.i424.thread.i:                          ; preds = %if.end62.i360.i
  store i32 4411936, i32* %28, align 4, !dbg !1437
  br label %if.end63.i, !dbg !1439

if.then145.i425.i:                                ; preds = %if.end62.i360.i
  store i32 5458248, i32* %28, align 4, !dbg !1440
  br label %if.end63.i, !dbg !1440

if.then155.i433.i:                                ; preds = %if.end62.i360.i
  store i32 5458248, i32* %28, align 4, !dbg !1442
  br label %if.end63.i, !dbg !1442

if.then160.i437.i:                                ; preds = %if.end62.i360.i
  store i32 5462339, i32* %28, align 4, !dbg !1444
  br label %if.end63.i, !dbg !1444

if.then165.i441.i:                                ; preds = %if.end62.i360.i
  store i32 5264193, i32* %28, align 4, !dbg !1446
  br label %if.end63.i, !dbg !1446

if.then170.i445.i:                                ; preds = %if.end62.i360.i
  store i32 5590087, i32* %28, align 4, !dbg !1448
  br label %if.end63.i, !dbg !1448

if.else59.i:                                      ; preds = %if.else55.i
  %call61.i = call i8* @strcpy(i8* noundef nonnull %13, i8* noundef nonnull dereferenceable(1) %.idx.val.i) #20, !dbg !1450
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else59.i, %if.then170.i445.i, %if.then165.i441.i, %if.then160.i437.i, %if.then155.i433.i, %if.then145.i425.i, %if.end142.i424.thread.i, %if.then135.i417.i, %if.then130.i413.i, %if.then125.i409.i, %if.then120.i405.i, %if.then115.i401.i, %if.then110.i397.i, %if.then105.i393.i, %if.then100.i389.i, %if.then95.i385.i, %if.then90.i381.i, %if.then85.i377.i, %if.then80.i373.i, %if.then75.i369.i, %if.then70.i365.i, %if.then65.i361.i, %if.end62.i360.i, %if.end62.i360.thread.i, %if.then170.i.i, %if.then165.i.i, %if.then160.i.i, %if.then155.i.i, %if.then145.i.i, %if.end142.i.thread.i, %if.then135.i.i, %if.then130.i.i, %if.then125.i.i, %if.then120.i.i, %if.then115.i.i, %if.then110.i.i, %if.then105.i.i, %if.then100.i.i, %if.then95.i.i, %if.then90.i.i, %if.then85.i.i, %if.then80.i.i, %if.then75.i.i, %if.then70.i.i, %if.then65.i.i, %if.end62.i.i, %if.end62.i.thread.i
  call void @llvm.dbg.value(metadata i32 0, metadata !1015, metadata !DIExpression()) #20, !dbg !1037
  %r_natoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i64 0, i32 15
  %r_atoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i64 0, i32 17
  %49 = trunc i64 %indvars.iv705.i to i32
  %cond96.v.i = select i1 %cmp26.i, i32 %tr.1694.i, i32 %49
  %cond96.i = add nsw i32 %cond96.v.i, 1
  call void @llvm.dbg.value(metadata i32 %ta.1693.i, metadata !1016, metadata !DIExpression()) #20, !dbg !1037
  %50 = load i32, i32* %r_natoms.i, align 8, !dbg !1451, !tbaa !715
  %cmp65689.i = icmp sgt i32 %50, 0, !dbg !1454
  br i1 %cmp65689.i, label %for.body67.i, label %for.inc170.i, !dbg !1455

for.body67.i:                                     ; preds = %if.end63.i, %if.end167.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end167.i ], [ 0, %if.end63.i ]
  %ta.2690.i = phi i32 [ %inc.i, %if.end167.i ], [ %ta.1693.i, %if.end63.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1015, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %ta.2690.i, metadata !1016, metadata !DIExpression()) #20, !dbg !1037
  %inc.i = add nsw i32 %ta.2690.i, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1016, metadata !DIExpression()) #20, !dbg !1037
  %51 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i, align 8, !dbg !1458, !tbaa !1459
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %51, i64 %indvars.iv.i), metadata !1020, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #20, !dbg !1037
  %a_atomname.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 0, !dbg !1460
  %52 = load i8*, i8** %a_atomname.i, align 8, !dbg !1460, !tbaa !489
  br i1 %cmp18.i, label %if.then71.i, label %if.else74.i, !dbg !1462

if.then71.i:                                      ; preds = %for.body67.i
  call void @llvm.dbg.value(metadata i8* %8, metadata !1463, metadata !DIExpression()) #20, !dbg !1470
  call void @llvm.dbg.value(metadata i8* %52, metadata !1468, metadata !DIExpression()) #20, !dbg !1470
  call void @llvm.dbg.value(metadata i8* %7, metadata !1469, metadata !DIExpression()) #20, !dbg !1470
  store i8 32, i8* %14, align 1, !dbg !1472, !tbaa !366
  %call.i446.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %52) #19, !dbg !1473
  %cmp.i447.i = icmp ugt i64 %call.i446.i, 3, !dbg !1475
  br i1 %cmp.i447.i, label %land.lhs.true.i.i, label %if.end.i450.i, !dbg !1476

land.lhs.true.i.i:                                ; preds = %if.then71.i
  %arrayidx1.i.i = getelementptr inbounds i8, i8* %52, i64 3, !dbg !1477
  %53 = load i8, i8* %arrayidx1.i.i, align 1, !dbg !1477, !tbaa !366
  %cmp2.not.i.i = icmp eq i8 %53, 32, !dbg !1478
  br i1 %cmp2.not.i.i, label %if.end.i450.i, label %if.then.i448.i, !dbg !1479

if.then.i448.i:                                   ; preds = %land.lhs.true.i.i
  store i8 %53, i8* %14, align 1, !dbg !1480, !tbaa !366
  br label %if.end.i450.i, !dbg !1481

if.end.i450.i:                                    ; preds = %if.then.i448.i, %land.lhs.true.i.i, %if.then71.i
  %54 = load i8, i8* %52, align 1, !dbg !1482, !tbaa !366
  store i8 %54, i8* %add.ptr.i.i, align 1, !dbg !1483, !tbaa !366
  %arrayidx8.i.i = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1484
  %55 = load i8, i8* %arrayidx8.i.i, align 1, !dbg !1484, !tbaa !366
  store i8 %55, i8* %arrayidx14.i.i, align 1, !dbg !1485, !tbaa !366
  %arrayidx10.i.i = getelementptr inbounds i8, i8* %52, i64 2, !dbg !1486
  %56 = load i8, i8* %arrayidx10.i.i, align 1, !dbg !1486, !tbaa !366
  %cmp14.i.i = icmp eq i8 %56, 39, !dbg !1487
  %spec.select.i.i = select i1 %cmp14.i.i, i8 42, i8 %56, !dbg !1489
  store i8 %spec.select.i.i, i8* %arrayidx21.i.i, align 1, !dbg !1470, !tbaa !366
  store i8 0, i8* %arrayidx6.i.i, align 1, !dbg !1490, !tbaa !366
  %bcmp507.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %14, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #20, !dbg !1491
  %tobool.not.i449.i = icmp eq i32 %bcmp507.i, 0, !dbg !1491
  %.off.i.i = add i8 %spec.select.i.i, -49
  %switch.i.i = icmp ult i8 %.off.i.i, 3
  %or.cond79.i.i = select i1 %tobool.not.i449.i, i1 %switch.i.i, i1 false, !dbg !1493
  br i1 %or.cond79.i.i, label %land.lhs.true35.i.i, label %if.end85.i, !dbg !1493

land.lhs.true35.i.i:                              ; preds = %if.end.i450.i
  %bcmp508.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %14, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #20, !dbg !1494
  %tobool37.not.i.i = icmp ne i32 %bcmp508.i, 0, !dbg !1494
  %lhsv632.i = load i16, i16* %29, align 4
  %.not633.i = icmp eq i16 %lhsv632.i, 18760
  %or.cond688.i = select i1 %tobool37.not.i.i, i1 %.not633.i, i1 false, !dbg !1495
  br i1 %or.cond688.i, label %if.end85.i, label %if.then50.i453.i, !dbg !1495

if.then50.i453.i:                                 ; preds = %land.lhs.true35.i.i
  store i8 %spec.select.i.i, i8* %14, align 1, !dbg !1496, !tbaa !366
  store i8 32, i8* %arrayidx21.i.i, align 1, !dbg !1498, !tbaa !366
  br label %if.end85.i, !dbg !1499

if.else74.i:                                      ; preds = %for.body67.i
  br i1 %cmp22.i, label %if.then76.i, label %if.else80.i, !dbg !1500

if.then76.i:                                      ; preds = %if.else74.i
  call void @llvm.dbg.value(metadata i8* %8, metadata !1501, metadata !DIExpression()) #20, !dbg !1506
  call void @llvm.dbg.value(metadata i8* %52, metadata !1504, metadata !DIExpression()) #20, !dbg !1506
  call void @llvm.dbg.value(metadata i8* undef, metadata !1505, metadata !DIExpression()) #20, !dbg !1506
  %call.i454.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %52) #19, !dbg !1509
  %cmp.i455.i = icmp ugt i64 %call.i454.i, 3, !dbg !1511
  br i1 %cmp.i455.i, label %land.lhs.true.i457.i, label %if.else.i460.i, !dbg !1512

land.lhs.true.i457.i:                             ; preds = %if.then76.i
  %arrayidx.i456.i = getelementptr inbounds i8, i8* %52, i64 3, !dbg !1513
  %57 = load i8, i8* %arrayidx.i456.i, align 1, !dbg !1513, !tbaa !366
  %cmp1.not.i.i = icmp eq i8 %57, 32, !dbg !1514
  br i1 %cmp1.not.i.i, label %if.else.i460.i, label %if.then.i459.i, !dbg !1515

if.then.i459.i:                                   ; preds = %land.lhs.true.i457.i
  %call3.i458.i = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(1) %52, i64 noundef 5) #20, !dbg !1516
  br label %if.end.i462.i, !dbg !1518

if.else.i460.i:                                   ; preds = %land.lhs.true.i457.i, %if.then76.i
  store i8 32, i8* %14, align 1, !dbg !1519, !tbaa !366
  %call5.i.i = call i8* @strncpy(i8* noundef nonnull %add.ptr.i.i, i8* noundef nonnull dereferenceable(1) %52, i64 noundef 3) #20, !dbg !1521
  store i8 0, i8* %arrayidx6.i.i, align 1, !dbg !1522, !tbaa !366
  br label %if.end.i462.i

if.end.i462.i:                                    ; preds = %if.else.i460.i, %if.then.i459.i
  %58 = load i8, i8* %add.ptr.i.i, align 1, !dbg !1523, !tbaa !366
  %cmp9.i.i = icmp eq i8 %58, 0, !dbg !1525
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end13.i.i, !dbg !1526

if.then11.i.i:                                    ; preds = %if.end.i462.i
  store i8 32, i8* %add.ptr.i.i, align 1, !dbg !1527, !tbaa !366
  br label %if.end13.i.i, !dbg !1528

if.end13.i.i:                                     ; preds = %if.then11.i.i, %if.end.i462.i
  %59 = phi i8 [ 32, %if.then11.i.i ], [ %58, %if.end.i462.i ]
  %60 = load i8, i8* %arrayidx14.i.i, align 1, !dbg !1529, !tbaa !366
  %cmp16.i463.i = icmp eq i8 %60, 0, !dbg !1531
  br i1 %cmp16.i463.i, label %if.then18.i.i, label %if.end20.i.i, !dbg !1532

if.then18.i.i:                                    ; preds = %if.end13.i.i
  store i8 32, i8* %arrayidx14.i.i, align 1, !dbg !1533, !tbaa !366
  br label %if.end20.i.i, !dbg !1534

if.end20.i.i:                                     ; preds = %if.then18.i.i, %if.end13.i.i
  %61 = phi i8 [ 32, %if.then18.i.i ], [ %60, %if.end13.i.i ]
  %62 = load i8, i8* %arrayidx21.i.i, align 1, !dbg !1535, !tbaa !366
  %cmp23.i.i = icmp eq i8 %62, 0, !dbg !1537
  br i1 %cmp23.i.i, label %if.then25.i464.i, label %if.end27.i467.i, !dbg !1538

if.then25.i464.i:                                 ; preds = %if.end20.i.i
  store i8 32, i8* %arrayidx21.i.i, align 1, !dbg !1539, !tbaa !366
  br label %if.end27.i467.i, !dbg !1540

if.end27.i467.i:                                  ; preds = %if.then25.i464.i, %if.end20.i.i
  %63 = phi i8 [ 32, %if.then25.i464.i ], [ %62, %if.end20.i.i ]
  %bcmp.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #20, !dbg !1541
  %tobool.not.i466.i = icmp eq i32 %bcmp.i, 0, !dbg !1541
  br i1 %tobool.not.i466.i, label %if.then29.i.i, label %if.end31.i.i, !dbg !1543

if.then29.i.i:                                    ; preds = %if.end27.i467.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1544
  br label %if.end31.i.i, !dbg !1544

if.end31.i.i:                                     ; preds = %if.then29.i.i, %if.end27.i467.i
  %64 = phi i8 [ 39, %if.then29.i.i ], [ %63, %if.end27.i467.i ]
  %65 = phi i8 [ 53, %if.then29.i.i ], [ %61, %if.end27.i467.i ]
  %66 = phi i8 [ 72, %if.then29.i.i ], [ %59, %if.end27.i467.i ]
  %bcmp484.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #20, !dbg !1545
  %tobool33.not.i.i = icmp eq i32 %bcmp484.i, 0, !dbg !1545
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %if.end36.i.i, !dbg !1547

if.then34.i.i:                                    ; preds = %if.end31.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1548
  br label %if.end36.i.i, !dbg !1548

if.end36.i.i:                                     ; preds = %if.then34.i.i, %if.end31.i.i
  %67 = phi i8 [ 39, %if.then34.i.i ], [ %64, %if.end31.i.i ]
  %68 = phi i8 [ 39, %if.then34.i.i ], [ %65, %if.end31.i.i ]
  %69 = phi i8 [ 53, %if.then34.i.i ], [ %66, %if.end31.i.i ]
  %bcmp485.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #20, !dbg !1549
  %tobool38.not.i.i = icmp eq i32 %bcmp485.i, 0, !dbg !1549
  br i1 %tobool38.not.i.i, label %if.then39.i.i, label %if.end41.i.i, !dbg !1551

if.then39.i.i:                                    ; preds = %if.end36.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1552
  br label %if.end41.i.i, !dbg !1552

if.end41.i.i:                                     ; preds = %if.then39.i.i, %if.end36.i.i
  %70 = phi i8 [ 39, %if.then39.i.i ], [ %67, %if.end36.i.i ]
  %71 = phi i8 [ 50, %if.then39.i.i ], [ %68, %if.end36.i.i ]
  %72 = phi i8 [ 72, %if.then39.i.i ], [ %69, %if.end36.i.i ]
  %bcmp486.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #20, !dbg !1553
  %tobool43.not.i.i = icmp eq i32 %bcmp486.i, 0, !dbg !1553
  br i1 %tobool43.not.i.i, label %if.then44.i.i, label %if.end46.i.i, !dbg !1555

if.then44.i.i:                                    ; preds = %if.end41.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1556
  br label %if.end46.i.i, !dbg !1556

if.end46.i.i:                                     ; preds = %if.then44.i.i, %if.end41.i.i
  %73 = phi i8 [ 39, %if.then44.i.i ], [ %70, %if.end41.i.i ]
  %74 = phi i8 [ 39, %if.then44.i.i ], [ %71, %if.end41.i.i ]
  %75 = phi i8 [ 50, %if.then44.i.i ], [ %72, %if.end41.i.i ]
  %bcmp487.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #20, !dbg !1557
  %tobool48.not.i.i = icmp eq i32 %bcmp487.i, 0, !dbg !1557
  br i1 %tobool48.not.i.i, label %if.then49.i.i, label %if.end51.i.i, !dbg !1559

if.then49.i.i:                                    ; preds = %if.end46.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1560
  br label %if.end51.i.i, !dbg !1560

if.end51.i.i:                                     ; preds = %if.then49.i.i, %if.end46.i.i
  %76 = phi i8 [ 49, %if.then49.i.i ], [ %73, %if.end46.i.i ]
  %77 = phi i8 [ 80, %if.then49.i.i ], [ %74, %if.end46.i.i ]
  %78 = phi i8 [ 79, %if.then49.i.i ], [ %75, %if.end46.i.i ]
  %bcmp488.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #20, !dbg !1561
  %tobool53.not.i.i = icmp eq i32 %bcmp488.i, 0, !dbg !1561
  br i1 %tobool53.not.i.i, label %if.then54.i.i, label %if.end56.i.i, !dbg !1563

if.then54.i.i:                                    ; preds = %if.end51.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1564
  br label %if.end56.i.i, !dbg !1564

if.end56.i.i:                                     ; preds = %if.then54.i.i, %if.end51.i.i
  %79 = phi i8 [ 50, %if.then54.i.i ], [ %76, %if.end51.i.i ]
  %80 = phi i8 [ 80, %if.then54.i.i ], [ %77, %if.end51.i.i ]
  %81 = phi i8 [ 79, %if.then54.i.i ], [ %78, %if.end51.i.i ]
  %bcmp489.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #20, !dbg !1565
  %tobool58.not.i.i = icmp eq i32 %bcmp489.i, 0, !dbg !1565
  br i1 %tobool58.not.i.i, label %if.then59.i.i, label %if.end61.i.i, !dbg !1567

if.then59.i.i:                                    ; preds = %if.end56.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1568
  br label %if.end61.i.i, !dbg !1568

if.end61.i.i:                                     ; preds = %if.then59.i.i, %if.end56.i.i
  %82 = phi i8 [ 39, %if.then59.i.i ], [ %79, %if.end56.i.i ]
  %83 = phi i8 [ 53, %if.then59.i.i ], [ %80, %if.end56.i.i ]
  %84 = phi i8 [ 79, %if.then59.i.i ], [ %81, %if.end56.i.i ]
  %bcmp490.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #20, !dbg !1569
  %tobool63.not.i.i = icmp eq i32 %bcmp490.i, 0, !dbg !1569
  br i1 %tobool63.not.i.i, label %if.then64.i.i, label %if.end66.i.i, !dbg !1571

if.then64.i.i:                                    ; preds = %if.end61.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1572
  br label %if.end66.i.i, !dbg !1572

if.end66.i.i:                                     ; preds = %if.then64.i.i, %if.end61.i.i
  %85 = phi i8 [ 39, %if.then64.i.i ], [ %82, %if.end61.i.i ]
  %86 = phi i8 [ 51, %if.then64.i.i ], [ %83, %if.end61.i.i ]
  %87 = phi i8 [ 79, %if.then64.i.i ], [ %84, %if.end61.i.i ]
  %bcmp491.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #20, !dbg !1573
  %tobool68.not.i.i = icmp eq i32 %bcmp491.i, 0, !dbg !1573
  br i1 %tobool68.not.i.i, label %if.then113.i.i, label %lor.lhs.false.i.i, !dbg !1575

lor.lhs.false.i.i:                                ; preds = %if.end66.i.i
  %bcmp492.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #20, !dbg !1576
  %tobool70.not.i.i = icmp eq i32 %bcmp492.i, 0, !dbg !1576
  br i1 %tobool70.not.i.i, label %if.then113.i.i, label %lor.lhs.false71.i.i, !dbg !1577

lor.lhs.false71.i.i:                              ; preds = %lor.lhs.false.i.i
  %bcmp493.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #20, !dbg !1578
  %tobool73.not.i.i = icmp eq i32 %bcmp493.i, 0, !dbg !1578
  br i1 %tobool73.not.i.i, label %if.then113.i.i, label %lor.lhs.false74.i.i, !dbg !1579

lor.lhs.false74.i.i:                              ; preds = %lor.lhs.false71.i.i
  %bcmp494.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #20, !dbg !1580
  %tobool76.not.i.i = icmp eq i32 %bcmp494.i, 0, !dbg !1580
  br i1 %tobool76.not.i.i, label %if.then113.i.i, label %lor.lhs.false77.i.i, !dbg !1581

lor.lhs.false77.i.i:                              ; preds = %lor.lhs.false74.i.i
  %bcmp495.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #20, !dbg !1582
  %tobool79.not.i469.i = icmp eq i32 %bcmp495.i, 0, !dbg !1582
  br i1 %tobool79.not.i469.i, label %if.then113.i.i, label %lor.lhs.false80.i.i, !dbg !1583

lor.lhs.false80.i.i:                              ; preds = %lor.lhs.false77.i.i
  %bcmp496.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #20, !dbg !1584
  %tobool82.not.i.i = icmp eq i32 %bcmp496.i, 0, !dbg !1584
  br i1 %tobool82.not.i.i, label %if.then113.i.i, label %lor.lhs.false83.i.i, !dbg !1585

lor.lhs.false83.i.i:                              ; preds = %lor.lhs.false80.i.i
  %bcmp497.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #20, !dbg !1586
  %tobool85.not.i.i = icmp eq i32 %bcmp497.i, 0, !dbg !1586
  br i1 %tobool85.not.i.i, label %if.then113.i.i, label %lor.lhs.false86.i.i, !dbg !1587

lor.lhs.false86.i.i:                              ; preds = %lor.lhs.false83.i.i
  %bcmp498.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #20, !dbg !1588
  %tobool88.not.i.i = icmp eq i32 %bcmp498.i, 0, !dbg !1588
  br i1 %tobool88.not.i.i, label %if.then113.i.i, label %lor.lhs.false89.i.i, !dbg !1589

lor.lhs.false89.i.i:                              ; preds = %lor.lhs.false86.i.i
  %bcmp499.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #20, !dbg !1590
  %tobool91.not.i.i = icmp eq i32 %bcmp499.i, 0, !dbg !1590
  br i1 %tobool91.not.i.i, label %if.then113.i.i, label %lor.lhs.false92.i.i, !dbg !1591

lor.lhs.false92.i.i:                              ; preds = %lor.lhs.false89.i.i
  %bcmp500.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #20, !dbg !1592
  %tobool94.not.i471.i = icmp eq i32 %bcmp500.i, 0, !dbg !1592
  br i1 %tobool94.not.i471.i, label %if.then113.i.i, label %lor.lhs.false95.i.i, !dbg !1593

lor.lhs.false95.i.i:                              ; preds = %lor.lhs.false92.i.i
  %bcmp501.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #20, !dbg !1594
  %tobool97.not.i.i = icmp eq i32 %bcmp501.i, 0, !dbg !1594
  br i1 %tobool97.not.i.i, label %if.then113.i.i, label %lor.lhs.false98.i.i, !dbg !1595

lor.lhs.false98.i.i:                              ; preds = %lor.lhs.false95.i.i
  %bcmp502.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #20, !dbg !1596
  %tobool100.not.i.i = icmp eq i32 %bcmp502.i, 0, !dbg !1596
  br i1 %tobool100.not.i.i, label %if.then113.i.i, label %lor.lhs.false101.i.i, !dbg !1597

lor.lhs.false101.i.i:                             ; preds = %lor.lhs.false98.i.i
  %bcmp503.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #20, !dbg !1598
  %tobool103.not.i.i = icmp eq i32 %bcmp503.i, 0, !dbg !1598
  br i1 %tobool103.not.i.i, label %if.then113.i.i, label %lor.lhs.false104.i.i, !dbg !1599

lor.lhs.false104.i.i:                             ; preds = %lor.lhs.false101.i.i
  %bcmp504.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #20, !dbg !1600
  %tobool106.not.i.i = icmp eq i32 %bcmp504.i, 0, !dbg !1600
  br i1 %tobool106.not.i.i, label %if.then113.i.i, label %lor.lhs.false107.i.i, !dbg !1601

lor.lhs.false107.i.i:                             ; preds = %lor.lhs.false104.i.i
  %bcmp505.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #20, !dbg !1602
  %tobool109.not.i473.i = icmp eq i32 %bcmp505.i, 0, !dbg !1602
  br i1 %tobool109.not.i473.i, label %if.then113.i.i, label %lor.lhs.false110.i.i, !dbg !1603

lor.lhs.false110.i.i:                             ; preds = %lor.lhs.false107.i.i
  %bcmp506.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #20, !dbg !1604
  %tobool112.not.i.i = icmp eq i32 %bcmp506.i, 0, !dbg !1604
  br i1 %tobool112.not.i.i, label %if.then113.i.i, label %if.end85.i, !dbg !1605

if.then113.i.i:                                   ; preds = %lor.lhs.false110.i.i, %lor.lhs.false107.i.i, %lor.lhs.false104.i.i, %lor.lhs.false101.i.i, %lor.lhs.false98.i.i, %lor.lhs.false95.i.i, %lor.lhs.false92.i.i, %lor.lhs.false89.i.i, %lor.lhs.false86.i.i, %lor.lhs.false83.i.i, %lor.lhs.false80.i.i, %lor.lhs.false77.i.i, %lor.lhs.false74.i.i, %lor.lhs.false71.i.i, %lor.lhs.false.i.i, %if.end66.i.i
  store i8 %87, i8* %14, align 1, !dbg !1606, !tbaa !366
  store i8 %86, i8* %add.ptr.i.i, align 1, !dbg !1608, !tbaa !366
  store i8 %85, i8* %arrayidx14.i.i, align 1, !dbg !1609, !tbaa !366
  store i8 32, i8* %arrayidx21.i.i, align 1, !dbg !1610, !tbaa !366
  br label %if.end85.i, !dbg !1611

if.else80.i:                                      ; preds = %if.else74.i
  %call83.i = call i8* @strcpy(i8* noundef nonnull %14, i8* noundef nonnull dereferenceable(1) %52) #20, !dbg !1612
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.else80.i, %if.then113.i.i, %lor.lhs.false110.i.i, %if.then50.i453.i, %land.lhs.true35.i.i, %if.end.i450.i
  %strcmpload.i = load i8, i8* %15, align 1, !dbg !1613
  %tobool88.i = icmp eq i8 %strcmpload.i, 0, !dbg !1613
  %or.cond.i = select i1 %tobool88.i, i1 true, i1 %cmp26.i, !dbg !1615
  %cmp97.i = icmp slt i32 %ta.2690.i, 99999, !dbg !1616
  br i1 %or.cond.i, label %if.then90.i, label %if.else121.i, !dbg !1615

if.then90.i:                                      ; preds = %if.end85.i
  call void @llvm.dbg.value(metadata i32 %cond96.i, metadata !1014, metadata !DIExpression()) #20, !dbg !1037
  br i1 %cmp97.i, label %if.then99.i, label %if.else109.i, !dbg !1617

if.then99.i:                                      ; preds = %if.then90.i
  %arrayidx103.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 0, !dbg !1619
  %88 = load double, double* %arrayidx103.i, align 8, !dbg !1619, !tbaa !669
  %arrayidx105.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1622
  %89 = load double, double* %arrayidx105.i, align 8, !dbg !1622, !tbaa !669
  %arrayidx107.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1623
  %90 = load double, double* %arrayidx107.i, align 8, !dbg !1623, !tbaa !669
  %call108.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 noundef %inc.i, i8* noundef nonnull %14, i8* noundef nonnull %13, i32 noundef %conv112.i, i32 noundef %cond96.i, double noundef %88, double noundef %89, double noundef %90) #20, !dbg !1624
  br label %if.end148.i, !dbg !1625

if.else109.i:                                     ; preds = %if.then90.i
  %rem482.i = urem i32 %inc.i, 100000, !dbg !1626
  %arrayidx114.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 0, !dbg !1628
  %91 = load double, double* %arrayidx114.i, align 8, !dbg !1628, !tbaa !669
  %arrayidx116.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1629
  %92 = load double, double* %arrayidx116.i, align 8, !dbg !1629, !tbaa !669
  %arrayidx118.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1630
  %93 = load double, double* %arrayidx118.i, align 8, !dbg !1630, !tbaa !669
  %call119.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 noundef %rem482.i, i8* noundef nonnull %14, i8* noundef nonnull %13, i32 noundef %conv112.i, i32 noundef %cond96.i, double noundef %91, double noundef %92, double noundef %93) #20, !dbg !1631
  br label %if.end148.i

if.else121.i:                                     ; preds = %if.end85.i
  br i1 %cmp97.i, label %if.then124.i, label %if.else135.i, !dbg !1632

if.then124.i:                                     ; preds = %if.else121.i
  %arrayidx129.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 0, !dbg !1634
  %94 = load double, double* %arrayidx129.i, align 8, !dbg !1634, !tbaa !669
  %arrayidx131.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1637
  %95 = load double, double* %arrayidx131.i, align 8, !dbg !1637, !tbaa !669
  %arrayidx133.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1638
  %96 = load double, double* %arrayidx133.i, align 8, !dbg !1638, !tbaa !669
  %call134.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 noundef %inc.i, i8* noundef nonnull %14, i8* noundef nonnull %13, i8* noundef nonnull %15, double noundef %94, double noundef %95, double noundef %96) #20, !dbg !1639
  br label %if.end148.i, !dbg !1640

if.else135.i:                                     ; preds = %if.else121.i
  %rem136483.i = urem i32 %inc.i, 100000, !dbg !1641
  %arrayidx141.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 0, !dbg !1643
  %97 = load double, double* %arrayidx141.i, align 8, !dbg !1643, !tbaa !669
  %arrayidx143.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1644
  %98 = load double, double* %arrayidx143.i, align 8, !dbg !1644, !tbaa !669
  %arrayidx145.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1645
  %99 = load double, double* %arrayidx145.i, align 8, !dbg !1645, !tbaa !669
  %call146.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 noundef %rem136483.i, i8* noundef nonnull %14, i8* noundef nonnull %13, i8* noundef nonnull %15, double noundef %97, double noundef %98, double noundef %99) #20, !dbg !1646
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.else135.i, %if.then124.i, %if.else109.i, %if.then99.i
  br i1 %cmp11.i, label %if.then150.i, label %if.else152.i, !dbg !1647

if.then150.i:                                     ; preds = %if.end148.i
  %a_charge.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 6, !dbg !1648
  %100 = load double, double* %a_charge.i, align 8, !dbg !1648, !tbaa !811
  %a_radius.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 7, !dbg !1651
  %101 = load double, double* %a_radius.i, align 8, !dbg !1651, !tbaa !815
  %call151.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double noundef %100, double noundef %101) #20, !dbg !1652
  br label %if.end167.i, !dbg !1653

if.else152.i:                                     ; preds = %if.end148.i
  br i1 %cmp14.i, label %if.end167.i, label %if.end157.i, !dbg !1654

if.end157.i:                                      ; preds = %if.else152.i
  %a_occ.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 9, !dbg !1655
  %102 = load double, double* %a_occ.i, align 8, !dbg !1655, !tbaa !818
  %a_bfact.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %51, i64 %indvars.iv.i, i32 8, !dbg !1658
  %103 = load double, double* %a_bfact.i, align 8, !dbg !1658, !tbaa !821
  %call155.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double noundef %102, double noundef %103) #20, !dbg !1659
  br i1 %or.cond199.i, label %if.end167.i, label %if.then164.i, !dbg !1660

if.then164.i:                                     ; preds = %if.end157.i
  %104 = load i8*, i8** %a_atomname.i, align 8, !dbg !1662, !tbaa !489
  %call166.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* noundef %104) #20, !dbg !1664
  br label %if.end167.i, !dbg !1665

if.end167.i:                                      ; preds = %if.then164.i, %if.end157.i, %if.else152.i, %if.then150.i
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %fp.0.ph38) #20, !dbg !1666
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1015, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1016, metadata !DIExpression()) #20, !dbg !1037
  %105 = load i32, i32* %r_natoms.i, align 8, !dbg !1451, !tbaa !715
  %106 = sext i32 %105 to i64, !dbg !1454
  %cmp65.i = icmp slt i64 %indvars.iv.next.i, %106, !dbg !1454
  br i1 %cmp65.i, label %for.body67.i, label %for.inc170.i, !dbg !1455, !llvm.loop !1668

for.inc170.i:                                     ; preds = %if.end167.i, %if.end63.i
  %ta.2.lcssa.i = phi i32 [ %ta.1693.i, %if.end63.i ], [ %inc.i, %if.end167.i ], !dbg !1180
  %indvars.iv.next706.i = add nuw nsw i64 %indvars.iv705.i, 1, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next706.i, metadata !1012, metadata !DIExpression()) #20, !dbg !1037
  %inc172.i = add nsw i32 %tr.1694.i, 1, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %inc172.i, metadata !1013, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %ta.2.lcssa.i, metadata !1016, metadata !DIExpression()) #20, !dbg !1037
  %107 = load i32, i32* %s_nresidues.i, align 8, !dbg !1239, !tbaa !1242
  %108 = sext i32 %107 to i64, !dbg !1243
  %cmp44.i = icmp slt i64 %indvars.iv.next706.i, %108, !dbg !1243
  br i1 %cmp44.i, label %for.body46.i, label %for.end173.i, !dbg !1244, !llvm.loop !1672

for.end173.i:                                     ; preds = %for.inc170.i, %nextcid.exit.i
  %ta.1.lcssa.i = phi i32 [ %ta.0700.i, %nextcid.exit.i ], [ %ta.2.lcssa.i, %for.inc170.i ], !dbg !1674
  %tr.1.lcssa.i = phi i32 [ %tr.0701.i, %nextcid.exit.i ], [ %inc172.i, %for.inc170.i ], !dbg !1180
  %109 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* nonnull %fp.0.ph38) #20, !dbg !1675
  %s_next.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0702.i, i64 0, i32 4, !dbg !1676
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1018, metadata !DIExpression()) #20, !dbg !1037
  %sp.0.i = load %struct.strand_t*, %struct.strand_t** %s_next.i, align 8, !dbg !1180, !tbaa !372
  call void @llvm.dbg.value(metadata i32 %tr.1.lcssa.i, metadata !1013, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i, metadata !1018, metadata !DIExpression()) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %ta.1.lcssa.i, metadata !1016, metadata !DIExpression()) #20, !dbg !1037
  %tobool40.not.i = icmp eq %struct.strand_t* %sp.0.i, null, !dbg !1181
  br i1 %tobool40.not.i, label %for.end176.i, label %for.body.i, !dbg !1181, !llvm.loop !1677

for.end176.i:                                     ; preds = %for.end173.i, %initcid.exit.i
  call void @llvm.dbg.value(metadata %struct.cid_t* %retval.0.i.i, metadata !1109, metadata !DIExpression()) #20, !dbg !1679
  br i1 %cmp.i286.i, label %fputpdb.exit, label %if.then.i476.i, !dbg !1681

if.then.i476.i:                                   ; preds = %for.end176.i
  %110 = load i8*, i8** %c_cids.i292.i, align 8, !dbg !1682, !tbaa !1122
  %cmp1.not.i475.i = icmp eq i8* %110, null, !dbg !1684
  br i1 %cmp1.not.i475.i, label %if.end.i477.i, label %if.then2.i.i, !dbg !1685

if.then2.i.i:                                     ; preds = %if.then.i476.i
  call void @free(i8* noundef nonnull %110) #20, !dbg !1686
  br label %if.end.i477.i, !dbg !1686

if.end.i477.i:                                    ; preds = %if.then2.i.i, %if.then.i476.i
  %111 = bitcast %struct.cid_t* %retval.0.i.i to i8*, !dbg !1687
  call void @free(i8* noundef %111) #20, !dbg !1688
  br label %fputpdb.exit, !dbg !1689

fputpdb.exit:                                     ; preds = %if.then2.i, %for.end176.i, %if.end.i477.i
  %fp.0.ph39 = phi %struct._IO_FILE* [ null, %if.then2.i ], [ %fp.0.ph38, %for.end176.i ], [ %fp.0.ph38, %if.end.i477.i ]
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %rname.i, i64 0, i64 0
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 0
  %114 = getelementptr inbounds [7 x i8], [7 x i8]* %rid.i, i64 0, i64 0
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 0
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %115) #20, !dbg !1690
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %114) #20, !dbg !1690
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113) #20, !dbg !1690
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #20, !dbg !1690
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1691, !tbaa !372
  %cmp18.not = icmp eq %struct._IO_FILE* %fp.0.ph39, %116, !dbg !1693
  br i1 %cmp18.not, label %if.end23, label %if.then19, !dbg !1694

if.then19:                                        ; preds = %fputpdb.exit
  %call20 = call i32 @fclose(%struct._IO_FILE* noundef %fp.0.ph39), !dbg !1695
  br label %if.end23, !dbg !1695

if.end23:                                         ; preds = %if.end15, %if.then19, %fputpdb.exit, %if.end3
  %ier.1 = phi i32 [ 0, %if.then19 ], [ 0, %fputpdb.exit ], [ -1, %if.end15 ], [ 0, %if.end3 ], !dbg !984
  call void @llvm.dbg.value(metadata i32 %ier.1, metadata !983, metadata !DIExpression()), !dbg !984
  call void @reducerror(i32 noundef %ier.1) #20, !dbg !1696
  br label %cleanup, !dbg !1697

cleanup:                                          ; preds = %if.then, %if.then1, %if.end23
  ret i32 0, !dbg !1698
}

declare !dbg !1699 dso_local i32 @rt_errormsg_s(i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @putcif(i8* noundef %fname, i8* noundef %blockId, %struct.molecule_t* noundef readonly %mol) local_unnamed_addr #0 !dbg !1702 {
entry:
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1706, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8* %blockId, metadata !1707, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1708, metadata !DIExpression()), !dbg !1710
  %tobool.not = icmp eq %struct.molecule_t* %mol, null, !dbg !1711
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1713

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1714, !tbaa !372
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %0) #21, !dbg !1716
  br label %cleanup, !dbg !1717

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %fname, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #19, !dbg !1718
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !1718
  br i1 %tobool2.not, label %if.end.i, label %if.else, !dbg !1720

if.else:                                          ; preds = %if.end
  %call4 = tail call %struct._IO_FILE* @fopen(i8* noundef %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1721
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call4, metadata !1709, metadata !DIExpression()), !dbg !1710
  %cmp = icmp eq %struct._IO_FILE* %call4, null, !dbg !1723
  br i1 %cmp, label %if.then5, label %if.end4.i, !dbg !1724

if.then5:                                         ; preds = %if.else
  %call6 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* noundef %fname) #20, !dbg !1725
  tail call void @exit(i32 noundef 1) #23, !dbg !1727
  unreachable, !dbg !1727

if.end.i:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1728, !tbaa !372
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1709, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1729, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %blockId, metadata !1734, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1735, metadata !DIExpression()) #20, !dbg !1745
  %tobool1.not.i = icmp eq %struct._IO_FILE* %2, null, !dbg !1747
  br i1 %tobool1.not.i, label %if.else3.i, label %if.end4.i, !dbg !1750

if.else3.i:                                       ; preds = %if.end.i
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.159, i64 0, i64 0), i32 noundef 1390, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #23, !dbg !1747
  unreachable, !dbg !1747

if.end4.i:                                        ; preds = %if.else, %if.end.i
  %fp.021 = phi %struct._IO_FILE* [ %2, %if.end.i ], [ %call4, %if.else ]
  %m_nstrands.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 1, !dbg !1751
  %3 = load i32, i32* %m_nstrands.i, align 8, !dbg !1751, !tbaa !1752
  call void @llvm.dbg.value(metadata i8 undef, metadata !1741, metadata !DIExpression()) #20, !dbg !1745
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.021, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* noundef %blockId) #20, !dbg !1753
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1754
  %call6.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.021, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* noundef %blockId) #20, !dbg !1755
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1756
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1757
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1758
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1759
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1760
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1761
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 0, metadata !1739, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 0, metadata !1737, metadata !DIExpression()) #20, !dbg !1745
  %m_strands.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1762
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1742, metadata !DIExpression()) #20, !dbg !1745
  %sp.094.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1764, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.094.i, metadata !1742, metadata !DIExpression()) #20, !dbg !1745
  %tobool13.not95.i = icmp eq %struct.strand_t* %sp.094.i, null, !dbg !1765
  br i1 %tobool13.not95.i, label %fputcif.exit, label %for.body.preheader.i, !dbg !1765

for.body.preheader.i:                             ; preds = %if.end4.i
  %cmp.i = icmp sgt i32 %3, 1, !dbg !1766
  %conv.i = select i1 %cmp.i, i8 65, i8 46, !dbg !1767
  call void @llvm.dbg.value(metadata i8 %conv.i, metadata !1741, metadata !DIExpression()) #20, !dbg !1745
  br label %for.body.i, !dbg !1765

for.body.i:                                       ; preds = %for.end37.i, %for.body.preheader.i
  %sp.0100.i = phi %struct.strand_t* [ %sp.0.i, %for.end37.i ], [ %sp.094.i, %for.body.preheader.i ]
  %tr.099.i = phi i32 [ %tr.1.lcssa.i, %for.end37.i ], [ 0, %for.body.preheader.i ]
  %cid.098.i = phi i8 [ %spec.select.i, %for.end37.i ], [ %conv.i, %for.body.preheader.i ]
  %strandnum.097.i = phi i32 [ %inc.i, %for.end37.i ], [ 0, %for.body.preheader.i ]
  %ta.096.i = phi i32 [ %ta.1.lcssa.i, %for.end37.i ], [ 0, %for.body.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %tr.099.i, metadata !1737, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i8 %cid.098.i, metadata !1741, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %strandnum.097.i, metadata !1740, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %ta.096.i, metadata !1739, metadata !DIExpression()) #20, !dbg !1745
  %inc.i = add nuw nsw i32 %strandnum.097.i, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1740, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 0, metadata !1736, metadata !DIExpression()) #20, !dbg !1745
  %s_nresidues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0100.i, i64 0, i32 5
  %s_residues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0100.i, i64 0, i32 7
  %conv25.i = sext i8 %cid.098.i to i32
  %11 = load i32, i32* %s_nresidues.i, align 8, !dbg !1771, !tbaa !1242
  %cmp1588.i = icmp sgt i32 %11, 0, !dbg !1774
  br i1 %cmp1588.i, label %for.body17.i, label %for.end37.i, !dbg !1775

for.body17.i:                                     ; preds = %for.body.i, %for.inc34.i
  %12 = phi i32 [ %25, %for.inc34.i ], [ %11, %for.body.i ]
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %for.inc34.i ], [ 0, %for.body.i ]
  %tr.190.i = phi i32 [ %add.i, %for.inc34.i ], [ %tr.099.i, %for.body.i ]
  %ta.189.i = phi i32 [ %ta.2.lcssa.i, %for.inc34.i ], [ %ta.096.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv102.i, metadata !1736, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %tr.190.i, metadata !1737, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %ta.189.i, metadata !1739, metadata !DIExpression()) #20, !dbg !1745
  %13 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i, align 8, !dbg !1776, !tbaa !753
  %arrayidx.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %13, i64 %indvars.iv102.i, !dbg !1778
  %14 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i, align 8, !dbg !1778, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %14, metadata !1743, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 0, metadata !1738, metadata !DIExpression()) #20, !dbg !1745
  %r_natoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i64 0, i32 15
  %r_atoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i64 0, i32 17
  %r_resname.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i64 0, i32 4
  %add.i = add nsw i32 %tr.190.i, 1
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1, !dbg !1779
  %15 = load i32, i32* %r_natoms.i, align 8, !dbg !1780, !tbaa !715
  %cmp1985.i = icmp sgt i32 %15, 0, !dbg !1783
  br i1 %cmp1985.i, label %for.body21.preheader.i, label %for.inc34.i, !dbg !1784

for.body21.preheader.i:                           ; preds = %for.body17.i
  %16 = trunc i64 %indvars.iv.next103.i to i32
  br label %for.body21.i, !dbg !1784

for.body21.i:                                     ; preds = %for.body21.i, %for.body21.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body21.preheader.i ], [ %indvars.iv.next.i, %for.body21.i ]
  %ta.287.i = phi i32 [ %ta.189.i, %for.body21.preheader.i ], [ %inc22.i, %for.body21.i ]
  call void @llvm.dbg.value(metadata i32 %ta.287.i, metadata !1739, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1738, metadata !DIExpression()) #20, !dbg !1745
  %inc22.i = add nsw i32 %ta.287.i, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %inc22.i, metadata !1739, metadata !DIExpression()) #20, !dbg !1745
  %17 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i, align 8, !dbg !1787, !tbaa !1459
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %17, i64 %indvars.iv.i), metadata !1744, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #20, !dbg !1745
  %a_atomname.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %indvars.iv.i, i32 0, !dbg !1788
  %18 = load i8*, i8** %a_atomname.i, align 8, !dbg !1788, !tbaa !489
  %19 = load i8*, i8** %r_resname.i, align 8, !dbg !1789, !tbaa !707
  %arrayidx26.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %indvars.iv.i, i32 17, i64 0, !dbg !1790
  %20 = load double, double* %arrayidx26.i, align 8, !dbg !1790, !tbaa !669
  %arrayidx28.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1791
  %21 = load double, double* %arrayidx28.i, align 8, !dbg !1791, !tbaa !669
  %arrayidx30.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1792
  %22 = load double, double* %arrayidx30.i, align 8, !dbg !1792, !tbaa !669
  %call32.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.021, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 noundef %inc22.i, i8* noundef %18, i8* noundef %19, i32 noundef %conv25.i, i32 noundef %add.i, double noundef %20, double noundef %21, double noundef %22, i32 noundef %inc.i, i32 noundef %16) #20, !dbg !1793
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1738, metadata !DIExpression()) #20, !dbg !1745
  %23 = load i32, i32* %r_natoms.i, align 8, !dbg !1780, !tbaa !715
  %24 = sext i32 %23 to i64, !dbg !1783
  %cmp19.i = icmp slt i64 %indvars.iv.next.i, %24, !dbg !1783
  br i1 %cmp19.i, label %for.body21.i, label %for.inc34.loopexit.i, !dbg !1784, !llvm.loop !1795

for.inc34.loopexit.i:                             ; preds = %for.body21.i
  %.pre.i = load i32, i32* %s_nresidues.i, align 8, !dbg !1771, !tbaa !1242
  br label %for.inc34.i, !dbg !1779

for.inc34.i:                                      ; preds = %for.inc34.loopexit.i, %for.body17.i
  %25 = phi i32 [ %12, %for.body17.i ], [ %.pre.i, %for.inc34.loopexit.i ], !dbg !1771
  %ta.2.lcssa.i = phi i32 [ %ta.189.i, %for.body17.i ], [ %inc22.i, %for.inc34.loopexit.i ], !dbg !1764
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next103.i, metadata !1736, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !1737, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %ta.2.lcssa.i, metadata !1739, metadata !DIExpression()) #20, !dbg !1745
  %26 = sext i32 %25 to i64, !dbg !1774
  %cmp15.i = icmp slt i64 %indvars.iv.next103.i, %26, !dbg !1774
  br i1 %cmp15.i, label %for.body17.i, label %for.end37.i, !dbg !1775, !llvm.loop !1797

for.end37.i:                                      ; preds = %for.inc34.i, %for.body.i
  %ta.1.lcssa.i = phi i32 [ %ta.096.i, %for.body.i ], [ %ta.2.lcssa.i, %for.inc34.i ], !dbg !1799
  %tr.1.lcssa.i = phi i32 [ %tr.099.i, %for.body.i ], [ %add.i, %for.inc34.i ], !dbg !1764
  %27 = load i32, i32* %m_nstrands.i, align 8, !dbg !1800, !tbaa !1752
  %cmp39.i = icmp sgt i32 %27, 1, !dbg !1802
  %inc42.i = zext i1 %cmp39.i to i8, !dbg !1803
  %spec.select.i = add i8 %cid.098.i, %inc42.i, !dbg !1803
  call void @llvm.dbg.value(metadata i8 %spec.select.i, metadata !1741, metadata !DIExpression()) #20, !dbg !1745
  %s_next.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0100.i, i64 0, i32 4, !dbg !1804
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1742, metadata !DIExpression()) #20, !dbg !1745
  %sp.0.i = load %struct.strand_t*, %struct.strand_t** %s_next.i, align 8, !dbg !1764, !tbaa !372
  call void @llvm.dbg.value(metadata i32 %tr.1.lcssa.i, metadata !1737, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i, metadata !1742, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1740, metadata !DIExpression()) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %ta.1.lcssa.i, metadata !1739, metadata !DIExpression()) #20, !dbg !1745
  %tobool13.not.i = icmp eq %struct.strand_t* %sp.0.i, null, !dbg !1765
  br i1 %tobool13.not.i, label %fputcif.exit, label %for.body.i, !dbg !1765, !llvm.loop !1805

fputcif.exit:                                     ; preds = %for.end37.i, %if.end4.i
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1807, !tbaa !372
  %cmp9.not = icmp eq %struct._IO_FILE* %fp.021, %28, !dbg !1809
  br i1 %cmp9.not, label %cleanup, label %if.then10, !dbg !1810

if.then10:                                        ; preds = %fputcif.exit
  %call11 = tail call i32 @fclose(%struct._IO_FILE* noundef %fp.021), !dbg !1811
  br label %cleanup, !dbg !1811

cleanup:                                          ; preds = %fputcif.exit, %if.then10, %if.then
  ret i32 0, !dbg !1812
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @putbnd(i8* noundef %fname, %struct.molecule_t* noundef readonly %mol) local_unnamed_addr #0 !dbg !1813 {
entry:
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1817, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1818, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 0, metadata !1829, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32* null, metadata !1830, metadata !DIExpression()), !dbg !1834
  %tobool.not = icmp eq %struct.molecule_t* %mol, null, !dbg !1835
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1837

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1838, !tbaa !372
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %0) #21, !dbg !1840
  br label %cleanup, !dbg !1841

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._IO_FILE* @fopen(i8* noundef %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1842
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call1, metadata !1819, metadata !DIExpression()), !dbg !1834
  %cmp = icmp eq %struct._IO_FILE* %call1, null, !dbg !1844
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !1845

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* noundef %fname) #20, !dbg !1846
  tail call void @exit(i32 noundef 1) #23, !dbg !1848
  unreachable, !dbg !1848

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1834
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1849
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1820, metadata !DIExpression()), !dbg !1834
  %sp.0195 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !1851, !tbaa !372
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0195, metadata !1820, metadata !DIExpression()), !dbg !1834
  %tobool5.not196 = icmp eq %struct.strand_t* %sp.0195, null, !dbg !1852
  br i1 %tobool5.not196, label %for.end.thread, label %for.body, !dbg !1852

for.body:                                         ; preds = %if.end4, %for.body
  %sp.0198 = phi %struct.strand_t* [ %sp.0, %for.body ], [ %sp.0195, %if.end4 ]
  %tr.0197 = phi i32 [ %add, %for.body ], [ 0, %if.end4 ]
  call void @llvm.dbg.value(metadata i32 %tr.0197, metadata !1828, metadata !DIExpression()), !dbg !1834
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0198, i64 0, i32 5, !dbg !1853
  %2 = load i32, i32* %s_nresidues, align 8, !dbg !1853, !tbaa !1242
  %add = add nsw i32 %2, %tr.0197, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %add, metadata !1828, metadata !DIExpression()), !dbg !1834
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0198, i64 0, i32 4, !dbg !1856
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1820, metadata !DIExpression()), !dbg !1834
  %sp.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !1851, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0, metadata !1820, metadata !DIExpression()), !dbg !1834
  %tobool5.not = icmp eq %struct.strand_t* %sp.0, null, !dbg !1852
  br i1 %tobool5.not, label %for.end, label %for.body, !dbg !1852, !llvm.loop !1857

for.end:                                          ; preds = %for.body
  %phi.cast = sext i32 %add to i64, !dbg !1859
  %phi.bo = shl nsw i64 %phi.cast, 2, !dbg !1859
  %call6 = tail call noalias i8* @malloc(i64 noundef %phi.bo) #20, !dbg !1861
  %3 = bitcast i8* %call6 to i32*, !dbg !1862
  call void @llvm.dbg.value(metadata i32* %3, metadata !1830, metadata !DIExpression()), !dbg !1834
  %cmp7 = icmp eq i8* %call6, null, !dbg !1863
  br i1 %cmp7, label %clean_up.thread, label %for.cond13.preheader, !dbg !1864

for.end.thread:                                   ; preds = %if.end4
  %call6233 = tail call noalias i8* @malloc(i64 noundef 0) #20, !dbg !1861
  call void @llvm.dbg.value(metadata i32* %3, metadata !1830, metadata !DIExpression()), !dbg !1834
  %cmp7234 = icmp eq i8* %call6233, null, !dbg !1863
  br i1 %cmp7234, label %clean_up.thread, label %if.then103, !dbg !1864

for.cond13.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0195, metadata !1820, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 0, metadata !1823, metadata !DIExpression()), !dbg !1834
  br i1 %tobool5.not196, label %if.then103, label %for.body15, !dbg !1865

clean_up.thread:                                  ; preds = %for.end.thread, %for.end
  %call10 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #20, !dbg !1867
  call void @llvm.dbg.value(metadata i32 0, metadata !1829, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.label(metadata !1833), !dbg !1869
  br label %if.end104, !dbg !1870

for.cond44.preheader:                             ; preds = %for.inc40
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0195, metadata !1820, metadata !DIExpression()), !dbg !1834
  br i1 %tobool5.not196, label %if.then103, label %for.cond47.preheader, !dbg !1871

for.body15:                                       ; preds = %for.cond13.preheader, %for.inc40
  %sp.1207 = phi %struct.strand_t* [ %sp.1, %for.inc40 ], [ %sp.0195, %for.cond13.preheader ]
  %tr.1206 = phi i32 [ %tr.2, %for.inc40 ], [ 0, %for.cond13.preheader ]
  %ta.0205 = phi i32 [ %ta.2, %for.inc40 ], [ 0, %for.cond13.preheader ]
  call void @llvm.dbg.value(metadata i32 %tr.1206, metadata !1828, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 %ta.0205, metadata !1823, metadata !DIExpression()), !dbg !1834
  %idxprom = sext i32 %tr.1206 to i64, !dbg !1873
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom, !dbg !1873
  store i32 %ta.0205, i32* %arrayidx, align 4, !dbg !1876, !tbaa !523
  %s_nresidues16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.1207, i64 0, i32 5, !dbg !1877
  %4 = load i32, i32* %s_nresidues16, align 8, !dbg !1877, !tbaa !1242
  %cmp17 = icmp sgt i32 %4, 0, !dbg !1879
  br i1 %cmp17, label %if.then19, label %for.inc40, !dbg !1880

if.then19:                                        ; preds = %for.body15
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.1207, i64 0, i32 7, !dbg !1881
  %5 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !dbg !1881, !tbaa !753
  %6 = load %struct.residue_t*, %struct.residue_t** %5, align 8, !dbg !1883, !tbaa !372
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 15, !dbg !1884
  %7 = load i32, i32* %r_natoms, align 8, !dbg !1884, !tbaa !715
  %add21 = add nsw i32 %7, %ta.0205, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %add21, metadata !1823, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 1, metadata !1826, metadata !DIExpression()), !dbg !1834
  %cmp24199.not = icmp eq i32 %4, 1, !dbg !1886
  br i1 %cmp24199.not, label %for.end36, label %for.body26.preheader, !dbg !1889

for.body26.preheader:                             ; preds = %if.then19
  %wide.trip.count = zext i32 %4 to i64, !dbg !1886
  br label %for.body26, !dbg !1889

for.body26:                                       ; preds = %for.body26.preheader, %for.body26
  %indvars.iv = phi i64 [ 1, %for.body26.preheader ], [ %indvars.iv.next, %for.body26 ]
  %ta.1200 = phi i32 [ %add21, %for.body26.preheader ], [ %add34, %for.body26 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1826, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 %ta.1200, metadata !1823, metadata !DIExpression()), !dbg !1834
  %8 = add nsw i64 %indvars.iv, %idxprom, !dbg !1890
  %arrayidx29 = getelementptr inbounds i32, i32* %3, i64 %8, !dbg !1892
  store i32 %ta.1200, i32* %arrayidx29, align 4, !dbg !1893, !tbaa !523
  %arrayidx32 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %5, i64 %indvars.iv, !dbg !1894
  %9 = load %struct.residue_t*, %struct.residue_t** %arrayidx32, align 8, !dbg !1894, !tbaa !372
  %r_natoms33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %9, i64 0, i32 15, !dbg !1895
  %10 = load i32, i32* %r_natoms33, align 8, !dbg !1895, !tbaa !715
  %add34 = add nsw i32 %10, %ta.1200, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1823, metadata !DIExpression()), !dbg !1834
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1826, metadata !DIExpression()), !dbg !1834
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1886
  br i1 %exitcond.not, label %for.end36, label %for.body26, !dbg !1889, !llvm.loop !1898

for.end36:                                        ; preds = %for.body26, %if.then19
  %ta.1.lcssa = phi i32 [ %add21, %if.then19 ], [ %add34, %for.body26 ], !dbg !1900
  %add38 = add nsw i32 %4, %tr.1206, !dbg !1901
  call void @llvm.dbg.value(metadata i32 %add38, metadata !1828, metadata !DIExpression()), !dbg !1834
  br label %for.inc40, !dbg !1902

for.inc40:                                        ; preds = %for.body15, %for.end36
  %ta.2 = phi i32 [ %ta.1.lcssa, %for.end36 ], [ %ta.0205, %for.body15 ], !dbg !1903
  %tr.2 = phi i32 [ %add38, %for.end36 ], [ %tr.1206, %for.body15 ], !dbg !1903
  call void @llvm.dbg.value(metadata i32 %tr.2, metadata !1828, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 %ta.2, metadata !1823, metadata !DIExpression()), !dbg !1834
  %s_next41 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.1207, i64 0, i32 4, !dbg !1904
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1820, metadata !DIExpression()), !dbg !1834
  %sp.1 = load %struct.strand_t*, %struct.strand_t** %s_next41, align 8, !dbg !1903, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.1, metadata !1820, metadata !DIExpression()), !dbg !1834
  %tobool14.not = icmp eq %struct.strand_t* %sp.1, null, !dbg !1865
  br i1 %tobool14.not, label %for.cond44.preheader, label %for.body15, !dbg !1865, !llvm.loop !1905

for.cond47.preheader:                             ; preds = %for.cond44.preheader, %for.end96
  %sp.2221 = phi %struct.strand_t* [ %sp.2, %for.end96 ], [ %sp.0195, %for.cond44.preheader ]
  %tr.3220 = phi i32 [ %add98, %for.end96 ], [ 0, %for.cond44.preheader ]
  call void @llvm.dbg.value(metadata i32 %tr.3220, metadata !1828, metadata !DIExpression()), !dbg !1834
  %s_nresidues48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.2221, i64 0, i32 5
  %s_residues52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.2221, i64 0, i32 7
  %add86 = add i32 %tr.3220, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !1826, metadata !DIExpression()), !dbg !1834
  %11 = load i32, i32* %s_nresidues48, align 8, !dbg !1907, !tbaa !1242
  %cmp49214 = icmp sgt i32 %11, 0, !dbg !1912
  br i1 %cmp49214, label %for.body51.preheader, label %for.end96, !dbg !1913

for.body51.preheader:                             ; preds = %for.cond47.preheader
  %12 = sext i32 %tr.3220 to i64, !dbg !1913
  br label %for.body51, !dbg !1913

for.body51:                                       ; preds = %for.body51.preheader, %for.inc94
  %indvars.iv228 = phi i64 [ 0, %for.body51.preheader ], [ %indvars.iv.next229, %for.inc94 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv228, metadata !1826, metadata !DIExpression()), !dbg !1834
  %13 = load %struct.residue_t**, %struct.residue_t*** %s_residues52, align 8, !dbg !1914, !tbaa !753
  %arrayidx54 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %13, i64 %indvars.iv228, !dbg !1916
  %14 = load %struct.residue_t*, %struct.residue_t** %arrayidx54, align 8, !dbg !1916, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %14, metadata !1821, metadata !DIExpression()), !dbg !1834
  %15 = add nsw i64 %indvars.iv228, %12, !dbg !1917
  %arrayidx57 = getelementptr inbounds i32, i32* %3, i64 %15, !dbg !1918
  %16 = load i32, i32* %arrayidx57, align 4, !dbg !1918, !tbaa !523
  call void @llvm.dbg.value(metadata i32 %16, metadata !1822, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 0, metadata !1831, metadata !DIExpression()), !dbg !1834
  %r_nintbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i64 0, i32 11
  %r_intbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i64 0, i32 12
  %17 = load i32, i32* %r_nintbonds, align 8, !dbg !1919, !tbaa !1922
  %cmp59208 = icmp sgt i32 %17, 0, !dbg !1923
  br i1 %cmp59208, label %for.body61, label %for.end74, !dbg !1924

for.body61:                                       ; preds = %for.body51, %for.body61
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %for.body61 ], [ 0, %for.body51 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv225, metadata !1831, metadata !DIExpression()), !dbg !1834
  %18 = load [2 x i32]*, [2 x i32]** %r_intbonds, align 8, !dbg !1925, !tbaa !1927
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 %indvars.iv225, i64 0, !dbg !1928
  %19 = load i32, i32* %arrayidx64, align 4, !dbg !1928, !tbaa !523
  %add65 = add nsw i32 %19, %16, !dbg !1929
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 %indvars.iv225, i64 1, !dbg !1930
  %20 = load i32, i32* %arrayidx69, align 4, !dbg !1930, !tbaa !523
  %add70 = add nsw i32 %20, %16, !dbg !1931
  %call71 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %call1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 noundef %add65, i32 noundef %add70), !dbg !1932
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next226, metadata !1831, metadata !DIExpression()), !dbg !1834
  %21 = load i32, i32* %r_nintbonds, align 8, !dbg !1919, !tbaa !1922
  %22 = sext i32 %21 to i64, !dbg !1923
  %cmp59 = icmp slt i64 %indvars.iv.next226, %22, !dbg !1923
  br i1 %cmp59, label %for.body61, label %for.end74, !dbg !1924, !llvm.loop !1934

for.end74:                                        ; preds = %for.body61, %for.body51
  %r_extbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i64 0, i32 10, !dbg !1936
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1832, metadata !DIExpression()), !dbg !1834
  %ebp.0210 = load %struct.extbond_t*, %struct.extbond_t** %r_extbonds, align 8, !dbg !1938, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.extbond_t* %ebp.0210, metadata !1832, metadata !DIExpression()), !dbg !1834
  %tobool76.not211 = icmp eq %struct.extbond_t* %ebp.0210, null, !dbg !1939
  br i1 %tobool76.not211, label %for.inc94, label %for.body77, !dbg !1939

for.body77:                                       ; preds = %for.end74, %for.inc92
  %ebp.0212 = phi %struct.extbond_t* [ %ebp.0, %for.inc92 ], [ %ebp.0210, %for.end74 ]
  %eb_rnum = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %ebp.0212, i64 0, i32 2, !dbg !1940
  %23 = load i32, i32* %eb_rnum, align 4, !dbg !1940, !tbaa !1944
  call void @llvm.dbg.value(metadata i32 %23, metadata !1827, metadata !DIExpression()), !dbg !1834
  %24 = sext i32 %23 to i64, !dbg !1946
  %cmp79.not = icmp slt i64 %indvars.iv228, %24, !dbg !1946
  br i1 %cmp79.not, label %if.end82, label %for.inc92, !dbg !1947

if.end82:                                         ; preds = %for.body77
  call void @llvm.dbg.value(metadata i32 %16, metadata !1824, metadata !DIExpression()), !dbg !1834
  %sub = add i32 %add86, %23, !dbg !1948
  %idxprom87 = sext i32 %sub to i64, !dbg !1949
  %arrayidx88 = getelementptr inbounds i32, i32* %3, i64 %idxprom87, !dbg !1949
  %25 = load i32, i32* %arrayidx88, align 4, !dbg !1949, !tbaa !523
  call void @llvm.dbg.value(metadata i32 %25, metadata !1825, metadata !DIExpression()), !dbg !1834
  %eb_anum = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %ebp.0212, i64 0, i32 1, !dbg !1950
  %26 = load i32, i32* %eb_anum, align 8, !dbg !1950, !tbaa !1951
  %add89 = add nsw i32 %26, %16, !dbg !1952
  %eb_ranum = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %ebp.0212, i64 0, i32 3, !dbg !1953
  %27 = load i32, i32* %eb_ranum, align 8, !dbg !1953, !tbaa !1954
  %add90 = add nsw i32 %27, %25, !dbg !1955
  %call91 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %call1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 noundef %add89, i32 noundef %add90), !dbg !1956
  br label %for.inc92, !dbg !1957

for.inc92:                                        ; preds = %for.body77, %if.end82
  %eb_next = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %ebp.0212, i64 0, i32 0, !dbg !1958
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1832, metadata !DIExpression()), !dbg !1834
  %ebp.0 = load %struct.extbond_t*, %struct.extbond_t** %eb_next, align 8, !dbg !1938, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.extbond_t* %ebp.0, metadata !1832, metadata !DIExpression()), !dbg !1834
  %tobool76.not = icmp eq %struct.extbond_t* %ebp.0, null, !dbg !1939
  br i1 %tobool76.not, label %for.inc94, label %for.body77, !dbg !1939, !llvm.loop !1959

for.inc94:                                        ; preds = %for.inc92, %for.end74
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next229, metadata !1826, metadata !DIExpression()), !dbg !1834
  %28 = load i32, i32* %s_nresidues48, align 8, !dbg !1907, !tbaa !1242
  %29 = sext i32 %28 to i64, !dbg !1912
  %cmp49 = icmp slt i64 %indvars.iv.next229, %29, !dbg !1912
  br i1 %cmp49, label %for.body51, label %for.end96, !dbg !1913, !llvm.loop !1962

for.end96:                                        ; preds = %for.inc94, %for.cond47.preheader
  %.lcssa = phi i32 [ %11, %for.cond47.preheader ], [ %28, %for.inc94 ], !dbg !1907
  %add98 = add nsw i32 %.lcssa, %tr.3220, !dbg !1964
  call void @llvm.dbg.value(metadata i32 %add98, metadata !1828, metadata !DIExpression()), !dbg !1834
  %s_next100 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.2221, i64 0, i32 4, !dbg !1965
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1820, metadata !DIExpression()), !dbg !1834
  %sp.2 = load %struct.strand_t*, %struct.strand_t** %s_next100, align 8, !dbg !1966, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.2, metadata !1820, metadata !DIExpression()), !dbg !1834
  %tobool45.not = icmp eq %struct.strand_t* %sp.2, null, !dbg !1871
  br i1 %tobool45.not, label %if.then103, label %for.cond47.preheader, !dbg !1871, !llvm.loop !1967

if.then103:                                       ; preds = %for.end96, %for.end.thread, %for.cond13.preheader, %for.cond44.preheader
  %call6235237239 = phi i8* [ %call6, %for.cond44.preheader ], [ %call6, %for.cond13.preheader ], [ %call6233, %for.end.thread ], [ %call6, %for.end96 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1829, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.label(metadata !1833), !dbg !1869
  tail call void @free(i8* noundef nonnull %call6235237239) #20, !dbg !1969
  br label %if.end104, !dbg !1969

if.end104:                                        ; preds = %clean_up.thread, %if.then103
  %rval.0194 = phi i32 [ 1, %clean_up.thread ], [ 0, %if.then103 ]
  %call105 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call1), !dbg !1971
  br label %cleanup, !dbg !1972

cleanup:                                          ; preds = %if.end104, %if.then
  %retval.0 = phi i32 [ %rval.0194, %if.end104 ], [ 0, %if.then ], !dbg !1834
  ret i32 %retval.0, !dbg !1973
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @putdist(i8* noundef %fname, %struct.molecule_t* noundef %mol, i8* noundef %aexp1, i8* noundef %aexp2) local_unnamed_addr #0 !dbg !1974 {
entry:
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1978, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1979, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* %aexp1, metadata !1980, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* %aexp2, metadata !1981, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32 0, metadata !1994, metadata !DIExpression()), !dbg !1996
  %tobool.not = icmp eq %struct.molecule_t* %mol, null, !dbg !1997
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1999

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2000, !tbaa !372
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %0) #21, !dbg !2002
  br label %cleanup, !dbg !2003

if.end:                                           ; preds = %entry
  tail call void @select_atoms(%struct.molecule_t* noundef nonnull %mol, i8* noundef %aexp1) #20, !dbg !2004
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !2005
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1983, metadata !DIExpression()), !dbg !1996
  %sp1.0229 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !2007, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.0229, metadata !1983, metadata !DIExpression()), !dbg !1996
  %tobool1.not230 = icmp eq %struct.strand_t* %sp1.0229, null, !dbg !2008
  br i1 %tobool1.not230, label %for.end29, label %for.body, !dbg !2008

for.body:                                         ; preds = %if.end, %for.inc28
  %sp1.0231 = phi %struct.strand_t* [ %sp1.0, %for.inc28 ], [ %sp1.0229, %if.end ]
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.0231, i64 0, i32 2, !dbg !2009
  %2 = load i32, i32* %s_attr, align 4, !dbg !2012, !tbaa !2013
  %and = and i32 %2, -3, !dbg !2012
  %and3 = shl i32 %2, 1, !dbg !2014
  %3 = and i32 %and3, 2, !dbg !2014
  %or = or i32 %3, %and, !dbg !2015
  store i32 %or, i32* %s_attr, align 4, !dbg !2015, !tbaa !2013
  call void @llvm.dbg.value(metadata i32 0, metadata !1989, metadata !DIExpression()), !dbg !1996
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.0231, i64 0, i32 5
  %4 = load i32, i32* %s_nresidues, align 8, !tbaa !1242
  call void @llvm.dbg.value(metadata i32 0, metadata !1989, metadata !DIExpression()), !dbg !1996
  %cmp227 = icmp sgt i32 %4, 0, !dbg !2016
  br i1 %cmp227, label %for.body7.lr.ph, label %for.inc28, !dbg !2019

for.body7.lr.ph:                                  ; preds = %for.body
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.0231, i64 0, i32 7
  %5 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !tbaa !753
  %wide.trip.count = zext i32 %4 to i64, !dbg !2016
  br label %for.body7, !dbg !2019

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc25
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.inc25 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1989, metadata !DIExpression()), !dbg !1996
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %5, i64 %indvars.iv, !dbg !2020
  %6 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !2020, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %6, metadata !1984, metadata !DIExpression()), !dbg !1996
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 6, !dbg !2022
  %7 = load i32, i32* %r_attr, align 8, !dbg !2023, !tbaa !2024
  %and8 = and i32 %7, -3, !dbg !2023
  %and10 = shl i32 %7, 1, !dbg !2025
  %8 = and i32 %and10, 2, !dbg !2025
  %or14 = or i32 %8, %and8, !dbg !2026
  store i32 %or14, i32* %r_attr, align 8, !dbg !2026, !tbaa !2024
  call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1986, metadata !DIExpression()), !dbg !1996
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 15
  %9 = load i32, i32* %r_natoms, align 8, !tbaa !715
  call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1986, metadata !DIExpression()), !dbg !1996
  %cmp16224 = icmp sgt i32 %9, 0, !dbg !2027
  br i1 %cmp16224, label %for.body17.preheader, label %for.inc25, !dbg !2030

for.body17.preheader:                             ; preds = %for.body7
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 17, !dbg !2031
  %10 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !dbg !2031, !tbaa !1459
  call void @llvm.dbg.value(metadata %struct.atom_t* %10, metadata !1986, metadata !DIExpression()), !dbg !1996
  br label %for.body17, !dbg !2030

for.body17:                                       ; preds = %for.body17.preheader, %for.body17
  %a1.0226 = phi i32 [ %inc, %for.body17 ], [ 0, %for.body17.preheader ]
  %ap1.0225 = phi %struct.atom_t* [ %incdec.ptr, %for.body17 ], [ %10, %for.body17.preheader ]
  call void @llvm.dbg.value(metadata i32 %a1.0226, metadata !1991, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap1.0225, metadata !1986, metadata !DIExpression()), !dbg !1996
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap1.0225, i64 0, i32 2, !dbg !2032
  %11 = load i32, i32* %a_attr, align 8, !dbg !2034, !tbaa !798
  %and18 = and i32 %11, -3, !dbg !2034
  %and20 = shl i32 %11, 1, !dbg !2035
  %12 = and i32 %and20, 2, !dbg !2035
  %or24 = or i32 %12, %and18, !dbg !2036
  store i32 %or24, i32* %a_attr, align 8, !dbg !2036, !tbaa !798
  %inc = add nuw nsw i32 %a1.0226, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1991, metadata !DIExpression()), !dbg !1996
  %incdec.ptr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap1.0225, i64 1, !dbg !2038
  call void @llvm.dbg.value(metadata %struct.atom_t* %incdec.ptr, metadata !1986, metadata !DIExpression()), !dbg !1996
  %exitcond.not = icmp eq i32 %inc, %9, !dbg !2027
  br i1 %exitcond.not, label %for.inc25, label %for.body17, !dbg !2030, !llvm.loop !2039

for.inc25:                                        ; preds = %for.body17, %for.body7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1989, metadata !DIExpression()), !dbg !1996
  %exitcond262.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2016
  br i1 %exitcond262.not, label %for.inc28, label %for.body7, !dbg !2019, !llvm.loop !2042

for.inc28:                                        ; preds = %for.inc25, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.0231, i64 0, i32 4, !dbg !2044
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1983, metadata !DIExpression()), !dbg !1996
  %sp1.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !2007, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.0, metadata !1983, metadata !DIExpression()), !dbg !1996
  %tobool1.not = icmp eq %struct.strand_t* %sp1.0, null, !dbg !2008
  br i1 %tobool1.not, label %for.end29, label %for.body, !dbg !2008, !llvm.loop !2045

for.end29:                                        ; preds = %for.inc28, %if.end
  tail call void @select_atoms(%struct.molecule_t* noundef nonnull %mol, i8* noundef %aexp2) #20, !dbg !2047
  call void @llvm.dbg.value(metadata i32 0, metadata !1988, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1983, metadata !DIExpression()), !dbg !1996
  %sp1.1232 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !2048, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.1232, metadata !1983, metadata !DIExpression()), !dbg !1996
  %tobool32.not233 = icmp eq %struct.strand_t* %sp1.1232, null, !dbg !2050
  br i1 %tobool32.not233, label %for.end37, label %for.body33, !dbg !2050

for.body33:                                       ; preds = %for.end29, %for.body33
  %sp1.1235 = phi %struct.strand_t* [ %sp1.1, %for.body33 ], [ %sp1.1232, %for.end29 ]
  %tr.0234 = phi i32 [ %add, %for.body33 ], [ 0, %for.end29 ]
  call void @llvm.dbg.value(metadata i32 %tr.0234, metadata !1988, metadata !DIExpression()), !dbg !1996
  %s_nresidues34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.1235, i64 0, i32 5, !dbg !2051
  %13 = load i32, i32* %s_nresidues34, align 8, !dbg !2051, !tbaa !1242
  %add = add nsw i32 %13, %tr.0234, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %add, metadata !1988, metadata !DIExpression()), !dbg !1996
  %s_next36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.1235, i64 0, i32 4, !dbg !2054
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1983, metadata !DIExpression()), !dbg !1996
  %sp1.1 = load %struct.strand_t*, %struct.strand_t** %s_next36, align 8, !dbg !2048, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.1, metadata !1983, metadata !DIExpression()), !dbg !1996
  %tobool32.not = icmp eq %struct.strand_t* %sp1.1, null, !dbg !2050
  br i1 %tobool32.not, label %for.end37, label %for.body33, !dbg !2050, !llvm.loop !2055

for.end37:                                        ; preds = %for.body33, %for.end29
  %tr.0.lcssa = phi i32 [ 0, %for.end29 ], [ %add, %for.body33 ], !dbg !2048
  %conv = sext i32 %tr.0.lcssa to i64, !dbg !2057
  %mul = shl nsw i64 %conv, 3, !dbg !2059
  %call38 = tail call noalias i8* @malloc(i64 noundef %mul) #20, !dbg !2060
  %14 = bitcast i8* %call38 to %struct.residue_t**, !dbg !2061
  call void @llvm.dbg.value(metadata %struct.residue_t** %14, metadata !1993, metadata !DIExpression()), !dbg !1996
  %cmp39 = icmp eq i8* %call38, null, !dbg !2062
  br i1 %cmp39, label %clean_up.thread, label %for.cond45.preheader, !dbg !2063

for.cond45.preheader:                             ; preds = %for.end37
  call void @llvm.dbg.value(metadata i32 0, metadata !1990, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.1232, metadata !1983, metadata !DIExpression()), !dbg !1996
  br i1 %tobool32.not233, label %for.end64, label %for.cond48.preheader, !dbg !2064

clean_up.thread:                                  ; preds = %for.end37
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2066, !tbaa !372
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %15) #21, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %cnt.6, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.label(metadata !1995), !dbg !2069
  br label %cleanup, !dbg !2070

for.cond48.preheader:                             ; preds = %for.cond45.preheader, %for.inc62
  %sp1.2243 = phi %struct.strand_t* [ %sp1.2, %for.inc62 ], [ %sp1.1232, %for.cond45.preheader ]
  %r2.0242 = phi i32 [ %r2.1.lcssa, %for.inc62 ], [ 0, %for.cond45.preheader ]
  call void @llvm.dbg.value(metadata i32 %r2.0242, metadata !1990, metadata !DIExpression()), !dbg !1996
  %s_nresidues49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.2243, i64 0, i32 5
  %17 = load i32, i32* %s_nresidues49, align 8, !tbaa !1242
  call void @llvm.dbg.value(metadata i32 0, metadata !1989, metadata !DIExpression()), !dbg !1996
  %cmp50236 = icmp sgt i32 %17, 0, !dbg !2071
  br i1 %cmp50236, label %for.body52.lr.ph, label %for.inc62, !dbg !2076

for.body52.lr.ph:                                 ; preds = %for.cond48.preheader
  %s_residues53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.2243, i64 0, i32 7
  %18 = bitcast %struct.residue_t*** %s_residues53 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !753
  %20 = sext i32 %r2.0242 to i64, !dbg !2076
  %21 = shl nsw i64 %20, 3, !dbg !2076
  %scevgep = getelementptr i8, i8* %call38, i64 %21, !dbg !2076
  %22 = zext i32 %17 to i64, !dbg !2076
  %23 = shl nuw nsw i64 %22, 3, !dbg !2076
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %scevgep, i8* align 8 %19, i64 %23, i1 false), !dbg !2077, !tbaa !372
  call void @llvm.dbg.value(metadata i32 undef, metadata !1989, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32 undef, metadata !1990, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1996
  %24 = add i32 %r2.0242, %17, !dbg !2076
  br label %for.inc62, !dbg !2078

for.inc62:                                        ; preds = %for.body52.lr.ph, %for.cond48.preheader
  %r2.1.lcssa = phi i32 [ %r2.0242, %for.cond48.preheader ], [ %24, %for.body52.lr.ph ], !dbg !2079
  %s_next63 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.2243, i64 0, i32 4, !dbg !2078
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1983, metadata !DIExpression()), !dbg !1996
  %sp1.2 = load %struct.strand_t*, %struct.strand_t** %s_next63, align 8, !dbg !2079, !tbaa !372
  call void @llvm.dbg.value(metadata i32 %r2.1.lcssa, metadata !1990, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.2, metadata !1983, metadata !DIExpression()), !dbg !1996
  %tobool46.not = icmp eq %struct.strand_t* %sp1.2, null, !dbg !2064
  br i1 %tobool46.not, label %for.end64, label %for.cond48.preheader, !dbg !2064, !llvm.loop !2080

for.end64:                                        ; preds = %for.inc62, %for.cond45.preheader
  %call65 = tail call %struct._IO_FILE* @fopen(i8* noundef %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2082
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call65, metadata !1982, metadata !DIExpression()), !dbg !1996
  %cmp66 = icmp eq %struct._IO_FILE* %call65, null, !dbg !2084
  br i1 %cmp66, label %if.then68, label %for.cond71.preheader, !dbg !2085

for.cond71.preheader:                             ; preds = %for.end64
  call void @llvm.dbg.value(metadata i32 0, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32 0, metadata !1989, metadata !DIExpression()), !dbg !1996
  %cmp72256 = icmp sgt i32 %tr.0.lcssa, 0, !dbg !2086
  br i1 %cmp72256, label %for.body74.us.preheader, label %if.then129, !dbg !2089

for.body74.us.preheader:                          ; preds = %for.cond71.preheader
  %wide.trip.count286 = zext i32 %tr.0.lcssa to i64, !dbg !2086
  br label %for.body74.us, !dbg !2089

for.body74.us:                                    ; preds = %for.body74.us.preheader, %for.inc125.us
  %indvars.iv283 = phi i64 [ 0, %for.body74.us.preheader ], [ %indvars.iv.next284, %for.inc125.us ]
  %cnt.0258.us = phi i32 [ 0, %for.body74.us.preheader ], [ %cnt.1.lcssa.us, %for.inc125.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.0258.us, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %indvars.iv283, metadata !1989, metadata !DIExpression()), !dbg !1996
  %arrayidx76.us = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %14, i64 %indvars.iv283, !dbg !2090
  %25 = load %struct.residue_t*, %struct.residue_t** %arrayidx76.us, align 8, !dbg !2090, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !1984, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()), !dbg !1996
  %r_natoms78.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 15
  %r_atoms82.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 17
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1, !dbg !2092
  %r_resname.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 4
  %26 = load i32, i32* %r_natoms78.us, align 8, !dbg !2093, !tbaa !715
  %cmp79252.us = icmp sgt i32 %26, 0, !dbg !2096
  br i1 %cmp79252.us, label %for.body81.us.us.preheader, label %for.inc125.us, !dbg !2097

for.body81.us.us.preheader:                       ; preds = %for.body74.us
  %27 = trunc i64 %indvars.iv.next284 to i32
  br label %for.body81.us.us, !dbg !2097

for.inc125.us:                                    ; preds = %for.inc122.us.us, %for.body74.us
  %cnt.1.lcssa.us = phi i32 [ %cnt.0258.us, %for.body74.us ], [ %cnt.5.us.us, %for.inc122.us.us ], !dbg !2098
  call void @llvm.dbg.value(metadata i32 %cnt.1.lcssa.us, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next284, metadata !1989, metadata !DIExpression()), !dbg !1996
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286, !dbg !2086
  br i1 %exitcond287.not, label %if.then129, label %for.body74.us, !dbg !2089, !llvm.loop !2099

for.body81.us.us:                                 ; preds = %for.body81.us.us.preheader, %for.inc122.us.us
  %28 = phi i32 [ %26, %for.body81.us.us.preheader ], [ %45, %for.inc122.us.us ]
  %indvars.iv280 = phi i64 [ 0, %for.body81.us.us.preheader ], [ %indvars.iv.next281, %for.inc122.us.us ]
  %cnt.1254.us.us = phi i32 [ %cnt.0258.us, %for.body81.us.us.preheader ], [ %cnt.5.us.us, %for.inc122.us.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.1254.us.us, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %indvars.iv280, metadata !1991, metadata !DIExpression()), !dbg !1996
  %29 = load %struct.atom_t*, %struct.atom_t** %r_atoms82.us, align 8, !dbg !2101, !tbaa !1459
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %29, i64 %indvars.iv280), metadata !1986, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1996
  %a_attr85.us.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %29, i64 %indvars.iv280, i32 2, !dbg !2103
  %30 = load i32, i32* %a_attr85.us.us, align 8, !dbg !2103, !tbaa !798
  %and86.us.us = and i32 %30, 2, !dbg !2105
  %tobool87.not.us.us = icmp eq i32 %and86.us.us, 0, !dbg !2105
  br i1 %tobool87.not.us.us, label %for.inc122.us.us, label %for.cond89.preheader.us.us, !dbg !2106

for.body92.us.us:                                 ; preds = %for.cond89.preheader.us.us, %for.inc118.us.us
  %indvars.iv275 = phi i64 [ 0, %for.cond89.preheader.us.us ], [ %indvars.iv.next276, %for.inc118.us.us ]
  %cnt.2250.us.us = phi i32 [ %cnt.1254.us.us, %for.cond89.preheader.us.us ], [ %cnt.3.lcssa.us.us, %for.inc118.us.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.2250.us.us, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %indvars.iv275, metadata !1990, metadata !DIExpression()), !dbg !1996
  %arrayidx94.us.us = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %14, i64 %indvars.iv275, !dbg !2107
  %31 = load %struct.residue_t*, %struct.residue_t** %arrayidx94.us.us, align 8, !dbg !2107, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %31, metadata !1985, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32 0, metadata !1992, metadata !DIExpression()), !dbg !1996
  %r_natoms96.us.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 15
  %r_atoms100.us.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 17
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1, !dbg !2112
  %r_resname109.us.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 4
  %32 = load i32, i32* %r_natoms96.us.us, align 8, !dbg !2113, !tbaa !715
  %cmp97244.us.us = icmp sgt i32 %32, 0, !dbg !2116
  br i1 %cmp97244.us.us, label %for.body99.us.us.preheader, label %for.inc118.us.us, !dbg !2117

for.body99.us.us.preheader:                       ; preds = %for.body92.us.us
  %33 = trunc i64 %indvars.iv.next276 to i32
  br label %for.body99.us.us, !dbg !2117

for.inc118.us.us:                                 ; preds = %for.inc115.us.us, %for.body92.us.us
  %cnt.3.lcssa.us.us = phi i32 [ %cnt.2250.us.us, %for.body92.us.us ], [ %cnt.4.us.us, %for.inc115.us.us ], !dbg !2118
  call void @llvm.dbg.value(metadata i32 %cnt.3.lcssa.us.us, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next276, metadata !1990, metadata !DIExpression()), !dbg !1996
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count286, !dbg !2119
  br i1 %exitcond279.not, label %for.inc122.us.us.loopexit, label %for.body92.us.us, !dbg !2120, !llvm.loop !2121

for.body99.us.us:                                 ; preds = %for.body99.us.us.preheader, %for.inc115.us.us
  %34 = phi i32 [ %32, %for.body99.us.us.preheader ], [ %43, %for.inc115.us.us ]
  %indvars.iv272 = phi i64 [ 0, %for.body99.us.us.preheader ], [ %indvars.iv.next273, %for.inc115.us.us ]
  %cnt.3246.us.us = phi i32 [ %cnt.2250.us.us, %for.body99.us.us.preheader ], [ %cnt.4.us.us, %for.inc115.us.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.3246.us.us, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %indvars.iv272, metadata !1992, metadata !DIExpression()), !dbg !1996
  %35 = load %struct.atom_t*, %struct.atom_t** %r_atoms100.us.us, align 8, !dbg !2123, !tbaa !1459
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %35, i64 %indvars.iv272), metadata !1987, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1996
  %a_attr103.us.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i64 %indvars.iv272, i32 2, !dbg !2125
  %36 = load i32, i32* %a_attr103.us.us, align 8, !dbg !2125, !tbaa !798
  %and104.us.us = and i32 %36, 1, !dbg !2127
  %tobool105.not.us.us = icmp eq i32 %and104.us.us, 0, !dbg !2127
  br i1 %tobool105.not.us.us, label %for.inc115.us.us, label %if.then106.us.us, !dbg !2128

if.then106.us.us:                                 ; preds = %for.body99.us.us
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %35, i64 %indvars.iv272), metadata !1987, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1996
  %37 = load i8*, i8** %r_resname.us, align 8, !dbg !2129, !tbaa !707
  %38 = load i8*, i8** %a_atomname.us.us, align 8, !dbg !2131, !tbaa !489
  %39 = load i8*, i8** %r_resname109.us.us, align 8, !dbg !2132, !tbaa !707
  %a_atomname110.us.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i64 %indvars.iv272, i32 0, !dbg !2133
  %40 = load i8*, i8** %a_atomname110.us.us, align 8, !dbg !2133, !tbaa !489
  %arrayidx84.idx.val.us.us = load double, double* %arrayidx84.idx.us.us, align 8, !dbg !2134, !tbaa !669
  %arrayidx84.idx219.val.us.us = load double, double* %arrayidx84.idx219.us.us, align 8, !dbg !2134, !tbaa !669
  %arrayidx84.idx220.val.us.us = load double, double* %arrayidx84.idx220.us.us, align 8, !dbg !2134, !tbaa !669
  %arrayidx102.idx.us.us = getelementptr %struct.atom_t, %struct.atom_t* %35, i64 %indvars.iv272, i32 17, i64 0, !dbg !2134
  %arrayidx102.idx.val.us.us = load double, double* %arrayidx102.idx.us.us, align 8, !dbg !2134, !tbaa !669
  %arrayidx102.idx221.us.us = getelementptr %struct.atom_t, %struct.atom_t* %35, i64 %indvars.iv272, i32 17, i64 1, !dbg !2134
  %arrayidx102.idx221.val.us.us = load double, double* %arrayidx102.idx221.us.us, align 8, !dbg !2134, !tbaa !669
  %arrayidx102.idx222.us.us = getelementptr %struct.atom_t, %struct.atom_t* %35, i64 %indvars.iv272, i32 17, i64 2, !dbg !2134
  %arrayidx102.idx222.val.us.us = load double, double* %arrayidx102.idx222.us.us, align 8, !dbg !2134, !tbaa !669
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2135, metadata !DIExpression()) #20, !dbg !2144
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2140, metadata !DIExpression()) #20, !dbg !2144
  %sub.i.us.us = fsub double %arrayidx84.idx.val.us.us, %arrayidx102.idx.val.us.us, !dbg !2146
  call void @llvm.dbg.value(metadata double %sub.i.us.us, metadata !2141, metadata !DIExpression()) #20, !dbg !2144
  %sub7.i.us.us = fsub double %arrayidx84.idx219.val.us.us, %arrayidx102.idx221.val.us.us, !dbg !2147
  call void @llvm.dbg.value(metadata double %sub7.i.us.us, metadata !2142, metadata !DIExpression()) #20, !dbg !2144
  %sub12.i.us.us = fsub double %arrayidx84.idx220.val.us.us, %arrayidx102.idx222.val.us.us, !dbg !2148
  call void @llvm.dbg.value(metadata double %sub12.i.us.us, metadata !2143, metadata !DIExpression()) #20, !dbg !2144
  %mul13.i.us.us = fmul double %sub7.i.us.us, %sub7.i.us.us, !dbg !2149
  %41 = tail call double @llvm.fmuladd.f64(double %sub.i.us.us, double %sub.i.us.us, double %mul13.i.us.us) #20, !dbg !2150
  %42 = tail call double @llvm.fmuladd.f64(double %sub12.i.us.us, double %sub12.i.us.us, double %41) #20, !dbg !2151
  %call.i.us.us = tail call double @sqrt(double noundef %42) #20, !dbg !2152
  %call112.us.us = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %call65, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 noundef %27, i8* noundef %37, i8* noundef %38, i32 noundef %33, i8* noundef %39, i8* noundef %40, double noundef %call.i.us.us), !dbg !2153
  %inc113.us.us = add nsw i32 %cnt.3246.us.us, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %inc113.us.us, metadata !1994, metadata !DIExpression()), !dbg !1996
  %.pre = load i32, i32* %r_natoms96.us.us, align 8, !dbg !2113, !tbaa !715
  br label %for.inc115.us.us, !dbg !2155

for.inc115.us.us:                                 ; preds = %if.then106.us.us, %for.body99.us.us
  %43 = phi i32 [ %.pre, %if.then106.us.us ], [ %34, %for.body99.us.us ], !dbg !2113
  %cnt.4.us.us = phi i32 [ %inc113.us.us, %if.then106.us.us ], [ %cnt.3246.us.us, %for.body99.us.us ], !dbg !2118
  call void @llvm.dbg.value(metadata i32 %cnt.4.us.us, metadata !1994, metadata !DIExpression()), !dbg !1996
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next273, metadata !1992, metadata !DIExpression()), !dbg !1996
  %44 = sext i32 %43 to i64, !dbg !2116
  %cmp97.us.us = icmp slt i64 %indvars.iv.next273, %44, !dbg !2116
  br i1 %cmp97.us.us, label %for.body99.us.us, label %for.inc118.us.us, !dbg !2117, !llvm.loop !2157

for.inc122.us.us.loopexit:                        ; preds = %for.inc118.us.us
  %.pre288 = load i32, i32* %r_natoms78.us, align 8, !dbg !2093, !tbaa !715
  br label %for.inc122.us.us, !dbg !2159

for.inc122.us.us:                                 ; preds = %for.inc122.us.us.loopexit, %for.body81.us.us
  %45 = phi i32 [ %28, %for.body81.us.us ], [ %.pre288, %for.inc122.us.us.loopexit ], !dbg !2093
  %cnt.5.us.us = phi i32 [ %cnt.1254.us.us, %for.body81.us.us ], [ %cnt.3.lcssa.us.us, %for.inc122.us.us.loopexit ], !dbg !2098
  call void @llvm.dbg.value(metadata i32 %cnt.5.us.us, metadata !1994, metadata !DIExpression()), !dbg !1996
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next281, metadata !1991, metadata !DIExpression()), !dbg !1996
  %46 = sext i32 %45 to i64, !dbg !2096
  %cmp79.us.us = icmp slt i64 %indvars.iv.next281, %46, !dbg !2096
  br i1 %cmp79.us.us, label %for.body81.us.us, label %for.inc125.us, !dbg !2097, !llvm.loop !2160

for.cond89.preheader.us.us:                       ; preds = %for.body81.us.us
  %a_atomname.us.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %29, i64 %indvars.iv280, i32 0
  %arrayidx84.idx.us.us = getelementptr %struct.atom_t, %struct.atom_t* %29, i64 %indvars.iv280, i32 17, i64 0
  %arrayidx84.idx219.us.us = getelementptr %struct.atom_t, %struct.atom_t* %29, i64 %indvars.iv280, i32 17, i64 1
  %arrayidx84.idx220.us.us = getelementptr %struct.atom_t, %struct.atom_t* %29, i64 %indvars.iv280, i32 17, i64 2
  call void @llvm.dbg.value(metadata i32 %cnt.1254.us.us, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32 0, metadata !1990, metadata !DIExpression()), !dbg !1996
  br label %for.body92.us.us, !dbg !2120

if.then68:                                        ; preds = %for.end64
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2162, !tbaa !372
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* noundef %fname) #21, !dbg !2164
  br label %if.then129, !dbg !2165

if.then129:                                       ; preds = %for.inc125.us, %if.then68, %for.cond71.preheader
  %cnt.6 = phi i32 [ 0, %if.then68 ], [ 0, %for.cond71.preheader ], [ %cnt.1.lcssa.us, %for.inc125.us ], !dbg !1996
  call void @llvm.dbg.value(metadata i32 %cnt.6, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.label(metadata !1995), !dbg !2069
  tail call void @free(i8* noundef nonnull %call38) #20, !dbg !2166
  br label %cleanup, !dbg !2166

cleanup:                                          ; preds = %clean_up.thread, %if.then129, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cnt.6, %if.then129 ], [ 0, %clean_up.thread ], !dbg !1996
  ret i32 %retval.0, !dbg !2168
}

declare !dbg !2169 dso_local void @select_atoms(%struct.molecule_t* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @putmatrix(i8* noundef %fname, [4 x double]* nocapture noundef readonly %mat) local_unnamed_addr #6 !dbg !2172 {
entry:
  call void @llvm.dbg.value(metadata i8* %fname, metadata !2178, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata [4 x double]* %mat, metadata !2179, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !2180, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i32 0, metadata !2183, metadata !DIExpression()), !dbg !2185
  %cmp = icmp eq i8* %fname, null, !dbg !2186
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2188

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %fname, align 1, !dbg !2189, !tbaa !366
  %cmp1 = icmp eq i8 %0, 0, !dbg !2190
  br i1 %cmp1, label %if.then, label %if.else, !dbg !2191

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2192, !tbaa !372
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %1) #21, !dbg !2194
  call void @llvm.dbg.value(metadata i32 1, metadata !2183, metadata !DIExpression()), !dbg !2185
  br label %if.end32, !dbg !2195

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %fname, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #19, !dbg !2196
  %tobool.not = icmp eq i32 %call3, 0, !dbg !2196
  br i1 %tobool.not, label %if.then4, label %if.else5, !dbg !2198

if.then4:                                         ; preds = %if.else
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2199, !tbaa !372
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !2180, metadata !DIExpression()), !dbg !2185
  br label %if.end12, !dbg !2200

if.else5:                                         ; preds = %if.else
  %call6 = tail call %struct._IO_FILE* @fopen(i8* noundef nonnull %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2201
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call6, metadata !2180, metadata !DIExpression()), !dbg !2185
  %cmp7 = icmp eq %struct._IO_FILE* %call6, null, !dbg !2203
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !2204

if.then9:                                         ; preds = %if.else5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2205, !tbaa !372
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* noundef nonnull %fname) #21, !dbg !2207
  call void @llvm.dbg.value(metadata i32 1, metadata !2183, metadata !DIExpression()), !dbg !2185
  br label %if.end32, !dbg !2208

if.end12:                                         ; preds = %if.then4, %if.else5
  %fp.0 = phi %struct._IO_FILE* [ %call6, %if.else5 ], [ %3, %if.then4 ], !dbg !2209
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.0, metadata !2180, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i32 0, metadata !2181, metadata !DIExpression()), !dbg !2185
  br label %for.cond15.preheader, !dbg !2210

for.cond15.preheader:                             ; preds = %if.end12, %for.end
  %indvars.iv58 = phi i64 [ 0, %if.end12 ], [ %indvars.iv.next59, %for.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv58, metadata !2181, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i32 0, metadata !2182, metadata !DIExpression()), !dbg !2185
  br label %for.body18, !dbg !2212

for.body18:                                       ; preds = %for.cond15.preheader, %for.body18
  %indvars.iv = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next, %for.body18 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2182, metadata !DIExpression()), !dbg !2185
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 %indvars.iv58, i64 %indvars.iv, !dbg !2216
  %5 = load double, double* %arrayidx20, align 8, !dbg !2216, !tbaa !669
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %5), !dbg !2218
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2182, metadata !DIExpression()), !dbg !2185
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2220
  br i1 %exitcond.not, label %for.end, label %for.body18, !dbg !2212, !llvm.loop !2221

for.end:                                          ; preds = %for.body18
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0), !dbg !2223
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next59, metadata !2181, metadata !DIExpression()), !dbg !2185
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, 4, !dbg !2225
  br i1 %exitcond61.not, label %CLEAN_UP, label %for.cond15.preheader, !dbg !2210, !llvm.loop !2226

CLEAN_UP:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !2183, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.0, metadata !2180, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.label(metadata !2184), !dbg !2228
  %cmp26.not = icmp eq %struct._IO_FILE* %fp.0, null, !dbg !2229
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp28.not = icmp eq %struct._IO_FILE* %fp.0, %6
  %or.cond = select i1 %cmp26.not, i1 true, i1 %cmp28.not, !dbg !2231
  br i1 %or.cond, label %if.end32, label %if.then30, !dbg !2231

if.then30:                                        ; preds = %CLEAN_UP
  %call31 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %fp.0), !dbg !2232
  br label %if.end32, !dbg !2232

if.end32:                                         ; preds = %if.then9, %if.then, %if.then30, %CLEAN_UP
  %err.054 = phi i32 [ 0, %if.then30 ], [ 0, %CLEAN_UP ], [ 1, %if.then ], [ 1, %if.then9 ]
  ret i32 %err.054, !dbg !2233
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare dso_local i8* @strcpy(i8* noalias noundef returned writeonly, i8* noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @initres() unnamed_addr #0 !dbg !2234 {
entry:
  tail call void @NAB_initres(%struct.residue_t* noundef nonnull @res, i32 noundef 0) #20, !dbg !2235
  %0 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2236, !tbaa !707
  %cmp = icmp eq i8* %0, null, !dbg !2238
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2239

if.then:                                          ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #20, !dbg !2240
  store i8* %call, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2242, !tbaa !707
  %cmp1 = icmp eq i8* %call, null, !dbg !2243
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2245

if.then2:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2246, !tbaa !372
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %1) #21, !dbg !2248
  tail call void @exit(i32 noundef 1) #23, !dbg !2249
  unreachable, !dbg !2249

if.end4:                                          ; preds = %if.then, %entry
  %3 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2250, !tbaa !710
  %cmp5 = icmp eq i8* %3, null, !dbg !2252
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !2253

if.then6:                                         ; preds = %if.end4
  %call7 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #20, !dbg !2254
  store i8* %call7, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2256, !tbaa !710
  %cmp8 = icmp eq i8* %call7, null, !dbg !2257
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !2259

if.then9:                                         ; preds = %if.then6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2260, !tbaa !372
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %4) #21, !dbg !2262
  tail call void @exit(i32 noundef 1) #23, !dbg !2263
  unreachable, !dbg !2263

if.end12:                                         ; preds = %if.then6, %if.end4
  %6 = load i32, i32* @n_atab, align 4, !dbg !2264, !tbaa !523
  store i32 %6, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2265, !tbaa !715
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2266, !tbaa !1459
  ret void, !dbg !2267
}

declare !dbg !2268 dso_local %struct.molecule_t* @newmolecule() local_unnamed_addr #4

declare !dbg !2271 dso_local i8* @ggets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare dso_local i8* @strncpy(i8* noalias noundef returned writeonly, i8* noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @makebonds() unnamed_addr #6 !dbg !2274 {
entry:
  call void @llvm.dbg.value(metadata %struct.residue_t* @res, metadata !2278, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()), !dbg !2286
  %0 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !tbaa !715
  %1 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()), !dbg !2286
  %cmp8 = icmp sgt i32 %0, 0, !dbg !2287
  br i1 %cmp8, label %for.body.preheader, label %for.end130, !dbg !2290

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %0 to i64, !dbg !2287
  br label %for.body, !dbg !2290

for.cond1.preheader:                              ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()), !dbg !2286
  %cmp314 = icmp sgt i32 %0, 1, !dbg !2291
  br i1 %cmp314, label %for.body4.lr.ph, label %for.end130, !dbg !2294

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %call = tail call i16** @__ctype_b_loc() #24, !dbg !2286
  br label %for.body4, !dbg !2294

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2279, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %1, i64 %indvars.iv), metadata !2281, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2286
  %a_nconnect = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i64 %indvars.iv, i32 3, !dbg !2295
  store i32 0, i32* %a_nconnect, align 4, !dbg !2297, !tbaa !2298
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2279, metadata !DIExpression()), !dbg !2286
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2287
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body, !dbg !2290, !llvm.loop !2300

for.cond1.loopexit:                               ; preds = %for.inc125, %if.end
  %2 = phi i32 [ %4, %if.end ], [ %28, %for.inc125 ], !dbg !2302
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next23, metadata !2279, metadata !DIExpression()), !dbg !2286
  %sub = add nsw i32 %2, -1, !dbg !2303
  %3 = sext i32 %sub to i64, !dbg !2291
  %cmp3 = icmp slt i64 %indvars.iv.next23, %3, !dbg !2291
  br i1 %cmp3, label %for.cond1.loopexit.for.body4_crit_edge, label %for.end130, !dbg !2294, !llvm.loop !2304

for.cond1.loopexit.for.body4_crit_edge:           ; preds = %for.cond1.loopexit
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !2294
  %.pre = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2306, !tbaa !1459
  br label %for.body4, !dbg !2294

for.body4:                                        ; preds = %for.cond1.loopexit.for.body4_crit_edge, %for.body4.lr.ph
  %4 = phi i32 [ %0, %for.body4.lr.ph ], [ %2, %for.cond1.loopexit.for.body4_crit_edge ]
  %5 = phi %struct.atom_t* [ %1, %for.body4.lr.ph ], [ %.pre, %for.cond1.loopexit.for.body4_crit_edge ], !dbg !2306
  %indvars.iv22 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next23, %for.cond1.loopexit.for.body4_crit_edge ]
  %indvars.iv17 = phi i64 [ 1, %for.body4.lr.ph ], [ %indvars.iv.next18, %for.cond1.loopexit.for.body4_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv22, metadata !2279, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %5, i64 %indvars.iv22), metadata !2281, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2286
  %6 = load i16*, i16** %call, align 8, !dbg !2308, !tbaa !372
  %a_atomname = getelementptr inbounds %struct.atom_t, %struct.atom_t* %5, i64 %indvars.iv22, i32 0, !dbg !2308
  %7 = load i8*, i8** %a_atomname, align 8, !dbg !2308, !tbaa !489
  %8 = load i8, i8* %7, align 1, !dbg !2308, !tbaa !366
  %idxprom8 = sext i8 %8 to i64, !dbg !2308
  %arrayidx9 = getelementptr inbounds i16, i16* %6, i64 %idxprom8, !dbg !2308
  %9 = load i16, i16* %arrayidx9, align 2, !dbg !2308, !tbaa !2310
  %10 = and i16 %9, 2048, !dbg !2308
  %tobool.not = icmp eq i16 %10, 0, !dbg !2308
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2312

if.then:                                          ; preds = %for.body4
  %arrayidx12 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2313
  %11 = load i8, i8* %arrayidx12, align 1, !dbg !2313, !tbaa !366
  call void @llvm.dbg.value(metadata i1 undef, metadata !2283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2286
  br label %if.end, !dbg !2314

if.end:                                           ; preds = %for.body4, %if.then
  %ih1.0.in.in.in = phi i8 [ %11, %if.then ], [ %8, %for.body4 ]
  %ih1.0.in.in = and i8 %ih1.0.in.in.in, -33, !dbg !2315
  %ih1.0.in = icmp eq i8 %ih1.0.in.in, 72, !dbg !2315
  call void @llvm.dbg.value(metadata i1 %ih1.0.in, metadata !2283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2286
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next23, metadata !2280, metadata !DIExpression()), !dbg !2286
  %arrayidx7.idx = getelementptr %struct.atom_t, %struct.atom_t* %5, i64 %indvars.iv22, i32 17, i64 0
  %arrayidx7.idx4 = getelementptr %struct.atom_t, %struct.atom_t* %5, i64 %indvars.iv22, i32 17, i64 1
  %arrayidx7.idx5 = getelementptr %struct.atom_t, %struct.atom_t* %5, i64 %indvars.iv22, i32 17, i64 2
  %a_nconnect104 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %5, i64 %indvars.iv22, i32 3
  %12 = sext i32 %4 to i64, !dbg !2318
  %cmp3410 = icmp slt i64 %indvars.iv.next23, %12, !dbg !2318
  br i1 %cmp3410, label %for.body36.preheader, label %for.cond1.loopexit, !dbg !2320

for.body36.preheader:                             ; preds = %if.end
  %.sink = trunc i64 %indvars.iv22 to i32
  br label %for.body36, !dbg !2321

for.body36:                                       ; preds = %for.body36.preheader, %for.inc125.for.body36_crit_edge
  %13 = phi i16* [ %.pre26, %for.inc125.for.body36_crit_edge ], [ %6, %for.body36.preheader ], !dbg !2323
  %14 = phi %struct.atom_t* [ %.pre25, %for.inc125.for.body36_crit_edge ], [ %5, %for.body36.preheader ], !dbg !2325
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc125.for.body36_crit_edge ], [ %indvars.iv17, %for.body36.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv19, metadata !2280, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %14, i64 %indvars.iv19), metadata !2282, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2286
  %a_atomname41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %14, i64 %indvars.iv19, i32 0, !dbg !2323
  %15 = load i8*, i8** %a_atomname41, align 8, !dbg !2323, !tbaa !489
  %16 = load i8, i8* %15, align 1, !dbg !2323, !tbaa !366
  %idxprom43 = sext i8 %16 to i64, !dbg !2323
  %arrayidx44 = getelementptr inbounds i16, i16* %13, i64 %idxprom43, !dbg !2323
  %17 = load i16, i16* %arrayidx44, align 2, !dbg !2323, !tbaa !2310
  %18 = and i16 %17, 2048, !dbg !2323
  %tobool47.not = icmp eq i16 %18, 0, !dbg !2323
  br i1 %tobool47.not, label %if.end74, label %if.then48, !dbg !2321

if.then48:                                        ; preds = %for.body36
  %arrayidx50 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !2326
  %19 = load i8, i8* %arrayidx50, align 1, !dbg !2326, !tbaa !366
  call void @llvm.dbg.value(metadata i1 undef, metadata !2284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2286
  br label %if.end74, !dbg !2327

if.end74:                                         ; preds = %for.body36, %if.then48
  %ih2.0.in.in.in = phi i8 [ %19, %if.then48 ], [ %16, %for.body36 ]
  %ih2.0.in.in = and i8 %ih2.0.in.in.in, -33, !dbg !2328
  %ih2.0.in = icmp eq i8 %ih2.0.in.in, 72, !dbg !2328
  call void @llvm.dbg.value(metadata i1 %ih2.0.in, metadata !2284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2286
  %arrayidx7.idx.val = load double, double* %arrayidx7.idx, align 8, !dbg !2329, !tbaa !669
  %arrayidx7.idx4.val = load double, double* %arrayidx7.idx4, align 8, !dbg !2329, !tbaa !669
  %arrayidx7.idx5.val = load double, double* %arrayidx7.idx5, align 8, !dbg !2329, !tbaa !669
  %arrayidx39.idx = getelementptr %struct.atom_t, %struct.atom_t* %14, i64 %indvars.iv19, i32 17, i64 0, !dbg !2329
  %arrayidx39.idx.val = load double, double* %arrayidx39.idx, align 8, !dbg !2329, !tbaa !669
  %arrayidx39.idx6 = getelementptr %struct.atom_t, %struct.atom_t* %14, i64 %indvars.iv19, i32 17, i64 1, !dbg !2329
  %arrayidx39.idx6.val = load double, double* %arrayidx39.idx6, align 8, !dbg !2329, !tbaa !669
  %arrayidx39.idx7 = getelementptr %struct.atom_t, %struct.atom_t* %14, i64 %indvars.iv19, i32 17, i64 2, !dbg !2329
  %arrayidx39.idx7.val = load double, double* %arrayidx39.idx7, align 8, !dbg !2329, !tbaa !669
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2135, metadata !DIExpression()) #20, !dbg !2330
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2140, metadata !DIExpression()) #20, !dbg !2330
  %sub.i = fsub double %arrayidx7.idx.val, %arrayidx39.idx.val, !dbg !2332
  call void @llvm.dbg.value(metadata double %sub.i, metadata !2141, metadata !DIExpression()) #20, !dbg !2330
  %sub7.i = fsub double %arrayidx7.idx4.val, %arrayidx39.idx6.val, !dbg !2333
  call void @llvm.dbg.value(metadata double %sub7.i, metadata !2142, metadata !DIExpression()) #20, !dbg !2330
  %sub12.i = fsub double %arrayidx7.idx5.val, %arrayidx39.idx7.val, !dbg !2334
  call void @llvm.dbg.value(metadata double %sub12.i, metadata !2143, metadata !DIExpression()) #20, !dbg !2330
  %mul13.i = fmul double %sub7.i, %sub7.i, !dbg !2335
  %20 = tail call double @llvm.fmuladd.f64(double %sub.i, double %sub.i, double %mul13.i) #20, !dbg !2336
  %21 = tail call double @llvm.fmuladd.f64(double %sub12.i, double %sub12.i, double %20) #20, !dbg !2337
  %call.i = tail call double @sqrt(double noundef %21) #20, !dbg !2338
  call void @llvm.dbg.value(metadata double %call.i, metadata !2285, metadata !DIExpression()), !dbg !2286
  %or.cond = select i1 %ih1.0.in, i1 true, i1 %ih2.0.in, !dbg !2339
  br i1 %or.cond, label %if.then78, label %if.else100, !dbg !2339

if.then78:                                        ; preds = %if.end74
  %cmp79 = fcmp ugt double %call.i, 1.200000e+00, !dbg !2341
  br i1 %cmp79, label %for.inc125, label %if.then81, !dbg !2344

if.then81:                                        ; preds = %if.then78
  %22 = load i32, i32* %a_nconnect104, align 4, !dbg !2345, !tbaa !2298
  %cmp83 = icmp slt i32 %22, 8, !dbg !2348
  br i1 %cmp83, label %land.lhs.true, label %for.inc125, !dbg !2349

land.lhs.true:                                    ; preds = %if.then81
  %a_nconnect85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %14, i64 %indvars.iv19, i32 3, !dbg !2350
  %23 = load i32, i32* %a_nconnect85, align 4, !dbg !2350, !tbaa !2298
  %cmp86 = icmp slt i32 %23, 8, !dbg !2351
  br i1 %cmp86, label %for.inc125.sink.split, label %for.inc125, !dbg !2352

if.else100:                                       ; preds = %if.end74
  %cmp101 = fcmp ugt double %call.i, 1.850000e+00, !dbg !2353
  br i1 %cmp101, label %for.inc125, label %if.then103, !dbg !2355

if.then103:                                       ; preds = %if.else100
  %24 = load i32, i32* %a_nconnect104, align 4, !dbg !2356, !tbaa !2298
  %cmp105 = icmp slt i32 %24, 8, !dbg !2359
  br i1 %cmp105, label %land.lhs.true107, label %for.inc125, !dbg !2360

land.lhs.true107:                                 ; preds = %if.then103
  %a_nconnect108 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %14, i64 %indvars.iv19, i32 3, !dbg !2361
  %25 = load i32, i32* %a_nconnect108, align 4, !dbg !2361, !tbaa !2298
  %cmp109 = icmp slt i32 %25, 8, !dbg !2362
  br i1 %cmp109, label %for.inc125.sink.split, label %for.inc125, !dbg !2363

for.inc125.sink.split:                            ; preds = %land.lhs.true107, %land.lhs.true
  %.sink32 = phi i32 [ %22, %land.lhs.true ], [ %24, %land.lhs.true107 ]
  %a_nconnect108.sink = phi i32* [ %a_nconnect85, %land.lhs.true ], [ %a_nconnect108, %land.lhs.true107 ]
  %inc114 = add nsw i32 %.sink32, 1, !dbg !2364
  store i32 %inc114, i32* %a_nconnect104, align 4, !dbg !2364, !tbaa !2298
  %idxprom115 = sext i32 %.sink32 to i64, !dbg !2364
  %arrayidx116 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %5, i64 %indvars.iv22, i32 4, i64 %idxprom115, !dbg !2364
  %26 = trunc i64 %indvars.iv19 to i32, !dbg !2364
  store i32 %26, i32* %arrayidx116, align 4, !dbg !2364, !tbaa !523
  %27 = load i32, i32* %a_nconnect108.sink, align 4, !dbg !2364, !tbaa !2298
  %inc95 = add nsw i32 %27, 1, !dbg !2364
  store i32 %inc95, i32* %a_nconnect108.sink, align 4, !dbg !2364, !tbaa !2298
  %idxprom96 = sext i32 %27 to i64, !dbg !2364
  %arrayidx97 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %14, i64 %indvars.iv19, i32 4, i64 %idxprom96, !dbg !2364
  store i32 %.sink, i32* %arrayidx97, align 4, !dbg !2364, !tbaa !523
  br label %for.inc125, !dbg !2365

for.inc125:                                       ; preds = %for.inc125.sink.split, %if.then81, %land.lhs.true, %if.then78, %if.then103, %land.lhs.true107, %if.else100
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next20, metadata !2280, metadata !DIExpression()), !dbg !2286
  %28 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2366, !tbaa !715
  %29 = trunc i64 %indvars.iv.next20 to i32, !dbg !2318
  %cmp34 = icmp sgt i32 %28, %29, !dbg !2318
  br i1 %cmp34, label %for.inc125.for.body36_crit_edge, label %for.cond1.loopexit, !dbg !2320, !llvm.loop !2367

for.inc125.for.body36_crit_edge:                  ; preds = %for.inc125
  %.pre25 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2325, !tbaa !1459
  %.pre26 = load i16*, i16** %call, align 8, !dbg !2323, !tbaa !372
  br label %for.body36, !dbg !2320

for.end130:                                       ; preds = %for.cond1.loopexit, %entry, %for.cond1.preheader
  ret void, !dbg !2369
}

declare !dbg !2370 dso_local i32 @addresidue(%struct.molecule_t* noundef, i8* noundef, %struct.residue_t* noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

declare !dbg !2373 dso_local i32 @addstrand(%struct.molecule_t* noundef, i8* noundef) local_unnamed_addr #4

declare !dbg !2376 dso_local void @NAB_initatom(%struct.atom_t* noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2379 dso_local void @NAB_initres(%struct.residue_t* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local double @strtod(i8* noundef readonly, i8** nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { argmemonly nofree nounwind willreturn }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { cold nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!345, !346, !347, !348}
!llvm.ident = !{!349}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mat", scope: !2, file: !3, line: 164, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "getmatrix", scope: !3, file: !3, line: 159, type: !4, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !273)
!3 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/molio.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "cdb33686aa1c4f7e8add621a7676e5be")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !13}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX_T", file: !8, line: 14, baseType: !9)
!8 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "e6947e1b068a9350a45ab4ee56d7a2de")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, elements: !11)
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !12}
!12 = !DISubrange(count: 4)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !17, retainedTypes: !34, globals: !255, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/molio.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "cdb33686aa1c4f7e8add621a7676e5be")
!17 = !{!18}
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 46, baseType: !20, size: 32, elements: !21)
!19 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DIEnumerator(name: "_ISupper", value: 256)
!23 = !DIEnumerator(name: "_ISlower", value: 512)
!24 = !DIEnumerator(name: "_ISalpha", value: 1024)
!25 = !DIEnumerator(name: "_ISdigit", value: 2048)
!26 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!27 = !DIEnumerator(name: "_ISspace", value: 8192)
!28 = !DIEnumerator(name: "_ISprint", value: 16384)
!29 = !DIEnumerator(name: "_ISgraph", value: 32768)
!30 = !DIEnumerator(name: "_ISblank", value: 1)
!31 = !DIEnumerator(name: "_IScntrl", value: 2)
!32 = !DIEnumerator(name: "_ISpunct", value: 4)
!33 = !DIEnumerator(name: "_ISalnum", value: 8)
!34 = !{!35, !36, !38, !37, !13, !246, !247, !248}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !8, line: 82, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !8, line: 63, size: 1024, elements: !42)
!42 = !{!43, !45, !47, !48, !49, !52, !53, !54, !55, !56, !189, !199, !200, !206, !207, !216, !217, !218}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !41, file: !8, line: 64, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !41, file: !8, line: 65, baseType: !46, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !8, line: 6, baseType: !37)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !41, file: !8, line: 66, baseType: !46, size: 32, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !41, file: !8, line: 67, baseType: !46, size: 32, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !41, file: !8, line: 68, baseType: !50, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !8, line: 17, baseType: !14)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !41, file: !8, line: 69, baseType: !50, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !41, file: !8, line: 70, baseType: !46, size: 32, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !41, file: !8, line: 71, baseType: !46, size: 32, offset: 352)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !41, file: !8, line: 72, baseType: !46, size: 32, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !41, file: !8, line: 73, baseType: !57, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !8, line: 84, size: 384, elements: !59)
!59 = !{!60, !61, !62, !63, !185, !186, !187, !188}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !58, file: !8, line: 85, baseType: !50, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !58, file: !8, line: 86, baseType: !46, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !58, file: !8, line: 87, baseType: !46, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !58, file: !8, line: 88, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !8, line: 118, size: 1088, elements: !66)
!66 = !{!67, !72, !73, !76, !77, !78, !79}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !65, file: !8, line: 119, baseType: !68, size: 768)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !8, line: 13, baseType: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 768, elements: !70)
!70 = !{!12, !71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !65, file: !8, line: 120, baseType: !46, size: 32, offset: 768)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !65, file: !8, line: 121, baseType: !74, size: 64, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !8, line: 93, baseType: !58)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !65, file: !8, line: 122, baseType: !46, size: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !65, file: !8, line: 123, baseType: !46, size: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !65, file: !8, line: 124, baseType: !46, size: 32, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !65, file: !8, line: 125, baseType: !80, size: 64, offset: 1024)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !8, line: 115, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !8, line: 95, size: 5760, elements: !83)
!83 = !{!84, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !144, !145, !146, !147, !148, !149, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !82, file: !8, line: 96, baseType: !85, size: 648)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 81)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !82, file: !8, line: 97, baseType: !46, size: 32, offset: 672)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !82, file: !8, line: 97, baseType: !46, size: 32, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !82, file: !8, line: 97, baseType: !46, size: 32, offset: 736)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !82, file: !8, line: 98, baseType: !46, size: 32, offset: 768)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !82, file: !8, line: 98, baseType: !46, size: 32, offset: 800)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !82, file: !8, line: 98, baseType: !46, size: 32, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !82, file: !8, line: 98, baseType: !46, size: 32, offset: 864)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !82, file: !8, line: 98, baseType: !46, size: 32, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !82, file: !8, line: 98, baseType: !46, size: 32, offset: 928)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !82, file: !8, line: 99, baseType: !46, size: 32, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !82, file: !8, line: 99, baseType: !46, size: 32, offset: 992)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !82, file: !8, line: 99, baseType: !46, size: 32, offset: 1024)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !82, file: !8, line: 99, baseType: !46, size: 32, offset: 1056)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !82, file: !8, line: 99, baseType: !46, size: 32, offset: 1088)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !82, file: !8, line: 99, baseType: !46, size: 32, offset: 1120)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !82, file: !8, line: 100, baseType: !46, size: 32, offset: 1152)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !82, file: !8, line: 100, baseType: !46, size: 32, offset: 1184)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !82, file: !8, line: 100, baseType: !46, size: 32, offset: 1216)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !82, file: !8, line: 100, baseType: !46, size: 32, offset: 1248)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !82, file: !8, line: 100, baseType: !46, size: 32, offset: 1280)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !82, file: !8, line: 100, baseType: !46, size: 32, offset: 1312)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !82, file: !8, line: 101, baseType: !46, size: 32, offset: 1344)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !82, file: !8, line: 101, baseType: !46, size: 32, offset: 1376)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !82, file: !8, line: 101, baseType: !46, size: 32, offset: 1408)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !82, file: !8, line: 101, baseType: !46, size: 32, offset: 1440)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !82, file: !8, line: 101, baseType: !46, size: 32, offset: 1472)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !82, file: !8, line: 101, baseType: !46, size: 32, offset: 1504)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !82, file: !8, line: 101, baseType: !46, size: 32, offset: 1536)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !82, file: !8, line: 101, baseType: !46, size: 32, offset: 1568)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !82, file: !8, line: 102, baseType: !46, size: 32, offset: 1600)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !82, file: !8, line: 102, baseType: !46, size: 32, offset: 1632)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !82, file: !8, line: 102, baseType: !46, size: 32, offset: 1664)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !82, file: !8, line: 103, baseType: !50, size: 64, offset: 1728)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !82, file: !8, line: 103, baseType: !50, size: 64, offset: 1792)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !82, file: !8, line: 103, baseType: !50, size: 64, offset: 1856)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !82, file: !8, line: 103, baseType: !50, size: 64, offset: 1920)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !82, file: !8, line: 104, baseType: !125, size: 64, offset: 1984)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !82, file: !8, line: 104, baseType: !125, size: 64, offset: 2048)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !82, file: !8, line: 104, baseType: !125, size: 64, offset: 2112)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !82, file: !8, line: 104, baseType: !125, size: 64, offset: 2176)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !82, file: !8, line: 104, baseType: !125, size: 64, offset: 2240)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !82, file: !8, line: 104, baseType: !125, size: 64, offset: 2304)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !82, file: !8, line: 104, baseType: !125, size: 64, offset: 2368)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !82, file: !8, line: 104, baseType: !125, size: 64, offset: 2432)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !82, file: !8, line: 104, baseType: !125, size: 64, offset: 2496)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !82, file: !8, line: 105, baseType: !125, size: 64, offset: 2560)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !82, file: !8, line: 105, baseType: !125, size: 64, offset: 2624)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !82, file: !8, line: 105, baseType: !125, size: 64, offset: 2688)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !82, file: !8, line: 105, baseType: !125, size: 64, offset: 2752)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !82, file: !8, line: 105, baseType: !125, size: 64, offset: 2816)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !82, file: !8, line: 105, baseType: !125, size: 64, offset: 2880)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !82, file: !8, line: 105, baseType: !125, size: 64, offset: 2944)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !82, file: !8, line: 106, baseType: !142, size: 192, offset: 3008)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !143)
!143 = !{!71}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !82, file: !8, line: 106, baseType: !10, size: 64, offset: 3200)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !82, file: !8, line: 106, baseType: !10, size: 64, offset: 3264)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !82, file: !8, line: 106, baseType: !10, size: 64, offset: 3328)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !82, file: !8, line: 106, baseType: !10, size: 64, offset: 3392)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !82, file: !8, line: 106, baseType: !10, size: 64, offset: 3456)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !82, file: !8, line: 107, baseType: !150, size: 64, offset: 3520)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !82, file: !8, line: 107, baseType: !150, size: 64, offset: 3584)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !82, file: !8, line: 107, baseType: !150, size: 64, offset: 3648)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !82, file: !8, line: 107, baseType: !150, size: 64, offset: 3712)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !82, file: !8, line: 107, baseType: !150, size: 64, offset: 3776)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !82, file: !8, line: 107, baseType: !150, size: 64, offset: 3840)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !82, file: !8, line: 108, baseType: !150, size: 64, offset: 3904)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !82, file: !8, line: 108, baseType: !150, size: 64, offset: 3968)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !82, file: !8, line: 108, baseType: !150, size: 64, offset: 4032)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !82, file: !8, line: 108, baseType: !150, size: 64, offset: 4096)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !82, file: !8, line: 108, baseType: !150, size: 64, offset: 4160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !82, file: !8, line: 108, baseType: !150, size: 64, offset: 4224)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !82, file: !8, line: 109, baseType: !150, size: 64, offset: 4288)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !82, file: !8, line: 109, baseType: !150, size: 64, offset: 4352)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !82, file: !8, line: 109, baseType: !150, size: 64, offset: 4416)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !82, file: !8, line: 109, baseType: !150, size: 64, offset: 4480)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !82, file: !8, line: 109, baseType: !150, size: 64, offset: 4544)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !82, file: !8, line: 110, baseType: !150, size: 64, offset: 4608)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !82, file: !8, line: 110, baseType: !150, size: 64, offset: 4672)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !82, file: !8, line: 110, baseType: !150, size: 64, offset: 4736)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !82, file: !8, line: 110, baseType: !150, size: 64, offset: 4800)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !82, file: !8, line: 110, baseType: !150, size: 64, offset: 4864)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !82, file: !8, line: 111, baseType: !150, size: 64, offset: 4928)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !82, file: !8, line: 111, baseType: !150, size: 64, offset: 4992)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !82, file: !8, line: 111, baseType: !150, size: 64, offset: 5056)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !82, file: !8, line: 111, baseType: !150, size: 64, offset: 5120)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !82, file: !8, line: 111, baseType: !150, size: 64, offset: 5184)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !82, file: !8, line: 111, baseType: !150, size: 64, offset: 5248)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !82, file: !8, line: 112, baseType: !150, size: 64, offset: 5312)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !82, file: !8, line: 112, baseType: !150, size: 64, offset: 5376)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !82, file: !8, line: 112, baseType: !150, size: 64, offset: 5440)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !82, file: !8, line: 112, baseType: !150, size: 64, offset: 5504)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !82, file: !8, line: 113, baseType: !150, size: 64, offset: 5568)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !82, file: !8, line: 113, baseType: !150, size: 64, offset: 5632)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !82, file: !8, line: 114, baseType: !125, size: 64, offset: 5696)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !58, file: !8, line: 89, baseType: !57, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !58, file: !8, line: 90, baseType: !46, size: 32, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !58, file: !8, line: 91, baseType: !46, size: 32, offset: 288)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !58, file: !8, line: 92, baseType: !38, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !41, file: !8, line: 74, baseType: !190, size: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !8, line: 52, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !8, line: 47, size: 192, elements: !193)
!193 = !{!194, !196, !197, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !192, file: !8, line: 48, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !192, file: !8, line: 49, baseType: !46, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !192, file: !8, line: 50, baseType: !46, size: 32, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !192, file: !8, line: 51, baseType: !46, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !41, file: !8, line: 75, baseType: !46, size: 32, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !41, file: !8, line: 76, baseType: !201, size: 64, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !8, line: 54, baseType: !203)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 2)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !41, file: !8, line: 77, baseType: !46, size: 32, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !41, file: !8, line: 78, baseType: !208, size: 64, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !8, line: 61, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !8, line: 58, size: 192, elements: !211)
!211 = !{!212, !215}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !210, file: !8, line: 59, baseType: !213, size: 128)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !214)
!214 = !{!12}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !210, file: !8, line: 60, baseType: !10, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !41, file: !8, line: 79, baseType: !46, size: 32, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !41, file: !8, line: 80, baseType: !150, size: 64, offset: 896)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !41, file: !8, line: 81, baseType: !219, size: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !8, line: 45, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !8, line: 25, size: 1408, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !245}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !221, file: !8, line: 26, baseType: !50, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !221, file: !8, line: 27, baseType: !50, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !221, file: !8, line: 28, baseType: !46, size: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !221, file: !8, line: 29, baseType: !46, size: 32, offset: 160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !221, file: !8, line: 30, baseType: !228, size: 256, offset: 192)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !221, file: !8, line: 31, baseType: !44, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !221, file: !8, line: 32, baseType: !10, size: 64, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !221, file: !8, line: 33, baseType: !10, size: 64, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !221, file: !8, line: 34, baseType: !10, size: 64, offset: 640)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !221, file: !8, line: 35, baseType: !10, size: 64, offset: 704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !221, file: !8, line: 36, baseType: !50, size: 64, offset: 768)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !221, file: !8, line: 37, baseType: !46, size: 32, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !221, file: !8, line: 38, baseType: !10, size: 64, offset: 896)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !221, file: !8, line: 39, baseType: !10, size: 64, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !221, file: !8, line: 40, baseType: !46, size: 32, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !221, file: !8, line: 41, baseType: !46, size: 32, offset: 1056)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !221, file: !8, line: 42, baseType: !50, size: 64, offset: 1088)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !221, file: !8, line: 43, baseType: !244, size: 192, offset: 1152)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !8, line: 12, baseType: !142)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !221, file: !8, line: 44, baseType: !10, size: 64, offset: 1344)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!247 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "CID_T", file: !3, line: 62, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cid_t", file: !3, line: 58, size: 128, elements: !251)
!251 = !{!252, !253, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !250, file: !3, line: 59, baseType: !37, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "c_last", scope: !250, file: !3, line: 60, baseType: !37, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "c_cids", scope: !250, file: !3, line: 61, baseType: !13, size: 64, offset: 64)
!255 = !{!0, !256, !264, !266, !268}
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "init", scope: !258, file: !3, line: 774, type: !37, isLocal: true, isDefinition: true)
!258 = distinct !DISubprogram(name: "init_atab", scope: !3, file: !3, line: 772, type: !259, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{null}
!261 = !{!262, !263}
!262 = !DILocalVariable(name: "a", scope: !258, file: !3, line: 775, type: !37)
!263 = !DILocalVariable(name: "ap", scope: !258, file: !3, line: 776, type: !219)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "n_atab", scope: !15, file: !3, line: 70, type: !37, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "res", scope: !15, file: !3, line: 75, type: !40, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "atab", scope: !15, file: !3, line: 69, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1408000, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 1000)
!273 = !{!274, !275, !334, !338, !339, !340, !341, !342, !343}
!274 = !DILocalVariable(name: "fname", arg: 1, scope: !2, file: !3, line: 159, type: !13)
!275 = !DILocalVariable(name: "fp", scope: !2, file: !3, line: 161, type: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !278, line: 7, baseType: !279)
!278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !280, line: 49, size: 1728, elements: !281)
!280 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !297, !299, !300, !301, !305, !306, !308, !312, !315, !317, !320, !323, !324, !325, !329, !330}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !279, file: !280, line: 51, baseType: !37, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !279, file: !280, line: 54, baseType: !13, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !279, file: !280, line: 55, baseType: !13, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !279, file: !280, line: 56, baseType: !13, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !279, file: !280, line: 57, baseType: !13, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !279, file: !280, line: 58, baseType: !13, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !279, file: !280, line: 59, baseType: !13, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !279, file: !280, line: 60, baseType: !13, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !279, file: !280, line: 61, baseType: !13, size: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !279, file: !280, line: 64, baseType: !13, size: 64, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !279, file: !280, line: 65, baseType: !13, size: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !279, file: !280, line: 66, baseType: !13, size: 64, offset: 704)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !279, file: !280, line: 68, baseType: !295, size: 64, offset: 768)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !280, line: 36, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !279, file: !280, line: 70, baseType: !298, size: 64, offset: 832)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !279, file: !280, line: 72, baseType: !37, size: 32, offset: 896)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !279, file: !280, line: 73, baseType: !37, size: 32, offset: 928)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !279, file: !280, line: 74, baseType: !302, size: 64, offset: 960)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !303, line: 152, baseType: !304)
!303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!304 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !279, file: !280, line: 77, baseType: !247, size: 16, offset: 1024)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !279, file: !280, line: 78, baseType: !307, size: 8, offset: 1040)
!307 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !279, file: !280, line: 79, baseType: !309, size: 8, offset: 1048)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 1)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !279, file: !280, line: 81, baseType: !313, size: 64, offset: 1088)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !280, line: 43, baseType: null)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !279, file: !280, line: 89, baseType: !316, size: 64, offset: 1152)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !303, line: 153, baseType: !304)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !279, file: !280, line: 91, baseType: !318, size: 64, offset: 1216)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !280, line: 37, flags: DIFlagFwdDecl)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !279, file: !280, line: 92, baseType: !321, size: 64, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !280, line: 38, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !279, file: !280, line: 93, baseType: !298, size: 64, offset: 1344)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !279, file: !280, line: 94, baseType: !35, size: 64, offset: 1408)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !279, file: !280, line: 95, baseType: !326, size: 64, offset: 1472)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !327, line: 46, baseType: !328)
!327 = !DIFile(filename: "llvm-project/build/lib/clang/14.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/Research/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!328 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !279, file: !280, line: 96, baseType: !37, size: 32, offset: 1536)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !279, file: !280, line: 98, baseType: !331, size: 160, offset: 1568)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 20)
!334 = !DILocalVariable(name: "line", scope: !2, file: !3, line: 162, type: !335)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 256)
!338 = !DILocalVariable(name: "r", scope: !2, file: !3, line: 163, type: !37)
!339 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 163, type: !37)
!340 = !DILocalVariable(name: "cnt", scope: !2, file: !3, line: 163, type: !37)
!341 = !DILocalVariable(name: "ptr", scope: !2, file: !3, line: 165, type: !35)
!342 = !DILocalVariable(name: "err", scope: !2, file: !3, line: 166, type: !37)
!343 = !DILabel(scope: !2, name: "CLEAN_UP", file: !3, line: 210)
!344 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!345 = !{i32 7, !"Dwarf Version", i32 5}
!346 = !{i32 2, !"Debug Info Version", i32 3}
!347 = !{i32 1, !"wchar_size", i32 4}
!348 = !{i32 7, !"uwtable", i32 1}
!349 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!350 = distinct !DISubprogram(name: "getpdb", scope: !3, file: !3, line: 121, type: !351, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !355)
!351 = !DISubroutineType(types: !352)
!352 = !{!353, !13, !13}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !8, line: 126, baseType: !65)
!355 = !{!356, !357, !358, !359, !360}
!356 = !DILocalVariable(name: "fname", arg: 1, scope: !350, file: !3, line: 121, type: !13)
!357 = !DILocalVariable(name: "options", arg: 2, scope: !350, file: !3, line: 121, type: !13)
!358 = !DILocalVariable(name: "fp", scope: !350, file: !3, line: 123, type: !276)
!359 = !DILocalVariable(name: "mol", scope: !350, file: !3, line: 124, type: !353)
!360 = !DILocalVariable(name: "ier", scope: !350, file: !3, line: 125, type: !37)
!361 = !DILocation(line: 0, scope: !350)
!362 = !DILocation(line: 127, column: 10, scope: !363)
!363 = distinct !DILexicalBlock(scope: !350, file: !3, line: 127, column: 9)
!364 = !DILocation(line: 127, column: 16, scope: !363)
!365 = !DILocation(line: 127, column: 20, scope: !363)
!366 = !{!367, !367, i64 0}
!367 = !{!"omnipotent char", !368, i64 0}
!368 = !{!"Simple C/C++ TBAA"}
!369 = !DILocation(line: 127, column: 9, scope: !350)
!370 = !DILocation(line: 128, column: 14, scope: !371)
!371 = distinct !DILexicalBlock(scope: !363, file: !3, line: 127, column: 28)
!372 = !{!373, !373, i64 0}
!373 = !{!"any pointer", !367, i64 0}
!374 = !DILocation(line: 129, column: 5, scope: !371)
!375 = !DILocation(line: 129, column: 17, scope: !376)
!376 = distinct !DILexicalBlock(scope: !363, file: !3, line: 129, column: 16)
!377 = !DILocation(line: 129, column: 16, scope: !363)
!378 = !DILocation(line: 130, column: 14, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !3, line: 129, column: 37)
!380 = !DILocation(line: 131, column: 5, scope: !379)
!381 = !DILocation(line: 133, column: 13, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 133, column: 13)
!383 = distinct !DILexicalBlock(scope: !376, file: !3, line: 131, column: 12)
!384 = !DILocation(line: 133, column: 28, scope: !382)
!385 = !DILocation(line: 133, column: 13, scope: !383)
!386 = !DILocation(line: 134, column: 23, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !3, line: 134, column: 17)
!388 = distinct !DILexicalBlock(scope: !382, file: !3, line: 133, column: 34)
!389 = !DILocation(line: 134, column: 42, scope: !387)
!390 = !DILocation(line: 134, column: 17, scope: !388)
!391 = !DILocation(line: 135, column: 25, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !3, line: 134, column: 51)
!393 = !DILocation(line: 135, column: 17, scope: !392)
!394 = !DILocation(line: 137, column: 13, scope: !392)
!395 = !DILocation(line: 0, scope: !383)
!396 = !DILocation(line: 139, column: 9, scope: !383)
!397 = !DILocation(line: 143, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !383, file: !3, line: 143, column: 13)
!399 = !DILocation(line: 143, column: 28, scope: !398)
!400 = !DILocation(line: 143, column: 13, scope: !383)
!401 = !DILocation(line: 0, scope: !363)
!402 = !DILocalVariable(name: "fp", arg: 1, scope: !403, file: !3, line: 464, type: !276)
!403 = distinct !DISubprogram(name: "fgetpdb", scope: !3, file: !3, line: 464, type: !404, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!353, !276, !13}
!406 = !{!402, !407, !408, !409, !410, !411, !412, !413, !417, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !450}
!407 = !DILocalVariable(name: "options", arg: 2, scope: !403, file: !3, line: 464, type: !13)
!408 = !DILocalVariable(name: "mol", scope: !403, file: !3, line: 466, type: !353)
!409 = !DILocalVariable(name: "ap", scope: !403, file: !3, line: 467, type: !219)
!410 = !DILocalVariable(name: "l_cid", scope: !403, file: !3, line: 468, type: !37)
!411 = !DILocalVariable(name: "cid", scope: !403, file: !3, line: 468, type: !37)
!412 = !DILocalVariable(name: "nchains", scope: !403, file: !3, line: 469, type: !37)
!413 = !DILocalVariable(name: "line", scope: !403, file: !3, line: 470, type: !414)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 656, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 82)
!417 = !DILocalVariable(name: "sname", scope: !403, file: !3, line: 471, type: !418)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 10)
!421 = !DILocalVariable(name: "aname", scope: !403, file: !3, line: 472, type: !418)
!422 = !DILocalVariable(name: "rname", scope: !403, file: !3, line: 473, type: !418)
!423 = !DILocalVariable(name: "l_rname", scope: !403, file: !3, line: 473, type: !418)
!424 = !DILocalVariable(name: "rid", scope: !403, file: !3, line: 474, type: !418)
!425 = !DILocalVariable(name: "l_rid", scope: !403, file: !3, line: 474, type: !418)
!426 = !DILocalVariable(name: "field", scope: !403, file: !3, line: 475, type: !418)
!427 = !DILocalVariable(name: "np", scope: !403, file: !3, line: 476, type: !13)
!428 = !DILocalVariable(name: "np1", scope: !403, file: !3, line: 476, type: !13)
!429 = !DILocalVariable(name: "rnum", scope: !403, file: !3, line: 477, type: !37)
!430 = !DILocalVariable(name: "l_rnum", scope: !403, file: !3, line: 477, type: !37)
!431 = !DILocalVariable(name: "x", scope: !403, file: !3, line: 478, type: !10)
!432 = !DILocalVariable(name: "y", scope: !403, file: !3, line: 478, type: !10)
!433 = !DILocalVariable(name: "z", scope: !403, file: !3, line: 478, type: !10)
!434 = !DILocalVariable(name: "q", scope: !403, file: !3, line: 478, type: !10)
!435 = !DILocalVariable(name: "r", scope: !403, file: !3, line: 478, type: !10)
!436 = !DILocalVariable(name: "occ", scope: !403, file: !3, line: 478, type: !10)
!437 = !DILocalVariable(name: "bfact", scope: !403, file: !3, line: 478, type: !10)
!438 = !DILocalVariable(name: "i", scope: !403, file: !3, line: 479, type: !37)
!439 = !DILocalVariable(name: "temp", scope: !403, file: !3, line: 480, type: !14)
!440 = !DILocalVariable(name: "loptions", scope: !403, file: !3, line: 481, type: !335)
!441 = !DILocalVariable(name: "sp", scope: !442, file: !3, line: 661, type: !74)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 660, column: 17)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 639, column: 31)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 639, column: 17)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 512, column: 46)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 511, column: 13)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 496, column: 37)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 496, column: 5)
!449 = distinct !DILexicalBlock(scope: !403, file: !3, line: 496, column: 5)
!450 = !DILocalVariable(name: "spl", scope: !442, file: !3, line: 661, type: !74)
!451 = !DILocation(line: 0, scope: !403, inlinedAt: !452)
!452 = distinct !DILocation(line: 148, column: 11, scope: !350)
!453 = !DILocation(line: 470, column: 5, scope: !403, inlinedAt: !452)
!454 = !DILocation(line: 470, column: 10, scope: !403, inlinedAt: !452)
!455 = !DILocation(line: 471, column: 5, scope: !403, inlinedAt: !452)
!456 = !DILocation(line: 471, column: 10, scope: !403, inlinedAt: !452)
!457 = !DILocation(line: 472, column: 5, scope: !403, inlinedAt: !452)
!458 = !DILocation(line: 472, column: 10, scope: !403, inlinedAt: !452)
!459 = !DILocation(line: 473, column: 5, scope: !403, inlinedAt: !452)
!460 = !DILocation(line: 473, column: 10, scope: !403, inlinedAt: !452)
!461 = !DILocation(line: 473, column: 21, scope: !403, inlinedAt: !452)
!462 = !DILocation(line: 474, column: 5, scope: !403, inlinedAt: !452)
!463 = !DILocation(line: 474, column: 10, scope: !403, inlinedAt: !452)
!464 = !DILocation(line: 474, column: 19, scope: !403, inlinedAt: !452)
!465 = !DILocation(line: 475, column: 5, scope: !403, inlinedAt: !452)
!466 = !DILocation(line: 475, column: 10, scope: !403, inlinedAt: !452)
!467 = !DILocation(line: 477, column: 5, scope: !403, inlinedAt: !452)
!468 = !DILocation(line: 478, column: 5, scope: !403, inlinedAt: !452)
!469 = !DILocation(line: 481, column: 5, scope: !403, inlinedAt: !452)
!470 = !DILocation(line: 481, column: 10, scope: !403, inlinedAt: !452)
!471 = !DILocation(line: 483, column: 17, scope: !472, inlinedAt: !452)
!472 = distinct !DILexicalBlock(scope: !403, file: !3, line: 483, column: 9)
!473 = !DILocation(line: 483, column: 9, scope: !403, inlinedAt: !452)
!474 = !DILocation(line: 484, column: 19, scope: !472, inlinedAt: !452)
!475 = !DILocation(line: 484, column: 9, scope: !472, inlinedAt: !452)
!476 = !DILocation(line: 486, column: 9, scope: !472, inlinedAt: !452)
!477 = !DILocation(line: 488, column: 5, scope: !403, inlinedAt: !452)
!478 = !DILocation(line: 778, column: 10, scope: !479, inlinedAt: !480)
!479 = distinct !DILexicalBlock(scope: !258, file: !3, line: 778, column: 9)
!480 = distinct !DILocation(line: 489, column: 5, scope: !403, inlinedAt: !452)
!481 = !DILocation(line: 778, column: 9, scope: !258, inlinedAt: !480)
!482 = !DILocation(line: 0, scope: !258, inlinedAt: !480)
!483 = !DILocation(line: 781, column: 35, scope: !484, inlinedAt: !480)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 780, column: 54)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 780, column: 5)
!486 = distinct !DILexicalBlock(scope: !258, file: !3, line: 780, column: 5)
!487 = !DILocation(line: 781, column: 13, scope: !484, inlinedAt: !480)
!488 = !DILocation(line: 781, column: 24, scope: !484, inlinedAt: !480)
!489 = !{!490, !373, i64 0}
!490 = !{!"atom_t", !373, i64 0, !373, i64 8, !491, i64 16, !491, i64 20, !367, i64 24, !373, i64 56, !492, i64 64, !492, i64 72, !492, i64 80, !492, i64 88, !373, i64 96, !491, i64 104, !492, i64 112, !492, i64 120, !491, i64 128, !491, i64 132, !373, i64 136, !367, i64 144, !492, i64 168}
!491 = !{!"int", !367, i64 0}
!492 = !{!"double", !367, i64 0}
!493 = !DILocation(line: 782, column: 28, scope: !494, inlinedAt: !480)
!494 = distinct !DILexicalBlock(scope: !484, file: !3, line: 782, column: 13)
!495 = !DILocation(line: 782, column: 13, scope: !484, inlinedAt: !480)
!496 = !DILocation(line: 783, column: 21, scope: !497, inlinedAt: !480)
!497 = distinct !DILexicalBlock(scope: !494, file: !3, line: 782, column: 37)
!498 = !DILocation(line: 783, column: 13, scope: !497, inlinedAt: !480)
!499 = !DILocation(line: 784, column: 13, scope: !497, inlinedAt: !480)
!500 = !DILocation(line: 786, column: 25, scope: !484, inlinedAt: !480)
!501 = !DILocation(line: 787, column: 13, scope: !484, inlinedAt: !480)
!502 = !DILocation(line: 787, column: 24, scope: !484, inlinedAt: !480)
!503 = !{!490, !373, i64 8}
!504 = !DILocation(line: 788, column: 13, scope: !484, inlinedAt: !480)
!505 = !DILocation(line: 788, column: 23, scope: !484, inlinedAt: !480)
!506 = !{!490, !373, i64 96}
!507 = !DILocation(line: 789, column: 13, scope: !484, inlinedAt: !480)
!508 = !DILocation(line: 789, column: 24, scope: !484, inlinedAt: !480)
!509 = !{!490, !373, i64 136}
!510 = !DILocation(line: 780, column: 44, scope: !485, inlinedAt: !480)
!511 = !DILocation(line: 780, column: 50, scope: !485, inlinedAt: !480)
!512 = !DILocation(line: 780, column: 30, scope: !485, inlinedAt: !480)
!513 = !DILocation(line: 780, column: 5, scope: !486, inlinedAt: !480)
!514 = distinct !{!514, !513, !515, !516, !517}
!515 = !DILocation(line: 790, column: 5, scope: !486, inlinedAt: !480)
!516 = !{!"llvm.loop.mustprogress"}
!517 = !{!"llvm.loop.unroll.disable"}
!518 = !DILocation(line: 791, column: 10, scope: !258, inlinedAt: !480)
!519 = !DILocation(line: 792, column: 1, scope: !258, inlinedAt: !480)
!520 = !DILocation(line: 491, column: 11, scope: !403, inlinedAt: !452)
!521 = !DILocation(line: 494, column: 14, scope: !403, inlinedAt: !452)
!522 = !DILocation(line: 496, column: 30, scope: !449, inlinedAt: !452)
!523 = !{!491, !491, i64 0}
!524 = !DILocation(line: 503, column: 13, scope: !525, inlinedAt: !452)
!525 = distinct !DILexicalBlock(scope: !447, file: !3, line: 503, column: 13)
!526 = !DILocation(line: 503, column: 43, scope: !525, inlinedAt: !452)
!527 = !DILocation(line: 503, column: 13, scope: !447, inlinedAt: !452)
!528 = !DILocation(line: 507, column: 18, scope: !529, inlinedAt: !452)
!529 = distinct !DILexicalBlock(scope: !447, file: !3, line: 507, column: 9)
!530 = !DILocation(line: 507, column: 34, scope: !531, inlinedAt: !452)
!531 = distinct !DILexicalBlock(scope: !529, file: !3, line: 507, column: 9)
!532 = !DILocation(line: 507, column: 9, scope: !529, inlinedAt: !452)
!533 = !DILocation(line: 508, column: 21, scope: !531, inlinedAt: !452)
!534 = !DILocation(line: 509, column: 18, scope: !447, inlinedAt: !452)
!535 = !DILocation(line: 511, column: 13, scope: !446, inlinedAt: !452)
!536 = !DILocation(line: 511, column: 43, scope: !446, inlinedAt: !452)
!537 = !DILocation(line: 512, column: 13, scope: !446, inlinedAt: !452)
!538 = !DILocation(line: 512, column: 40, scope: !446, inlinedAt: !452)
!539 = !DILocation(line: 511, column: 13, scope: !447, inlinedAt: !452)
!540 = !DILocation(line: 513, column: 13, scope: !445, inlinedAt: !452)
!541 = !DILocation(line: 514, column: 33, scope: !445, inlinedAt: !452)
!542 = !DILocation(line: 516, column: 18, scope: !543, inlinedAt: !452)
!543 = distinct !DILexicalBlock(scope: !445, file: !3, line: 516, column: 13)
!544 = !DILocation(line: 0, scope: !543, inlinedAt: !452)
!545 = !DILocation(line: 516, column: 36, scope: !546, inlinedAt: !452)
!546 = distinct !DILexicalBlock(scope: !543, file: !3, line: 516, column: 13)
!547 = !DILocation(line: 516, column: 13, scope: !543, inlinedAt: !452)
!548 = !DILocation(line: 518, column: 25, scope: !549, inlinedAt: !452)
!549 = distinct !DILexicalBlock(scope: !550, file: !3, line: 517, column: 21)
!550 = distinct !DILexicalBlock(scope: !546, file: !3, line: 516, column: 47)
!551 = !DILocation(line: 518, column: 28, scope: !549, inlinedAt: !452)
!552 = !DILocation(line: 518, column: 21, scope: !549, inlinedAt: !452)
!553 = !DILocation(line: 516, column: 43, scope: !546, inlinedAt: !452)
!554 = !DILocation(line: 516, column: 13, scope: !546, inlinedAt: !452)
!555 = distinct !{!555, !547, !556, !516, !517}
!556 = !DILocation(line: 519, column: 13, scope: !543, inlinedAt: !452)
!557 = !DILocation(line: 520, column: 18, scope: !445, inlinedAt: !452)
!558 = !DILocation(line: 523, column: 17, scope: !559, inlinedAt: !452)
!559 = distinct !DILexicalBlock(scope: !445, file: !3, line: 523, column: 17)
!560 = !DILocation(line: 523, column: 33, scope: !559, inlinedAt: !452)
!561 = !DILocation(line: 525, column: 38, scope: !562, inlinedAt: !452)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 525, column: 17)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 525, column: 17)
!564 = distinct !DILexicalBlock(scope: !559, file: !3, line: 523, column: 72)
!565 = !DILocation(line: 525, column: 33, scope: !562, inlinedAt: !452)
!566 = !DILocation(line: 525, column: 31, scope: !562, inlinedAt: !452)
!567 = !DILocation(line: 525, column: 17, scope: !563, inlinedAt: !452)
!568 = !DILocation(line: 526, column: 40, scope: !562, inlinedAt: !452)
!569 = !DILocation(line: 526, column: 32, scope: !562, inlinedAt: !452)
!570 = !DILocation(line: 526, column: 21, scope: !562, inlinedAt: !452)
!571 = !DILocation(line: 526, column: 30, scope: !562, inlinedAt: !452)
!572 = distinct !{!572, !567, !573, !516, !517}
!573 = !DILocation(line: 526, column: 43, scope: !563, inlinedAt: !452)
!574 = !DILocation(line: 0, scope: !563, inlinedAt: !452)
!575 = !DILocation(line: 527, column: 17, scope: !564, inlinedAt: !452)
!576 = !DILocation(line: 527, column: 26, scope: !564, inlinedAt: !452)
!577 = !DILocation(line: 528, column: 13, scope: !564, inlinedAt: !452)
!578 = !DILocation(line: 531, column: 17, scope: !579, inlinedAt: !452)
!579 = distinct !DILexicalBlock(scope: !445, file: !3, line: 531, column: 17)
!580 = !DILocation(line: 531, column: 26, scope: !579, inlinedAt: !452)
!581 = !DILocation(line: 531, column: 17, scope: !445, inlinedAt: !452)
!582 = !DILocation(line: 532, column: 26, scope: !579, inlinedAt: !452)
!583 = !DILocation(line: 532, column: 17, scope: !579, inlinedAt: !452)
!584 = !DILocation(line: 533, column: 18, scope: !585, inlinedAt: !452)
!585 = distinct !DILexicalBlock(scope: !445, file: !3, line: 533, column: 17)
!586 = !DILocation(line: 533, column: 17, scope: !445, inlinedAt: !452)
!587 = !DILocation(line: 534, column: 17, scope: !585, inlinedAt: !452)
!588 = !DILocation(line: 536, column: 13, scope: !445, inlinedAt: !452)
!589 = !DILocation(line: 537, column: 33, scope: !445, inlinedAt: !452)
!590 = !DILocation(line: 538, column: 18, scope: !591, inlinedAt: !452)
!591 = distinct !DILexicalBlock(scope: !445, file: !3, line: 538, column: 13)
!592 = !DILocation(line: 0, scope: !591, inlinedAt: !452)
!593 = !DILocation(line: 538, column: 36, scope: !594, inlinedAt: !452)
!594 = distinct !DILexicalBlock(scope: !591, file: !3, line: 538, column: 13)
!595 = !DILocation(line: 538, column: 13, scope: !591, inlinedAt: !452)
!596 = !DILocation(line: 540, column: 25, scope: !597, inlinedAt: !452)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 539, column: 21)
!598 = distinct !DILexicalBlock(scope: !594, file: !3, line: 538, column: 47)
!599 = !DILocation(line: 540, column: 28, scope: !597, inlinedAt: !452)
!600 = !DILocation(line: 540, column: 21, scope: !597, inlinedAt: !452)
!601 = !DILocation(line: 538, column: 43, scope: !594, inlinedAt: !452)
!602 = !DILocation(line: 538, column: 13, scope: !594, inlinedAt: !452)
!603 = distinct !{!603, !595, !604, !516, !517}
!604 = !DILocation(line: 541, column: 13, scope: !591, inlinedAt: !452)
!605 = !DILocation(line: 542, column: 18, scope: !445, inlinedAt: !452)
!606 = !DILocation(line: 551, column: 18, scope: !607, inlinedAt: !452)
!607 = distinct !DILexicalBlock(scope: !445, file: !3, line: 551, column: 17)
!608 = !DILocation(line: 551, column: 17, scope: !445, inlinedAt: !452)
!609 = !DILocation(line: 552, column: 28, scope: !607, inlinedAt: !452)
!610 = !{!611, !491, i64 44}
!611 = !{!"residue_t", !373, i64 0, !491, i64 8, !491, i64 12, !491, i64 16, !373, i64 24, !373, i64 32, !491, i64 40, !491, i64 44, !491, i64 48, !373, i64 56, !373, i64 64, !491, i64 72, !373, i64 80, !491, i64 88, !373, i64 96, !491, i64 104, !373, i64 112, !373, i64 120}
!612 = !DILocation(line: 552, column: 17, scope: !607, inlinedAt: !452)
!613 = !DILocation(line: 553, column: 18, scope: !614, inlinedAt: !452)
!614 = distinct !DILexicalBlock(scope: !445, file: !3, line: 553, column: 17)
!615 = !DILocation(line: 553, column: 41, scope: !614, inlinedAt: !452)
!616 = !DILocation(line: 554, column: 17, scope: !614, inlinedAt: !452)
!617 = !DILocation(line: 557, column: 18, scope: !618, inlinedAt: !452)
!618 = distinct !DILexicalBlock(scope: !445, file: !3, line: 557, column: 17)
!619 = !DILocation(line: 557, column: 17, scope: !445, inlinedAt: !452)
!620 = !DILocation(line: 558, column: 17, scope: !618, inlinedAt: !452)
!621 = !DILocation(line: 559, column: 17, scope: !445, inlinedAt: !452)
!622 = !DILocation(line: 560, column: 17, scope: !623, inlinedAt: !452)
!623 = distinct !DILexicalBlock(scope: !445, file: !3, line: 559, column: 17)
!624 = !DILocation(line: 562, column: 17, scope: !625, inlinedAt: !452)
!625 = distinct !DILexicalBlock(scope: !445, file: !3, line: 561, column: 17)
!626 = !DILocation(line: 563, column: 17, scope: !445, inlinedAt: !452)
!627 = !DILocation(line: 564, column: 17, scope: !628, inlinedAt: !452)
!628 = distinct !DILexicalBlock(scope: !445, file: !3, line: 563, column: 17)
!629 = !DILocation(line: 566, column: 17, scope: !630, inlinedAt: !452)
!630 = distinct !DILexicalBlock(scope: !445, file: !3, line: 565, column: 17)
!631 = !DILocation(line: 569, column: 13, scope: !445, inlinedAt: !452)
!632 = !DILocation(line: 570, column: 30, scope: !445, inlinedAt: !452)
!633 = !DILocation(line: 572, column: 19, scope: !445, inlinedAt: !452)
!634 = !DILocation(line: 573, column: 13, scope: !445, inlinedAt: !452)
!635 = !DILocation(line: 575, column: 13, scope: !445, inlinedAt: !452)
!636 = !DILocation(line: 576, column: 33, scope: !445, inlinedAt: !452)
!637 = !DILocalVariable(name: "__nptr", arg: 1, scope: !638, file: !639, line: 25, type: !642)
!638 = distinct !DISubprogram(name: "atof", scope: !639, file: !639, line: 25, type: !640, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !644)
!639 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "", checksumkind: CSK_MD5, checksum: "48f612e342a3b16120b9f0760cf29677")
!640 = !DISubroutineType(types: !641)
!641 = !{!10, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!644 = !{!637}
!645 = !DILocation(line: 0, scope: !638, inlinedAt: !646)
!646 = distinct !DILocation(line: 577, column: 17, scope: !445, inlinedAt: !452)
!647 = !DILocation(line: 27, column: 10, scope: !638, inlinedAt: !646)
!648 = !DILocation(line: 579, column: 13, scope: !445, inlinedAt: !452)
!649 = !DILocation(line: 580, column: 33, scope: !445, inlinedAt: !452)
!650 = !DILocation(line: 0, scope: !638, inlinedAt: !651)
!651 = distinct !DILocation(line: 581, column: 17, scope: !445, inlinedAt: !452)
!652 = !DILocation(line: 27, column: 10, scope: !638, inlinedAt: !651)
!653 = !DILocation(line: 583, column: 13, scope: !445, inlinedAt: !452)
!654 = !DILocation(line: 584, column: 33, scope: !445, inlinedAt: !452)
!655 = !DILocation(line: 0, scope: !638, inlinedAt: !656)
!656 = distinct !DILocation(line: 585, column: 17, scope: !445, inlinedAt: !452)
!657 = !DILocation(line: 27, column: 10, scope: !638, inlinedAt: !656)
!658 = !DILocation(line: 587, column: 17, scope: !659, inlinedAt: !452)
!659 = distinct !DILexicalBlock(scope: !445, file: !3, line: 587, column: 17)
!660 = !DILocation(line: 587, column: 17, scope: !445, inlinedAt: !452)
!661 = !DILocation(line: 603, column: 17, scope: !662, inlinedAt: !452)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 587, column: 43)
!663 = !DILocation(line: 611, column: 13, scope: !662, inlinedAt: !452)
!664 = !DILocation(line: 613, column: 22, scope: !665, inlinedAt: !452)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 613, column: 21)
!666 = distinct !DILexicalBlock(scope: !659, file: !3, line: 611, column: 20)
!667 = !DILocation(line: 613, column: 21, scope: !666, inlinedAt: !452)
!668 = !DILocation(line: 614, column: 23, scope: !665, inlinedAt: !452)
!669 = !{!492, !492, i64 0}
!670 = !DILocation(line: 614, column: 21, scope: !665, inlinedAt: !452)
!671 = !DILocation(line: 616, column: 23, scope: !672, inlinedAt: !452)
!672 = distinct !DILexicalBlock(scope: !665, file: !3, line: 615, column: 26)
!673 = !DILocation(line: 616, column: 21, scope: !672, inlinedAt: !452)
!674 = !DILocation(line: 618, column: 23, scope: !675, inlinedAt: !452)
!675 = distinct !DILexicalBlock(scope: !672, file: !3, line: 617, column: 26)
!676 = !DILocation(line: 618, column: 21, scope: !675, inlinedAt: !452)
!677 = !DILocation(line: 620, column: 23, scope: !678, inlinedAt: !452)
!678 = distinct !DILexicalBlock(scope: !675, file: !3, line: 619, column: 26)
!679 = !DILocation(line: 620, column: 21, scope: !678, inlinedAt: !452)
!680 = !DILocation(line: 622, column: 23, scope: !681, inlinedAt: !452)
!681 = distinct !DILexicalBlock(scope: !678, file: !3, line: 621, column: 26)
!682 = !DILocation(line: 622, column: 21, scope: !681, inlinedAt: !452)
!683 = !DILocation(line: 624, column: 23, scope: !684, inlinedAt: !452)
!684 = distinct !DILexicalBlock(scope: !681, file: !3, line: 623, column: 26)
!685 = !DILocation(line: 624, column: 21, scope: !684, inlinedAt: !452)
!686 = !DILocation(line: 626, column: 23, scope: !684, inlinedAt: !452)
!687 = !DILocation(line: 627, column: 19, scope: !666, inlinedAt: !452)
!688 = !DILocation(line: 630, column: 17, scope: !666, inlinedAt: !452)
!689 = !DILocation(line: 631, column: 37, scope: !666, inlinedAt: !452)
!690 = !DILocation(line: 0, scope: !638, inlinedAt: !691)
!691 = distinct !DILocation(line: 632, column: 23, scope: !666, inlinedAt: !452)
!692 = !DILocation(line: 27, column: 10, scope: !638, inlinedAt: !691)
!693 = !DILocation(line: 634, column: 17, scope: !666, inlinedAt: !452)
!694 = !DILocation(line: 635, column: 37, scope: !666, inlinedAt: !452)
!695 = !DILocation(line: 0, scope: !638, inlinedAt: !696)
!696 = distinct !DILocation(line: 636, column: 25, scope: !666, inlinedAt: !452)
!697 = !DILocation(line: 27, column: 10, scope: !638, inlinedAt: !696)
!698 = !DILocation(line: 0, scope: !659, inlinedAt: !452)
!699 = !DILocation(line: 639, column: 21, scope: !444, inlinedAt: !452)
!700 = !DILocation(line: 639, column: 17, scope: !445, inlinedAt: !452)
!701 = !DILocation(line: 640, column: 21, scope: !702, inlinedAt: !452)
!702 = distinct !DILexicalBlock(scope: !443, file: !3, line: 640, column: 21)
!703 = !DILocation(line: 640, column: 28, scope: !702, inlinedAt: !452)
!704 = !DILocation(line: 640, column: 21, scope: !443, inlinedAt: !452)
!705 = !DILocation(line: 641, column: 32, scope: !706, inlinedAt: !452)
!706 = distinct !DILexicalBlock(scope: !702, file: !3, line: 640, column: 33)
!707 = !{!611, !373, i64 24}
!708 = !DILocation(line: 641, column: 21, scope: !706, inlinedAt: !452)
!709 = !DILocation(line: 642, column: 32, scope: !706, inlinedAt: !452)
!710 = !{!611, !373, i64 32}
!711 = !DILocation(line: 642, column: 21, scope: !706, inlinedAt: !452)
!712 = !DILocation(line: 643, column: 31, scope: !706, inlinedAt: !452)
!713 = !{!611, !491, i64 8}
!714 = !DILocation(line: 644, column: 34, scope: !706, inlinedAt: !452)
!715 = !{!611, !491, i64 104}
!716 = !DILocation(line: 645, column: 21, scope: !706, inlinedAt: !452)
!717 = !DILocation(line: 646, column: 21, scope: !706, inlinedAt: !452)
!718 = !DILocation(line: 647, column: 21, scope: !706, inlinedAt: !452)
!719 = !DILocation(line: 648, column: 28, scope: !706, inlinedAt: !452)
!720 = !DILocation(line: 649, column: 17, scope: !706, inlinedAt: !452)
!721 = !DILocation(line: 651, column: 24, scope: !443, inlinedAt: !452)
!722 = !DILocation(line: 652, column: 25, scope: !723, inlinedAt: !452)
!723 = distinct !DILexicalBlock(scope: !443, file: !3, line: 652, column: 21)
!724 = !DILocation(line: 652, column: 21, scope: !443, inlinedAt: !452)
!725 = !DILocation(line: 653, column: 21, scope: !723, inlinedAt: !452)
!726 = !DILocation(line: 655, column: 30, scope: !727, inlinedAt: !452)
!727 = distinct !DILexicalBlock(scope: !723, file: !3, line: 654, column: 22)
!728 = !DILocation(line: 656, column: 30, scope: !727, inlinedAt: !452)
!729 = !DILocation(line: 658, column: 17, scope: !443, inlinedAt: !452)
!730 = !DILocation(line: 0, scope: !442, inlinedAt: !452)
!731 = !DILocation(line: 663, column: 26, scope: !732, inlinedAt: !452)
!732 = distinct !DILexicalBlock(scope: !442, file: !3, line: 663, column: 21)
!733 = !DILocation(line: 0, scope: !732, inlinedAt: !452)
!734 = !{}
!735 = !DILocation(line: 665, column: 42, scope: !736, inlinedAt: !452)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 665, column: 29)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 664, column: 45)
!738 = distinct !DILexicalBlock(scope: !732, file: !3, line: 663, column: 21)
!739 = !{!740, !373, i64 0}
!740 = !{!"strand_t", !373, i64 0, !491, i64 8, !491, i64 12, !373, i64 16, !373, i64 24, !491, i64 32, !491, i64 36, !373, i64 40}
!741 = !DILocation(line: 665, column: 30, scope: !736, inlinedAt: !452)
!742 = !DILocation(line: 664, column: 37, scope: !738, inlinedAt: !452)
!743 = !DILocation(line: 665, column: 29, scope: !737, inlinedAt: !452)
!744 = distinct !{!744, !745, !746, !516, !517}
!745 = !DILocation(line: 663, column: 21, scope: !732, inlinedAt: !452)
!746 = !DILocation(line: 669, column: 21, scope: !732, inlinedAt: !452)
!747 = !DILocation(line: 670, column: 25, scope: !442, inlinedAt: !452)
!748 = !DILocation(line: 670, column: 36, scope: !442, inlinedAt: !452)
!749 = !{!740, !491, i64 36}
!750 = !DILocation(line: 672, column: 40, scope: !442, inlinedAt: !452)
!751 = !DILocation(line: 671, column: 25, scope: !442, inlinedAt: !452)
!752 = !DILocation(line: 671, column: 36, scope: !442, inlinedAt: !452)
!753 = !{!740, !373, i64 40}
!754 = !DILocation(line: 680, column: 17, scope: !443, inlinedAt: !452)
!755 = !DILocation(line: 681, column: 17, scope: !443, inlinedAt: !452)
!756 = !DILocation(line: 682, column: 26, scope: !443, inlinedAt: !452)
!757 = !DILocation(line: 684, column: 13, scope: !443, inlinedAt: !452)
!758 = !DILocation(line: 684, column: 57, scope: !759, inlinedAt: !452)
!759 = distinct !DILexicalBlock(scope: !444, file: !3, line: 684, column: 24)
!760 = !DILocalVariable(name: "l_rname", arg: 1, scope: !761, file: !3, line: 744, type: !13)
!761 = distinct !DISubprogram(name: "isnewres", scope: !3, file: !3, line: 744, type: !762, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{!37, !13, !13, !37, !37}
!764 = !{!760, !765, !766, !767}
!765 = !DILocalVariable(name: "rname", arg: 2, scope: !761, file: !3, line: 744, type: !13)
!766 = !DILocalVariable(name: "l_rnum", arg: 3, scope: !761, file: !3, line: 744, type: !37)
!767 = !DILocalVariable(name: "rnum", arg: 4, scope: !761, file: !3, line: 744, type: !37)
!768 = !DILocation(line: 0, scope: !761, inlinedAt: !769)
!769 = distinct !DILocation(line: 684, column: 24, scope: !759, inlinedAt: !452)
!770 = !DILocation(line: 747, column: 13, scope: !761, inlinedAt: !769)
!771 = !DILocation(line: 747, column: 36, scope: !761, inlinedAt: !769)
!772 = !DILocation(line: 684, column: 24, scope: !759, inlinedAt: !452)
!773 = !DILocation(line: 684, column: 24, scope: !444, inlinedAt: !452)
!774 = !DILocation(line: 685, column: 28, scope: !775, inlinedAt: !452)
!775 = distinct !DILexicalBlock(scope: !759, file: !3, line: 684, column: 64)
!776 = !DILocation(line: 685, column: 17, scope: !775, inlinedAt: !452)
!777 = !DILocation(line: 686, column: 28, scope: !775, inlinedAt: !452)
!778 = !DILocation(line: 686, column: 17, scope: !775, inlinedAt: !452)
!779 = !DILocation(line: 687, column: 27, scope: !775, inlinedAt: !452)
!780 = !DILocation(line: 688, column: 32, scope: !775, inlinedAt: !452)
!781 = !DILocation(line: 688, column: 30, scope: !775, inlinedAt: !452)
!782 = !DILocation(line: 689, column: 17, scope: !775, inlinedAt: !452)
!783 = !DILocation(line: 690, column: 17, scope: !775, inlinedAt: !452)
!784 = !DILocation(line: 691, column: 17, scope: !775, inlinedAt: !452)
!785 = !DILocation(line: 692, column: 17, scope: !775, inlinedAt: !452)
!786 = !DILocation(line: 693, column: 17, scope: !775, inlinedAt: !452)
!787 = !DILocation(line: 694, column: 26, scope: !775, inlinedAt: !452)
!788 = !DILocation(line: 695, column: 24, scope: !775, inlinedAt: !452)
!789 = !DILocation(line: 696, column: 13, scope: !775, inlinedAt: !452)
!790 = !DILocation(line: 0, scope: !449, inlinedAt: !452)
!791 = !DILocation(line: 697, column: 24, scope: !445, inlinedAt: !452)
!792 = !DILocation(line: 697, column: 19, scope: !445, inlinedAt: !452)
!793 = !DILocation(line: 698, column: 13, scope: !445, inlinedAt: !452)
!794 = !DILocation(line: 699, column: 24, scope: !445, inlinedAt: !452)
!795 = !DILocation(line: 699, column: 13, scope: !445, inlinedAt: !452)
!796 = !DILocation(line: 700, column: 17, scope: !445, inlinedAt: !452)
!797 = !DILocation(line: 700, column: 24, scope: !445, inlinedAt: !452)
!798 = !{!490, !491, i64 16}
!799 = !DILocation(line: 701, column: 17, scope: !445, inlinedAt: !452)
!800 = !DILocation(line: 701, column: 27, scope: !445, inlinedAt: !452)
!801 = !{!490, !373, i64 56}
!802 = !DILocation(line: 702, column: 13, scope: !445, inlinedAt: !452)
!803 = !DILocation(line: 702, column: 26, scope: !445, inlinedAt: !452)
!804 = !DILocation(line: 703, column: 13, scope: !445, inlinedAt: !452)
!805 = !DILocation(line: 703, column: 26, scope: !445, inlinedAt: !452)
!806 = !DILocation(line: 704, column: 13, scope: !445, inlinedAt: !452)
!807 = !DILocation(line: 704, column: 26, scope: !445, inlinedAt: !452)
!808 = !DILocation(line: 705, column: 28, scope: !445, inlinedAt: !452)
!809 = !DILocation(line: 705, column: 17, scope: !445, inlinedAt: !452)
!810 = !DILocation(line: 705, column: 26, scope: !445, inlinedAt: !452)
!811 = !{!490, !492, i64 64}
!812 = !DILocation(line: 706, column: 28, scope: !445, inlinedAt: !452)
!813 = !DILocation(line: 706, column: 17, scope: !445, inlinedAt: !452)
!814 = !DILocation(line: 706, column: 26, scope: !445, inlinedAt: !452)
!815 = !{!490, !492, i64 72}
!816 = !DILocation(line: 707, column: 17, scope: !445, inlinedAt: !452)
!817 = !DILocation(line: 707, column: 23, scope: !445, inlinedAt: !452)
!818 = !{!490, !492, i64 88}
!819 = !DILocation(line: 708, column: 17, scope: !445, inlinedAt: !452)
!820 = !DILocation(line: 708, column: 25, scope: !445, inlinedAt: !452)
!821 = !{!490, !492, i64 80}
!822 = !DILocation(line: 709, column: 19, scope: !445, inlinedAt: !452)
!823 = !DILocation(line: 711, column: 9, scope: !445, inlinedAt: !452)
!824 = !DILocation(line: 711, column: 20, scope: !825, inlinedAt: !452)
!825 = distinct !DILexicalBlock(scope: !446, file: !3, line: 711, column: 20)
!826 = !DILocation(line: 711, column: 44, scope: !825, inlinedAt: !452)
!827 = !DILocation(line: 711, column: 20, scope: !446, inlinedAt: !452)
!828 = !DILocation(line: 712, column: 17, scope: !829, inlinedAt: !452)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 712, column: 17)
!830 = distinct !DILexicalBlock(scope: !825, file: !3, line: 711, column: 50)
!831 = !DILocation(line: 712, column: 24, scope: !829, inlinedAt: !452)
!832 = !DILocation(line: 712, column: 17, scope: !830, inlinedAt: !452)
!833 = !DILocation(line: 713, column: 28, scope: !834, inlinedAt: !452)
!834 = distinct !DILexicalBlock(scope: !829, file: !3, line: 712, column: 29)
!835 = !DILocation(line: 713, column: 17, scope: !834, inlinedAt: !452)
!836 = !DILocation(line: 714, column: 28, scope: !834, inlinedAt: !452)
!837 = !DILocation(line: 714, column: 17, scope: !834, inlinedAt: !452)
!838 = !DILocation(line: 715, column: 27, scope: !834, inlinedAt: !452)
!839 = !DILocation(line: 716, column: 30, scope: !834, inlinedAt: !452)
!840 = !DILocation(line: 717, column: 17, scope: !834, inlinedAt: !452)
!841 = !DILocation(line: 718, column: 17, scope: !834, inlinedAt: !452)
!842 = !DILocation(line: 719, column: 17, scope: !834, inlinedAt: !452)
!843 = !DILocation(line: 720, column: 24, scope: !834, inlinedAt: !452)
!844 = !DILocation(line: 721, column: 13, scope: !834, inlinedAt: !452)
!845 = !DILocation(line: 723, column: 22, scope: !830, inlinedAt: !452)
!846 = !DILocation(line: 724, column: 20, scope: !830, inlinedAt: !452)
!847 = !DILocation(line: 726, column: 9, scope: !830, inlinedAt: !452)
!848 = !DILocation(line: 726, column: 20, scope: !849, inlinedAt: !452)
!849 = distinct !DILexicalBlock(scope: !825, file: !3, line: 726, column: 20)
!850 = !DILocation(line: 726, column: 44, scope: !849, inlinedAt: !452)
!851 = !DILocation(line: 726, column: 20, scope: !825, inlinedAt: !452)
!852 = distinct !{!852, !853, !854, !517}
!853 = !DILocation(line: 496, column: 5, scope: !449, inlinedAt: !452)
!854 = !DILocation(line: 728, column: 5, scope: !449, inlinedAt: !452)
!855 = !DILocation(line: 729, column: 9, scope: !856, inlinedAt: !452)
!856 = distinct !DILexicalBlock(scope: !403, file: !3, line: 729, column: 9)
!857 = !DILocation(line: 729, column: 16, scope: !856, inlinedAt: !452)
!858 = !DILocation(line: 729, column: 9, scope: !403, inlinedAt: !452)
!859 = !DILocation(line: 730, column: 20, scope: !860, inlinedAt: !452)
!860 = distinct !DILexicalBlock(scope: !856, file: !3, line: 729, column: 21)
!861 = !DILocation(line: 730, column: 9, scope: !860, inlinedAt: !452)
!862 = !DILocation(line: 731, column: 20, scope: !860, inlinedAt: !452)
!863 = !DILocation(line: 731, column: 9, scope: !860, inlinedAt: !452)
!864 = !DILocation(line: 732, column: 19, scope: !860, inlinedAt: !452)
!865 = !DILocation(line: 733, column: 22, scope: !860, inlinedAt: !452)
!866 = !DILocation(line: 734, column: 9, scope: !860, inlinedAt: !452)
!867 = !DILocation(line: 735, column: 9, scope: !860, inlinedAt: !452)
!868 = !DILocation(line: 736, column: 9, scope: !860, inlinedAt: !452)
!869 = !DILocation(line: 737, column: 5, scope: !860, inlinedAt: !452)
!870 = !DILocation(line: 739, column: 10, scope: !403, inlinedAt: !452)
!871 = !DILocation(line: 739, column: 19, scope: !403, inlinedAt: !452)
!872 = !{!873, !491, i64 120}
!873 = !{!"molecule_t", !367, i64 0, !491, i64 96, !373, i64 104, !491, i64 112, !491, i64 116, !491, i64 120, !373, i64 128}
!874 = !DILocation(line: 742, column: 1, scope: !403, inlinedAt: !452)
!875 = !DILocation(line: 150, column: 15, scope: !876)
!876 = distinct !DILexicalBlock(scope: !350, file: !3, line: 150, column: 9)
!877 = !DILocation(line: 150, column: 12, scope: !876)
!878 = !DILocation(line: 150, column: 9, scope: !350)
!879 = !DILocation(line: 151, column: 13, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 151, column: 13)
!881 = distinct !DILexicalBlock(scope: !876, file: !3, line: 150, column: 22)
!882 = !DILocation(line: 151, column: 28, scope: !880)
!883 = !DILocation(line: 151, column: 13, scope: !881)
!884 = !DILocation(line: 152, column: 13, scope: !885)
!885 = distinct !DILexicalBlock(scope: !880, file: !3, line: 151, column: 34)
!886 = !DILocation(line: 153, column: 9, scope: !885)
!887 = !DILocation(line: 156, column: 5, scope: !350)
!888 = !DISubprogram(name: "get_mytaskid", scope: !3, file: !3, line: 99, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!889 = !DISubroutineType(types: !890)
!890 = !{!37}
!891 = !DISubprogram(name: "reducerror", scope: !3, file: !3, line: 100, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !37}
!894 = !DISubprogram(name: "fclose", scope: !895, file: !895, line: 213, type: !896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!895 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!896 = !DISubroutineType(types: !897)
!897 = !{!37, !276}
!898 = !DILocation(line: 0, scope: !2)
!899 = !DILocation(line: 162, column: 5, scope: !2)
!900 = !DILocation(line: 162, column: 10, scope: !2)
!901 = !DILocation(line: 163, column: 12, scope: !2)
!902 = !DILocation(line: 168, column: 5, scope: !2)
!903 = !DILocation(line: 169, column: 15, scope: !904)
!904 = distinct !DILexicalBlock(scope: !2, file: !3, line: 169, column: 9)
!905 = !DILocation(line: 169, column: 23, scope: !904)
!906 = !DILocation(line: 169, column: 26, scope: !904)
!907 = !DILocation(line: 169, column: 33, scope: !904)
!908 = !DILocation(line: 169, column: 9, scope: !2)
!909 = !DILocation(line: 170, column: 17, scope: !910)
!910 = distinct !DILexicalBlock(scope: !904, file: !3, line: 169, column: 42)
!911 = !DILocation(line: 170, column: 9, scope: !910)
!912 = !DILocation(line: 172, column: 9, scope: !910)
!913 = !DILocation(line: 173, column: 17, scope: !914)
!914 = distinct !DILexicalBlock(scope: !904, file: !3, line: 173, column: 16)
!915 = !DILocation(line: 173, column: 16, scope: !904)
!916 = !DILocation(line: 174, column: 14, scope: !914)
!917 = !DILocation(line: 174, column: 9, scope: !914)
!918 = !DILocation(line: 175, column: 20, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !3, line: 175, column: 14)
!920 = !DILocation(line: 175, column: 39, scope: !919)
!921 = !DILocation(line: 175, column: 14, scope: !914)
!922 = !DILocation(line: 176, column: 17, scope: !923)
!923 = distinct !DILexicalBlock(scope: !919, file: !3, line: 175, column: 48)
!924 = !DILocation(line: 176, column: 9, scope: !923)
!925 = !DILocation(line: 178, column: 9, scope: !923)
!926 = !DILocation(line: 0, scope: !914)
!927 = !DILocation(line: 180, column: 10, scope: !928)
!928 = distinct !DILexicalBlock(scope: !2, file: !3, line: 180, column: 5)
!929 = !DILocation(line: 180, column: 5, scope: !928)
!930 = !DILocation(line: 180, column: 17, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !3, line: 180, column: 5)
!932 = !DILocation(line: 181, column: 13, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 181, column: 13)
!934 = distinct !DILexicalBlock(scope: !931, file: !3, line: 180, column: 49)
!935 = !DILocation(line: 181, column: 19, scope: !933)
!936 = !DILocation(line: 181, column: 13, scope: !934)
!937 = distinct !{!937, !929, !938, !516, !517}
!938 = !DILocation(line: 201, column: 5, scope: !928)
!939 = !DILocation(line: 185, column: 23, scope: !934)
!940 = !DILocation(line: 185, column: 35, scope: !934)
!941 = !DILocation(line: 185, column: 47, scope: !934)
!942 = !DILocation(line: 185, column: 59, scope: !934)
!943 = !DILocation(line: 184, column: 15, scope: !934)
!944 = !DILocation(line: 190, column: 17, scope: !945)
!945 = distinct !DILexicalBlock(scope: !934, file: !3, line: 190, column: 13)
!946 = !DILocation(line: 190, column: 13, scope: !934)
!947 = !DILocation(line: 191, column: 21, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 190, column: 23)
!949 = !DILocation(line: 193, column: 23, scope: !948)
!950 = !DILocation(line: 191, column: 13, scope: !948)
!951 = !DILocation(line: 196, column: 13, scope: !948)
!952 = !DILocation(line: 198, column: 10, scope: !934)
!953 = !DILocation(line: 199, column: 15, scope: !954)
!954 = distinct !DILexicalBlock(scope: !934, file: !3, line: 199, column: 13)
!955 = !DILocation(line: 199, column: 13, scope: !934)
!956 = !DILocation(line: 202, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 9)
!958 = !DILocation(line: 202, column: 9, scope: !2)
!959 = !DILocation(line: 203, column: 17, scope: !960)
!960 = distinct !DILexicalBlock(scope: !957, file: !3, line: 202, column: 17)
!961 = !DILocation(line: 203, column: 9, scope: !960)
!962 = !DILocation(line: 207, column: 9, scope: !960)
!963 = !DILocation(line: 212, column: 12, scope: !964)
!964 = distinct !DILexicalBlock(scope: !2, file: !3, line: 212, column: 9)
!965 = !DILocation(line: 210, column: 3, scope: !2)
!966 = !DILocation(line: 212, column: 20, scope: !964)
!967 = !DILocation(line: 213, column: 9, scope: !964)
!968 = !DILocation(line: 217, column: 1, scope: !2)
!969 = !DILocation(line: 216, column: 5, scope: !2)
!970 = !DISubprogram(name: "fgets", scope: !895, file: !895, line: 564, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!971 = !DISubroutineType(types: !972)
!972 = !{!13, !973, !37, !974}
!973 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!974 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !276)
!975 = distinct !DISubprogram(name: "putpdb", scope: !3, file: !3, line: 225, type: !976, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !978)
!976 = !DISubroutineType(types: !977)
!977 = !{!37, !13, !353, !13}
!978 = !{!979, !980, !981, !982, !983}
!979 = !DILocalVariable(name: "fname", arg: 1, scope: !975, file: !3, line: 225, type: !13)
!980 = !DILocalVariable(name: "mol", arg: 2, scope: !975, file: !3, line: 225, type: !353)
!981 = !DILocalVariable(name: "options", arg: 3, scope: !975, file: !3, line: 225, type: !13)
!982 = !DILocalVariable(name: "fp", scope: !975, file: !3, line: 227, type: !276)
!983 = !DILocalVariable(name: "ier", scope: !975, file: !3, line: 228, type: !37)
!984 = !DILocation(line: 0, scope: !975)
!985 = !DILocation(line: 230, column: 10, scope: !986)
!986 = distinct !DILexicalBlock(scope: !975, file: !3, line: 230, column: 9)
!987 = !DILocation(line: 230, column: 9, scope: !975)
!988 = !DILocation(line: 231, column: 13, scope: !989)
!989 = distinct !DILexicalBlock(scope: !986, file: !3, line: 230, column: 15)
!990 = !DILocation(line: 232, column: 21, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 231, column: 34)
!992 = distinct !DILexicalBlock(scope: !989, file: !3, line: 231, column: 13)
!993 = !DILocation(line: 232, column: 13, scope: !991)
!994 = !DILocation(line: 233, column: 9, scope: !991)
!995 = !DILocation(line: 238, column: 9, scope: !975)
!996 = !DILocation(line: 239, column: 14, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 239, column: 13)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 238, column: 30)
!999 = distinct !DILexicalBlock(scope: !975, file: !3, line: 238, column: 9)
!1000 = !DILocation(line: 239, column: 13, scope: !998)
!1001 = !DILocation(line: 241, column: 24, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !3, line: 241, column: 18)
!1003 = !DILocation(line: 241, column: 43, scope: !1002)
!1004 = !DILocation(line: 241, column: 18, scope: !997)
!1005 = !DILocalVariable(name: "fp", arg: 1, scope: !1006, file: !3, line: 849, type: !276)
!1006 = distinct !DISubprogram(name: "fputpdb", scope: !3, file: !3, line: 849, type: !1007, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !276, !353, !13}
!1009 = !{!1005, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1023, !1024, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036}
!1010 = !DILocalVariable(name: "mol", arg: 2, scope: !1006, file: !3, line: 849, type: !353)
!1011 = !DILocalVariable(name: "options", arg: 3, scope: !1006, file: !3, line: 849, type: !13)
!1012 = !DILocalVariable(name: "r", scope: !1006, file: !3, line: 863, type: !37)
!1013 = !DILocalVariable(name: "tr", scope: !1006, file: !3, line: 863, type: !37)
!1014 = !DILocalVariable(name: "rn", scope: !1006, file: !3, line: 863, type: !37)
!1015 = !DILocalVariable(name: "a", scope: !1006, file: !3, line: 863, type: !37)
!1016 = !DILocalVariable(name: "ta", scope: !1006, file: !3, line: 863, type: !37)
!1017 = !DILocalVariable(name: "cid", scope: !1006, file: !3, line: 864, type: !14)
!1018 = !DILocalVariable(name: "sp", scope: !1006, file: !3, line: 865, type: !74)
!1019 = !DILocalVariable(name: "res", scope: !1006, file: !3, line: 866, type: !39)
!1020 = !DILocalVariable(name: "ap", scope: !1006, file: !3, line: 867, type: !219)
!1021 = !DILocalVariable(name: "rname", scope: !1006, file: !3, line: 868, type: !1022)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !229)
!1023 = !DILocalVariable(name: "aname", scope: !1006, file: !3, line: 869, type: !1022)
!1024 = !DILocalVariable(name: "rid", scope: !1006, file: !3, line: 870, type: !1025)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !1026)
!1026 = !{!1027}
!1027 = !DISubrange(count: 7)
!1028 = !DILocalVariable(name: "loptions", scope: !1006, file: !3, line: 871, type: !335)
!1029 = !DILocalVariable(name: "opt_pqr", scope: !1006, file: !3, line: 872, type: !37)
!1030 = !DILocalVariable(name: "opt_nobocc", scope: !1006, file: !3, line: 873, type: !37)
!1031 = !DILocalVariable(name: "opt_brook", scope: !1006, file: !3, line: 874, type: !37)
!1032 = !DILocalVariable(name: "opt_wwpdb", scope: !1006, file: !3, line: 875, type: !37)
!1033 = !DILocalVariable(name: "opt_tr", scope: !1006, file: !3, line: 876, type: !37)
!1034 = !DILocalVariable(name: "opt_nocid", scope: !1006, file: !3, line: 877, type: !37)
!1035 = !DILocalVariable(name: "opt_allcid", scope: !1006, file: !3, line: 878, type: !37)
!1036 = !DILocalVariable(name: "cidstate", scope: !1006, file: !3, line: 879, type: !248)
!1037 = !DILocation(line: 0, scope: !1006, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 246, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 245, column: 23)
!1040 = distinct !DILexicalBlock(scope: !998, file: !3, line: 245, column: 13)
!1041 = !DILocation(line: 868, column: 5, scope: !1006, inlinedAt: !1038)
!1042 = !DILocation(line: 868, column: 10, scope: !1006, inlinedAt: !1038)
!1043 = !DILocation(line: 869, column: 5, scope: !1006, inlinedAt: !1038)
!1044 = !DILocation(line: 869, column: 10, scope: !1006, inlinedAt: !1038)
!1045 = !DILocation(line: 870, column: 5, scope: !1006, inlinedAt: !1038)
!1046 = !DILocation(line: 870, column: 10, scope: !1006, inlinedAt: !1038)
!1047 = !DILocation(line: 871, column: 5, scope: !1006, inlinedAt: !1038)
!1048 = !DILocation(line: 871, column: 10, scope: !1006, inlinedAt: !1038)
!1049 = !DILocation(line: 885, column: 9, scope: !1006, inlinedAt: !1038)
!1050 = !DILocation(line: 242, column: 13, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 241, column: 52)
!1052 = !DILocation(line: 245, column: 13, scope: !998)
!1053 = !DILocation(line: 240, column: 18, scope: !997)
!1054 = !DILocation(line: 885, column: 10, scope: !1055, inlinedAt: !1038)
!1055 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 885, column: 9)
!1056 = !DILocation(line: 886, column: 17, scope: !1057, inlinedAt: !1038)
!1057 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 885, column: 14)
!1058 = !DILocation(line: 886, column: 9, scope: !1057, inlinedAt: !1038)
!1059 = !DILocation(line: 887, column: 9, scope: !1057, inlinedAt: !1038)
!1060 = !DILocation(line: 890, column: 17, scope: !1061, inlinedAt: !1038)
!1061 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 890, column: 9)
!1062 = !DILocation(line: 890, column: 9, scope: !1006, inlinedAt: !1038)
!1063 = !DILocation(line: 891, column: 19, scope: !1061, inlinedAt: !1038)
!1064 = !DILocation(line: 891, column: 9, scope: !1061, inlinedAt: !1038)
!1065 = !DILocation(line: 893, column: 9, scope: !1066, inlinedAt: !1038)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 892, column: 10)
!1067 = !DILocation(line: 894, column: 9, scope: !1066, inlinedAt: !1038)
!1068 = !DILocation(line: 894, column: 23, scope: !1066, inlinedAt: !1038)
!1069 = !DILocation(line: 896, column: 15, scope: !1006, inlinedAt: !1038)
!1070 = !DILocation(line: 896, column: 40, scope: !1006, inlinedAt: !1038)
!1071 = !DILocation(line: 897, column: 18, scope: !1006, inlinedAt: !1038)
!1072 = !DILocation(line: 897, column: 46, scope: !1006, inlinedAt: !1038)
!1073 = !DILocation(line: 898, column: 17, scope: !1006, inlinedAt: !1038)
!1074 = !DILocation(line: 898, column: 44, scope: !1006, inlinedAt: !1038)
!1075 = !DILocation(line: 899, column: 17, scope: !1006, inlinedAt: !1038)
!1076 = !DILocation(line: 899, column: 44, scope: !1006, inlinedAt: !1038)
!1077 = !DILocation(line: 900, column: 14, scope: !1006, inlinedAt: !1038)
!1078 = !DILocation(line: 900, column: 38, scope: !1006, inlinedAt: !1038)
!1079 = !DILocation(line: 901, column: 17, scope: !1006, inlinedAt: !1038)
!1080 = !DILocation(line: 901, column: 44, scope: !1006, inlinedAt: !1038)
!1081 = !DILocation(line: 902, column: 18, scope: !1006, inlinedAt: !1038)
!1082 = !DILocation(line: 902, column: 46, scope: !1006, inlinedAt: !1038)
!1083 = !DILocalVariable(name: "nocid", arg: 1, scope: !1084, file: !3, line: 1021, type: !37)
!1084 = distinct !DISubprogram(name: "initcid", scope: !3, file: !3, line: 1021, type: !1085, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!248, !37, !37, !353}
!1087 = !{!1083, !1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1088 = !DILocalVariable(name: "allcid", arg: 2, scope: !1084, file: !3, line: 1021, type: !37)
!1089 = !DILocalVariable(name: "mol", arg: 3, scope: !1084, file: !3, line: 1021, type: !353)
!1090 = !DILocalVariable(name: "cid", scope: !1084, file: !3, line: 1023, type: !248)
!1091 = !DILocalVariable(name: "c", scope: !1084, file: !3, line: 1024, type: !37)
!1092 = !DILocalVariable(name: "sp", scope: !1084, file: !3, line: 1025, type: !74)
!1093 = !DILocalVariable(name: "err", scope: !1084, file: !3, line: 1026, type: !37)
!1094 = !DILabel(scope: !1084, name: "CLEAN_UP", file: !3, line: 1067)
!1095 = !DILocation(line: 0, scope: !1084, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 905, column: 16, scope: !1006, inlinedAt: !1038)
!1097 = !DILocation(line: 1028, column: 9, scope: !1098, inlinedAt: !1096)
!1098 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1028, column: 9)
!1099 = !DILocation(line: 1028, column: 9, scope: !1084, inlinedAt: !1096)
!1100 = !DILocation(line: 1031, column: 21, scope: !1084, inlinedAt: !1096)
!1101 = !DILocation(line: 1031, column: 11, scope: !1084, inlinedAt: !1096)
!1102 = !DILocation(line: 1032, column: 13, scope: !1103, inlinedAt: !1096)
!1103 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1032, column: 9)
!1104 = !DILocation(line: 1032, column: 9, scope: !1084, inlinedAt: !1096)
!1105 = !DILocation(line: 1033, column: 17, scope: !1106, inlinedAt: !1096)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 1032, column: 22)
!1107 = !DILocation(line: 1033, column: 9, scope: !1106, inlinedAt: !1096)
!1108 = !DILocation(line: 1067, column: 3, scope: !1084, inlinedAt: !1096)
!1109 = !DILocalVariable(name: "cid", arg: 1, scope: !1110, file: !3, line: 1011, type: !248)
!1110 = distinct !DISubprogram(name: "freecid", scope: !3, file: !3, line: 1011, type: !1111, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !248}
!1113 = !{!1109}
!1114 = !DILocation(line: 0, scope: !1110, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 1070, column: 9, scope: !1116, inlinedAt: !1096)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 1069, column: 14)
!1117 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1069, column: 9)
!1118 = !DILocation(line: 1014, column: 9, scope: !1110, inlinedAt: !1115)
!1119 = !DILocation(line: 1037, column: 28, scope: !1084, inlinedAt: !1096)
!1120 = !DILocation(line: 1037, column: 10, scope: !1084, inlinedAt: !1096)
!1121 = !DILocation(line: 1037, column: 17, scope: !1084, inlinedAt: !1096)
!1122 = !{!1123, !373, i64 8}
!1123 = !{!"cid_t", !491, i64 0, !491, i64 4, !373, i64 8}
!1124 = !DILocation(line: 1038, column: 21, scope: !1125, inlinedAt: !1096)
!1125 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1038, column: 9)
!1126 = !DILocation(line: 1038, column: 9, scope: !1084, inlinedAt: !1096)
!1127 = !DILocation(line: 1043, column: 10, scope: !1084, inlinedAt: !1096)
!1128 = !DILocation(line: 1043, column: 17, scope: !1084, inlinedAt: !1096)
!1129 = !{!1123, !491, i64 0}
!1130 = !DILocation(line: 1044, column: 10, scope: !1084, inlinedAt: !1096)
!1131 = !DILocation(line: 1044, column: 17, scope: !1084, inlinedAt: !1096)
!1132 = !{!1123, !491, i64 4}
!1133 = !DILocation(line: 1045, column: 5, scope: !1134, inlinedAt: !1096)
!1134 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1045, column: 5)
!1135 = !DILocation(line: 1046, column: 24, scope: !1136, inlinedAt: !1096)
!1136 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1045, column: 5)
!1137 = !DILocation(line: 1048, column: 9, scope: !1084, inlinedAt: !1096)
!1138 = !DILocation(line: 1054, column: 24, scope: !1139, inlinedAt: !1096)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 1054, column: 9)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 1048, column: 17)
!1141 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1048, column: 9)
!1142 = !DILocation(line: 0, scope: !1139, inlinedAt: !1096)
!1143 = !DILocation(line: 1054, column: 9, scope: !1139, inlinedAt: !1096)
!1144 = !DILocation(line: 1055, column: 28, scope: !1145, inlinedAt: !1096)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 1055, column: 17)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 1054, column: 56)
!1147 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 1054, column: 9)
!1148 = !DILocation(line: 1055, column: 17, scope: !1145, inlinedAt: !1096)
!1149 = !DILocation(line: 1055, column: 42, scope: !1145, inlinedAt: !1096)
!1150 = !DILocation(line: 1055, column: 17, scope: !1146, inlinedAt: !1096)
!1151 = !DILocation(line: 1056, column: 21, scope: !1152, inlinedAt: !1096)
!1152 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 1055, column: 48)
!1153 = !DILocation(line: 1057, column: 30, scope: !1154, inlinedAt: !1096)
!1154 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 1057, column: 21)
!1155 = !DILocation(line: 1058, column: 21, scope: !1154, inlinedAt: !1096)
!1156 = !DILocation(line: 1058, column: 36, scope: !1154, inlinedAt: !1096)
!1157 = !DILocation(line: 1054, column: 48, scope: !1147, inlinedAt: !1096)
!1158 = distinct !{!1158, !1143, !1159, !516, !517}
!1159 = !DILocation(line: 1060, column: 9, scope: !1139, inlinedAt: !1096)
!1160 = !DILocation(line: 1061, column: 9, scope: !1161, inlinedAt: !1096)
!1161 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 1061, column: 9)
!1162 = !DILocation(line: 1062, column: 18, scope: !1163, inlinedAt: !1096)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 1062, column: 17)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 1061, column: 59)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 1061, column: 9)
!1166 = !DILocation(line: 1062, column: 17, scope: !1164, inlinedAt: !1096)
!1167 = !DILocation(line: 1061, column: 55, scope: !1165, inlinedAt: !1096)
!1168 = !DILocation(line: 1061, column: 28, scope: !1165, inlinedAt: !1096)
!1169 = distinct !{!1169, !1160, !1170, !516, !517}
!1170 = !DILocation(line: 1064, column: 9, scope: !1161, inlinedAt: !1096)
!1171 = !DILocation(line: 1039, column: 17, scope: !1172, inlinedAt: !1096)
!1172 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 1038, column: 30)
!1173 = !DILocation(line: 1039, column: 9, scope: !1172, inlinedAt: !1096)
!1174 = !DILocation(line: 1017, column: 9, scope: !1175, inlinedAt: !1115)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 1014, column: 22)
!1176 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 1014, column: 9)
!1177 = !DILocation(line: 1018, column: 5, scope: !1175, inlinedAt: !1115)
!1178 = !DILocation(line: 911, column: 36, scope: !1179, inlinedAt: !1038)
!1179 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 911, column: 5)
!1180 = !DILocation(line: 0, scope: !1179, inlinedAt: !1038)
!1181 = !DILocation(line: 911, column: 5, scope: !1179, inlinedAt: !1038)
!1182 = !DILocalVariable(name: "cid", arg: 1, scope: !1183, file: !3, line: 1077, type: !248)
!1183 = distinct !DISubprogram(name: "nextcid", scope: !3, file: !3, line: 1077, type: !1184, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!37, !248, !37, !37, !74}
!1186 = !{!1182, !1187, !1188, !1189, !1190}
!1187 = !DILocalVariable(name: "nocid", arg: 2, scope: !1183, file: !3, line: 1077, type: !37)
!1188 = !DILocalVariable(name: "allcid", arg: 3, scope: !1183, file: !3, line: 1077, type: !37)
!1189 = !DILocalVariable(name: "sp", arg: 4, scope: !1183, file: !3, line: 1077, type: !74)
!1190 = !DILocalVariable(name: "c", scope: !1183, file: !3, line: 1079, type: !37)
!1191 = !DILocation(line: 0, scope: !1183, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 920, column: 15, scope: !1193, inlinedAt: !1038)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 911, column: 68)
!1194 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 911, column: 5)
!1195 = !DILocation(line: 1081, column: 9, scope: !1183, inlinedAt: !1192)
!1196 = !DILocation(line: 1084, column: 9, scope: !1183, inlinedAt: !1192)
!1197 = !DILocation(line: 1085, column: 17, scope: !1198, inlinedAt: !1192)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 1084, column: 22)
!1199 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 1084, column: 9)
!1200 = !DILocation(line: 1085, column: 9, scope: !1198, inlinedAt: !1192)
!1201 = !DILocation(line: 1086, column: 9, scope: !1198, inlinedAt: !1192)
!1202 = !DILocation(line: 1087, column: 21, scope: !1203, inlinedAt: !1192)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 1087, column: 16)
!1204 = !DILocation(line: 1087, column: 35, scope: !1203, inlinedAt: !1192)
!1205 = !DILocation(line: 1087, column: 28, scope: !1203, inlinedAt: !1192)
!1206 = !DILocation(line: 1087, column: 16, scope: !1199, inlinedAt: !1192)
!1207 = !DILocation(line: 1089, column: 14, scope: !1203, inlinedAt: !1192)
!1208 = !DILocation(line: 1090, column: 24, scope: !1209, inlinedAt: !1192)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 1090, column: 13)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 1089, column: 22)
!1211 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 1089, column: 14)
!1212 = !DILocation(line: 1090, column: 13, scope: !1209, inlinedAt: !1192)
!1213 = !DILocation(line: 1090, column: 38, scope: !1209, inlinedAt: !1192)
!1214 = !DILocation(line: 1090, column: 13, scope: !1210, inlinedAt: !1192)
!1215 = !DILocation(line: 1091, column: 17, scope: !1216, inlinedAt: !1192)
!1216 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 1090, column: 44)
!1217 = !DILocation(line: 1092, column: 26, scope: !1218, inlinedAt: !1192)
!1218 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 1092, column: 17)
!1219 = !DILocation(line: 1093, column: 17, scope: !1218, inlinedAt: !1192)
!1220 = !DILocation(line: 1096, column: 14, scope: !1210, inlinedAt: !1192)
!1221 = !DILocation(line: 1096, column: 9, scope: !1210, inlinedAt: !1192)
!1222 = !DILocation(line: 1096, column: 34, scope: !1210, inlinedAt: !1192)
!1223 = !DILocation(line: 1097, column: 14, scope: !1224, inlinedAt: !1192)
!1224 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 1097, column: 9)
!1225 = !DILocation(line: 1097, column: 41, scope: !1226, inlinedAt: !1192)
!1226 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 1097, column: 9)
!1227 = !DILocation(line: 0, scope: !1224, inlinedAt: !1192)
!1228 = !DILocation(line: 1097, column: 9, scope: !1224, inlinedAt: !1192)
!1229 = !DILocation(line: 1098, column: 23, scope: !1230, inlinedAt: !1192)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 1098, column: 17)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 1097, column: 72)
!1232 = !DILocation(line: 1098, column: 18, scope: !1230, inlinedAt: !1192)
!1233 = !DILocation(line: 1098, column: 17, scope: !1231, inlinedAt: !1192)
!1234 = distinct !{!1234, !1228, !1235, !516, !517}
!1235 = !DILocation(line: 1100, column: 9, scope: !1224, inlinedAt: !1192)
!1236 = !DILocation(line: 1104, column: 20, scope: !1237, inlinedAt: !1192)
!1237 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 1102, column: 12)
!1238 = !DILocation(line: 1105, column: 9, scope: !1237, inlinedAt: !1192)
!1239 = !DILocation(line: 921, column: 29, scope: !1240, inlinedAt: !1038)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 921, column: 9)
!1241 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 921, column: 9)
!1242 = !{!740, !491, i64 32}
!1243 = !DILocation(line: 921, column: 23, scope: !1240, inlinedAt: !1038)
!1244 = !DILocation(line: 921, column: 9, scope: !1241, inlinedAt: !1038)
!1245 = !DILocation(line: 922, column: 23, scope: !1246, inlinedAt: !1038)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 921, column: 53)
!1247 = !DILocation(line: 922, column: 19, scope: !1246, inlinedAt: !1038)
!1248 = !DILocation(line: 923, column: 30, scope: !1246, inlinedAt: !1038)
!1249 = !DILocation(line: 923, column: 25, scope: !1246, inlinedAt: !1038)
!1250 = !DILocation(line: 923, column: 13, scope: !1246, inlinedAt: !1038)
!1251 = !DILocation(line: 0, scope: !1252, inlinedAt: !1038)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 924, column: 17)
!1253 = !DILocation(line: 924, column: 17, scope: !1246, inlinedAt: !1038)
!1254 = !DILocalVariable(name: "rname", arg: 1, scope: !1255, file: !3, line: 1109, type: !13)
!1255 = distinct !DISubprogram(name: "mk_brook_rname", scope: !3, file: !3, line: 1109, type: !1256, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1258)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !13, !39}
!1258 = !{!1254, !1259}
!1259 = !DILocalVariable(name: "res", arg: 2, scope: !1255, file: !3, line: 1109, type: !39)
!1260 = !DILocation(line: 0, scope: !1255, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 925, column: 17, scope: !1252, inlinedAt: !1038)
!1262 = !DILocation(line: 1112, column: 5, scope: !1255, inlinedAt: !1261)
!1263 = !DILocation(line: 1114, column: 10, scope: !1264, inlinedAt: !1261)
!1264 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1114, column: 9)
!1265 = !DILocation(line: 1114, column: 9, scope: !1255, inlinedAt: !1261)
!1266 = !DILocation(line: 1115, column: 9, scope: !1264, inlinedAt: !1261)
!1267 = !DILocation(line: 1116, column: 9, scope: !1255, inlinedAt: !1261)
!1268 = !DILocation(line: 1117, column: 9, scope: !1269, inlinedAt: !1261)
!1269 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1116, column: 9)
!1270 = !DILocation(line: 1119, column: 9, scope: !1271, inlinedAt: !1261)
!1271 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1118, column: 9)
!1272 = !DILocation(line: 1121, column: 9, scope: !1273, inlinedAt: !1261)
!1273 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1120, column: 9)
!1274 = !DILocation(line: 1123, column: 9, scope: !1275, inlinedAt: !1261)
!1275 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1122, column: 9)
!1276 = !DILocation(line: 1125, column: 10, scope: !1277, inlinedAt: !1261)
!1277 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1125, column: 9)
!1278 = !DILocation(line: 1125, column: 9, scope: !1255, inlinedAt: !1261)
!1279 = !DILocation(line: 1126, column: 9, scope: !1277, inlinedAt: !1261)
!1280 = !DILocation(line: 1127, column: 10, scope: !1281, inlinedAt: !1261)
!1281 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1127, column: 9)
!1282 = !DILocation(line: 1127, column: 9, scope: !1255, inlinedAt: !1261)
!1283 = !DILocation(line: 1128, column: 9, scope: !1281, inlinedAt: !1261)
!1284 = !DILocation(line: 1129, column: 10, scope: !1285, inlinedAt: !1261)
!1285 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1129, column: 9)
!1286 = !DILocation(line: 1129, column: 9, scope: !1255, inlinedAt: !1261)
!1287 = !DILocation(line: 1130, column: 9, scope: !1285, inlinedAt: !1261)
!1288 = !DILocation(line: 1131, column: 10, scope: !1289, inlinedAt: !1261)
!1289 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1131, column: 9)
!1290 = !DILocation(line: 1131, column: 9, scope: !1255, inlinedAt: !1261)
!1291 = !DILocation(line: 1132, column: 9, scope: !1289, inlinedAt: !1261)
!1292 = !DILocation(line: 1134, column: 10, scope: !1293, inlinedAt: !1261)
!1293 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1134, column: 9)
!1294 = !DILocation(line: 1134, column: 9, scope: !1255, inlinedAt: !1261)
!1295 = !DILocation(line: 1135, column: 9, scope: !1293, inlinedAt: !1261)
!1296 = !DILocation(line: 1136, column: 10, scope: !1297, inlinedAt: !1261)
!1297 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1136, column: 9)
!1298 = !DILocation(line: 1136, column: 9, scope: !1255, inlinedAt: !1261)
!1299 = !DILocation(line: 1137, column: 9, scope: !1297, inlinedAt: !1261)
!1300 = !DILocation(line: 1138, column: 10, scope: !1301, inlinedAt: !1261)
!1301 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1138, column: 9)
!1302 = !DILocation(line: 1138, column: 9, scope: !1255, inlinedAt: !1261)
!1303 = !DILocation(line: 1139, column: 9, scope: !1301, inlinedAt: !1261)
!1304 = !DILocation(line: 1140, column: 10, scope: !1305, inlinedAt: !1261)
!1305 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1140, column: 9)
!1306 = !DILocation(line: 1140, column: 9, scope: !1255, inlinedAt: !1261)
!1307 = !DILocation(line: 1141, column: 9, scope: !1305, inlinedAt: !1261)
!1308 = !DILocation(line: 1143, column: 9, scope: !1255, inlinedAt: !1261)
!1309 = !DILocation(line: 1144, column: 9, scope: !1310, inlinedAt: !1261)
!1310 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1143, column: 9)
!1311 = !DILocation(line: 1146, column: 9, scope: !1312, inlinedAt: !1261)
!1312 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1145, column: 9)
!1313 = !DILocation(line: 1148, column: 9, scope: !1314, inlinedAt: !1261)
!1314 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1147, column: 9)
!1315 = !DILocation(line: 1150, column: 9, scope: !1316, inlinedAt: !1261)
!1316 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1149, column: 9)
!1317 = !DILocation(line: 1153, column: 9, scope: !1318, inlinedAt: !1261)
!1318 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1152, column: 9)
!1319 = !DILocation(line: 1155, column: 9, scope: !1320, inlinedAt: !1261)
!1320 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1154, column: 9)
!1321 = !DILocation(line: 1157, column: 9, scope: !1322, inlinedAt: !1261)
!1322 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1156, column: 9)
!1323 = !DILocation(line: 1159, column: 9, scope: !1324, inlinedAt: !1261)
!1324 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1158, column: 9)
!1325 = !DILocation(line: 1162, column: 9, scope: !1326, inlinedAt: !1261)
!1326 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1161, column: 9)
!1327 = !DILocation(line: 1164, column: 9, scope: !1328, inlinedAt: !1261)
!1328 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1163, column: 9)
!1329 = !DILocation(line: 1166, column: 9, scope: !1330, inlinedAt: !1261)
!1330 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1165, column: 9)
!1331 = !DILocation(line: 1168, column: 9, scope: !1332, inlinedAt: !1261)
!1332 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1167, column: 9)
!1333 = !DILocation(line: 1171, column: 9, scope: !1334, inlinedAt: !1261)
!1334 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1170, column: 9)
!1335 = !DILocation(line: 1173, column: 9, scope: !1336, inlinedAt: !1261)
!1336 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1172, column: 9)
!1337 = !DILocation(line: 1175, column: 9, scope: !1338, inlinedAt: !1261)
!1338 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1174, column: 9)
!1339 = !DILocation(line: 1177, column: 9, scope: !1340, inlinedAt: !1261)
!1340 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1176, column: 9)
!1341 = !DILocation(line: 1179, column: 9, scope: !1255, inlinedAt: !1261)
!1342 = !DILocation(line: 1180, column: 9, scope: !1343, inlinedAt: !1261)
!1343 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1179, column: 9)
!1344 = !DILocation(line: 1184, column: 9, scope: !1345, inlinedAt: !1261)
!1345 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1183, column: 9)
!1346 = !DILocation(line: 1186, column: 9, scope: !1347, inlinedAt: !1261)
!1347 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1185, column: 9)
!1348 = !DILocation(line: 1188, column: 9, scope: !1349, inlinedAt: !1261)
!1349 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1187, column: 9)
!1350 = !DILocation(line: 1190, column: 9, scope: !1351, inlinedAt: !1261)
!1351 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1189, column: 9)
!1352 = !DILocation(line: 926, column: 22, scope: !1252, inlinedAt: !1038)
!1353 = !DILocalVariable(name: "rname", arg: 1, scope: !1354, file: !3, line: 1194, type: !13)
!1354 = distinct !DISubprogram(name: "mk_wwpdb_rname", scope: !3, file: !3, line: 1194, type: !1256, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1355)
!1355 = !{!1353, !1356}
!1356 = !DILocalVariable(name: "res", arg: 2, scope: !1354, file: !3, line: 1194, type: !39)
!1357 = !DILocation(line: 0, scope: !1354, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 927, column: 17, scope: !1359, inlinedAt: !1038)
!1359 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 926, column: 22)
!1360 = !DILocation(line: 1197, column: 5, scope: !1354, inlinedAt: !1358)
!1361 = !DILocation(line: 1199, column: 10, scope: !1362, inlinedAt: !1358)
!1362 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1199, column: 9)
!1363 = !DILocation(line: 1199, column: 9, scope: !1354, inlinedAt: !1358)
!1364 = !DILocation(line: 1200, column: 9, scope: !1362, inlinedAt: !1358)
!1365 = !DILocation(line: 1201, column: 9, scope: !1354, inlinedAt: !1358)
!1366 = !DILocation(line: 1202, column: 9, scope: !1367, inlinedAt: !1358)
!1367 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1201, column: 9)
!1368 = !DILocation(line: 1204, column: 9, scope: !1369, inlinedAt: !1358)
!1369 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1203, column: 9)
!1370 = !DILocation(line: 1206, column: 9, scope: !1371, inlinedAt: !1358)
!1371 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1205, column: 9)
!1372 = !DILocation(line: 1208, column: 9, scope: !1373, inlinedAt: !1358)
!1373 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1207, column: 9)
!1374 = !DILocation(line: 1210, column: 10, scope: !1375, inlinedAt: !1358)
!1375 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1210, column: 9)
!1376 = !DILocation(line: 1210, column: 9, scope: !1354, inlinedAt: !1358)
!1377 = !DILocation(line: 1211, column: 9, scope: !1375, inlinedAt: !1358)
!1378 = !DILocation(line: 1212, column: 10, scope: !1379, inlinedAt: !1358)
!1379 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1212, column: 9)
!1380 = !DILocation(line: 1212, column: 9, scope: !1354, inlinedAt: !1358)
!1381 = !DILocation(line: 1213, column: 9, scope: !1379, inlinedAt: !1358)
!1382 = !DILocation(line: 1214, column: 10, scope: !1383, inlinedAt: !1358)
!1383 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1214, column: 9)
!1384 = !DILocation(line: 1214, column: 9, scope: !1354, inlinedAt: !1358)
!1385 = !DILocation(line: 1215, column: 9, scope: !1383, inlinedAt: !1358)
!1386 = !DILocation(line: 1216, column: 10, scope: !1387, inlinedAt: !1358)
!1387 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1216, column: 9)
!1388 = !DILocation(line: 1216, column: 9, scope: !1354, inlinedAt: !1358)
!1389 = !DILocation(line: 1217, column: 9, scope: !1387, inlinedAt: !1358)
!1390 = !DILocation(line: 1219, column: 10, scope: !1391, inlinedAt: !1358)
!1391 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1219, column: 9)
!1392 = !DILocation(line: 1219, column: 9, scope: !1354, inlinedAt: !1358)
!1393 = !DILocation(line: 1220, column: 9, scope: !1391, inlinedAt: !1358)
!1394 = !DILocation(line: 1221, column: 10, scope: !1395, inlinedAt: !1358)
!1395 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1221, column: 9)
!1396 = !DILocation(line: 1221, column: 9, scope: !1354, inlinedAt: !1358)
!1397 = !DILocation(line: 1222, column: 9, scope: !1395, inlinedAt: !1358)
!1398 = !DILocation(line: 1223, column: 10, scope: !1399, inlinedAt: !1358)
!1399 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1223, column: 9)
!1400 = !DILocation(line: 1223, column: 9, scope: !1354, inlinedAt: !1358)
!1401 = !DILocation(line: 1224, column: 9, scope: !1399, inlinedAt: !1358)
!1402 = !DILocation(line: 1225, column: 10, scope: !1403, inlinedAt: !1358)
!1403 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1225, column: 9)
!1404 = !DILocation(line: 1225, column: 9, scope: !1354, inlinedAt: !1358)
!1405 = !DILocation(line: 1226, column: 9, scope: !1403, inlinedAt: !1358)
!1406 = !DILocation(line: 1228, column: 9, scope: !1354, inlinedAt: !1358)
!1407 = !DILocation(line: 1229, column: 9, scope: !1408, inlinedAt: !1358)
!1408 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1228, column: 9)
!1409 = !DILocation(line: 1231, column: 9, scope: !1410, inlinedAt: !1358)
!1410 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1230, column: 9)
!1411 = !DILocation(line: 1233, column: 9, scope: !1412, inlinedAt: !1358)
!1412 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1232, column: 9)
!1413 = !DILocation(line: 1235, column: 9, scope: !1414, inlinedAt: !1358)
!1414 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1234, column: 9)
!1415 = !DILocation(line: 1238, column: 9, scope: !1416, inlinedAt: !1358)
!1416 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1237, column: 9)
!1417 = !DILocation(line: 1240, column: 9, scope: !1418, inlinedAt: !1358)
!1418 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1239, column: 9)
!1419 = !DILocation(line: 1242, column: 9, scope: !1420, inlinedAt: !1358)
!1420 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1241, column: 9)
!1421 = !DILocation(line: 1244, column: 9, scope: !1422, inlinedAt: !1358)
!1422 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1243, column: 9)
!1423 = !DILocation(line: 1247, column: 9, scope: !1424, inlinedAt: !1358)
!1424 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1246, column: 9)
!1425 = !DILocation(line: 1249, column: 9, scope: !1426, inlinedAt: !1358)
!1426 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1248, column: 9)
!1427 = !DILocation(line: 1251, column: 9, scope: !1428, inlinedAt: !1358)
!1428 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1250, column: 9)
!1429 = !DILocation(line: 1253, column: 9, scope: !1430, inlinedAt: !1358)
!1430 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1252, column: 9)
!1431 = !DILocation(line: 1256, column: 9, scope: !1432, inlinedAt: !1358)
!1432 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1255, column: 9)
!1433 = !DILocation(line: 1258, column: 9, scope: !1434, inlinedAt: !1358)
!1434 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1257, column: 9)
!1435 = !DILocation(line: 1260, column: 9, scope: !1436, inlinedAt: !1358)
!1436 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1259, column: 9)
!1437 = !DILocation(line: 1262, column: 9, scope: !1438, inlinedAt: !1358)
!1438 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1261, column: 9)
!1439 = !DILocation(line: 1264, column: 9, scope: !1354, inlinedAt: !1358)
!1440 = !DILocation(line: 1265, column: 9, scope: !1441, inlinedAt: !1358)
!1441 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1264, column: 9)
!1442 = !DILocation(line: 1269, column: 9, scope: !1443, inlinedAt: !1358)
!1443 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1268, column: 9)
!1444 = !DILocation(line: 1271, column: 9, scope: !1445, inlinedAt: !1358)
!1445 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1270, column: 9)
!1446 = !DILocation(line: 1273, column: 9, scope: !1447, inlinedAt: !1358)
!1447 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1272, column: 9)
!1448 = !DILocation(line: 1275, column: 9, scope: !1449, inlinedAt: !1358)
!1449 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1274, column: 9)
!1450 = !DILocation(line: 929, column: 17, scope: !1359, inlinedAt: !1038)
!1451 = !DILocation(line: 930, column: 34, scope: !1452, inlinedAt: !1038)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 930, column: 13)
!1453 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 930, column: 13)
!1454 = !DILocation(line: 930, column: 27, scope: !1452, inlinedAt: !1038)
!1455 = !DILocation(line: 930, column: 13, scope: !1453, inlinedAt: !1038)
!1456 = !DILocation(line: 931, column: 19, scope: !1457, inlinedAt: !1038)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 930, column: 49)
!1458 = !DILocation(line: 932, column: 28, scope: !1457, inlinedAt: !1038)
!1459 = !{!611, !373, i64 120}
!1460 = !DILocation(line: 0, scope: !1461, inlinedAt: !1038)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 934, column: 21)
!1462 = !DILocation(line: 934, column: 21, scope: !1457, inlinedAt: !1038)
!1463 = !DILocalVariable(name: "aname", arg: 1, scope: !1464, file: !3, line: 1279, type: !13)
!1464 = distinct !DISubprogram(name: "mk_brook_aname", scope: !3, file: !3, line: 1279, type: !1465, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !13, !13, !13}
!1467 = !{!1463, !1468, !1469}
!1468 = !DILocalVariable(name: "name", arg: 2, scope: !1464, file: !3, line: 1279, type: !13)
!1469 = !DILocalVariable(name: "rname", arg: 3, scope: !1464, file: !3, line: 1279, type: !13)
!1470 = !DILocation(line: 0, scope: !1464, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 935, column: 21, scope: !1461, inlinedAt: !1038)
!1472 = !DILocation(line: 1285, column: 14, scope: !1464, inlinedAt: !1471)
!1473 = !DILocation(line: 1287, column: 9, scope: !1474, inlinedAt: !1471)
!1474 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1287, column: 9)
!1475 = !DILocation(line: 1287, column: 22, scope: !1474, inlinedAt: !1471)
!1476 = !DILocation(line: 1287, column: 27, scope: !1474, inlinedAt: !1471)
!1477 = !DILocation(line: 1287, column: 30, scope: !1474, inlinedAt: !1471)
!1478 = !DILocation(line: 1287, column: 38, scope: !1474, inlinedAt: !1471)
!1479 = !DILocation(line: 1287, column: 9, scope: !1464, inlinedAt: !1471)
!1480 = !DILocation(line: 1288, column: 18, scope: !1474, inlinedAt: !1471)
!1481 = !DILocation(line: 1288, column: 9, scope: !1474, inlinedAt: !1471)
!1482 = !DILocation(line: 1289, column: 16, scope: !1464, inlinedAt: !1471)
!1483 = !DILocation(line: 1289, column: 14, scope: !1464, inlinedAt: !1471)
!1484 = !DILocation(line: 1290, column: 16, scope: !1464, inlinedAt: !1471)
!1485 = !DILocation(line: 1290, column: 14, scope: !1464, inlinedAt: !1471)
!1486 = !DILocation(line: 1291, column: 16, scope: !1464, inlinedAt: !1471)
!1487 = !DILocation(line: 1292, column: 18, scope: !1488, inlinedAt: !1471)
!1488 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1292, column: 9)
!1489 = !DILocation(line: 1292, column: 9, scope: !1464, inlinedAt: !1471)
!1490 = !DILocation(line: 1294, column: 14, scope: !1464, inlinedAt: !1471)
!1491 = !DILocation(line: 1297, column: 10, scope: !1492, inlinedAt: !1471)
!1492 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1297, column: 9)
!1493 = !DILocation(line: 1297, column: 34, scope: !1492, inlinedAt: !1471)
!1494 = !DILocation(line: 1299, column: 11, scope: !1492, inlinedAt: !1471)
!1495 = !DILocation(line: 1299, column: 36, scope: !1492, inlinedAt: !1471)
!1496 = !DILocation(line: 1306, column: 18, scope: !1497, inlinedAt: !1471)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 1305, column: 41)
!1498 = !DILocation(line: 1307, column: 18, scope: !1497, inlinedAt: !1471)
!1499 = !DILocation(line: 1308, column: 5, scope: !1497, inlinedAt: !1471)
!1500 = !DILocation(line: 936, column: 26, scope: !1461, inlinedAt: !1038)
!1501 = !DILocalVariable(name: "aname", arg: 1, scope: !1502, file: !3, line: 1315, type: !13)
!1502 = distinct !DISubprogram(name: "mk_wwpdb_aname", scope: !3, file: !3, line: 1315, type: !1465, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1503)
!1503 = !{!1501, !1504, !1505}
!1504 = !DILocalVariable(name: "name", arg: 2, scope: !1502, file: !3, line: 1315, type: !13)
!1505 = !DILocalVariable(name: "rname", arg: 3, scope: !1502, file: !3, line: 1315, type: !13)
!1506 = !DILocation(line: 0, scope: !1502, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 937, column: 21, scope: !1508, inlinedAt: !1038)
!1508 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 936, column: 26)
!1509 = !DILocation(line: 1329, column: 9, scope: !1510, inlinedAt: !1507)
!1510 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1329, column: 9)
!1511 = !DILocation(line: 1329, column: 22, scope: !1510, inlinedAt: !1507)
!1512 = !DILocation(line: 1329, column: 27, scope: !1510, inlinedAt: !1507)
!1513 = !DILocation(line: 1329, column: 30, scope: !1510, inlinedAt: !1507)
!1514 = !DILocation(line: 1329, column: 38, scope: !1510, inlinedAt: !1507)
!1515 = !DILocation(line: 1329, column: 9, scope: !1502, inlinedAt: !1507)
!1516 = !DILocation(line: 1330, column: 9, scope: !1517, inlinedAt: !1507)
!1517 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1329, column: 45)
!1518 = !DILocation(line: 1331, column: 5, scope: !1517, inlinedAt: !1507)
!1519 = !DILocation(line: 1332, column: 18, scope: !1520, inlinedAt: !1507)
!1520 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1331, column: 12)
!1521 = !DILocation(line: 1333, column: 9, scope: !1520, inlinedAt: !1507)
!1522 = !DILocation(line: 1334, column: 18, scope: !1520, inlinedAt: !1507)
!1523 = !DILocation(line: 1337, column: 9, scope: !1524, inlinedAt: !1507)
!1524 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1337, column: 9)
!1525 = !DILocation(line: 1337, column: 18, scope: !1524, inlinedAt: !1507)
!1526 = !DILocation(line: 1337, column: 9, scope: !1502, inlinedAt: !1507)
!1527 = !DILocation(line: 1337, column: 37, scope: !1524, inlinedAt: !1507)
!1528 = !DILocation(line: 1337, column: 28, scope: !1524, inlinedAt: !1507)
!1529 = !DILocation(line: 1338, column: 9, scope: !1530, inlinedAt: !1507)
!1530 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1338, column: 9)
!1531 = !DILocation(line: 1338, column: 18, scope: !1530, inlinedAt: !1507)
!1532 = !DILocation(line: 1338, column: 9, scope: !1502, inlinedAt: !1507)
!1533 = !DILocation(line: 1338, column: 37, scope: !1530, inlinedAt: !1507)
!1534 = !DILocation(line: 1338, column: 28, scope: !1530, inlinedAt: !1507)
!1535 = !DILocation(line: 1339, column: 9, scope: !1536, inlinedAt: !1507)
!1536 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1339, column: 9)
!1537 = !DILocation(line: 1339, column: 18, scope: !1536, inlinedAt: !1507)
!1538 = !DILocation(line: 1339, column: 9, scope: !1502, inlinedAt: !1507)
!1539 = !DILocation(line: 1339, column: 37, scope: !1536, inlinedAt: !1507)
!1540 = !DILocation(line: 1339, column: 28, scope: !1536, inlinedAt: !1507)
!1541 = !DILocation(line: 1346, column: 10, scope: !1542, inlinedAt: !1507)
!1542 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1346, column: 9)
!1543 = !DILocation(line: 1346, column: 9, scope: !1502, inlinedAt: !1507)
!1544 = !DILocation(line: 1346, column: 37, scope: !1542, inlinedAt: !1507)
!1545 = !DILocation(line: 1347, column: 10, scope: !1546, inlinedAt: !1507)
!1546 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1347, column: 9)
!1547 = !DILocation(line: 1347, column: 9, scope: !1502, inlinedAt: !1507)
!1548 = !DILocation(line: 1347, column: 37, scope: !1546, inlinedAt: !1507)
!1549 = !DILocation(line: 1348, column: 10, scope: !1550, inlinedAt: !1507)
!1550 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1348, column: 9)
!1551 = !DILocation(line: 1348, column: 9, scope: !1502, inlinedAt: !1507)
!1552 = !DILocation(line: 1348, column: 37, scope: !1550, inlinedAt: !1507)
!1553 = !DILocation(line: 1349, column: 10, scope: !1554, inlinedAt: !1507)
!1554 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1349, column: 9)
!1555 = !DILocation(line: 1349, column: 9, scope: !1502, inlinedAt: !1507)
!1556 = !DILocation(line: 1349, column: 37, scope: !1554, inlinedAt: !1507)
!1557 = !DILocation(line: 1350, column: 10, scope: !1558, inlinedAt: !1507)
!1558 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1350, column: 9)
!1559 = !DILocation(line: 1350, column: 9, scope: !1502, inlinedAt: !1507)
!1560 = !DILocation(line: 1350, column: 37, scope: !1558, inlinedAt: !1507)
!1561 = !DILocation(line: 1351, column: 10, scope: !1562, inlinedAt: !1507)
!1562 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1351, column: 9)
!1563 = !DILocation(line: 1351, column: 9, scope: !1502, inlinedAt: !1507)
!1564 = !DILocation(line: 1351, column: 37, scope: !1562, inlinedAt: !1507)
!1565 = !DILocation(line: 1352, column: 10, scope: !1566, inlinedAt: !1507)
!1566 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1352, column: 9)
!1567 = !DILocation(line: 1352, column: 9, scope: !1502, inlinedAt: !1507)
!1568 = !DILocation(line: 1352, column: 37, scope: !1566, inlinedAt: !1507)
!1569 = !DILocation(line: 1353, column: 10, scope: !1570, inlinedAt: !1507)
!1570 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1353, column: 9)
!1571 = !DILocation(line: 1353, column: 9, scope: !1502, inlinedAt: !1507)
!1572 = !DILocation(line: 1353, column: 37, scope: !1570, inlinedAt: !1507)
!1573 = !DILocation(line: 1359, column: 10, scope: !1574, inlinedAt: !1507)
!1574 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1359, column: 9)
!1575 = !DILocation(line: 1359, column: 36, scope: !1574, inlinedAt: !1507)
!1576 = !DILocation(line: 1359, column: 40, scope: !1574, inlinedAt: !1507)
!1577 = !DILocation(line: 1359, column: 66, scope: !1574, inlinedAt: !1507)
!1578 = !DILocation(line: 1360, column: 10, scope: !1574, inlinedAt: !1507)
!1579 = !DILocation(line: 1360, column: 36, scope: !1574, inlinedAt: !1507)
!1580 = !DILocation(line: 1360, column: 40, scope: !1574, inlinedAt: !1507)
!1581 = !DILocation(line: 1360, column: 66, scope: !1574, inlinedAt: !1507)
!1582 = !DILocation(line: 1361, column: 10, scope: !1574, inlinedAt: !1507)
!1583 = !DILocation(line: 1361, column: 36, scope: !1574, inlinedAt: !1507)
!1584 = !DILocation(line: 1361, column: 40, scope: !1574, inlinedAt: !1507)
!1585 = !DILocation(line: 1361, column: 66, scope: !1574, inlinedAt: !1507)
!1586 = !DILocation(line: 1362, column: 10, scope: !1574, inlinedAt: !1507)
!1587 = !DILocation(line: 1362, column: 36, scope: !1574, inlinedAt: !1507)
!1588 = !DILocation(line: 1362, column: 40, scope: !1574, inlinedAt: !1507)
!1589 = !DILocation(line: 1362, column: 66, scope: !1574, inlinedAt: !1507)
!1590 = !DILocation(line: 1363, column: 10, scope: !1574, inlinedAt: !1507)
!1591 = !DILocation(line: 1363, column: 36, scope: !1574, inlinedAt: !1507)
!1592 = !DILocation(line: 1363, column: 40, scope: !1574, inlinedAt: !1507)
!1593 = !DILocation(line: 1363, column: 66, scope: !1574, inlinedAt: !1507)
!1594 = !DILocation(line: 1364, column: 10, scope: !1574, inlinedAt: !1507)
!1595 = !DILocation(line: 1364, column: 36, scope: !1574, inlinedAt: !1507)
!1596 = !DILocation(line: 1364, column: 40, scope: !1574, inlinedAt: !1507)
!1597 = !DILocation(line: 1364, column: 66, scope: !1574, inlinedAt: !1507)
!1598 = !DILocation(line: 1365, column: 10, scope: !1574, inlinedAt: !1507)
!1599 = !DILocation(line: 1365, column: 36, scope: !1574, inlinedAt: !1507)
!1600 = !DILocation(line: 1365, column: 40, scope: !1574, inlinedAt: !1507)
!1601 = !DILocation(line: 1365, column: 66, scope: !1574, inlinedAt: !1507)
!1602 = !DILocation(line: 1366, column: 10, scope: !1574, inlinedAt: !1507)
!1603 = !DILocation(line: 1366, column: 36, scope: !1574, inlinedAt: !1507)
!1604 = !DILocation(line: 1366, column: 40, scope: !1574, inlinedAt: !1507)
!1605 = !DILocation(line: 1359, column: 9, scope: !1502, inlinedAt: !1507)
!1606 = !DILocation(line: 1367, column: 18, scope: !1607, inlinedAt: !1507)
!1607 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1366, column: 67)
!1608 = !DILocation(line: 1368, column: 18, scope: !1607, inlinedAt: !1507)
!1609 = !DILocation(line: 1369, column: 18, scope: !1607, inlinedAt: !1507)
!1610 = !DILocation(line: 1370, column: 18, scope: !1607, inlinedAt: !1507)
!1611 = !DILocation(line: 1371, column: 5, scope: !1607, inlinedAt: !1507)
!1612 = !DILocation(line: 939, column: 21, scope: !1508, inlinedAt: !1038)
!1613 = !DILocation(line: 941, column: 22, scope: !1614, inlinedAt: !1038)
!1614 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 941, column: 21)
!1615 = !DILocation(line: 941, column: 38, scope: !1614, inlinedAt: !1038)
!1616 = !DILocation(line: 0, scope: !1614, inlinedAt: !1038)
!1617 = !DILocation(line: 949, column: 25, scope: !1618, inlinedAt: !1038)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 941, column: 49)
!1619 = !DILocation(line: 957, column: 33, scope: !1620, inlinedAt: !1038)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 949, column: 38)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 949, column: 25)
!1622 = !DILocation(line: 957, column: 47, scope: !1620, inlinedAt: !1038)
!1623 = !DILocation(line: 957, column: 61, scope: !1620, inlinedAt: !1038)
!1624 = !DILocation(line: 950, column: 25, scope: !1620, inlinedAt: !1038)
!1625 = !DILocation(line: 958, column: 21, scope: !1620, inlinedAt: !1038)
!1626 = !DILocation(line: 961, column: 36, scope: !1627, inlinedAt: !1038)
!1627 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 958, column: 28)
!1628 = !DILocation(line: 966, column: 33, scope: !1627, inlinedAt: !1038)
!1629 = !DILocation(line: 966, column: 47, scope: !1627, inlinedAt: !1038)
!1630 = !DILocation(line: 966, column: 61, scope: !1627, inlinedAt: !1038)
!1631 = !DILocation(line: 959, column: 25, scope: !1627, inlinedAt: !1038)
!1632 = !DILocation(line: 970, column: 25, scope: !1633, inlinedAt: !1038)
!1633 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 968, column: 24)
!1634 = !DILocation(line: 974, column: 33, scope: !1635, inlinedAt: !1038)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 970, column: 38)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 970, column: 25)
!1637 = !DILocation(line: 974, column: 47, scope: !1635, inlinedAt: !1038)
!1638 = !DILocation(line: 974, column: 61, scope: !1635, inlinedAt: !1038)
!1639 = !DILocation(line: 971, column: 25, scope: !1635, inlinedAt: !1038)
!1640 = !DILocation(line: 975, column: 21, scope: !1635, inlinedAt: !1038)
!1641 = !DILocation(line: 978, column: 36, scope: !1642, inlinedAt: !1038)
!1642 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 975, column: 28)
!1643 = !DILocation(line: 979, column: 33, scope: !1642, inlinedAt: !1038)
!1644 = !DILocation(line: 979, column: 47, scope: !1642, inlinedAt: !1038)
!1645 = !DILocation(line: 979, column: 61, scope: !1642, inlinedAt: !1038)
!1646 = !DILocation(line: 976, column: 25, scope: !1642, inlinedAt: !1038)
!1647 = !DILocation(line: 982, column: 21, scope: !1457, inlinedAt: !1038)
!1648 = !DILocation(line: 985, column: 33, scope: !1649, inlinedAt: !1038)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 982, column: 30)
!1650 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 982, column: 21)
!1651 = !DILocation(line: 985, column: 47, scope: !1649, inlinedAt: !1038)
!1652 = !DILocation(line: 984, column: 21, scope: !1649, inlinedAt: !1038)
!1653 = !DILocation(line: 986, column: 17, scope: !1649, inlinedAt: !1038)
!1654 = !DILocation(line: 986, column: 28, scope: !1650, inlinedAt: !1038)
!1655 = !DILocation(line: 988, column: 33, scope: !1656, inlinedAt: !1038)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 986, column: 41)
!1657 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 986, column: 28)
!1658 = !DILocation(line: 988, column: 44, scope: !1656, inlinedAt: !1038)
!1659 = !DILocation(line: 987, column: 21, scope: !1656, inlinedAt: !1038)
!1660 = !DILocation(line: 991, column: 32, scope: !1661, inlinedAt: !1038)
!1661 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 991, column: 21)
!1662 = !DILocation(line: 992, column: 47, scope: !1663, inlinedAt: !1038)
!1663 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 991, column: 74)
!1664 = !DILocation(line: 992, column: 21, scope: !1663, inlinedAt: !1038)
!1665 = !DILocation(line: 993, column: 17, scope: !1663, inlinedAt: !1038)
!1666 = !DILocation(line: 995, column: 17, scope: !1457, inlinedAt: !1038)
!1667 = !DILocation(line: 930, column: 45, scope: !1452, inlinedAt: !1038)
!1668 = distinct !{!1668, !1455, !1669, !516, !517}
!1669 = !DILocation(line: 997, column: 13, scope: !1453, inlinedAt: !1038)
!1670 = !DILocation(line: 921, column: 43, scope: !1240, inlinedAt: !1038)
!1671 = !DILocation(line: 921, column: 49, scope: !1240, inlinedAt: !1038)
!1672 = distinct !{!1672, !1244, !1673, !516, !517}
!1673 = !DILocation(line: 999, column: 9, scope: !1241, inlinedAt: !1038)
!1674 = !DILocation(line: 911, column: 13, scope: !1179, inlinedAt: !1038)
!1675 = !DILocation(line: 1001, column: 9, scope: !1193, inlinedAt: !1038)
!1676 = !DILocation(line: 911, column: 60, scope: !1194, inlinedAt: !1038)
!1677 = distinct !{!1677, !1181, !1678, !516, !517}
!1678 = !DILocation(line: 1007, column: 5, scope: !1179, inlinedAt: !1038)
!1679 = !DILocation(line: 0, scope: !1110, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 1008, column: 5, scope: !1006, inlinedAt: !1038)
!1681 = !DILocation(line: 1014, column: 9, scope: !1110, inlinedAt: !1680)
!1682 = !DILocation(line: 1015, column: 18, scope: !1683, inlinedAt: !1680)
!1683 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 1015, column: 13)
!1684 = !DILocation(line: 1015, column: 25, scope: !1683, inlinedAt: !1680)
!1685 = !DILocation(line: 1015, column: 13, scope: !1175, inlinedAt: !1680)
!1686 = !DILocation(line: 1016, column: 13, scope: !1683, inlinedAt: !1680)
!1687 = !DILocation(line: 1017, column: 14, scope: !1175, inlinedAt: !1680)
!1688 = !DILocation(line: 1017, column: 9, scope: !1175, inlinedAt: !1680)
!1689 = !DILocation(line: 1018, column: 5, scope: !1175, inlinedAt: !1680)
!1690 = !DILocation(line: 1009, column: 1, scope: !1006, inlinedAt: !1038)
!1691 = !DILocation(line: 247, column: 23, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 247, column: 17)
!1693 = !DILocation(line: 247, column: 20, scope: !1692)
!1694 = !DILocation(line: 247, column: 17, scope: !1039)
!1695 = !DILocation(line: 248, column: 17, scope: !1692)
!1696 = !DILocation(line: 251, column: 5, scope: !975)
!1697 = !DILocation(line: 253, column: 5, scope: !975)
!1698 = !DILocation(line: 254, column: 1, scope: !975)
!1699 = !DISubprogram(name: "rt_errormsg_s", scope: !3, file: !3, line: 107, type: !1700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!37, !37, !13, !13}
!1702 = distinct !DISubprogram(name: "putcif", scope: !3, file: !3, line: 256, type: !1703, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!37, !13, !13, !353}
!1705 = !{!1706, !1707, !1708, !1709}
!1706 = !DILocalVariable(name: "fname", arg: 1, scope: !1702, file: !3, line: 256, type: !13)
!1707 = !DILocalVariable(name: "blockId", arg: 2, scope: !1702, file: !3, line: 256, type: !13)
!1708 = !DILocalVariable(name: "mol", arg: 3, scope: !1702, file: !3, line: 256, type: !353)
!1709 = !DILocalVariable(name: "fp", scope: !1702, file: !3, line: 258, type: !276)
!1710 = !DILocation(line: 0, scope: !1702)
!1711 = !DILocation(line: 260, column: 10, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 260, column: 9)
!1713 = !DILocation(line: 260, column: 9, scope: !1702)
!1714 = !DILocation(line: 261, column: 17, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 260, column: 15)
!1716 = !DILocation(line: 261, column: 9, scope: !1715)
!1717 = !DILocation(line: 262, column: 9, scope: !1715)
!1718 = !DILocation(line: 264, column: 10, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 264, column: 9)
!1720 = !DILocation(line: 264, column: 9, scope: !1702)
!1721 = !DILocation(line: 266, column: 20, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 266, column: 14)
!1723 = !DILocation(line: 266, column: 39, scope: !1722)
!1724 = !DILocation(line: 266, column: 14, scope: !1719)
!1725 = !DILocation(line: 267, column: 9, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 266, column: 48)
!1727 = !DILocation(line: 268, column: 9, scope: !1726)
!1728 = !DILocation(line: 265, column: 14, scope: !1719)
!1729 = !DILocalVariable(name: "fp", arg: 1, scope: !1730, file: !3, line: 1381, type: !276)
!1730 = distinct !DISubprogram(name: "fputcif", scope: !3, file: !3, line: 1381, type: !1731, scopeLine: 1382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !276, !13, !353}
!1733 = !{!1729, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744}
!1734 = !DILocalVariable(name: "blockId", arg: 2, scope: !1730, file: !3, line: 1381, type: !13)
!1735 = !DILocalVariable(name: "mol", arg: 3, scope: !1730, file: !3, line: 1381, type: !353)
!1736 = !DILocalVariable(name: "r", scope: !1730, file: !3, line: 1383, type: !37)
!1737 = !DILocalVariable(name: "tr", scope: !1730, file: !3, line: 1383, type: !37)
!1738 = !DILocalVariable(name: "a", scope: !1730, file: !3, line: 1383, type: !37)
!1739 = !DILocalVariable(name: "ta", scope: !1730, file: !3, line: 1383, type: !37)
!1740 = !DILocalVariable(name: "strandnum", scope: !1730, file: !3, line: 1383, type: !37)
!1741 = !DILocalVariable(name: "cid", scope: !1730, file: !3, line: 1384, type: !14)
!1742 = !DILocalVariable(name: "sp", scope: !1730, file: !3, line: 1385, type: !74)
!1743 = !DILocalVariable(name: "res", scope: !1730, file: !3, line: 1386, type: !39)
!1744 = !DILocalVariable(name: "ap", scope: !1730, file: !3, line: 1387, type: !219)
!1745 = !DILocation(line: 0, scope: !1730, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 270, column: 5, scope: !1702)
!1747 = !DILocation(line: 1390, column: 5, scope: !1748, inlinedAt: !1746)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 1390, column: 5)
!1749 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 1390, column: 5)
!1750 = !DILocation(line: 1390, column: 5, scope: !1749, inlinedAt: !1746)
!1751 = !DILocation(line: 1392, column: 17, scope: !1730, inlinedAt: !1746)
!1752 = !{!873, !491, i64 96}
!1753 = !DILocation(line: 1396, column: 5, scope: !1730, inlinedAt: !1746)
!1754 = !DILocation(line: 1397, column: 5, scope: !1730, inlinedAt: !1746)
!1755 = !DILocation(line: 1398, column: 5, scope: !1730, inlinedAt: !1746)
!1756 = !DILocation(line: 1399, column: 5, scope: !1730, inlinedAt: !1746)
!1757 = !DILocation(line: 1400, column: 5, scope: !1730, inlinedAt: !1746)
!1758 = !DILocation(line: 1401, column: 5, scope: !1730, inlinedAt: !1746)
!1759 = !DILocation(line: 1402, column: 5, scope: !1730, inlinedAt: !1746)
!1760 = !DILocation(line: 1403, column: 5, scope: !1730, inlinedAt: !1746)
!1761 = !DILocation(line: 1404, column: 5, scope: !1730, inlinedAt: !1746)
!1762 = !DILocation(line: 1407, column: 36, scope: !1763, inlinedAt: !1746)
!1763 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 1407, column: 5)
!1764 = !DILocation(line: 0, scope: !1763, inlinedAt: !1746)
!1765 = !DILocation(line: 1407, column: 5, scope: !1763, inlinedAt: !1746)
!1766 = !DILocation(line: 1392, column: 28, scope: !1730, inlinedAt: !1746)
!1767 = !DILocation(line: 1392, column: 11, scope: !1730, inlinedAt: !1746)
!1768 = !DILocation(line: 1408, column: 18, scope: !1769, inlinedAt: !1746)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 1407, column: 68)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 1407, column: 5)
!1771 = !DILocation(line: 1409, column: 29, scope: !1772, inlinedAt: !1746)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 1409, column: 9)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 1409, column: 9)
!1774 = !DILocation(line: 1409, column: 23, scope: !1772, inlinedAt: !1746)
!1775 = !DILocation(line: 1409, column: 9, scope: !1773, inlinedAt: !1746)
!1776 = !DILocation(line: 1410, column: 23, scope: !1777, inlinedAt: !1746)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1409, column: 53)
!1778 = !DILocation(line: 1410, column: 19, scope: !1777, inlinedAt: !1746)
!1779 = !DILocation(line: 1409, column: 43, scope: !1772, inlinedAt: !1746)
!1780 = !DILocation(line: 1411, column: 34, scope: !1781, inlinedAt: !1746)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 1411, column: 13)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 1411, column: 13)
!1783 = !DILocation(line: 1411, column: 27, scope: !1781, inlinedAt: !1746)
!1784 = !DILocation(line: 1411, column: 13, scope: !1782, inlinedAt: !1746)
!1785 = !DILocation(line: 1412, column: 19, scope: !1786, inlinedAt: !1746)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 1411, column: 49)
!1787 = !DILocation(line: 1413, column: 28, scope: !1786, inlinedAt: !1746)
!1788 = !DILocation(line: 1423, column: 33, scope: !1786, inlinedAt: !1746)
!1789 = !DILocation(line: 1423, column: 50, scope: !1786, inlinedAt: !1746)
!1790 = !DILocation(line: 1424, column: 25, scope: !1786, inlinedAt: !1746)
!1791 = !DILocation(line: 1424, column: 39, scope: !1786, inlinedAt: !1746)
!1792 = !DILocation(line: 1424, column: 53, scope: !1786, inlinedAt: !1746)
!1793 = !DILocation(line: 1421, column: 17, scope: !1786, inlinedAt: !1746)
!1794 = !DILocation(line: 1411, column: 45, scope: !1781, inlinedAt: !1746)
!1795 = distinct !{!1795, !1784, !1796, !516, !517}
!1796 = !DILocation(line: 1426, column: 13, scope: !1782, inlinedAt: !1746)
!1797 = distinct !{!1797, !1775, !1798, !516, !517}
!1798 = !DILocation(line: 1427, column: 9, scope: !1773, inlinedAt: !1746)
!1799 = !DILocation(line: 1407, column: 13, scope: !1763, inlinedAt: !1746)
!1800 = !DILocation(line: 1428, column: 18, scope: !1801, inlinedAt: !1746)
!1801 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 1428, column: 13)
!1802 = !DILocation(line: 1428, column: 29, scope: !1801, inlinedAt: !1746)
!1803 = !DILocation(line: 1428, column: 13, scope: !1769, inlinedAt: !1746)
!1804 = !DILocation(line: 1407, column: 60, scope: !1770, inlinedAt: !1746)
!1805 = distinct !{!1805, !1765, !1806, !516, !517}
!1806 = !DILocation(line: 1430, column: 5, scope: !1763, inlinedAt: !1746)
!1807 = !DILocation(line: 271, column: 15, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 271, column: 9)
!1809 = !DILocation(line: 271, column: 12, scope: !1808)
!1810 = !DILocation(line: 271, column: 9, scope: !1702)
!1811 = !DILocation(line: 272, column: 9, scope: !1808)
!1812 = !DILocation(line: 274, column: 1, scope: !1702)
!1813 = distinct !DISubprogram(name: "putbnd", scope: !3, file: !3, line: 276, type: !1814, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!37, !13, !353}
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833}
!1817 = !DILocalVariable(name: "fname", arg: 1, scope: !1813, file: !3, line: 276, type: !13)
!1818 = !DILocalVariable(name: "mol", arg: 2, scope: !1813, file: !3, line: 276, type: !353)
!1819 = !DILocalVariable(name: "fp", scope: !1813, file: !3, line: 278, type: !276)
!1820 = !DILocalVariable(name: "sp", scope: !1813, file: !3, line: 279, type: !74)
!1821 = !DILocalVariable(name: "res", scope: !1813, file: !3, line: 280, type: !39)
!1822 = !DILocalVariable(name: "a", scope: !1813, file: !3, line: 281, type: !37)
!1823 = !DILocalVariable(name: "ta", scope: !1813, file: !3, line: 281, type: !37)
!1824 = !DILocalVariable(name: "ai", scope: !1813, file: !3, line: 281, type: !37)
!1825 = !DILocalVariable(name: "aj", scope: !1813, file: !3, line: 281, type: !37)
!1826 = !DILocalVariable(name: "r", scope: !1813, file: !3, line: 281, type: !37)
!1827 = !DILocalVariable(name: "rj", scope: !1813, file: !3, line: 281, type: !37)
!1828 = !DILocalVariable(name: "tr", scope: !1813, file: !3, line: 281, type: !37)
!1829 = !DILocalVariable(name: "rval", scope: !1813, file: !3, line: 282, type: !37)
!1830 = !DILocalVariable(name: "aoff", scope: !1813, file: !3, line: 283, type: !36)
!1831 = !DILocalVariable(name: "b", scope: !1813, file: !3, line: 284, type: !37)
!1832 = !DILocalVariable(name: "ebp", scope: !1813, file: !3, line: 285, type: !190)
!1833 = !DILabel(scope: !1813, name: "clean_up", file: !3, line: 338)
!1834 = !DILocation(line: 0, scope: !1813)
!1835 = !DILocation(line: 287, column: 10, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 287, column: 9)
!1837 = !DILocation(line: 287, column: 9, scope: !1813)
!1838 = !DILocation(line: 288, column: 17, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 287, column: 15)
!1840 = !DILocation(line: 288, column: 9, scope: !1839)
!1841 = !DILocation(line: 289, column: 9, scope: !1839)
!1842 = !DILocation(line: 291, column: 15, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 291, column: 9)
!1844 = !DILocation(line: 291, column: 34, scope: !1843)
!1845 = !DILocation(line: 291, column: 9, scope: !1813)
!1846 = !DILocation(line: 292, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 291, column: 43)
!1848 = !DILocation(line: 293, column: 9, scope: !1847)
!1849 = !DILocation(line: 296, column: 28, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 296, column: 5)
!1851 = !DILocation(line: 0, scope: !1850)
!1852 = !DILocation(line: 296, column: 5, scope: !1850)
!1853 = !DILocation(line: 297, column: 19, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 296, column: 5)
!1855 = !DILocation(line: 297, column: 12, scope: !1854)
!1856 = !DILocation(line: 296, column: 52, scope: !1854)
!1857 = distinct !{!1857, !1852, !1858, !516, !517}
!1858 = !DILocation(line: 297, column: 19, scope: !1850)
!1859 = !DILocation(line: 299, column: 32, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 299, column: 9)
!1861 = !DILocation(line: 299, column: 25, scope: !1860)
!1862 = !DILocation(line: 299, column: 17, scope: !1860)
!1863 = !DILocation(line: 299, column: 51, scope: !1860)
!1864 = !DILocation(line: 299, column: 9, scope: !1813)
!1865 = !DILocation(line: 305, column: 5, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 305, column: 5)
!1867 = !DILocation(line: 300, column: 9, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 299, column: 60)
!1869 = !DILocation(line: 338, column: 3, scope: !1813)
!1870 = !DILocation(line: 339, column: 9, scope: !1813)
!1871 = !DILocation(line: 317, column: 5, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 317, column: 5)
!1873 = !DILocation(line: 306, column: 9, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 305, column: 68)
!1875 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 305, column: 5)
!1876 = !DILocation(line: 306, column: 18, scope: !1874)
!1877 = !DILocation(line: 307, column: 17, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 307, column: 13)
!1879 = !DILocation(line: 307, column: 29, scope: !1878)
!1880 = !DILocation(line: 307, column: 13, scope: !1874)
!1881 = !DILocation(line: 308, column: 23, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 307, column: 34)
!1883 = !DILocation(line: 308, column: 19, scope: !1882)
!1884 = !DILocation(line: 308, column: 38, scope: !1882)
!1885 = !DILocation(line: 308, column: 16, scope: !1882)
!1886 = !DILocation(line: 309, column: 27, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 309, column: 13)
!1888 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 309, column: 13)
!1889 = !DILocation(line: 309, column: 13, scope: !1888)
!1890 = !DILocation(line: 310, column: 25, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 309, column: 51)
!1892 = !DILocation(line: 310, column: 17, scope: !1891)
!1893 = !DILocation(line: 310, column: 30, scope: !1891)
!1894 = !DILocation(line: 311, column: 23, scope: !1891)
!1895 = !DILocation(line: 311, column: 42, scope: !1891)
!1896 = !DILocation(line: 311, column: 20, scope: !1891)
!1897 = !DILocation(line: 309, column: 47, scope: !1887)
!1898 = distinct !{!1898, !1889, !1899, !516, !517}
!1899 = !DILocation(line: 312, column: 13, scope: !1888)
!1900 = !DILocation(line: 0, scope: !1882)
!1901 = !DILocation(line: 313, column: 16, scope: !1882)
!1902 = !DILocation(line: 314, column: 9, scope: !1882)
!1903 = !DILocation(line: 0, scope: !1866)
!1904 = !DILocation(line: 305, column: 60, scope: !1875)
!1905 = distinct !{!1905, !1865, !1906, !516, !517}
!1906 = !DILocation(line: 315, column: 5, scope: !1866)
!1907 = !DILocation(line: 318, column: 29, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 318, column: 9)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 318, column: 9)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 317, column: 60)
!1911 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 317, column: 5)
!1912 = !DILocation(line: 318, column: 23, scope: !1908)
!1913 = !DILocation(line: 318, column: 9, scope: !1909)
!1914 = !DILocation(line: 319, column: 23, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 318, column: 47)
!1916 = !DILocation(line: 319, column: 19, scope: !1915)
!1917 = !DILocation(line: 320, column: 24, scope: !1915)
!1918 = !DILocation(line: 320, column: 17, scope: !1915)
!1919 = !DILocation(line: 321, column: 34, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 321, column: 13)
!1921 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 321, column: 13)
!1922 = !{!611, !491, i64 72}
!1923 = !DILocation(line: 321, column: 27, scope: !1920)
!1924 = !DILocation(line: 321, column: 13, scope: !1921)
!1925 = !DILocation(line: 323, column: 30, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 321, column: 52)
!1927 = !{!611, !373, i64 80}
!1928 = !DILocation(line: 323, column: 25, scope: !1926)
!1929 = !DILocation(line: 323, column: 47, scope: !1926)
!1930 = !DILocation(line: 324, column: 25, scope: !1926)
!1931 = !DILocation(line: 324, column: 47, scope: !1926)
!1932 = !DILocation(line: 322, column: 17, scope: !1926)
!1933 = !DILocation(line: 321, column: 48, scope: !1920)
!1934 = distinct !{!1934, !1924, !1935, !516, !517}
!1935 = !DILocation(line: 325, column: 13, scope: !1921)
!1936 = !DILocation(line: 326, column: 29, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 326, column: 13)
!1938 = !DILocation(line: 0, scope: !1937)
!1939 = !DILocation(line: 326, column: 13, scope: !1937)
!1940 = !DILocation(line: 327, column: 32, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 327, column: 21)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 326, column: 66)
!1943 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 326, column: 13)
!1944 = !{!1945, !491, i64 12}
!1945 = !{!"extbond_t", !373, i64 0, !491, i64 8, !491, i64 12, !491, i64 16}
!1946 = !DILocation(line: 327, column: 41, scope: !1941)
!1947 = !DILocation(line: 327, column: 21, scope: !1942)
!1948 = !DILocation(line: 330, column: 35, scope: !1942)
!1949 = !DILocation(line: 330, column: 22, scope: !1942)
!1950 = !DILocation(line: 332, column: 30, scope: !1942)
!1951 = !{!1945, !491, i64 8}
!1952 = !DILocation(line: 332, column: 38, scope: !1942)
!1953 = !DILocation(line: 332, column: 49, scope: !1942)
!1954 = !{!1945, !491, i64 16}
!1955 = !DILocation(line: 332, column: 58, scope: !1942)
!1956 = !DILocation(line: 331, column: 17, scope: !1942)
!1957 = !DILocation(line: 333, column: 13, scope: !1942)
!1958 = !DILocation(line: 326, column: 57, scope: !1943)
!1959 = distinct !{!1959, !1939, !1960, !516, !517}
!1960 = !DILocation(line: 333, column: 13, scope: !1937)
!1961 = !DILocation(line: 318, column: 43, scope: !1908)
!1962 = distinct !{!1962, !1913, !1963, !516, !517}
!1963 = !DILocation(line: 334, column: 9, scope: !1909)
!1964 = !DILocation(line: 335, column: 12, scope: !1910)
!1965 = !DILocation(line: 317, column: 52, scope: !1911)
!1966 = !DILocation(line: 0, scope: !1872)
!1967 = distinct !{!1967, !1871, !1968, !516, !517}
!1968 = !DILocation(line: 336, column: 5, scope: !1872)
!1969 = !DILocation(line: 340, column: 9, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 339, column: 9)
!1971 = !DILocation(line: 342, column: 5, scope: !1813)
!1972 = !DILocation(line: 344, column: 5, scope: !1813)
!1973 = !DILocation(line: 345, column: 1, scope: !1813)
!1974 = distinct !DISubprogram(name: "putdist", scope: !3, file: !3, line: 347, type: !1975, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!37, !13, !353, !13, !13}
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995}
!1978 = !DILocalVariable(name: "fname", arg: 1, scope: !1974, file: !3, line: 347, type: !13)
!1979 = !DILocalVariable(name: "mol", arg: 2, scope: !1974, file: !3, line: 347, type: !353)
!1980 = !DILocalVariable(name: "aexp1", arg: 3, scope: !1974, file: !3, line: 347, type: !13)
!1981 = !DILocalVariable(name: "aexp2", arg: 4, scope: !1974, file: !3, line: 347, type: !13)
!1982 = !DILocalVariable(name: "fp", scope: !1974, file: !3, line: 349, type: !276)
!1983 = !DILocalVariable(name: "sp1", scope: !1974, file: !3, line: 350, type: !74)
!1984 = !DILocalVariable(name: "res1", scope: !1974, file: !3, line: 351, type: !39)
!1985 = !DILocalVariable(name: "res2", scope: !1974, file: !3, line: 351, type: !39)
!1986 = !DILocalVariable(name: "ap1", scope: !1974, file: !3, line: 352, type: !219)
!1987 = !DILocalVariable(name: "ap2", scope: !1974, file: !3, line: 352, type: !219)
!1988 = !DILocalVariable(name: "tr", scope: !1974, file: !3, line: 353, type: !37)
!1989 = !DILocalVariable(name: "r1", scope: !1974, file: !3, line: 353, type: !37)
!1990 = !DILocalVariable(name: "r2", scope: !1974, file: !3, line: 353, type: !37)
!1991 = !DILocalVariable(name: "a1", scope: !1974, file: !3, line: 353, type: !37)
!1992 = !DILocalVariable(name: "a2", scope: !1974, file: !3, line: 353, type: !37)
!1993 = !DILocalVariable(name: "res", scope: !1974, file: !3, line: 354, type: !38)
!1994 = !DILocalVariable(name: "cnt", scope: !1974, file: !3, line: 355, type: !37)
!1995 = !DILabel(scope: !1974, name: "clean_up", file: !3, line: 420)
!1996 = !DILocation(line: 0, scope: !1974)
!1997 = !DILocation(line: 357, column: 10, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 357, column: 9)
!1999 = !DILocation(line: 357, column: 9, scope: !1974)
!2000 = !DILocation(line: 358, column: 17, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 357, column: 15)
!2002 = !DILocation(line: 358, column: 9, scope: !2001)
!2003 = !DILocation(line: 359, column: 9, scope: !2001)
!2004 = !DILocation(line: 362, column: 5, scope: !1974)
!2005 = !DILocation(line: 363, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 363, column: 5)
!2007 = !DILocation(line: 0, scope: !2006)
!2008 = !DILocation(line: 363, column: 5, scope: !2006)
!2009 = !DILocation(line: 364, column: 14, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 363, column: 56)
!2011 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 363, column: 5)
!2012 = !DILocation(line: 364, column: 21, scope: !2010)
!2013 = !{!740, !491, i64 12}
!2014 = !DILocation(line: 365, column: 24, scope: !2010)
!2015 = !DILocation(line: 365, column: 21, scope: !2010)
!2016 = !DILocation(line: 366, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 366, column: 9)
!2018 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 366, column: 9)
!2019 = !DILocation(line: 366, column: 9, scope: !2018)
!2020 = !DILocation(line: 367, column: 20, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 366, column: 51)
!2022 = !DILocation(line: 368, column: 19, scope: !2021)
!2023 = !DILocation(line: 368, column: 26, scope: !2021)
!2024 = !{!611, !491, i64 40}
!2025 = !DILocation(line: 369, column: 29, scope: !2021)
!2026 = !DILocation(line: 369, column: 26, scope: !2021)
!2027 = !DILocation(line: 370, column: 50, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 370, column: 13)
!2029 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 370, column: 13)
!2030 = !DILocation(line: 370, column: 13, scope: !2029)
!2031 = !DILocation(line: 370, column: 38, scope: !2029)
!2032 = !DILocation(line: 372, column: 22, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 371, column: 31)
!2034 = !DILocation(line: 372, column: 29, scope: !2033)
!2035 = !DILocation(line: 373, column: 32, scope: !2033)
!2036 = !DILocation(line: 373, column: 29, scope: !2033)
!2037 = !DILocation(line: 371, column: 20, scope: !2028)
!2038 = !DILocation(line: 371, column: 27, scope: !2028)
!2039 = distinct !{!2039, !2030, !2040, !516, !517}
!2040 = !DILocation(line: 374, column: 13, scope: !2029)
!2041 = !DILocation(line: 366, column: 47, scope: !2017)
!2042 = distinct !{!2042, !2019, !2043, !516, !517}
!2043 = !DILocation(line: 375, column: 9, scope: !2018)
!2044 = !DILocation(line: 363, column: 48, scope: !2011)
!2045 = distinct !{!2045, !2008, !2046, !516, !517}
!2046 = !DILocation(line: 376, column: 5, scope: !2006)
!2047 = !DILocation(line: 377, column: 5, scope: !1974)
!2048 = !DILocation(line: 0, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 379, column: 5)
!2050 = !DILocation(line: 379, column: 5, scope: !2049)
!2051 = !DILocation(line: 380, column: 20, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 379, column: 5)
!2053 = !DILocation(line: 380, column: 12, scope: !2052)
!2054 = !DILocation(line: 379, column: 56, scope: !2052)
!2055 = distinct !{!2055, !2050, !2056, !516, !517}
!2056 = !DILocation(line: 380, column: 20, scope: !2049)
!2057 = !DILocation(line: 381, column: 38, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 381, column: 9)
!2059 = !DILocation(line: 381, column: 41, scope: !2058)
!2060 = !DILocation(line: 381, column: 31, scope: !2058)
!2061 = !DILocation(line: 381, column: 16, scope: !2058)
!2062 = !DILocation(line: 382, column: 9, scope: !2058)
!2063 = !DILocation(line: 381, column: 9, scope: !1974)
!2064 = !DILocation(line: 386, column: 5, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 386, column: 5)
!2066 = !DILocation(line: 383, column: 17, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 382, column: 18)
!2068 = !DILocation(line: 383, column: 9, scope: !2067)
!2069 = !DILocation(line: 420, column: 3, scope: !1974)
!2070 = !DILocation(line: 421, column: 9, scope: !1974)
!2071 = !DILocation(line: 387, column: 25, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 387, column: 9)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 387, column: 9)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 386, column: 64)
!2075 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 386, column: 5)
!2076 = !DILocation(line: 387, column: 9, scope: !2073)
!2077 = !DILocation(line: 388, column: 23, scope: !2072)
!2078 = !DILocation(line: 386, column: 56, scope: !2075)
!2079 = !DILocation(line: 0, scope: !2065)
!2080 = distinct !{!2080, !2064, !2081, !516, !517}
!2081 = !DILocation(line: 389, column: 5, scope: !2065)
!2082 = !DILocation(line: 391, column: 15, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 391, column: 9)
!2084 = !DILocation(line: 391, column: 34, scope: !2083)
!2085 = !DILocation(line: 391, column: 9, scope: !1974)
!2086 = !DILocation(line: 396, column: 30, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 396, column: 5)
!2088 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 396, column: 5)
!2089 = !DILocation(line: 396, column: 5, scope: !2088)
!2090 = !DILocation(line: 397, column: 16, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 396, column: 42)
!2092 = !DILocation(line: 396, column: 38, scope: !2087)
!2093 = !DILocation(line: 398, column: 33, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 398, column: 9)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 398, column: 9)
!2096 = !DILocation(line: 398, column: 25, scope: !2094)
!2097 = !DILocation(line: 398, column: 9, scope: !2095)
!2098 = !DILocation(line: 396, column: 14, scope: !2088)
!2099 = distinct !{!2099, !2089, !2100, !516, !517}
!2100 = !DILocation(line: 418, column: 5, scope: !2088)
!2101 = !DILocation(line: 399, column: 26, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 398, column: 49)
!2103 = !DILocation(line: 400, column: 36, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 400, column: 17)
!2105 = !DILocation(line: 400, column: 29, scope: !2104)
!2106 = !DILocation(line: 400, column: 17, scope: !2102)
!2107 = !DILocation(line: 402, column: 28, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 401, column: 45)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 401, column: 17)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 401, column: 17)
!2111 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 400, column: 44)
!2112 = !DILocation(line: 401, column: 41, scope: !2109)
!2113 = !DILocation(line: 403, column: 45, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 403, column: 21)
!2115 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 403, column: 21)
!2116 = !DILocation(line: 403, column: 37, scope: !2114)
!2117 = !DILocation(line: 403, column: 21, scope: !2115)
!2118 = !DILocation(line: 0, scope: !2088)
!2119 = !DILocation(line: 401, column: 33, scope: !2109)
!2120 = !DILocation(line: 401, column: 17, scope: !2110)
!2121 = distinct !{!2121, !2120, !2122, !516, !517}
!2122 = !DILocation(line: 415, column: 17, scope: !2110)
!2123 = !DILocation(line: 404, column: 38, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 403, column: 61)
!2125 = !DILocation(line: 405, column: 46, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 405, column: 29)
!2127 = !DILocation(line: 405, column: 39, scope: !2126)
!2128 = !DILocation(line: 405, column: 29, scope: !2124)
!2129 = !DILocation(line: 408, column: 51, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 405, column: 54)
!2131 = !DILocation(line: 409, column: 42, scope: !2130)
!2132 = !DILocation(line: 410, column: 43, scope: !2130)
!2133 = !DILocation(line: 410, column: 59, scope: !2130)
!2134 = !DILocation(line: 411, column: 37, scope: !2130)
!2135 = !DILocalVariable(name: "ap1", arg: 1, scope: !2136, file: !3, line: 839, type: !219)
!2136 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 839, type: !2137, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!10, !219, !219}
!2139 = !{!2135, !2140, !2141, !2142, !2143}
!2140 = !DILocalVariable(name: "ap2", arg: 2, scope: !2136, file: !3, line: 839, type: !219)
!2141 = !DILocalVariable(name: "dx", scope: !2136, file: !3, line: 841, type: !10)
!2142 = !DILocalVariable(name: "dy", scope: !2136, file: !3, line: 841, type: !10)
!2143 = !DILocalVariable(name: "dz", scope: !2136, file: !3, line: 841, type: !10)
!2144 = !DILocation(line: 0, scope: !2136, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 411, column: 37, scope: !2130)
!2146 = !DILocation(line: 843, column: 24, scope: !2136, inlinedAt: !2145)
!2147 = !DILocation(line: 844, column: 24, scope: !2136, inlinedAt: !2145)
!2148 = !DILocation(line: 845, column: 24, scope: !2136, inlinedAt: !2145)
!2149 = !DILocation(line: 846, column: 31, scope: !2136, inlinedAt: !2145)
!2150 = !DILocation(line: 846, column: 26, scope: !2136, inlinedAt: !2145)
!2151 = !DILocation(line: 846, column: 36, scope: !2136, inlinedAt: !2145)
!2152 = !DILocation(line: 846, column: 13, scope: !2136, inlinedAt: !2145)
!2153 = !DILocation(line: 406, column: 29, scope: !2130)
!2154 = !DILocation(line: 412, column: 32, scope: !2130)
!2155 = !DILocation(line: 413, column: 25, scope: !2130)
!2156 = !DILocation(line: 403, column: 57, scope: !2114)
!2157 = distinct !{!2157, !2117, !2158, !516, !517}
!2158 = !DILocation(line: 414, column: 21, scope: !2115)
!2159 = !DILocation(line: 398, column: 45, scope: !2094)
!2160 = distinct !{!2160, !2097, !2161, !516, !517}
!2161 = !DILocation(line: 417, column: 9, scope: !2095)
!2162 = !DILocation(line: 392, column: 17, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 391, column: 43)
!2164 = !DILocation(line: 392, column: 9, scope: !2163)
!2165 = !DILocation(line: 393, column: 9, scope: !2163)
!2166 = !DILocation(line: 422, column: 9, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 421, column: 9)
!2168 = !DILocation(line: 425, column: 1, scope: !1974)
!2169 = !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 106, type: !2170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !353, !13}
!2172 = distinct !DISubprogram(name: "putmatrix", scope: !3, file: !3, line: 427, type: !2173, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2177)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!37, !13, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !214)
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183, !2184}
!2178 = !DILocalVariable(name: "fname", arg: 1, scope: !2172, file: !3, line: 427, type: !13)
!2179 = !DILocalVariable(name: "mat", arg: 2, scope: !2172, file: !3, line: 427, type: !2175)
!2180 = !DILocalVariable(name: "fp", scope: !2172, file: !3, line: 429, type: !276)
!2181 = !DILocalVariable(name: "i", scope: !2172, file: !3, line: 430, type: !37)
!2182 = !DILocalVariable(name: "j", scope: !2172, file: !3, line: 430, type: !37)
!2183 = !DILocalVariable(name: "err", scope: !2172, file: !3, line: 431, type: !37)
!2184 = !DILabel(scope: !2172, name: "CLEAN_UP", file: !3, line: 451)
!2185 = !DILocation(line: 0, scope: !2172)
!2186 = !DILocation(line: 433, column: 15, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 433, column: 9)
!2188 = !DILocation(line: 433, column: 23, scope: !2187)
!2189 = !DILocation(line: 433, column: 26, scope: !2187)
!2190 = !DILocation(line: 433, column: 33, scope: !2187)
!2191 = !DILocation(line: 433, column: 9, scope: !2172)
!2192 = !DILocation(line: 434, column: 17, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 433, column: 42)
!2194 = !DILocation(line: 434, column: 9, scope: !2193)
!2195 = !DILocation(line: 436, column: 9, scope: !2193)
!2196 = !DILocation(line: 437, column: 17, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 437, column: 16)
!2198 = !DILocation(line: 437, column: 16, scope: !2187)
!2199 = !DILocation(line: 438, column: 14, scope: !2197)
!2200 = !DILocation(line: 438, column: 9, scope: !2197)
!2201 = !DILocation(line: 439, column: 20, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 439, column: 14)
!2203 = !DILocation(line: 439, column: 39, scope: !2202)
!2204 = !DILocation(line: 439, column: 14, scope: !2197)
!2205 = !DILocation(line: 440, column: 17, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 439, column: 48)
!2207 = !DILocation(line: 440, column: 9, scope: !2206)
!2208 = !DILocation(line: 442, column: 9, scope: !2206)
!2209 = !DILocation(line: 0, scope: !2197)
!2210 = !DILocation(line: 445, column: 5, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 445, column: 5)
!2212 = !DILocation(line: 446, column: 9, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 446, column: 9)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 445, column: 29)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 445, column: 5)
!2216 = !DILocation(line: 447, column: 32, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 446, column: 9)
!2218 = !DILocation(line: 447, column: 13, scope: !2217)
!2219 = !DILocation(line: 446, column: 29, scope: !2217)
!2220 = !DILocation(line: 446, column: 23, scope: !2217)
!2221 = distinct !{!2221, !2212, !2222, !516, !517}
!2222 = !DILocation(line: 447, column: 41, scope: !2213)
!2223 = !DILocation(line: 448, column: 9, scope: !2214)
!2224 = !DILocation(line: 445, column: 25, scope: !2215)
!2225 = !DILocation(line: 445, column: 19, scope: !2215)
!2226 = distinct !{!2226, !2210, !2227, !516, !517}
!2227 = !DILocation(line: 449, column: 5, scope: !2211)
!2228 = !DILocation(line: 451, column: 3, scope: !2172)
!2229 = !DILocation(line: 453, column: 12, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 453, column: 9)
!2231 = !DILocation(line: 453, column: 20, scope: !2230)
!2232 = !DILocation(line: 454, column: 9, scope: !2230)
!2233 = !DILocation(line: 455, column: 5, scope: !2172)
!2234 = distinct !DISubprogram(name: "initres", scope: !3, file: !3, line: 750, type: !259, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !734)
!2235 = !DILocation(line: 753, column: 5, scope: !2234)
!2236 = !DILocation(line: 754, column: 13, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 754, column: 9)
!2238 = !DILocation(line: 754, column: 23, scope: !2237)
!2239 = !DILocation(line: 754, column: 9, scope: !2234)
!2240 = !DILocation(line: 755, column: 34, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 754, column: 32)
!2242 = !DILocation(line: 755, column: 23, scope: !2241)
!2243 = !DILocation(line: 756, column: 27, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 756, column: 13)
!2245 = !DILocation(line: 756, column: 13, scope: !2241)
!2246 = !DILocation(line: 757, column: 21, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 756, column: 36)
!2248 = !DILocation(line: 757, column: 13, scope: !2247)
!2249 = !DILocation(line: 758, column: 13, scope: !2247)
!2250 = !DILocation(line: 761, column: 13, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 761, column: 9)
!2252 = !DILocation(line: 761, column: 21, scope: !2251)
!2253 = !DILocation(line: 761, column: 9, scope: !2234)
!2254 = !DILocation(line: 762, column: 32, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 761, column: 30)
!2256 = !DILocation(line: 762, column: 21, scope: !2255)
!2257 = !DILocation(line: 763, column: 25, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 763, column: 13)
!2259 = !DILocation(line: 763, column: 13, scope: !2255)
!2260 = !DILocation(line: 764, column: 21, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 763, column: 34)
!2262 = !DILocation(line: 764, column: 13, scope: !2261)
!2263 = !DILocation(line: 765, column: 13, scope: !2261)
!2264 = !DILocation(line: 768, column: 20, scope: !2234)
!2265 = !DILocation(line: 768, column: 18, scope: !2234)
!2266 = !DILocation(line: 769, column: 17, scope: !2234)
!2267 = !DILocation(line: 770, column: 1, scope: !2234)
!2268 = !DISubprogram(name: "newmolecule", scope: !3, file: !3, line: 103, type: !2269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!353}
!2271 = !DISubprogram(name: "ggets", scope: !3, file: !3, line: 101, type: !2272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!13, !13, !37, !276}
!2274 = distinct !DISubprogram(name: "makebonds", scope: !3, file: !3, line: 794, type: !2275, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !39}
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285}
!2278 = !DILocalVariable(name: "res", arg: 1, scope: !2274, file: !3, line: 794, type: !39)
!2279 = !DILocalVariable(name: "a1", scope: !2274, file: !3, line: 796, type: !37)
!2280 = !DILocalVariable(name: "a2", scope: !2274, file: !3, line: 796, type: !37)
!2281 = !DILocalVariable(name: "ap1", scope: !2274, file: !3, line: 797, type: !219)
!2282 = !DILocalVariable(name: "ap2", scope: !2274, file: !3, line: 797, type: !219)
!2283 = !DILocalVariable(name: "ih1", scope: !2274, file: !3, line: 798, type: !37)
!2284 = !DILocalVariable(name: "ih2", scope: !2274, file: !3, line: 798, type: !37)
!2285 = !DILocalVariable(name: "d", scope: !2274, file: !3, line: 799, type: !10)
!2286 = !DILocation(line: 0, scope: !2274)
!2287 = !DILocation(line: 801, column: 21, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 801, column: 5)
!2289 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 801, column: 5)
!2290 = !DILocation(line: 801, column: 5, scope: !2289)
!2291 = !DILocation(line: 806, column: 21, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 806, column: 5)
!2293 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 806, column: 5)
!2294 = !DILocation(line: 806, column: 5, scope: !2293)
!2295 = !DILocation(line: 803, column: 14, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 801, column: 44)
!2297 = !DILocation(line: 803, column: 25, scope: !2296)
!2298 = !{!490, !491, i64 20}
!2299 = !DILocation(line: 801, column: 40, scope: !2288)
!2300 = distinct !{!2300, !2290, !2301, !516, !517}
!2301 = !DILocation(line: 804, column: 5, scope: !2289)
!2302 = !DILocation(line: 806, column: 28, scope: !2292)
!2303 = !DILocation(line: 806, column: 37, scope: !2292)
!2304 = distinct !{!2304, !2294, !2305, !516, !517}
!2305 = !DILocation(line: 836, column: 5, scope: !2293)
!2306 = !DILocation(line: 807, column: 21, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 806, column: 48)
!2308 = !DILocation(line: 808, column: 13, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 808, column: 13)
!2310 = !{!2311, !2311, i64 0}
!2311 = !{!"short", !367, i64 0}
!2312 = !DILocation(line: 808, column: 13, scope: !2307)
!2313 = !DILocation(line: 809, column: 19, scope: !2309)
!2314 = !DILocation(line: 809, column: 13, scope: !2309)
!2315 = !DILocation(line: 0, scope: !2309)
!2316 = !DILocation(line: 812, column: 22, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 812, column: 9)
!2318 = !DILocation(line: 812, column: 30, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 812, column: 9)
!2320 = !DILocation(line: 812, column: 9, scope: !2317)
!2321 = !DILocation(line: 814, column: 17, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 812, column: 53)
!2323 = !DILocation(line: 814, column: 17, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 814, column: 17)
!2325 = !DILocation(line: 813, column: 25, scope: !2322)
!2326 = !DILocation(line: 815, column: 23, scope: !2324)
!2327 = !DILocation(line: 815, column: 17, scope: !2324)
!2328 = !DILocation(line: 0, scope: !2324)
!2329 = !DILocation(line: 819, column: 17, scope: !2322)
!2330 = !DILocation(line: 0, scope: !2136, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 819, column: 17, scope: !2322)
!2332 = !DILocation(line: 843, column: 24, scope: !2136, inlinedAt: !2331)
!2333 = !DILocation(line: 844, column: 24, scope: !2136, inlinedAt: !2331)
!2334 = !DILocation(line: 845, column: 24, scope: !2136, inlinedAt: !2331)
!2335 = !DILocation(line: 846, column: 31, scope: !2136, inlinedAt: !2331)
!2336 = !DILocation(line: 846, column: 26, scope: !2136, inlinedAt: !2331)
!2337 = !DILocation(line: 846, column: 36, scope: !2136, inlinedAt: !2331)
!2338 = !DILocation(line: 846, column: 13, scope: !2136, inlinedAt: !2331)
!2339 = !DILocation(line: 820, column: 21, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 820, column: 17)
!2341 = !DILocation(line: 821, column: 23, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 821, column: 21)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 820, column: 29)
!2344 = !DILocation(line: 821, column: 21, scope: !2343)
!2345 = !DILocation(line: 822, column: 30, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 822, column: 25)
!2347 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 821, column: 37)
!2348 = !DILocation(line: 822, column: 41, scope: !2346)
!2349 = !DILocation(line: 822, column: 58, scope: !2346)
!2350 = !DILocation(line: 823, column: 30, scope: !2346)
!2351 = !DILocation(line: 823, column: 41, scope: !2346)
!2352 = !DILocation(line: 822, column: 25, scope: !2347)
!2353 = !DILocation(line: 828, column: 26, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 828, column: 24)
!2355 = !DILocation(line: 828, column: 24, scope: !2340)
!2356 = !DILocation(line: 829, column: 26, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 829, column: 21)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 828, column: 39)
!2359 = !DILocation(line: 829, column: 37, scope: !2357)
!2360 = !DILocation(line: 829, column: 54, scope: !2357)
!2361 = !DILocation(line: 830, column: 26, scope: !2357)
!2362 = !DILocation(line: 830, column: 37, scope: !2357)
!2363 = !DILocation(line: 829, column: 21, scope: !2358)
!2364 = !DILocation(line: 0, scope: !2340)
!2365 = !DILocation(line: 812, column: 49, scope: !2319)
!2366 = !DILocation(line: 812, column: 37, scope: !2319)
!2367 = distinct !{!2367, !2320, !2368, !516, !517}
!2368 = !DILocation(line: 835, column: 9, scope: !2317)
!2369 = !DILocation(line: 837, column: 1, scope: !2274)
!2370 = !DISubprogram(name: "addresidue", scope: !3, file: !3, line: 105, type: !2371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!37, !353, !13, !39}
!2373 = !DISubprogram(name: "addstrand", scope: !3, file: !3, line: 104, type: !2374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!37, !353, !13}
!2376 = !DISubprogram(name: "NAB_initatom", scope: !3, file: !3, line: 89, type: !2377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !219, !37}
!2379 = !DISubprogram(name: "NAB_initres", scope: !3, file: !3, line: 88, type: !2380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !39, !37}
