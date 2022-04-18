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
  store i1 true, i1* @init_atab.init, align 4, !dbg !517
  br label %init_atab.exit.i, !dbg !518

init_atab.exit.i:                                 ; preds = %for.end.i.i, %if.end.i
  %call2.i = call %struct.molecule_t* @newmolecule() #20, !dbg !519
  call void @llvm.dbg.value(metadata %struct.molecule_t* %call2.i, metadata !408, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 0, metadata !410, metadata !DIExpression()) #20, !dbg !451
  store i8 0, i8* %8, align 1, !dbg !520, !tbaa !366
  call void @llvm.dbg.value(metadata i32 0, metadata !430, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()) #20, !dbg !451
  store i32 0, i32* @n_atab, align 4, !dbg !521, !tbaa !522
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
  %call5489.i = call i8* @ggets(i8* noundef nonnull %4, i32 noundef 82, %struct._IO_FILE* noundef %fp.1) #20, !dbg !523
  %cmp6490.i = icmp eq i8* %call5489.i, null, !dbg !525
  br i1 %cmp6490.i, label %for.end341.i, label %if.end8.i, !dbg !526

if.end8.i:                                        ; preds = %init_atab.exit.i, %if.end340.i
  %l_cid.0495.i = phi i32 [ %l_cid.2.i, %if.end340.i ], [ 0, %init_atab.exit.i ]
  %nchains.0493.i = phi i32 [ %nchains.2.i, %if.end340.i ], [ 0, %init_atab.exit.i ]
  %l_rnum.0491.i = phi i32 [ %l_rnum.2.i, %if.end340.i ], [ 0, %init_atab.exit.i ]
  call void @llvm.dbg.value(metadata i32 %l_cid.0495.i, metadata !410, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %nchains.0493.i, metadata !412, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %l_rnum.0491.i, metadata !430, metadata !DIExpression()) #20, !dbg !451
  %call10.i = call i64 @strlen(i8* noundef nonnull %4) #19, !dbg !527
  %conv.i = trunc i64 %call10.i to i32, !dbg !527
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !438, metadata !DIExpression()) #20, !dbg !451
  %cmp12482.i = icmp slt i32 %conv.i, 80, !dbg !529
  br i1 %cmp12482.i, label %for.body.preheader.i, label %for.end.i, !dbg !531

for.body.preheader.i:                             ; preds = %if.end8.i
  %sext500.i = shl i64 %call10.i, 32, !dbg !531
  %22 = ashr exact i64 %sext500.i, 32, !dbg !531
  %scevgep.i = getelementptr [82 x i8], [82 x i8]* %line.i, i64 0, i64 %22, !dbg !531
  %23 = sub i64 79, %call10.i, !dbg !531
  %24 = and i64 %23, 4294967295, !dbg !531
  %25 = add nuw nsw i64 %24, 1, !dbg !531
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 32, i64 %25, i1 false) #20, !dbg !532, !tbaa !366
  call void @llvm.dbg.value(metadata i32 undef, metadata !438, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 undef, metadata !438, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !451
  br label %for.end.i, !dbg !533

for.end.i:                                        ; preds = %for.body.preheader.i, %if.end8.i
  store i8 0, i8* %arrayidx14.i, align 16, !dbg !533, !tbaa !366
  %rhsv.i = load i32, i32* %18, align 16, !dbg !534
  %.not.i = icmp eq i32 %rhsv.i, 1297044545, !dbg !534
  br i1 %.not.i, label %if.then23.i, label %lor.lhs.false.i, !dbg !535

lor.lhs.false.i:                                  ; preds = %for.end.i
  %bcmp.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %4, i64 6) #20, !dbg !536
  %cmp21.i = icmp eq i32 %bcmp.i, 0, !dbg !537
  br i1 %cmp21.i, label %if.then23.i, label %if.else314.i, !dbg !538

if.then23.i:                                      ; preds = %lor.lhs.false.i, %for.end.i
  %call26.i = call i8* @strncpy(i8* noundef nonnull %6, i8* noundef nonnull %arrayidx25.i, i64 noundef 4) #20, !dbg !539
  store i8 0, i8* %arrayidx27.i, align 4, !dbg !540, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %6, metadata !428, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %6, metadata !427, metadata !DIExpression()) #20, !dbg !451
  br label %for.cond29.i, !dbg !541

for.cond29.i:                                     ; preds = %for.inc36.i, %if.then23.i
  %np1.0.i = phi i8* [ %6, %if.then23.i ], [ %np1.1.i, %for.inc36.i ], !dbg !543
  %np.0.i = phi i8* [ %6, %if.then23.i ], [ %incdec.ptr37.i, %for.inc36.i ], !dbg !543
  call void @llvm.dbg.value(metadata i8* %np.0.i, metadata !427, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %np1.0.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  %26 = load i8, i8* %np.0.i, align 1, !dbg !544, !tbaa !366
  switch i8 %26, label %if.then34.i [
    i8 0, label %for.end38.i
    i8 32, label %for.inc36.i
  ], !dbg !546

if.then34.i:                                      ; preds = %for.cond29.i
  %incdec.ptr.i = getelementptr inbounds i8, i8* %np1.0.i, i64 1, !dbg !547
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  store i8 %26, i8* %np1.0.i, align 1, !dbg !550, !tbaa !366
  br label %for.inc36.i, !dbg !551

for.inc36.i:                                      ; preds = %if.then34.i, %for.cond29.i
  %np1.1.i = phi i8* [ %incdec.ptr.i, %if.then34.i ], [ %np1.0.i, %for.cond29.i ], !dbg !543
  call void @llvm.dbg.value(metadata i8* %np1.1.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  %incdec.ptr37.i = getelementptr inbounds i8, i8* %np.0.i, i64 1, !dbg !552
  call void @llvm.dbg.value(metadata i8* %incdec.ptr37.i, metadata !427, metadata !DIExpression()) #20, !dbg !451
  br label %for.cond29.i, !dbg !553, !llvm.loop !554

for.end38.i:                                      ; preds = %for.cond29.i
  store i8 0, i8* %np1.0.i, align 1, !dbg !556, !tbaa !366
  %27 = load i8, i8* %6, align 4, !dbg !557, !tbaa !366
  %28 = add i8 %27, -49, !dbg !559
  %29 = icmp ult i8 %28, 3, !dbg !559
  br i1 %29, label %for.cond55.preheader.i, label %if.end71.i, !dbg !559

for.cond55.preheader.i:                           ; preds = %for.end38.i
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()) #20, !dbg !451
  %call57484.i = call i64 @strlen(i8* noundef nonnull %6) #19, !dbg !560
  %conv58485.i = trunc i64 %call57484.i to i32, !dbg !564
  %cmp59487.i = icmp sgt i32 %conv58485.i, 1, !dbg !565
  br i1 %cmp59487.i, label %for.body61.i, label %for.end68.i, !dbg !566

for.body61.i:                                     ; preds = %for.cond55.preheader.i, %for.body61.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body61.i ], [ 0, %for.cond55.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !438, metadata !DIExpression()) #20, !dbg !451
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !567
  %arrayidx63.i = getelementptr inbounds [10 x i8], [10 x i8]* %aname.i, i64 0, i64 %indvars.iv.next.i, !dbg !568
  %30 = load i8, i8* %arrayidx63.i, align 1, !dbg !568, !tbaa !366
  %arrayidx65.i = getelementptr inbounds [10 x i8], [10 x i8]* %aname.i, i64 0, i64 %indvars.iv.i, !dbg !569
  store i8 %30, i8* %arrayidx65.i, align 1, !dbg !570, !tbaa !366
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !438, metadata !DIExpression()) #20, !dbg !451
  %call57.i = call i64 @strlen(i8* noundef nonnull %6) #19, !dbg !560
  %sub.i = shl i64 %call57.i, 32, !dbg !565
  %sext.i = add i64 %sub.i, -4294967296, !dbg !565
  %31 = ashr exact i64 %sext.i, 32, !dbg !565
  %cmp59.i = icmp slt i64 %indvars.iv.next.i, %31, !dbg !565
  br i1 %cmp59.i, label %for.body61.i, label %for.end68.i, !dbg !566, !llvm.loop !571

for.end68.i:                                      ; preds = %for.body61.i, %for.cond55.preheader.i
  %i.1.lcssa.i = phi i64 [ 0, %for.cond55.preheader.i ], [ %indvars.iv.next.i, %for.body61.i ], !dbg !573
  %idxprom69.i = and i64 %i.1.lcssa.i, 4294967295, !dbg !574
  %arrayidx70.i = getelementptr inbounds [10 x i8], [10 x i8]* %aname.i, i64 0, i64 %idxprom69.i, !dbg !574
  store i8 %27, i8* %arrayidx70.i, align 1, !dbg !575, !tbaa !366
  br label %if.end71.i, !dbg !576

if.end71.i:                                       ; preds = %for.end68.i, %for.end38.i
  %32 = load i8, i8* %arrayidx72.i, align 2, !dbg !577, !tbaa !366
  %cmp74.i = icmp eq i8 %32, 42, !dbg !579
  br i1 %cmp74.i, label %if.then76.i, label %if.end78.i, !dbg !580

if.then76.i:                                      ; preds = %if.end71.i
  store i8 39, i8* %arrayidx72.i, align 2, !dbg !581, !tbaa !366
  br label %if.end78.i, !dbg !582

if.end78.i:                                       ; preds = %if.then76.i, %if.end71.i
  %lhsv455.i = load i32, i32* %19, align 4, !dbg !583
  %.not456.i = icmp eq i32 %lhsv455.i, 5059907, !dbg !583
  br i1 %.not456.i, label %if.then82.i, label %if.end85.i, !dbg !585

if.then82.i:                                      ; preds = %if.end78.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(3) %6, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 3, i1 false) #20, !dbg !586
  br label %if.end85.i, !dbg !586

if.end85.i:                                       ; preds = %if.then82.i, %if.end78.i
  %call88.i = call i8* @strncpy(i8* noundef nonnull %7, i8* noundef nonnull %arrayidx87.i, i64 noundef 3) #20, !dbg !587
  store i8 0, i8* %arrayidx89.i, align 1, !dbg !588, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %7, metadata !428, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %7, metadata !427, metadata !DIExpression()) #20, !dbg !451
  br label %for.cond91.i, !dbg !589

for.cond91.i:                                     ; preds = %for.inc100.i, %if.end85.i
  %np1.2.i = phi i8* [ %7, %if.end85.i ], [ %np1.3.i, %for.inc100.i ], !dbg !591
  %np.1.i = phi i8* [ %7, %if.end85.i ], [ %incdec.ptr101.i, %for.inc100.i ], !dbg !591
  call void @llvm.dbg.value(metadata i8* %np.1.i, metadata !427, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %np1.2.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  %33 = load i8, i8* %np.1.i, align 1, !dbg !592, !tbaa !366
  switch i8 %33, label %if.then97.i [
    i8 0, label %for.end102.i
    i8 32, label %for.inc100.i
  ], !dbg !594

if.then97.i:                                      ; preds = %for.cond91.i
  %incdec.ptr98.i = getelementptr inbounds i8, i8* %np1.2.i, i64 1, !dbg !595
  call void @llvm.dbg.value(metadata i8* %incdec.ptr98.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  store i8 %33, i8* %np1.2.i, align 1, !dbg !598, !tbaa !366
  br label %for.inc100.i, !dbg !599

for.inc100.i:                                     ; preds = %if.then97.i, %for.cond91.i
  %np1.3.i = phi i8* [ %incdec.ptr98.i, %if.then97.i ], [ %np1.2.i, %for.cond91.i ], !dbg !591
  call void @llvm.dbg.value(metadata i8* %np1.3.i, metadata !428, metadata !DIExpression()) #20, !dbg !451
  %incdec.ptr101.i = getelementptr inbounds i8, i8* %np.1.i, i64 1, !dbg !600
  call void @llvm.dbg.value(metadata i8* %incdec.ptr101.i, metadata !427, metadata !DIExpression()) #20, !dbg !451
  br label %for.cond91.i, !dbg !601, !llvm.loop !602

for.end102.i:                                     ; preds = %for.cond91.i
  store i8 0, i8* %np1.2.i, align 1, !dbg !604, !tbaa !366
  %lhsv457.i = load i32, i32* %19, align 4, !dbg !605
  %.not458.i = icmp eq i32 %lhsv457.i, 2568783, !dbg !605
  br i1 %.not458.i, label %if.then106.i, label %for.end102.if.end107_crit_edge.i, !dbg !607

for.end102.if.end107_crit_edge.i:                 ; preds = %for.end102.i
  %.pre.i = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 7), align 4
  br label %if.end107.i, !dbg !607

if.then106.i:                                     ; preds = %for.end102.i
  store i32 2, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 7), align 4, !dbg !608, !tbaa !609
  br label %if.end107.i, !dbg !611

if.end107.i:                                      ; preds = %if.then106.i, %for.end102.if.end107_crit_edge.i
  %34 = phi i32 [ %.pre.i, %for.end102.if.end107_crit_edge.i ], [ 2, %if.then106.i ]
  %bcmp425.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %6, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 5) #20, !dbg !612
  %tobool110.i = icmp eq i32 %bcmp425.i, 0, !dbg !612
  %cmp111.i = icmp eq i32 %34, 2
  %or.cond353.i = select i1 %tobool110.i, i1 %cmp111.i, i1 false, !dbg !614
  br i1 %or.cond353.i, label %if.then113.i, label %if.end116.i, !dbg !614

if.then113.i:                                     ; preds = %if.end107.i
  store i32 2568776, i32* %19, align 4, !dbg !615
  br label %if.end116.i, !dbg !615

if.end116.i:                                      ; preds = %if.then113.i, %if.end107.i
  %lhsv459.i = load i16, i16* %20, align 4, !dbg !616
  switch i16 %lhsv459.i, label %if.end151.i [
    i16 65, label %if.end123.thread.i
    i16 67, label %if.then127.i
    i16 71, label %if.end137.thread.i
    i16 84, label %if.then141.i
    i16 85, label %if.then148.i
  ], !dbg !618

if.end123.thread.i:                               ; preds = %if.end116.i
  store i32 4539457, i32* %21, align 4, !dbg !619
  br label %if.end151.i, !dbg !620

if.then127.i:                                     ; preds = %if.end116.i
  store i32 5527875, i32* %21, align 4, !dbg !621
  br label %if.end151.i, !dbg !621

if.end137.thread.i:                               ; preds = %if.end116.i
  store i32 4281671, i32* %21, align 4, !dbg !623
  br label %if.end151.i, !dbg !625

if.then141.i:                                     ; preds = %if.end116.i
  store i32 5851220, i32* %21, align 4, !dbg !626
  br label %if.end151.i, !dbg !626

if.then148.i:                                     ; preds = %if.end116.i
  store i32 4280917, i32* %21, align 4, !dbg !628
  br label %if.end151.i, !dbg !628

if.end151.i:                                      ; preds = %if.then148.i, %if.then141.i, %if.end137.thread.i, %if.then127.i, %if.end123.thread.i, %if.end116.i
  %call154.i = call i8* @strncpy(i8* noundef nonnull %9, i8* noundef nonnull %arrayidx153.i, i64 noundef 6) #20, !dbg !630
  store i8 0, i8* %arrayidx155.i, align 1, !dbg !631, !tbaa !366
  %35 = load i8, i8* %arrayidx153.i, align 1, !dbg !632, !tbaa !366
  %conv157.i = sext i8 %35 to i32, !dbg !632
  call void @llvm.dbg.value(metadata i32 %conv157.i, metadata !411, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32* %rnum.i, metadata !429, metadata !DIExpression(DW_OP_deref)) #20, !dbg !451
  %call159.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %arrayidx158.i, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32* noundef nonnull %rnum.i) #20, !dbg !633
  %call162.i = call i8* @strncpy(i8* noundef nonnull %11, i8* noundef nonnull %arrayidx161.i, i64 noundef 8) #20, !dbg !634
  store i8 0, i8* %arrayidx163.i, align 1, !dbg !635, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %11, metadata !636, metadata !DIExpression()) #20, !dbg !644
  %call.i461.i = call double @strtod(i8* nocapture noundef nonnull %11, i8** noundef null) #20, !dbg !646
  call void @llvm.dbg.value(metadata double %call.i461.i, metadata !431, metadata !DIExpression()) #20, !dbg !451
  %call168.i = call i8* @strncpy(i8* noundef nonnull %11, i8* noundef nonnull %arrayidx167.i, i64 noundef 8) #20, !dbg !647
  store i8 0, i8* %arrayidx163.i, align 1, !dbg !648, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %11, metadata !636, metadata !DIExpression()) #20, !dbg !649
  %call.i462.i = call double @strtod(i8* nocapture noundef nonnull %11, i8** noundef null) #20, !dbg !651
  call void @llvm.dbg.value(metadata double %call.i462.i, metadata !432, metadata !DIExpression()) #20, !dbg !451
  %call174.i = call i8* @strncpy(i8* noundef nonnull %11, i8* noundef nonnull %arrayidx173.i, i64 noundef 8) #20, !dbg !652
  store i8 0, i8* %arrayidx163.i, align 1, !dbg !653, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %11, metadata !636, metadata !DIExpression()) #20, !dbg !654
  %call.i463.i = call double @strtod(i8* nocapture noundef nonnull %11, i8** noundef null) #20, !dbg !656
  call void @llvm.dbg.value(metadata double %call.i463.i, metadata !433, metadata !DIExpression()) #20, !dbg !451
  %call179.i = call i8* @strstr(i8* noundef nonnull %15, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #19, !dbg !657
  %tobool180.not.i = icmp eq i8* %call179.i, null, !dbg !657
  br i1 %tobool180.not.i, label %if.else184.i, label %if.then181.i, !dbg !659

if.then181.i:                                     ; preds = %if.end151.i
  call void @llvm.dbg.value(metadata double* %q.i, metadata !434, metadata !DIExpression(DW_OP_deref)) #20, !dbg !451
  call void @llvm.dbg.value(metadata double* %r.i, metadata !435, metadata !DIExpression(DW_OP_deref)) #20, !dbg !451
  %call183.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %arrayidx182.i, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double* noundef nonnull %q.i, double* noundef nonnull %r.i) #20, !dbg !660
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !436, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !437, metadata !DIExpression()) #20, !dbg !451
  br label %if.end233.i, !dbg !662

if.else184.i:                                     ; preds = %if.end151.i
  %lhsc.i = load i8, i8* %6, align 4, !dbg !663
  switch i8 %lhsc.i, label %if.else214.i [
    i8 72, label %if.then188.i
    i8 67, label %if.then193.i
    i8 78, label %if.then198.i
    i8 79, label %if.then203.i
    i8 83, label %if.then208.i
    i8 80, label %if.then213.i
  ], !dbg !666

if.then188.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.200000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.200000e+00, double* %r.i, align 8, !dbg !667, !tbaa !668
  br label %if.end220.i, !dbg !669

if.then193.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.700000e+00, double* %r.i, align 8, !dbg !670, !tbaa !668
  br label %if.end220.i, !dbg !672

if.then198.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.550000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.550000e+00, double* %r.i, align 8, !dbg !673, !tbaa !668
  br label %if.end220.i, !dbg !675

if.then203.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.500000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.500000e+00, double* %r.i, align 8, !dbg !676, !tbaa !668
  br label %if.end220.i, !dbg !678

if.then208.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.800000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.800000e+00, double* %r.i, align 8, !dbg !679, !tbaa !668
  br label %if.end220.i, !dbg !681

if.then213.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.850000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.850000e+00, double* %r.i, align 8, !dbg !682, !tbaa !668
  br label %if.end220.i, !dbg !684

if.else214.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !435, metadata !DIExpression()) #20, !dbg !451
  store double 1.700000e+00, double* %r.i, align 8, !dbg !685, !tbaa !668
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.else214.i, %if.then213.i, %if.then208.i, %if.then203.i, %if.then198.i, %if.then193.i, %if.then188.i
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !434, metadata !DIExpression()) #20, !dbg !451
  store double 0.000000e+00, double* %q.i, align 8, !dbg !686, !tbaa !668
  %call223.i = call i8* @strncpy(i8* noundef nonnull %11, i8* noundef nonnull %arrayidx182.i, i64 noundef 6) #20, !dbg !687
  store i8 0, i8* %arrayidx224.i, align 1, !dbg !688, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %11, metadata !636, metadata !DIExpression()) #20, !dbg !689
  %call.i464.i = call double @strtod(i8* nocapture noundef nonnull %11, i8** noundef null) #20, !dbg !691
  call void @llvm.dbg.value(metadata double %call.i464.i, metadata !436, metadata !DIExpression()) #20, !dbg !451
  %call229.i = call i8* @strncpy(i8* noundef nonnull %11, i8* noundef nonnull %arrayidx228.i, i64 noundef 6) #20, !dbg !692
  store i8 0, i8* %arrayidx224.i, align 1, !dbg !693, !tbaa !366
  call void @llvm.dbg.value(metadata i8* %11, metadata !636, metadata !DIExpression()) #20, !dbg !694
  %call.i465.i = call double @strtod(i8* nocapture noundef nonnull %11, i8** noundef null) #20, !dbg !696
  call void @llvm.dbg.value(metadata double %call.i465.i, metadata !437, metadata !DIExpression()) #20, !dbg !451
  br label %if.end233.i

if.end233.i:                                      ; preds = %if.end220.i, %if.then181.i
  %occ.0.i = phi double [ 1.000000e+00, %if.then181.i ], [ %call.i464.i, %if.end220.i ], !dbg !697
  %bfact.0.i = phi double [ 0.000000e+00, %if.then181.i ], [ %call.i465.i, %if.end220.i ], !dbg !697
  call void @llvm.dbg.value(metadata double %bfact.0.i, metadata !437, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata double %occ.0.i, metadata !436, metadata !DIExpression()) #20, !dbg !451
  %cmp234.not.i = icmp eq i32 %l_cid.0495.i, %conv157.i, !dbg !698
  br i1 %cmp234.not.i, label %if.else284.i, label %if.then236.i, !dbg !699

if.then236.i:                                     ; preds = %if.end233.i
  %36 = load i32, i32* @n_atab, align 4, !dbg !700, !tbaa !522
  %cmp237.i = icmp sgt i32 %36, 0, !dbg !702
  br i1 %cmp237.i, label %if.then239.i, label %if.end246.i, !dbg !703

if.then239.i:                                     ; preds = %if.then236.i
  %37 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !704, !tbaa !706
  %call241.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %37, i8* noundef nonnull %8) #20, !dbg !707
  %38 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !708, !tbaa !709
  %call243.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %38, i8* noundef nonnull %10) #20, !dbg !710
  store i32 %l_rnum.0491.i, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !711, !tbaa !712
  store i32 %36, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !713, !tbaa !714
  call fastcc void @makebonds() #20, !dbg !715
  %call245.i = call i32 @addresidue(%struct.molecule_t* noundef %call2.i, i8* noundef nonnull %5, %struct.residue_t* noundef nonnull @res) #20, !dbg !716
  call fastcc void @initres() #20, !dbg !717
  store i32 0, i32* @n_atab, align 4, !dbg !718, !tbaa !522
  br label %if.end246.i, !dbg !719

if.end246.i:                                      ; preds = %if.then239.i, %if.then236.i
  %inc247.i = add nsw i32 %nchains.0493.i, 1, !dbg !720
  call void @llvm.dbg.value(metadata i32 %inc247.i, metadata !412, metadata !DIExpression()) #20, !dbg !451
  %cmp248.i = icmp eq i8 %35, 32, !dbg !721
  br i1 %cmp248.i, label %if.then250.i, label %if.else253.i, !dbg !723

if.then250.i:                                     ; preds = %if.end246.i
  %call252.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 noundef %inc247.i) #20, !dbg !724
  br label %if.end257.i, !dbg !724

if.else253.i:                                     ; preds = %if.end246.i
  store i8 %35, i8* %5, align 1, !dbg !725, !tbaa !366
  store i8 0, i8* %arrayidx256.i, align 1, !dbg !727, !tbaa !366
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.else253.i, %if.then250.i
  %call259.i = call i32 @addstrand(%struct.molecule_t* noundef %call2.i, i8* noundef nonnull %5) #20, !dbg !728
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !441, metadata !DIExpression()) #20, !dbg !729
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !450, metadata !DIExpression()) #20, !dbg !729
  br label %for.cond260.i, !dbg !730

for.cond260.i:                                    ; preds = %for.cond260.i, %if.end257.i
  %spl.0.in.i = phi %struct.strand_t** [ %m_strands.i, %if.end257.i ], [ %s_next.i, %for.cond260.i ]
  %spl.0.i = load %struct.strand_t*, %struct.strand_t** %spl.0.in.i, align 8, !dbg !732, !tbaa !372, !nonnull !733
  call void @llvm.dbg.value(metadata %struct.strand_t* %spl.0.i, metadata !450, metadata !DIExpression()) #20, !dbg !729
  %s_strandname.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %spl.0.i, i64 0, i32 0, !dbg !734
  %39 = load i8*, i8** %s_strandname.i, align 8, !dbg !734, !tbaa !738
  %call264.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %39, i8* noundef nonnull %5) #19, !dbg !740
  %tobool265.not.i = icmp eq i32 %call264.i, 0, !dbg !740
  %s_next.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %spl.0.i, i64 0, i32 4, !dbg !741
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !450, metadata !DIExpression()) #20, !dbg !729
  br i1 %tobool265.not.i, label %for.end269.i, label %for.cond260.i, !dbg !742, !llvm.loop !743

for.end269.i:                                     ; preds = %for.cond260.i
  call void @llvm.dbg.value(metadata %struct.strand_t* %spl.0.i, metadata !441, metadata !DIExpression()) #20, !dbg !729
  %s_res_size.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %spl.0.i, i64 0, i32 6, !dbg !746
  store i32 10000, i32* %s_res_size.i, align 4, !dbg !747, !tbaa !748
  %call272.i = call noalias dereferenceable_or_null(1280000) i8* @malloc(i64 noundef 1280000) #20, !dbg !749
  %s_residues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %spl.0.i, i64 0, i32 7, !dbg !750
  %40 = bitcast %struct.residue_t*** %s_residues.i to i8**, !dbg !751
  store i8* %call272.i, i8** %40, align 8, !dbg !751, !tbaa !752
  call void @llvm.dbg.value(metadata i32 %conv157.i, metadata !410, metadata !DIExpression()) #20, !dbg !451
  %call280.i = call i8* @strcpy(i8* noundef nonnull %8, i8* noundef nonnull %7) #20, !dbg !753
  %call283.i = call i8* @strcpy(i8* noundef nonnull %10, i8* noundef nonnull %9) #20, !dbg !754
  %41 = load i32, i32* %rnum.i, align 4, !dbg !755, !tbaa !522
  call void @llvm.dbg.value(metadata i32 %41, metadata !429, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %41, metadata !430, metadata !DIExpression()) #20, !dbg !451
  br label %if.end303.i, !dbg !756

if.else284.i:                                     ; preds = %if.end233.i
  %42 = load i32, i32* %rnum.i, align 4, !dbg !757, !tbaa !522
  call void @llvm.dbg.value(metadata i32 %42, metadata !429, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i8* %8, metadata !759, metadata !DIExpression()) #20, !dbg !767
  call void @llvm.dbg.value(metadata i8* %7, metadata !764, metadata !DIExpression()) #20, !dbg !767
  call void @llvm.dbg.value(metadata i32 %l_rnum.0491.i, metadata !765, metadata !DIExpression()) #20, !dbg !767
  call void @llvm.dbg.value(metadata i32 %42, metadata !766, metadata !DIExpression()) #20, !dbg !767
  %call.i466.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %8, i8* noundef nonnull dereferenceable(1) %7) #19, !dbg !769
  %tobool.i.i = icmp eq i32 %call.i466.i, 0, !dbg !769
  %cmp.i.i = icmp eq i32 %l_rnum.0491.i, %42, !dbg !770
  %tobool288.not.i = and i1 %cmp.i.i, %tobool.i.i, !dbg !771
  br i1 %tobool288.not.i, label %if.end303.i, label %if.then289.i, !dbg !772

if.then289.i:                                     ; preds = %if.else284.i
  %43 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !773, !tbaa !706
  %call291.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %43, i8* noundef nonnull %8) #20, !dbg !775
  %44 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !776, !tbaa !709
  %call293.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %44, i8* noundef nonnull %10) #20, !dbg !777
  store i32 %l_rnum.0491.i, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !778, !tbaa !712
  %45 = load i32, i32* @n_atab, align 4, !dbg !779, !tbaa !522
  store i32 %45, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !780, !tbaa !714
  call fastcc void @makebonds() #20, !dbg !781
  %call295.i = call i32 @addresidue(%struct.molecule_t* noundef %call2.i, i8* noundef nonnull %5, %struct.residue_t* noundef nonnull @res) #20, !dbg !782
  call fastcc void @initres() #20, !dbg !783
  %call298.i = call i8* @strcpy(i8* noundef nonnull %8, i8* noundef nonnull %7) #20, !dbg !784
  %call301.i = call i8* @strcpy(i8* noundef nonnull %10, i8* noundef nonnull %9) #20, !dbg !785
  %46 = load i32, i32* %rnum.i, align 4, !dbg !786, !tbaa !522
  call void @llvm.dbg.value(metadata i32 %46, metadata !429, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %46, metadata !430, metadata !DIExpression()) #20, !dbg !451
  store i32 0, i32* @n_atab, align 4, !dbg !787, !tbaa !522
  br label %if.end303.i, !dbg !788

if.end303.i:                                      ; preds = %if.then289.i, %if.else284.i, %for.end269.i
  %l_rnum.1.i = phi i32 [ %41, %for.end269.i ], [ %46, %if.then289.i ], [ %l_rnum.0491.i, %if.else284.i ], !dbg !451
  %nchains.1.i = phi i32 [ %inc247.i, %for.end269.i ], [ %nchains.0493.i, %if.then289.i ], [ %nchains.0493.i, %if.else284.i ], !dbg !789
  %l_cid.1.i = phi i32 [ %conv157.i, %for.end269.i ], [ %l_cid.0495.i, %if.then289.i ], [ %l_cid.0495.i, %if.else284.i ], !dbg !451
  call void @llvm.dbg.value(metadata i32 %l_cid.1.i, metadata !410, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %nchains.1.i, metadata !412, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %l_rnum.1.i, metadata !430, metadata !DIExpression()) #20, !dbg !451
  %47 = load i32, i32* @n_atab, align 4, !dbg !790, !tbaa !522
  %idxprom304.i = sext i32 %47 to i64, !dbg !791
  %arrayidx305.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, !dbg !791
  call void @llvm.dbg.value(metadata %struct.atom_t* %arrayidx305.i, metadata !409, metadata !DIExpression()) #20, !dbg !451
  call void @NAB_initatom(%struct.atom_t* noundef nonnull %arrayidx305.i, i32 noundef 0) #20, !dbg !792
  %a_atomname.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %arrayidx305.i, i64 0, i32 0, !dbg !793
  %48 = load i8*, i8** %a_atomname.i, align 16, !dbg !793, !tbaa !489
  %call307.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %48, i8* noundef nonnull %6) #20, !dbg !794
  %a_attr.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 2, !dbg !795
  store i32 0, i32* %a_attr.i, align 16, !dbg !796, !tbaa !797
  %a_residue.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 5, !dbg !798
  store %struct.residue_t* null, %struct.residue_t** %a_residue.i, align 8, !dbg !799, !tbaa !800
  %arrayidx308.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 17, i64 0, !dbg !801
  store double %call.i461.i, double* %arrayidx308.i, align 16, !dbg !802, !tbaa !668
  %arrayidx310.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 17, i64 1, !dbg !803
  store double %call.i462.i, double* %arrayidx310.i, align 8, !dbg !804, !tbaa !668
  %arrayidx312.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 17, i64 2, !dbg !805
  store double %call.i463.i, double* %arrayidx312.i, align 16, !dbg !806, !tbaa !668
  %49 = load double, double* %q.i, align 8, !dbg !807, !tbaa !668
  call void @llvm.dbg.value(metadata double %49, metadata !434, metadata !DIExpression()) #20, !dbg !451
  %a_charge.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 6, !dbg !808
  store double %49, double* %a_charge.i, align 16, !dbg !809, !tbaa !810
  %50 = load double, double* %r.i, align 8, !dbg !811, !tbaa !668
  call void @llvm.dbg.value(metadata double %50, metadata !435, metadata !DIExpression()) #20, !dbg !451
  %a_radius.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 7, !dbg !812
  store double %50, double* %a_radius.i, align 8, !dbg !813, !tbaa !814
  %a_occ.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 9, !dbg !815
  store double %occ.0.i, double* %a_occ.i, align 8, !dbg !816, !tbaa !817
  %a_bfact.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %idxprom304.i, i32 8, !dbg !818
  store double %bfact.0.i, double* %a_bfact.i, align 16, !dbg !819, !tbaa !820
  %51 = load i32, i32* @n_atab, align 4, !dbg !821, !tbaa !522
  %inc313.i = add nsw i32 %51, 1, !dbg !821
  store i32 %inc313.i, i32* @n_atab, align 4, !dbg !821, !tbaa !522
  br label %if.end340.i, !dbg !822

if.else314.i:                                     ; preds = %lor.lhs.false.i
  %bcmp421.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull dereferenceable(3) %4, i64 3) #20, !dbg !823
  %cmp317.i = icmp eq i32 %bcmp421.i, 0, !dbg !825
  br i1 %cmp317.i, label %if.then319.i, label %if.else332.i, !dbg !826

if.then319.i:                                     ; preds = %if.else314.i
  %52 = load i32, i32* @n_atab, align 4, !dbg !827, !tbaa !522
  %cmp320.i = icmp sgt i32 %52, 0, !dbg !830
  br i1 %cmp320.i, label %if.then322.i, label %if.end329.i, !dbg !831

if.then322.i:                                     ; preds = %if.then319.i
  %53 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !832, !tbaa !706
  %call324.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %53, i8* noundef nonnull %8) #20, !dbg !834
  %54 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !835, !tbaa !709
  %call326.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull %10) #20, !dbg !836
  store i32 %l_rnum.0491.i, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !837, !tbaa !712
  store i32 %52, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !838, !tbaa !714
  call fastcc void @makebonds() #20, !dbg !839
  %call328.i = call i32 @addresidue(%struct.molecule_t* noundef %call2.i, i8* noundef nonnull %5, %struct.residue_t* noundef nonnull @res) #20, !dbg !840
  call fastcc void @initres() #20, !dbg !841
  store i32 0, i32* @n_atab, align 4, !dbg !842, !tbaa !522
  br label %if.end329.i, !dbg !843

if.end329.i:                                      ; preds = %if.then322.i, %if.then319.i
  call void @llvm.dbg.value(metadata i32 0, metadata !410, metadata !DIExpression()) #20, !dbg !451
  store i8 0, i8* %8, align 1, !dbg !844, !tbaa !366
  store i8 0, i8* %10, align 1, !dbg !845, !tbaa !366
  call void @llvm.dbg.value(metadata i32 0, metadata !430, metadata !DIExpression()) #20, !dbg !451
  br label %if.end340.i, !dbg !846

if.else332.i:                                     ; preds = %if.else314.i
  %bcmp422.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* noundef nonnull dereferenceable(3) %4, i64 3) #20, !dbg !847
  %cmp335.i = icmp eq i32 %bcmp422.i, 0, !dbg !849
  br i1 %cmp335.i, label %for.end341.i, label %if.end340.i, !dbg !850

if.end340.i:                                      ; preds = %if.else332.i, %if.end329.i, %if.end303.i
  %l_rnum.2.i = phi i32 [ %l_rnum.1.i, %if.end303.i ], [ 0, %if.end329.i ], [ %l_rnum.0491.i, %if.else332.i ], !dbg !451
  %nchains.2.i = phi i32 [ %nchains.1.i, %if.end303.i ], [ %nchains.0493.i, %if.end329.i ], [ %nchains.0493.i, %if.else332.i ], !dbg !789
  %l_cid.2.i = phi i32 [ %l_cid.1.i, %if.end303.i ], [ 0, %if.end329.i ], [ %l_cid.0495.i, %if.else332.i ], !dbg !451
  call void @llvm.dbg.value(metadata i32 %l_cid.2.i, metadata !410, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %nchains.2.i, metadata !412, metadata !DIExpression()) #20, !dbg !451
  call void @llvm.dbg.value(metadata i32 %l_rnum.2.i, metadata !430, metadata !DIExpression()) #20, !dbg !451
  %call5.i = call i8* @ggets(i8* noundef nonnull %4, i32 noundef 82, %struct._IO_FILE* noundef %fp.1) #20, !dbg !523
  %cmp6.i = icmp eq i8* %call5.i, null, !dbg !525
  br i1 %cmp6.i, label %for.end341.i, label %if.end8.i, !dbg !526, !llvm.loop !851

for.end341.i:                                     ; preds = %if.end340.i, %if.else332.i, %init_atab.exit.i
  %l_rnum.0.lcssa.i = phi i32 [ 0, %init_atab.exit.i ], [ %l_rnum.2.i, %if.end340.i ], [ %l_rnum.0491.i, %if.else332.i ], !dbg !451
  %55 = load i32, i32* @n_atab, align 4, !dbg !854, !tbaa !522
  %cmp342.i = icmp sgt i32 %55, 0, !dbg !856
  br i1 %cmp342.i, label %if.then344.i, label %fgetpdb.exit, !dbg !857

if.then344.i:                                     ; preds = %for.end341.i
  %56 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !858, !tbaa !706
  %call346.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %56, i8* noundef nonnull %8) #20, !dbg !860
  %57 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !861, !tbaa !709
  %call348.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull %10) #20, !dbg !862
  store i32 %l_rnum.0.lcssa.i, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !863, !tbaa !712
  store i32 %55, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !864, !tbaa !714
  call fastcc void @makebonds() #20, !dbg !865
  %call350.i = call i32 @addresidue(%struct.molecule_t* noundef %call2.i, i8* noundef nonnull %5, %struct.residue_t* noundef nonnull @res) #20, !dbg !866
  call fastcc void @initres() #20, !dbg !867
  br label %fgetpdb.exit, !dbg !868

fgetpdb.exit:                                     ; preds = %for.end341.i, %if.then344.i
  %m_nvalid.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %call2.i, i64 0, i32 5, !dbg !869
  store i32 0, i32* %m_nvalid.i, align 8, !dbg !870, !tbaa !871
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %15) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %11) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %10) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %9) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %8) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %7) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %6) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %5) #20, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 82, i8* nonnull %4) #20, !dbg !873
  call void @llvm.dbg.value(metadata %struct.molecule_t* %call2.i, metadata !359, metadata !DIExpression()), !dbg !361
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !874, !tbaa !372
  %cmp19.not = icmp eq %struct._IO_FILE* %fp.1, %58, !dbg !876
  br i1 %cmp19.not, label %if.end26, label %if.then20, !dbg !877

if.then20:                                        ; preds = %fgetpdb.exit
  %call21 = call i32 @get_mytaskid() #20, !dbg !878
  %cmp22 = icmp eq i32 %call21, 0, !dbg !881
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !882

if.then23:                                        ; preds = %if.then20
  %call24 = call i32 @fclose(%struct._IO_FILE* noundef %fp.1), !dbg !883
  br label %if.end26, !dbg !885

if.end26:                                         ; preds = %if.then20, %if.then23, %fgetpdb.exit
  ret %struct.molecule_t* %call2.i, !dbg !886
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #3

declare !dbg !887 dso_local i32 @get_mytaskid() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

declare !dbg !890 dso_local void @reducerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !893 dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull [4 x [4 x double]]* @getmatrix(i8* noundef %fname) local_unnamed_addr #6 !dbg !2 {
entry:
  %line = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %fname, metadata !274, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !275, metadata !DIExpression()), !dbg !897
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i64 0, i64 0, !dbg !898
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #20, !dbg !898
  call void @llvm.dbg.declare(metadata [256 x i8]* %line, metadata !334, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.declare(metadata i32* undef, metadata !339, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 0, metadata !342, metadata !DIExpression()), !dbg !897
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !901
  %cmp = icmp eq i8* %fname, null, !dbg !902
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !904

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %fname, align 1, !dbg !905, !tbaa !366
  %cmp1 = icmp eq i8 %1, 0, !dbg !906
  br i1 %cmp1, label %if.then, label %if.else, !dbg !907

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !908, !tbaa !372
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %2) #21, !dbg !910
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !897
  br label %if.end53, !dbg !911

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %fname, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #19, !dbg !912
  %tobool.not = icmp eq i32 %call3, 0, !dbg !912
  br i1 %tobool.not, label %if.then4, label %if.else5, !dbg !914

if.then4:                                         ; preds = %if.else
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !915, !tbaa !372
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, metadata !275, metadata !DIExpression()), !dbg !897
  br label %if.end12, !dbg !916

if.else5:                                         ; preds = %if.else
  %call6 = tail call %struct._IO_FILE* @fopen(i8* noundef nonnull %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !917
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call6, metadata !275, metadata !DIExpression()), !dbg !897
  %cmp7 = icmp eq %struct._IO_FILE* %call6, null, !dbg !919
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !920

if.then9:                                         ; preds = %if.else5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !921, !tbaa !372
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %fname) #21, !dbg !923
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !897
  br label %if.end53, !dbg !924

if.end12:                                         ; preds = %if.then4, %if.else5
  %fp.0 = phi %struct._IO_FILE* [ %call6, %if.else5 ], [ %4, %if.then4 ], !dbg !925
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.0, metadata !275, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i32 0, metadata !338, metadata !DIExpression()), !dbg !897
  br label %for.cond, !dbg !926

for.cond:                                         ; preds = %if.end12, %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !338, metadata !DIExpression()), !dbg !897
  %call13 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 256, %struct._IO_FILE* noundef %fp.0), !dbg !928
  %tobool14.not = icmp eq i8* %call13, null, !dbg !926
  br i1 %tobool14.not, label %if.then44, label %for.body, !dbg !926

for.body:                                         ; preds = %for.cond
  %6 = load i8, i8* %0, align 16, !dbg !930, !tbaa !366
  %cmp17 = icmp eq i8 %6, 35, !dbg !933
  br i1 %cmp17, label %for.cond, label %if.end20, !dbg !934, !llvm.loop !935

if.end20:                                         ; preds = %for.body
  %call32 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 0), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 1), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 2), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 3)) #20, !dbg !937
  call void @llvm.dbg.value(metadata i32 %call32, metadata !340, metadata !DIExpression()), !dbg !897
  %cmp33.not = icmp eq i32 %call32, 4, !dbg !938
  br i1 %cmp33.not, label %for.cond.1, label %if.then35, !dbg !940

if.then35:                                        ; preds = %if.end20.3, %if.end20.2, %if.end20.1, %if.end20
  %call32.lcssa = phi i32 [ %call32, %if.end20 ], [ %call32.1, %if.end20.1 ], [ %call32.2, %if.end20.2 ], [ %call32.3, %if.end20.3 ], !dbg !937
  %r.0.ph.lcssa85.wide = phi i32 [ 1, %if.end20 ], [ 2, %if.end20.1 ], [ 3, %if.end20.2 ], [ 4, %if.end20.3 ]
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !941, !tbaa !372
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 noundef %r.0.ph.lcssa85.wide, i32 noundef %call32.lcssa) #21, !dbg !943
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !897
  br label %CLEAN_UP.sink.split, !dbg !944

for.cond.1:                                       ; preds = %if.end20, %for.body.1
  call void @llvm.dbg.value(metadata i64 1, metadata !338, metadata !DIExpression()), !dbg !897
  %call13.1 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 256, %struct._IO_FILE* noundef %fp.0), !dbg !928
  %tobool14.not.1 = icmp eq i8* %call13.1, null, !dbg !926
  br i1 %tobool14.not.1, label %if.then44, label %for.body.1, !dbg !926

for.body.1:                                       ; preds = %for.cond.1
  %8 = load i8, i8* %0, align 16, !dbg !930, !tbaa !366
  %cmp17.1 = icmp eq i8 %8, 35, !dbg !933
  br i1 %cmp17.1, label %for.cond.1, label %if.end20.1, !dbg !934, !llvm.loop !935

if.end20.1:                                       ; preds = %for.body.1
  %call32.1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 0), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 1), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 2), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 3)) #20, !dbg !937
  call void @llvm.dbg.value(metadata i32 %call32.1, metadata !340, metadata !DIExpression()), !dbg !897
  %cmp33.not.1 = icmp eq i32 %call32.1, 4, !dbg !938
  br i1 %cmp33.not.1, label %for.cond.2, label %if.then35, !dbg !940

for.cond.2:                                       ; preds = %if.end20.1, %for.body.2
  call void @llvm.dbg.value(metadata i64 2, metadata !338, metadata !DIExpression()), !dbg !897
  %call13.2 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 256, %struct._IO_FILE* noundef %fp.0), !dbg !928
  %tobool14.not.2 = icmp eq i8* %call13.2, null, !dbg !926
  br i1 %tobool14.not.2, label %if.then44, label %for.body.2, !dbg !926

for.body.2:                                       ; preds = %for.cond.2
  %9 = load i8, i8* %0, align 16, !dbg !930, !tbaa !366
  %cmp17.2 = icmp eq i8 %9, 35, !dbg !933
  br i1 %cmp17.2, label %for.cond.2, label %if.end20.2, !dbg !934, !llvm.loop !935

if.end20.2:                                       ; preds = %for.body.2
  %call32.2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 0), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 1), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 2), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 3)) #20, !dbg !937
  call void @llvm.dbg.value(metadata i32 %call32.2, metadata !340, metadata !DIExpression()), !dbg !897
  %cmp33.not.2 = icmp eq i32 %call32.2, 4, !dbg !938
  br i1 %cmp33.not.2, label %for.cond.3, label %if.then35, !dbg !940

for.cond.3:                                       ; preds = %if.end20.2, %for.body.3
  call void @llvm.dbg.value(metadata i64 3, metadata !338, metadata !DIExpression()), !dbg !897
  %call13.3 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 256, %struct._IO_FILE* noundef %fp.0), !dbg !928
  %tobool14.not.3 = icmp eq i8* %call13.3, null, !dbg !926
  br i1 %tobool14.not.3, label %if.then44, label %for.body.3, !dbg !926

for.body.3:                                       ; preds = %for.cond.3
  %10 = load i8, i8* %0, align 16, !dbg !930, !tbaa !366
  %cmp17.3 = icmp eq i8 %10, 35, !dbg !933
  br i1 %cmp17.3, label %for.cond.3, label %if.end20.3, !dbg !934, !llvm.loop !935

if.end20.3:                                       ; preds = %for.body.3
  %call32.3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 0), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 1), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 2), double* noundef nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 3)) #20, !dbg !937
  call void @llvm.dbg.value(metadata i32 %call32.3, metadata !340, metadata !DIExpression()), !dbg !897
  %cmp33.not.3 = icmp eq i32 %call32.3, 4, !dbg !938
  br i1 %cmp33.not.3, label %CLEAN_UP, label %if.then35, !dbg !940

if.then44:                                        ; preds = %for.cond, %for.cond.1, %for.cond.2, %for.cond.3
  %r.1.ph = phi i32 [ 3, %for.cond.3 ], [ 2, %for.cond.2 ], [ 1, %for.cond.1 ], [ 0, %for.cond ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !338, metadata !DIExpression()), !dbg !897
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !945, !tbaa !372
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 noundef %r.1.ph) #21, !dbg !948
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !897
  br label %CLEAN_UP.sink.split, !dbg !949

CLEAN_UP.sink.split:                              ; preds = %if.then35, %if.then44
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !897
  br label %CLEAN_UP, !dbg !950

CLEAN_UP:                                         ; preds = %CLEAN_UP.sink.split, %if.end20.3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.0, metadata !275, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.label(metadata !343), !dbg !952
  %cmp47.not = icmp eq %struct._IO_FILE* %fp.0, null, !dbg !950
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp49.not = icmp eq %struct._IO_FILE* %fp.0, %12
  %or.cond = select i1 %cmp47.not, i1 true, i1 %cmp49.not, !dbg !953
  br i1 %or.cond, label %if.end53, label %if.then51, !dbg !953

if.then51:                                        ; preds = %CLEAN_UP
  %call52 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %fp.0), !dbg !954
  br label %if.end53, !dbg !954

if.end53:                                         ; preds = %if.then9, %if.then, %if.then51, %CLEAN_UP
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), metadata !341, metadata !DIExpression()), !dbg !897
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #20, !dbg !955
  ret [4 x [4 x double]]* @getmatrix.mat, !dbg !956
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare !dbg !957 dso_local noundef i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @__isoc99_sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @putpdb(i8* noundef %fname, %struct.molecule_t* noundef readonly %mol, i8* noundef readonly %options) local_unnamed_addr #0 !dbg !962 {
entry:
  %rname.i = alloca [8 x i8], align 4
  %aname.i = alloca [8 x i8], align 1
  %rid.i = alloca [7 x i8], align 1
  %loptions.i = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %fname, metadata !966, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !967, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i8* %options, metadata !968, metadata !DIExpression()), !dbg !971
  %tobool.not = icmp eq %struct.molecule_t* %mol, null, !dbg !972
  %call = tail call i32 @get_mytaskid() #20, !dbg !971
  %cmp = icmp eq i32 %call, 0, !dbg !971
  br i1 %tobool.not, label %if.then, label %if.end3, !dbg !974

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then1, label %cleanup, !dbg !975

if.then1:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !977, !tbaa !372
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %0) #21, !dbg !980
  br label %cleanup, !dbg !981

if.end3:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !970, metadata !DIExpression()), !dbg !971
  br i1 %cmp, label %if.then6, label %if.end23, !dbg !982

if.then6:                                         ; preds = %if.end3
  %call7 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %fname, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #19, !dbg !983
  %tobool8.not = icmp eq i32 %call7, 0, !dbg !983
  br i1 %tobool8.not, label %if.end.i, label %if.else, !dbg !987

if.else:                                          ; preds = %if.then6
  %call10 = tail call %struct._IO_FILE* @fopen(i8* noundef %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !988
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call10, metadata !969, metadata !DIExpression()), !dbg !971
  %cmp11 = icmp eq %struct._IO_FILE* %call10, null, !dbg !990
  br i1 %cmp11, label %if.end15, label %if.end.i.thread, !dbg !991

if.end.i.thread:                                  ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !969, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !992, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !997, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i8* %options, metadata !998, metadata !DIExpression()) #20, !dbg !1024
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %rname.i, i64 0, i64 0, !dbg !1028
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20, !dbg !1028
  call void @llvm.dbg.declare(metadata [8 x i8]* %rname.i, metadata !1008, metadata !DIExpression()) #20, !dbg !1029
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 0, !dbg !1030
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20, !dbg !1030
  call void @llvm.dbg.declare(metadata [8 x i8]* %aname.i, metadata !1010, metadata !DIExpression()) #20, !dbg !1031
  %4 = getelementptr inbounds [7 x i8], [7 x i8]* %rid.i, i64 0, i64 0, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %4) #20, !dbg !1032
  call void @llvm.dbg.declare(metadata [7 x i8]* %rid.i, metadata !1011, metadata !DIExpression()) #20, !dbg !1033
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 0, !dbg !1034
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #20, !dbg !1034
  call void @llvm.dbg.declare(metadata [256 x i8]* %loptions.i, metadata !1015, metadata !DIExpression()) #20, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1016, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1017, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1018, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1019, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1020, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1021, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1022, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1023, metadata !DIExpression()) #20, !dbg !1024
  br label %if.end4.i, !dbg !1036

if.end15:                                         ; preds = %if.else
  %call13 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* noundef %fname) #20, !dbg !1037
  call void @llvm.dbg.value(metadata i32 undef, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !969, metadata !DIExpression()), !dbg !971
  br label %if.end23, !dbg !1039

if.end.i:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1040, !tbaa !372
  call void @llvm.dbg.value(metadata i32 undef, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !969, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !992, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !997, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i8* %options, metadata !998, metadata !DIExpression()) #20, !dbg !1024
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %rname.i, i64 0, i64 0, !dbg !1028
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20, !dbg !1028
  call void @llvm.dbg.declare(metadata [8 x i8]* %rname.i, metadata !1008, metadata !DIExpression()) #20, !dbg !1029
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 0, !dbg !1030
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #20, !dbg !1030
  call void @llvm.dbg.declare(metadata [8 x i8]* %aname.i, metadata !1010, metadata !DIExpression()) #20, !dbg !1031
  %9 = getelementptr inbounds [7 x i8], [7 x i8]* %rid.i, i64 0, i64 0, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %9) #20, !dbg !1032
  call void @llvm.dbg.declare(metadata [7 x i8]* %rid.i, metadata !1011, metadata !DIExpression()) #20, !dbg !1033
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 0, !dbg !1034
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %10) #20, !dbg !1034
  call void @llvm.dbg.declare(metadata [256 x i8]* %loptions.i, metadata !1015, metadata !DIExpression()) #20, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1016, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1017, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1018, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1019, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1020, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1021, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1022, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1023, metadata !DIExpression()) #20, !dbg !1024
  %tobool1.not.i = icmp eq %struct._IO_FILE* %6, null, !dbg !1041
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end4.i, !dbg !1036

if.then2.i:                                       ; preds = %if.end.i
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1043, !tbaa !372
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %11) #22, !dbg !1045
  br label %fputpdb.exit, !dbg !1046

if.end4.i:                                        ; preds = %if.end.i.thread, %if.end.i
  %fp.0.ph38 = phi %struct._IO_FILE* [ %call10, %if.end.i.thread ], [ %6, %if.end.i ]
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %rname.i, i64 0, i64 0
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 0
  %15 = getelementptr inbounds [7 x i8], [7 x i8]* %rid.i, i64 0, i64 0
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 0
  %cmp.i = icmp eq i8* %options, null, !dbg !1047
  br i1 %cmp.i, label %if.then5.i, label %if.else.i, !dbg !1049

if.then5.i:                                       ; preds = %if.end4.i
  store i8 0, i8* %16, align 16, !dbg !1050, !tbaa !366
  br label %if.end8.i, !dbg !1051

if.else.i:                                        ; preds = %if.end4.i
  %call7.i = call i8* @strncpy(i8* noundef nonnull %16, i8* noundef nonnull %options, i64 noundef 255) #20, !dbg !1052
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 255, !dbg !1054
  store i8 0, i8* %arrayidx.i, align 1, !dbg !1055, !tbaa !366
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then5.i
  %call10.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #19, !dbg !1056
  %cmp11.i = icmp ne i8* %call10.i, null, !dbg !1057
  call void @llvm.dbg.value(metadata i1 %cmp11.i, metadata !1016, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1024
  %call13.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #19, !dbg !1058
  %cmp14.i = icmp ne i8* %call13.i, null, !dbg !1059
  call void @llvm.dbg.value(metadata i1 %cmp14.i, metadata !1017, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1024
  %call17.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #19, !dbg !1060
  %cmp18.i = icmp ne i8* %call17.i, null, !dbg !1061
  call void @llvm.dbg.value(metadata i1 %cmp18.i, metadata !1018, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1024
  %call21.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #19, !dbg !1062
  %cmp22.i = icmp ne i8* %call21.i, null, !dbg !1063
  call void @llvm.dbg.value(metadata i1 %cmp22.i, metadata !1019, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1024
  %call25.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #19, !dbg !1064
  %cmp26.i = icmp ne i8* %call25.i, null, !dbg !1065
  call void @llvm.dbg.value(metadata i1 %cmp26.i, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1024
  %call29.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #19, !dbg !1066
  %cmp30.i = icmp eq i8* %call29.i, null, !dbg !1067
  call void @llvm.dbg.value(metadata i1 %cmp30.i, metadata !1021, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1024
  %call33.i = call i8* @strstr(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #19, !dbg !1068
  %cmp34.i = icmp ne i8* %call33.i, null, !dbg !1069
  call void @llvm.dbg.value(metadata i1 %cmp34.i, metadata !1022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i1 undef, metadata !1021, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i1 undef, metadata !1070, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1082
  call void @llvm.dbg.value(metadata i1 %cmp34.i, metadata !1075, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1076, metadata !DIExpression()) #20, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1077, metadata !DIExpression()) #20, !dbg !1082
  call void @llvm.dbg.value(metadata i32 0, metadata !1080, metadata !DIExpression()) #20, !dbg !1082
  %tobool.not.i.i = select i1 %cmp34.i, i1 true, i1 %cmp30.i, !dbg !1084
  br i1 %tobool.not.i.i, label %if.end.i.i, label %initcid.exit.i, !dbg !1086

if.end.i.i:                                       ; preds = %if.end8.i
  %call.i.i = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #20, !dbg !1087
  %17 = bitcast i8* %call.i.i to %struct.cid_t*, !dbg !1088
  call void @llvm.dbg.value(metadata %struct.cid_t* %17, metadata !1077, metadata !DIExpression()) #20, !dbg !1082
  %cmp.i.i = icmp eq i8* %call.i.i, null, !dbg !1089
  br i1 %cmp.i.i, label %if.then58.thread103.i.i, label %if.end3.i.i, !dbg !1091

if.then58.thread103.i.i:                          ; preds = %if.end.i.i
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1092, !tbaa !372
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %18) #22, !dbg !1094
  call void @llvm.dbg.value(metadata i32 undef, metadata !1080, metadata !DIExpression()) #20, !dbg !1082
  call void @llvm.dbg.label(metadata !1081) #20, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.cid_t* %17, metadata !1096, metadata !DIExpression()) #20, !dbg !1101
  br label %initcid.exit.i, !dbg !1105

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = call noalias dereferenceable_or_null(128) i8* @malloc(i64 noundef 128) #20, !dbg !1106
  %c_cids.i.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %17, i64 0, i32 2, !dbg !1107
  store i8* %call4.i.i, i8** %c_cids.i.i, align 8, !dbg !1108, !tbaa !1109
  %cmp6.i.i = icmp eq i8* %call4.i.i, null, !dbg !1111
  br i1 %cmp6.i.i, label %if.end.i.i.i, label %if.end9.i.i, !dbg !1113

if.end9.i.i:                                      ; preds = %if.end3.i.i
  %c_next.i.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %17, i64 0, i32 0, !dbg !1114
  store i32 65, i32* %c_next.i.i, align 8, !dbg !1115, !tbaa !1116
  %c_last.i.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %17, i64 0, i32 1, !dbg !1117
  store i32 90, i32* %c_last.i.i, align 4, !dbg !1118, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 65, metadata !1078, metadata !DIExpression()) #20, !dbg !1082
  %scevgep.i.i = getelementptr i8, i8* %call4.i.i, i64 65, !dbg !1120
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(26) %scevgep.i.i, i8 0, i64 26, i1 false) #20, !dbg !1122, !tbaa !366
  call void @llvm.dbg.value(metadata i32 undef, metadata !1078, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !1082
  br i1 %cmp34.i, label %if.end19.i.i, label %initcid.exit.i, !dbg !1124

if.end19.i.i:                                     ; preds = %if.end9.i.i
  %m_strands.i.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1079, metadata !DIExpression()) #20, !dbg !1082
  %sp.097.i.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i.i, align 8, !dbg !1129, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.097.i.i, metadata !1079, metadata !DIExpression()) #20, !dbg !1082
  %tobool21.not98.i.i = icmp eq %struct.strand_t* %sp.097.i.i, null, !dbg !1130
  br i1 %tobool21.not98.i.i, label %initcid.exit.i, label %for.body22.i.i, !dbg !1130

for.body22.i.i:                                   ; preds = %if.end19.i.i, %for.inc37.i.i
  %sp.099.i.i = phi %struct.strand_t* [ %sp.0.i.i, %for.inc37.i.i ], [ %sp.097.i.i, %if.end19.i.i ]
  %s_strandname.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.099.i.i, i64 0, i32 0, !dbg !1131
  %20 = load i8*, i8** %s_strandname.i.i, align 8, !dbg !1131, !tbaa !738
  %call23.i.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %20) #19, !dbg !1135
  %cmp24.i.i = icmp eq i64 %call23.i.i, 1, !dbg !1136
  br i1 %cmp24.i.i, label %if.then25.i.i, label %for.inc37.i.i, !dbg !1137

if.then25.i.i:                                    ; preds = %for.body22.i.i
  %21 = load i8, i8* %20, align 1, !dbg !1138, !tbaa !366
  call void @llvm.dbg.value(metadata i8 %21, metadata !1078, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #20, !dbg !1082
  %22 = add i8 %21, -65, !dbg !1140
  %23 = icmp ult i8 %22, 26, !dbg !1140
  br i1 %23, label %if.then31.i.i, label %for.inc37.i.i, !dbg !1140

if.then31.i.i:                                    ; preds = %if.then25.i.i
  call void @llvm.dbg.value(metadata i8 %21, metadata !1078, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #20, !dbg !1082
  %idxprom3395.i.i = zext i8 %21 to i64, !dbg !1142
  %arrayidx34.i.i = getelementptr inbounds i8, i8* %call4.i.i, i64 %idxprom3395.i.i, !dbg !1142
  store i8 1, i8* %arrayidx34.i.i, align 1, !dbg !1143, !tbaa !366
  br label %for.inc37.i.i, !dbg !1142

for.inc37.i.i:                                    ; preds = %if.then31.i.i, %if.then25.i.i, %for.body22.i.i
  %s_next.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.099.i.i, i64 0, i32 4, !dbg !1144
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1079, metadata !DIExpression()) #20, !dbg !1082
  %sp.0.i.i = load %struct.strand_t*, %struct.strand_t** %s_next.i.i, align 8, !dbg !1129, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i.i, metadata !1079, metadata !DIExpression()) #20, !dbg !1082
  %tobool21.not.i.i = icmp eq %struct.strand_t* %sp.0.i.i, null, !dbg !1130
  br i1 %tobool21.not.i.i, label %for.body44.preheader.i.i, label %for.body22.i.i, !dbg !1130, !llvm.loop !1145

for.body44.preheader.i.i:                         ; preds = %for.inc37.i.i
  %.pre.i = load i8, i8* %scevgep.i.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.i = icmp eq i8 %.pre.i, 0, !dbg !1147
  br i1 %tobool49.not.i.i, label %initcid.exit.i, label %for.inc52.i.i, !dbg !1152

for.inc52.i.i:                                    ; preds = %for.body44.preheader.i.i
  store i32 66, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.1.i = getelementptr inbounds i8, i8* %call4.i.i, i64 66, !dbg !1147
  %24 = load i8, i8* %arrayidx48.i.1.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.1.i = icmp eq i8 %24, 0, !dbg !1147
  br i1 %tobool49.not.i.1.i, label %initcid.exit.i, label %for.inc52.i.1.i, !dbg !1152

for.inc52.i.1.i:                                  ; preds = %for.inc52.i.i
  store i32 67, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.2.i = getelementptr inbounds i8, i8* %call4.i.i, i64 67, !dbg !1147
  %25 = load i8, i8* %arrayidx48.i.2.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.2.i = icmp eq i8 %25, 0, !dbg !1147
  br i1 %tobool49.not.i.2.i, label %initcid.exit.i, label %for.inc52.i.2.i, !dbg !1152

for.inc52.i.2.i:                                  ; preds = %for.inc52.i.1.i
  store i32 68, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.3.i = getelementptr inbounds i8, i8* %call4.i.i, i64 68, !dbg !1147
  %26 = load i8, i8* %arrayidx48.i.3.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.3.i = icmp eq i8 %26, 0, !dbg !1147
  br i1 %tobool49.not.i.3.i, label %initcid.exit.i, label %for.inc52.i.3.i, !dbg !1152

for.inc52.i.3.i:                                  ; preds = %for.inc52.i.2.i
  store i32 69, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.4.i = getelementptr inbounds i8, i8* %call4.i.i, i64 69, !dbg !1147
  %27 = load i8, i8* %arrayidx48.i.4.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.4.i = icmp eq i8 %27, 0, !dbg !1147
  br i1 %tobool49.not.i.4.i, label %initcid.exit.i, label %for.inc52.i.4.i, !dbg !1152

for.inc52.i.4.i:                                  ; preds = %for.inc52.i.3.i
  store i32 70, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.5.i = getelementptr inbounds i8, i8* %call4.i.i, i64 70, !dbg !1147
  %28 = load i8, i8* %arrayidx48.i.5.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.5.i = icmp eq i8 %28, 0, !dbg !1147
  br i1 %tobool49.not.i.5.i, label %initcid.exit.i, label %for.inc52.i.5.i, !dbg !1152

for.inc52.i.5.i:                                  ; preds = %for.inc52.i.4.i
  store i32 71, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.6.i = getelementptr inbounds i8, i8* %call4.i.i, i64 71, !dbg !1147
  %29 = load i8, i8* %arrayidx48.i.6.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.6.i = icmp eq i8 %29, 0, !dbg !1147
  br i1 %tobool49.not.i.6.i, label %initcid.exit.i, label %for.inc52.i.6.i, !dbg !1152

for.inc52.i.6.i:                                  ; preds = %for.inc52.i.5.i
  store i32 72, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.7.i = getelementptr inbounds i8, i8* %call4.i.i, i64 72, !dbg !1147
  %30 = load i8, i8* %arrayidx48.i.7.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.7.i = icmp eq i8 %30, 0, !dbg !1147
  br i1 %tobool49.not.i.7.i, label %initcid.exit.i, label %for.inc52.i.7.i, !dbg !1152

for.inc52.i.7.i:                                  ; preds = %for.inc52.i.6.i
  store i32 73, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.8.i = getelementptr inbounds i8, i8* %call4.i.i, i64 73, !dbg !1147
  %31 = load i8, i8* %arrayidx48.i.8.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.8.i = icmp eq i8 %31, 0, !dbg !1147
  br i1 %tobool49.not.i.8.i, label %initcid.exit.i, label %for.inc52.i.8.i, !dbg !1152

for.inc52.i.8.i:                                  ; preds = %for.inc52.i.7.i
  store i32 74, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.9.i = getelementptr inbounds i8, i8* %call4.i.i, i64 74, !dbg !1147
  %32 = load i8, i8* %arrayidx48.i.9.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.9.i = icmp eq i8 %32, 0, !dbg !1147
  br i1 %tobool49.not.i.9.i, label %initcid.exit.i, label %for.inc52.i.9.i, !dbg !1152

for.inc52.i.9.i:                                  ; preds = %for.inc52.i.8.i
  store i32 75, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.10.i = getelementptr inbounds i8, i8* %call4.i.i, i64 75, !dbg !1147
  %33 = load i8, i8* %arrayidx48.i.10.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.10.i = icmp eq i8 %33, 0, !dbg !1147
  br i1 %tobool49.not.i.10.i, label %initcid.exit.i, label %for.inc52.i.10.i, !dbg !1152

for.inc52.i.10.i:                                 ; preds = %for.inc52.i.9.i
  store i32 76, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.11.i = getelementptr inbounds i8, i8* %call4.i.i, i64 76, !dbg !1147
  %34 = load i8, i8* %arrayidx48.i.11.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.11.i = icmp eq i8 %34, 0, !dbg !1147
  br i1 %tobool49.not.i.11.i, label %initcid.exit.i, label %for.inc52.i.11.i, !dbg !1152

for.inc52.i.11.i:                                 ; preds = %for.inc52.i.10.i
  store i32 77, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.12.i = getelementptr inbounds i8, i8* %call4.i.i, i64 77, !dbg !1147
  %35 = load i8, i8* %arrayidx48.i.12.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.12.i = icmp eq i8 %35, 0, !dbg !1147
  br i1 %tobool49.not.i.12.i, label %initcid.exit.i, label %for.inc52.i.12.i, !dbg !1152

for.inc52.i.12.i:                                 ; preds = %for.inc52.i.11.i
  store i32 78, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.13.i = getelementptr inbounds i8, i8* %call4.i.i, i64 78, !dbg !1147
  %36 = load i8, i8* %arrayidx48.i.13.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.13.i = icmp eq i8 %36, 0, !dbg !1147
  br i1 %tobool49.not.i.13.i, label %initcid.exit.i, label %for.inc52.i.13.i, !dbg !1152

for.inc52.i.13.i:                                 ; preds = %for.inc52.i.12.i
  store i32 79, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.14.i = getelementptr inbounds i8, i8* %call4.i.i, i64 79, !dbg !1147
  %37 = load i8, i8* %arrayidx48.i.14.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.14.i = icmp eq i8 %37, 0, !dbg !1147
  br i1 %tobool49.not.i.14.i, label %initcid.exit.i, label %for.inc52.i.14.i, !dbg !1152

for.inc52.i.14.i:                                 ; preds = %for.inc52.i.13.i
  store i32 80, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.15.i = getelementptr inbounds i8, i8* %call4.i.i, i64 80, !dbg !1147
  %38 = load i8, i8* %arrayidx48.i.15.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.15.i = icmp eq i8 %38, 0, !dbg !1147
  br i1 %tobool49.not.i.15.i, label %initcid.exit.i, label %for.inc52.i.15.i, !dbg !1152

for.inc52.i.15.i:                                 ; preds = %for.inc52.i.14.i
  store i32 81, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.16.i = getelementptr inbounds i8, i8* %call4.i.i, i64 81, !dbg !1147
  %39 = load i8, i8* %arrayidx48.i.16.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.16.i = icmp eq i8 %39, 0, !dbg !1147
  br i1 %tobool49.not.i.16.i, label %initcid.exit.i, label %for.inc52.i.16.i, !dbg !1152

for.inc52.i.16.i:                                 ; preds = %for.inc52.i.15.i
  store i32 82, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.17.i = getelementptr inbounds i8, i8* %call4.i.i, i64 82, !dbg !1147
  %40 = load i8, i8* %arrayidx48.i.17.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.17.i = icmp eq i8 %40, 0, !dbg !1147
  br i1 %tobool49.not.i.17.i, label %initcid.exit.i, label %for.inc52.i.17.i, !dbg !1152

for.inc52.i.17.i:                                 ; preds = %for.inc52.i.16.i
  store i32 83, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.18.i = getelementptr inbounds i8, i8* %call4.i.i, i64 83, !dbg !1147
  %41 = load i8, i8* %arrayidx48.i.18.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.18.i = icmp eq i8 %41, 0, !dbg !1147
  br i1 %tobool49.not.i.18.i, label %initcid.exit.i, label %for.inc52.i.18.i, !dbg !1152

for.inc52.i.18.i:                                 ; preds = %for.inc52.i.17.i
  store i32 84, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.19.i = getelementptr inbounds i8, i8* %call4.i.i, i64 84, !dbg !1147
  %42 = load i8, i8* %arrayidx48.i.19.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.19.i = icmp eq i8 %42, 0, !dbg !1147
  br i1 %tobool49.not.i.19.i, label %initcid.exit.i, label %for.inc52.i.19.i, !dbg !1152

for.inc52.i.19.i:                                 ; preds = %for.inc52.i.18.i
  store i32 85, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.20.i = getelementptr inbounds i8, i8* %call4.i.i, i64 85, !dbg !1147
  %43 = load i8, i8* %arrayidx48.i.20.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.20.i = icmp eq i8 %43, 0, !dbg !1147
  br i1 %tobool49.not.i.20.i, label %initcid.exit.i, label %for.inc52.i.20.i, !dbg !1152

for.inc52.i.20.i:                                 ; preds = %for.inc52.i.19.i
  store i32 86, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.21.i = getelementptr inbounds i8, i8* %call4.i.i, i64 86, !dbg !1147
  %44 = load i8, i8* %arrayidx48.i.21.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.21.i = icmp eq i8 %44, 0, !dbg !1147
  br i1 %tobool49.not.i.21.i, label %initcid.exit.i, label %for.inc52.i.21.i, !dbg !1152

for.inc52.i.21.i:                                 ; preds = %for.inc52.i.20.i
  store i32 87, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.22.i = getelementptr inbounds i8, i8* %call4.i.i, i64 87, !dbg !1147
  %45 = load i8, i8* %arrayidx48.i.22.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.22.i = icmp eq i8 %45, 0, !dbg !1147
  br i1 %tobool49.not.i.22.i, label %initcid.exit.i, label %for.inc52.i.22.i, !dbg !1152

for.inc52.i.22.i:                                 ; preds = %for.inc52.i.21.i
  store i32 88, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.23.i = getelementptr inbounds i8, i8* %call4.i.i, i64 88, !dbg !1147
  %46 = load i8, i8* %arrayidx48.i.23.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.23.i = icmp eq i8 %46, 0, !dbg !1147
  br i1 %tobool49.not.i.23.i, label %initcid.exit.i, label %for.inc52.i.23.i, !dbg !1152

for.inc52.i.23.i:                                 ; preds = %for.inc52.i.22.i
  store i32 89, i32* %c_next.i.i, align 8, !dbg !1153, !tbaa !1116
  %arrayidx48.i.24.i = getelementptr inbounds i8, i8* %call4.i.i, i64 89, !dbg !1147
  %47 = load i8, i8* %arrayidx48.i.24.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.24.i = icmp eq i8 %47, 0, !dbg !1147
  br i1 %tobool49.not.i.24.i, label %initcid.exit.i, label %for.inc52.i.24.i, !dbg !1152

for.inc52.i.24.i:                                 ; preds = %for.inc52.i.23.i
  %arrayidx48.i.25.i = getelementptr inbounds i8, i8* %call4.i.i, i64 90, !dbg !1147
  %48 = load i8, i8* %arrayidx48.i.25.i, align 1, !dbg !1147, !tbaa !366
  %tobool49.not.i.25.i = icmp eq i8 %48, 0, !dbg !1147
  %spec.store.select.i = select i1 %tobool49.not.i.25.i, i32 90, i32 91, !dbg !1152
  store i32 %spec.store.select.i, i32* %c_next.i.i, align 8, !dbg !1154
  br label %initcid.exit.i, !dbg !1152

if.end.i.i.i:                                     ; preds = %if.end3.i.i
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1155, !tbaa !372
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %49) #22, !dbg !1157
  call void @llvm.dbg.value(metadata i32 undef, metadata !1080, metadata !DIExpression()) #20, !dbg !1082
  call void @llvm.dbg.label(metadata !1081) #20, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.cid_t* %17, metadata !1096, metadata !DIExpression()) #20, !dbg !1101
  call void @free(i8* noundef nonnull %call.i.i) #20, !dbg !1158
  br label %initcid.exit.i, !dbg !1161

initcid.exit.i:                                   ; preds = %if.end.i.i.i, %for.inc52.i.24.i, %for.inc52.i.23.i, %for.inc52.i.22.i, %for.inc52.i.21.i, %for.inc52.i.20.i, %for.inc52.i.19.i, %for.inc52.i.18.i, %for.inc52.i.17.i, %for.inc52.i.16.i, %for.inc52.i.15.i, %for.inc52.i.14.i, %for.inc52.i.13.i, %for.inc52.i.12.i, %for.inc52.i.11.i, %for.inc52.i.10.i, %for.inc52.i.9.i, %for.inc52.i.8.i, %for.inc52.i.7.i, %for.inc52.i.6.i, %for.inc52.i.5.i, %for.inc52.i.4.i, %for.inc52.i.3.i, %for.inc52.i.2.i, %for.inc52.i.1.i, %for.inc52.i.i, %for.body44.preheader.i.i, %if.end19.i.i, %if.end9.i.i, %if.then58.thread103.i.i, %if.end8.i
  %retval.0.i.i = phi %struct.cid_t* [ null, %if.end8.i ], [ %17, %if.end9.i.i ], [ null, %if.end.i.i.i ], [ null, %if.then58.thread103.i.i ], [ %17, %for.inc52.i.23.i ], [ %17, %for.inc52.i.22.i ], [ %17, %for.inc52.i.21.i ], [ %17, %for.inc52.i.20.i ], [ %17, %for.inc52.i.19.i ], [ %17, %for.inc52.i.18.i ], [ %17, %for.inc52.i.17.i ], [ %17, %for.inc52.i.16.i ], [ %17, %for.inc52.i.15.i ], [ %17, %for.inc52.i.14.i ], [ %17, %for.inc52.i.13.i ], [ %17, %for.inc52.i.12.i ], [ %17, %for.inc52.i.11.i ], [ %17, %for.inc52.i.10.i ], [ %17, %for.inc52.i.9.i ], [ %17, %for.inc52.i.8.i ], [ %17, %for.inc52.i.7.i ], [ %17, %for.inc52.i.6.i ], [ %17, %for.inc52.i.5.i ], [ %17, %for.inc52.i.4.i ], [ %17, %for.inc52.i.3.i ], [ %17, %for.inc52.i.2.i ], [ %17, %for.inc52.i.1.i ], [ %17, %for.inc52.i.i ], [ %17, %for.body44.preheader.i.i ], [ %17, %if.end19.i.i ], [ %17, %for.inc52.i.24.i ], !dbg !1082
  call void @llvm.dbg.value(metadata %struct.cid_t* %retval.0.i.i, metadata !1023, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1003, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1000, metadata !DIExpression()) #20, !dbg !1024
  %m_strands.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1162
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1005, metadata !DIExpression()) #20, !dbg !1024
  %cmp.i286.i = icmp eq %struct.cid_t* %retval.0.i.i, null
  %c_next.i288.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %retval.0.i.i, i64 0, i32 0
  %c_last.i289.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %retval.0.i.i, i64 0, i32 1
  %c_cids.i292.i = getelementptr inbounds %struct.cid_t, %struct.cid_t* %retval.0.i.i, i64 0, i32 2
  %51 = bitcast [8 x i8]* %rname.i to i32*
  %add.ptr.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 1
  %arrayidx6.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 4
  %arrayidx14.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 2
  %arrayidx21.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 3
  %52 = bitcast [8 x i8]* %rname.i to i16*
  %or.cond197.i = select i1 %cmp18.i, i1 true, i1 %cmp22.i
  %or.cond197.not.i = xor i1 %or.cond197.i, true
  %or.cond198.i = select i1 %or.cond197.not.i, i1 true, i1 %cmp11.i
  %or.cond199.i = select i1 %or.cond198.i, i1 true, i1 %cmp14.i
  %sp.0698.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1164, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0698.i, metadata !1005, metadata !DIExpression()) #20, !dbg !1024
  %tobool40.not699.i = icmp eq %struct.strand_t* %sp.0698.i, null, !dbg !1165
  br i1 %tobool40.not699.i, label %for.end176.i, label %for.body.i, !dbg !1165

for.body.i:                                       ; preds = %initcid.exit.i, %for.end173.i
  %sp.0702.i = phi %struct.strand_t* [ %sp.0.i, %for.end173.i ], [ %sp.0698.i, %initcid.exit.i ]
  %tr.0701.i = phi i32 [ %tr.1.lcssa.i, %for.end173.i ], [ 0, %initcid.exit.i ]
  %ta.0700.i = phi i32 [ %ta.1.lcssa.i, %for.end173.i ], [ 0, %initcid.exit.i ]
  call void @llvm.dbg.value(metadata i32 %tr.0701.i, metadata !1000, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %ta.0700.i, metadata !1003, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.cid_t* %retval.0.i.i, metadata !1166, metadata !DIExpression()) #20, !dbg !1175
  call void @llvm.dbg.value(metadata i1 undef, metadata !1171, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1175
  call void @llvm.dbg.value(metadata i1 %cmp34.i, metadata !1172, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1175
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0702.i, metadata !1173, metadata !DIExpression()) #20, !dbg !1175
  br i1 %tobool.not.i.i, label %if.end.i287.i, label %nextcid.exit.i, !dbg !1179

if.end.i287.i:                                    ; preds = %for.body.i
  br i1 %cmp.i286.i, label %if.then1.i.i, label %if.else.i.i, !dbg !1180

if.then1.i.i:                                     ; preds = %if.end.i287.i
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1181, !tbaa !372
  %54 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %53) #22, !dbg !1184
  br label %nextcid.exit.i, !dbg !1185

if.else.i.i:                                      ; preds = %if.end.i287.i
  %55 = load i32, i32* %c_next.i288.i, align 8, !dbg !1186, !tbaa !1116
  %56 = load i32, i32* %c_last.i289.i, align 4, !dbg !1188, !tbaa !1119
  %cmp2.i.i = icmp sgt i32 %55, %56, !dbg !1189
  br i1 %cmp2.i.i, label %nextcid.exit.i, label %if.else4.i.i, !dbg !1190

if.else4.i.i:                                     ; preds = %if.else.i.i
  br i1 %cmp34.i, label %if.then6.i.i, label %if.else34.i.i, !dbg !1191

if.then6.i.i:                                     ; preds = %if.else4.i.i
  %s_strandname.i290.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0702.i, i64 0, i32 0, !dbg !1192
  %57 = load i8*, i8** %s_strandname.i290.i, align 8, !dbg !1192, !tbaa !738
  %call7.i.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #19, !dbg !1196
  %cmp8.i.i = icmp eq i64 %call7.i.i, 1, !dbg !1197
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end17.i.i, !dbg !1198

if.then9.i.i:                                     ; preds = %if.then6.i.i
  %58 = load i8, i8* %57, align 1, !dbg !1199, !tbaa !366
  call void @llvm.dbg.value(metadata i8 %58, metadata !1174, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #20, !dbg !1175
  %59 = add i8 %58, -65, !dbg !1201
  %60 = icmp ult i8 %59, 26, !dbg !1201
  br i1 %60, label %if.then15.i291.i, label %if.end17.i.i, !dbg !1201

if.then15.i291.i:                                 ; preds = %if.then9.i.i
  %conv58.i.i = zext i8 %58 to i32, !dbg !1199
  call void @llvm.dbg.value(metadata i32 %conv58.i.i, metadata !1174, metadata !DIExpression()) #20, !dbg !1175
  br label %nextcid.exit.i, !dbg !1203

if.end17.i.i:                                     ; preds = %if.then9.i.i, %if.then6.i.i
  call void @llvm.dbg.value(metadata i32 %55, metadata !1174, metadata !DIExpression()) #20, !dbg !1175
  %61 = load i8*, i8** %c_cids.i292.i, align 8, !dbg !1204, !tbaa !1109
  %idxprom.i.i = sext i32 %55 to i64, !dbg !1205
  %arrayidx.i.i = getelementptr inbounds i8, i8* %61, i64 %idxprom.i.i, !dbg !1205
  store i8 1, i8* %arrayidx.i.i, align 1, !dbg !1206, !tbaa !366
  %62 = load i32, i32* %c_next.i288.i, align 8, !dbg !1207, !tbaa !1116
  %63 = load i32, i32* %c_last.i289.i, align 4, !tbaa !1119
  %64 = sext i32 %62 to i64, !dbg !1207
  %smax.i.i = call i32 @llvm.smax.i32(i32 %62, i32 %63) #20, !dbg !1207
  %wide.trip.count.i.i = sext i32 %smax.i.i to i64, !dbg !1209
  br label %for.cond.i.i, !dbg !1207

for.cond.i.i:                                     ; preds = %for.body.i.i, %if.end17.i.i
  %indvars.iv.i293.i = phi i64 [ %indvars.iv.next.i294.i, %for.body.i.i ], [ %64, %if.end17.i.i ]
  %indvars.iv.next.i294.i = add nsw i64 %indvars.iv.i293.i, 1, !dbg !1211
  %65 = trunc i64 %indvars.iv.next.i294.i to i32, !dbg !1211
  store i32 %65, i32* %c_next.i288.i, align 8, !dbg !1211, !tbaa !1116
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i293.i, %wide.trip.count.i.i, !dbg !1209
  br i1 %exitcond.not.i.i, label %nextcid.exit.i, label %for.body.i.i, !dbg !1212

for.body.i.i:                                     ; preds = %for.cond.i.i
  %66 = load i8*, i8** %c_cids.i292.i, align 8, !dbg !1213, !tbaa !1109
  %arrayidx28.i.i = getelementptr inbounds i8, i8* %66, i64 %indvars.iv.next.i294.i, !dbg !1216
  %67 = load i8, i8* %arrayidx28.i.i, align 1, !dbg !1216, !tbaa !366
  %tobool29.not.i.i = icmp eq i8 %67, 0, !dbg !1216
  br i1 %tobool29.not.i.i, label %nextcid.exit.i, label %for.cond.i.i, !dbg !1217, !llvm.loop !1218

if.else34.i.i:                                    ; preds = %if.else4.i.i
  call void @llvm.dbg.value(metadata i32 %55, metadata !1174, metadata !DIExpression()) #20, !dbg !1175
  %inc37.i.i = add nsw i32 %55, 1, !dbg !1220
  store i32 %inc37.i.i, i32* %c_next.i288.i, align 8, !dbg !1220, !tbaa !1116
  br label %nextcid.exit.i, !dbg !1222

nextcid.exit.i:                                   ; preds = %for.body.i.i, %for.cond.i.i, %if.else34.i.i, %if.then15.i291.i, %if.else.i.i, %if.then1.i.i, %for.body.i
  %retval.0.i295.i = phi i32 [ 32, %if.then1.i.i ], [ %conv58.i.i, %if.then15.i291.i ], [ %55, %if.else34.i.i ], [ 32, %for.body.i ], [ 32, %if.else.i.i ], [ %55, %for.cond.i.i ], [ %55, %for.body.i.i ], !dbg !1175
  call void @llvm.dbg.value(metadata i32 %retval.0.i295.i, metadata !1004, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !999, metadata !DIExpression()) #20, !dbg !1024
  %s_nresidues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0702.i, i64 0, i32 5
  %s_residues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0702.i, i64 0, i32 7
  %sext.i = shl i32 %retval.0.i295.i, 24
  %conv112.i = ashr exact i32 %sext.i, 24
  call void @llvm.dbg.value(metadata i32 %tr.0701.i, metadata !1000, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %ta.0700.i, metadata !1003, metadata !DIExpression()) #20, !dbg !1024
  %68 = load i32, i32* %s_nresidues.i, align 8, !dbg !1223, !tbaa !1226
  %cmp44692.i = icmp sgt i32 %68, 0, !dbg !1227
  br i1 %cmp44692.i, label %for.body46.i, label %for.end173.i, !dbg !1228

for.body46.i:                                     ; preds = %nextcid.exit.i, %for.inc170.i
  %indvars.iv705.i = phi i64 [ %indvars.iv.next706.i, %for.inc170.i ], [ 0, %nextcid.exit.i ]
  %tr.1694.i = phi i32 [ %inc172.i, %for.inc170.i ], [ %tr.0701.i, %nextcid.exit.i ]
  %ta.1693.i = phi i32 [ %ta.2.lcssa.i, %for.inc170.i ], [ %ta.0700.i, %nextcid.exit.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv705.i, metadata !999, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %tr.1694.i, metadata !1000, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %ta.1693.i, metadata !1003, metadata !DIExpression()) #20, !dbg !1024
  %69 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i, align 8, !dbg !1229, !tbaa !752
  %arrayidx47.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %69, i64 %indvars.iv705.i, !dbg !1231
  %70 = load %struct.residue_t*, %struct.residue_t** %arrayidx47.i, align 8, !dbg !1231, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %70, metadata !1006, metadata !DIExpression()) #20, !dbg !1024
  %r_resid.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %70, i64 0, i32 5, !dbg !1232
  %71 = load i8*, i8** %r_resid.i, align 8, !dbg !1232, !tbaa !709
  %tobool49.not.i = icmp eq i8* %71, null, !dbg !1233
  %spec.select283.i = select i1 %tobool49.not.i, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), i8* %71, !dbg !1233
  %call51.i = call i8* @strcpy(i8* noundef nonnull %15, i8* noundef nonnull dereferenceable(1) %spec.select283.i) #20, !dbg !1234
  %.idx.i = getelementptr %struct.residue_t, %struct.residue_t* %70, i64 0, i32 4, !dbg !1235
  %.idx.val.i = load i8*, i8** %.idx.i, align 8, !dbg !1235, !tbaa !706
  br i1 %cmp18.i, label %if.then53.i, label %if.else55.i, !dbg !1237

if.then53.i:                                      ; preds = %for.body46.i
  call void @llvm.dbg.value(metadata i8* %7, metadata !1238, metadata !DIExpression()) #20, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1243, metadata !DIExpression()) #20, !dbg !1244
  %call.i296.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %13, i8* noundef nonnull dereferenceable(1) %.idx.val.i) #20, !dbg !1246
  %lhsv.i = load i32, i32* %51, align 4, !dbg !1247
  switch i32 %lhsv.i, label %if.end22.i.i [
    i32 4281671, label %if.end.i298.thread.i
    i32 4539457, label %if.then5.i.i
    i32 5851220, label %if.then10.i.i
    i32 5527875, label %if.then15.i300.i
    i32 4280917, label %if.then20.i.i
  ], !dbg !1249

if.end.i298.thread.i:                             ; preds = %if.then53.i
  store i32 4661280, i32* %51, align 4, !dbg !1250
  br label %if.end22.i.i, !dbg !1251

if.then5.i.i:                                     ; preds = %if.then53.i
  store i32 4268064, i32* %51, align 4, !dbg !1252
  br label %if.end22.i.i, !dbg !1252

if.then10.i.i:                                    ; preds = %if.then53.i
  store i32 5513248, i32* %51, align 4, !dbg !1254
  br label %if.end22.i.i, !dbg !1254

if.then15.i300.i:                                 ; preds = %if.then53.i
  store i32 4399136, i32* %51, align 4, !dbg !1256
  br label %if.end22.i.i, !dbg !1256

if.then20.i.i:                                    ; preds = %if.then53.i
  store i32 5578784, i32* %51, align 4, !dbg !1258
  br label %if.end22.i.i, !dbg !1258

if.end22.i.i:                                     ; preds = %if.then20.i.i, %if.then15.i300.i, %if.then10.i.i, %if.then5.i.i, %if.end.i298.thread.i, %if.then53.i
  %lhsv566754.i = phi i32 [ 5578784, %if.then20.i.i ], [ 4399136, %if.then15.i300.i ], [ 5513248, %if.then10.i.i ], [ 4661280, %if.end.i298.thread.i ], [ 4268064, %if.then5.i.i ], [ %lhsv.i, %if.then53.i ]
  %bcmp558.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #20, !dbg !1260
  %tobool24.not.i.i = icmp eq i32 %bcmp558.i, 0, !dbg !1260
  br i1 %tobool24.not.i.i, label %if.then25.i303.i, label %if.end27.i.i, !dbg !1262

if.then25.i303.i:                                 ; preds = %if.end22.i.i
  store i32 4661280, i32* %51, align 4, !dbg !1263
  br label %if.end27.i.i, !dbg !1263

if.end27.i.i:                                     ; preds = %if.then25.i303.i, %if.end22.i.i
  %lhsv566753.i = phi i32 [ 4661280, %if.then25.i303.i ], [ %lhsv566754.i, %if.end22.i.i ]
  %bcmp559.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #20, !dbg !1264
  %tobool29.not.i304.i = icmp eq i32 %bcmp559.i, 0, !dbg !1264
  br i1 %tobool29.not.i304.i, label %if.then30.i.i, label %if.end32.i.i, !dbg !1266

if.then30.i.i:                                    ; preds = %if.end27.i.i
  store i32 4268064, i32* %51, align 4, !dbg !1267
  br label %if.end32.i.i, !dbg !1267

if.end32.i.i:                                     ; preds = %if.then30.i.i, %if.end27.i.i
  %lhsv566752.i = phi i32 [ 4268064, %if.then30.i.i ], [ %lhsv566753.i, %if.end27.i.i ]
  %bcmp560.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #20, !dbg !1268
  %tobool34.not.i.i = icmp eq i32 %bcmp560.i, 0, !dbg !1268
  br i1 %tobool34.not.i.i, label %if.then35.i.i, label %if.end37.i.i, !dbg !1270

if.then35.i.i:                                    ; preds = %if.end32.i.i
  store i32 5513248, i32* %51, align 4, !dbg !1271
  br label %if.end37.i.i, !dbg !1271

if.end37.i.i:                                     ; preds = %if.then35.i.i, %if.end32.i.i
  %lhsv566751.i = phi i32 [ 5513248, %if.then35.i.i ], [ %lhsv566752.i, %if.end32.i.i ]
  %bcmp561.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #20, !dbg !1272
  %tobool39.not.i.i = icmp eq i32 %bcmp561.i, 0, !dbg !1272
  br i1 %tobool39.not.i.i, label %if.then40.i.i, label %if.end42.i.i, !dbg !1274

if.then40.i.i:                                    ; preds = %if.end37.i.i
  store i32 4399136, i32* %51, align 4, !dbg !1275
  br label %if.end42.i.i, !dbg !1275

if.end42.i.i:                                     ; preds = %if.then40.i.i, %if.end37.i.i
  %lhsv566750.i = phi i32 [ 4399136, %if.then40.i.i ], [ %lhsv566751.i, %if.end37.i.i ]
  %bcmp562.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #20, !dbg !1276
  %tobool44.not.i.i = icmp eq i32 %bcmp562.i, 0, !dbg !1276
  br i1 %tobool44.not.i.i, label %if.then45.i.i, label %if.end47.i.i, !dbg !1278

if.then45.i.i:                                    ; preds = %if.end42.i.i
  store i32 4661280, i32* %51, align 4, !dbg !1279
  br label %if.end47.i.i, !dbg !1279

if.end47.i.i:                                     ; preds = %if.then45.i.i, %if.end42.i.i
  %lhsv566749.i = phi i32 [ 4661280, %if.then45.i.i ], [ %lhsv566750.i, %if.end42.i.i ]
  %bcmp563.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #20, !dbg !1280
  %tobool49.not.i305.i = icmp eq i32 %bcmp563.i, 0, !dbg !1280
  br i1 %tobool49.not.i305.i, label %if.then50.i.i, label %if.end52.i.i, !dbg !1282

if.then50.i.i:                                    ; preds = %if.end47.i.i
  store i32 4268064, i32* %51, align 4, !dbg !1283
  br label %if.end52.i.i, !dbg !1283

if.end52.i.i:                                     ; preds = %if.then50.i.i, %if.end47.i.i
  %lhsv566748.i = phi i32 [ 4268064, %if.then50.i.i ], [ %lhsv566749.i, %if.end47.i.i ]
  %bcmp564.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #20, !dbg !1284
  %tobool54.not.i.i = icmp eq i32 %bcmp564.i, 0, !dbg !1284
  br i1 %tobool54.not.i.i, label %if.then55.i.i, label %if.end57.i.i, !dbg !1286

if.then55.i.i:                                    ; preds = %if.end52.i.i
  store i32 5578784, i32* %51, align 4, !dbg !1287
  br label %if.end57.i.i, !dbg !1287

if.end57.i.i:                                     ; preds = %if.then55.i.i, %if.end52.i.i
  %lhsv566747.i = phi i32 [ 5578784, %if.then55.i.i ], [ %lhsv566748.i, %if.end52.i.i ]
  %bcmp565.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #20, !dbg !1288
  %tobool59.not.i.i = icmp eq i32 %bcmp565.i, 0, !dbg !1288
  br i1 %tobool59.not.i.i, label %if.end62.i.thread.i, label %if.end62.i.i, !dbg !1290

if.end62.i.thread.i:                              ; preds = %if.end57.i.i
  store i32 4399136, i32* %51, align 4, !dbg !1291
  br label %if.end63.i, !dbg !1292

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
  ], !dbg !1292

if.then65.i.i:                                    ; preds = %if.end62.i.i
  store i32 4661280, i32* %51, align 4, !dbg !1293
  br label %if.end63.i, !dbg !1293

if.then70.i.i:                                    ; preds = %if.end62.i.i
  store i32 4268064, i32* %51, align 4, !dbg !1295
  br label %if.end63.i, !dbg !1295

if.then75.i.i:                                    ; preds = %if.end62.i.i
  store i32 5513248, i32* %51, align 4, !dbg !1297
  br label %if.end63.i, !dbg !1297

if.then80.i.i:                                    ; preds = %if.end62.i.i
  store i32 4399136, i32* %51, align 4, !dbg !1299
  br label %if.end63.i, !dbg !1299

if.then85.i.i:                                    ; preds = %if.end62.i.i
  store i32 4661280, i32* %51, align 4, !dbg !1301
  br label %if.end63.i, !dbg !1301

if.then90.i.i:                                    ; preds = %if.end62.i.i
  store i32 4268064, i32* %51, align 4, !dbg !1303
  br label %if.end63.i, !dbg !1303

if.then95.i.i:                                    ; preds = %if.end62.i.i
  store i32 5578784, i32* %51, align 4, !dbg !1305
  br label %if.end63.i, !dbg !1305

if.then100.i.i:                                   ; preds = %if.end62.i.i
  store i32 4399136, i32* %51, align 4, !dbg !1307
  br label %if.end63.i, !dbg !1307

if.then105.i.i:                                   ; preds = %if.end62.i.i
  store i32 4661280, i32* %51, align 4, !dbg !1309
  br label %if.end63.i, !dbg !1309

if.then110.i.i:                                   ; preds = %if.end62.i.i
  store i32 4268064, i32* %51, align 4, !dbg !1311
  br label %if.end63.i, !dbg !1311

if.then115.i.i:                                   ; preds = %if.end62.i.i
  store i32 5513248, i32* %51, align 4, !dbg !1313
  br label %if.end63.i, !dbg !1313

if.then120.i.i:                                   ; preds = %if.end62.i.i
  store i32 4399136, i32* %51, align 4, !dbg !1315
  br label %if.end63.i, !dbg !1315

if.then125.i.i:                                   ; preds = %if.end62.i.i
  store i32 4661280, i32* %51, align 4, !dbg !1317
  br label %if.end63.i, !dbg !1317

if.then130.i.i:                                   ; preds = %if.end62.i.i
  store i32 4268064, i32* %51, align 4, !dbg !1319
  br label %if.end63.i, !dbg !1319

if.then135.i.i:                                   ; preds = %if.end62.i.i
  store i32 5578784, i32* %51, align 4, !dbg !1321
  br label %if.end63.i, !dbg !1321

if.end142.i.thread.i:                             ; preds = %if.end62.i.i
  store i32 4399136, i32* %51, align 4, !dbg !1323
  br label %if.end63.i, !dbg !1325

if.then145.i.i:                                   ; preds = %if.end62.i.i
  store i32 5458248, i32* %51, align 4, !dbg !1326
  br label %if.end63.i, !dbg !1326

if.then155.i.i:                                   ; preds = %if.end62.i.i
  store i32 5458248, i32* %51, align 4, !dbg !1328
  br label %if.end63.i, !dbg !1328

if.then160.i.i:                                   ; preds = %if.end62.i.i
  store i32 5462339, i32* %51, align 4, !dbg !1330
  br label %if.end63.i, !dbg !1330

if.then165.i.i:                                   ; preds = %if.end62.i.i
  store i32 5264193, i32* %51, align 4, !dbg !1332
  br label %if.end63.i, !dbg !1332

if.then170.i.i:                                   ; preds = %if.end62.i.i
  store i32 5590087, i32* %51, align 4, !dbg !1334
  br label %if.end63.i, !dbg !1334

if.else55.i:                                      ; preds = %for.body46.i
  br i1 %cmp22.i, label %if.then57.i, label %if.else59.i, !dbg !1336

if.then57.i:                                      ; preds = %if.else55.i
  call void @llvm.dbg.value(metadata i8* %7, metadata !1337, metadata !DIExpression()) #20, !dbg !1341
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1340, metadata !DIExpression()) #20, !dbg !1341
  %call.i306.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %13, i8* noundef nonnull dereferenceable(1) %.idx.val.i) #20, !dbg !1344
  %lhsv634.i = load i32, i32* %51, align 4, !dbg !1345
  switch i32 %lhsv634.i, label %if.end22.i328.i [
    i32 4281671, label %if.end.i312.thread.i
    i32 4539457, label %if.then5.i313.i
    i32 5851220, label %if.then10.i317.i
    i32 5527875, label %if.then15.i321.i
    i32 4280917, label %if.then20.i325.i
  ], !dbg !1347

if.end.i312.thread.i:                             ; preds = %if.then57.i
  store i32 4661280, i32* %51, align 4, !dbg !1348
  br label %if.end22.i328.i, !dbg !1349

if.then5.i313.i:                                  ; preds = %if.then57.i
  store i32 4268064, i32* %51, align 4, !dbg !1350
  br label %if.end22.i328.i, !dbg !1350

if.then10.i317.i:                                 ; preds = %if.then57.i
  store i32 5513248, i32* %51, align 4, !dbg !1352
  br label %if.end22.i328.i, !dbg !1352

if.then15.i321.i:                                 ; preds = %if.then57.i
  store i32 4399136, i32* %51, align 4, !dbg !1354
  br label %if.end22.i328.i, !dbg !1354

if.then20.i325.i:                                 ; preds = %if.then57.i
  store i32 5578784, i32* %51, align 4, !dbg !1356
  br label %if.end22.i328.i, !dbg !1356

if.end22.i328.i:                                  ; preds = %if.then20.i325.i, %if.then15.i321.i, %if.then10.i317.i, %if.then5.i313.i, %if.end.i312.thread.i, %if.then57.i
  %lhsv644720.i = phi i32 [ 5578784, %if.then20.i325.i ], [ 4399136, %if.then15.i321.i ], [ 5513248, %if.then10.i317.i ], [ 4661280, %if.end.i312.thread.i ], [ 4268064, %if.then5.i313.i ], [ %lhsv634.i, %if.then57.i ]
  %bcmp515.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #20, !dbg !1358
  %tobool24.not.i327.i = icmp eq i32 %bcmp515.i, 0, !dbg !1358
  br i1 %tobool24.not.i327.i, label %if.then25.i329.i, label %if.end27.i332.i, !dbg !1360

if.then25.i329.i:                                 ; preds = %if.end22.i328.i
  store i32 4670496, i32* %51, align 4, !dbg !1361
  br label %if.end27.i332.i, !dbg !1361

if.end27.i332.i:                                  ; preds = %if.then25.i329.i, %if.end22.i328.i
  %lhsv644719.i = phi i32 [ 4670496, %if.then25.i329.i ], [ %lhsv644720.i, %if.end22.i328.i ]
  %bcmp516.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #20, !dbg !1362
  %tobool29.not.i331.i = icmp eq i32 %bcmp516.i, 0, !dbg !1362
  br i1 %tobool29.not.i331.i, label %if.then30.i333.i, label %if.end32.i336.i, !dbg !1364

if.then30.i333.i:                                 ; preds = %if.end27.i332.i
  store i32 4277280, i32* %51, align 4, !dbg !1365
  br label %if.end32.i336.i, !dbg !1365

if.end32.i336.i:                                  ; preds = %if.then30.i333.i, %if.end27.i332.i
  %lhsv644718.i = phi i32 [ 4277280, %if.then30.i333.i ], [ %lhsv644719.i, %if.end27.i332.i ]
  %bcmp517.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #20, !dbg !1366
  %tobool34.not.i335.i = icmp eq i32 %bcmp517.i, 0, !dbg !1366
  br i1 %tobool34.not.i335.i, label %if.then35.i337.i, label %if.end37.i340.i, !dbg !1368

if.then35.i337.i:                                 ; preds = %if.end32.i336.i
  store i32 5522464, i32* %51, align 4, !dbg !1369
  br label %if.end37.i340.i, !dbg !1369

if.end37.i340.i:                                  ; preds = %if.then35.i337.i, %if.end32.i336.i
  %lhsv644717.i = phi i32 [ 5522464, %if.then35.i337.i ], [ %lhsv644718.i, %if.end32.i336.i ]
  %bcmp518.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #20, !dbg !1370
  %tobool39.not.i339.i = icmp eq i32 %bcmp518.i, 0, !dbg !1370
  br i1 %tobool39.not.i339.i, label %if.then40.i341.i, label %if.end42.i344.i, !dbg !1372

if.then40.i341.i:                                 ; preds = %if.end37.i340.i
  store i32 4408352, i32* %51, align 4, !dbg !1373
  br label %if.end42.i344.i, !dbg !1373

if.end42.i344.i:                                  ; preds = %if.then40.i341.i, %if.end37.i340.i
  %lhsv644716.i = phi i32 [ 4408352, %if.then40.i341.i ], [ %lhsv644717.i, %if.end37.i340.i ]
  %bcmp519.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #20, !dbg !1374
  %tobool44.not.i343.i = icmp eq i32 %bcmp519.i, 0, !dbg !1374
  br i1 %tobool44.not.i343.i, label %if.then45.i345.i, label %if.end47.i348.i, !dbg !1376

if.then45.i345.i:                                 ; preds = %if.end42.i344.i
  store i32 4674080, i32* %51, align 4, !dbg !1377
  br label %if.end47.i348.i, !dbg !1377

if.end47.i348.i:                                  ; preds = %if.then45.i345.i, %if.end42.i344.i
  %lhsv644715.i = phi i32 [ 4674080, %if.then45.i345.i ], [ %lhsv644716.i, %if.end42.i344.i ]
  %bcmp520.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #20, !dbg !1378
  %tobool49.not.i347.i = icmp eq i32 %bcmp520.i, 0, !dbg !1378
  br i1 %tobool49.not.i347.i, label %if.then50.i349.i, label %if.end52.i352.i, !dbg !1380

if.then50.i349.i:                                 ; preds = %if.end47.i348.i
  store i32 4280864, i32* %51, align 4, !dbg !1381
  br label %if.end52.i352.i, !dbg !1381

if.end52.i352.i:                                  ; preds = %if.then50.i349.i, %if.end47.i348.i
  %lhsv644714.i = phi i32 [ 4280864, %if.then50.i349.i ], [ %lhsv644715.i, %if.end47.i348.i ]
  %bcmp521.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #20, !dbg !1382
  %tobool54.not.i351.i = icmp eq i32 %bcmp521.i, 0, !dbg !1382
  br i1 %tobool54.not.i351.i, label %if.then55.i353.i, label %if.end57.i356.i, !dbg !1384

if.then55.i353.i:                                 ; preds = %if.end52.i352.i
  store i32 5591584, i32* %51, align 4, !dbg !1385
  br label %if.end57.i356.i, !dbg !1385

if.end57.i356.i:                                  ; preds = %if.then55.i353.i, %if.end52.i352.i
  %lhsv644713.i = phi i32 [ 5591584, %if.then55.i353.i ], [ %lhsv644714.i, %if.end52.i352.i ]
  %bcmp522.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %13, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #20, !dbg !1386
  %tobool59.not.i355.i = icmp eq i32 %bcmp522.i, 0, !dbg !1386
  br i1 %tobool59.not.i355.i, label %if.end62.i360.thread.i, label %if.end62.i360.i, !dbg !1388

if.end62.i360.thread.i:                           ; preds = %if.end57.i356.i
  store i32 4411936, i32* %51, align 4, !dbg !1389
  br label %if.end63.i, !dbg !1390

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
  ], !dbg !1390

if.then65.i361.i:                                 ; preds = %if.end62.i360.i
  store i32 4670496, i32* %51, align 4, !dbg !1391
  br label %if.end63.i, !dbg !1391

if.then70.i365.i:                                 ; preds = %if.end62.i360.i
  store i32 4277280, i32* %51, align 4, !dbg !1393
  br label %if.end63.i, !dbg !1393

if.then75.i369.i:                                 ; preds = %if.end62.i360.i
  store i32 5522464, i32* %51, align 4, !dbg !1395
  br label %if.end63.i, !dbg !1395

if.then80.i373.i:                                 ; preds = %if.end62.i360.i
  store i32 4408352, i32* %51, align 4, !dbg !1397
  br label %if.end63.i, !dbg !1397

if.then85.i377.i:                                 ; preds = %if.end62.i360.i
  store i32 4674080, i32* %51, align 4, !dbg !1399
  br label %if.end63.i, !dbg !1399

if.then90.i381.i:                                 ; preds = %if.end62.i360.i
  store i32 4280864, i32* %51, align 4, !dbg !1401
  br label %if.end63.i, !dbg !1401

if.then95.i385.i:                                 ; preds = %if.end62.i360.i
  store i32 5591584, i32* %51, align 4, !dbg !1403
  br label %if.end63.i, !dbg !1403

if.then100.i389.i:                                ; preds = %if.end62.i360.i
  store i32 4411936, i32* %51, align 4, !dbg !1405
  br label %if.end63.i, !dbg !1405

if.then105.i393.i:                                ; preds = %if.end62.i360.i
  store i32 4670496, i32* %51, align 4, !dbg !1407
  br label %if.end63.i, !dbg !1407

if.then110.i397.i:                                ; preds = %if.end62.i360.i
  store i32 4277280, i32* %51, align 4, !dbg !1409
  br label %if.end63.i, !dbg !1409

if.then115.i401.i:                                ; preds = %if.end62.i360.i
  store i32 5522464, i32* %51, align 4, !dbg !1411
  br label %if.end63.i, !dbg !1411

if.then120.i405.i:                                ; preds = %if.end62.i360.i
  store i32 4408352, i32* %51, align 4, !dbg !1413
  br label %if.end63.i, !dbg !1413

if.then125.i409.i:                                ; preds = %if.end62.i360.i
  store i32 4674080, i32* %51, align 4, !dbg !1415
  br label %if.end63.i, !dbg !1415

if.then130.i413.i:                                ; preds = %if.end62.i360.i
  store i32 4280864, i32* %51, align 4, !dbg !1417
  br label %if.end63.i, !dbg !1417

if.then135.i417.i:                                ; preds = %if.end62.i360.i
  store i32 5591584, i32* %51, align 4, !dbg !1419
  br label %if.end63.i, !dbg !1419

if.end142.i424.thread.i:                          ; preds = %if.end62.i360.i
  store i32 4411936, i32* %51, align 4, !dbg !1421
  br label %if.end63.i, !dbg !1423

if.then145.i425.i:                                ; preds = %if.end62.i360.i
  store i32 5458248, i32* %51, align 4, !dbg !1424
  br label %if.end63.i, !dbg !1424

if.then155.i433.i:                                ; preds = %if.end62.i360.i
  store i32 5458248, i32* %51, align 4, !dbg !1426
  br label %if.end63.i, !dbg !1426

if.then160.i437.i:                                ; preds = %if.end62.i360.i
  store i32 5462339, i32* %51, align 4, !dbg !1428
  br label %if.end63.i, !dbg !1428

if.then165.i441.i:                                ; preds = %if.end62.i360.i
  store i32 5264193, i32* %51, align 4, !dbg !1430
  br label %if.end63.i, !dbg !1430

if.then170.i445.i:                                ; preds = %if.end62.i360.i
  store i32 5590087, i32* %51, align 4, !dbg !1432
  br label %if.end63.i, !dbg !1432

if.else59.i:                                      ; preds = %if.else55.i
  %call61.i = call i8* @strcpy(i8* noundef nonnull %13, i8* noundef nonnull dereferenceable(1) %.idx.val.i) #20, !dbg !1434
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else59.i, %if.then170.i445.i, %if.then165.i441.i, %if.then160.i437.i, %if.then155.i433.i, %if.then145.i425.i, %if.end142.i424.thread.i, %if.then135.i417.i, %if.then130.i413.i, %if.then125.i409.i, %if.then120.i405.i, %if.then115.i401.i, %if.then110.i397.i, %if.then105.i393.i, %if.then100.i389.i, %if.then95.i385.i, %if.then90.i381.i, %if.then85.i377.i, %if.then80.i373.i, %if.then75.i369.i, %if.then70.i365.i, %if.then65.i361.i, %if.end62.i360.i, %if.end62.i360.thread.i, %if.then170.i.i, %if.then165.i.i, %if.then160.i.i, %if.then155.i.i, %if.then145.i.i, %if.end142.i.thread.i, %if.then135.i.i, %if.then130.i.i, %if.then125.i.i, %if.then120.i.i, %if.then115.i.i, %if.then110.i.i, %if.then105.i.i, %if.then100.i.i, %if.then95.i.i, %if.then90.i.i, %if.then85.i.i, %if.then80.i.i, %if.then75.i.i, %if.then70.i.i, %if.then65.i.i, %if.end62.i.i, %if.end62.i.thread.i
  call void @llvm.dbg.value(metadata i32 0, metadata !1002, metadata !DIExpression()) #20, !dbg !1024
  %r_natoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %70, i64 0, i32 15
  %r_atoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %70, i64 0, i32 17
  %72 = trunc i64 %indvars.iv705.i to i32
  %cond96.v.i = select i1 %cmp26.i, i32 %tr.1694.i, i32 %72
  %cond96.i = add nsw i32 %cond96.v.i, 1
  call void @llvm.dbg.value(metadata i32 %ta.1693.i, metadata !1003, metadata !DIExpression()) #20, !dbg !1024
  %73 = load i32, i32* %r_natoms.i, align 8, !dbg !1435, !tbaa !714
  %cmp65689.i = icmp sgt i32 %73, 0, !dbg !1438
  br i1 %cmp65689.i, label %for.body67.i, label %for.inc170.i, !dbg !1439

for.body67.i:                                     ; preds = %if.end63.i, %if.end167.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end167.i ], [ 0, %if.end63.i ]
  %ta.2690.i = phi i32 [ %inc.i, %if.end167.i ], [ %ta.1693.i, %if.end63.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1002, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %ta.2690.i, metadata !1003, metadata !DIExpression()) #20, !dbg !1024
  %inc.i = add nsw i32 %ta.2690.i, 1, !dbg !1440
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1003, metadata !DIExpression()) #20, !dbg !1024
  %74 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i, align 8, !dbg !1442, !tbaa !1443
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %74, i64 %indvars.iv.i), metadata !1007, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #20, !dbg !1024
  %a_atomname.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 0, !dbg !1444
  %75 = load i8*, i8** %a_atomname.i, align 8, !dbg !1444, !tbaa !489
  br i1 %cmp18.i, label %if.then71.i, label %if.else74.i, !dbg !1446

if.then71.i:                                      ; preds = %for.body67.i
  call void @llvm.dbg.value(metadata i8* %8, metadata !1447, metadata !DIExpression()) #20, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %75, metadata !1452, metadata !DIExpression()) #20, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %7, metadata !1453, metadata !DIExpression()) #20, !dbg !1454
  store i8 32, i8* %14, align 1, !dbg !1456, !tbaa !366
  %call.i446.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %75) #19, !dbg !1457
  %cmp.i447.i = icmp ugt i64 %call.i446.i, 3, !dbg !1459
  br i1 %cmp.i447.i, label %land.lhs.true.i.i, label %if.end.i450.i, !dbg !1460

land.lhs.true.i.i:                                ; preds = %if.then71.i
  %arrayidx1.i.i = getelementptr inbounds i8, i8* %75, i64 3, !dbg !1461
  %76 = load i8, i8* %arrayidx1.i.i, align 1, !dbg !1461, !tbaa !366
  %cmp2.not.i.i = icmp eq i8 %76, 32, !dbg !1462
  br i1 %cmp2.not.i.i, label %if.end.i450.i, label %if.then.i448.i, !dbg !1463

if.then.i448.i:                                   ; preds = %land.lhs.true.i.i
  store i8 %76, i8* %14, align 1, !dbg !1464, !tbaa !366
  br label %if.end.i450.i, !dbg !1465

if.end.i450.i:                                    ; preds = %if.then.i448.i, %land.lhs.true.i.i, %if.then71.i
  %77 = load i8, i8* %75, align 1, !dbg !1466, !tbaa !366
  store i8 %77, i8* %add.ptr.i.i, align 1, !dbg !1467, !tbaa !366
  %arrayidx8.i.i = getelementptr inbounds i8, i8* %75, i64 1, !dbg !1468
  %78 = load i8, i8* %arrayidx8.i.i, align 1, !dbg !1468, !tbaa !366
  store i8 %78, i8* %arrayidx14.i.i, align 1, !dbg !1469, !tbaa !366
  %arrayidx10.i.i = getelementptr inbounds i8, i8* %75, i64 2, !dbg !1470
  %79 = load i8, i8* %arrayidx10.i.i, align 1, !dbg !1470, !tbaa !366
  %cmp14.i.i = icmp eq i8 %79, 39, !dbg !1471
  %spec.select.i.i = select i1 %cmp14.i.i, i8 42, i8 %79, !dbg !1473
  store i8 %spec.select.i.i, i8* %arrayidx21.i.i, align 1, !dbg !1454, !tbaa !366
  store i8 0, i8* %arrayidx6.i.i, align 1, !dbg !1474, !tbaa !366
  %bcmp507.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %14, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #20, !dbg !1475
  %tobool.not.i449.i = icmp eq i32 %bcmp507.i, 0, !dbg !1475
  %.off.i.i = add i8 %spec.select.i.i, -49
  %switch.i.i = icmp ult i8 %.off.i.i, 3
  %or.cond79.i.i = select i1 %tobool.not.i449.i, i1 %switch.i.i, i1 false, !dbg !1477
  br i1 %or.cond79.i.i, label %land.lhs.true35.i.i, label %if.end85.i, !dbg !1477

land.lhs.true35.i.i:                              ; preds = %if.end.i450.i
  %bcmp508.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %14, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #20, !dbg !1478
  %tobool37.not.i.i = icmp ne i32 %bcmp508.i, 0, !dbg !1478
  %lhsv632.i = load i16, i16* %52, align 4
  %.not633.i = icmp eq i16 %lhsv632.i, 18760
  %or.cond688.i = select i1 %tobool37.not.i.i, i1 %.not633.i, i1 false, !dbg !1479
  br i1 %or.cond688.i, label %if.end85.i, label %if.then50.i453.i, !dbg !1479

if.then50.i453.i:                                 ; preds = %land.lhs.true35.i.i
  store i8 %spec.select.i.i, i8* %14, align 1, !dbg !1480, !tbaa !366
  store i8 32, i8* %arrayidx21.i.i, align 1, !dbg !1482, !tbaa !366
  br label %if.end85.i, !dbg !1483

if.else74.i:                                      ; preds = %for.body67.i
  br i1 %cmp22.i, label %if.then76.i, label %if.else80.i, !dbg !1484

if.then76.i:                                      ; preds = %if.else74.i
  call void @llvm.dbg.value(metadata i8* %8, metadata !1485, metadata !DIExpression()) #20, !dbg !1490
  call void @llvm.dbg.value(metadata i8* %75, metadata !1488, metadata !DIExpression()) #20, !dbg !1490
  call void @llvm.dbg.value(metadata i8* undef, metadata !1489, metadata !DIExpression()) #20, !dbg !1490
  %call.i454.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %75) #19, !dbg !1493
  %cmp.i455.i = icmp ugt i64 %call.i454.i, 3, !dbg !1495
  br i1 %cmp.i455.i, label %land.lhs.true.i457.i, label %if.else.i460.i, !dbg !1496

land.lhs.true.i457.i:                             ; preds = %if.then76.i
  %arrayidx.i456.i = getelementptr inbounds i8, i8* %75, i64 3, !dbg !1497
  %80 = load i8, i8* %arrayidx.i456.i, align 1, !dbg !1497, !tbaa !366
  %cmp1.not.i.i = icmp eq i8 %80, 32, !dbg !1498
  br i1 %cmp1.not.i.i, label %if.else.i460.i, label %if.then.i459.i, !dbg !1499

if.then.i459.i:                                   ; preds = %land.lhs.true.i457.i
  %call3.i458.i = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(1) %75, i64 noundef 5) #20, !dbg !1500
  br label %if.end.i462.i, !dbg !1502

if.else.i460.i:                                   ; preds = %land.lhs.true.i457.i, %if.then76.i
  store i8 32, i8* %14, align 1, !dbg !1503, !tbaa !366
  %call5.i.i = call i8* @strncpy(i8* noundef nonnull %add.ptr.i.i, i8* noundef nonnull dereferenceable(1) %75, i64 noundef 3) #20, !dbg !1505
  store i8 0, i8* %arrayidx6.i.i, align 1, !dbg !1506, !tbaa !366
  br label %if.end.i462.i

if.end.i462.i:                                    ; preds = %if.else.i460.i, %if.then.i459.i
  %81 = load i8, i8* %add.ptr.i.i, align 1, !dbg !1507, !tbaa !366
  %cmp9.i.i = icmp eq i8 %81, 0, !dbg !1509
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end13.i.i, !dbg !1510

if.then11.i.i:                                    ; preds = %if.end.i462.i
  store i8 32, i8* %add.ptr.i.i, align 1, !dbg !1511, !tbaa !366
  br label %if.end13.i.i, !dbg !1512

if.end13.i.i:                                     ; preds = %if.then11.i.i, %if.end.i462.i
  %82 = phi i8 [ 32, %if.then11.i.i ], [ %81, %if.end.i462.i ]
  %83 = load i8, i8* %arrayidx14.i.i, align 1, !dbg !1513, !tbaa !366
  %cmp16.i463.i = icmp eq i8 %83, 0, !dbg !1515
  br i1 %cmp16.i463.i, label %if.then18.i.i, label %if.end20.i.i, !dbg !1516

if.then18.i.i:                                    ; preds = %if.end13.i.i
  store i8 32, i8* %arrayidx14.i.i, align 1, !dbg !1517, !tbaa !366
  br label %if.end20.i.i, !dbg !1518

if.end20.i.i:                                     ; preds = %if.then18.i.i, %if.end13.i.i
  %84 = phi i8 [ 32, %if.then18.i.i ], [ %83, %if.end13.i.i ]
  %85 = load i8, i8* %arrayidx21.i.i, align 1, !dbg !1519, !tbaa !366
  %cmp23.i.i = icmp eq i8 %85, 0, !dbg !1521
  br i1 %cmp23.i.i, label %if.then25.i464.i, label %if.end27.i467.i, !dbg !1522

if.then25.i464.i:                                 ; preds = %if.end20.i.i
  store i8 32, i8* %arrayidx21.i.i, align 1, !dbg !1523, !tbaa !366
  br label %if.end27.i467.i, !dbg !1524

if.end27.i467.i:                                  ; preds = %if.then25.i464.i, %if.end20.i.i
  %86 = phi i8 [ 32, %if.then25.i464.i ], [ %85, %if.end20.i.i ]
  %bcmp.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #20, !dbg !1525
  %tobool.not.i466.i = icmp eq i32 %bcmp.i, 0, !dbg !1525
  br i1 %tobool.not.i466.i, label %if.then29.i.i, label %if.end31.i.i, !dbg !1527

if.then29.i.i:                                    ; preds = %if.end27.i467.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1528
  br label %if.end31.i.i, !dbg !1528

if.end31.i.i:                                     ; preds = %if.then29.i.i, %if.end27.i467.i
  %87 = phi i8 [ 39, %if.then29.i.i ], [ %86, %if.end27.i467.i ]
  %88 = phi i8 [ 53, %if.then29.i.i ], [ %84, %if.end27.i467.i ]
  %89 = phi i8 [ 72, %if.then29.i.i ], [ %82, %if.end27.i467.i ]
  %bcmp484.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #20, !dbg !1529
  %tobool33.not.i.i = icmp eq i32 %bcmp484.i, 0, !dbg !1529
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %if.end36.i.i, !dbg !1531

if.then34.i.i:                                    ; preds = %if.end31.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1532
  br label %if.end36.i.i, !dbg !1532

if.end36.i.i:                                     ; preds = %if.then34.i.i, %if.end31.i.i
  %90 = phi i8 [ 39, %if.then34.i.i ], [ %87, %if.end31.i.i ]
  %91 = phi i8 [ 39, %if.then34.i.i ], [ %88, %if.end31.i.i ]
  %92 = phi i8 [ 53, %if.then34.i.i ], [ %89, %if.end31.i.i ]
  %bcmp485.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #20, !dbg !1533
  %tobool38.not.i.i = icmp eq i32 %bcmp485.i, 0, !dbg !1533
  br i1 %tobool38.not.i.i, label %if.then39.i.i, label %if.end41.i.i, !dbg !1535

if.then39.i.i:                                    ; preds = %if.end36.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1536
  br label %if.end41.i.i, !dbg !1536

if.end41.i.i:                                     ; preds = %if.then39.i.i, %if.end36.i.i
  %93 = phi i8 [ 39, %if.then39.i.i ], [ %90, %if.end36.i.i ]
  %94 = phi i8 [ 50, %if.then39.i.i ], [ %91, %if.end36.i.i ]
  %95 = phi i8 [ 72, %if.then39.i.i ], [ %92, %if.end36.i.i ]
  %bcmp486.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #20, !dbg !1537
  %tobool43.not.i.i = icmp eq i32 %bcmp486.i, 0, !dbg !1537
  br i1 %tobool43.not.i.i, label %if.then44.i.i, label %if.end46.i.i, !dbg !1539

if.then44.i.i:                                    ; preds = %if.end41.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1540
  br label %if.end46.i.i, !dbg !1540

if.end46.i.i:                                     ; preds = %if.then44.i.i, %if.end41.i.i
  %96 = phi i8 [ 39, %if.then44.i.i ], [ %93, %if.end41.i.i ]
  %97 = phi i8 [ 39, %if.then44.i.i ], [ %94, %if.end41.i.i ]
  %98 = phi i8 [ 50, %if.then44.i.i ], [ %95, %if.end41.i.i ]
  %bcmp487.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #20, !dbg !1541
  %tobool48.not.i.i = icmp eq i32 %bcmp487.i, 0, !dbg !1541
  br i1 %tobool48.not.i.i, label %if.then49.i.i, label %if.end51.i.i, !dbg !1543

if.then49.i.i:                                    ; preds = %if.end46.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1544
  br label %if.end51.i.i, !dbg !1544

if.end51.i.i:                                     ; preds = %if.then49.i.i, %if.end46.i.i
  %99 = phi i8 [ 49, %if.then49.i.i ], [ %96, %if.end46.i.i ]
  %100 = phi i8 [ 80, %if.then49.i.i ], [ %97, %if.end46.i.i ]
  %101 = phi i8 [ 79, %if.then49.i.i ], [ %98, %if.end46.i.i ]
  %bcmp488.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #20, !dbg !1545
  %tobool53.not.i.i = icmp eq i32 %bcmp488.i, 0, !dbg !1545
  br i1 %tobool53.not.i.i, label %if.then54.i.i, label %if.end56.i.i, !dbg !1547

if.then54.i.i:                                    ; preds = %if.end51.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1548
  br label %if.end56.i.i, !dbg !1548

if.end56.i.i:                                     ; preds = %if.then54.i.i, %if.end51.i.i
  %102 = phi i8 [ 50, %if.then54.i.i ], [ %99, %if.end51.i.i ]
  %103 = phi i8 [ 80, %if.then54.i.i ], [ %100, %if.end51.i.i ]
  %104 = phi i8 [ 79, %if.then54.i.i ], [ %101, %if.end51.i.i ]
  %bcmp489.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #20, !dbg !1549
  %tobool58.not.i.i = icmp eq i32 %bcmp489.i, 0, !dbg !1549
  br i1 %tobool58.not.i.i, label %if.then59.i.i, label %if.end61.i.i, !dbg !1551

if.then59.i.i:                                    ; preds = %if.end56.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1552
  br label %if.end61.i.i, !dbg !1552

if.end61.i.i:                                     ; preds = %if.then59.i.i, %if.end56.i.i
  %105 = phi i8 [ 39, %if.then59.i.i ], [ %102, %if.end56.i.i ]
  %106 = phi i8 [ 53, %if.then59.i.i ], [ %103, %if.end56.i.i ]
  %107 = phi i8 [ 79, %if.then59.i.i ], [ %104, %if.end56.i.i ]
  %bcmp490.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #20, !dbg !1553
  %tobool63.not.i.i = icmp eq i32 %bcmp490.i, 0, !dbg !1553
  br i1 %tobool63.not.i.i, label %if.then64.i.i, label %if.end66.i.i, !dbg !1555

if.then64.i.i:                                    ; preds = %if.end61.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %14, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 noundef 5, i1 false) #20, !dbg !1556
  br label %if.end66.i.i, !dbg !1556

if.end66.i.i:                                     ; preds = %if.then64.i.i, %if.end61.i.i
  %108 = phi i8 [ 39, %if.then64.i.i ], [ %105, %if.end61.i.i ]
  %109 = phi i8 [ 51, %if.then64.i.i ], [ %106, %if.end61.i.i ]
  %110 = phi i8 [ 79, %if.then64.i.i ], [ %107, %if.end61.i.i ]
  %bcmp491.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #20, !dbg !1557
  %tobool68.not.i.i = icmp eq i32 %bcmp491.i, 0, !dbg !1557
  br i1 %tobool68.not.i.i, label %if.then113.i.i, label %lor.lhs.false.i.i, !dbg !1559

lor.lhs.false.i.i:                                ; preds = %if.end66.i.i
  %bcmp492.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #20, !dbg !1560
  %tobool70.not.i.i = icmp eq i32 %bcmp492.i, 0, !dbg !1560
  br i1 %tobool70.not.i.i, label %if.then113.i.i, label %lor.lhs.false71.i.i, !dbg !1561

lor.lhs.false71.i.i:                              ; preds = %lor.lhs.false.i.i
  %bcmp493.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #20, !dbg !1562
  %tobool73.not.i.i = icmp eq i32 %bcmp493.i, 0, !dbg !1562
  br i1 %tobool73.not.i.i, label %if.then113.i.i, label %lor.lhs.false74.i.i, !dbg !1563

lor.lhs.false74.i.i:                              ; preds = %lor.lhs.false71.i.i
  %bcmp494.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #20, !dbg !1564
  %tobool76.not.i.i = icmp eq i32 %bcmp494.i, 0, !dbg !1564
  br i1 %tobool76.not.i.i, label %if.then113.i.i, label %lor.lhs.false77.i.i, !dbg !1565

lor.lhs.false77.i.i:                              ; preds = %lor.lhs.false74.i.i
  %bcmp495.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #20, !dbg !1566
  %tobool79.not.i469.i = icmp eq i32 %bcmp495.i, 0, !dbg !1566
  br i1 %tobool79.not.i469.i, label %if.then113.i.i, label %lor.lhs.false80.i.i, !dbg !1567

lor.lhs.false80.i.i:                              ; preds = %lor.lhs.false77.i.i
  %bcmp496.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #20, !dbg !1568
  %tobool82.not.i.i = icmp eq i32 %bcmp496.i, 0, !dbg !1568
  br i1 %tobool82.not.i.i, label %if.then113.i.i, label %lor.lhs.false83.i.i, !dbg !1569

lor.lhs.false83.i.i:                              ; preds = %lor.lhs.false80.i.i
  %bcmp497.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #20, !dbg !1570
  %tobool85.not.i.i = icmp eq i32 %bcmp497.i, 0, !dbg !1570
  br i1 %tobool85.not.i.i, label %if.then113.i.i, label %lor.lhs.false86.i.i, !dbg !1571

lor.lhs.false86.i.i:                              ; preds = %lor.lhs.false83.i.i
  %bcmp498.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #20, !dbg !1572
  %tobool88.not.i.i = icmp eq i32 %bcmp498.i, 0, !dbg !1572
  br i1 %tobool88.not.i.i, label %if.then113.i.i, label %lor.lhs.false89.i.i, !dbg !1573

lor.lhs.false89.i.i:                              ; preds = %lor.lhs.false86.i.i
  %bcmp499.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #20, !dbg !1574
  %tobool91.not.i.i = icmp eq i32 %bcmp499.i, 0, !dbg !1574
  br i1 %tobool91.not.i.i, label %if.then113.i.i, label %lor.lhs.false92.i.i, !dbg !1575

lor.lhs.false92.i.i:                              ; preds = %lor.lhs.false89.i.i
  %bcmp500.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #20, !dbg !1576
  %tobool94.not.i471.i = icmp eq i32 %bcmp500.i, 0, !dbg !1576
  br i1 %tobool94.not.i471.i, label %if.then113.i.i, label %lor.lhs.false95.i.i, !dbg !1577

lor.lhs.false95.i.i:                              ; preds = %lor.lhs.false92.i.i
  %bcmp501.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #20, !dbg !1578
  %tobool97.not.i.i = icmp eq i32 %bcmp501.i, 0, !dbg !1578
  br i1 %tobool97.not.i.i, label %if.then113.i.i, label %lor.lhs.false98.i.i, !dbg !1579

lor.lhs.false98.i.i:                              ; preds = %lor.lhs.false95.i.i
  %bcmp502.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #20, !dbg !1580
  %tobool100.not.i.i = icmp eq i32 %bcmp502.i, 0, !dbg !1580
  br i1 %tobool100.not.i.i, label %if.then113.i.i, label %lor.lhs.false101.i.i, !dbg !1581

lor.lhs.false101.i.i:                             ; preds = %lor.lhs.false98.i.i
  %bcmp503.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #20, !dbg !1582
  %tobool103.not.i.i = icmp eq i32 %bcmp503.i, 0, !dbg !1582
  br i1 %tobool103.not.i.i, label %if.then113.i.i, label %lor.lhs.false104.i.i, !dbg !1583

lor.lhs.false104.i.i:                             ; preds = %lor.lhs.false101.i.i
  %bcmp504.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #20, !dbg !1584
  %tobool106.not.i.i = icmp eq i32 %bcmp504.i, 0, !dbg !1584
  br i1 %tobool106.not.i.i, label %if.then113.i.i, label %lor.lhs.false107.i.i, !dbg !1585

lor.lhs.false107.i.i:                             ; preds = %lor.lhs.false104.i.i
  %bcmp505.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #20, !dbg !1586
  %tobool109.not.i473.i = icmp eq i32 %bcmp505.i, 0, !dbg !1586
  br i1 %tobool109.not.i473.i, label %if.then113.i.i, label %lor.lhs.false110.i.i, !dbg !1587

lor.lhs.false110.i.i:                             ; preds = %lor.lhs.false107.i.i
  %bcmp506.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %14, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #20, !dbg !1588
  %tobool112.not.i.i = icmp eq i32 %bcmp506.i, 0, !dbg !1588
  br i1 %tobool112.not.i.i, label %if.then113.i.i, label %if.end85.i, !dbg !1589

if.then113.i.i:                                   ; preds = %lor.lhs.false110.i.i, %lor.lhs.false107.i.i, %lor.lhs.false104.i.i, %lor.lhs.false101.i.i, %lor.lhs.false98.i.i, %lor.lhs.false95.i.i, %lor.lhs.false92.i.i, %lor.lhs.false89.i.i, %lor.lhs.false86.i.i, %lor.lhs.false83.i.i, %lor.lhs.false80.i.i, %lor.lhs.false77.i.i, %lor.lhs.false74.i.i, %lor.lhs.false71.i.i, %lor.lhs.false.i.i, %if.end66.i.i
  store i8 %110, i8* %14, align 1, !dbg !1590, !tbaa !366
  store i8 %109, i8* %add.ptr.i.i, align 1, !dbg !1592, !tbaa !366
  store i8 %108, i8* %arrayidx14.i.i, align 1, !dbg !1593, !tbaa !366
  store i8 32, i8* %arrayidx21.i.i, align 1, !dbg !1594, !tbaa !366
  br label %if.end85.i, !dbg !1595

if.else80.i:                                      ; preds = %if.else74.i
  %call83.i = call i8* @strcpy(i8* noundef nonnull %14, i8* noundef nonnull dereferenceable(1) %75) #20, !dbg !1596
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.else80.i, %if.then113.i.i, %lor.lhs.false110.i.i, %if.then50.i453.i, %land.lhs.true35.i.i, %if.end.i450.i
  %strcmpload.i = load i8, i8* %15, align 1, !dbg !1597
  %tobool88.i = icmp eq i8 %strcmpload.i, 0, !dbg !1597
  %or.cond.i = select i1 %tobool88.i, i1 true, i1 %cmp26.i, !dbg !1599
  %cmp97.i = icmp slt i32 %ta.2690.i, 99999, !dbg !1600
  br i1 %or.cond.i, label %if.then90.i, label %if.else121.i, !dbg !1599

if.then90.i:                                      ; preds = %if.end85.i
  call void @llvm.dbg.value(metadata i32 %cond96.i, metadata !1001, metadata !DIExpression()) #20, !dbg !1024
  br i1 %cmp97.i, label %if.then99.i, label %if.else109.i, !dbg !1601

if.then99.i:                                      ; preds = %if.then90.i
  %arrayidx103.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 0, !dbg !1603
  %111 = load double, double* %arrayidx103.i, align 8, !dbg !1603, !tbaa !668
  %arrayidx105.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1606
  %112 = load double, double* %arrayidx105.i, align 8, !dbg !1606, !tbaa !668
  %arrayidx107.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1607
  %113 = load double, double* %arrayidx107.i, align 8, !dbg !1607, !tbaa !668
  %call108.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 noundef %inc.i, i8* noundef nonnull %14, i8* noundef nonnull %13, i32 noundef %conv112.i, i32 noundef %cond96.i, double noundef %111, double noundef %112, double noundef %113) #20, !dbg !1608
  br label %if.end148.i, !dbg !1609

if.else109.i:                                     ; preds = %if.then90.i
  %rem482.i = urem i32 %inc.i, 100000, !dbg !1610
  %arrayidx114.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 0, !dbg !1612
  %114 = load double, double* %arrayidx114.i, align 8, !dbg !1612, !tbaa !668
  %arrayidx116.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1613
  %115 = load double, double* %arrayidx116.i, align 8, !dbg !1613, !tbaa !668
  %arrayidx118.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1614
  %116 = load double, double* %arrayidx118.i, align 8, !dbg !1614, !tbaa !668
  %call119.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 noundef %rem482.i, i8* noundef nonnull %14, i8* noundef nonnull %13, i32 noundef %conv112.i, i32 noundef %cond96.i, double noundef %114, double noundef %115, double noundef %116) #20, !dbg !1615
  br label %if.end148.i

if.else121.i:                                     ; preds = %if.end85.i
  br i1 %cmp97.i, label %if.then124.i, label %if.else135.i, !dbg !1616

if.then124.i:                                     ; preds = %if.else121.i
  %arrayidx129.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 0, !dbg !1618
  %117 = load double, double* %arrayidx129.i, align 8, !dbg !1618, !tbaa !668
  %arrayidx131.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1621
  %118 = load double, double* %arrayidx131.i, align 8, !dbg !1621, !tbaa !668
  %arrayidx133.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1622
  %119 = load double, double* %arrayidx133.i, align 8, !dbg !1622, !tbaa !668
  %call134.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 noundef %inc.i, i8* noundef nonnull %14, i8* noundef nonnull %13, i8* noundef nonnull %15, double noundef %117, double noundef %118, double noundef %119) #20, !dbg !1623
  br label %if.end148.i, !dbg !1624

if.else135.i:                                     ; preds = %if.else121.i
  %rem136483.i = urem i32 %inc.i, 100000, !dbg !1625
  %arrayidx141.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 0, !dbg !1627
  %120 = load double, double* %arrayidx141.i, align 8, !dbg !1627, !tbaa !668
  %arrayidx143.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1628
  %121 = load double, double* %arrayidx143.i, align 8, !dbg !1628, !tbaa !668
  %arrayidx145.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1629
  %122 = load double, double* %arrayidx145.i, align 8, !dbg !1629, !tbaa !668
  %call146.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 noundef %rem136483.i, i8* noundef nonnull %14, i8* noundef nonnull %13, i8* noundef nonnull %15, double noundef %120, double noundef %121, double noundef %122) #20, !dbg !1630
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.else135.i, %if.then124.i, %if.else109.i, %if.then99.i
  br i1 %cmp11.i, label %if.then150.i, label %if.else152.i, !dbg !1631

if.then150.i:                                     ; preds = %if.end148.i
  %a_charge.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 6, !dbg !1632
  %123 = load double, double* %a_charge.i, align 8, !dbg !1632, !tbaa !810
  %a_radius.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 7, !dbg !1635
  %124 = load double, double* %a_radius.i, align 8, !dbg !1635, !tbaa !814
  %call151.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double noundef %123, double noundef %124) #20, !dbg !1636
  br label %if.end167.i, !dbg !1637

if.else152.i:                                     ; preds = %if.end148.i
  br i1 %cmp14.i, label %if.end167.i, label %if.end157.i, !dbg !1638

if.end157.i:                                      ; preds = %if.else152.i
  %a_occ.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 9, !dbg !1639
  %125 = load double, double* %a_occ.i, align 8, !dbg !1639, !tbaa !817
  %a_bfact.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %74, i64 %indvars.iv.i, i32 8, !dbg !1642
  %126 = load double, double* %a_bfact.i, align 8, !dbg !1642, !tbaa !820
  %call155.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double noundef %125, double noundef %126) #20, !dbg !1643
  br i1 %or.cond199.i, label %if.end167.i, label %if.then164.i, !dbg !1644

if.then164.i:                                     ; preds = %if.end157.i
  %127 = load i8*, i8** %a_atomname.i, align 8, !dbg !1646, !tbaa !489
  %call166.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.0.ph38, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* noundef %127) #20, !dbg !1648
  br label %if.end167.i, !dbg !1649

if.end167.i:                                      ; preds = %if.then164.i, %if.end157.i, %if.else152.i, %if.then150.i
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %fp.0.ph38) #20, !dbg !1650
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1002, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1003, metadata !DIExpression()) #20, !dbg !1024
  %128 = load i32, i32* %r_natoms.i, align 8, !dbg !1435, !tbaa !714
  %129 = sext i32 %128 to i64, !dbg !1438
  %cmp65.i = icmp slt i64 %indvars.iv.next.i, %129, !dbg !1438
  br i1 %cmp65.i, label %for.body67.i, label %for.inc170.i, !dbg !1439, !llvm.loop !1652

for.inc170.i:                                     ; preds = %if.end167.i, %if.end63.i
  %ta.2.lcssa.i = phi i32 [ %ta.1693.i, %if.end63.i ], [ %inc.i, %if.end167.i ], !dbg !1164
  %indvars.iv.next706.i = add nuw nsw i64 %indvars.iv705.i, 1, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next706.i, metadata !999, metadata !DIExpression()) #20, !dbg !1024
  %inc172.i = add nsw i32 %tr.1694.i, 1, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %inc172.i, metadata !1000, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %ta.2.lcssa.i, metadata !1003, metadata !DIExpression()) #20, !dbg !1024
  %130 = load i32, i32* %s_nresidues.i, align 8, !dbg !1223, !tbaa !1226
  %131 = sext i32 %130 to i64, !dbg !1227
  %cmp44.i = icmp slt i64 %indvars.iv.next706.i, %131, !dbg !1227
  br i1 %cmp44.i, label %for.body46.i, label %for.end173.i, !dbg !1228, !llvm.loop !1656

for.end173.i:                                     ; preds = %for.inc170.i, %nextcid.exit.i
  %ta.1.lcssa.i = phi i32 [ %ta.0700.i, %nextcid.exit.i ], [ %ta.2.lcssa.i, %for.inc170.i ], !dbg !1658
  %tr.1.lcssa.i = phi i32 [ %tr.0701.i, %nextcid.exit.i ], [ %inc172.i, %for.inc170.i ], !dbg !1164
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* nonnull %fp.0.ph38) #20, !dbg !1659
  %s_next.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0702.i, i64 0, i32 4, !dbg !1660
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1005, metadata !DIExpression()) #20, !dbg !1024
  %sp.0.i = load %struct.strand_t*, %struct.strand_t** %s_next.i, align 8, !dbg !1164, !tbaa !372
  call void @llvm.dbg.value(metadata i32 %tr.1.lcssa.i, metadata !1000, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i, metadata !1005, metadata !DIExpression()) #20, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %ta.1.lcssa.i, metadata !1003, metadata !DIExpression()) #20, !dbg !1024
  %tobool40.not.i = icmp eq %struct.strand_t* %sp.0.i, null, !dbg !1165
  br i1 %tobool40.not.i, label %for.end176.i, label %for.body.i, !dbg !1165, !llvm.loop !1661

for.end176.i:                                     ; preds = %for.end173.i, %initcid.exit.i
  call void @llvm.dbg.value(metadata %struct.cid_t* %retval.0.i.i, metadata !1096, metadata !DIExpression()) #20, !dbg !1663
  br i1 %cmp.i286.i, label %fputpdb.exit, label %if.then.i476.i, !dbg !1665

if.then.i476.i:                                   ; preds = %for.end176.i
  %133 = load i8*, i8** %c_cids.i292.i, align 8, !dbg !1666, !tbaa !1109
  %cmp1.not.i475.i = icmp eq i8* %133, null, !dbg !1668
  br i1 %cmp1.not.i475.i, label %if.end.i477.i, label %if.then2.i.i, !dbg !1669

if.then2.i.i:                                     ; preds = %if.then.i476.i
  call void @free(i8* noundef nonnull %133) #20, !dbg !1670
  br label %if.end.i477.i, !dbg !1670

if.end.i477.i:                                    ; preds = %if.then2.i.i, %if.then.i476.i
  %134 = bitcast %struct.cid_t* %retval.0.i.i to i8*, !dbg !1671
  call void @free(i8* noundef %134) #20, !dbg !1672
  br label %fputpdb.exit, !dbg !1673

fputpdb.exit:                                     ; preds = %if.then2.i, %for.end176.i, %if.end.i477.i
  %fp.0.ph39 = phi %struct._IO_FILE* [ null, %if.then2.i ], [ %fp.0.ph38, %for.end176.i ], [ %fp.0.ph38, %if.end.i477.i ]
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %rname.i, i64 0, i64 0
  %136 = getelementptr inbounds [8 x i8], [8 x i8]* %aname.i, i64 0, i64 0
  %137 = getelementptr inbounds [7 x i8], [7 x i8]* %rid.i, i64 0, i64 0
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %loptions.i, i64 0, i64 0
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %138) #20, !dbg !1674
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %137) #20, !dbg !1674
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %136) #20, !dbg !1674
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %135) #20, !dbg !1674
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1675, !tbaa !372
  %cmp18.not = icmp eq %struct._IO_FILE* %fp.0.ph39, %139, !dbg !1677
  br i1 %cmp18.not, label %if.end23, label %if.then19, !dbg !1678

if.then19:                                        ; preds = %fputpdb.exit
  %call20 = call i32 @fclose(%struct._IO_FILE* noundef %fp.0.ph39), !dbg !1679
  br label %if.end23, !dbg !1679

if.end23:                                         ; preds = %if.end15, %if.then19, %fputpdb.exit, %if.end3
  %ier.1 = phi i32 [ 0, %if.then19 ], [ 0, %fputpdb.exit ], [ -1, %if.end15 ], [ 0, %if.end3 ], !dbg !971
  call void @llvm.dbg.value(metadata i32 %ier.1, metadata !970, metadata !DIExpression()), !dbg !971
  call void @reducerror(i32 noundef %ier.1) #20, !dbg !1680
  br label %cleanup, !dbg !1681

cleanup:                                          ; preds = %if.then, %if.then1, %if.end23
  ret i32 0, !dbg !1682
}

declare !dbg !1683 dso_local i32 @rt_errormsg_s(i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @putcif(i8* noundef %fname, i8* noundef %blockId, %struct.molecule_t* noundef readonly %mol) local_unnamed_addr #0 !dbg !1686 {
entry:
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1690, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %blockId, metadata !1691, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1692, metadata !DIExpression()), !dbg !1694
  %tobool.not = icmp eq %struct.molecule_t* %mol, null, !dbg !1695
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1697

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1698, !tbaa !372
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %0) #21, !dbg !1700
  br label %cleanup, !dbg !1701

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %fname, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #19, !dbg !1702
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !1702
  br i1 %tobool2.not, label %if.end.i, label %if.else, !dbg !1704

if.else:                                          ; preds = %if.end
  %call4 = tail call %struct._IO_FILE* @fopen(i8* noundef %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1705
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call4, metadata !1693, metadata !DIExpression()), !dbg !1694
  %cmp = icmp eq %struct._IO_FILE* %call4, null, !dbg !1707
  br i1 %cmp, label %if.then5, label %if.end4.i, !dbg !1708

if.then5:                                         ; preds = %if.else
  %call6 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* noundef %fname) #20, !dbg !1709
  tail call void @exit(i32 noundef 1) #23, !dbg !1711
  unreachable, !dbg !1711

if.end.i:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1712, !tbaa !372
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1693, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1713, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i8* %blockId, metadata !1718, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1719, metadata !DIExpression()) #20, !dbg !1729
  %tobool1.not.i = icmp eq %struct._IO_FILE* %2, null, !dbg !1731
  br i1 %tobool1.not.i, label %if.else3.i, label %if.end4.i, !dbg !1734

if.else3.i:                                       ; preds = %if.end.i
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.159, i64 0, i64 0), i32 noundef 1390, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #23, !dbg !1731
  unreachable, !dbg !1731

if.end4.i:                                        ; preds = %if.else, %if.end.i
  %fp.021 = phi %struct._IO_FILE* [ %2, %if.end.i ], [ %call4, %if.else ]
  %m_nstrands.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 1, !dbg !1735
  %3 = load i32, i32* %m_nstrands.i, align 8, !dbg !1735, !tbaa !1736
  call void @llvm.dbg.value(metadata i8 undef, metadata !1725, metadata !DIExpression()) #20, !dbg !1729
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.021, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* noundef %blockId) #20, !dbg !1737
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1738
  %call6.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.021, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* noundef %blockId) #20, !dbg !1739
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1740
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1741
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1742
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1743
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1744
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* nonnull %fp.021) #20, !dbg !1745
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 0, metadata !1723, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 0, metadata !1721, metadata !DIExpression()) #20, !dbg !1729
  %m_strands.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1746
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1726, metadata !DIExpression()) #20, !dbg !1729
  %sp.094.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1748, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.094.i, metadata !1726, metadata !DIExpression()) #20, !dbg !1729
  %tobool13.not95.i = icmp eq %struct.strand_t* %sp.094.i, null, !dbg !1749
  br i1 %tobool13.not95.i, label %fputcif.exit, label %for.body.preheader.i, !dbg !1749

for.body.preheader.i:                             ; preds = %if.end4.i
  %cmp.i = icmp sgt i32 %3, 1, !dbg !1750
  %conv.i = select i1 %cmp.i, i8 65, i8 46, !dbg !1751
  call void @llvm.dbg.value(metadata i8 %conv.i, metadata !1725, metadata !DIExpression()) #20, !dbg !1729
  br label %for.body.i, !dbg !1749

for.body.i:                                       ; preds = %for.end37.i, %for.body.preheader.i
  %sp.0100.i = phi %struct.strand_t* [ %sp.0.i, %for.end37.i ], [ %sp.094.i, %for.body.preheader.i ]
  %tr.099.i = phi i32 [ %tr.1.lcssa.i, %for.end37.i ], [ 0, %for.body.preheader.i ]
  %cid.098.i = phi i8 [ %spec.select.i, %for.end37.i ], [ %conv.i, %for.body.preheader.i ]
  %strandnum.097.i = phi i32 [ %inc.i, %for.end37.i ], [ 0, %for.body.preheader.i ]
  %ta.096.i = phi i32 [ %ta.1.lcssa.i, %for.end37.i ], [ 0, %for.body.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %tr.099.i, metadata !1721, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i8 %cid.098.i, metadata !1725, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %strandnum.097.i, metadata !1724, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %ta.096.i, metadata !1723, metadata !DIExpression()) #20, !dbg !1729
  %inc.i = add nuw nsw i32 %strandnum.097.i, 1, !dbg !1752
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1724, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 0, metadata !1720, metadata !DIExpression()) #20, !dbg !1729
  %s_nresidues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0100.i, i64 0, i32 5
  %s_residues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0100.i, i64 0, i32 7
  %conv25.i = sext i8 %cid.098.i to i32
  %11 = load i32, i32* %s_nresidues.i, align 8, !dbg !1755, !tbaa !1226
  %cmp1588.i = icmp sgt i32 %11, 0, !dbg !1758
  br i1 %cmp1588.i, label %for.body17.i, label %for.end37.i, !dbg !1759

for.body17.i:                                     ; preds = %for.body.i, %for.inc34.i
  %12 = phi i32 [ %25, %for.inc34.i ], [ %11, %for.body.i ]
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %for.inc34.i ], [ 0, %for.body.i ]
  %tr.190.i = phi i32 [ %add.i, %for.inc34.i ], [ %tr.099.i, %for.body.i ]
  %ta.189.i = phi i32 [ %ta.2.lcssa.i, %for.inc34.i ], [ %ta.096.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv102.i, metadata !1720, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %tr.190.i, metadata !1721, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %ta.189.i, metadata !1723, metadata !DIExpression()) #20, !dbg !1729
  %13 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i, align 8, !dbg !1760, !tbaa !752
  %arrayidx.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %13, i64 %indvars.iv102.i, !dbg !1762
  %14 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i, align 8, !dbg !1762, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %14, metadata !1727, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 0, metadata !1722, metadata !DIExpression()) #20, !dbg !1729
  %r_natoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i64 0, i32 15
  %r_atoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i64 0, i32 17
  %r_resname.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i64 0, i32 4
  %add.i = add nsw i32 %tr.190.i, 1
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1, !dbg !1763
  %15 = load i32, i32* %r_natoms.i, align 8, !dbg !1764, !tbaa !714
  %cmp1985.i = icmp sgt i32 %15, 0, !dbg !1767
  br i1 %cmp1985.i, label %for.body21.preheader.i, label %for.inc34.i, !dbg !1768

for.body21.preheader.i:                           ; preds = %for.body17.i
  %16 = trunc i64 %indvars.iv.next103.i to i32
  br label %for.body21.i, !dbg !1768

for.body21.i:                                     ; preds = %for.body21.i, %for.body21.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body21.preheader.i ], [ %indvars.iv.next.i, %for.body21.i ]
  %ta.287.i = phi i32 [ %ta.189.i, %for.body21.preheader.i ], [ %inc22.i, %for.body21.i ]
  call void @llvm.dbg.value(metadata i32 %ta.287.i, metadata !1723, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1722, metadata !DIExpression()) #20, !dbg !1729
  %inc22.i = add nsw i32 %ta.287.i, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %inc22.i, metadata !1723, metadata !DIExpression()) #20, !dbg !1729
  %17 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i, align 8, !dbg !1771, !tbaa !1443
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %17, i64 %indvars.iv.i), metadata !1728, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #20, !dbg !1729
  %a_atomname.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %indvars.iv.i, i32 0, !dbg !1772
  %18 = load i8*, i8** %a_atomname.i, align 8, !dbg !1772, !tbaa !489
  %19 = load i8*, i8** %r_resname.i, align 8, !dbg !1773, !tbaa !706
  %arrayidx26.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %indvars.iv.i, i32 17, i64 0, !dbg !1774
  %20 = load double, double* %arrayidx26.i, align 8, !dbg !1774, !tbaa !668
  %arrayidx28.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1775
  %21 = load double, double* %arrayidx28.i, align 8, !dbg !1775, !tbaa !668
  %arrayidx30.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1776
  %22 = load double, double* %arrayidx30.i, align 8, !dbg !1776, !tbaa !668
  %call32.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %fp.021, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 noundef %inc22.i, i8* noundef %18, i8* noundef %19, i32 noundef %conv25.i, i32 noundef %add.i, double noundef %20, double noundef %21, double noundef %22, i32 noundef %inc.i, i32 noundef %16) #20, !dbg !1777
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1722, metadata !DIExpression()) #20, !dbg !1729
  %23 = load i32, i32* %r_natoms.i, align 8, !dbg !1764, !tbaa !714
  %24 = sext i32 %23 to i64, !dbg !1767
  %cmp19.i = icmp slt i64 %indvars.iv.next.i, %24, !dbg !1767
  br i1 %cmp19.i, label %for.body21.i, label %for.inc34.loopexit.i, !dbg !1768, !llvm.loop !1779

for.inc34.loopexit.i:                             ; preds = %for.body21.i
  %.pre.i = load i32, i32* %s_nresidues.i, align 8, !dbg !1755, !tbaa !1226
  br label %for.inc34.i, !dbg !1763

for.inc34.i:                                      ; preds = %for.inc34.loopexit.i, %for.body17.i
  %25 = phi i32 [ %12, %for.body17.i ], [ %.pre.i, %for.inc34.loopexit.i ], !dbg !1755
  %ta.2.lcssa.i = phi i32 [ %ta.189.i, %for.body17.i ], [ %inc22.i, %for.inc34.loopexit.i ], !dbg !1748
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next103.i, metadata !1720, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !1721, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %ta.2.lcssa.i, metadata !1723, metadata !DIExpression()) #20, !dbg !1729
  %26 = sext i32 %25 to i64, !dbg !1758
  %cmp15.i = icmp slt i64 %indvars.iv.next103.i, %26, !dbg !1758
  br i1 %cmp15.i, label %for.body17.i, label %for.end37.i, !dbg !1759, !llvm.loop !1781

for.end37.i:                                      ; preds = %for.inc34.i, %for.body.i
  %ta.1.lcssa.i = phi i32 [ %ta.096.i, %for.body.i ], [ %ta.2.lcssa.i, %for.inc34.i ], !dbg !1783
  %tr.1.lcssa.i = phi i32 [ %tr.099.i, %for.body.i ], [ %add.i, %for.inc34.i ], !dbg !1748
  %27 = load i32, i32* %m_nstrands.i, align 8, !dbg !1784, !tbaa !1736
  %cmp39.i = icmp sgt i32 %27, 1, !dbg !1786
  %inc42.i = zext i1 %cmp39.i to i8, !dbg !1787
  %spec.select.i = add i8 %cid.098.i, %inc42.i, !dbg !1787
  call void @llvm.dbg.value(metadata i8 %spec.select.i, metadata !1725, metadata !DIExpression()) #20, !dbg !1729
  %s_next.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0100.i, i64 0, i32 4, !dbg !1788
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1726, metadata !DIExpression()) #20, !dbg !1729
  %sp.0.i = load %struct.strand_t*, %struct.strand_t** %s_next.i, align 8, !dbg !1748, !tbaa !372
  call void @llvm.dbg.value(metadata i32 %tr.1.lcssa.i, metadata !1721, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i, metadata !1726, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1724, metadata !DIExpression()) #20, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %ta.1.lcssa.i, metadata !1723, metadata !DIExpression()) #20, !dbg !1729
  %tobool13.not.i = icmp eq %struct.strand_t* %sp.0.i, null, !dbg !1749
  br i1 %tobool13.not.i, label %fputcif.exit, label %for.body.i, !dbg !1749, !llvm.loop !1789

fputcif.exit:                                     ; preds = %for.end37.i, %if.end4.i
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1791, !tbaa !372
  %cmp9.not = icmp eq %struct._IO_FILE* %fp.021, %28, !dbg !1793
  br i1 %cmp9.not, label %cleanup, label %if.then10, !dbg !1794

if.then10:                                        ; preds = %fputcif.exit
  %call11 = tail call i32 @fclose(%struct._IO_FILE* noundef %fp.021), !dbg !1795
  br label %cleanup, !dbg !1795

cleanup:                                          ; preds = %fputcif.exit, %if.then10, %if.then
  ret i32 0, !dbg !1796
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @putbnd(i8* noundef %fname, %struct.molecule_t* noundef readonly %mol) local_unnamed_addr #0 !dbg !1797 {
entry:
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1801, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1802, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32* null, metadata !1814, metadata !DIExpression()), !dbg !1818
  %tobool.not = icmp eq %struct.molecule_t* %mol, null, !dbg !1819
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1821

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1822, !tbaa !372
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %0) #21, !dbg !1824
  br label %cleanup, !dbg !1825

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._IO_FILE* @fopen(i8* noundef %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1826
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call1, metadata !1803, metadata !DIExpression()), !dbg !1818
  %cmp = icmp eq %struct._IO_FILE* %call1, null, !dbg !1828
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !1829

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* noundef %fname) #20, !dbg !1830
  tail call void @exit(i32 noundef 1) #23, !dbg !1832
  unreachable, !dbg !1832

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !1818
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1833
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1804, metadata !DIExpression()), !dbg !1818
  %sp.0195 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !1835, !tbaa !372
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0195, metadata !1804, metadata !DIExpression()), !dbg !1818
  %tobool5.not196 = icmp eq %struct.strand_t* %sp.0195, null, !dbg !1836
  br i1 %tobool5.not196, label %for.end.thread, label %for.body, !dbg !1836

for.body:                                         ; preds = %if.end4, %for.body
  %sp.0198 = phi %struct.strand_t* [ %sp.0, %for.body ], [ %sp.0195, %if.end4 ]
  %tr.0197 = phi i32 [ %add, %for.body ], [ 0, %if.end4 ]
  call void @llvm.dbg.value(metadata i32 %tr.0197, metadata !1812, metadata !DIExpression()), !dbg !1818
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0198, i64 0, i32 5, !dbg !1837
  %2 = load i32, i32* %s_nresidues, align 8, !dbg !1837, !tbaa !1226
  %add = add nsw i32 %2, %tr.0197, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %add, metadata !1812, metadata !DIExpression()), !dbg !1818
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0198, i64 0, i32 4, !dbg !1840
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1804, metadata !DIExpression()), !dbg !1818
  %sp.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !1835, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0, metadata !1804, metadata !DIExpression()), !dbg !1818
  %tobool5.not = icmp eq %struct.strand_t* %sp.0, null, !dbg !1836
  br i1 %tobool5.not, label %for.end, label %for.body, !dbg !1836, !llvm.loop !1841

for.end:                                          ; preds = %for.body
  %phi.cast = sext i32 %add to i64, !dbg !1843
  %phi.bo = shl nsw i64 %phi.cast, 2, !dbg !1843
  %call6 = tail call noalias i8* @malloc(i64 noundef %phi.bo) #20, !dbg !1845
  %3 = bitcast i8* %call6 to i32*, !dbg !1846
  call void @llvm.dbg.value(metadata i32* %3, metadata !1814, metadata !DIExpression()), !dbg !1818
  %cmp7 = icmp eq i8* %call6, null, !dbg !1847
  br i1 %cmp7, label %clean_up.thread, label %for.cond13.preheader, !dbg !1848

for.end.thread:                                   ; preds = %if.end4
  %call6233 = tail call noalias i8* @malloc(i64 noundef 0) #20, !dbg !1845
  call void @llvm.dbg.value(metadata i32* %3, metadata !1814, metadata !DIExpression()), !dbg !1818
  %cmp7234 = icmp eq i8* %call6233, null, !dbg !1847
  br i1 %cmp7234, label %clean_up.thread, label %if.then103, !dbg !1848

for.cond13.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0195, metadata !1804, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 0, metadata !1807, metadata !DIExpression()), !dbg !1818
  br i1 %tobool5.not196, label %if.then103, label %for.body15, !dbg !1849

clean_up.thread:                                  ; preds = %for.end.thread, %for.end
  %call10 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #20, !dbg !1851
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.label(metadata !1817), !dbg !1853
  br label %if.end104, !dbg !1854

for.cond44.preheader:                             ; preds = %for.inc40
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0195, metadata !1804, metadata !DIExpression()), !dbg !1818
  br i1 %tobool5.not196, label %if.then103, label %for.cond47.preheader, !dbg !1855

for.body15:                                       ; preds = %for.cond13.preheader, %for.inc40
  %sp.1207 = phi %struct.strand_t* [ %sp.1, %for.inc40 ], [ %sp.0195, %for.cond13.preheader ]
  %tr.1206 = phi i32 [ %tr.2, %for.inc40 ], [ 0, %for.cond13.preheader ]
  %ta.0205 = phi i32 [ %ta.2, %for.inc40 ], [ 0, %for.cond13.preheader ]
  call void @llvm.dbg.value(metadata i32 %tr.1206, metadata !1812, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %ta.0205, metadata !1807, metadata !DIExpression()), !dbg !1818
  %idxprom = sext i32 %tr.1206 to i64, !dbg !1857
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom, !dbg !1857
  store i32 %ta.0205, i32* %arrayidx, align 4, !dbg !1860, !tbaa !522
  %s_nresidues16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.1207, i64 0, i32 5, !dbg !1861
  %4 = load i32, i32* %s_nresidues16, align 8, !dbg !1861, !tbaa !1226
  %cmp17 = icmp sgt i32 %4, 0, !dbg !1863
  br i1 %cmp17, label %if.then19, label %for.inc40, !dbg !1864

if.then19:                                        ; preds = %for.body15
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.1207, i64 0, i32 7, !dbg !1865
  %5 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !dbg !1865, !tbaa !752
  %6 = load %struct.residue_t*, %struct.residue_t** %5, align 8, !dbg !1867, !tbaa !372
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 15, !dbg !1868
  %7 = load i32, i32* %r_natoms, align 8, !dbg !1868, !tbaa !714
  %add21 = add nsw i32 %7, %ta.0205, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %add21, metadata !1807, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 1, metadata !1810, metadata !DIExpression()), !dbg !1818
  %cmp24199.not = icmp eq i32 %4, 1, !dbg !1870
  br i1 %cmp24199.not, label %for.end36, label %for.body26.preheader, !dbg !1873

for.body26.preheader:                             ; preds = %if.then19
  %wide.trip.count = zext i32 %4 to i64, !dbg !1870
  %8 = add nsw i64 %wide.trip.count, -1, !dbg !1873
  %xtraiter = and i64 %8, 1, !dbg !1873
  %9 = icmp eq i32 %4, 2, !dbg !1873
  br i1 %9, label %for.end36.loopexit.unr-lcssa, label %for.body26.preheader.new, !dbg !1873

for.body26.preheader.new:                         ; preds = %for.body26.preheader
  %unroll_iter = and i64 %8, -2, !dbg !1873
  br label %for.body26, !dbg !1873

for.body26:                                       ; preds = %for.body26, %for.body26.preheader.new
  %indvars.iv = phi i64 [ 1, %for.body26.preheader.new ], [ %indvars.iv.next.1, %for.body26 ]
  %ta.1200 = phi i32 [ %add21, %for.body26.preheader.new ], [ %add34.1, %for.body26 ]
  %niter = phi i64 [ 0, %for.body26.preheader.new ], [ %niter.next.1, %for.body26 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1810, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %ta.1200, metadata !1807, metadata !DIExpression()), !dbg !1818
  %10 = add nsw i64 %indvars.iv, %idxprom, !dbg !1874
  %arrayidx29 = getelementptr inbounds i32, i32* %3, i64 %10, !dbg !1876
  store i32 %ta.1200, i32* %arrayidx29, align 4, !dbg !1877, !tbaa !522
  %arrayidx32 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %5, i64 %indvars.iv, !dbg !1878
  %11 = load %struct.residue_t*, %struct.residue_t** %arrayidx32, align 8, !dbg !1878, !tbaa !372
  %r_natoms33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %11, i64 0, i32 15, !dbg !1879
  %12 = load i32, i32* %r_natoms33, align 8, !dbg !1879, !tbaa !714
  %add34 = add nsw i32 %12, %ta.1200, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1807, metadata !DIExpression()), !dbg !1818
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1810, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1810, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1807, metadata !DIExpression()), !dbg !1818
  %13 = add nsw i64 %indvars.iv.next, %idxprom, !dbg !1874
  %arrayidx29.1 = getelementptr inbounds i32, i32* %3, i64 %13, !dbg !1876
  store i32 %add34, i32* %arrayidx29.1, align 4, !dbg !1877, !tbaa !522
  %arrayidx32.1 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %5, i64 %indvars.iv.next, !dbg !1878
  %14 = load %struct.residue_t*, %struct.residue_t** %arrayidx32.1, align 8, !dbg !1878, !tbaa !372
  %r_natoms33.1 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i64 0, i32 15, !dbg !1879
  %15 = load i32, i32* %r_natoms33.1, align 8, !dbg !1879, !tbaa !714
  %add34.1 = add nsw i32 %15, %add34, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %add34.1, metadata !1807, metadata !DIExpression()), !dbg !1818
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !1810, metadata !DIExpression()), !dbg !1818
  %niter.next.1 = add i64 %niter, 2, !dbg !1873
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1873
  br i1 %niter.ncmp.1, label %for.end36.loopexit.unr-lcssa, label %for.body26, !dbg !1873, !llvm.loop !1882

for.end36.loopexit.unr-lcssa:                     ; preds = %for.body26, %for.body26.preheader
  %add34.lcssa.ph = phi i32 [ undef, %for.body26.preheader ], [ %add34.1, %for.body26 ]
  %indvars.iv.unr = phi i64 [ 1, %for.body26.preheader ], [ %indvars.iv.next.1, %for.body26 ]
  %ta.1200.unr = phi i32 [ %add21, %for.body26.preheader ], [ %add34.1, %for.body26 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1873
  br i1 %lcmp.mod.not, label %for.end36, label %for.body26.epil, !dbg !1873

for.body26.epil:                                  ; preds = %for.end36.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %indvars.iv.unr, metadata !1810, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %ta.1200.unr, metadata !1807, metadata !DIExpression()), !dbg !1818
  %16 = add nsw i64 %indvars.iv.unr, %idxprom, !dbg !1874
  %arrayidx29.epil = getelementptr inbounds i32, i32* %3, i64 %16, !dbg !1876
  store i32 %ta.1200.unr, i32* %arrayidx29.epil, align 4, !dbg !1877, !tbaa !522
  %arrayidx32.epil = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %5, i64 %indvars.iv.unr, !dbg !1878
  %17 = load %struct.residue_t*, %struct.residue_t** %arrayidx32.epil, align 8, !dbg !1878, !tbaa !372
  %r_natoms33.epil = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 15, !dbg !1879
  %18 = load i32, i32* %r_natoms33.epil, align 8, !dbg !1879, !tbaa !714
  %add34.epil = add nsw i32 %18, %ta.1200.unr, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %add34.epil, metadata !1807, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %indvars.iv.unr, metadata !1810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1818
  br label %for.end36, !dbg !1884

for.end36:                                        ; preds = %for.body26.epil, %for.end36.loopexit.unr-lcssa, %if.then19
  %ta.1.lcssa = phi i32 [ %add21, %if.then19 ], [ %add34.lcssa.ph, %for.end36.loopexit.unr-lcssa ], [ %add34.epil, %for.body26.epil ], !dbg !1885
  %add38 = add nsw i32 %4, %tr.1206, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %add38, metadata !1812, metadata !DIExpression()), !dbg !1818
  br label %for.inc40, !dbg !1886

for.inc40:                                        ; preds = %for.body15, %for.end36
  %ta.2 = phi i32 [ %ta.1.lcssa, %for.end36 ], [ %ta.0205, %for.body15 ], !dbg !1887
  %tr.2 = phi i32 [ %add38, %for.end36 ], [ %tr.1206, %for.body15 ], !dbg !1887
  call void @llvm.dbg.value(metadata i32 %tr.2, metadata !1812, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %ta.2, metadata !1807, metadata !DIExpression()), !dbg !1818
  %s_next41 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.1207, i64 0, i32 4, !dbg !1888
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1804, metadata !DIExpression()), !dbg !1818
  %sp.1 = load %struct.strand_t*, %struct.strand_t** %s_next41, align 8, !dbg !1887, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.1, metadata !1804, metadata !DIExpression()), !dbg !1818
  %tobool14.not = icmp eq %struct.strand_t* %sp.1, null, !dbg !1849
  br i1 %tobool14.not, label %for.cond44.preheader, label %for.body15, !dbg !1849, !llvm.loop !1889

for.cond47.preheader:                             ; preds = %for.cond44.preheader, %for.end96
  %sp.2221 = phi %struct.strand_t* [ %sp.2, %for.end96 ], [ %sp.0195, %for.cond44.preheader ]
  %tr.3220 = phi i32 [ %add98, %for.end96 ], [ 0, %for.cond44.preheader ]
  call void @llvm.dbg.value(metadata i32 %tr.3220, metadata !1812, metadata !DIExpression()), !dbg !1818
  %s_nresidues48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.2221, i64 0, i32 5
  %s_residues52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.2221, i64 0, i32 7
  %add86 = add i32 %tr.3220, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !1810, metadata !DIExpression()), !dbg !1818
  %19 = load i32, i32* %s_nresidues48, align 8, !dbg !1891, !tbaa !1226
  %cmp49214 = icmp sgt i32 %19, 0, !dbg !1896
  br i1 %cmp49214, label %for.body51.preheader, label %for.end96, !dbg !1897

for.body51.preheader:                             ; preds = %for.cond47.preheader
  %20 = sext i32 %tr.3220 to i64, !dbg !1897
  br label %for.body51, !dbg !1897

for.body51:                                       ; preds = %for.body51.preheader, %for.inc94
  %indvars.iv228 = phi i64 [ 0, %for.body51.preheader ], [ %indvars.iv.next229, %for.inc94 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv228, metadata !1810, metadata !DIExpression()), !dbg !1818
  %21 = load %struct.residue_t**, %struct.residue_t*** %s_residues52, align 8, !dbg !1898, !tbaa !752
  %arrayidx54 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %21, i64 %indvars.iv228, !dbg !1900
  %22 = load %struct.residue_t*, %struct.residue_t** %arrayidx54, align 8, !dbg !1900, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %22, metadata !1805, metadata !DIExpression()), !dbg !1818
  %23 = add nsw i64 %indvars.iv228, %20, !dbg !1901
  %arrayidx57 = getelementptr inbounds i32, i32* %3, i64 %23, !dbg !1902
  %24 = load i32, i32* %arrayidx57, align 4, !dbg !1902, !tbaa !522
  call void @llvm.dbg.value(metadata i32 %24, metadata !1806, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 0, metadata !1815, metadata !DIExpression()), !dbg !1818
  %r_nintbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i64 0, i32 11
  %r_intbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i64 0, i32 12
  %25 = load i32, i32* %r_nintbonds, align 8, !dbg !1903, !tbaa !1906
  %cmp59208 = icmp sgt i32 %25, 0, !dbg !1907
  br i1 %cmp59208, label %for.body61, label %for.end74, !dbg !1908

for.body61:                                       ; preds = %for.body51, %for.body61
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %for.body61 ], [ 0, %for.body51 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv225, metadata !1815, metadata !DIExpression()), !dbg !1818
  %26 = load [2 x i32]*, [2 x i32]** %r_intbonds, align 8, !dbg !1909, !tbaa !1911
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 %indvars.iv225, i64 0, !dbg !1912
  %27 = load i32, i32* %arrayidx64, align 4, !dbg !1912, !tbaa !522
  %add65 = add nsw i32 %27, %24, !dbg !1913
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 %indvars.iv225, i64 1, !dbg !1914
  %28 = load i32, i32* %arrayidx69, align 4, !dbg !1914, !tbaa !522
  %add70 = add nsw i32 %28, %24, !dbg !1915
  %call71 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %call1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 noundef %add65, i32 noundef %add70), !dbg !1916
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next226, metadata !1815, metadata !DIExpression()), !dbg !1818
  %29 = load i32, i32* %r_nintbonds, align 8, !dbg !1903, !tbaa !1906
  %30 = sext i32 %29 to i64, !dbg !1907
  %cmp59 = icmp slt i64 %indvars.iv.next226, %30, !dbg !1907
  br i1 %cmp59, label %for.body61, label %for.end74, !dbg !1908, !llvm.loop !1918

for.end74:                                        ; preds = %for.body61, %for.body51
  %r_extbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i64 0, i32 10, !dbg !1920
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1816, metadata !DIExpression()), !dbg !1818
  %ebp.0210 = load %struct.extbond_t*, %struct.extbond_t** %r_extbonds, align 8, !dbg !1922, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.extbond_t* %ebp.0210, metadata !1816, metadata !DIExpression()), !dbg !1818
  %tobool76.not211 = icmp eq %struct.extbond_t* %ebp.0210, null, !dbg !1923
  br i1 %tobool76.not211, label %for.inc94, label %for.body77, !dbg !1923

for.body77:                                       ; preds = %for.end74, %for.inc92
  %ebp.0212 = phi %struct.extbond_t* [ %ebp.0, %for.inc92 ], [ %ebp.0210, %for.end74 ]
  %eb_rnum = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %ebp.0212, i64 0, i32 2, !dbg !1924
  %31 = load i32, i32* %eb_rnum, align 4, !dbg !1924, !tbaa !1928
  call void @llvm.dbg.value(metadata i32 %31, metadata !1811, metadata !DIExpression()), !dbg !1818
  %32 = sext i32 %31 to i64, !dbg !1930
  %cmp79.not = icmp slt i64 %indvars.iv228, %32, !dbg !1930
  br i1 %cmp79.not, label %if.end82, label %for.inc92, !dbg !1931

if.end82:                                         ; preds = %for.body77
  call void @llvm.dbg.value(metadata i32 %24, metadata !1808, metadata !DIExpression()), !dbg !1818
  %sub = add i32 %add86, %31, !dbg !1932
  %idxprom87 = sext i32 %sub to i64, !dbg !1933
  %arrayidx88 = getelementptr inbounds i32, i32* %3, i64 %idxprom87, !dbg !1933
  %33 = load i32, i32* %arrayidx88, align 4, !dbg !1933, !tbaa !522
  call void @llvm.dbg.value(metadata i32 %33, metadata !1809, metadata !DIExpression()), !dbg !1818
  %eb_anum = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %ebp.0212, i64 0, i32 1, !dbg !1934
  %34 = load i32, i32* %eb_anum, align 8, !dbg !1934, !tbaa !1935
  %add89 = add nsw i32 %34, %24, !dbg !1936
  %eb_ranum = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %ebp.0212, i64 0, i32 3, !dbg !1937
  %35 = load i32, i32* %eb_ranum, align 8, !dbg !1937, !tbaa !1938
  %add90 = add nsw i32 %35, %33, !dbg !1939
  %call91 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %call1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 noundef %add89, i32 noundef %add90), !dbg !1940
  br label %for.inc92, !dbg !1941

for.inc92:                                        ; preds = %for.body77, %if.end82
  %eb_next = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %ebp.0212, i64 0, i32 0, !dbg !1942
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1816, metadata !DIExpression()), !dbg !1818
  %ebp.0 = load %struct.extbond_t*, %struct.extbond_t** %eb_next, align 8, !dbg !1922, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.extbond_t* %ebp.0, metadata !1816, metadata !DIExpression()), !dbg !1818
  %tobool76.not = icmp eq %struct.extbond_t* %ebp.0, null, !dbg !1923
  br i1 %tobool76.not, label %for.inc94, label %for.body77, !dbg !1923, !llvm.loop !1943

for.inc94:                                        ; preds = %for.inc92, %for.end74
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next229, metadata !1810, metadata !DIExpression()), !dbg !1818
  %36 = load i32, i32* %s_nresidues48, align 8, !dbg !1891, !tbaa !1226
  %37 = sext i32 %36 to i64, !dbg !1896
  %cmp49 = icmp slt i64 %indvars.iv.next229, %37, !dbg !1896
  br i1 %cmp49, label %for.body51, label %for.end96, !dbg !1897, !llvm.loop !1946

for.end96:                                        ; preds = %for.inc94, %for.cond47.preheader
  %.lcssa = phi i32 [ %19, %for.cond47.preheader ], [ %36, %for.inc94 ], !dbg !1891
  %add98 = add nsw i32 %.lcssa, %tr.3220, !dbg !1948
  call void @llvm.dbg.value(metadata i32 %add98, metadata !1812, metadata !DIExpression()), !dbg !1818
  %s_next100 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.2221, i64 0, i32 4, !dbg !1949
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1804, metadata !DIExpression()), !dbg !1818
  %sp.2 = load %struct.strand_t*, %struct.strand_t** %s_next100, align 8, !dbg !1950, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.2, metadata !1804, metadata !DIExpression()), !dbg !1818
  %tobool45.not = icmp eq %struct.strand_t* %sp.2, null, !dbg !1855
  br i1 %tobool45.not, label %if.then103, label %for.cond47.preheader, !dbg !1855, !llvm.loop !1951

if.then103:                                       ; preds = %for.end96, %for.end.thread, %for.cond13.preheader, %for.cond44.preheader
  %call6235237239 = phi i8* [ %call6, %for.cond44.preheader ], [ %call6, %for.cond13.preheader ], [ %call6233, %for.end.thread ], [ %call6, %for.end96 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.label(metadata !1817), !dbg !1853
  tail call void @free(i8* noundef nonnull %call6235237239) #20, !dbg !1953
  br label %if.end104, !dbg !1953

if.end104:                                        ; preds = %clean_up.thread, %if.then103
  %rval.0194 = phi i32 [ 1, %clean_up.thread ], [ 0, %if.then103 ]
  %call105 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call1), !dbg !1955
  br label %cleanup, !dbg !1956

cleanup:                                          ; preds = %if.end104, %if.then
  %retval.0 = phi i32 [ %rval.0194, %if.end104 ], [ 0, %if.then ], !dbg !1818
  ret i32 %retval.0, !dbg !1957
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @putdist(i8* noundef %fname, %struct.molecule_t* noundef %mol, i8* noundef %aexp1, i8* noundef %aexp2) local_unnamed_addr #0 !dbg !1958 {
entry:
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1962, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1963, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8* %aexp1, metadata !1964, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8* %aexp2, metadata !1965, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i32 0, metadata !1978, metadata !DIExpression()), !dbg !1980
  %tobool.not = icmp eq %struct.molecule_t* %mol, null, !dbg !1981
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1983

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1984, !tbaa !372
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %0) #21, !dbg !1986
  br label %cleanup, !dbg !1987

if.end:                                           ; preds = %entry
  tail call void @select_atoms(%struct.molecule_t* noundef nonnull %mol, i8* noundef %aexp1) #20, !dbg !1988
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1989
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1967, metadata !DIExpression()), !dbg !1980
  %sp1.0229 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !1991, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.0229, metadata !1967, metadata !DIExpression()), !dbg !1980
  %tobool1.not230 = icmp eq %struct.strand_t* %sp1.0229, null, !dbg !1992
  br i1 %tobool1.not230, label %for.end29, label %for.body, !dbg !1992

for.body:                                         ; preds = %if.end, %for.inc28
  %sp1.0231 = phi %struct.strand_t* [ %sp1.0, %for.inc28 ], [ %sp1.0229, %if.end ]
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.0231, i64 0, i32 2, !dbg !1993
  %2 = load i32, i32* %s_attr, align 4, !dbg !1996, !tbaa !1997
  %and = and i32 %2, -3, !dbg !1996
  %and3 = shl i32 %2, 1, !dbg !1998
  %3 = and i32 %and3, 2, !dbg !1998
  %or = or i32 %3, %and, !dbg !1999
  store i32 %or, i32* %s_attr, align 4, !dbg !1999, !tbaa !1997
  call void @llvm.dbg.value(metadata i32 0, metadata !1973, metadata !DIExpression()), !dbg !1980
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.0231, i64 0, i32 5
  %4 = load i32, i32* %s_nresidues, align 8, !tbaa !1226
  call void @llvm.dbg.value(metadata i32 0, metadata !1973, metadata !DIExpression()), !dbg !1980
  %cmp227 = icmp sgt i32 %4, 0, !dbg !2000
  br i1 %cmp227, label %for.body7.lr.ph, label %for.inc28, !dbg !2003

for.body7.lr.ph:                                  ; preds = %for.body
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.0231, i64 0, i32 7
  %5 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !tbaa !752
  %wide.trip.count = zext i32 %4 to i64, !dbg !2000
  br label %for.body7, !dbg !2003

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc25
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.inc25 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1973, metadata !DIExpression()), !dbg !1980
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %5, i64 %indvars.iv, !dbg !2004
  %6 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !2004, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %6, metadata !1968, metadata !DIExpression()), !dbg !1980
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 6, !dbg !2006
  %7 = load i32, i32* %r_attr, align 8, !dbg !2007, !tbaa !2008
  %and8 = and i32 %7, -3, !dbg !2007
  %and10 = shl i32 %7, 1, !dbg !2009
  %8 = and i32 %and10, 2, !dbg !2009
  %or14 = or i32 %8, %and8, !dbg !2010
  store i32 %or14, i32* %r_attr, align 8, !dbg !2010, !tbaa !2008
  call void @llvm.dbg.value(metadata i32 0, metadata !1975, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1970, metadata !DIExpression()), !dbg !1980
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 15
  %9 = load i32, i32* %r_natoms, align 8, !tbaa !714
  call void @llvm.dbg.value(metadata i32 0, metadata !1975, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1970, metadata !DIExpression()), !dbg !1980
  %cmp16224 = icmp sgt i32 %9, 0, !dbg !2011
  br i1 %cmp16224, label %for.body17.preheader, label %for.inc25, !dbg !2014

for.body17.preheader:                             ; preds = %for.body7
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 17, !dbg !2015
  %10 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !dbg !2015, !tbaa !1443
  call void @llvm.dbg.value(metadata %struct.atom_t* %10, metadata !1970, metadata !DIExpression()), !dbg !1980
  %xtraiter = and i32 %9, 1, !dbg !2014
  %11 = icmp eq i32 %9, 1, !dbg !2014
  br i1 %11, label %for.inc25.loopexit.unr-lcssa, label %for.body17.preheader.new, !dbg !2014

for.body17.preheader.new:                         ; preds = %for.body17.preheader
  %unroll_iter = and i32 %9, -2, !dbg !2014
  br label %for.body17, !dbg !2014

for.body17:                                       ; preds = %for.body17, %for.body17.preheader.new
  %ap1.0225 = phi %struct.atom_t* [ %10, %for.body17.preheader.new ], [ %incdec.ptr.1, %for.body17 ]
  %niter = phi i32 [ 0, %for.body17.preheader.new ], [ %niter.next.1, %for.body17 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1975, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap1.0225, metadata !1970, metadata !DIExpression()), !dbg !1980
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap1.0225, i64 0, i32 2, !dbg !2016
  %12 = load i32, i32* %a_attr, align 8, !dbg !2018, !tbaa !797
  %and18 = and i32 %12, -3, !dbg !2018
  %and20 = shl i32 %12, 1, !dbg !2019
  %13 = and i32 %and20, 2, !dbg !2019
  %or24 = or i32 %13, %and18, !dbg !2020
  store i32 %or24, i32* %a_attr, align 8, !dbg !2020, !tbaa !797
  call void @llvm.dbg.value(metadata i32 poison, metadata !1975, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap1.0225, metadata !1970, metadata !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value)), !dbg !1980
  call void @llvm.dbg.value(metadata i32 poison, metadata !1975, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap1.0225, metadata !1970, metadata !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value)), !dbg !1980
  %a_attr.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap1.0225, i64 1, i32 2, !dbg !2016
  %14 = load i32, i32* %a_attr.1, align 8, !dbg !2018, !tbaa !797
  %and18.1 = and i32 %14, -3, !dbg !2018
  %and20.1 = shl i32 %14, 1, !dbg !2019
  %15 = and i32 %and20.1, 2, !dbg !2019
  %or24.1 = or i32 %15, %and18.1, !dbg !2020
  store i32 %or24.1, i32* %a_attr.1, align 8, !dbg !2020, !tbaa !797
  call void @llvm.dbg.value(metadata i32 poison, metadata !1975, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1980
  %incdec.ptr.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap1.0225, i64 2, !dbg !2021
  call void @llvm.dbg.value(metadata %struct.atom_t* %incdec.ptr.1, metadata !1970, metadata !DIExpression()), !dbg !1980
  %niter.next.1 = add i32 %niter, 2, !dbg !2014
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !2014
  br i1 %niter.ncmp.1, label %for.inc25.loopexit.unr-lcssa, label %for.body17, !dbg !2014, !llvm.loop !2022

for.inc25.loopexit.unr-lcssa:                     ; preds = %for.body17, %for.body17.preheader
  %ap1.0225.unr = phi %struct.atom_t* [ %10, %for.body17.preheader ], [ %incdec.ptr.1, %for.body17 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2014
  br i1 %lcmp.mod.not, label %for.inc25, label %for.body17.epil, !dbg !2014

for.body17.epil:                                  ; preds = %for.inc25.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i32 undef, metadata !1975, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap1.0225.unr, metadata !1970, metadata !DIExpression()), !dbg !1980
  %a_attr.epil = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap1.0225.unr, i64 0, i32 2, !dbg !2016
  %16 = load i32, i32* %a_attr.epil, align 8, !dbg !2018, !tbaa !797
  %and18.epil = and i32 %16, -3, !dbg !2018
  %and20.epil = shl i32 %16, 1, !dbg !2019
  %17 = and i32 %and20.epil, 2, !dbg !2019
  %or24.epil = or i32 %17, %and18.epil, !dbg !2020
  store i32 %or24.epil, i32* %a_attr.epil, align 8, !dbg !2020, !tbaa !797
  call void @llvm.dbg.value(metadata i32 undef, metadata !1975, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap1.0225.unr, metadata !1970, metadata !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value)), !dbg !1980
  br label %for.inc25, !dbg !2024

for.inc25:                                        ; preds = %for.body17.epil, %for.inc25.loopexit.unr-lcssa, %for.body7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1973, metadata !DIExpression()), !dbg !1980
  %exitcond262.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2000
  br i1 %exitcond262.not, label %for.inc28, label %for.body7, !dbg !2003, !llvm.loop !2025

for.inc28:                                        ; preds = %for.inc25, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.0231, i64 0, i32 4, !dbg !2027
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1967, metadata !DIExpression()), !dbg !1980
  %sp1.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !1991, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.0, metadata !1967, metadata !DIExpression()), !dbg !1980
  %tobool1.not = icmp eq %struct.strand_t* %sp1.0, null, !dbg !1992
  br i1 %tobool1.not, label %for.end29, label %for.body, !dbg !1992, !llvm.loop !2028

for.end29:                                        ; preds = %for.inc28, %if.end
  tail call void @select_atoms(%struct.molecule_t* noundef nonnull %mol, i8* noundef %aexp2) #20, !dbg !2030
  call void @llvm.dbg.value(metadata i32 0, metadata !1972, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1967, metadata !DIExpression()), !dbg !1980
  %sp1.1232 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !2031, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.1232, metadata !1967, metadata !DIExpression()), !dbg !1980
  %tobool32.not233 = icmp eq %struct.strand_t* %sp1.1232, null, !dbg !2033
  br i1 %tobool32.not233, label %for.end37, label %for.body33, !dbg !2033

for.body33:                                       ; preds = %for.end29, %for.body33
  %sp1.1235 = phi %struct.strand_t* [ %sp1.1, %for.body33 ], [ %sp1.1232, %for.end29 ]
  %tr.0234 = phi i32 [ %add, %for.body33 ], [ 0, %for.end29 ]
  call void @llvm.dbg.value(metadata i32 %tr.0234, metadata !1972, metadata !DIExpression()), !dbg !1980
  %s_nresidues34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.1235, i64 0, i32 5, !dbg !2034
  %18 = load i32, i32* %s_nresidues34, align 8, !dbg !2034, !tbaa !1226
  %add = add nsw i32 %18, %tr.0234, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %add, metadata !1972, metadata !DIExpression()), !dbg !1980
  %s_next36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.1235, i64 0, i32 4, !dbg !2037
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1967, metadata !DIExpression()), !dbg !1980
  %sp1.1 = load %struct.strand_t*, %struct.strand_t** %s_next36, align 8, !dbg !2031, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.1, metadata !1967, metadata !DIExpression()), !dbg !1980
  %tobool32.not = icmp eq %struct.strand_t* %sp1.1, null, !dbg !2033
  br i1 %tobool32.not, label %for.end37, label %for.body33, !dbg !2033, !llvm.loop !2038

for.end37:                                        ; preds = %for.body33, %for.end29
  %tr.0.lcssa = phi i32 [ 0, %for.end29 ], [ %add, %for.body33 ], !dbg !2031
  %conv = sext i32 %tr.0.lcssa to i64, !dbg !2040
  %mul = shl nsw i64 %conv, 3, !dbg !2042
  %call38 = tail call noalias i8* @malloc(i64 noundef %mul) #20, !dbg !2043
  %19 = bitcast i8* %call38 to %struct.residue_t**, !dbg !2044
  call void @llvm.dbg.value(metadata %struct.residue_t** %19, metadata !1977, metadata !DIExpression()), !dbg !1980
  %cmp39 = icmp eq i8* %call38, null, !dbg !2045
  br i1 %cmp39, label %clean_up.thread, label %for.cond45.preheader, !dbg !2046

for.cond45.preheader:                             ; preds = %for.end37
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.1232, metadata !1967, metadata !DIExpression()), !dbg !1980
  br i1 %tobool32.not233, label %for.end64, label %for.cond48.preheader, !dbg !2047

clean_up.thread:                                  ; preds = %for.end37
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2049, !tbaa !372
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %20) #21, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %cnt.6, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.label(metadata !1979), !dbg !2052
  br label %cleanup, !dbg !2053

for.cond48.preheader:                             ; preds = %for.cond45.preheader, %for.inc62
  %sp1.2243 = phi %struct.strand_t* [ %sp1.2, %for.inc62 ], [ %sp1.1232, %for.cond45.preheader ]
  %r2.0242 = phi i32 [ %r2.1.lcssa, %for.inc62 ], [ 0, %for.cond45.preheader ]
  call void @llvm.dbg.value(metadata i32 %r2.0242, metadata !1974, metadata !DIExpression()), !dbg !1980
  %s_nresidues49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.2243, i64 0, i32 5
  %22 = load i32, i32* %s_nresidues49, align 8, !tbaa !1226
  call void @llvm.dbg.value(metadata i32 0, metadata !1973, metadata !DIExpression()), !dbg !1980
  %cmp50236 = icmp sgt i32 %22, 0, !dbg !2054
  br i1 %cmp50236, label %for.body52.lr.ph, label %for.inc62, !dbg !2059

for.body52.lr.ph:                                 ; preds = %for.cond48.preheader
  %s_residues53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.2243, i64 0, i32 7
  %23 = bitcast %struct.residue_t*** %s_residues53 to i8**
  %24 = load i8*, i8** %23, align 8, !tbaa !752
  %25 = sext i32 %r2.0242 to i64, !dbg !2059
  %26 = shl nsw i64 %25, 3, !dbg !2059
  %scevgep = getelementptr i8, i8* %call38, i64 %26, !dbg !2059
  %27 = zext i32 %22 to i64, !dbg !2059
  %28 = shl nuw nsw i64 %27, 3, !dbg !2059
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %scevgep, i8* align 8 %24, i64 %28, i1 false), !dbg !2060, !tbaa !372
  call void @llvm.dbg.value(metadata i32 undef, metadata !1973, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i32 undef, metadata !1974, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1980
  %29 = add i32 %r2.0242, %22, !dbg !2059
  br label %for.inc62, !dbg !2061

for.inc62:                                        ; preds = %for.body52.lr.ph, %for.cond48.preheader
  %r2.1.lcssa = phi i32 [ %r2.0242, %for.cond48.preheader ], [ %29, %for.body52.lr.ph ], !dbg !2062
  %s_next63 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.2243, i64 0, i32 4, !dbg !2061
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1967, metadata !DIExpression()), !dbg !1980
  %sp1.2 = load %struct.strand_t*, %struct.strand_t** %s_next63, align 8, !dbg !2062, !tbaa !372
  call void @llvm.dbg.value(metadata i32 %r2.1.lcssa, metadata !1974, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp1.2, metadata !1967, metadata !DIExpression()), !dbg !1980
  %tobool46.not = icmp eq %struct.strand_t* %sp1.2, null, !dbg !2047
  br i1 %tobool46.not, label %for.end64, label %for.cond48.preheader, !dbg !2047, !llvm.loop !2063

for.end64:                                        ; preds = %for.inc62, %for.cond45.preheader
  %call65 = tail call %struct._IO_FILE* @fopen(i8* noundef %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2065
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call65, metadata !1966, metadata !DIExpression()), !dbg !1980
  %cmp66 = icmp eq %struct._IO_FILE* %call65, null, !dbg !2067
  br i1 %cmp66, label %if.then68, label %for.cond71.preheader, !dbg !2068

for.cond71.preheader:                             ; preds = %for.end64
  call void @llvm.dbg.value(metadata i32 0, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i32 0, metadata !1973, metadata !DIExpression()), !dbg !1980
  %cmp72256 = icmp sgt i32 %tr.0.lcssa, 0, !dbg !2069
  br i1 %cmp72256, label %for.body74.us.preheader, label %if.then129, !dbg !2072

for.body74.us.preheader:                          ; preds = %for.cond71.preheader
  %wide.trip.count286 = zext i32 %tr.0.lcssa to i64, !dbg !2069
  br label %for.body74.us, !dbg !2072

for.body74.us:                                    ; preds = %for.body74.us.preheader, %for.inc125.us
  %indvars.iv283 = phi i64 [ 0, %for.body74.us.preheader ], [ %indvars.iv.next284, %for.inc125.us ]
  %cnt.0258.us = phi i32 [ 0, %for.body74.us.preheader ], [ %cnt.1.lcssa.us, %for.inc125.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.0258.us, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %indvars.iv283, metadata !1973, metadata !DIExpression()), !dbg !1980
  %arrayidx76.us = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %19, i64 %indvars.iv283, !dbg !2073
  %30 = load %struct.residue_t*, %struct.residue_t** %arrayidx76.us, align 8, !dbg !2073, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %30, metadata !1968, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i32 0, metadata !1975, metadata !DIExpression()), !dbg !1980
  %r_natoms78.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %30, i64 0, i32 15
  %r_atoms82.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %30, i64 0, i32 17
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1, !dbg !2075
  %r_resname.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %30, i64 0, i32 4
  %31 = load i32, i32* %r_natoms78.us, align 8, !dbg !2076, !tbaa !714
  %cmp79252.us = icmp sgt i32 %31, 0, !dbg !2079
  br i1 %cmp79252.us, label %for.body81.us.us.preheader, label %for.inc125.us, !dbg !2080

for.body81.us.us.preheader:                       ; preds = %for.body74.us
  %32 = trunc i64 %indvars.iv.next284 to i32
  br label %for.body81.us.us, !dbg !2080

for.inc125.us:                                    ; preds = %for.inc122.us.us, %for.body74.us
  %cnt.1.lcssa.us = phi i32 [ %cnt.0258.us, %for.body74.us ], [ %cnt.5.us.us, %for.inc122.us.us ], !dbg !2081
  call void @llvm.dbg.value(metadata i32 %cnt.1.lcssa.us, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next284, metadata !1973, metadata !DIExpression()), !dbg !1980
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286, !dbg !2069
  br i1 %exitcond287.not, label %if.then129, label %for.body74.us, !dbg !2072, !llvm.loop !2082

for.body81.us.us:                                 ; preds = %for.body81.us.us.preheader, %for.inc122.us.us
  %33 = phi i32 [ %31, %for.body81.us.us.preheader ], [ %50, %for.inc122.us.us ]
  %indvars.iv280 = phi i64 [ 0, %for.body81.us.us.preheader ], [ %indvars.iv.next281, %for.inc122.us.us ]
  %cnt.1254.us.us = phi i32 [ %cnt.0258.us, %for.body81.us.us.preheader ], [ %cnt.5.us.us, %for.inc122.us.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.1254.us.us, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %indvars.iv280, metadata !1975, metadata !DIExpression()), !dbg !1980
  %34 = load %struct.atom_t*, %struct.atom_t** %r_atoms82.us, align 8, !dbg !2084, !tbaa !1443
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %34, i64 %indvars.iv280), metadata !1970, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1980
  %a_attr85.us.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv280, i32 2, !dbg !2086
  %35 = load i32, i32* %a_attr85.us.us, align 8, !dbg !2086, !tbaa !797
  %and86.us.us = and i32 %35, 2, !dbg !2088
  %tobool87.not.us.us = icmp eq i32 %and86.us.us, 0, !dbg !2088
  br i1 %tobool87.not.us.us, label %for.inc122.us.us, label %for.cond89.preheader.us.us, !dbg !2089

for.body92.us.us:                                 ; preds = %for.cond89.preheader.us.us, %for.inc118.us.us
  %indvars.iv275 = phi i64 [ 0, %for.cond89.preheader.us.us ], [ %indvars.iv.next276, %for.inc118.us.us ]
  %cnt.2250.us.us = phi i32 [ %cnt.1254.us.us, %for.cond89.preheader.us.us ], [ %cnt.3.lcssa.us.us, %for.inc118.us.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.2250.us.us, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %indvars.iv275, metadata !1974, metadata !DIExpression()), !dbg !1980
  %arrayidx94.us.us = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %19, i64 %indvars.iv275, !dbg !2090
  %36 = load %struct.residue_t*, %struct.residue_t** %arrayidx94.us.us, align 8, !dbg !2090, !tbaa !372
  call void @llvm.dbg.value(metadata %struct.residue_t* %36, metadata !1969, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i32 0, metadata !1976, metadata !DIExpression()), !dbg !1980
  %r_natoms96.us.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %36, i64 0, i32 15
  %r_atoms100.us.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %36, i64 0, i32 17
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1, !dbg !2095
  %r_resname109.us.us = getelementptr inbounds %struct.residue_t, %struct.residue_t* %36, i64 0, i32 4
  %37 = load i32, i32* %r_natoms96.us.us, align 8, !dbg !2096, !tbaa !714
  %cmp97244.us.us = icmp sgt i32 %37, 0, !dbg !2099
  br i1 %cmp97244.us.us, label %for.body99.us.us.preheader, label %for.inc118.us.us, !dbg !2100

for.body99.us.us.preheader:                       ; preds = %for.body92.us.us
  %38 = trunc i64 %indvars.iv.next276 to i32
  br label %for.body99.us.us, !dbg !2100

for.inc118.us.us:                                 ; preds = %for.inc115.us.us, %for.body92.us.us
  %cnt.3.lcssa.us.us = phi i32 [ %cnt.2250.us.us, %for.body92.us.us ], [ %cnt.4.us.us, %for.inc115.us.us ], !dbg !2101
  call void @llvm.dbg.value(metadata i32 %cnt.3.lcssa.us.us, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next276, metadata !1974, metadata !DIExpression()), !dbg !1980
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count286, !dbg !2102
  br i1 %exitcond279.not, label %for.inc122.us.us.loopexit, label %for.body92.us.us, !dbg !2103, !llvm.loop !2104

for.body99.us.us:                                 ; preds = %for.body99.us.us.preheader, %for.inc115.us.us
  %39 = phi i32 [ %37, %for.body99.us.us.preheader ], [ %48, %for.inc115.us.us ]
  %indvars.iv272 = phi i64 [ 0, %for.body99.us.us.preheader ], [ %indvars.iv.next273, %for.inc115.us.us ]
  %cnt.3246.us.us = phi i32 [ %cnt.2250.us.us, %for.body99.us.us.preheader ], [ %cnt.4.us.us, %for.inc115.us.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.3246.us.us, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %indvars.iv272, metadata !1976, metadata !DIExpression()), !dbg !1980
  %40 = load %struct.atom_t*, %struct.atom_t** %r_atoms100.us.us, align 8, !dbg !2106, !tbaa !1443
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %40, i64 %indvars.iv272), metadata !1971, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1980
  %a_attr103.us.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv272, i32 2, !dbg !2108
  %41 = load i32, i32* %a_attr103.us.us, align 8, !dbg !2108, !tbaa !797
  %and104.us.us = and i32 %41, 1, !dbg !2110
  %tobool105.not.us.us = icmp eq i32 %and104.us.us, 0, !dbg !2110
  br i1 %tobool105.not.us.us, label %for.inc115.us.us, label %if.then106.us.us, !dbg !2111

if.then106.us.us:                                 ; preds = %for.body99.us.us
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %40, i64 %indvars.iv272), metadata !1971, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1980
  %42 = load i8*, i8** %r_resname.us, align 8, !dbg !2112, !tbaa !706
  %43 = load i8*, i8** %a_atomname.us.us, align 8, !dbg !2114, !tbaa !489
  %44 = load i8*, i8** %r_resname109.us.us, align 8, !dbg !2115, !tbaa !706
  %a_atomname110.us.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv272, i32 0, !dbg !2116
  %45 = load i8*, i8** %a_atomname110.us.us, align 8, !dbg !2116, !tbaa !489
  %arrayidx84.idx.val.us.us = load double, double* %arrayidx84.idx.us.us, align 8, !dbg !2117, !tbaa !668
  %arrayidx84.idx219.val.us.us = load double, double* %arrayidx84.idx219.us.us, align 8, !dbg !2117, !tbaa !668
  %arrayidx84.idx220.val.us.us = load double, double* %arrayidx84.idx220.us.us, align 8, !dbg !2117, !tbaa !668
  %arrayidx102.idx.us.us = getelementptr %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv272, i32 17, i64 0, !dbg !2117
  %arrayidx102.idx.val.us.us = load double, double* %arrayidx102.idx.us.us, align 8, !dbg !2117, !tbaa !668
  %arrayidx102.idx221.us.us = getelementptr %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv272, i32 17, i64 1, !dbg !2117
  %arrayidx102.idx221.val.us.us = load double, double* %arrayidx102.idx221.us.us, align 8, !dbg !2117, !tbaa !668
  %arrayidx102.idx222.us.us = getelementptr %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv272, i32 17, i64 2, !dbg !2117
  %arrayidx102.idx222.val.us.us = load double, double* %arrayidx102.idx222.us.us, align 8, !dbg !2117, !tbaa !668
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2118, metadata !DIExpression()) #20, !dbg !2127
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2123, metadata !DIExpression()) #20, !dbg !2127
  %sub.i.us.us = fsub double %arrayidx84.idx.val.us.us, %arrayidx102.idx.val.us.us, !dbg !2129
  call void @llvm.dbg.value(metadata double %sub.i.us.us, metadata !2124, metadata !DIExpression()) #20, !dbg !2127
  %sub7.i.us.us = fsub double %arrayidx84.idx219.val.us.us, %arrayidx102.idx221.val.us.us, !dbg !2130
  call void @llvm.dbg.value(metadata double %sub7.i.us.us, metadata !2125, metadata !DIExpression()) #20, !dbg !2127
  %sub12.i.us.us = fsub double %arrayidx84.idx220.val.us.us, %arrayidx102.idx222.val.us.us, !dbg !2131
  call void @llvm.dbg.value(metadata double %sub12.i.us.us, metadata !2126, metadata !DIExpression()) #20, !dbg !2127
  %mul13.i.us.us = fmul double %sub7.i.us.us, %sub7.i.us.us, !dbg !2132
  %46 = tail call double @llvm.fmuladd.f64(double %sub.i.us.us, double %sub.i.us.us, double %mul13.i.us.us) #20, !dbg !2133
  %47 = tail call double @llvm.fmuladd.f64(double %sub12.i.us.us, double %sub12.i.us.us, double %46) #20, !dbg !2134
  %call.i.us.us = tail call double @sqrt(double noundef %47) #20, !dbg !2135
  %call112.us.us = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %call65, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 noundef %32, i8* noundef %42, i8* noundef %43, i32 noundef %38, i8* noundef %44, i8* noundef %45, double noundef %call.i.us.us), !dbg !2136
  %inc113.us.us = add nsw i32 %cnt.3246.us.us, 1, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %inc113.us.us, metadata !1978, metadata !DIExpression()), !dbg !1980
  %.pre = load i32, i32* %r_natoms96.us.us, align 8, !dbg !2096, !tbaa !714
  br label %for.inc115.us.us, !dbg !2138

for.inc115.us.us:                                 ; preds = %if.then106.us.us, %for.body99.us.us
  %48 = phi i32 [ %.pre, %if.then106.us.us ], [ %39, %for.body99.us.us ], !dbg !2096
  %cnt.4.us.us = phi i32 [ %inc113.us.us, %if.then106.us.us ], [ %cnt.3246.us.us, %for.body99.us.us ], !dbg !2101
  call void @llvm.dbg.value(metadata i32 %cnt.4.us.us, metadata !1978, metadata !DIExpression()), !dbg !1980
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next273, metadata !1976, metadata !DIExpression()), !dbg !1980
  %49 = sext i32 %48 to i64, !dbg !2099
  %cmp97.us.us = icmp slt i64 %indvars.iv.next273, %49, !dbg !2099
  br i1 %cmp97.us.us, label %for.body99.us.us, label %for.inc118.us.us, !dbg !2100, !llvm.loop !2140

for.inc122.us.us.loopexit:                        ; preds = %for.inc118.us.us
  %.pre288 = load i32, i32* %r_natoms78.us, align 8, !dbg !2076, !tbaa !714
  br label %for.inc122.us.us, !dbg !2142

for.inc122.us.us:                                 ; preds = %for.inc122.us.us.loopexit, %for.body81.us.us
  %50 = phi i32 [ %33, %for.body81.us.us ], [ %.pre288, %for.inc122.us.us.loopexit ], !dbg !2076
  %cnt.5.us.us = phi i32 [ %cnt.1254.us.us, %for.body81.us.us ], [ %cnt.3.lcssa.us.us, %for.inc122.us.us.loopexit ], !dbg !2081
  call void @llvm.dbg.value(metadata i32 %cnt.5.us.us, metadata !1978, metadata !DIExpression()), !dbg !1980
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next281, metadata !1975, metadata !DIExpression()), !dbg !1980
  %51 = sext i32 %50 to i64, !dbg !2079
  %cmp79.us.us = icmp slt i64 %indvars.iv.next281, %51, !dbg !2079
  br i1 %cmp79.us.us, label %for.body81.us.us, label %for.inc125.us, !dbg !2080, !llvm.loop !2143

for.cond89.preheader.us.us:                       ; preds = %for.body81.us.us
  %a_atomname.us.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv280, i32 0
  %arrayidx84.idx.us.us = getelementptr %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv280, i32 17, i64 0
  %arrayidx84.idx219.us.us = getelementptr %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv280, i32 17, i64 1
  %arrayidx84.idx220.us.us = getelementptr %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv280, i32 17, i64 2
  call void @llvm.dbg.value(metadata i32 %cnt.1254.us.us, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()), !dbg !1980
  br label %for.body92.us.us, !dbg !2103

if.then68:                                        ; preds = %for.end64
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2145, !tbaa !372
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* noundef %fname) #21, !dbg !2147
  br label %if.then129, !dbg !2148

if.then129:                                       ; preds = %for.inc125.us, %if.then68, %for.cond71.preheader
  %cnt.6 = phi i32 [ 0, %if.then68 ], [ 0, %for.cond71.preheader ], [ %cnt.1.lcssa.us, %for.inc125.us ], !dbg !1980
  call void @llvm.dbg.value(metadata i32 %cnt.6, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.label(metadata !1979), !dbg !2052
  tail call void @free(i8* noundef nonnull %call38) #20, !dbg !2149
  br label %cleanup, !dbg !2149

cleanup:                                          ; preds = %clean_up.thread, %if.then129, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cnt.6, %if.then129 ], [ 0, %clean_up.thread ], !dbg !1980
  ret i32 %retval.0, !dbg !2151
}

declare !dbg !2152 dso_local void @select_atoms(%struct.molecule_t* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @putmatrix(i8* noundef %fname, [4 x double]* nocapture noundef readonly %mat) local_unnamed_addr #6 !dbg !2155 {
entry:
  call void @llvm.dbg.value(metadata i8* %fname, metadata !2161, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata [4 x double]* %mat, metadata !2162, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !2163, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 0, metadata !2166, metadata !DIExpression()), !dbg !2168
  %cmp = icmp eq i8* %fname, null, !dbg !2169
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2171

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %fname, align 1, !dbg !2172, !tbaa !366
  %cmp1 = icmp eq i8 %0, 0, !dbg !2173
  br i1 %cmp1, label %if.then, label %if.else, !dbg !2174

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2175, !tbaa !372
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %1) #21, !dbg !2177
  call void @llvm.dbg.value(metadata i32 1, metadata !2166, metadata !DIExpression()), !dbg !2168
  br label %if.end32, !dbg !2178

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %fname, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #19, !dbg !2179
  %tobool.not = icmp eq i32 %call3, 0, !dbg !2179
  br i1 %tobool.not, label %if.then4, label %if.else5, !dbg !2181

if.then4:                                         ; preds = %if.else
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2182, !tbaa !372
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !2163, metadata !DIExpression()), !dbg !2168
  br label %if.end12, !dbg !2183

if.else5:                                         ; preds = %if.else
  %call6 = tail call %struct._IO_FILE* @fopen(i8* noundef nonnull %fname, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2184
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call6, metadata !2163, metadata !DIExpression()), !dbg !2168
  %cmp7 = icmp eq %struct._IO_FILE* %call6, null, !dbg !2186
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !2187

if.then9:                                         ; preds = %if.else5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2188, !tbaa !372
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* noundef nonnull %fname) #21, !dbg !2190
  call void @llvm.dbg.value(metadata i32 1, metadata !2166, metadata !DIExpression()), !dbg !2168
  br label %if.end32, !dbg !2191

if.end12:                                         ; preds = %if.then4, %if.else5
  %fp.0 = phi %struct._IO_FILE* [ %call6, %if.else5 ], [ %3, %if.then4 ], !dbg !2192
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.0, metadata !2163, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 0, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 0, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 0, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 0, i64 0, !dbg !2193
  %5 = load double, double* %arrayidx20, align 8, !dbg !2193, !tbaa !668
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %5), !dbg !2199
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.1 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 0, i64 1, !dbg !2193
  %6 = load double, double* %arrayidx20.1, align 8, !dbg !2193, !tbaa !668
  %call21.1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %6), !dbg !2199
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.2 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 0, i64 2, !dbg !2193
  %7 = load double, double* %arrayidx20.2, align 8, !dbg !2193, !tbaa !668
  %call21.2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %7), !dbg !2199
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.3 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 0, i64 3, !dbg !2193
  %8 = load double, double* %arrayidx20.3, align 8, !dbg !2193, !tbaa !668
  %call21.3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %8), !dbg !2199
  call void @llvm.dbg.value(metadata i64 4, metadata !2165, metadata !DIExpression()), !dbg !2168
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0), !dbg !2200
  call void @llvm.dbg.value(metadata i64 1, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 1, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 0, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.159 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 1, i64 0, !dbg !2193
  %9 = load double, double* %arrayidx20.159, align 8, !dbg !2193, !tbaa !668
  %call21.160 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %9), !dbg !2199
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.1.1 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 1, i64 1, !dbg !2193
  %10 = load double, double* %arrayidx20.1.1, align 8, !dbg !2193, !tbaa !668
  %call21.1.1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %10), !dbg !2199
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.2.1 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 1, i64 2, !dbg !2193
  %11 = load double, double* %arrayidx20.2.1, align 8, !dbg !2193, !tbaa !668
  %call21.2.1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %11), !dbg !2199
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.3.1 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 1, i64 3, !dbg !2193
  %12 = load double, double* %arrayidx20.3.1, align 8, !dbg !2193, !tbaa !668
  %call21.3.1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %12), !dbg !2199
  call void @llvm.dbg.value(metadata i64 4, metadata !2165, metadata !DIExpression()), !dbg !2168
  %fputc.1 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0), !dbg !2200
  call void @llvm.dbg.value(metadata i64 2, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 2, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 0, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.261 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 2, i64 0, !dbg !2193
  %13 = load double, double* %arrayidx20.261, align 8, !dbg !2193, !tbaa !668
  %call21.262 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %13), !dbg !2199
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.1.2 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 2, i64 1, !dbg !2193
  %14 = load double, double* %arrayidx20.1.2, align 8, !dbg !2193, !tbaa !668
  %call21.1.2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %14), !dbg !2199
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.2.2 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 2, i64 2, !dbg !2193
  %15 = load double, double* %arrayidx20.2.2, align 8, !dbg !2193, !tbaa !668
  %call21.2.2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %15), !dbg !2199
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.3.2 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 2, i64 3, !dbg !2193
  %16 = load double, double* %arrayidx20.3.2, align 8, !dbg !2193, !tbaa !668
  %call21.3.2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %16), !dbg !2199
  call void @llvm.dbg.value(metadata i64 4, metadata !2165, metadata !DIExpression()), !dbg !2168
  %fputc.2 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0), !dbg !2200
  call void @llvm.dbg.value(metadata i64 3, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 3, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 0, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.363 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 3, i64 0, !dbg !2193
  %17 = load double, double* %arrayidx20.363, align 8, !dbg !2193, !tbaa !668
  %call21.364 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %17), !dbg !2199
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.1.3 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 3, i64 1, !dbg !2193
  %18 = load double, double* %arrayidx20.1.3, align 8, !dbg !2193, !tbaa !668
  %call21.1.3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %18), !dbg !2199
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.2.3 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 3, i64 2, !dbg !2193
  %19 = load double, double* %arrayidx20.2.3, align 8, !dbg !2193, !tbaa !668
  %call21.2.3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %19), !dbg !2199
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx20.3.3 = getelementptr inbounds [4 x double], [4 x double]* %mat, i64 3, i64 3, !dbg !2193
  %20 = load double, double* %arrayidx20.3.3, align 8, !dbg !2193, !tbaa !668
  %call21.3.3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %fp.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %20), !dbg !2199
  call void @llvm.dbg.value(metadata i64 4, metadata !2165, metadata !DIExpression()), !dbg !2168
  %fputc.3 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp.0), !dbg !2200
  call void @llvm.dbg.value(metadata i64 4, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 0, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.0, metadata !2163, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.label(metadata !2167), !dbg !2201
  %cmp26.not = icmp eq %struct._IO_FILE* %fp.0, null, !dbg !2202
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp28.not = icmp eq %struct._IO_FILE* %fp.0, %21
  %or.cond = select i1 %cmp26.not, i1 true, i1 %cmp28.not, !dbg !2204
  br i1 %or.cond, label %if.end32, label %if.then30, !dbg !2204

if.then30:                                        ; preds = %if.end12
  %call31 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %fp.0), !dbg !2205
  br label %if.end32, !dbg !2205

if.end32:                                         ; preds = %if.then9, %if.then, %if.then30, %if.end12
  %err.054 = phi i32 [ 0, %if.then30 ], [ 0, %if.end12 ], [ 1, %if.then ], [ 1, %if.then9 ]
  ret i32 %err.054, !dbg !2206
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare dso_local i8* @strcpy(i8* noalias noundef returned writeonly, i8* noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @initres() unnamed_addr #0 !dbg !2207 {
entry:
  tail call void @NAB_initres(%struct.residue_t* noundef nonnull @res, i32 noundef 0) #20, !dbg !2208
  %0 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2209, !tbaa !706
  %cmp = icmp eq i8* %0, null, !dbg !2211
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2212

if.then:                                          ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #20, !dbg !2213
  store i8* %call, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2215, !tbaa !706
  %cmp1 = icmp eq i8* %call, null, !dbg !2216
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2218

if.then2:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2219, !tbaa !372
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %1) #21, !dbg !2221
  tail call void @exit(i32 noundef 1) #23, !dbg !2222
  unreachable, !dbg !2222

if.end4:                                          ; preds = %if.then, %entry
  %3 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2223, !tbaa !709
  %cmp5 = icmp eq i8* %3, null, !dbg !2225
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !2226

if.then6:                                         ; preds = %if.end4
  %call7 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #20, !dbg !2227
  store i8* %call7, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2229, !tbaa !709
  %cmp8 = icmp eq i8* %call7, null, !dbg !2230
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !2232

if.then9:                                         ; preds = %if.then6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2233, !tbaa !372
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %4) #21, !dbg !2235
  tail call void @exit(i32 noundef 1) #23, !dbg !2236
  unreachable, !dbg !2236

if.end12:                                         ; preds = %if.then6, %if.end4
  %6 = load i32, i32* @n_atab, align 4, !dbg !2237, !tbaa !522
  store i32 %6, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2238, !tbaa !714
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2239, !tbaa !1443
  ret void, !dbg !2240
}

declare !dbg !2241 dso_local %struct.molecule_t* @newmolecule() local_unnamed_addr #4

declare !dbg !2244 dso_local i8* @ggets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare dso_local i8* @strncpy(i8* noalias noundef returned writeonly, i8* noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @makebonds() unnamed_addr #6 !dbg !2247 {
entry:
  call void @llvm.dbg.value(metadata %struct.residue_t* @res, metadata !2251, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i32 0, metadata !2252, metadata !DIExpression()), !dbg !2259
  %0 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !tbaa !714
  %1 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !2252, metadata !DIExpression()), !dbg !2259
  %cmp8 = icmp sgt i32 %0, 0, !dbg !2260
  br i1 %cmp8, label %for.body.preheader, label %for.end130, !dbg !2263

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %0 to i64, !dbg !2260
  %2 = add nsw i64 %wide.trip.count, -1, !dbg !2263
  %xtraiter = and i64 %wide.trip.count, 3, !dbg !2263
  %3 = icmp ult i64 %2, 3, !dbg !2263
  br i1 %3, label %for.cond1.preheader.unr-lcssa, label %for.body.preheader.new, !dbg !2263

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292, !dbg !2263
  br label %for.body, !dbg !2263

for.cond1.preheader.unr-lcssa:                    ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2263
  br i1 %lcmp.mod.not, label %for.cond1.preheader, label %for.body.epil, !dbg !2263

for.body.epil:                                    ; preds = %for.cond1.preheader.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond1.preheader.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.cond1.preheader.unr-lcssa ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.epil, metadata !2252, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %1, i64 %indvars.iv.epil), metadata !2254, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2259
  %a_nconnect.epil = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i64 %indvars.iv.epil, i32 3, !dbg !2264
  store i32 0, i32* %a_nconnect.epil, align 4, !dbg !2266, !tbaa !2267
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.epil, metadata !2252, metadata !DIExpression()), !dbg !2259
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !2263
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !2263
  br i1 %epil.iter.cmp.not, label %for.cond1.preheader, label %for.body.epil, !dbg !2263, !llvm.loop !2269

for.cond1.preheader:                              ; preds = %for.body.epil, %for.cond1.preheader.unr-lcssa
  call void @llvm.dbg.value(metadata i32 0, metadata !2252, metadata !DIExpression()), !dbg !2259
  %cmp314 = icmp sgt i32 %0, 1, !dbg !2271
  br i1 %cmp314, label %for.body4.lr.ph, label %for.end130, !dbg !2274

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %call = tail call i16** @__ctype_b_loc() #24, !dbg !2259
  br label %for.body4, !dbg !2274

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2252, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %1, i64 %indvars.iv), metadata !2254, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2259
  %a_nconnect = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i64 %indvars.iv, i32 3, !dbg !2264
  store i32 0, i32* %a_nconnect, align 4, !dbg !2266, !tbaa !2267
  %indvars.iv.next = or i64 %indvars.iv, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2252, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2252, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %1, i64 %indvars.iv.next), metadata !2254, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2259
  %a_nconnect.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i64 %indvars.iv.next, i32 3, !dbg !2264
  store i32 0, i32* %a_nconnect.1, align 4, !dbg !2266, !tbaa !2267
  %indvars.iv.next.1 = or i64 %indvars.iv, 2, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !2252, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !2252, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %1, i64 %indvars.iv.next.1), metadata !2254, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2259
  %a_nconnect.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i64 %indvars.iv.next.1, i32 3, !dbg !2264
  store i32 0, i32* %a_nconnect.2, align 4, !dbg !2266, !tbaa !2267
  %indvars.iv.next.2 = or i64 %indvars.iv, 3, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !2252, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !2252, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %1, i64 %indvars.iv.next.2), metadata !2254, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2259
  %a_nconnect.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i64 %indvars.iv.next.2, i32 3, !dbg !2264
  store i32 0, i32* %a_nconnect.3, align 4, !dbg !2266, !tbaa !2267
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.3, metadata !2252, metadata !DIExpression()), !dbg !2259
  %niter.next.3 = add i64 %niter, 4, !dbg !2263
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !2263
  br i1 %niter.ncmp.3, label %for.cond1.preheader.unr-lcssa, label %for.body, !dbg !2263, !llvm.loop !2275

for.cond1.loopexit:                               ; preds = %for.inc125, %if.end
  %4 = phi i32 [ %6, %if.end ], [ %30, %for.inc125 ], !dbg !2277
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next23, metadata !2252, metadata !DIExpression()), !dbg !2259
  %sub = add nsw i32 %4, -1, !dbg !2278
  %5 = sext i32 %sub to i64, !dbg !2271
  %cmp3 = icmp slt i64 %indvars.iv.next23, %5, !dbg !2271
  br i1 %cmp3, label %for.cond1.loopexit.for.body4_crit_edge, label %for.end130, !dbg !2274, !llvm.loop !2279

for.cond1.loopexit.for.body4_crit_edge:           ; preds = %for.cond1.loopexit
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !2274
  %.pre = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2281, !tbaa !1443
  br label %for.body4, !dbg !2274

for.body4:                                        ; preds = %for.cond1.loopexit.for.body4_crit_edge, %for.body4.lr.ph
  %6 = phi i32 [ %0, %for.body4.lr.ph ], [ %4, %for.cond1.loopexit.for.body4_crit_edge ]
  %7 = phi %struct.atom_t* [ %1, %for.body4.lr.ph ], [ %.pre, %for.cond1.loopexit.for.body4_crit_edge ], !dbg !2281
  %indvars.iv22 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next23, %for.cond1.loopexit.for.body4_crit_edge ]
  %indvars.iv17 = phi i64 [ 1, %for.body4.lr.ph ], [ %indvars.iv.next18, %for.cond1.loopexit.for.body4_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv22, metadata !2252, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %7, i64 %indvars.iv22), metadata !2254, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2259
  %8 = load i16*, i16** %call, align 8, !dbg !2283, !tbaa !372
  %a_atomname = getelementptr inbounds %struct.atom_t, %struct.atom_t* %7, i64 %indvars.iv22, i32 0, !dbg !2283
  %9 = load i8*, i8** %a_atomname, align 8, !dbg !2283, !tbaa !489
  %10 = load i8, i8* %9, align 1, !dbg !2283, !tbaa !366
  %idxprom8 = sext i8 %10 to i64, !dbg !2283
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 %idxprom8, !dbg !2283
  %11 = load i16, i16* %arrayidx9, align 2, !dbg !2283, !tbaa !2285
  %12 = and i16 %11, 2048, !dbg !2283
  %tobool.not = icmp eq i16 %12, 0, !dbg !2283
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2287

if.then:                                          ; preds = %for.body4
  %arrayidx12 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !2288
  %13 = load i8, i8* %arrayidx12, align 1, !dbg !2288, !tbaa !366
  call void @llvm.dbg.value(metadata i1 undef, metadata !2256, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2259
  br label %if.end, !dbg !2289

if.end:                                           ; preds = %for.body4, %if.then
  %ih1.0.in.in.in = phi i8 [ %13, %if.then ], [ %10, %for.body4 ]
  %ih1.0.in.in = and i8 %ih1.0.in.in.in, -33, !dbg !2290
  %ih1.0.in = icmp eq i8 %ih1.0.in.in, 72, !dbg !2290
  call void @llvm.dbg.value(metadata i1 %ih1.0.in, metadata !2256, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2259
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next23, metadata !2253, metadata !DIExpression()), !dbg !2259
  %arrayidx7.idx = getelementptr %struct.atom_t, %struct.atom_t* %7, i64 %indvars.iv22, i32 17, i64 0
  %arrayidx7.idx4 = getelementptr %struct.atom_t, %struct.atom_t* %7, i64 %indvars.iv22, i32 17, i64 1
  %arrayidx7.idx5 = getelementptr %struct.atom_t, %struct.atom_t* %7, i64 %indvars.iv22, i32 17, i64 2
  %a_nconnect104 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %7, i64 %indvars.iv22, i32 3
  %14 = sext i32 %6 to i64, !dbg !2293
  %cmp3410 = icmp slt i64 %indvars.iv.next23, %14, !dbg !2293
  br i1 %cmp3410, label %for.body36.preheader, label %for.cond1.loopexit, !dbg !2295

for.body36.preheader:                             ; preds = %if.end
  %.sink = trunc i64 %indvars.iv22 to i32
  br label %for.body36, !dbg !2296

for.body36:                                       ; preds = %for.body36.preheader, %for.inc125.for.body36_crit_edge
  %15 = phi i16* [ %.pre26, %for.inc125.for.body36_crit_edge ], [ %8, %for.body36.preheader ], !dbg !2298
  %16 = phi %struct.atom_t* [ %.pre25, %for.inc125.for.body36_crit_edge ], [ %7, %for.body36.preheader ], !dbg !2300
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc125.for.body36_crit_edge ], [ %indvars.iv17, %for.body36.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv19, metadata !2253, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %16, i64 %indvars.iv19), metadata !2255, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2259
  %a_atomname41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv19, i32 0, !dbg !2298
  %17 = load i8*, i8** %a_atomname41, align 8, !dbg !2298, !tbaa !489
  %18 = load i8, i8* %17, align 1, !dbg !2298, !tbaa !366
  %idxprom43 = sext i8 %18 to i64, !dbg !2298
  %arrayidx44 = getelementptr inbounds i16, i16* %15, i64 %idxprom43, !dbg !2298
  %19 = load i16, i16* %arrayidx44, align 2, !dbg !2298, !tbaa !2285
  %20 = and i16 %19, 2048, !dbg !2298
  %tobool47.not = icmp eq i16 %20, 0, !dbg !2298
  br i1 %tobool47.not, label %if.end74, label %if.then48, !dbg !2296

if.then48:                                        ; preds = %for.body36
  %arrayidx50 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !2301
  %21 = load i8, i8* %arrayidx50, align 1, !dbg !2301, !tbaa !366
  call void @llvm.dbg.value(metadata i1 undef, metadata !2257, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2259
  br label %if.end74, !dbg !2302

if.end74:                                         ; preds = %for.body36, %if.then48
  %ih2.0.in.in.in = phi i8 [ %21, %if.then48 ], [ %18, %for.body36 ]
  %ih2.0.in.in = and i8 %ih2.0.in.in.in, -33, !dbg !2303
  %ih2.0.in = icmp eq i8 %ih2.0.in.in, 72, !dbg !2303
  call void @llvm.dbg.value(metadata i1 %ih2.0.in, metadata !2257, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2259
  %arrayidx7.idx.val = load double, double* %arrayidx7.idx, align 8, !dbg !2304, !tbaa !668
  %arrayidx7.idx4.val = load double, double* %arrayidx7.idx4, align 8, !dbg !2304, !tbaa !668
  %arrayidx7.idx5.val = load double, double* %arrayidx7.idx5, align 8, !dbg !2304, !tbaa !668
  %arrayidx39.idx = getelementptr %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv19, i32 17, i64 0, !dbg !2304
  %arrayidx39.idx.val = load double, double* %arrayidx39.idx, align 8, !dbg !2304, !tbaa !668
  %arrayidx39.idx6 = getelementptr %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv19, i32 17, i64 1, !dbg !2304
  %arrayidx39.idx6.val = load double, double* %arrayidx39.idx6, align 8, !dbg !2304, !tbaa !668
  %arrayidx39.idx7 = getelementptr %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv19, i32 17, i64 2, !dbg !2304
  %arrayidx39.idx7.val = load double, double* %arrayidx39.idx7, align 8, !dbg !2304, !tbaa !668
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2118, metadata !DIExpression()) #20, !dbg !2305
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2123, metadata !DIExpression()) #20, !dbg !2305
  %sub.i = fsub double %arrayidx7.idx.val, %arrayidx39.idx.val, !dbg !2307
  call void @llvm.dbg.value(metadata double %sub.i, metadata !2124, metadata !DIExpression()) #20, !dbg !2305
  %sub7.i = fsub double %arrayidx7.idx4.val, %arrayidx39.idx6.val, !dbg !2308
  call void @llvm.dbg.value(metadata double %sub7.i, metadata !2125, metadata !DIExpression()) #20, !dbg !2305
  %sub12.i = fsub double %arrayidx7.idx5.val, %arrayidx39.idx7.val, !dbg !2309
  call void @llvm.dbg.value(metadata double %sub12.i, metadata !2126, metadata !DIExpression()) #20, !dbg !2305
  %mul13.i = fmul double %sub7.i, %sub7.i, !dbg !2310
  %22 = tail call double @llvm.fmuladd.f64(double %sub.i, double %sub.i, double %mul13.i) #20, !dbg !2311
  %23 = tail call double @llvm.fmuladd.f64(double %sub12.i, double %sub12.i, double %22) #20, !dbg !2312
  %call.i = tail call double @sqrt(double noundef %23) #20, !dbg !2313
  call void @llvm.dbg.value(metadata double %call.i, metadata !2258, metadata !DIExpression()), !dbg !2259
  %or.cond = select i1 %ih1.0.in, i1 true, i1 %ih2.0.in, !dbg !2314
  br i1 %or.cond, label %if.then78, label %if.else100, !dbg !2314

if.then78:                                        ; preds = %if.end74
  %cmp79 = fcmp ugt double %call.i, 1.200000e+00, !dbg !2316
  br i1 %cmp79, label %for.inc125, label %if.then81, !dbg !2319

if.then81:                                        ; preds = %if.then78
  %24 = load i32, i32* %a_nconnect104, align 4, !dbg !2320, !tbaa !2267
  %cmp83 = icmp slt i32 %24, 8, !dbg !2323
  br i1 %cmp83, label %land.lhs.true, label %for.inc125, !dbg !2324

land.lhs.true:                                    ; preds = %if.then81
  %a_nconnect85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv19, i32 3, !dbg !2325
  %25 = load i32, i32* %a_nconnect85, align 4, !dbg !2325, !tbaa !2267
  %cmp86 = icmp slt i32 %25, 8, !dbg !2326
  br i1 %cmp86, label %for.inc125.sink.split, label %for.inc125, !dbg !2327

if.else100:                                       ; preds = %if.end74
  %cmp101 = fcmp ugt double %call.i, 1.850000e+00, !dbg !2328
  br i1 %cmp101, label %for.inc125, label %if.then103, !dbg !2330

if.then103:                                       ; preds = %if.else100
  %26 = load i32, i32* %a_nconnect104, align 4, !dbg !2331, !tbaa !2267
  %cmp105 = icmp slt i32 %26, 8, !dbg !2334
  br i1 %cmp105, label %land.lhs.true107, label %for.inc125, !dbg !2335

land.lhs.true107:                                 ; preds = %if.then103
  %a_nconnect108 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv19, i32 3, !dbg !2336
  %27 = load i32, i32* %a_nconnect108, align 4, !dbg !2336, !tbaa !2267
  %cmp109 = icmp slt i32 %27, 8, !dbg !2337
  br i1 %cmp109, label %for.inc125.sink.split, label %for.inc125, !dbg !2338

for.inc125.sink.split:                            ; preds = %land.lhs.true107, %land.lhs.true
  %.sink32 = phi i32 [ %24, %land.lhs.true ], [ %26, %land.lhs.true107 ]
  %a_nconnect108.sink = phi i32* [ %a_nconnect85, %land.lhs.true ], [ %a_nconnect108, %land.lhs.true107 ]
  %inc114 = add nsw i32 %.sink32, 1, !dbg !2339
  store i32 %inc114, i32* %a_nconnect104, align 4, !dbg !2339, !tbaa !2267
  %idxprom115 = sext i32 %.sink32 to i64, !dbg !2339
  %arrayidx116 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %7, i64 %indvars.iv22, i32 4, i64 %idxprom115, !dbg !2339
  %28 = trunc i64 %indvars.iv19 to i32, !dbg !2339
  store i32 %28, i32* %arrayidx116, align 4, !dbg !2339, !tbaa !522
  %29 = load i32, i32* %a_nconnect108.sink, align 4, !dbg !2339, !tbaa !2267
  %inc95 = add nsw i32 %29, 1, !dbg !2339
  store i32 %inc95, i32* %a_nconnect108.sink, align 4, !dbg !2339, !tbaa !2267
  %idxprom96 = sext i32 %29 to i64, !dbg !2339
  %arrayidx97 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv19, i32 4, i64 %idxprom96, !dbg !2339
  store i32 %.sink, i32* %arrayidx97, align 4, !dbg !2339, !tbaa !522
  br label %for.inc125, !dbg !2340

for.inc125:                                       ; preds = %for.inc125.sink.split, %if.then81, %land.lhs.true, %if.then78, %if.then103, %land.lhs.true107, %if.else100
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next20, metadata !2253, metadata !DIExpression()), !dbg !2259
  %30 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2341, !tbaa !714
  %31 = trunc i64 %indvars.iv.next20 to i32, !dbg !2293
  %cmp34 = icmp sgt i32 %30, %31, !dbg !2293
  br i1 %cmp34, label %for.inc125.for.body36_crit_edge, label %for.cond1.loopexit, !dbg !2295, !llvm.loop !2342

for.inc125.for.body36_crit_edge:                  ; preds = %for.inc125
  %.pre25 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2300, !tbaa !1443
  %.pre26 = load i16*, i16** %call, align 8, !dbg !2298, !tbaa !372
  br label %for.body36, !dbg !2295

for.end130:                                       ; preds = %for.cond1.loopexit, %entry, %for.cond1.preheader
  ret void, !dbg !2344
}

declare !dbg !2345 dso_local i32 @addresidue(%struct.molecule_t* noundef, i8* noundef, %struct.residue_t* noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

declare !dbg !2348 dso_local i32 @addstrand(%struct.molecule_t* noundef, i8* noundef) local_unnamed_addr #4

declare !dbg !2351 dso_local void @NAB_initatom(%struct.atom_t* noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2354 dso_local void @NAB_initres(%struct.residue_t* noundef, i32 noundef) local_unnamed_addr #4

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
!514 = distinct !{!514, !513, !515, !516}
!515 = !DILocation(line: 790, column: 5, scope: !486, inlinedAt: !480)
!516 = !{!"llvm.loop.mustprogress"}
!517 = !DILocation(line: 791, column: 10, scope: !258, inlinedAt: !480)
!518 = !DILocation(line: 792, column: 1, scope: !258, inlinedAt: !480)
!519 = !DILocation(line: 491, column: 11, scope: !403, inlinedAt: !452)
!520 = !DILocation(line: 494, column: 14, scope: !403, inlinedAt: !452)
!521 = !DILocation(line: 496, column: 30, scope: !449, inlinedAt: !452)
!522 = !{!491, !491, i64 0}
!523 = !DILocation(line: 503, column: 13, scope: !524, inlinedAt: !452)
!524 = distinct !DILexicalBlock(scope: !447, file: !3, line: 503, column: 13)
!525 = !DILocation(line: 503, column: 43, scope: !524, inlinedAt: !452)
!526 = !DILocation(line: 503, column: 13, scope: !447, inlinedAt: !452)
!527 = !DILocation(line: 507, column: 18, scope: !528, inlinedAt: !452)
!528 = distinct !DILexicalBlock(scope: !447, file: !3, line: 507, column: 9)
!529 = !DILocation(line: 507, column: 34, scope: !530, inlinedAt: !452)
!530 = distinct !DILexicalBlock(scope: !528, file: !3, line: 507, column: 9)
!531 = !DILocation(line: 507, column: 9, scope: !528, inlinedAt: !452)
!532 = !DILocation(line: 508, column: 21, scope: !530, inlinedAt: !452)
!533 = !DILocation(line: 509, column: 18, scope: !447, inlinedAt: !452)
!534 = !DILocation(line: 511, column: 13, scope: !446, inlinedAt: !452)
!535 = !DILocation(line: 511, column: 43, scope: !446, inlinedAt: !452)
!536 = !DILocation(line: 512, column: 13, scope: !446, inlinedAt: !452)
!537 = !DILocation(line: 512, column: 40, scope: !446, inlinedAt: !452)
!538 = !DILocation(line: 511, column: 13, scope: !447, inlinedAt: !452)
!539 = !DILocation(line: 513, column: 13, scope: !445, inlinedAt: !452)
!540 = !DILocation(line: 514, column: 33, scope: !445, inlinedAt: !452)
!541 = !DILocation(line: 516, column: 18, scope: !542, inlinedAt: !452)
!542 = distinct !DILexicalBlock(scope: !445, file: !3, line: 516, column: 13)
!543 = !DILocation(line: 0, scope: !542, inlinedAt: !452)
!544 = !DILocation(line: 516, column: 36, scope: !545, inlinedAt: !452)
!545 = distinct !DILexicalBlock(scope: !542, file: !3, line: 516, column: 13)
!546 = !DILocation(line: 516, column: 13, scope: !542, inlinedAt: !452)
!547 = !DILocation(line: 518, column: 25, scope: !548, inlinedAt: !452)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 517, column: 21)
!549 = distinct !DILexicalBlock(scope: !545, file: !3, line: 516, column: 47)
!550 = !DILocation(line: 518, column: 28, scope: !548, inlinedAt: !452)
!551 = !DILocation(line: 518, column: 21, scope: !548, inlinedAt: !452)
!552 = !DILocation(line: 516, column: 43, scope: !545, inlinedAt: !452)
!553 = !DILocation(line: 516, column: 13, scope: !545, inlinedAt: !452)
!554 = distinct !{!554, !546, !555, !516}
!555 = !DILocation(line: 519, column: 13, scope: !542, inlinedAt: !452)
!556 = !DILocation(line: 520, column: 18, scope: !445, inlinedAt: !452)
!557 = !DILocation(line: 523, column: 17, scope: !558, inlinedAt: !452)
!558 = distinct !DILexicalBlock(scope: !445, file: !3, line: 523, column: 17)
!559 = !DILocation(line: 523, column: 33, scope: !558, inlinedAt: !452)
!560 = !DILocation(line: 525, column: 38, scope: !561, inlinedAt: !452)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 525, column: 17)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 525, column: 17)
!563 = distinct !DILexicalBlock(scope: !558, file: !3, line: 523, column: 72)
!564 = !DILocation(line: 525, column: 33, scope: !561, inlinedAt: !452)
!565 = !DILocation(line: 525, column: 31, scope: !561, inlinedAt: !452)
!566 = !DILocation(line: 525, column: 17, scope: !562, inlinedAt: !452)
!567 = !DILocation(line: 526, column: 40, scope: !561, inlinedAt: !452)
!568 = !DILocation(line: 526, column: 32, scope: !561, inlinedAt: !452)
!569 = !DILocation(line: 526, column: 21, scope: !561, inlinedAt: !452)
!570 = !DILocation(line: 526, column: 30, scope: !561, inlinedAt: !452)
!571 = distinct !{!571, !566, !572, !516}
!572 = !DILocation(line: 526, column: 43, scope: !562, inlinedAt: !452)
!573 = !DILocation(line: 0, scope: !562, inlinedAt: !452)
!574 = !DILocation(line: 527, column: 17, scope: !563, inlinedAt: !452)
!575 = !DILocation(line: 527, column: 26, scope: !563, inlinedAt: !452)
!576 = !DILocation(line: 528, column: 13, scope: !563, inlinedAt: !452)
!577 = !DILocation(line: 531, column: 17, scope: !578, inlinedAt: !452)
!578 = distinct !DILexicalBlock(scope: !445, file: !3, line: 531, column: 17)
!579 = !DILocation(line: 531, column: 26, scope: !578, inlinedAt: !452)
!580 = !DILocation(line: 531, column: 17, scope: !445, inlinedAt: !452)
!581 = !DILocation(line: 532, column: 26, scope: !578, inlinedAt: !452)
!582 = !DILocation(line: 532, column: 17, scope: !578, inlinedAt: !452)
!583 = !DILocation(line: 533, column: 18, scope: !584, inlinedAt: !452)
!584 = distinct !DILexicalBlock(scope: !445, file: !3, line: 533, column: 17)
!585 = !DILocation(line: 533, column: 17, scope: !445, inlinedAt: !452)
!586 = !DILocation(line: 534, column: 17, scope: !584, inlinedAt: !452)
!587 = !DILocation(line: 536, column: 13, scope: !445, inlinedAt: !452)
!588 = !DILocation(line: 537, column: 33, scope: !445, inlinedAt: !452)
!589 = !DILocation(line: 538, column: 18, scope: !590, inlinedAt: !452)
!590 = distinct !DILexicalBlock(scope: !445, file: !3, line: 538, column: 13)
!591 = !DILocation(line: 0, scope: !590, inlinedAt: !452)
!592 = !DILocation(line: 538, column: 36, scope: !593, inlinedAt: !452)
!593 = distinct !DILexicalBlock(scope: !590, file: !3, line: 538, column: 13)
!594 = !DILocation(line: 538, column: 13, scope: !590, inlinedAt: !452)
!595 = !DILocation(line: 540, column: 25, scope: !596, inlinedAt: !452)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 539, column: 21)
!597 = distinct !DILexicalBlock(scope: !593, file: !3, line: 538, column: 47)
!598 = !DILocation(line: 540, column: 28, scope: !596, inlinedAt: !452)
!599 = !DILocation(line: 540, column: 21, scope: !596, inlinedAt: !452)
!600 = !DILocation(line: 538, column: 43, scope: !593, inlinedAt: !452)
!601 = !DILocation(line: 538, column: 13, scope: !593, inlinedAt: !452)
!602 = distinct !{!602, !594, !603, !516}
!603 = !DILocation(line: 541, column: 13, scope: !590, inlinedAt: !452)
!604 = !DILocation(line: 542, column: 18, scope: !445, inlinedAt: !452)
!605 = !DILocation(line: 551, column: 18, scope: !606, inlinedAt: !452)
!606 = distinct !DILexicalBlock(scope: !445, file: !3, line: 551, column: 17)
!607 = !DILocation(line: 551, column: 17, scope: !445, inlinedAt: !452)
!608 = !DILocation(line: 552, column: 28, scope: !606, inlinedAt: !452)
!609 = !{!610, !491, i64 44}
!610 = !{!"residue_t", !373, i64 0, !491, i64 8, !491, i64 12, !491, i64 16, !373, i64 24, !373, i64 32, !491, i64 40, !491, i64 44, !491, i64 48, !373, i64 56, !373, i64 64, !491, i64 72, !373, i64 80, !491, i64 88, !373, i64 96, !491, i64 104, !373, i64 112, !373, i64 120}
!611 = !DILocation(line: 552, column: 17, scope: !606, inlinedAt: !452)
!612 = !DILocation(line: 553, column: 18, scope: !613, inlinedAt: !452)
!613 = distinct !DILexicalBlock(scope: !445, file: !3, line: 553, column: 17)
!614 = !DILocation(line: 553, column: 41, scope: !613, inlinedAt: !452)
!615 = !DILocation(line: 554, column: 17, scope: !613, inlinedAt: !452)
!616 = !DILocation(line: 557, column: 18, scope: !617, inlinedAt: !452)
!617 = distinct !DILexicalBlock(scope: !445, file: !3, line: 557, column: 17)
!618 = !DILocation(line: 557, column: 17, scope: !445, inlinedAt: !452)
!619 = !DILocation(line: 558, column: 17, scope: !617, inlinedAt: !452)
!620 = !DILocation(line: 559, column: 17, scope: !445, inlinedAt: !452)
!621 = !DILocation(line: 560, column: 17, scope: !622, inlinedAt: !452)
!622 = distinct !DILexicalBlock(scope: !445, file: !3, line: 559, column: 17)
!623 = !DILocation(line: 562, column: 17, scope: !624, inlinedAt: !452)
!624 = distinct !DILexicalBlock(scope: !445, file: !3, line: 561, column: 17)
!625 = !DILocation(line: 563, column: 17, scope: !445, inlinedAt: !452)
!626 = !DILocation(line: 564, column: 17, scope: !627, inlinedAt: !452)
!627 = distinct !DILexicalBlock(scope: !445, file: !3, line: 563, column: 17)
!628 = !DILocation(line: 566, column: 17, scope: !629, inlinedAt: !452)
!629 = distinct !DILexicalBlock(scope: !445, file: !3, line: 565, column: 17)
!630 = !DILocation(line: 569, column: 13, scope: !445, inlinedAt: !452)
!631 = !DILocation(line: 570, column: 30, scope: !445, inlinedAt: !452)
!632 = !DILocation(line: 572, column: 19, scope: !445, inlinedAt: !452)
!633 = !DILocation(line: 573, column: 13, scope: !445, inlinedAt: !452)
!634 = !DILocation(line: 575, column: 13, scope: !445, inlinedAt: !452)
!635 = !DILocation(line: 576, column: 33, scope: !445, inlinedAt: !452)
!636 = !DILocalVariable(name: "__nptr", arg: 1, scope: !637, file: !638, line: 25, type: !641)
!637 = distinct !DISubprogram(name: "atof", scope: !638, file: !638, line: 25, type: !639, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !643)
!638 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "", checksumkind: CSK_MD5, checksum: "48f612e342a3b16120b9f0760cf29677")
!639 = !DISubroutineType(types: !640)
!640 = !{!10, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!643 = !{!636}
!644 = !DILocation(line: 0, scope: !637, inlinedAt: !645)
!645 = distinct !DILocation(line: 577, column: 17, scope: !445, inlinedAt: !452)
!646 = !DILocation(line: 27, column: 10, scope: !637, inlinedAt: !645)
!647 = !DILocation(line: 579, column: 13, scope: !445, inlinedAt: !452)
!648 = !DILocation(line: 580, column: 33, scope: !445, inlinedAt: !452)
!649 = !DILocation(line: 0, scope: !637, inlinedAt: !650)
!650 = distinct !DILocation(line: 581, column: 17, scope: !445, inlinedAt: !452)
!651 = !DILocation(line: 27, column: 10, scope: !637, inlinedAt: !650)
!652 = !DILocation(line: 583, column: 13, scope: !445, inlinedAt: !452)
!653 = !DILocation(line: 584, column: 33, scope: !445, inlinedAt: !452)
!654 = !DILocation(line: 0, scope: !637, inlinedAt: !655)
!655 = distinct !DILocation(line: 585, column: 17, scope: !445, inlinedAt: !452)
!656 = !DILocation(line: 27, column: 10, scope: !637, inlinedAt: !655)
!657 = !DILocation(line: 587, column: 17, scope: !658, inlinedAt: !452)
!658 = distinct !DILexicalBlock(scope: !445, file: !3, line: 587, column: 17)
!659 = !DILocation(line: 587, column: 17, scope: !445, inlinedAt: !452)
!660 = !DILocation(line: 603, column: 17, scope: !661, inlinedAt: !452)
!661 = distinct !DILexicalBlock(scope: !658, file: !3, line: 587, column: 43)
!662 = !DILocation(line: 611, column: 13, scope: !661, inlinedAt: !452)
!663 = !DILocation(line: 613, column: 22, scope: !664, inlinedAt: !452)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 613, column: 21)
!665 = distinct !DILexicalBlock(scope: !658, file: !3, line: 611, column: 20)
!666 = !DILocation(line: 613, column: 21, scope: !665, inlinedAt: !452)
!667 = !DILocation(line: 614, column: 23, scope: !664, inlinedAt: !452)
!668 = !{!492, !492, i64 0}
!669 = !DILocation(line: 614, column: 21, scope: !664, inlinedAt: !452)
!670 = !DILocation(line: 616, column: 23, scope: !671, inlinedAt: !452)
!671 = distinct !DILexicalBlock(scope: !664, file: !3, line: 615, column: 26)
!672 = !DILocation(line: 616, column: 21, scope: !671, inlinedAt: !452)
!673 = !DILocation(line: 618, column: 23, scope: !674, inlinedAt: !452)
!674 = distinct !DILexicalBlock(scope: !671, file: !3, line: 617, column: 26)
!675 = !DILocation(line: 618, column: 21, scope: !674, inlinedAt: !452)
!676 = !DILocation(line: 620, column: 23, scope: !677, inlinedAt: !452)
!677 = distinct !DILexicalBlock(scope: !674, file: !3, line: 619, column: 26)
!678 = !DILocation(line: 620, column: 21, scope: !677, inlinedAt: !452)
!679 = !DILocation(line: 622, column: 23, scope: !680, inlinedAt: !452)
!680 = distinct !DILexicalBlock(scope: !677, file: !3, line: 621, column: 26)
!681 = !DILocation(line: 622, column: 21, scope: !680, inlinedAt: !452)
!682 = !DILocation(line: 624, column: 23, scope: !683, inlinedAt: !452)
!683 = distinct !DILexicalBlock(scope: !680, file: !3, line: 623, column: 26)
!684 = !DILocation(line: 624, column: 21, scope: !683, inlinedAt: !452)
!685 = !DILocation(line: 626, column: 23, scope: !683, inlinedAt: !452)
!686 = !DILocation(line: 627, column: 19, scope: !665, inlinedAt: !452)
!687 = !DILocation(line: 630, column: 17, scope: !665, inlinedAt: !452)
!688 = !DILocation(line: 631, column: 37, scope: !665, inlinedAt: !452)
!689 = !DILocation(line: 0, scope: !637, inlinedAt: !690)
!690 = distinct !DILocation(line: 632, column: 23, scope: !665, inlinedAt: !452)
!691 = !DILocation(line: 27, column: 10, scope: !637, inlinedAt: !690)
!692 = !DILocation(line: 634, column: 17, scope: !665, inlinedAt: !452)
!693 = !DILocation(line: 635, column: 37, scope: !665, inlinedAt: !452)
!694 = !DILocation(line: 0, scope: !637, inlinedAt: !695)
!695 = distinct !DILocation(line: 636, column: 25, scope: !665, inlinedAt: !452)
!696 = !DILocation(line: 27, column: 10, scope: !637, inlinedAt: !695)
!697 = !DILocation(line: 0, scope: !658, inlinedAt: !452)
!698 = !DILocation(line: 639, column: 21, scope: !444, inlinedAt: !452)
!699 = !DILocation(line: 639, column: 17, scope: !445, inlinedAt: !452)
!700 = !DILocation(line: 640, column: 21, scope: !701, inlinedAt: !452)
!701 = distinct !DILexicalBlock(scope: !443, file: !3, line: 640, column: 21)
!702 = !DILocation(line: 640, column: 28, scope: !701, inlinedAt: !452)
!703 = !DILocation(line: 640, column: 21, scope: !443, inlinedAt: !452)
!704 = !DILocation(line: 641, column: 32, scope: !705, inlinedAt: !452)
!705 = distinct !DILexicalBlock(scope: !701, file: !3, line: 640, column: 33)
!706 = !{!610, !373, i64 24}
!707 = !DILocation(line: 641, column: 21, scope: !705, inlinedAt: !452)
!708 = !DILocation(line: 642, column: 32, scope: !705, inlinedAt: !452)
!709 = !{!610, !373, i64 32}
!710 = !DILocation(line: 642, column: 21, scope: !705, inlinedAt: !452)
!711 = !DILocation(line: 643, column: 31, scope: !705, inlinedAt: !452)
!712 = !{!610, !491, i64 8}
!713 = !DILocation(line: 644, column: 34, scope: !705, inlinedAt: !452)
!714 = !{!610, !491, i64 104}
!715 = !DILocation(line: 645, column: 21, scope: !705, inlinedAt: !452)
!716 = !DILocation(line: 646, column: 21, scope: !705, inlinedAt: !452)
!717 = !DILocation(line: 647, column: 21, scope: !705, inlinedAt: !452)
!718 = !DILocation(line: 648, column: 28, scope: !705, inlinedAt: !452)
!719 = !DILocation(line: 649, column: 17, scope: !705, inlinedAt: !452)
!720 = !DILocation(line: 651, column: 24, scope: !443, inlinedAt: !452)
!721 = !DILocation(line: 652, column: 25, scope: !722, inlinedAt: !452)
!722 = distinct !DILexicalBlock(scope: !443, file: !3, line: 652, column: 21)
!723 = !DILocation(line: 652, column: 21, scope: !443, inlinedAt: !452)
!724 = !DILocation(line: 653, column: 21, scope: !722, inlinedAt: !452)
!725 = !DILocation(line: 655, column: 30, scope: !726, inlinedAt: !452)
!726 = distinct !DILexicalBlock(scope: !722, file: !3, line: 654, column: 22)
!727 = !DILocation(line: 656, column: 30, scope: !726, inlinedAt: !452)
!728 = !DILocation(line: 658, column: 17, scope: !443, inlinedAt: !452)
!729 = !DILocation(line: 0, scope: !442, inlinedAt: !452)
!730 = !DILocation(line: 663, column: 26, scope: !731, inlinedAt: !452)
!731 = distinct !DILexicalBlock(scope: !442, file: !3, line: 663, column: 21)
!732 = !DILocation(line: 0, scope: !731, inlinedAt: !452)
!733 = !{}
!734 = !DILocation(line: 665, column: 42, scope: !735, inlinedAt: !452)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 665, column: 29)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 664, column: 45)
!737 = distinct !DILexicalBlock(scope: !731, file: !3, line: 663, column: 21)
!738 = !{!739, !373, i64 0}
!739 = !{!"strand_t", !373, i64 0, !491, i64 8, !491, i64 12, !373, i64 16, !373, i64 24, !491, i64 32, !491, i64 36, !373, i64 40}
!740 = !DILocation(line: 665, column: 30, scope: !735, inlinedAt: !452)
!741 = !DILocation(line: 664, column: 37, scope: !737, inlinedAt: !452)
!742 = !DILocation(line: 665, column: 29, scope: !736, inlinedAt: !452)
!743 = distinct !{!743, !744, !745, !516}
!744 = !DILocation(line: 663, column: 21, scope: !731, inlinedAt: !452)
!745 = !DILocation(line: 669, column: 21, scope: !731, inlinedAt: !452)
!746 = !DILocation(line: 670, column: 25, scope: !442, inlinedAt: !452)
!747 = !DILocation(line: 670, column: 36, scope: !442, inlinedAt: !452)
!748 = !{!739, !491, i64 36}
!749 = !DILocation(line: 672, column: 40, scope: !442, inlinedAt: !452)
!750 = !DILocation(line: 671, column: 25, scope: !442, inlinedAt: !452)
!751 = !DILocation(line: 671, column: 36, scope: !442, inlinedAt: !452)
!752 = !{!739, !373, i64 40}
!753 = !DILocation(line: 680, column: 17, scope: !443, inlinedAt: !452)
!754 = !DILocation(line: 681, column: 17, scope: !443, inlinedAt: !452)
!755 = !DILocation(line: 682, column: 26, scope: !443, inlinedAt: !452)
!756 = !DILocation(line: 684, column: 13, scope: !443, inlinedAt: !452)
!757 = !DILocation(line: 684, column: 57, scope: !758, inlinedAt: !452)
!758 = distinct !DILexicalBlock(scope: !444, file: !3, line: 684, column: 24)
!759 = !DILocalVariable(name: "l_rname", arg: 1, scope: !760, file: !3, line: 744, type: !13)
!760 = distinct !DISubprogram(name: "isnewres", scope: !3, file: !3, line: 744, type: !761, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!37, !13, !13, !37, !37}
!763 = !{!759, !764, !765, !766}
!764 = !DILocalVariable(name: "rname", arg: 2, scope: !760, file: !3, line: 744, type: !13)
!765 = !DILocalVariable(name: "l_rnum", arg: 3, scope: !760, file: !3, line: 744, type: !37)
!766 = !DILocalVariable(name: "rnum", arg: 4, scope: !760, file: !3, line: 744, type: !37)
!767 = !DILocation(line: 0, scope: !760, inlinedAt: !768)
!768 = distinct !DILocation(line: 684, column: 24, scope: !758, inlinedAt: !452)
!769 = !DILocation(line: 747, column: 13, scope: !760, inlinedAt: !768)
!770 = !DILocation(line: 747, column: 36, scope: !760, inlinedAt: !768)
!771 = !DILocation(line: 684, column: 24, scope: !758, inlinedAt: !452)
!772 = !DILocation(line: 684, column: 24, scope: !444, inlinedAt: !452)
!773 = !DILocation(line: 685, column: 28, scope: !774, inlinedAt: !452)
!774 = distinct !DILexicalBlock(scope: !758, file: !3, line: 684, column: 64)
!775 = !DILocation(line: 685, column: 17, scope: !774, inlinedAt: !452)
!776 = !DILocation(line: 686, column: 28, scope: !774, inlinedAt: !452)
!777 = !DILocation(line: 686, column: 17, scope: !774, inlinedAt: !452)
!778 = !DILocation(line: 687, column: 27, scope: !774, inlinedAt: !452)
!779 = !DILocation(line: 688, column: 32, scope: !774, inlinedAt: !452)
!780 = !DILocation(line: 688, column: 30, scope: !774, inlinedAt: !452)
!781 = !DILocation(line: 689, column: 17, scope: !774, inlinedAt: !452)
!782 = !DILocation(line: 690, column: 17, scope: !774, inlinedAt: !452)
!783 = !DILocation(line: 691, column: 17, scope: !774, inlinedAt: !452)
!784 = !DILocation(line: 692, column: 17, scope: !774, inlinedAt: !452)
!785 = !DILocation(line: 693, column: 17, scope: !774, inlinedAt: !452)
!786 = !DILocation(line: 694, column: 26, scope: !774, inlinedAt: !452)
!787 = !DILocation(line: 695, column: 24, scope: !774, inlinedAt: !452)
!788 = !DILocation(line: 696, column: 13, scope: !774, inlinedAt: !452)
!789 = !DILocation(line: 0, scope: !449, inlinedAt: !452)
!790 = !DILocation(line: 697, column: 24, scope: !445, inlinedAt: !452)
!791 = !DILocation(line: 697, column: 19, scope: !445, inlinedAt: !452)
!792 = !DILocation(line: 698, column: 13, scope: !445, inlinedAt: !452)
!793 = !DILocation(line: 699, column: 24, scope: !445, inlinedAt: !452)
!794 = !DILocation(line: 699, column: 13, scope: !445, inlinedAt: !452)
!795 = !DILocation(line: 700, column: 17, scope: !445, inlinedAt: !452)
!796 = !DILocation(line: 700, column: 24, scope: !445, inlinedAt: !452)
!797 = !{!490, !491, i64 16}
!798 = !DILocation(line: 701, column: 17, scope: !445, inlinedAt: !452)
!799 = !DILocation(line: 701, column: 27, scope: !445, inlinedAt: !452)
!800 = !{!490, !373, i64 56}
!801 = !DILocation(line: 702, column: 13, scope: !445, inlinedAt: !452)
!802 = !DILocation(line: 702, column: 26, scope: !445, inlinedAt: !452)
!803 = !DILocation(line: 703, column: 13, scope: !445, inlinedAt: !452)
!804 = !DILocation(line: 703, column: 26, scope: !445, inlinedAt: !452)
!805 = !DILocation(line: 704, column: 13, scope: !445, inlinedAt: !452)
!806 = !DILocation(line: 704, column: 26, scope: !445, inlinedAt: !452)
!807 = !DILocation(line: 705, column: 28, scope: !445, inlinedAt: !452)
!808 = !DILocation(line: 705, column: 17, scope: !445, inlinedAt: !452)
!809 = !DILocation(line: 705, column: 26, scope: !445, inlinedAt: !452)
!810 = !{!490, !492, i64 64}
!811 = !DILocation(line: 706, column: 28, scope: !445, inlinedAt: !452)
!812 = !DILocation(line: 706, column: 17, scope: !445, inlinedAt: !452)
!813 = !DILocation(line: 706, column: 26, scope: !445, inlinedAt: !452)
!814 = !{!490, !492, i64 72}
!815 = !DILocation(line: 707, column: 17, scope: !445, inlinedAt: !452)
!816 = !DILocation(line: 707, column: 23, scope: !445, inlinedAt: !452)
!817 = !{!490, !492, i64 88}
!818 = !DILocation(line: 708, column: 17, scope: !445, inlinedAt: !452)
!819 = !DILocation(line: 708, column: 25, scope: !445, inlinedAt: !452)
!820 = !{!490, !492, i64 80}
!821 = !DILocation(line: 709, column: 19, scope: !445, inlinedAt: !452)
!822 = !DILocation(line: 711, column: 9, scope: !445, inlinedAt: !452)
!823 = !DILocation(line: 711, column: 20, scope: !824, inlinedAt: !452)
!824 = distinct !DILexicalBlock(scope: !446, file: !3, line: 711, column: 20)
!825 = !DILocation(line: 711, column: 44, scope: !824, inlinedAt: !452)
!826 = !DILocation(line: 711, column: 20, scope: !446, inlinedAt: !452)
!827 = !DILocation(line: 712, column: 17, scope: !828, inlinedAt: !452)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 712, column: 17)
!829 = distinct !DILexicalBlock(scope: !824, file: !3, line: 711, column: 50)
!830 = !DILocation(line: 712, column: 24, scope: !828, inlinedAt: !452)
!831 = !DILocation(line: 712, column: 17, scope: !829, inlinedAt: !452)
!832 = !DILocation(line: 713, column: 28, scope: !833, inlinedAt: !452)
!833 = distinct !DILexicalBlock(scope: !828, file: !3, line: 712, column: 29)
!834 = !DILocation(line: 713, column: 17, scope: !833, inlinedAt: !452)
!835 = !DILocation(line: 714, column: 28, scope: !833, inlinedAt: !452)
!836 = !DILocation(line: 714, column: 17, scope: !833, inlinedAt: !452)
!837 = !DILocation(line: 715, column: 27, scope: !833, inlinedAt: !452)
!838 = !DILocation(line: 716, column: 30, scope: !833, inlinedAt: !452)
!839 = !DILocation(line: 717, column: 17, scope: !833, inlinedAt: !452)
!840 = !DILocation(line: 718, column: 17, scope: !833, inlinedAt: !452)
!841 = !DILocation(line: 719, column: 17, scope: !833, inlinedAt: !452)
!842 = !DILocation(line: 720, column: 24, scope: !833, inlinedAt: !452)
!843 = !DILocation(line: 721, column: 13, scope: !833, inlinedAt: !452)
!844 = !DILocation(line: 723, column: 22, scope: !829, inlinedAt: !452)
!845 = !DILocation(line: 724, column: 20, scope: !829, inlinedAt: !452)
!846 = !DILocation(line: 726, column: 9, scope: !829, inlinedAt: !452)
!847 = !DILocation(line: 726, column: 20, scope: !848, inlinedAt: !452)
!848 = distinct !DILexicalBlock(scope: !824, file: !3, line: 726, column: 20)
!849 = !DILocation(line: 726, column: 44, scope: !848, inlinedAt: !452)
!850 = !DILocation(line: 726, column: 20, scope: !824, inlinedAt: !452)
!851 = distinct !{!851, !852, !853}
!852 = !DILocation(line: 496, column: 5, scope: !449, inlinedAt: !452)
!853 = !DILocation(line: 728, column: 5, scope: !449, inlinedAt: !452)
!854 = !DILocation(line: 729, column: 9, scope: !855, inlinedAt: !452)
!855 = distinct !DILexicalBlock(scope: !403, file: !3, line: 729, column: 9)
!856 = !DILocation(line: 729, column: 16, scope: !855, inlinedAt: !452)
!857 = !DILocation(line: 729, column: 9, scope: !403, inlinedAt: !452)
!858 = !DILocation(line: 730, column: 20, scope: !859, inlinedAt: !452)
!859 = distinct !DILexicalBlock(scope: !855, file: !3, line: 729, column: 21)
!860 = !DILocation(line: 730, column: 9, scope: !859, inlinedAt: !452)
!861 = !DILocation(line: 731, column: 20, scope: !859, inlinedAt: !452)
!862 = !DILocation(line: 731, column: 9, scope: !859, inlinedAt: !452)
!863 = !DILocation(line: 732, column: 19, scope: !859, inlinedAt: !452)
!864 = !DILocation(line: 733, column: 22, scope: !859, inlinedAt: !452)
!865 = !DILocation(line: 734, column: 9, scope: !859, inlinedAt: !452)
!866 = !DILocation(line: 735, column: 9, scope: !859, inlinedAt: !452)
!867 = !DILocation(line: 736, column: 9, scope: !859, inlinedAt: !452)
!868 = !DILocation(line: 737, column: 5, scope: !859, inlinedAt: !452)
!869 = !DILocation(line: 739, column: 10, scope: !403, inlinedAt: !452)
!870 = !DILocation(line: 739, column: 19, scope: !403, inlinedAt: !452)
!871 = !{!872, !491, i64 120}
!872 = !{!"molecule_t", !367, i64 0, !491, i64 96, !373, i64 104, !491, i64 112, !491, i64 116, !491, i64 120, !373, i64 128}
!873 = !DILocation(line: 742, column: 1, scope: !403, inlinedAt: !452)
!874 = !DILocation(line: 150, column: 15, scope: !875)
!875 = distinct !DILexicalBlock(scope: !350, file: !3, line: 150, column: 9)
!876 = !DILocation(line: 150, column: 12, scope: !875)
!877 = !DILocation(line: 150, column: 9, scope: !350)
!878 = !DILocation(line: 151, column: 13, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 151, column: 13)
!880 = distinct !DILexicalBlock(scope: !875, file: !3, line: 150, column: 22)
!881 = !DILocation(line: 151, column: 28, scope: !879)
!882 = !DILocation(line: 151, column: 13, scope: !880)
!883 = !DILocation(line: 152, column: 13, scope: !884)
!884 = distinct !DILexicalBlock(scope: !879, file: !3, line: 151, column: 34)
!885 = !DILocation(line: 153, column: 9, scope: !884)
!886 = !DILocation(line: 156, column: 5, scope: !350)
!887 = !DISubprogram(name: "get_mytaskid", scope: !3, file: !3, line: 99, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!888 = !DISubroutineType(types: !889)
!889 = !{!37}
!890 = !DISubprogram(name: "reducerror", scope: !3, file: !3, line: 100, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !37}
!893 = !DISubprogram(name: "fclose", scope: !894, file: !894, line: 213, type: !895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!894 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!895 = !DISubroutineType(types: !896)
!896 = !{!37, !276}
!897 = !DILocation(line: 0, scope: !2)
!898 = !DILocation(line: 162, column: 5, scope: !2)
!899 = !DILocation(line: 162, column: 10, scope: !2)
!900 = !DILocation(line: 163, column: 12, scope: !2)
!901 = !DILocation(line: 168, column: 5, scope: !2)
!902 = !DILocation(line: 169, column: 15, scope: !903)
!903 = distinct !DILexicalBlock(scope: !2, file: !3, line: 169, column: 9)
!904 = !DILocation(line: 169, column: 23, scope: !903)
!905 = !DILocation(line: 169, column: 26, scope: !903)
!906 = !DILocation(line: 169, column: 33, scope: !903)
!907 = !DILocation(line: 169, column: 9, scope: !2)
!908 = !DILocation(line: 170, column: 17, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !3, line: 169, column: 42)
!910 = !DILocation(line: 170, column: 9, scope: !909)
!911 = !DILocation(line: 172, column: 9, scope: !909)
!912 = !DILocation(line: 173, column: 17, scope: !913)
!913 = distinct !DILexicalBlock(scope: !903, file: !3, line: 173, column: 16)
!914 = !DILocation(line: 173, column: 16, scope: !903)
!915 = !DILocation(line: 174, column: 14, scope: !913)
!916 = !DILocation(line: 174, column: 9, scope: !913)
!917 = !DILocation(line: 175, column: 20, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !3, line: 175, column: 14)
!919 = !DILocation(line: 175, column: 39, scope: !918)
!920 = !DILocation(line: 175, column: 14, scope: !913)
!921 = !DILocation(line: 176, column: 17, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !3, line: 175, column: 48)
!923 = !DILocation(line: 176, column: 9, scope: !922)
!924 = !DILocation(line: 178, column: 9, scope: !922)
!925 = !DILocation(line: 0, scope: !913)
!926 = !DILocation(line: 180, column: 5, scope: !927)
!927 = distinct !DILexicalBlock(scope: !2, file: !3, line: 180, column: 5)
!928 = !DILocation(line: 180, column: 17, scope: !929)
!929 = distinct !DILexicalBlock(scope: !927, file: !3, line: 180, column: 5)
!930 = !DILocation(line: 181, column: 13, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !3, line: 181, column: 13)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 180, column: 49)
!933 = !DILocation(line: 181, column: 19, scope: !931)
!934 = !DILocation(line: 181, column: 13, scope: !932)
!935 = distinct !{!935, !926, !936, !516}
!936 = !DILocation(line: 201, column: 5, scope: !927)
!937 = !DILocation(line: 184, column: 15, scope: !932)
!938 = !DILocation(line: 190, column: 17, scope: !939)
!939 = distinct !DILexicalBlock(scope: !932, file: !3, line: 190, column: 13)
!940 = !DILocation(line: 190, column: 13, scope: !932)
!941 = !DILocation(line: 191, column: 21, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !3, line: 190, column: 23)
!943 = !DILocation(line: 191, column: 13, scope: !942)
!944 = !DILocation(line: 196, column: 13, scope: !942)
!945 = !DILocation(line: 203, column: 17, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 202, column: 17)
!947 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 9)
!948 = !DILocation(line: 203, column: 9, scope: !946)
!949 = !DILocation(line: 207, column: 9, scope: !946)
!950 = !DILocation(line: 212, column: 12, scope: !951)
!951 = distinct !DILexicalBlock(scope: !2, file: !3, line: 212, column: 9)
!952 = !DILocation(line: 210, column: 3, scope: !2)
!953 = !DILocation(line: 212, column: 20, scope: !951)
!954 = !DILocation(line: 213, column: 9, scope: !951)
!955 = !DILocation(line: 217, column: 1, scope: !2)
!956 = !DILocation(line: 216, column: 5, scope: !2)
!957 = !DISubprogram(name: "fgets", scope: !894, file: !894, line: 564, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!958 = !DISubroutineType(types: !959)
!959 = !{!13, !960, !37, !961}
!960 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !276)
!962 = distinct !DISubprogram(name: "putpdb", scope: !3, file: !3, line: 225, type: !963, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !965)
!963 = !DISubroutineType(types: !964)
!964 = !{!37, !13, !353, !13}
!965 = !{!966, !967, !968, !969, !970}
!966 = !DILocalVariable(name: "fname", arg: 1, scope: !962, file: !3, line: 225, type: !13)
!967 = !DILocalVariable(name: "mol", arg: 2, scope: !962, file: !3, line: 225, type: !353)
!968 = !DILocalVariable(name: "options", arg: 3, scope: !962, file: !3, line: 225, type: !13)
!969 = !DILocalVariable(name: "fp", scope: !962, file: !3, line: 227, type: !276)
!970 = !DILocalVariable(name: "ier", scope: !962, file: !3, line: 228, type: !37)
!971 = !DILocation(line: 0, scope: !962)
!972 = !DILocation(line: 230, column: 10, scope: !973)
!973 = distinct !DILexicalBlock(scope: !962, file: !3, line: 230, column: 9)
!974 = !DILocation(line: 230, column: 9, scope: !962)
!975 = !DILocation(line: 231, column: 13, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 230, column: 15)
!977 = !DILocation(line: 232, column: 21, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 231, column: 34)
!979 = distinct !DILexicalBlock(scope: !976, file: !3, line: 231, column: 13)
!980 = !DILocation(line: 232, column: 13, scope: !978)
!981 = !DILocation(line: 233, column: 9, scope: !978)
!982 = !DILocation(line: 238, column: 9, scope: !962)
!983 = !DILocation(line: 239, column: 14, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 239, column: 13)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 238, column: 30)
!986 = distinct !DILexicalBlock(scope: !962, file: !3, line: 238, column: 9)
!987 = !DILocation(line: 239, column: 13, scope: !985)
!988 = !DILocation(line: 241, column: 24, scope: !989)
!989 = distinct !DILexicalBlock(scope: !984, file: !3, line: 241, column: 18)
!990 = !DILocation(line: 241, column: 43, scope: !989)
!991 = !DILocation(line: 241, column: 18, scope: !984)
!992 = !DILocalVariable(name: "fp", arg: 1, scope: !993, file: !3, line: 849, type: !276)
!993 = distinct !DISubprogram(name: "fputpdb", scope: !3, file: !3, line: 849, type: !994, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !996)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !276, !353, !13}
!996 = !{!992, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1010, !1011, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023}
!997 = !DILocalVariable(name: "mol", arg: 2, scope: !993, file: !3, line: 849, type: !353)
!998 = !DILocalVariable(name: "options", arg: 3, scope: !993, file: !3, line: 849, type: !13)
!999 = !DILocalVariable(name: "r", scope: !993, file: !3, line: 863, type: !37)
!1000 = !DILocalVariable(name: "tr", scope: !993, file: !3, line: 863, type: !37)
!1001 = !DILocalVariable(name: "rn", scope: !993, file: !3, line: 863, type: !37)
!1002 = !DILocalVariable(name: "a", scope: !993, file: !3, line: 863, type: !37)
!1003 = !DILocalVariable(name: "ta", scope: !993, file: !3, line: 863, type: !37)
!1004 = !DILocalVariable(name: "cid", scope: !993, file: !3, line: 864, type: !14)
!1005 = !DILocalVariable(name: "sp", scope: !993, file: !3, line: 865, type: !74)
!1006 = !DILocalVariable(name: "res", scope: !993, file: !3, line: 866, type: !39)
!1007 = !DILocalVariable(name: "ap", scope: !993, file: !3, line: 867, type: !219)
!1008 = !DILocalVariable(name: "rname", scope: !993, file: !3, line: 868, type: !1009)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !229)
!1010 = !DILocalVariable(name: "aname", scope: !993, file: !3, line: 869, type: !1009)
!1011 = !DILocalVariable(name: "rid", scope: !993, file: !3, line: 870, type: !1012)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 7)
!1015 = !DILocalVariable(name: "loptions", scope: !993, file: !3, line: 871, type: !335)
!1016 = !DILocalVariable(name: "opt_pqr", scope: !993, file: !3, line: 872, type: !37)
!1017 = !DILocalVariable(name: "opt_nobocc", scope: !993, file: !3, line: 873, type: !37)
!1018 = !DILocalVariable(name: "opt_brook", scope: !993, file: !3, line: 874, type: !37)
!1019 = !DILocalVariable(name: "opt_wwpdb", scope: !993, file: !3, line: 875, type: !37)
!1020 = !DILocalVariable(name: "opt_tr", scope: !993, file: !3, line: 876, type: !37)
!1021 = !DILocalVariable(name: "opt_nocid", scope: !993, file: !3, line: 877, type: !37)
!1022 = !DILocalVariable(name: "opt_allcid", scope: !993, file: !3, line: 878, type: !37)
!1023 = !DILocalVariable(name: "cidstate", scope: !993, file: !3, line: 879, type: !248)
!1024 = !DILocation(line: 0, scope: !993, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 246, column: 13, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 245, column: 23)
!1027 = distinct !DILexicalBlock(scope: !985, file: !3, line: 245, column: 13)
!1028 = !DILocation(line: 868, column: 5, scope: !993, inlinedAt: !1025)
!1029 = !DILocation(line: 868, column: 10, scope: !993, inlinedAt: !1025)
!1030 = !DILocation(line: 869, column: 5, scope: !993, inlinedAt: !1025)
!1031 = !DILocation(line: 869, column: 10, scope: !993, inlinedAt: !1025)
!1032 = !DILocation(line: 870, column: 5, scope: !993, inlinedAt: !1025)
!1033 = !DILocation(line: 870, column: 10, scope: !993, inlinedAt: !1025)
!1034 = !DILocation(line: 871, column: 5, scope: !993, inlinedAt: !1025)
!1035 = !DILocation(line: 871, column: 10, scope: !993, inlinedAt: !1025)
!1036 = !DILocation(line: 885, column: 9, scope: !993, inlinedAt: !1025)
!1037 = !DILocation(line: 242, column: 13, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !989, file: !3, line: 241, column: 52)
!1039 = !DILocation(line: 245, column: 13, scope: !985)
!1040 = !DILocation(line: 240, column: 18, scope: !984)
!1041 = !DILocation(line: 885, column: 10, scope: !1042, inlinedAt: !1025)
!1042 = distinct !DILexicalBlock(scope: !993, file: !3, line: 885, column: 9)
!1043 = !DILocation(line: 886, column: 17, scope: !1044, inlinedAt: !1025)
!1044 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 885, column: 14)
!1045 = !DILocation(line: 886, column: 9, scope: !1044, inlinedAt: !1025)
!1046 = !DILocation(line: 887, column: 9, scope: !1044, inlinedAt: !1025)
!1047 = !DILocation(line: 890, column: 17, scope: !1048, inlinedAt: !1025)
!1048 = distinct !DILexicalBlock(scope: !993, file: !3, line: 890, column: 9)
!1049 = !DILocation(line: 890, column: 9, scope: !993, inlinedAt: !1025)
!1050 = !DILocation(line: 891, column: 19, scope: !1048, inlinedAt: !1025)
!1051 = !DILocation(line: 891, column: 9, scope: !1048, inlinedAt: !1025)
!1052 = !DILocation(line: 893, column: 9, scope: !1053, inlinedAt: !1025)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 892, column: 10)
!1054 = !DILocation(line: 894, column: 9, scope: !1053, inlinedAt: !1025)
!1055 = !DILocation(line: 894, column: 23, scope: !1053, inlinedAt: !1025)
!1056 = !DILocation(line: 896, column: 15, scope: !993, inlinedAt: !1025)
!1057 = !DILocation(line: 896, column: 40, scope: !993, inlinedAt: !1025)
!1058 = !DILocation(line: 897, column: 18, scope: !993, inlinedAt: !1025)
!1059 = !DILocation(line: 897, column: 46, scope: !993, inlinedAt: !1025)
!1060 = !DILocation(line: 898, column: 17, scope: !993, inlinedAt: !1025)
!1061 = !DILocation(line: 898, column: 44, scope: !993, inlinedAt: !1025)
!1062 = !DILocation(line: 899, column: 17, scope: !993, inlinedAt: !1025)
!1063 = !DILocation(line: 899, column: 44, scope: !993, inlinedAt: !1025)
!1064 = !DILocation(line: 900, column: 14, scope: !993, inlinedAt: !1025)
!1065 = !DILocation(line: 900, column: 38, scope: !993, inlinedAt: !1025)
!1066 = !DILocation(line: 901, column: 17, scope: !993, inlinedAt: !1025)
!1067 = !DILocation(line: 901, column: 44, scope: !993, inlinedAt: !1025)
!1068 = !DILocation(line: 902, column: 18, scope: !993, inlinedAt: !1025)
!1069 = !DILocation(line: 902, column: 46, scope: !993, inlinedAt: !1025)
!1070 = !DILocalVariable(name: "nocid", arg: 1, scope: !1071, file: !3, line: 1021, type: !37)
!1071 = distinct !DISubprogram(name: "initcid", scope: !3, file: !3, line: 1021, type: !1072, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!248, !37, !37, !353}
!1074 = !{!1070, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1075 = !DILocalVariable(name: "allcid", arg: 2, scope: !1071, file: !3, line: 1021, type: !37)
!1076 = !DILocalVariable(name: "mol", arg: 3, scope: !1071, file: !3, line: 1021, type: !353)
!1077 = !DILocalVariable(name: "cid", scope: !1071, file: !3, line: 1023, type: !248)
!1078 = !DILocalVariable(name: "c", scope: !1071, file: !3, line: 1024, type: !37)
!1079 = !DILocalVariable(name: "sp", scope: !1071, file: !3, line: 1025, type: !74)
!1080 = !DILocalVariable(name: "err", scope: !1071, file: !3, line: 1026, type: !37)
!1081 = !DILabel(scope: !1071, name: "CLEAN_UP", file: !3, line: 1067)
!1082 = !DILocation(line: 0, scope: !1071, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 905, column: 16, scope: !993, inlinedAt: !1025)
!1084 = !DILocation(line: 1028, column: 9, scope: !1085, inlinedAt: !1083)
!1085 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 1028, column: 9)
!1086 = !DILocation(line: 1028, column: 9, scope: !1071, inlinedAt: !1083)
!1087 = !DILocation(line: 1031, column: 21, scope: !1071, inlinedAt: !1083)
!1088 = !DILocation(line: 1031, column: 11, scope: !1071, inlinedAt: !1083)
!1089 = !DILocation(line: 1032, column: 13, scope: !1090, inlinedAt: !1083)
!1090 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 1032, column: 9)
!1091 = !DILocation(line: 1032, column: 9, scope: !1071, inlinedAt: !1083)
!1092 = !DILocation(line: 1033, column: 17, scope: !1093, inlinedAt: !1083)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 1032, column: 22)
!1094 = !DILocation(line: 1033, column: 9, scope: !1093, inlinedAt: !1083)
!1095 = !DILocation(line: 1067, column: 3, scope: !1071, inlinedAt: !1083)
!1096 = !DILocalVariable(name: "cid", arg: 1, scope: !1097, file: !3, line: 1011, type: !248)
!1097 = distinct !DISubprogram(name: "freecid", scope: !3, file: !3, line: 1011, type: !1098, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !248}
!1100 = !{!1096}
!1101 = !DILocation(line: 0, scope: !1097, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 1070, column: 9, scope: !1103, inlinedAt: !1083)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 1069, column: 14)
!1104 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 1069, column: 9)
!1105 = !DILocation(line: 1014, column: 9, scope: !1097, inlinedAt: !1102)
!1106 = !DILocation(line: 1037, column: 28, scope: !1071, inlinedAt: !1083)
!1107 = !DILocation(line: 1037, column: 10, scope: !1071, inlinedAt: !1083)
!1108 = !DILocation(line: 1037, column: 17, scope: !1071, inlinedAt: !1083)
!1109 = !{!1110, !373, i64 8}
!1110 = !{!"cid_t", !491, i64 0, !491, i64 4, !373, i64 8}
!1111 = !DILocation(line: 1038, column: 21, scope: !1112, inlinedAt: !1083)
!1112 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 1038, column: 9)
!1113 = !DILocation(line: 1038, column: 9, scope: !1071, inlinedAt: !1083)
!1114 = !DILocation(line: 1043, column: 10, scope: !1071, inlinedAt: !1083)
!1115 = !DILocation(line: 1043, column: 17, scope: !1071, inlinedAt: !1083)
!1116 = !{!1110, !491, i64 0}
!1117 = !DILocation(line: 1044, column: 10, scope: !1071, inlinedAt: !1083)
!1118 = !DILocation(line: 1044, column: 17, scope: !1071, inlinedAt: !1083)
!1119 = !{!1110, !491, i64 4}
!1120 = !DILocation(line: 1045, column: 5, scope: !1121, inlinedAt: !1083)
!1121 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 1045, column: 5)
!1122 = !DILocation(line: 1046, column: 24, scope: !1123, inlinedAt: !1083)
!1123 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 1045, column: 5)
!1124 = !DILocation(line: 1048, column: 9, scope: !1071, inlinedAt: !1083)
!1125 = !DILocation(line: 1054, column: 24, scope: !1126, inlinedAt: !1083)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 1054, column: 9)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 1048, column: 17)
!1128 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 1048, column: 9)
!1129 = !DILocation(line: 0, scope: !1126, inlinedAt: !1083)
!1130 = !DILocation(line: 1054, column: 9, scope: !1126, inlinedAt: !1083)
!1131 = !DILocation(line: 1055, column: 28, scope: !1132, inlinedAt: !1083)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 1055, column: 17)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1054, column: 56)
!1134 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 1054, column: 9)
!1135 = !DILocation(line: 1055, column: 17, scope: !1132, inlinedAt: !1083)
!1136 = !DILocation(line: 1055, column: 42, scope: !1132, inlinedAt: !1083)
!1137 = !DILocation(line: 1055, column: 17, scope: !1133, inlinedAt: !1083)
!1138 = !DILocation(line: 1056, column: 21, scope: !1139, inlinedAt: !1083)
!1139 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 1055, column: 48)
!1140 = !DILocation(line: 1057, column: 30, scope: !1141, inlinedAt: !1083)
!1141 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 1057, column: 21)
!1142 = !DILocation(line: 1058, column: 21, scope: !1141, inlinedAt: !1083)
!1143 = !DILocation(line: 1058, column: 36, scope: !1141, inlinedAt: !1083)
!1144 = !DILocation(line: 1054, column: 48, scope: !1134, inlinedAt: !1083)
!1145 = distinct !{!1145, !1130, !1146, !516}
!1146 = !DILocation(line: 1060, column: 9, scope: !1126, inlinedAt: !1083)
!1147 = !DILocation(line: 1062, column: 18, scope: !1148, inlinedAt: !1083)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 1062, column: 17)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 1061, column: 59)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 1061, column: 9)
!1151 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 1061, column: 9)
!1152 = !DILocation(line: 1062, column: 17, scope: !1149, inlinedAt: !1083)
!1153 = !DILocation(line: 1061, column: 55, scope: !1150, inlinedAt: !1083)
!1154 = !DILocation(line: 0, scope: !1150, inlinedAt: !1083)
!1155 = !DILocation(line: 1039, column: 17, scope: !1156, inlinedAt: !1083)
!1156 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 1038, column: 30)
!1157 = !DILocation(line: 1039, column: 9, scope: !1156, inlinedAt: !1083)
!1158 = !DILocation(line: 1017, column: 9, scope: !1159, inlinedAt: !1102)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 1014, column: 22)
!1160 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 1014, column: 9)
!1161 = !DILocation(line: 1018, column: 5, scope: !1159, inlinedAt: !1102)
!1162 = !DILocation(line: 911, column: 36, scope: !1163, inlinedAt: !1025)
!1163 = distinct !DILexicalBlock(scope: !993, file: !3, line: 911, column: 5)
!1164 = !DILocation(line: 0, scope: !1163, inlinedAt: !1025)
!1165 = !DILocation(line: 911, column: 5, scope: !1163, inlinedAt: !1025)
!1166 = !DILocalVariable(name: "cid", arg: 1, scope: !1167, file: !3, line: 1077, type: !248)
!1167 = distinct !DISubprogram(name: "nextcid", scope: !3, file: !3, line: 1077, type: !1168, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!37, !248, !37, !37, !74}
!1170 = !{!1166, !1171, !1172, !1173, !1174}
!1171 = !DILocalVariable(name: "nocid", arg: 2, scope: !1167, file: !3, line: 1077, type: !37)
!1172 = !DILocalVariable(name: "allcid", arg: 3, scope: !1167, file: !3, line: 1077, type: !37)
!1173 = !DILocalVariable(name: "sp", arg: 4, scope: !1167, file: !3, line: 1077, type: !74)
!1174 = !DILocalVariable(name: "c", scope: !1167, file: !3, line: 1079, type: !37)
!1175 = !DILocation(line: 0, scope: !1167, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 920, column: 15, scope: !1177, inlinedAt: !1025)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 911, column: 68)
!1178 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 911, column: 5)
!1179 = !DILocation(line: 1081, column: 9, scope: !1167, inlinedAt: !1176)
!1180 = !DILocation(line: 1084, column: 9, scope: !1167, inlinedAt: !1176)
!1181 = !DILocation(line: 1085, column: 17, scope: !1182, inlinedAt: !1176)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 1084, column: 22)
!1183 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 1084, column: 9)
!1184 = !DILocation(line: 1085, column: 9, scope: !1182, inlinedAt: !1176)
!1185 = !DILocation(line: 1086, column: 9, scope: !1182, inlinedAt: !1176)
!1186 = !DILocation(line: 1087, column: 21, scope: !1187, inlinedAt: !1176)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 1087, column: 16)
!1188 = !DILocation(line: 1087, column: 35, scope: !1187, inlinedAt: !1176)
!1189 = !DILocation(line: 1087, column: 28, scope: !1187, inlinedAt: !1176)
!1190 = !DILocation(line: 1087, column: 16, scope: !1183, inlinedAt: !1176)
!1191 = !DILocation(line: 1089, column: 14, scope: !1187, inlinedAt: !1176)
!1192 = !DILocation(line: 1090, column: 24, scope: !1193, inlinedAt: !1176)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 1090, column: 13)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1089, column: 22)
!1195 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 1089, column: 14)
!1196 = !DILocation(line: 1090, column: 13, scope: !1193, inlinedAt: !1176)
!1197 = !DILocation(line: 1090, column: 38, scope: !1193, inlinedAt: !1176)
!1198 = !DILocation(line: 1090, column: 13, scope: !1194, inlinedAt: !1176)
!1199 = !DILocation(line: 1091, column: 17, scope: !1200, inlinedAt: !1176)
!1200 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 1090, column: 44)
!1201 = !DILocation(line: 1092, column: 26, scope: !1202, inlinedAt: !1176)
!1202 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 1092, column: 17)
!1203 = !DILocation(line: 1093, column: 17, scope: !1202, inlinedAt: !1176)
!1204 = !DILocation(line: 1096, column: 14, scope: !1194, inlinedAt: !1176)
!1205 = !DILocation(line: 1096, column: 9, scope: !1194, inlinedAt: !1176)
!1206 = !DILocation(line: 1096, column: 34, scope: !1194, inlinedAt: !1176)
!1207 = !DILocation(line: 1097, column: 14, scope: !1208, inlinedAt: !1176)
!1208 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 1097, column: 9)
!1209 = !DILocation(line: 1097, column: 41, scope: !1210, inlinedAt: !1176)
!1210 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 1097, column: 9)
!1211 = !DILocation(line: 0, scope: !1208, inlinedAt: !1176)
!1212 = !DILocation(line: 1097, column: 9, scope: !1208, inlinedAt: !1176)
!1213 = !DILocation(line: 1098, column: 23, scope: !1214, inlinedAt: !1176)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 1098, column: 17)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 1097, column: 72)
!1216 = !DILocation(line: 1098, column: 18, scope: !1214, inlinedAt: !1176)
!1217 = !DILocation(line: 1098, column: 17, scope: !1215, inlinedAt: !1176)
!1218 = distinct !{!1218, !1212, !1219, !516}
!1219 = !DILocation(line: 1100, column: 9, scope: !1208, inlinedAt: !1176)
!1220 = !DILocation(line: 1104, column: 20, scope: !1221, inlinedAt: !1176)
!1221 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1102, column: 12)
!1222 = !DILocation(line: 1105, column: 9, scope: !1221, inlinedAt: !1176)
!1223 = !DILocation(line: 921, column: 29, scope: !1224, inlinedAt: !1025)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 921, column: 9)
!1225 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 921, column: 9)
!1226 = !{!739, !491, i64 32}
!1227 = !DILocation(line: 921, column: 23, scope: !1224, inlinedAt: !1025)
!1228 = !DILocation(line: 921, column: 9, scope: !1225, inlinedAt: !1025)
!1229 = !DILocation(line: 922, column: 23, scope: !1230, inlinedAt: !1025)
!1230 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 921, column: 53)
!1231 = !DILocation(line: 922, column: 19, scope: !1230, inlinedAt: !1025)
!1232 = !DILocation(line: 923, column: 30, scope: !1230, inlinedAt: !1025)
!1233 = !DILocation(line: 923, column: 25, scope: !1230, inlinedAt: !1025)
!1234 = !DILocation(line: 923, column: 13, scope: !1230, inlinedAt: !1025)
!1235 = !DILocation(line: 0, scope: !1236, inlinedAt: !1025)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 924, column: 17)
!1237 = !DILocation(line: 924, column: 17, scope: !1230, inlinedAt: !1025)
!1238 = !DILocalVariable(name: "rname", arg: 1, scope: !1239, file: !3, line: 1109, type: !13)
!1239 = distinct !DISubprogram(name: "mk_brook_rname", scope: !3, file: !3, line: 1109, type: !1240, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !13, !39}
!1242 = !{!1238, !1243}
!1243 = !DILocalVariable(name: "res", arg: 2, scope: !1239, file: !3, line: 1109, type: !39)
!1244 = !DILocation(line: 0, scope: !1239, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 925, column: 17, scope: !1236, inlinedAt: !1025)
!1246 = !DILocation(line: 1112, column: 5, scope: !1239, inlinedAt: !1245)
!1247 = !DILocation(line: 1114, column: 10, scope: !1248, inlinedAt: !1245)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1114, column: 9)
!1249 = !DILocation(line: 1114, column: 9, scope: !1239, inlinedAt: !1245)
!1250 = !DILocation(line: 1115, column: 9, scope: !1248, inlinedAt: !1245)
!1251 = !DILocation(line: 1116, column: 9, scope: !1239, inlinedAt: !1245)
!1252 = !DILocation(line: 1117, column: 9, scope: !1253, inlinedAt: !1245)
!1253 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1116, column: 9)
!1254 = !DILocation(line: 1119, column: 9, scope: !1255, inlinedAt: !1245)
!1255 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1118, column: 9)
!1256 = !DILocation(line: 1121, column: 9, scope: !1257, inlinedAt: !1245)
!1257 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1120, column: 9)
!1258 = !DILocation(line: 1123, column: 9, scope: !1259, inlinedAt: !1245)
!1259 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1122, column: 9)
!1260 = !DILocation(line: 1125, column: 10, scope: !1261, inlinedAt: !1245)
!1261 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1125, column: 9)
!1262 = !DILocation(line: 1125, column: 9, scope: !1239, inlinedAt: !1245)
!1263 = !DILocation(line: 1126, column: 9, scope: !1261, inlinedAt: !1245)
!1264 = !DILocation(line: 1127, column: 10, scope: !1265, inlinedAt: !1245)
!1265 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1127, column: 9)
!1266 = !DILocation(line: 1127, column: 9, scope: !1239, inlinedAt: !1245)
!1267 = !DILocation(line: 1128, column: 9, scope: !1265, inlinedAt: !1245)
!1268 = !DILocation(line: 1129, column: 10, scope: !1269, inlinedAt: !1245)
!1269 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1129, column: 9)
!1270 = !DILocation(line: 1129, column: 9, scope: !1239, inlinedAt: !1245)
!1271 = !DILocation(line: 1130, column: 9, scope: !1269, inlinedAt: !1245)
!1272 = !DILocation(line: 1131, column: 10, scope: !1273, inlinedAt: !1245)
!1273 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1131, column: 9)
!1274 = !DILocation(line: 1131, column: 9, scope: !1239, inlinedAt: !1245)
!1275 = !DILocation(line: 1132, column: 9, scope: !1273, inlinedAt: !1245)
!1276 = !DILocation(line: 1134, column: 10, scope: !1277, inlinedAt: !1245)
!1277 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1134, column: 9)
!1278 = !DILocation(line: 1134, column: 9, scope: !1239, inlinedAt: !1245)
!1279 = !DILocation(line: 1135, column: 9, scope: !1277, inlinedAt: !1245)
!1280 = !DILocation(line: 1136, column: 10, scope: !1281, inlinedAt: !1245)
!1281 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1136, column: 9)
!1282 = !DILocation(line: 1136, column: 9, scope: !1239, inlinedAt: !1245)
!1283 = !DILocation(line: 1137, column: 9, scope: !1281, inlinedAt: !1245)
!1284 = !DILocation(line: 1138, column: 10, scope: !1285, inlinedAt: !1245)
!1285 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1138, column: 9)
!1286 = !DILocation(line: 1138, column: 9, scope: !1239, inlinedAt: !1245)
!1287 = !DILocation(line: 1139, column: 9, scope: !1285, inlinedAt: !1245)
!1288 = !DILocation(line: 1140, column: 10, scope: !1289, inlinedAt: !1245)
!1289 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1140, column: 9)
!1290 = !DILocation(line: 1140, column: 9, scope: !1239, inlinedAt: !1245)
!1291 = !DILocation(line: 1141, column: 9, scope: !1289, inlinedAt: !1245)
!1292 = !DILocation(line: 1143, column: 9, scope: !1239, inlinedAt: !1245)
!1293 = !DILocation(line: 1144, column: 9, scope: !1294, inlinedAt: !1245)
!1294 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1143, column: 9)
!1295 = !DILocation(line: 1146, column: 9, scope: !1296, inlinedAt: !1245)
!1296 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1145, column: 9)
!1297 = !DILocation(line: 1148, column: 9, scope: !1298, inlinedAt: !1245)
!1298 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1147, column: 9)
!1299 = !DILocation(line: 1150, column: 9, scope: !1300, inlinedAt: !1245)
!1300 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1149, column: 9)
!1301 = !DILocation(line: 1153, column: 9, scope: !1302, inlinedAt: !1245)
!1302 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1152, column: 9)
!1303 = !DILocation(line: 1155, column: 9, scope: !1304, inlinedAt: !1245)
!1304 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1154, column: 9)
!1305 = !DILocation(line: 1157, column: 9, scope: !1306, inlinedAt: !1245)
!1306 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1156, column: 9)
!1307 = !DILocation(line: 1159, column: 9, scope: !1308, inlinedAt: !1245)
!1308 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1158, column: 9)
!1309 = !DILocation(line: 1162, column: 9, scope: !1310, inlinedAt: !1245)
!1310 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1161, column: 9)
!1311 = !DILocation(line: 1164, column: 9, scope: !1312, inlinedAt: !1245)
!1312 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1163, column: 9)
!1313 = !DILocation(line: 1166, column: 9, scope: !1314, inlinedAt: !1245)
!1314 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1165, column: 9)
!1315 = !DILocation(line: 1168, column: 9, scope: !1316, inlinedAt: !1245)
!1316 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1167, column: 9)
!1317 = !DILocation(line: 1171, column: 9, scope: !1318, inlinedAt: !1245)
!1318 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1170, column: 9)
!1319 = !DILocation(line: 1173, column: 9, scope: !1320, inlinedAt: !1245)
!1320 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1172, column: 9)
!1321 = !DILocation(line: 1175, column: 9, scope: !1322, inlinedAt: !1245)
!1322 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1174, column: 9)
!1323 = !DILocation(line: 1177, column: 9, scope: !1324, inlinedAt: !1245)
!1324 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1176, column: 9)
!1325 = !DILocation(line: 1179, column: 9, scope: !1239, inlinedAt: !1245)
!1326 = !DILocation(line: 1180, column: 9, scope: !1327, inlinedAt: !1245)
!1327 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1179, column: 9)
!1328 = !DILocation(line: 1184, column: 9, scope: !1329, inlinedAt: !1245)
!1329 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1183, column: 9)
!1330 = !DILocation(line: 1186, column: 9, scope: !1331, inlinedAt: !1245)
!1331 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1185, column: 9)
!1332 = !DILocation(line: 1188, column: 9, scope: !1333, inlinedAt: !1245)
!1333 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1187, column: 9)
!1334 = !DILocation(line: 1190, column: 9, scope: !1335, inlinedAt: !1245)
!1335 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1189, column: 9)
!1336 = !DILocation(line: 926, column: 22, scope: !1236, inlinedAt: !1025)
!1337 = !DILocalVariable(name: "rname", arg: 1, scope: !1338, file: !3, line: 1194, type: !13)
!1338 = distinct !DISubprogram(name: "mk_wwpdb_rname", scope: !3, file: !3, line: 1194, type: !1240, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1339)
!1339 = !{!1337, !1340}
!1340 = !DILocalVariable(name: "res", arg: 2, scope: !1338, file: !3, line: 1194, type: !39)
!1341 = !DILocation(line: 0, scope: !1338, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 927, column: 17, scope: !1343, inlinedAt: !1025)
!1343 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 926, column: 22)
!1344 = !DILocation(line: 1197, column: 5, scope: !1338, inlinedAt: !1342)
!1345 = !DILocation(line: 1199, column: 10, scope: !1346, inlinedAt: !1342)
!1346 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1199, column: 9)
!1347 = !DILocation(line: 1199, column: 9, scope: !1338, inlinedAt: !1342)
!1348 = !DILocation(line: 1200, column: 9, scope: !1346, inlinedAt: !1342)
!1349 = !DILocation(line: 1201, column: 9, scope: !1338, inlinedAt: !1342)
!1350 = !DILocation(line: 1202, column: 9, scope: !1351, inlinedAt: !1342)
!1351 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1201, column: 9)
!1352 = !DILocation(line: 1204, column: 9, scope: !1353, inlinedAt: !1342)
!1353 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1203, column: 9)
!1354 = !DILocation(line: 1206, column: 9, scope: !1355, inlinedAt: !1342)
!1355 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1205, column: 9)
!1356 = !DILocation(line: 1208, column: 9, scope: !1357, inlinedAt: !1342)
!1357 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1207, column: 9)
!1358 = !DILocation(line: 1210, column: 10, scope: !1359, inlinedAt: !1342)
!1359 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1210, column: 9)
!1360 = !DILocation(line: 1210, column: 9, scope: !1338, inlinedAt: !1342)
!1361 = !DILocation(line: 1211, column: 9, scope: !1359, inlinedAt: !1342)
!1362 = !DILocation(line: 1212, column: 10, scope: !1363, inlinedAt: !1342)
!1363 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1212, column: 9)
!1364 = !DILocation(line: 1212, column: 9, scope: !1338, inlinedAt: !1342)
!1365 = !DILocation(line: 1213, column: 9, scope: !1363, inlinedAt: !1342)
!1366 = !DILocation(line: 1214, column: 10, scope: !1367, inlinedAt: !1342)
!1367 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1214, column: 9)
!1368 = !DILocation(line: 1214, column: 9, scope: !1338, inlinedAt: !1342)
!1369 = !DILocation(line: 1215, column: 9, scope: !1367, inlinedAt: !1342)
!1370 = !DILocation(line: 1216, column: 10, scope: !1371, inlinedAt: !1342)
!1371 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1216, column: 9)
!1372 = !DILocation(line: 1216, column: 9, scope: !1338, inlinedAt: !1342)
!1373 = !DILocation(line: 1217, column: 9, scope: !1371, inlinedAt: !1342)
!1374 = !DILocation(line: 1219, column: 10, scope: !1375, inlinedAt: !1342)
!1375 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1219, column: 9)
!1376 = !DILocation(line: 1219, column: 9, scope: !1338, inlinedAt: !1342)
!1377 = !DILocation(line: 1220, column: 9, scope: !1375, inlinedAt: !1342)
!1378 = !DILocation(line: 1221, column: 10, scope: !1379, inlinedAt: !1342)
!1379 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1221, column: 9)
!1380 = !DILocation(line: 1221, column: 9, scope: !1338, inlinedAt: !1342)
!1381 = !DILocation(line: 1222, column: 9, scope: !1379, inlinedAt: !1342)
!1382 = !DILocation(line: 1223, column: 10, scope: !1383, inlinedAt: !1342)
!1383 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1223, column: 9)
!1384 = !DILocation(line: 1223, column: 9, scope: !1338, inlinedAt: !1342)
!1385 = !DILocation(line: 1224, column: 9, scope: !1383, inlinedAt: !1342)
!1386 = !DILocation(line: 1225, column: 10, scope: !1387, inlinedAt: !1342)
!1387 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1225, column: 9)
!1388 = !DILocation(line: 1225, column: 9, scope: !1338, inlinedAt: !1342)
!1389 = !DILocation(line: 1226, column: 9, scope: !1387, inlinedAt: !1342)
!1390 = !DILocation(line: 1228, column: 9, scope: !1338, inlinedAt: !1342)
!1391 = !DILocation(line: 1229, column: 9, scope: !1392, inlinedAt: !1342)
!1392 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1228, column: 9)
!1393 = !DILocation(line: 1231, column: 9, scope: !1394, inlinedAt: !1342)
!1394 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1230, column: 9)
!1395 = !DILocation(line: 1233, column: 9, scope: !1396, inlinedAt: !1342)
!1396 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1232, column: 9)
!1397 = !DILocation(line: 1235, column: 9, scope: !1398, inlinedAt: !1342)
!1398 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1234, column: 9)
!1399 = !DILocation(line: 1238, column: 9, scope: !1400, inlinedAt: !1342)
!1400 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1237, column: 9)
!1401 = !DILocation(line: 1240, column: 9, scope: !1402, inlinedAt: !1342)
!1402 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1239, column: 9)
!1403 = !DILocation(line: 1242, column: 9, scope: !1404, inlinedAt: !1342)
!1404 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1241, column: 9)
!1405 = !DILocation(line: 1244, column: 9, scope: !1406, inlinedAt: !1342)
!1406 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1243, column: 9)
!1407 = !DILocation(line: 1247, column: 9, scope: !1408, inlinedAt: !1342)
!1408 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1246, column: 9)
!1409 = !DILocation(line: 1249, column: 9, scope: !1410, inlinedAt: !1342)
!1410 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1248, column: 9)
!1411 = !DILocation(line: 1251, column: 9, scope: !1412, inlinedAt: !1342)
!1412 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1250, column: 9)
!1413 = !DILocation(line: 1253, column: 9, scope: !1414, inlinedAt: !1342)
!1414 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1252, column: 9)
!1415 = !DILocation(line: 1256, column: 9, scope: !1416, inlinedAt: !1342)
!1416 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1255, column: 9)
!1417 = !DILocation(line: 1258, column: 9, scope: !1418, inlinedAt: !1342)
!1418 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1257, column: 9)
!1419 = !DILocation(line: 1260, column: 9, scope: !1420, inlinedAt: !1342)
!1420 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1259, column: 9)
!1421 = !DILocation(line: 1262, column: 9, scope: !1422, inlinedAt: !1342)
!1422 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1261, column: 9)
!1423 = !DILocation(line: 1264, column: 9, scope: !1338, inlinedAt: !1342)
!1424 = !DILocation(line: 1265, column: 9, scope: !1425, inlinedAt: !1342)
!1425 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1264, column: 9)
!1426 = !DILocation(line: 1269, column: 9, scope: !1427, inlinedAt: !1342)
!1427 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1268, column: 9)
!1428 = !DILocation(line: 1271, column: 9, scope: !1429, inlinedAt: !1342)
!1429 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1270, column: 9)
!1430 = !DILocation(line: 1273, column: 9, scope: !1431, inlinedAt: !1342)
!1431 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1272, column: 9)
!1432 = !DILocation(line: 1275, column: 9, scope: !1433, inlinedAt: !1342)
!1433 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1274, column: 9)
!1434 = !DILocation(line: 929, column: 17, scope: !1343, inlinedAt: !1025)
!1435 = !DILocation(line: 930, column: 34, scope: !1436, inlinedAt: !1025)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 930, column: 13)
!1437 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 930, column: 13)
!1438 = !DILocation(line: 930, column: 27, scope: !1436, inlinedAt: !1025)
!1439 = !DILocation(line: 930, column: 13, scope: !1437, inlinedAt: !1025)
!1440 = !DILocation(line: 931, column: 19, scope: !1441, inlinedAt: !1025)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 930, column: 49)
!1442 = !DILocation(line: 932, column: 28, scope: !1441, inlinedAt: !1025)
!1443 = !{!610, !373, i64 120}
!1444 = !DILocation(line: 0, scope: !1445, inlinedAt: !1025)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 934, column: 21)
!1446 = !DILocation(line: 934, column: 21, scope: !1441, inlinedAt: !1025)
!1447 = !DILocalVariable(name: "aname", arg: 1, scope: !1448, file: !3, line: 1279, type: !13)
!1448 = distinct !DISubprogram(name: "mk_brook_aname", scope: !3, file: !3, line: 1279, type: !1449, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !13, !13, !13}
!1451 = !{!1447, !1452, !1453}
!1452 = !DILocalVariable(name: "name", arg: 2, scope: !1448, file: !3, line: 1279, type: !13)
!1453 = !DILocalVariable(name: "rname", arg: 3, scope: !1448, file: !3, line: 1279, type: !13)
!1454 = !DILocation(line: 0, scope: !1448, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 935, column: 21, scope: !1445, inlinedAt: !1025)
!1456 = !DILocation(line: 1285, column: 14, scope: !1448, inlinedAt: !1455)
!1457 = !DILocation(line: 1287, column: 9, scope: !1458, inlinedAt: !1455)
!1458 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1287, column: 9)
!1459 = !DILocation(line: 1287, column: 22, scope: !1458, inlinedAt: !1455)
!1460 = !DILocation(line: 1287, column: 27, scope: !1458, inlinedAt: !1455)
!1461 = !DILocation(line: 1287, column: 30, scope: !1458, inlinedAt: !1455)
!1462 = !DILocation(line: 1287, column: 38, scope: !1458, inlinedAt: !1455)
!1463 = !DILocation(line: 1287, column: 9, scope: !1448, inlinedAt: !1455)
!1464 = !DILocation(line: 1288, column: 18, scope: !1458, inlinedAt: !1455)
!1465 = !DILocation(line: 1288, column: 9, scope: !1458, inlinedAt: !1455)
!1466 = !DILocation(line: 1289, column: 16, scope: !1448, inlinedAt: !1455)
!1467 = !DILocation(line: 1289, column: 14, scope: !1448, inlinedAt: !1455)
!1468 = !DILocation(line: 1290, column: 16, scope: !1448, inlinedAt: !1455)
!1469 = !DILocation(line: 1290, column: 14, scope: !1448, inlinedAt: !1455)
!1470 = !DILocation(line: 1291, column: 16, scope: !1448, inlinedAt: !1455)
!1471 = !DILocation(line: 1292, column: 18, scope: !1472, inlinedAt: !1455)
!1472 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1292, column: 9)
!1473 = !DILocation(line: 1292, column: 9, scope: !1448, inlinedAt: !1455)
!1474 = !DILocation(line: 1294, column: 14, scope: !1448, inlinedAt: !1455)
!1475 = !DILocation(line: 1297, column: 10, scope: !1476, inlinedAt: !1455)
!1476 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1297, column: 9)
!1477 = !DILocation(line: 1297, column: 34, scope: !1476, inlinedAt: !1455)
!1478 = !DILocation(line: 1299, column: 11, scope: !1476, inlinedAt: !1455)
!1479 = !DILocation(line: 1299, column: 36, scope: !1476, inlinedAt: !1455)
!1480 = !DILocation(line: 1306, column: 18, scope: !1481, inlinedAt: !1455)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 1305, column: 41)
!1482 = !DILocation(line: 1307, column: 18, scope: !1481, inlinedAt: !1455)
!1483 = !DILocation(line: 1308, column: 5, scope: !1481, inlinedAt: !1455)
!1484 = !DILocation(line: 936, column: 26, scope: !1445, inlinedAt: !1025)
!1485 = !DILocalVariable(name: "aname", arg: 1, scope: !1486, file: !3, line: 1315, type: !13)
!1486 = distinct !DISubprogram(name: "mk_wwpdb_aname", scope: !3, file: !3, line: 1315, type: !1449, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1487)
!1487 = !{!1485, !1488, !1489}
!1488 = !DILocalVariable(name: "name", arg: 2, scope: !1486, file: !3, line: 1315, type: !13)
!1489 = !DILocalVariable(name: "rname", arg: 3, scope: !1486, file: !3, line: 1315, type: !13)
!1490 = !DILocation(line: 0, scope: !1486, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 937, column: 21, scope: !1492, inlinedAt: !1025)
!1492 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 936, column: 26)
!1493 = !DILocation(line: 1329, column: 9, scope: !1494, inlinedAt: !1491)
!1494 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1329, column: 9)
!1495 = !DILocation(line: 1329, column: 22, scope: !1494, inlinedAt: !1491)
!1496 = !DILocation(line: 1329, column: 27, scope: !1494, inlinedAt: !1491)
!1497 = !DILocation(line: 1329, column: 30, scope: !1494, inlinedAt: !1491)
!1498 = !DILocation(line: 1329, column: 38, scope: !1494, inlinedAt: !1491)
!1499 = !DILocation(line: 1329, column: 9, scope: !1486, inlinedAt: !1491)
!1500 = !DILocation(line: 1330, column: 9, scope: !1501, inlinedAt: !1491)
!1501 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 1329, column: 45)
!1502 = !DILocation(line: 1331, column: 5, scope: !1501, inlinedAt: !1491)
!1503 = !DILocation(line: 1332, column: 18, scope: !1504, inlinedAt: !1491)
!1504 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 1331, column: 12)
!1505 = !DILocation(line: 1333, column: 9, scope: !1504, inlinedAt: !1491)
!1506 = !DILocation(line: 1334, column: 18, scope: !1504, inlinedAt: !1491)
!1507 = !DILocation(line: 1337, column: 9, scope: !1508, inlinedAt: !1491)
!1508 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1337, column: 9)
!1509 = !DILocation(line: 1337, column: 18, scope: !1508, inlinedAt: !1491)
!1510 = !DILocation(line: 1337, column: 9, scope: !1486, inlinedAt: !1491)
!1511 = !DILocation(line: 1337, column: 37, scope: !1508, inlinedAt: !1491)
!1512 = !DILocation(line: 1337, column: 28, scope: !1508, inlinedAt: !1491)
!1513 = !DILocation(line: 1338, column: 9, scope: !1514, inlinedAt: !1491)
!1514 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1338, column: 9)
!1515 = !DILocation(line: 1338, column: 18, scope: !1514, inlinedAt: !1491)
!1516 = !DILocation(line: 1338, column: 9, scope: !1486, inlinedAt: !1491)
!1517 = !DILocation(line: 1338, column: 37, scope: !1514, inlinedAt: !1491)
!1518 = !DILocation(line: 1338, column: 28, scope: !1514, inlinedAt: !1491)
!1519 = !DILocation(line: 1339, column: 9, scope: !1520, inlinedAt: !1491)
!1520 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1339, column: 9)
!1521 = !DILocation(line: 1339, column: 18, scope: !1520, inlinedAt: !1491)
!1522 = !DILocation(line: 1339, column: 9, scope: !1486, inlinedAt: !1491)
!1523 = !DILocation(line: 1339, column: 37, scope: !1520, inlinedAt: !1491)
!1524 = !DILocation(line: 1339, column: 28, scope: !1520, inlinedAt: !1491)
!1525 = !DILocation(line: 1346, column: 10, scope: !1526, inlinedAt: !1491)
!1526 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1346, column: 9)
!1527 = !DILocation(line: 1346, column: 9, scope: !1486, inlinedAt: !1491)
!1528 = !DILocation(line: 1346, column: 37, scope: !1526, inlinedAt: !1491)
!1529 = !DILocation(line: 1347, column: 10, scope: !1530, inlinedAt: !1491)
!1530 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1347, column: 9)
!1531 = !DILocation(line: 1347, column: 9, scope: !1486, inlinedAt: !1491)
!1532 = !DILocation(line: 1347, column: 37, scope: !1530, inlinedAt: !1491)
!1533 = !DILocation(line: 1348, column: 10, scope: !1534, inlinedAt: !1491)
!1534 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1348, column: 9)
!1535 = !DILocation(line: 1348, column: 9, scope: !1486, inlinedAt: !1491)
!1536 = !DILocation(line: 1348, column: 37, scope: !1534, inlinedAt: !1491)
!1537 = !DILocation(line: 1349, column: 10, scope: !1538, inlinedAt: !1491)
!1538 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1349, column: 9)
!1539 = !DILocation(line: 1349, column: 9, scope: !1486, inlinedAt: !1491)
!1540 = !DILocation(line: 1349, column: 37, scope: !1538, inlinedAt: !1491)
!1541 = !DILocation(line: 1350, column: 10, scope: !1542, inlinedAt: !1491)
!1542 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1350, column: 9)
!1543 = !DILocation(line: 1350, column: 9, scope: !1486, inlinedAt: !1491)
!1544 = !DILocation(line: 1350, column: 37, scope: !1542, inlinedAt: !1491)
!1545 = !DILocation(line: 1351, column: 10, scope: !1546, inlinedAt: !1491)
!1546 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1351, column: 9)
!1547 = !DILocation(line: 1351, column: 9, scope: !1486, inlinedAt: !1491)
!1548 = !DILocation(line: 1351, column: 37, scope: !1546, inlinedAt: !1491)
!1549 = !DILocation(line: 1352, column: 10, scope: !1550, inlinedAt: !1491)
!1550 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1352, column: 9)
!1551 = !DILocation(line: 1352, column: 9, scope: !1486, inlinedAt: !1491)
!1552 = !DILocation(line: 1352, column: 37, scope: !1550, inlinedAt: !1491)
!1553 = !DILocation(line: 1353, column: 10, scope: !1554, inlinedAt: !1491)
!1554 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1353, column: 9)
!1555 = !DILocation(line: 1353, column: 9, scope: !1486, inlinedAt: !1491)
!1556 = !DILocation(line: 1353, column: 37, scope: !1554, inlinedAt: !1491)
!1557 = !DILocation(line: 1359, column: 10, scope: !1558, inlinedAt: !1491)
!1558 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1359, column: 9)
!1559 = !DILocation(line: 1359, column: 36, scope: !1558, inlinedAt: !1491)
!1560 = !DILocation(line: 1359, column: 40, scope: !1558, inlinedAt: !1491)
!1561 = !DILocation(line: 1359, column: 66, scope: !1558, inlinedAt: !1491)
!1562 = !DILocation(line: 1360, column: 10, scope: !1558, inlinedAt: !1491)
!1563 = !DILocation(line: 1360, column: 36, scope: !1558, inlinedAt: !1491)
!1564 = !DILocation(line: 1360, column: 40, scope: !1558, inlinedAt: !1491)
!1565 = !DILocation(line: 1360, column: 66, scope: !1558, inlinedAt: !1491)
!1566 = !DILocation(line: 1361, column: 10, scope: !1558, inlinedAt: !1491)
!1567 = !DILocation(line: 1361, column: 36, scope: !1558, inlinedAt: !1491)
!1568 = !DILocation(line: 1361, column: 40, scope: !1558, inlinedAt: !1491)
!1569 = !DILocation(line: 1361, column: 66, scope: !1558, inlinedAt: !1491)
!1570 = !DILocation(line: 1362, column: 10, scope: !1558, inlinedAt: !1491)
!1571 = !DILocation(line: 1362, column: 36, scope: !1558, inlinedAt: !1491)
!1572 = !DILocation(line: 1362, column: 40, scope: !1558, inlinedAt: !1491)
!1573 = !DILocation(line: 1362, column: 66, scope: !1558, inlinedAt: !1491)
!1574 = !DILocation(line: 1363, column: 10, scope: !1558, inlinedAt: !1491)
!1575 = !DILocation(line: 1363, column: 36, scope: !1558, inlinedAt: !1491)
!1576 = !DILocation(line: 1363, column: 40, scope: !1558, inlinedAt: !1491)
!1577 = !DILocation(line: 1363, column: 66, scope: !1558, inlinedAt: !1491)
!1578 = !DILocation(line: 1364, column: 10, scope: !1558, inlinedAt: !1491)
!1579 = !DILocation(line: 1364, column: 36, scope: !1558, inlinedAt: !1491)
!1580 = !DILocation(line: 1364, column: 40, scope: !1558, inlinedAt: !1491)
!1581 = !DILocation(line: 1364, column: 66, scope: !1558, inlinedAt: !1491)
!1582 = !DILocation(line: 1365, column: 10, scope: !1558, inlinedAt: !1491)
!1583 = !DILocation(line: 1365, column: 36, scope: !1558, inlinedAt: !1491)
!1584 = !DILocation(line: 1365, column: 40, scope: !1558, inlinedAt: !1491)
!1585 = !DILocation(line: 1365, column: 66, scope: !1558, inlinedAt: !1491)
!1586 = !DILocation(line: 1366, column: 10, scope: !1558, inlinedAt: !1491)
!1587 = !DILocation(line: 1366, column: 36, scope: !1558, inlinedAt: !1491)
!1588 = !DILocation(line: 1366, column: 40, scope: !1558, inlinedAt: !1491)
!1589 = !DILocation(line: 1359, column: 9, scope: !1486, inlinedAt: !1491)
!1590 = !DILocation(line: 1367, column: 18, scope: !1591, inlinedAt: !1491)
!1591 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1366, column: 67)
!1592 = !DILocation(line: 1368, column: 18, scope: !1591, inlinedAt: !1491)
!1593 = !DILocation(line: 1369, column: 18, scope: !1591, inlinedAt: !1491)
!1594 = !DILocation(line: 1370, column: 18, scope: !1591, inlinedAt: !1491)
!1595 = !DILocation(line: 1371, column: 5, scope: !1591, inlinedAt: !1491)
!1596 = !DILocation(line: 939, column: 21, scope: !1492, inlinedAt: !1025)
!1597 = !DILocation(line: 941, column: 22, scope: !1598, inlinedAt: !1025)
!1598 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 941, column: 21)
!1599 = !DILocation(line: 941, column: 38, scope: !1598, inlinedAt: !1025)
!1600 = !DILocation(line: 0, scope: !1598, inlinedAt: !1025)
!1601 = !DILocation(line: 949, column: 25, scope: !1602, inlinedAt: !1025)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 941, column: 49)
!1603 = !DILocation(line: 957, column: 33, scope: !1604, inlinedAt: !1025)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 949, column: 38)
!1605 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 949, column: 25)
!1606 = !DILocation(line: 957, column: 47, scope: !1604, inlinedAt: !1025)
!1607 = !DILocation(line: 957, column: 61, scope: !1604, inlinedAt: !1025)
!1608 = !DILocation(line: 950, column: 25, scope: !1604, inlinedAt: !1025)
!1609 = !DILocation(line: 958, column: 21, scope: !1604, inlinedAt: !1025)
!1610 = !DILocation(line: 961, column: 36, scope: !1611, inlinedAt: !1025)
!1611 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 958, column: 28)
!1612 = !DILocation(line: 966, column: 33, scope: !1611, inlinedAt: !1025)
!1613 = !DILocation(line: 966, column: 47, scope: !1611, inlinedAt: !1025)
!1614 = !DILocation(line: 966, column: 61, scope: !1611, inlinedAt: !1025)
!1615 = !DILocation(line: 959, column: 25, scope: !1611, inlinedAt: !1025)
!1616 = !DILocation(line: 970, column: 25, scope: !1617, inlinedAt: !1025)
!1617 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 968, column: 24)
!1618 = !DILocation(line: 974, column: 33, scope: !1619, inlinedAt: !1025)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 970, column: 38)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 970, column: 25)
!1621 = !DILocation(line: 974, column: 47, scope: !1619, inlinedAt: !1025)
!1622 = !DILocation(line: 974, column: 61, scope: !1619, inlinedAt: !1025)
!1623 = !DILocation(line: 971, column: 25, scope: !1619, inlinedAt: !1025)
!1624 = !DILocation(line: 975, column: 21, scope: !1619, inlinedAt: !1025)
!1625 = !DILocation(line: 978, column: 36, scope: !1626, inlinedAt: !1025)
!1626 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 975, column: 28)
!1627 = !DILocation(line: 979, column: 33, scope: !1626, inlinedAt: !1025)
!1628 = !DILocation(line: 979, column: 47, scope: !1626, inlinedAt: !1025)
!1629 = !DILocation(line: 979, column: 61, scope: !1626, inlinedAt: !1025)
!1630 = !DILocation(line: 976, column: 25, scope: !1626, inlinedAt: !1025)
!1631 = !DILocation(line: 982, column: 21, scope: !1441, inlinedAt: !1025)
!1632 = !DILocation(line: 985, column: 33, scope: !1633, inlinedAt: !1025)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 982, column: 30)
!1634 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 982, column: 21)
!1635 = !DILocation(line: 985, column: 47, scope: !1633, inlinedAt: !1025)
!1636 = !DILocation(line: 984, column: 21, scope: !1633, inlinedAt: !1025)
!1637 = !DILocation(line: 986, column: 17, scope: !1633, inlinedAt: !1025)
!1638 = !DILocation(line: 986, column: 28, scope: !1634, inlinedAt: !1025)
!1639 = !DILocation(line: 988, column: 33, scope: !1640, inlinedAt: !1025)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 986, column: 41)
!1641 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 986, column: 28)
!1642 = !DILocation(line: 988, column: 44, scope: !1640, inlinedAt: !1025)
!1643 = !DILocation(line: 987, column: 21, scope: !1640, inlinedAt: !1025)
!1644 = !DILocation(line: 991, column: 32, scope: !1645, inlinedAt: !1025)
!1645 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 991, column: 21)
!1646 = !DILocation(line: 992, column: 47, scope: !1647, inlinedAt: !1025)
!1647 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 991, column: 74)
!1648 = !DILocation(line: 992, column: 21, scope: !1647, inlinedAt: !1025)
!1649 = !DILocation(line: 993, column: 17, scope: !1647, inlinedAt: !1025)
!1650 = !DILocation(line: 995, column: 17, scope: !1441, inlinedAt: !1025)
!1651 = !DILocation(line: 930, column: 45, scope: !1436, inlinedAt: !1025)
!1652 = distinct !{!1652, !1439, !1653, !516}
!1653 = !DILocation(line: 997, column: 13, scope: !1437, inlinedAt: !1025)
!1654 = !DILocation(line: 921, column: 43, scope: !1224, inlinedAt: !1025)
!1655 = !DILocation(line: 921, column: 49, scope: !1224, inlinedAt: !1025)
!1656 = distinct !{!1656, !1228, !1657, !516}
!1657 = !DILocation(line: 999, column: 9, scope: !1225, inlinedAt: !1025)
!1658 = !DILocation(line: 911, column: 13, scope: !1163, inlinedAt: !1025)
!1659 = !DILocation(line: 1001, column: 9, scope: !1177, inlinedAt: !1025)
!1660 = !DILocation(line: 911, column: 60, scope: !1178, inlinedAt: !1025)
!1661 = distinct !{!1661, !1165, !1662, !516}
!1662 = !DILocation(line: 1007, column: 5, scope: !1163, inlinedAt: !1025)
!1663 = !DILocation(line: 0, scope: !1097, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 1008, column: 5, scope: !993, inlinedAt: !1025)
!1665 = !DILocation(line: 1014, column: 9, scope: !1097, inlinedAt: !1664)
!1666 = !DILocation(line: 1015, column: 18, scope: !1667, inlinedAt: !1664)
!1667 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 1015, column: 13)
!1668 = !DILocation(line: 1015, column: 25, scope: !1667, inlinedAt: !1664)
!1669 = !DILocation(line: 1015, column: 13, scope: !1159, inlinedAt: !1664)
!1670 = !DILocation(line: 1016, column: 13, scope: !1667, inlinedAt: !1664)
!1671 = !DILocation(line: 1017, column: 14, scope: !1159, inlinedAt: !1664)
!1672 = !DILocation(line: 1017, column: 9, scope: !1159, inlinedAt: !1664)
!1673 = !DILocation(line: 1018, column: 5, scope: !1159, inlinedAt: !1664)
!1674 = !DILocation(line: 1009, column: 1, scope: !993, inlinedAt: !1025)
!1675 = !DILocation(line: 247, column: 23, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 247, column: 17)
!1677 = !DILocation(line: 247, column: 20, scope: !1676)
!1678 = !DILocation(line: 247, column: 17, scope: !1026)
!1679 = !DILocation(line: 248, column: 17, scope: !1676)
!1680 = !DILocation(line: 251, column: 5, scope: !962)
!1681 = !DILocation(line: 253, column: 5, scope: !962)
!1682 = !DILocation(line: 254, column: 1, scope: !962)
!1683 = !DISubprogram(name: "rt_errormsg_s", scope: !3, file: !3, line: 107, type: !1684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!37, !37, !13, !13}
!1686 = distinct !DISubprogram(name: "putcif", scope: !3, file: !3, line: 256, type: !1687, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!37, !13, !13, !353}
!1689 = !{!1690, !1691, !1692, !1693}
!1690 = !DILocalVariable(name: "fname", arg: 1, scope: !1686, file: !3, line: 256, type: !13)
!1691 = !DILocalVariable(name: "blockId", arg: 2, scope: !1686, file: !3, line: 256, type: !13)
!1692 = !DILocalVariable(name: "mol", arg: 3, scope: !1686, file: !3, line: 256, type: !353)
!1693 = !DILocalVariable(name: "fp", scope: !1686, file: !3, line: 258, type: !276)
!1694 = !DILocation(line: 0, scope: !1686)
!1695 = !DILocation(line: 260, column: 10, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 260, column: 9)
!1697 = !DILocation(line: 260, column: 9, scope: !1686)
!1698 = !DILocation(line: 261, column: 17, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 260, column: 15)
!1700 = !DILocation(line: 261, column: 9, scope: !1699)
!1701 = !DILocation(line: 262, column: 9, scope: !1699)
!1702 = !DILocation(line: 264, column: 10, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 264, column: 9)
!1704 = !DILocation(line: 264, column: 9, scope: !1686)
!1705 = !DILocation(line: 266, column: 20, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 266, column: 14)
!1707 = !DILocation(line: 266, column: 39, scope: !1706)
!1708 = !DILocation(line: 266, column: 14, scope: !1703)
!1709 = !DILocation(line: 267, column: 9, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 266, column: 48)
!1711 = !DILocation(line: 268, column: 9, scope: !1710)
!1712 = !DILocation(line: 265, column: 14, scope: !1703)
!1713 = !DILocalVariable(name: "fp", arg: 1, scope: !1714, file: !3, line: 1381, type: !276)
!1714 = distinct !DISubprogram(name: "fputcif", scope: !3, file: !3, line: 1381, type: !1715, scopeLine: 1382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !276, !13, !353}
!1717 = !{!1713, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1718 = !DILocalVariable(name: "blockId", arg: 2, scope: !1714, file: !3, line: 1381, type: !13)
!1719 = !DILocalVariable(name: "mol", arg: 3, scope: !1714, file: !3, line: 1381, type: !353)
!1720 = !DILocalVariable(name: "r", scope: !1714, file: !3, line: 1383, type: !37)
!1721 = !DILocalVariable(name: "tr", scope: !1714, file: !3, line: 1383, type: !37)
!1722 = !DILocalVariable(name: "a", scope: !1714, file: !3, line: 1383, type: !37)
!1723 = !DILocalVariable(name: "ta", scope: !1714, file: !3, line: 1383, type: !37)
!1724 = !DILocalVariable(name: "strandnum", scope: !1714, file: !3, line: 1383, type: !37)
!1725 = !DILocalVariable(name: "cid", scope: !1714, file: !3, line: 1384, type: !14)
!1726 = !DILocalVariable(name: "sp", scope: !1714, file: !3, line: 1385, type: !74)
!1727 = !DILocalVariable(name: "res", scope: !1714, file: !3, line: 1386, type: !39)
!1728 = !DILocalVariable(name: "ap", scope: !1714, file: !3, line: 1387, type: !219)
!1729 = !DILocation(line: 0, scope: !1714, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 270, column: 5, scope: !1686)
!1731 = !DILocation(line: 1390, column: 5, scope: !1732, inlinedAt: !1730)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 1390, column: 5)
!1733 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1390, column: 5)
!1734 = !DILocation(line: 1390, column: 5, scope: !1733, inlinedAt: !1730)
!1735 = !DILocation(line: 1392, column: 17, scope: !1714, inlinedAt: !1730)
!1736 = !{!872, !491, i64 96}
!1737 = !DILocation(line: 1396, column: 5, scope: !1714, inlinedAt: !1730)
!1738 = !DILocation(line: 1397, column: 5, scope: !1714, inlinedAt: !1730)
!1739 = !DILocation(line: 1398, column: 5, scope: !1714, inlinedAt: !1730)
!1740 = !DILocation(line: 1399, column: 5, scope: !1714, inlinedAt: !1730)
!1741 = !DILocation(line: 1400, column: 5, scope: !1714, inlinedAt: !1730)
!1742 = !DILocation(line: 1401, column: 5, scope: !1714, inlinedAt: !1730)
!1743 = !DILocation(line: 1402, column: 5, scope: !1714, inlinedAt: !1730)
!1744 = !DILocation(line: 1403, column: 5, scope: !1714, inlinedAt: !1730)
!1745 = !DILocation(line: 1404, column: 5, scope: !1714, inlinedAt: !1730)
!1746 = !DILocation(line: 1407, column: 36, scope: !1747, inlinedAt: !1730)
!1747 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1407, column: 5)
!1748 = !DILocation(line: 0, scope: !1747, inlinedAt: !1730)
!1749 = !DILocation(line: 1407, column: 5, scope: !1747, inlinedAt: !1730)
!1750 = !DILocation(line: 1392, column: 28, scope: !1714, inlinedAt: !1730)
!1751 = !DILocation(line: 1392, column: 11, scope: !1714, inlinedAt: !1730)
!1752 = !DILocation(line: 1408, column: 18, scope: !1753, inlinedAt: !1730)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 1407, column: 68)
!1754 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 1407, column: 5)
!1755 = !DILocation(line: 1409, column: 29, scope: !1756, inlinedAt: !1730)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 1409, column: 9)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 1409, column: 9)
!1758 = !DILocation(line: 1409, column: 23, scope: !1756, inlinedAt: !1730)
!1759 = !DILocation(line: 1409, column: 9, scope: !1757, inlinedAt: !1730)
!1760 = !DILocation(line: 1410, column: 23, scope: !1761, inlinedAt: !1730)
!1761 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 1409, column: 53)
!1762 = !DILocation(line: 1410, column: 19, scope: !1761, inlinedAt: !1730)
!1763 = !DILocation(line: 1409, column: 43, scope: !1756, inlinedAt: !1730)
!1764 = !DILocation(line: 1411, column: 34, scope: !1765, inlinedAt: !1730)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 1411, column: 13)
!1766 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 1411, column: 13)
!1767 = !DILocation(line: 1411, column: 27, scope: !1765, inlinedAt: !1730)
!1768 = !DILocation(line: 1411, column: 13, scope: !1766, inlinedAt: !1730)
!1769 = !DILocation(line: 1412, column: 19, scope: !1770, inlinedAt: !1730)
!1770 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1411, column: 49)
!1771 = !DILocation(line: 1413, column: 28, scope: !1770, inlinedAt: !1730)
!1772 = !DILocation(line: 1423, column: 33, scope: !1770, inlinedAt: !1730)
!1773 = !DILocation(line: 1423, column: 50, scope: !1770, inlinedAt: !1730)
!1774 = !DILocation(line: 1424, column: 25, scope: !1770, inlinedAt: !1730)
!1775 = !DILocation(line: 1424, column: 39, scope: !1770, inlinedAt: !1730)
!1776 = !DILocation(line: 1424, column: 53, scope: !1770, inlinedAt: !1730)
!1777 = !DILocation(line: 1421, column: 17, scope: !1770, inlinedAt: !1730)
!1778 = !DILocation(line: 1411, column: 45, scope: !1765, inlinedAt: !1730)
!1779 = distinct !{!1779, !1768, !1780, !516}
!1780 = !DILocation(line: 1426, column: 13, scope: !1766, inlinedAt: !1730)
!1781 = distinct !{!1781, !1759, !1782, !516}
!1782 = !DILocation(line: 1427, column: 9, scope: !1757, inlinedAt: !1730)
!1783 = !DILocation(line: 1407, column: 13, scope: !1747, inlinedAt: !1730)
!1784 = !DILocation(line: 1428, column: 18, scope: !1785, inlinedAt: !1730)
!1785 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 1428, column: 13)
!1786 = !DILocation(line: 1428, column: 29, scope: !1785, inlinedAt: !1730)
!1787 = !DILocation(line: 1428, column: 13, scope: !1753, inlinedAt: !1730)
!1788 = !DILocation(line: 1407, column: 60, scope: !1754, inlinedAt: !1730)
!1789 = distinct !{!1789, !1749, !1790, !516}
!1790 = !DILocation(line: 1430, column: 5, scope: !1747, inlinedAt: !1730)
!1791 = !DILocation(line: 271, column: 15, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 271, column: 9)
!1793 = !DILocation(line: 271, column: 12, scope: !1792)
!1794 = !DILocation(line: 271, column: 9, scope: !1686)
!1795 = !DILocation(line: 272, column: 9, scope: !1792)
!1796 = !DILocation(line: 274, column: 1, scope: !1686)
!1797 = distinct !DISubprogram(name: "putbnd", scope: !3, file: !3, line: 276, type: !1798, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!37, !13, !353}
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1801 = !DILocalVariable(name: "fname", arg: 1, scope: !1797, file: !3, line: 276, type: !13)
!1802 = !DILocalVariable(name: "mol", arg: 2, scope: !1797, file: !3, line: 276, type: !353)
!1803 = !DILocalVariable(name: "fp", scope: !1797, file: !3, line: 278, type: !276)
!1804 = !DILocalVariable(name: "sp", scope: !1797, file: !3, line: 279, type: !74)
!1805 = !DILocalVariable(name: "res", scope: !1797, file: !3, line: 280, type: !39)
!1806 = !DILocalVariable(name: "a", scope: !1797, file: !3, line: 281, type: !37)
!1807 = !DILocalVariable(name: "ta", scope: !1797, file: !3, line: 281, type: !37)
!1808 = !DILocalVariable(name: "ai", scope: !1797, file: !3, line: 281, type: !37)
!1809 = !DILocalVariable(name: "aj", scope: !1797, file: !3, line: 281, type: !37)
!1810 = !DILocalVariable(name: "r", scope: !1797, file: !3, line: 281, type: !37)
!1811 = !DILocalVariable(name: "rj", scope: !1797, file: !3, line: 281, type: !37)
!1812 = !DILocalVariable(name: "tr", scope: !1797, file: !3, line: 281, type: !37)
!1813 = !DILocalVariable(name: "rval", scope: !1797, file: !3, line: 282, type: !37)
!1814 = !DILocalVariable(name: "aoff", scope: !1797, file: !3, line: 283, type: !36)
!1815 = !DILocalVariable(name: "b", scope: !1797, file: !3, line: 284, type: !37)
!1816 = !DILocalVariable(name: "ebp", scope: !1797, file: !3, line: 285, type: !190)
!1817 = !DILabel(scope: !1797, name: "clean_up", file: !3, line: 338)
!1818 = !DILocation(line: 0, scope: !1797)
!1819 = !DILocation(line: 287, column: 10, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 287, column: 9)
!1821 = !DILocation(line: 287, column: 9, scope: !1797)
!1822 = !DILocation(line: 288, column: 17, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 287, column: 15)
!1824 = !DILocation(line: 288, column: 9, scope: !1823)
!1825 = !DILocation(line: 289, column: 9, scope: !1823)
!1826 = !DILocation(line: 291, column: 15, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 291, column: 9)
!1828 = !DILocation(line: 291, column: 34, scope: !1827)
!1829 = !DILocation(line: 291, column: 9, scope: !1797)
!1830 = !DILocation(line: 292, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 291, column: 43)
!1832 = !DILocation(line: 293, column: 9, scope: !1831)
!1833 = !DILocation(line: 296, column: 28, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 296, column: 5)
!1835 = !DILocation(line: 0, scope: !1834)
!1836 = !DILocation(line: 296, column: 5, scope: !1834)
!1837 = !DILocation(line: 297, column: 19, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 296, column: 5)
!1839 = !DILocation(line: 297, column: 12, scope: !1838)
!1840 = !DILocation(line: 296, column: 52, scope: !1838)
!1841 = distinct !{!1841, !1836, !1842, !516}
!1842 = !DILocation(line: 297, column: 19, scope: !1834)
!1843 = !DILocation(line: 299, column: 32, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 299, column: 9)
!1845 = !DILocation(line: 299, column: 25, scope: !1844)
!1846 = !DILocation(line: 299, column: 17, scope: !1844)
!1847 = !DILocation(line: 299, column: 51, scope: !1844)
!1848 = !DILocation(line: 299, column: 9, scope: !1797)
!1849 = !DILocation(line: 305, column: 5, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 305, column: 5)
!1851 = !DILocation(line: 300, column: 9, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 299, column: 60)
!1853 = !DILocation(line: 338, column: 3, scope: !1797)
!1854 = !DILocation(line: 339, column: 9, scope: !1797)
!1855 = !DILocation(line: 317, column: 5, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 317, column: 5)
!1857 = !DILocation(line: 306, column: 9, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 305, column: 68)
!1859 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 305, column: 5)
!1860 = !DILocation(line: 306, column: 18, scope: !1858)
!1861 = !DILocation(line: 307, column: 17, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 307, column: 13)
!1863 = !DILocation(line: 307, column: 29, scope: !1862)
!1864 = !DILocation(line: 307, column: 13, scope: !1858)
!1865 = !DILocation(line: 308, column: 23, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 307, column: 34)
!1867 = !DILocation(line: 308, column: 19, scope: !1866)
!1868 = !DILocation(line: 308, column: 38, scope: !1866)
!1869 = !DILocation(line: 308, column: 16, scope: !1866)
!1870 = !DILocation(line: 309, column: 27, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 309, column: 13)
!1872 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 309, column: 13)
!1873 = !DILocation(line: 309, column: 13, scope: !1872)
!1874 = !DILocation(line: 310, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 309, column: 51)
!1876 = !DILocation(line: 310, column: 17, scope: !1875)
!1877 = !DILocation(line: 310, column: 30, scope: !1875)
!1878 = !DILocation(line: 311, column: 23, scope: !1875)
!1879 = !DILocation(line: 311, column: 42, scope: !1875)
!1880 = !DILocation(line: 311, column: 20, scope: !1875)
!1881 = !DILocation(line: 309, column: 47, scope: !1871)
!1882 = distinct !{!1882, !1873, !1883, !516}
!1883 = !DILocation(line: 312, column: 13, scope: !1872)
!1884 = !DILocation(line: 313, column: 16, scope: !1866)
!1885 = !DILocation(line: 0, scope: !1866)
!1886 = !DILocation(line: 314, column: 9, scope: !1866)
!1887 = !DILocation(line: 0, scope: !1850)
!1888 = !DILocation(line: 305, column: 60, scope: !1859)
!1889 = distinct !{!1889, !1849, !1890, !516}
!1890 = !DILocation(line: 315, column: 5, scope: !1850)
!1891 = !DILocation(line: 318, column: 29, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 318, column: 9)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 318, column: 9)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 317, column: 60)
!1895 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 317, column: 5)
!1896 = !DILocation(line: 318, column: 23, scope: !1892)
!1897 = !DILocation(line: 318, column: 9, scope: !1893)
!1898 = !DILocation(line: 319, column: 23, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 318, column: 47)
!1900 = !DILocation(line: 319, column: 19, scope: !1899)
!1901 = !DILocation(line: 320, column: 24, scope: !1899)
!1902 = !DILocation(line: 320, column: 17, scope: !1899)
!1903 = !DILocation(line: 321, column: 34, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 321, column: 13)
!1905 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 321, column: 13)
!1906 = !{!610, !491, i64 72}
!1907 = !DILocation(line: 321, column: 27, scope: !1904)
!1908 = !DILocation(line: 321, column: 13, scope: !1905)
!1909 = !DILocation(line: 323, column: 30, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 321, column: 52)
!1911 = !{!610, !373, i64 80}
!1912 = !DILocation(line: 323, column: 25, scope: !1910)
!1913 = !DILocation(line: 323, column: 47, scope: !1910)
!1914 = !DILocation(line: 324, column: 25, scope: !1910)
!1915 = !DILocation(line: 324, column: 47, scope: !1910)
!1916 = !DILocation(line: 322, column: 17, scope: !1910)
!1917 = !DILocation(line: 321, column: 48, scope: !1904)
!1918 = distinct !{!1918, !1908, !1919, !516}
!1919 = !DILocation(line: 325, column: 13, scope: !1905)
!1920 = !DILocation(line: 326, column: 29, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 326, column: 13)
!1922 = !DILocation(line: 0, scope: !1921)
!1923 = !DILocation(line: 326, column: 13, scope: !1921)
!1924 = !DILocation(line: 327, column: 32, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 327, column: 21)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 326, column: 66)
!1927 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 326, column: 13)
!1928 = !{!1929, !491, i64 12}
!1929 = !{!"extbond_t", !373, i64 0, !491, i64 8, !491, i64 12, !491, i64 16}
!1930 = !DILocation(line: 327, column: 41, scope: !1925)
!1931 = !DILocation(line: 327, column: 21, scope: !1926)
!1932 = !DILocation(line: 330, column: 35, scope: !1926)
!1933 = !DILocation(line: 330, column: 22, scope: !1926)
!1934 = !DILocation(line: 332, column: 30, scope: !1926)
!1935 = !{!1929, !491, i64 8}
!1936 = !DILocation(line: 332, column: 38, scope: !1926)
!1937 = !DILocation(line: 332, column: 49, scope: !1926)
!1938 = !{!1929, !491, i64 16}
!1939 = !DILocation(line: 332, column: 58, scope: !1926)
!1940 = !DILocation(line: 331, column: 17, scope: !1926)
!1941 = !DILocation(line: 333, column: 13, scope: !1926)
!1942 = !DILocation(line: 326, column: 57, scope: !1927)
!1943 = distinct !{!1943, !1923, !1944, !516}
!1944 = !DILocation(line: 333, column: 13, scope: !1921)
!1945 = !DILocation(line: 318, column: 43, scope: !1892)
!1946 = distinct !{!1946, !1897, !1947, !516}
!1947 = !DILocation(line: 334, column: 9, scope: !1893)
!1948 = !DILocation(line: 335, column: 12, scope: !1894)
!1949 = !DILocation(line: 317, column: 52, scope: !1895)
!1950 = !DILocation(line: 0, scope: !1856)
!1951 = distinct !{!1951, !1855, !1952, !516}
!1952 = !DILocation(line: 336, column: 5, scope: !1856)
!1953 = !DILocation(line: 340, column: 9, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 339, column: 9)
!1955 = !DILocation(line: 342, column: 5, scope: !1797)
!1956 = !DILocation(line: 344, column: 5, scope: !1797)
!1957 = !DILocation(line: 345, column: 1, scope: !1797)
!1958 = distinct !DISubprogram(name: "putdist", scope: !3, file: !3, line: 347, type: !1959, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1961)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!37, !13, !353, !13, !13}
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979}
!1962 = !DILocalVariable(name: "fname", arg: 1, scope: !1958, file: !3, line: 347, type: !13)
!1963 = !DILocalVariable(name: "mol", arg: 2, scope: !1958, file: !3, line: 347, type: !353)
!1964 = !DILocalVariable(name: "aexp1", arg: 3, scope: !1958, file: !3, line: 347, type: !13)
!1965 = !DILocalVariable(name: "aexp2", arg: 4, scope: !1958, file: !3, line: 347, type: !13)
!1966 = !DILocalVariable(name: "fp", scope: !1958, file: !3, line: 349, type: !276)
!1967 = !DILocalVariable(name: "sp1", scope: !1958, file: !3, line: 350, type: !74)
!1968 = !DILocalVariable(name: "res1", scope: !1958, file: !3, line: 351, type: !39)
!1969 = !DILocalVariable(name: "res2", scope: !1958, file: !3, line: 351, type: !39)
!1970 = !DILocalVariable(name: "ap1", scope: !1958, file: !3, line: 352, type: !219)
!1971 = !DILocalVariable(name: "ap2", scope: !1958, file: !3, line: 352, type: !219)
!1972 = !DILocalVariable(name: "tr", scope: !1958, file: !3, line: 353, type: !37)
!1973 = !DILocalVariable(name: "r1", scope: !1958, file: !3, line: 353, type: !37)
!1974 = !DILocalVariable(name: "r2", scope: !1958, file: !3, line: 353, type: !37)
!1975 = !DILocalVariable(name: "a1", scope: !1958, file: !3, line: 353, type: !37)
!1976 = !DILocalVariable(name: "a2", scope: !1958, file: !3, line: 353, type: !37)
!1977 = !DILocalVariable(name: "res", scope: !1958, file: !3, line: 354, type: !38)
!1978 = !DILocalVariable(name: "cnt", scope: !1958, file: !3, line: 355, type: !37)
!1979 = !DILabel(scope: !1958, name: "clean_up", file: !3, line: 420)
!1980 = !DILocation(line: 0, scope: !1958)
!1981 = !DILocation(line: 357, column: 10, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 357, column: 9)
!1983 = !DILocation(line: 357, column: 9, scope: !1958)
!1984 = !DILocation(line: 358, column: 17, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 357, column: 15)
!1986 = !DILocation(line: 358, column: 9, scope: !1985)
!1987 = !DILocation(line: 359, column: 9, scope: !1985)
!1988 = !DILocation(line: 362, column: 5, scope: !1958)
!1989 = !DILocation(line: 363, column: 21, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 363, column: 5)
!1991 = !DILocation(line: 0, scope: !1990)
!1992 = !DILocation(line: 363, column: 5, scope: !1990)
!1993 = !DILocation(line: 364, column: 14, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 363, column: 56)
!1995 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 363, column: 5)
!1996 = !DILocation(line: 364, column: 21, scope: !1994)
!1997 = !{!739, !491, i64 12}
!1998 = !DILocation(line: 365, column: 24, scope: !1994)
!1999 = !DILocation(line: 365, column: 21, scope: !1994)
!2000 = !DILocation(line: 366, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 366, column: 9)
!2002 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 366, column: 9)
!2003 = !DILocation(line: 366, column: 9, scope: !2002)
!2004 = !DILocation(line: 367, column: 20, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 366, column: 51)
!2006 = !DILocation(line: 368, column: 19, scope: !2005)
!2007 = !DILocation(line: 368, column: 26, scope: !2005)
!2008 = !{!610, !491, i64 40}
!2009 = !DILocation(line: 369, column: 29, scope: !2005)
!2010 = !DILocation(line: 369, column: 26, scope: !2005)
!2011 = !DILocation(line: 370, column: 50, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 370, column: 13)
!2013 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 370, column: 13)
!2014 = !DILocation(line: 370, column: 13, scope: !2013)
!2015 = !DILocation(line: 370, column: 38, scope: !2013)
!2016 = !DILocation(line: 372, column: 22, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 371, column: 31)
!2018 = !DILocation(line: 372, column: 29, scope: !2017)
!2019 = !DILocation(line: 373, column: 32, scope: !2017)
!2020 = !DILocation(line: 373, column: 29, scope: !2017)
!2021 = !DILocation(line: 371, column: 27, scope: !2012)
!2022 = distinct !{!2022, !2014, !2023, !516}
!2023 = !DILocation(line: 374, column: 13, scope: !2013)
!2024 = !DILocation(line: 366, column: 47, scope: !2001)
!2025 = distinct !{!2025, !2003, !2026, !516}
!2026 = !DILocation(line: 375, column: 9, scope: !2002)
!2027 = !DILocation(line: 363, column: 48, scope: !1995)
!2028 = distinct !{!2028, !1992, !2029, !516}
!2029 = !DILocation(line: 376, column: 5, scope: !1990)
!2030 = !DILocation(line: 377, column: 5, scope: !1958)
!2031 = !DILocation(line: 0, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 379, column: 5)
!2033 = !DILocation(line: 379, column: 5, scope: !2032)
!2034 = !DILocation(line: 380, column: 20, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 379, column: 5)
!2036 = !DILocation(line: 380, column: 12, scope: !2035)
!2037 = !DILocation(line: 379, column: 56, scope: !2035)
!2038 = distinct !{!2038, !2033, !2039, !516}
!2039 = !DILocation(line: 380, column: 20, scope: !2032)
!2040 = !DILocation(line: 381, column: 38, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 381, column: 9)
!2042 = !DILocation(line: 381, column: 41, scope: !2041)
!2043 = !DILocation(line: 381, column: 31, scope: !2041)
!2044 = !DILocation(line: 381, column: 16, scope: !2041)
!2045 = !DILocation(line: 382, column: 9, scope: !2041)
!2046 = !DILocation(line: 381, column: 9, scope: !1958)
!2047 = !DILocation(line: 386, column: 5, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 386, column: 5)
!2049 = !DILocation(line: 383, column: 17, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 382, column: 18)
!2051 = !DILocation(line: 383, column: 9, scope: !2050)
!2052 = !DILocation(line: 420, column: 3, scope: !1958)
!2053 = !DILocation(line: 421, column: 9, scope: !1958)
!2054 = !DILocation(line: 387, column: 25, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 387, column: 9)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 387, column: 9)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 386, column: 64)
!2058 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 386, column: 5)
!2059 = !DILocation(line: 387, column: 9, scope: !2056)
!2060 = !DILocation(line: 388, column: 23, scope: !2055)
!2061 = !DILocation(line: 386, column: 56, scope: !2058)
!2062 = !DILocation(line: 0, scope: !2048)
!2063 = distinct !{!2063, !2047, !2064, !516}
!2064 = !DILocation(line: 389, column: 5, scope: !2048)
!2065 = !DILocation(line: 391, column: 15, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 391, column: 9)
!2067 = !DILocation(line: 391, column: 34, scope: !2066)
!2068 = !DILocation(line: 391, column: 9, scope: !1958)
!2069 = !DILocation(line: 396, column: 30, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 396, column: 5)
!2071 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 396, column: 5)
!2072 = !DILocation(line: 396, column: 5, scope: !2071)
!2073 = !DILocation(line: 397, column: 16, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 396, column: 42)
!2075 = !DILocation(line: 396, column: 38, scope: !2070)
!2076 = !DILocation(line: 398, column: 33, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 398, column: 9)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 398, column: 9)
!2079 = !DILocation(line: 398, column: 25, scope: !2077)
!2080 = !DILocation(line: 398, column: 9, scope: !2078)
!2081 = !DILocation(line: 396, column: 14, scope: !2071)
!2082 = distinct !{!2082, !2072, !2083, !516}
!2083 = !DILocation(line: 418, column: 5, scope: !2071)
!2084 = !DILocation(line: 399, column: 26, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 398, column: 49)
!2086 = !DILocation(line: 400, column: 36, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 400, column: 17)
!2088 = !DILocation(line: 400, column: 29, scope: !2087)
!2089 = !DILocation(line: 400, column: 17, scope: !2085)
!2090 = !DILocation(line: 402, column: 28, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 401, column: 45)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 401, column: 17)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 401, column: 17)
!2094 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 400, column: 44)
!2095 = !DILocation(line: 401, column: 41, scope: !2092)
!2096 = !DILocation(line: 403, column: 45, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 403, column: 21)
!2098 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 403, column: 21)
!2099 = !DILocation(line: 403, column: 37, scope: !2097)
!2100 = !DILocation(line: 403, column: 21, scope: !2098)
!2101 = !DILocation(line: 0, scope: !2071)
!2102 = !DILocation(line: 401, column: 33, scope: !2092)
!2103 = !DILocation(line: 401, column: 17, scope: !2093)
!2104 = distinct !{!2104, !2103, !2105, !516}
!2105 = !DILocation(line: 415, column: 17, scope: !2093)
!2106 = !DILocation(line: 404, column: 38, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 403, column: 61)
!2108 = !DILocation(line: 405, column: 46, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 405, column: 29)
!2110 = !DILocation(line: 405, column: 39, scope: !2109)
!2111 = !DILocation(line: 405, column: 29, scope: !2107)
!2112 = !DILocation(line: 408, column: 51, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 405, column: 54)
!2114 = !DILocation(line: 409, column: 42, scope: !2113)
!2115 = !DILocation(line: 410, column: 43, scope: !2113)
!2116 = !DILocation(line: 410, column: 59, scope: !2113)
!2117 = !DILocation(line: 411, column: 37, scope: !2113)
!2118 = !DILocalVariable(name: "ap1", arg: 1, scope: !2119, file: !3, line: 839, type: !219)
!2119 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 839, type: !2120, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2122)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!10, !219, !219}
!2122 = !{!2118, !2123, !2124, !2125, !2126}
!2123 = !DILocalVariable(name: "ap2", arg: 2, scope: !2119, file: !3, line: 839, type: !219)
!2124 = !DILocalVariable(name: "dx", scope: !2119, file: !3, line: 841, type: !10)
!2125 = !DILocalVariable(name: "dy", scope: !2119, file: !3, line: 841, type: !10)
!2126 = !DILocalVariable(name: "dz", scope: !2119, file: !3, line: 841, type: !10)
!2127 = !DILocation(line: 0, scope: !2119, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 411, column: 37, scope: !2113)
!2129 = !DILocation(line: 843, column: 24, scope: !2119, inlinedAt: !2128)
!2130 = !DILocation(line: 844, column: 24, scope: !2119, inlinedAt: !2128)
!2131 = !DILocation(line: 845, column: 24, scope: !2119, inlinedAt: !2128)
!2132 = !DILocation(line: 846, column: 31, scope: !2119, inlinedAt: !2128)
!2133 = !DILocation(line: 846, column: 26, scope: !2119, inlinedAt: !2128)
!2134 = !DILocation(line: 846, column: 36, scope: !2119, inlinedAt: !2128)
!2135 = !DILocation(line: 846, column: 13, scope: !2119, inlinedAt: !2128)
!2136 = !DILocation(line: 406, column: 29, scope: !2113)
!2137 = !DILocation(line: 412, column: 32, scope: !2113)
!2138 = !DILocation(line: 413, column: 25, scope: !2113)
!2139 = !DILocation(line: 403, column: 57, scope: !2097)
!2140 = distinct !{!2140, !2100, !2141, !516}
!2141 = !DILocation(line: 414, column: 21, scope: !2098)
!2142 = !DILocation(line: 398, column: 45, scope: !2077)
!2143 = distinct !{!2143, !2080, !2144, !516}
!2144 = !DILocation(line: 417, column: 9, scope: !2078)
!2145 = !DILocation(line: 392, column: 17, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 391, column: 43)
!2147 = !DILocation(line: 392, column: 9, scope: !2146)
!2148 = !DILocation(line: 393, column: 9, scope: !2146)
!2149 = !DILocation(line: 422, column: 9, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 421, column: 9)
!2151 = !DILocation(line: 425, column: 1, scope: !1958)
!2152 = !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 106, type: !2153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !353, !13}
!2155 = distinct !DISubprogram(name: "putmatrix", scope: !3, file: !3, line: 427, type: !2156, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2160)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!37, !13, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !214)
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2166, !2167}
!2161 = !DILocalVariable(name: "fname", arg: 1, scope: !2155, file: !3, line: 427, type: !13)
!2162 = !DILocalVariable(name: "mat", arg: 2, scope: !2155, file: !3, line: 427, type: !2158)
!2163 = !DILocalVariable(name: "fp", scope: !2155, file: !3, line: 429, type: !276)
!2164 = !DILocalVariable(name: "i", scope: !2155, file: !3, line: 430, type: !37)
!2165 = !DILocalVariable(name: "j", scope: !2155, file: !3, line: 430, type: !37)
!2166 = !DILocalVariable(name: "err", scope: !2155, file: !3, line: 431, type: !37)
!2167 = !DILabel(scope: !2155, name: "CLEAN_UP", file: !3, line: 451)
!2168 = !DILocation(line: 0, scope: !2155)
!2169 = !DILocation(line: 433, column: 15, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 433, column: 9)
!2171 = !DILocation(line: 433, column: 23, scope: !2170)
!2172 = !DILocation(line: 433, column: 26, scope: !2170)
!2173 = !DILocation(line: 433, column: 33, scope: !2170)
!2174 = !DILocation(line: 433, column: 9, scope: !2155)
!2175 = !DILocation(line: 434, column: 17, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 433, column: 42)
!2177 = !DILocation(line: 434, column: 9, scope: !2176)
!2178 = !DILocation(line: 436, column: 9, scope: !2176)
!2179 = !DILocation(line: 437, column: 17, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 437, column: 16)
!2181 = !DILocation(line: 437, column: 16, scope: !2170)
!2182 = !DILocation(line: 438, column: 14, scope: !2180)
!2183 = !DILocation(line: 438, column: 9, scope: !2180)
!2184 = !DILocation(line: 439, column: 20, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 439, column: 14)
!2186 = !DILocation(line: 439, column: 39, scope: !2185)
!2187 = !DILocation(line: 439, column: 14, scope: !2180)
!2188 = !DILocation(line: 440, column: 17, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 439, column: 48)
!2190 = !DILocation(line: 440, column: 9, scope: !2189)
!2191 = !DILocation(line: 442, column: 9, scope: !2189)
!2192 = !DILocation(line: 0, scope: !2180)
!2193 = !DILocation(line: 447, column: 32, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 446, column: 9)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 446, column: 9)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 445, column: 29)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 445, column: 5)
!2198 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 445, column: 5)
!2199 = !DILocation(line: 447, column: 13, scope: !2194)
!2200 = !DILocation(line: 448, column: 9, scope: !2196)
!2201 = !DILocation(line: 451, column: 3, scope: !2155)
!2202 = !DILocation(line: 453, column: 12, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 453, column: 9)
!2204 = !DILocation(line: 453, column: 20, scope: !2203)
!2205 = !DILocation(line: 454, column: 9, scope: !2203)
!2206 = !DILocation(line: 455, column: 5, scope: !2155)
!2207 = distinct !DISubprogram(name: "initres", scope: !3, file: !3, line: 750, type: !259, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !733)
!2208 = !DILocation(line: 753, column: 5, scope: !2207)
!2209 = !DILocation(line: 754, column: 13, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 754, column: 9)
!2211 = !DILocation(line: 754, column: 23, scope: !2210)
!2212 = !DILocation(line: 754, column: 9, scope: !2207)
!2213 = !DILocation(line: 755, column: 34, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 754, column: 32)
!2215 = !DILocation(line: 755, column: 23, scope: !2214)
!2216 = !DILocation(line: 756, column: 27, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 756, column: 13)
!2218 = !DILocation(line: 756, column: 13, scope: !2214)
!2219 = !DILocation(line: 757, column: 21, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 756, column: 36)
!2221 = !DILocation(line: 757, column: 13, scope: !2220)
!2222 = !DILocation(line: 758, column: 13, scope: !2220)
!2223 = !DILocation(line: 761, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 761, column: 9)
!2225 = !DILocation(line: 761, column: 21, scope: !2224)
!2226 = !DILocation(line: 761, column: 9, scope: !2207)
!2227 = !DILocation(line: 762, column: 32, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 761, column: 30)
!2229 = !DILocation(line: 762, column: 21, scope: !2228)
!2230 = !DILocation(line: 763, column: 25, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 763, column: 13)
!2232 = !DILocation(line: 763, column: 13, scope: !2228)
!2233 = !DILocation(line: 764, column: 21, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 763, column: 34)
!2235 = !DILocation(line: 764, column: 13, scope: !2234)
!2236 = !DILocation(line: 765, column: 13, scope: !2234)
!2237 = !DILocation(line: 768, column: 20, scope: !2207)
!2238 = !DILocation(line: 768, column: 18, scope: !2207)
!2239 = !DILocation(line: 769, column: 17, scope: !2207)
!2240 = !DILocation(line: 770, column: 1, scope: !2207)
!2241 = !DISubprogram(name: "newmolecule", scope: !3, file: !3, line: 103, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!353}
!2244 = !DISubprogram(name: "ggets", scope: !3, file: !3, line: 101, type: !2245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!13, !13, !37, !276}
!2247 = distinct !DISubprogram(name: "makebonds", scope: !3, file: !3, line: 794, type: !2248, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !39}
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258}
!2251 = !DILocalVariable(name: "res", arg: 1, scope: !2247, file: !3, line: 794, type: !39)
!2252 = !DILocalVariable(name: "a1", scope: !2247, file: !3, line: 796, type: !37)
!2253 = !DILocalVariable(name: "a2", scope: !2247, file: !3, line: 796, type: !37)
!2254 = !DILocalVariable(name: "ap1", scope: !2247, file: !3, line: 797, type: !219)
!2255 = !DILocalVariable(name: "ap2", scope: !2247, file: !3, line: 797, type: !219)
!2256 = !DILocalVariable(name: "ih1", scope: !2247, file: !3, line: 798, type: !37)
!2257 = !DILocalVariable(name: "ih2", scope: !2247, file: !3, line: 798, type: !37)
!2258 = !DILocalVariable(name: "d", scope: !2247, file: !3, line: 799, type: !10)
!2259 = !DILocation(line: 0, scope: !2247)
!2260 = !DILocation(line: 801, column: 21, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 801, column: 5)
!2262 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 801, column: 5)
!2263 = !DILocation(line: 801, column: 5, scope: !2262)
!2264 = !DILocation(line: 803, column: 14, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 801, column: 44)
!2266 = !DILocation(line: 803, column: 25, scope: !2265)
!2267 = !{!490, !491, i64 20}
!2268 = !DILocation(line: 801, column: 40, scope: !2261)
!2269 = distinct !{!2269, !2270}
!2270 = !{!"llvm.loop.unroll.disable"}
!2271 = !DILocation(line: 806, column: 21, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 806, column: 5)
!2273 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 806, column: 5)
!2274 = !DILocation(line: 806, column: 5, scope: !2273)
!2275 = distinct !{!2275, !2263, !2276, !516}
!2276 = !DILocation(line: 804, column: 5, scope: !2262)
!2277 = !DILocation(line: 806, column: 28, scope: !2272)
!2278 = !DILocation(line: 806, column: 37, scope: !2272)
!2279 = distinct !{!2279, !2274, !2280, !516}
!2280 = !DILocation(line: 836, column: 5, scope: !2273)
!2281 = !DILocation(line: 807, column: 21, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 806, column: 48)
!2283 = !DILocation(line: 808, column: 13, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 808, column: 13)
!2285 = !{!2286, !2286, i64 0}
!2286 = !{!"short", !367, i64 0}
!2287 = !DILocation(line: 808, column: 13, scope: !2282)
!2288 = !DILocation(line: 809, column: 19, scope: !2284)
!2289 = !DILocation(line: 809, column: 13, scope: !2284)
!2290 = !DILocation(line: 0, scope: !2284)
!2291 = !DILocation(line: 812, column: 22, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 812, column: 9)
!2293 = !DILocation(line: 812, column: 30, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 812, column: 9)
!2295 = !DILocation(line: 812, column: 9, scope: !2292)
!2296 = !DILocation(line: 814, column: 17, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 812, column: 53)
!2298 = !DILocation(line: 814, column: 17, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 814, column: 17)
!2300 = !DILocation(line: 813, column: 25, scope: !2297)
!2301 = !DILocation(line: 815, column: 23, scope: !2299)
!2302 = !DILocation(line: 815, column: 17, scope: !2299)
!2303 = !DILocation(line: 0, scope: !2299)
!2304 = !DILocation(line: 819, column: 17, scope: !2297)
!2305 = !DILocation(line: 0, scope: !2119, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 819, column: 17, scope: !2297)
!2307 = !DILocation(line: 843, column: 24, scope: !2119, inlinedAt: !2306)
!2308 = !DILocation(line: 844, column: 24, scope: !2119, inlinedAt: !2306)
!2309 = !DILocation(line: 845, column: 24, scope: !2119, inlinedAt: !2306)
!2310 = !DILocation(line: 846, column: 31, scope: !2119, inlinedAt: !2306)
!2311 = !DILocation(line: 846, column: 26, scope: !2119, inlinedAt: !2306)
!2312 = !DILocation(line: 846, column: 36, scope: !2119, inlinedAt: !2306)
!2313 = !DILocation(line: 846, column: 13, scope: !2119, inlinedAt: !2306)
!2314 = !DILocation(line: 820, column: 21, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 820, column: 17)
!2316 = !DILocation(line: 821, column: 23, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 821, column: 21)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 820, column: 29)
!2319 = !DILocation(line: 821, column: 21, scope: !2318)
!2320 = !DILocation(line: 822, column: 30, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 822, column: 25)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 821, column: 37)
!2323 = !DILocation(line: 822, column: 41, scope: !2321)
!2324 = !DILocation(line: 822, column: 58, scope: !2321)
!2325 = !DILocation(line: 823, column: 30, scope: !2321)
!2326 = !DILocation(line: 823, column: 41, scope: !2321)
!2327 = !DILocation(line: 822, column: 25, scope: !2322)
!2328 = !DILocation(line: 828, column: 26, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 828, column: 24)
!2330 = !DILocation(line: 828, column: 24, scope: !2315)
!2331 = !DILocation(line: 829, column: 26, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 829, column: 21)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 828, column: 39)
!2334 = !DILocation(line: 829, column: 37, scope: !2332)
!2335 = !DILocation(line: 829, column: 54, scope: !2332)
!2336 = !DILocation(line: 830, column: 26, scope: !2332)
!2337 = !DILocation(line: 830, column: 37, scope: !2332)
!2338 = !DILocation(line: 829, column: 21, scope: !2333)
!2339 = !DILocation(line: 0, scope: !2315)
!2340 = !DILocation(line: 812, column: 49, scope: !2294)
!2341 = !DILocation(line: 812, column: 37, scope: !2294)
!2342 = distinct !{!2342, !2295, !2343, !516}
!2343 = !DILocation(line: 835, column: 9, scope: !2292)
!2344 = !DILocation(line: 837, column: 1, scope: !2247)
!2345 = !DISubprogram(name: "addresidue", scope: !3, file: !3, line: 105, type: !2346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!37, !353, !13, !39}
!2348 = !DISubprogram(name: "addstrand", scope: !3, file: !3, line: 104, type: !2349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!37, !353, !13}
!2351 = !DISubprogram(name: "NAB_initatom", scope: !3, file: !3, line: 89, type: !2352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{null, !219, !37}
!2354 = !DISubprogram(name: "NAB_initres", scope: !3, file: !3, line: 88, type: !2355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !39, !37}
