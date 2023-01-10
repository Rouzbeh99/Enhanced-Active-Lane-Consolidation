; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r/llvm-ir/544.nab_r_bc/src/molio.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/molio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.residue_t = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.atom_t = type { ptr, ptr, i32, i32, [8 x i32], ptr, double, double, double, double, ptr, i32, double, double, i32, i32, ptr, [3 x double], double }
%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.strand_t = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.cid_t = type { i32, i32, ptr }
%struct.extbond_t = type { ptr, i32, i32, i32 }

@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"getpdb: can't open file %s\0A\00", align 1
@getmatrix.mat = internal global [4 x [4 x double]] zeroinitializer, align 16, !dbg !0
@.str.3 = private unnamed_addr constant [36 x i8] c"getmatrix: NULL or empty file name\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"getmatrix: can't read matrix file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%lf %lf %lf %lf\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"getmatrix: bad row %d: got %d elements, needed 4\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"getmatrix: missing rows: got %d rows, needed 4\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"putpdb: NULL molecule\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
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
@.str.123 = private unnamed_addr constant [4 x i8] c"PHE\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"TYR\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"TRP\00", align 1
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
@.str.158 = private unnamed_addr constant [10 x i8] c"data_%s\0A\0A\00", align 1
@.str.159 = private unnamed_addr constant [38 x i8] c"###########\0A## ENTRY ##\0A###########\0A\0A\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"_entry.id       %s\0A\0A\00", align 1
@.str.161 = private unnamed_addr constant [50 x i8] c"###############\0A## ATOM_SITE ##\0A###############\0A\0A\00", align 1
@.str.162 = private unnamed_addr constant [46 x i8] c"loop_\0A_atom_site.id\0A_atom_site.label_atom_id\0A\00", align 1
@.str.163 = private unnamed_addr constant [51 x i8] c"_atom_site.label_comp_id\0A_atom_site.label_asym_id\0A\00", align 1
@.str.164 = private unnamed_addr constant [43 x i8] c"_atom_site.auth_seq_id\0A_atom_site.cartn_x\0A\00", align 1
@.str.165 = private unnamed_addr constant [39 x i8] c"_atom_site.cartn_y\0A_atom_site.cartn_z\0A\00", align 1
@.str.166 = private unnamed_addr constant [52 x i8] c"_atom_site.label_entity_id\0A_atom_site.label_seq_id\0A\00", align 1
@.str.167 = private unnamed_addr constant [47 x i8] c"%5d %-4s %3s %c %4d %8.3f %8.3f %8.3f %3d %4d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @getpdb(ptr noundef %fname, ptr noundef readonly %options) local_unnamed_addr #0 !dbg !352 {
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
  call void @llvm.dbg.value(metadata ptr %fname, metadata !358, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata ptr %options, metadata !359, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata ptr null, metadata !360, metadata !DIExpression()), !dbg !363
  %tobool.not = icmp eq ptr %fname, null, !dbg !364
  br i1 %tobool.not, label %if.then, label %lor.lhs.false, !dbg !366

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %fname, align 1, !dbg !367, !tbaa !368
  %tobool1.not = icmp eq i8 %0, 0, !dbg !367
  br i1 %tobool1.not, label %if.then, label %if.else, !dbg !371

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load ptr, ptr @stdin, align 8, !dbg !372, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %1, metadata !360, metadata !DIExpression()), !dbg !363
  br label %if.end17, !dbg !376

if.else:                                          ; preds = %lor.lhs.false
  %call = tail call i32 @strcmp(ptr noundef nonnull %fname, ptr noundef nonnull dereferenceable(2) @.str) #18, !dbg !377
  %tobool2.not = icmp eq i32 %call, 0, !dbg !377
  br i1 %tobool2.not, label %if.then3, label %if.else4, !dbg !379

if.then3:                                         ; preds = %if.else
  %2 = load ptr, ptr @stdin, align 8, !dbg !380, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %2, metadata !360, metadata !DIExpression()), !dbg !363
  br label %if.end17, !dbg !382

if.else4:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !362, metadata !DIExpression()), !dbg !363
  %call5 = tail call i32 @get_mytaskid() #19, !dbg !383
  %cmp = icmp eq i32 %call5, 0, !dbg !386
  br i1 %cmp, label %if.then6, label %if.end11, !dbg !387

if.then6:                                         ; preds = %if.else4
  %call7 = tail call ptr @fopen(ptr noundef nonnull %fname, ptr noundef nonnull @.str.1), !dbg !388
  call void @llvm.dbg.value(metadata ptr %call7, metadata !360, metadata !DIExpression()), !dbg !363
  %cmp8 = icmp eq ptr %call7, null, !dbg !391
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !392

if.then9:                                         ; preds = %if.then6
  %3 = load ptr, ptr @stderr, align 8, !dbg !393, !tbaa !374
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %fname) #20, !dbg !395
  call void @llvm.dbg.value(metadata i32 -1, metadata !362, metadata !DIExpression()), !dbg !363
  br label %if.end11, !dbg !396

if.end11:                                         ; preds = %if.then6, %if.then9, %if.else4
  %fp.0 = phi ptr [ null, %if.then9 ], [ %call7, %if.then6 ], [ null, %if.else4 ], !dbg !363
  %ier.0 = phi i32 [ -1, %if.then9 ], [ 0, %if.then6 ], [ 0, %if.else4 ], !dbg !397
  call void @llvm.dbg.value(metadata i32 %ier.0, metadata !362, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata ptr %fp.0, metadata !360, metadata !DIExpression()), !dbg !363
  tail call void @reducerror(i32 noundef %ier.0) #19, !dbg !398
  %call12 = tail call i32 @get_mytaskid() #19, !dbg !399
  %cmp13.not = icmp eq i32 %call12, 0, !dbg !401
  %spec.select = select i1 %cmp13.not, ptr %fp.0, ptr null, !dbg !402
  br label %if.end17, !dbg !402

if.end17:                                         ; preds = %if.end11, %if.then3, %if.then
  %fp.1 = phi ptr [ %2, %if.then3 ], [ %1, %if.then ], [ %spec.select, %if.end11 ], !dbg !403
  call void @llvm.dbg.value(metadata ptr %fp.1, metadata !360, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata ptr %fp.1, metadata !404, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata ptr %options, metadata !409, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %line.i) #19, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %line.i, metadata !415, metadata !DIExpression()) #19, !dbg !456
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %sname.i) #19, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %sname.i, metadata !419, metadata !DIExpression()) #19, !dbg !458
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %aname.i) #19, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %aname.i, metadata !423, metadata !DIExpression()) #19, !dbg !460
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rname.i) #19, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %rname.i, metadata !424, metadata !DIExpression()) #19, !dbg !462
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %l_rname.i) #19, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %l_rname.i, metadata !425, metadata !DIExpression()) #19, !dbg !463
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rid.i) #19, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %rid.i, metadata !426, metadata !DIExpression()) #19, !dbg !465
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %l_rid.i) #19, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %l_rid.i, metadata !427, metadata !DIExpression()) #19, !dbg !466
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %field.i) #19, !dbg !467
  call void @llvm.dbg.declare(metadata ptr %field.i, metadata !428, metadata !DIExpression()) #19, !dbg !468
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rnum.i) #19, !dbg !469
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i) #19, !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r.i) #19, !dbg !470
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %loptions.i) #19, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %loptions.i, metadata !442, metadata !DIExpression()) #19, !dbg !472
  %cmp.i = icmp eq ptr %options, null, !dbg !473
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !475

if.then.i:                                        ; preds = %if.end17
  store i8 0, ptr %loptions.i, align 16, !dbg !476, !tbaa !368
  br label %if.end.i, !dbg !477

if.else.i:                                        ; preds = %if.end17
  %call.i = call ptr @strcpy(ptr noundef nonnull %loptions.i, ptr noundef nonnull %options) #19, !dbg !478
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  call fastcc void @initres() #19, !dbg !479
  %.b.i.i = load i1, ptr @init_atab.init, align 4, !dbg !480
  br i1 %.b.i.i, label %init_atab.exit.i, label %for.body.i.i, !dbg !483

for.body.i.i:                                     ; preds = %if.end.i, %if.end5.i.i
  %ap.016.i.i = phi ptr [ %incdec.ptr.i.i, %if.end5.i.i ], [ @atab, %if.end.i ]
  %a.015.i.i = phi i32 [ %inc.i.i, %if.end5.i.i ], [ 0, %if.end.i ]
  call void @llvm.dbg.value(metadata ptr %ap.016.i.i, metadata !263, metadata !DIExpression()) #19, !dbg !484
  call void @llvm.dbg.value(metadata i32 %a.015.i.i, metadata !262, metadata !DIExpression()) #19, !dbg !484
  %call.i.i = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #21, !dbg !485
  store ptr %call.i.i, ptr %ap.016.i.i, align 8, !dbg !489, !tbaa !490
  %cmp2.i.i = icmp eq ptr %call.i.i, null, !dbg !494
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end5.i.i, !dbg !496

if.then3.i.i:                                     ; preds = %for.body.i.i
  %4 = load ptr, ptr @stderr, align 8, !dbg !497, !tbaa !374
  %5 = call i64 @fwrite(ptr nonnull @.str.53, i64 35, i64 1, ptr %4) #22, !dbg !499
  call void @exit(i32 noundef 1) #23, !dbg !500
  unreachable, !dbg !500

if.end5.i.i:                                      ; preds = %for.body.i.i
  store i8 0, ptr %call.i.i, align 1, !dbg !501, !tbaa !368
  %a_atomtype.i.i = getelementptr inbounds %struct.atom_t, ptr %ap.016.i.i, i64 0, i32 1, !dbg !502
  store ptr null, ptr %a_atomtype.i.i, align 8, !dbg !503, !tbaa !504
  %a_element.i.i = getelementptr inbounds %struct.atom_t, ptr %ap.016.i.i, i64 0, i32 10, !dbg !505
  store ptr null, ptr %a_element.i.i, align 8, !dbg !506, !tbaa !507
  %a_fullname.i.i = getelementptr inbounds %struct.atom_t, ptr %ap.016.i.i, i64 0, i32 16, !dbg !508
  store ptr null, ptr %a_fullname.i.i, align 8, !dbg !509, !tbaa !510
  %inc.i.i = add nuw nsw i32 %a.015.i.i, 1, !dbg !511
  call void @llvm.dbg.value(metadata i32 %inc.i.i, metadata !262, metadata !DIExpression()) #19, !dbg !484
  %incdec.ptr.i.i = getelementptr inbounds %struct.atom_t, ptr %ap.016.i.i, i64 1, !dbg !512
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i.i, metadata !263, metadata !DIExpression()) #19, !dbg !484
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000, !dbg !513
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i, !dbg !514, !llvm.loop !515

for.end.i.i:                                      ; preds = %if.end5.i.i
  store i1 true, ptr @init_atab.init, align 4, !dbg !519
  br label %init_atab.exit.i, !dbg !520

init_atab.exit.i:                                 ; preds = %for.end.i.i, %if.end.i
  %call2.i = call ptr @newmolecule() #19, !dbg !521
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !410, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()) #19, !dbg !453
  store i8 0, ptr %l_rname.i, align 1, !dbg !522, !tbaa !368
  call void @llvm.dbg.value(metadata i32 0, metadata !432, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 0, metadata !414, metadata !DIExpression()) #19, !dbg !453
  store i32 0, ptr @n_atab, align 4, !dbg !523, !tbaa !524
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 0, metadata !414, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 0, metadata !432, metadata !DIExpression()) #19, !dbg !453
  %call5474.i = call ptr @ggets(ptr noundef nonnull %line.i, i32 noundef 82, ptr noundef %fp.1) #19, !dbg !525
  %cmp6475.i = icmp eq ptr %call5474.i, null, !dbg !527
  br i1 %cmp6475.i, label %for.end341.i, label %if.end8.lr.ph.i, !dbg !528

if.end8.lr.ph.i:                                  ; preds = %init_atab.exit.i
  %arrayidx14.i = getelementptr inbounds [82 x i8], ptr %line.i, i64 0, i64 80
  %arrayidx25.i = getelementptr inbounds [82 x i8], ptr %line.i, i64 0, i64 12
  %arrayidx27.i = getelementptr inbounds [10 x i8], ptr %aname.i, i64 0, i64 4
  %arrayidx72.i = getelementptr inbounds [10 x i8], ptr %aname.i, i64 0, i64 2
  %arrayidx87.i = getelementptr inbounds [82 x i8], ptr %line.i, i64 0, i64 17
  %arrayidx89.i = getelementptr inbounds [10 x i8], ptr %rname.i, i64 0, i64 3
  %arrayidx153.i = getelementptr inbounds [82 x i8], ptr %line.i, i64 0, i64 21
  %arrayidx155.i = getelementptr inbounds [10 x i8], ptr %rid.i, i64 0, i64 6
  %arrayidx158.i = getelementptr inbounds [82 x i8], ptr %line.i, i64 0, i64 22
  %arrayidx161.i = getelementptr inbounds [82 x i8], ptr %line.i, i64 0, i64 30
  %arrayidx163.i = getelementptr inbounds [10 x i8], ptr %field.i, i64 0, i64 8
  %arrayidx167.i = getelementptr inbounds [82 x i8], ptr %line.i, i64 0, i64 38
  %arrayidx173.i = getelementptr inbounds [82 x i8], ptr %line.i, i64 0, i64 46
  %arrayidx182.i = getelementptr inbounds [82 x i8], ptr %line.i, i64 0, i64 54
  %arrayidx224.i = getelementptr inbounds [10 x i8], ptr %field.i, i64 0, i64 6
  %arrayidx228.i = getelementptr inbounds [82 x i8], ptr %line.i, i64 0, i64 60
  %arrayidx256.i = getelementptr inbounds [10 x i8], ptr %sname.i, i64 0, i64 1
  %m_strands.i = getelementptr inbounds %struct.molecule_t, ptr %call2.i, i64 0, i32 2
  br label %if.end8.i, !dbg !528

if.end8.i:                                        ; preds = %if.end340.i, %if.end8.lr.ph.i
  %l_cid.0479.i = phi i32 [ 0, %if.end8.lr.ph.i ], [ %l_cid.2.i, %if.end340.i ]
  %nchains.0478.i = phi i32 [ 0, %if.end8.lr.ph.i ], [ %nchains.2.i, %if.end340.i ]
  %l_rnum.0476.i = phi i32 [ 0, %if.end8.lr.ph.i ], [ %l_rnum.2.i, %if.end340.i ]
  call void @llvm.dbg.value(metadata i32 %l_cid.0479.i, metadata !412, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 %nchains.0478.i, metadata !414, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 %l_rnum.0476.i, metadata !432, metadata !DIExpression()) #19, !dbg !453
  %call10.i = call i64 @strlen(ptr noundef nonnull %line.i) #18, !dbg !529
  %conv.i = trunc i64 %call10.i to i32, !dbg !529
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !440, metadata !DIExpression()) #19, !dbg !453
  %cmp12467.i = icmp slt i32 %conv.i, 80, !dbg !531
  br i1 %cmp12467.i, label %for.body.preheader.i, label %for.end.i, !dbg !533

for.body.preheader.i:                             ; preds = %if.end8.i
  %sext484.i = shl i64 %call10.i, 32, !dbg !533
  %6 = ashr exact i64 %sext484.i, 32, !dbg !533
  %uglygep.i = getelementptr i8, ptr %line.i, i64 %6, !dbg !533
  %7 = sub i64 79, %call10.i, !dbg !533
  %8 = and i64 %7, 4294967295, !dbg !533
  %9 = add nuw nsw i64 %8, 1, !dbg !533
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %uglygep.i, i8 32, i64 %9, i1 false) #19, !dbg !534, !tbaa !368
  call void @llvm.dbg.value(metadata i32 undef, metadata !440, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 undef, metadata !440, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !453
  br label %for.end.i, !dbg !535

for.end.i:                                        ; preds = %for.body.preheader.i, %if.end8.i
  store i8 0, ptr %arrayidx14.i, align 16, !dbg !535, !tbaa !368
  %rhsv.i = load i32, ptr %line.i, align 16, !dbg !536
  %.not.i = icmp eq i32 %rhsv.i, 1297044545, !dbg !536
  br i1 %.not.i, label %if.then23.i, label %lor.lhs.false.i, !dbg !537

lor.lhs.false.i:                                  ; preds = %for.end.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.25, ptr noundef nonnull dereferenceable(6) %line.i, i64 6) #19, !dbg !538
  %cmp21.i = icmp eq i32 %bcmp.i, 0, !dbg !539
  br i1 %cmp21.i, label %if.then23.i, label %if.else314.i, !dbg !540

if.then23.i:                                      ; preds = %lor.lhs.false.i, %for.end.i
  %call26.i = call ptr @strncpy(ptr noundef nonnull %aname.i, ptr noundef nonnull %arrayidx25.i, i64 noundef 4) #19, !dbg !541
  store i8 0, ptr %arrayidx27.i, align 4, !dbg !542, !tbaa !368
  call void @llvm.dbg.value(metadata ptr %aname.i, metadata !430, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata ptr %aname.i, metadata !429, metadata !DIExpression()) #19, !dbg !453
  br label %for.cond29.i, !dbg !543

for.cond29.i:                                     ; preds = %for.inc36.i, %if.then23.i
  %np1.0.i = phi ptr [ %aname.i, %if.then23.i ], [ %np1.1.i, %for.inc36.i ], !dbg !545
  %np.0.i = phi ptr [ %aname.i, %if.then23.i ], [ %incdec.ptr37.i, %for.inc36.i ], !dbg !545
  call void @llvm.dbg.value(metadata ptr %np.0.i, metadata !429, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata ptr %np1.0.i, metadata !430, metadata !DIExpression()) #19, !dbg !453
  %10 = load i8, ptr %np.0.i, align 1, !dbg !546, !tbaa !368
  switch i8 %10, label %if.then34.i [
    i8 0, label %for.end38.i
    i8 32, label %for.inc36.i
  ], !dbg !548

if.then34.i:                                      ; preds = %for.cond29.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %np1.0.i, i64 1, !dbg !549
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !430, metadata !DIExpression()) #19, !dbg !453
  store i8 %10, ptr %np1.0.i, align 1, !dbg !552, !tbaa !368
  br label %for.inc36.i, !dbg !553

for.inc36.i:                                      ; preds = %if.then34.i, %for.cond29.i
  %np1.1.i = phi ptr [ %incdec.ptr.i, %if.then34.i ], [ %np1.0.i, %for.cond29.i ], !dbg !545
  call void @llvm.dbg.value(metadata ptr %np1.1.i, metadata !430, metadata !DIExpression()) #19, !dbg !453
  %incdec.ptr37.i = getelementptr inbounds i8, ptr %np.0.i, i64 1, !dbg !554
  call void @llvm.dbg.value(metadata ptr %incdec.ptr37.i, metadata !429, metadata !DIExpression()) #19, !dbg !453
  br label %for.cond29.i, !dbg !555, !llvm.loop !556

for.end38.i:                                      ; preds = %for.cond29.i
  store i8 0, ptr %np1.0.i, align 1, !dbg !558, !tbaa !368
  %11 = load i8, ptr %aname.i, align 4, !dbg !559, !tbaa !368
  %12 = add i8 %11, -49, !dbg !561
  %13 = icmp ult i8 %12, 3, !dbg !561
  br i1 %13, label %for.cond55.preheader.i, label %if.end71.i, !dbg !561

for.cond55.preheader.i:                           ; preds = %for.end38.i
  call void @llvm.dbg.value(metadata i32 0, metadata !440, metadata !DIExpression()) #19, !dbg !453
  %call57469.i = call i64 @strlen(ptr noundef nonnull %aname.i) #18, !dbg !562
  %conv58470.i = trunc i64 %call57469.i to i32, !dbg !566
  %cmp59472.i = icmp sgt i32 %conv58470.i, 1, !dbg !567
  br i1 %cmp59472.i, label %for.body61.i, label %for.end68.i, !dbg !568

for.body61.i:                                     ; preds = %for.cond55.preheader.i, %for.body61.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body61.i ], [ 0, %for.cond55.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !440, metadata !DIExpression()) #19, !dbg !453
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !569
  %arrayidx63.i = getelementptr inbounds [10 x i8], ptr %aname.i, i64 0, i64 %indvars.iv.next.i, !dbg !570
  %14 = load i8, ptr %arrayidx63.i, align 1, !dbg !570, !tbaa !368
  %arrayidx65.i = getelementptr inbounds [10 x i8], ptr %aname.i, i64 0, i64 %indvars.iv.i, !dbg !571
  store i8 %14, ptr %arrayidx65.i, align 1, !dbg !572, !tbaa !368
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !440, metadata !DIExpression()) #19, !dbg !453
  %call57.i = call i64 @strlen(ptr noundef nonnull %aname.i) #18, !dbg !562
  %sub.i = shl i64 %call57.i, 32, !dbg !567
  %sext.i = add i64 %sub.i, -4294967296, !dbg !567
  %15 = ashr exact i64 %sext.i, 32, !dbg !567
  %cmp59.i = icmp slt i64 %indvars.iv.next.i, %15, !dbg !567
  br i1 %cmp59.i, label %for.body61.i, label %for.end68.i, !dbg !568, !llvm.loop !573

for.end68.i:                                      ; preds = %for.body61.i, %for.cond55.preheader.i
  %i.1.lcssa.i = phi i64 [ 0, %for.cond55.preheader.i ], [ %indvars.iv.next.i, %for.body61.i ], !dbg !575
  %idxprom69.i = and i64 %i.1.lcssa.i, 4294967295, !dbg !576
  %arrayidx70.i = getelementptr inbounds [10 x i8], ptr %aname.i, i64 0, i64 %idxprom69.i, !dbg !576
  store i8 %11, ptr %arrayidx70.i, align 1, !dbg !577, !tbaa !368
  br label %if.end71.i, !dbg !578

if.end71.i:                                       ; preds = %for.end68.i, %for.end38.i
  %16 = load i8, ptr %arrayidx72.i, align 2, !dbg !579, !tbaa !368
  %cmp74.i = icmp eq i8 %16, 42, !dbg !581
  br i1 %cmp74.i, label %if.then76.i, label %if.end78.i, !dbg !582

if.then76.i:                                      ; preds = %if.end71.i
  store i8 39, ptr %arrayidx72.i, align 2, !dbg !583, !tbaa !368
  br label %if.end78.i, !dbg !584

if.end78.i:                                       ; preds = %if.then76.i, %if.end71.i
  %lhsv439.i = load i32, ptr %aname.i, align 4, !dbg !585
  %.not440.i = icmp eq i32 %lhsv439.i, 5059907, !dbg !585
  br i1 %.not440.i, label %if.then82.i, label %if.end85.i, !dbg !587

if.then82.i:                                      ; preds = %if.end78.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %aname.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.27, i64 3, i1 false) #19, !dbg !588
  br label %if.end85.i, !dbg !588

if.end85.i:                                       ; preds = %if.then82.i, %if.end78.i
  %call88.i = call ptr @strncpy(ptr noundef nonnull %rname.i, ptr noundef nonnull %arrayidx87.i, i64 noundef 3) #19, !dbg !589
  store i8 0, ptr %arrayidx89.i, align 1, !dbg !590, !tbaa !368
  call void @llvm.dbg.value(metadata ptr %rname.i, metadata !430, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata ptr %rname.i, metadata !429, metadata !DIExpression()) #19, !dbg !453
  br label %for.cond91.i, !dbg !591

for.cond91.i:                                     ; preds = %for.inc100.i, %if.end85.i
  %np1.2.i = phi ptr [ %rname.i, %if.end85.i ], [ %np1.3.i, %for.inc100.i ], !dbg !593
  %np.1.i = phi ptr [ %rname.i, %if.end85.i ], [ %incdec.ptr101.i, %for.inc100.i ], !dbg !593
  call void @llvm.dbg.value(metadata ptr %np.1.i, metadata !429, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata ptr %np1.2.i, metadata !430, metadata !DIExpression()) #19, !dbg !453
  %17 = load i8, ptr %np.1.i, align 1, !dbg !594, !tbaa !368
  switch i8 %17, label %if.then97.i [
    i8 0, label %for.end102.i
    i8 32, label %for.inc100.i
  ], !dbg !596

if.then97.i:                                      ; preds = %for.cond91.i
  %incdec.ptr98.i = getelementptr inbounds i8, ptr %np1.2.i, i64 1, !dbg !597
  call void @llvm.dbg.value(metadata ptr %incdec.ptr98.i, metadata !430, metadata !DIExpression()) #19, !dbg !453
  store i8 %17, ptr %np1.2.i, align 1, !dbg !600, !tbaa !368
  br label %for.inc100.i, !dbg !601

for.inc100.i:                                     ; preds = %if.then97.i, %for.cond91.i
  %np1.3.i = phi ptr [ %incdec.ptr98.i, %if.then97.i ], [ %np1.2.i, %for.cond91.i ], !dbg !593
  call void @llvm.dbg.value(metadata ptr %np1.3.i, metadata !430, metadata !DIExpression()) #19, !dbg !453
  %incdec.ptr101.i = getelementptr inbounds i8, ptr %np.1.i, i64 1, !dbg !602
  call void @llvm.dbg.value(metadata ptr %incdec.ptr101.i, metadata !429, metadata !DIExpression()) #19, !dbg !453
  br label %for.cond91.i, !dbg !603, !llvm.loop !604

for.end102.i:                                     ; preds = %for.cond91.i
  store i8 0, ptr %np1.2.i, align 1, !dbg !606, !tbaa !368
  %lhsv441.i = load i32, ptr %aname.i, align 4, !dbg !607
  %.not442.i = icmp eq i32 %lhsv441.i, 2568783, !dbg !607
  br i1 %.not442.i, label %if.then106.i, label %for.end102.if.end107_crit_edge.i, !dbg !609

for.end102.if.end107_crit_edge.i:                 ; preds = %for.end102.i
  %.pre.i = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 7), align 4
  br label %if.end107.i, !dbg !609

if.then106.i:                                     ; preds = %for.end102.i
  store i32 2, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 7), align 4, !dbg !610, !tbaa !611
  br label %if.end107.i, !dbg !613

if.end107.i:                                      ; preds = %if.then106.i, %for.end102.if.end107_crit_edge.i
  %18 = phi i32 [ %.pre.i, %for.end102.if.end107_crit_edge.i ], [ 2, %if.then106.i ]
  %bcmp409.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %aname.i, ptr noundef nonnull dereferenceable(5) @.str.29, i64 5) #19, !dbg !614
  %tobool110.i = icmp eq i32 %bcmp409.i, 0, !dbg !614
  %cmp111.i = icmp eq i32 %18, 2
  %or.cond353.i = select i1 %tobool110.i, i1 %cmp111.i, i1 false, !dbg !616
  br i1 %or.cond353.i, label %if.then113.i, label %if.end116.i, !dbg !616

if.then113.i:                                     ; preds = %if.end107.i
  store i32 2568776, ptr %aname.i, align 4, !dbg !617
  br label %if.end116.i, !dbg !617

if.end116.i:                                      ; preds = %if.then113.i, %if.end107.i
  %lhsv443.i = load i16, ptr %rname.i, align 4, !dbg !618
  switch i16 %lhsv443.i, label %if.end151.i [
    i16 65, label %if.end123.thread.i
    i16 67, label %if.then127.i
    i16 71, label %if.end137.thread.i
    i16 84, label %if.then141.i
    i16 85, label %if.then148.i
  ], !dbg !620

if.end123.thread.i:                               ; preds = %if.end116.i
  store i32 4539457, ptr %rname.i, align 4, !dbg !621
  br label %if.end151.i, !dbg !622

if.then127.i:                                     ; preds = %if.end116.i
  store i32 5527875, ptr %rname.i, align 4, !dbg !623
  br label %if.end151.i, !dbg !623

if.end137.thread.i:                               ; preds = %if.end116.i
  store i32 4281671, ptr %rname.i, align 4, !dbg !625
  br label %if.end151.i, !dbg !627

if.then141.i:                                     ; preds = %if.end116.i
  store i32 5851220, ptr %rname.i, align 4, !dbg !628
  br label %if.end151.i, !dbg !628

if.then148.i:                                     ; preds = %if.end116.i
  store i32 4280917, ptr %rname.i, align 4, !dbg !630
  br label %if.end151.i, !dbg !630

if.end151.i:                                      ; preds = %if.then148.i, %if.then141.i, %if.end137.thread.i, %if.then127.i, %if.end123.thread.i, %if.end116.i
  %call154.i = call ptr @strncpy(ptr noundef nonnull %rid.i, ptr noundef nonnull %arrayidx153.i, i64 noundef 6) #19, !dbg !632
  store i8 0, ptr %arrayidx155.i, align 1, !dbg !633, !tbaa !368
  %19 = load i8, ptr %arrayidx153.i, align 1, !dbg !634, !tbaa !368
  %conv157.i = sext i8 %19 to i32, !dbg !634
  call void @llvm.dbg.value(metadata i32 %conv157.i, metadata !413, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata ptr %rnum.i, metadata !431, metadata !DIExpression(DW_OP_deref)) #19, !dbg !453
  %call159.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %arrayidx158.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %rnum.i) #19, !dbg !635
  %call162.i = call ptr @strncpy(ptr noundef nonnull %field.i, ptr noundef nonnull %arrayidx161.i, i64 noundef 8) #19, !dbg !636
  store i8 0, ptr %arrayidx163.i, align 1, !dbg !637, !tbaa !368
  call void @llvm.dbg.value(metadata ptr %field.i, metadata !638, metadata !DIExpression()) #19, !dbg !646
  %call.i445.i = call double @strtod(ptr nocapture noundef nonnull %field.i, ptr noundef null) #19, !dbg !648
  call void @llvm.dbg.value(metadata double %call.i445.i, metadata !433, metadata !DIExpression()) #19, !dbg !453
  %call168.i = call ptr @strncpy(ptr noundef nonnull %field.i, ptr noundef nonnull %arrayidx167.i, i64 noundef 8) #19, !dbg !649
  store i8 0, ptr %arrayidx163.i, align 1, !dbg !650, !tbaa !368
  call void @llvm.dbg.value(metadata ptr %field.i, metadata !638, metadata !DIExpression()) #19, !dbg !651
  %call.i446.i = call double @strtod(ptr nocapture noundef nonnull %field.i, ptr noundef null) #19, !dbg !653
  call void @llvm.dbg.value(metadata double %call.i446.i, metadata !434, metadata !DIExpression()) #19, !dbg !453
  %call174.i = call ptr @strncpy(ptr noundef nonnull %field.i, ptr noundef nonnull %arrayidx173.i, i64 noundef 8) #19, !dbg !654
  store i8 0, ptr %arrayidx163.i, align 1, !dbg !655, !tbaa !368
  call void @llvm.dbg.value(metadata ptr %field.i, metadata !638, metadata !DIExpression()) #19, !dbg !656
  %call.i447.i = call double @strtod(ptr nocapture noundef nonnull %field.i, ptr noundef null) #19, !dbg !658
  call void @llvm.dbg.value(metadata double %call.i447.i, metadata !435, metadata !DIExpression()) #19, !dbg !453
  %call179.i = call ptr @strstr(ptr noundef nonnull %loptions.i, ptr noundef nonnull @.str.42) #18, !dbg !659
  %tobool180.not.i = icmp eq ptr %call179.i, null, !dbg !659
  br i1 %tobool180.not.i, label %if.else184.i, label %if.then181.i, !dbg !661

if.then181.i:                                     ; preds = %if.end151.i
  call void @llvm.dbg.value(metadata ptr %q.i, metadata !436, metadata !DIExpression(DW_OP_deref)) #19, !dbg !453
  call void @llvm.dbg.value(metadata ptr %r.i, metadata !437, metadata !DIExpression(DW_OP_deref)) #19, !dbg !453
  %call183.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %arrayidx182.i, ptr noundef nonnull @.str.43, ptr noundef nonnull %q.i, ptr noundef nonnull %r.i) #19, !dbg !662
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !438, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !439, metadata !DIExpression()) #19, !dbg !453
  br label %if.end233.i, !dbg !664

if.else184.i:                                     ; preds = %if.end151.i
  %lhsc.i = load i8, ptr %aname.i, align 4, !dbg !665
  switch i8 %lhsc.i, label %if.else214.i [
    i8 72, label %if.then188.i
    i8 67, label %if.then193.i
    i8 78, label %if.then198.i
    i8 79, label %if.then203.i
    i8 83, label %if.then208.i
    i8 80, label %if.then213.i
  ], !dbg !668

if.then188.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.200000e+00, metadata !437, metadata !DIExpression()) #19, !dbg !453
  store double 1.200000e+00, ptr %r.i, align 8, !dbg !669, !tbaa !670
  br label %if.end220.i, !dbg !671

if.then193.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !437, metadata !DIExpression()) #19, !dbg !453
  store double 1.700000e+00, ptr %r.i, align 8, !dbg !672, !tbaa !670
  br label %if.end220.i, !dbg !674

if.then198.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.550000e+00, metadata !437, metadata !DIExpression()) #19, !dbg !453
  store double 1.550000e+00, ptr %r.i, align 8, !dbg !675, !tbaa !670
  br label %if.end220.i, !dbg !677

if.then203.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.500000e+00, metadata !437, metadata !DIExpression()) #19, !dbg !453
  store double 1.500000e+00, ptr %r.i, align 8, !dbg !678, !tbaa !670
  br label %if.end220.i, !dbg !680

if.then208.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.800000e+00, metadata !437, metadata !DIExpression()) #19, !dbg !453
  store double 1.800000e+00, ptr %r.i, align 8, !dbg !681, !tbaa !670
  br label %if.end220.i, !dbg !683

if.then213.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.850000e+00, metadata !437, metadata !DIExpression()) #19, !dbg !453
  store double 1.850000e+00, ptr %r.i, align 8, !dbg !684, !tbaa !670
  br label %if.end220.i, !dbg !686

if.else214.i:                                     ; preds = %if.else184.i
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !437, metadata !DIExpression()) #19, !dbg !453
  store double 1.700000e+00, ptr %r.i, align 8, !dbg !687, !tbaa !670
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.else214.i, %if.then213.i, %if.then208.i, %if.then203.i, %if.then198.i, %if.then193.i, %if.then188.i
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !436, metadata !DIExpression()) #19, !dbg !453
  store double 0.000000e+00, ptr %q.i, align 8, !dbg !688, !tbaa !670
  %call223.i = call ptr @strncpy(ptr noundef nonnull %field.i, ptr noundef nonnull %arrayidx182.i, i64 noundef 6) #19, !dbg !689
  store i8 0, ptr %arrayidx224.i, align 1, !dbg !690, !tbaa !368
  call void @llvm.dbg.value(metadata ptr %field.i, metadata !638, metadata !DIExpression()) #19, !dbg !691
  %call.i448.i = call double @strtod(ptr nocapture noundef nonnull %field.i, ptr noundef null) #19, !dbg !693
  call void @llvm.dbg.value(metadata double %call.i448.i, metadata !438, metadata !DIExpression()) #19, !dbg !453
  %call229.i = call ptr @strncpy(ptr noundef nonnull %field.i, ptr noundef nonnull %arrayidx228.i, i64 noundef 6) #19, !dbg !694
  store i8 0, ptr %arrayidx224.i, align 1, !dbg !695, !tbaa !368
  call void @llvm.dbg.value(metadata ptr %field.i, metadata !638, metadata !DIExpression()) #19, !dbg !696
  %call.i449.i = call double @strtod(ptr nocapture noundef nonnull %field.i, ptr noundef null) #19, !dbg !698
  call void @llvm.dbg.value(metadata double %call.i449.i, metadata !439, metadata !DIExpression()) #19, !dbg !453
  br label %if.end233.i

if.end233.i:                                      ; preds = %if.end220.i, %if.then181.i
  %occ.0.i = phi double [ 1.000000e+00, %if.then181.i ], [ %call.i448.i, %if.end220.i ], !dbg !699
  %bfact.0.i = phi double [ 0.000000e+00, %if.then181.i ], [ %call.i449.i, %if.end220.i ], !dbg !699
  call void @llvm.dbg.value(metadata double %bfact.0.i, metadata !439, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata double %occ.0.i, metadata !438, metadata !DIExpression()) #19, !dbg !453
  %cmp234.not.i = icmp eq i32 %l_cid.0479.i, %conv157.i, !dbg !700
  br i1 %cmp234.not.i, label %if.else284.i, label %if.then236.i, !dbg !701

if.then236.i:                                     ; preds = %if.end233.i
  %20 = load i32, ptr @n_atab, align 4, !dbg !702, !tbaa !524
  %cmp237.i = icmp sgt i32 %20, 0, !dbg !704
  br i1 %cmp237.i, label %if.then239.i, label %if.end246.i, !dbg !705

if.then239.i:                                     ; preds = %if.then236.i
  %21 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !dbg !706, !tbaa !708
  %call241.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull %l_rname.i) #19, !dbg !709
  %22 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !dbg !710, !tbaa !711
  %call243.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull %l_rid.i) #19, !dbg !712
  store i32 %l_rnum.0476.i, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !dbg !713, !tbaa !714
  store i32 %20, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !dbg !715, !tbaa !716
  call fastcc void @makebonds() #19, !dbg !717
  %call245.i = call i32 @addresidue(ptr noundef %call2.i, ptr noundef nonnull %sname.i, ptr noundef nonnull @res) #19, !dbg !718
  call fastcc void @initres() #19, !dbg !719
  store i32 0, ptr @n_atab, align 4, !dbg !720, !tbaa !524
  br label %if.end246.i, !dbg !721

if.end246.i:                                      ; preds = %if.then239.i, %if.then236.i
  %inc247.i = add nsw i32 %nchains.0478.i, 1, !dbg !722
  call void @llvm.dbg.value(metadata i32 %inc247.i, metadata !414, metadata !DIExpression()) #19, !dbg !453
  %cmp248.i = icmp eq i8 %19, 32, !dbg !723
  br i1 %cmp248.i, label %if.then250.i, label %if.else253.i, !dbg !725

if.then250.i:                                     ; preds = %if.end246.i
  %call252.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %sname.i, ptr noundef nonnull @.str.41, i32 noundef %inc247.i) #19, !dbg !726
  br label %if.end257.i, !dbg !726

if.else253.i:                                     ; preds = %if.end246.i
  store i8 %19, ptr %sname.i, align 1, !dbg !727, !tbaa !368
  store i8 0, ptr %arrayidx256.i, align 1, !dbg !729, !tbaa !368
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.else253.i, %if.then250.i
  %call259.i = call i32 @addstrand(ptr noundef %call2.i, ptr noundef nonnull %sname.i) #19, !dbg !730
  call void @llvm.dbg.value(metadata ptr null, metadata !443, metadata !DIExpression()) #19, !dbg !731
  call void @llvm.dbg.value(metadata ptr undef, metadata !452, metadata !DIExpression()) #19, !dbg !731
  br label %for.cond260.i, !dbg !732

for.cond260.i:                                    ; preds = %for.cond260.i, %if.end257.i
  %spl.0.in.i = phi ptr [ %m_strands.i, %if.end257.i ], [ %s_next.i, %for.cond260.i ]
  %spl.0.i = load ptr, ptr %spl.0.in.i, align 8, !dbg !734, !tbaa !374, !nonnull !735
  call void @llvm.dbg.value(metadata ptr %spl.0.i, metadata !452, metadata !DIExpression()) #19, !dbg !731
  %23 = load ptr, ptr %spl.0.i, align 8, !dbg !736, !tbaa !740
  %call264.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull %sname.i) #18, !dbg !742
  %tobool265.not.i = icmp eq i32 %call264.i, 0, !dbg !742
  %s_next.i = getelementptr inbounds %struct.strand_t, ptr %spl.0.i, i64 0, i32 4, !dbg !743
  call void @llvm.dbg.value(metadata ptr undef, metadata !452, metadata !DIExpression()) #19, !dbg !731
  br i1 %tobool265.not.i, label %for.end269.i, label %for.cond260.i, !dbg !744, !llvm.loop !745

for.end269.i:                                     ; preds = %for.cond260.i
  call void @llvm.dbg.value(metadata ptr %spl.0.i, metadata !443, metadata !DIExpression()) #19, !dbg !731
  %s_res_size.i = getelementptr inbounds %struct.strand_t, ptr %spl.0.i, i64 0, i32 6, !dbg !748
  store i32 10000, ptr %s_res_size.i, align 4, !dbg !749, !tbaa !750
  %call272.i = call noalias dereferenceable_or_null(1280000) ptr @malloc(i64 noundef 1280000) #21, !dbg !751
  %s_residues.i = getelementptr inbounds %struct.strand_t, ptr %spl.0.i, i64 0, i32 7, !dbg !752
  store ptr %call272.i, ptr %s_residues.i, align 8, !dbg !753, !tbaa !754
  call void @llvm.dbg.value(metadata i32 %conv157.i, metadata !412, metadata !DIExpression()) #19, !dbg !453
  %call280.i = call ptr @strcpy(ptr noundef nonnull %l_rname.i, ptr noundef nonnull %rname.i) #19, !dbg !755
  %call283.i = call ptr @strcpy(ptr noundef nonnull %l_rid.i, ptr noundef nonnull %rid.i) #19, !dbg !756
  %24 = load i32, ptr %rnum.i, align 4, !dbg !757, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %24, metadata !431, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 %24, metadata !432, metadata !DIExpression()) #19, !dbg !453
  br label %if.end303.i, !dbg !758

if.else284.i:                                     ; preds = %if.end233.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !431, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata ptr %l_rname.i, metadata !759, metadata !DIExpression()) #19, !dbg !767
  call void @llvm.dbg.value(metadata ptr %rname.i, metadata !764, metadata !DIExpression()) #19, !dbg !767
  call void @llvm.dbg.value(metadata i32 %l_rnum.0476.i, metadata !765, metadata !DIExpression()) #19, !dbg !767
  call void @llvm.dbg.value(metadata i32 undef, metadata !766, metadata !DIExpression()) #19, !dbg !767
  %call.i450.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %l_rname.i, ptr noundef nonnull dereferenceable(1) %rname.i) #18, !dbg !770
  %tobool.not.i.i = icmp eq i32 %call.i450.i, 0, !dbg !770
  %25 = load i32, ptr %rnum.i, align 4
  %cmp.i.not.i = icmp eq i32 %l_rnum.0476.i, %25
  %or.cond.i = select i1 %tobool.not.i.i, i1 %cmp.i.not.i, i1 false, !dbg !771
  call void @llvm.dbg.value(metadata i32 %25, metadata !431, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 %25, metadata !766, metadata !DIExpression()) #19, !dbg !767
  br i1 %or.cond.i, label %if.end303.i, label %if.then289.i, !dbg !771

if.then289.i:                                     ; preds = %if.else284.i
  %26 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !dbg !772, !tbaa !708
  %call291.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull %l_rname.i) #19, !dbg !774
  %27 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !dbg !775, !tbaa !711
  %call293.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull %l_rid.i) #19, !dbg !776
  store i32 %l_rnum.0476.i, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !dbg !777, !tbaa !714
  %28 = load i32, ptr @n_atab, align 4, !dbg !778, !tbaa !524
  store i32 %28, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !dbg !779, !tbaa !716
  call fastcc void @makebonds() #19, !dbg !780
  %call295.i = call i32 @addresidue(ptr noundef %call2.i, ptr noundef nonnull %sname.i, ptr noundef nonnull @res) #19, !dbg !781
  call fastcc void @initres() #19, !dbg !782
  %call298.i = call ptr @strcpy(ptr noundef nonnull %l_rname.i, ptr noundef nonnull %rname.i) #19, !dbg !783
  %call301.i = call ptr @strcpy(ptr noundef nonnull %l_rid.i, ptr noundef nonnull %rid.i) #19, !dbg !784
  %29 = load i32, ptr %rnum.i, align 4, !dbg !785, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %29, metadata !431, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 %29, metadata !432, metadata !DIExpression()) #19, !dbg !453
  store i32 0, ptr @n_atab, align 4, !dbg !786, !tbaa !524
  br label %if.end303.i, !dbg !787

if.end303.i:                                      ; preds = %if.then289.i, %if.else284.i, %for.end269.i
  %l_rnum.1.i = phi i32 [ %24, %for.end269.i ], [ %29, %if.then289.i ], [ %l_rnum.0476.i, %if.else284.i ], !dbg !453
  %nchains.1.i = phi i32 [ %inc247.i, %for.end269.i ], [ %nchains.0478.i, %if.then289.i ], [ %nchains.0478.i, %if.else284.i ], !dbg !788
  %l_cid.1.i = phi i32 [ %conv157.i, %for.end269.i ], [ %l_cid.0479.i, %if.then289.i ], [ %l_cid.0479.i, %if.else284.i ], !dbg !453
  call void @llvm.dbg.value(metadata i32 %l_cid.1.i, metadata !412, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 %nchains.1.i, metadata !414, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 %l_rnum.1.i, metadata !432, metadata !DIExpression()) #19, !dbg !453
  %30 = load i32, ptr @n_atab, align 4, !dbg !789, !tbaa !524
  %idxprom304.i = sext i32 %30 to i64, !dbg !790
  %arrayidx305.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %idxprom304.i, !dbg !790
  call void @llvm.dbg.value(metadata ptr %arrayidx305.i, metadata !411, metadata !DIExpression()) #19, !dbg !453
  call void @NAB_initatom(ptr noundef nonnull %arrayidx305.i, i32 noundef 0) #19, !dbg !791
  %31 = load ptr, ptr %arrayidx305.i, align 16, !dbg !792, !tbaa !490
  %call307.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull %aname.i) #19, !dbg !793
  %a_attr.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %idxprom304.i, i32 2, !dbg !794
  store i32 0, ptr %a_attr.i, align 16, !dbg !795, !tbaa !796
  %a_residue.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %idxprom304.i, i32 5, !dbg !797
  store ptr null, ptr %a_residue.i, align 8, !dbg !798, !tbaa !799
  %a_pos.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %idxprom304.i, i32 17, !dbg !800
  store double %call.i445.i, ptr %a_pos.i, align 16, !dbg !801, !tbaa !670
  %arrayidx310.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %idxprom304.i, i32 17, i64 1, !dbg !802
  store double %call.i446.i, ptr %arrayidx310.i, align 8, !dbg !803, !tbaa !670
  %arrayidx312.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %idxprom304.i, i32 17, i64 2, !dbg !804
  store double %call.i447.i, ptr %arrayidx312.i, align 16, !dbg !805, !tbaa !670
  %32 = load double, ptr %q.i, align 8, !dbg !806, !tbaa !670
  call void @llvm.dbg.value(metadata double %32, metadata !436, metadata !DIExpression()) #19, !dbg !453
  %a_charge.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %idxprom304.i, i32 6, !dbg !807
  store double %32, ptr %a_charge.i, align 16, !dbg !808, !tbaa !809
  %33 = load double, ptr %r.i, align 8, !dbg !810, !tbaa !670
  call void @llvm.dbg.value(metadata double %33, metadata !437, metadata !DIExpression()) #19, !dbg !453
  %a_radius.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %idxprom304.i, i32 7, !dbg !811
  store double %33, ptr %a_radius.i, align 8, !dbg !812, !tbaa !813
  %a_occ.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %idxprom304.i, i32 9, !dbg !814
  store double %occ.0.i, ptr %a_occ.i, align 8, !dbg !815, !tbaa !816
  %a_bfact.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %idxprom304.i, i32 8, !dbg !817
  store double %bfact.0.i, ptr %a_bfact.i, align 16, !dbg !818, !tbaa !819
  %34 = load i32, ptr @n_atab, align 4, !dbg !820, !tbaa !524
  %inc313.i = add nsw i32 %34, 1, !dbg !820
  store i32 %inc313.i, ptr @n_atab, align 4, !dbg !820, !tbaa !524
  br label %if.end340.i, !dbg !821

if.else314.i:                                     ; preds = %lor.lhs.false.i
  %bcmp405.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.49, ptr noundef nonnull dereferenceable(3) %line.i, i64 3) #19, !dbg !822
  %cmp317.i = icmp eq i32 %bcmp405.i, 0, !dbg !824
  br i1 %cmp317.i, label %if.then319.i, label %if.else332.i, !dbg !825

if.then319.i:                                     ; preds = %if.else314.i
  %35 = load i32, ptr @n_atab, align 4, !dbg !826, !tbaa !524
  %cmp320.i = icmp sgt i32 %35, 0, !dbg !829
  br i1 %cmp320.i, label %if.then322.i, label %if.end329.i, !dbg !830

if.then322.i:                                     ; preds = %if.then319.i
  %36 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !dbg !831, !tbaa !708
  %call324.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull %l_rname.i) #19, !dbg !833
  %37 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !dbg !834, !tbaa !711
  %call326.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull %l_rid.i) #19, !dbg !835
  store i32 %l_rnum.0476.i, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !dbg !836, !tbaa !714
  store i32 %35, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !dbg !837, !tbaa !716
  call fastcc void @makebonds() #19, !dbg !838
  %call328.i = call i32 @addresidue(ptr noundef %call2.i, ptr noundef nonnull %sname.i, ptr noundef nonnull @res) #19, !dbg !839
  call fastcc void @initres() #19, !dbg !840
  store i32 0, ptr @n_atab, align 4, !dbg !841, !tbaa !524
  br label %if.end329.i, !dbg !842

if.end329.i:                                      ; preds = %if.then322.i, %if.then319.i
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()) #19, !dbg !453
  store i8 0, ptr %l_rname.i, align 1, !dbg !843, !tbaa !368
  store i8 0, ptr %l_rid.i, align 1, !dbg !844, !tbaa !368
  call void @llvm.dbg.value(metadata i32 0, metadata !432, metadata !DIExpression()) #19, !dbg !453
  br label %if.end340.i, !dbg !845

if.else332.i:                                     ; preds = %if.else314.i
  %bcmp406.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.50, ptr noundef nonnull dereferenceable(3) %line.i, i64 3) #19, !dbg !846
  %cmp335.i = icmp eq i32 %bcmp406.i, 0, !dbg !848
  br i1 %cmp335.i, label %for.end341.i, label %if.end340.i, !dbg !849

if.end340.i:                                      ; preds = %if.else332.i, %if.end329.i, %if.end303.i
  %l_rnum.2.i = phi i32 [ %l_rnum.1.i, %if.end303.i ], [ 0, %if.end329.i ], [ %l_rnum.0476.i, %if.else332.i ], !dbg !453
  %nchains.2.i = phi i32 [ %nchains.1.i, %if.end303.i ], [ %nchains.0478.i, %if.end329.i ], [ %nchains.0478.i, %if.else332.i ], !dbg !788
  %l_cid.2.i = phi i32 [ %l_cid.1.i, %if.end303.i ], [ 0, %if.end329.i ], [ %l_cid.0479.i, %if.else332.i ], !dbg !453
  call void @llvm.dbg.value(metadata i32 %l_cid.2.i, metadata !412, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 %nchains.2.i, metadata !414, metadata !DIExpression()) #19, !dbg !453
  call void @llvm.dbg.value(metadata i32 %l_rnum.2.i, metadata !432, metadata !DIExpression()) #19, !dbg !453
  %call5.i = call ptr @ggets(ptr noundef nonnull %line.i, i32 noundef 82, ptr noundef %fp.1) #19, !dbg !525
  %cmp6.i = icmp eq ptr %call5.i, null, !dbg !527
  br i1 %cmp6.i, label %for.end341.i, label %if.end8.i, !dbg !528, !llvm.loop !850

for.end341.i:                                     ; preds = %if.end340.i, %if.else332.i, %init_atab.exit.i
  %l_rnum.0.lcssa.i = phi i32 [ 0, %init_atab.exit.i ], [ %l_rnum.2.i, %if.end340.i ], [ %l_rnum.0476.i, %if.else332.i ], !dbg !453
  %38 = load i32, ptr @n_atab, align 4, !dbg !853, !tbaa !524
  %cmp342.i = icmp sgt i32 %38, 0, !dbg !855
  br i1 %cmp342.i, label %if.then344.i, label %fgetpdb.exit, !dbg !856

if.then344.i:                                     ; preds = %for.end341.i
  %39 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !dbg !857, !tbaa !708
  %call346.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull %l_rname.i) #19, !dbg !859
  %40 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !dbg !860, !tbaa !711
  %call348.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull %l_rid.i) #19, !dbg !861
  store i32 %l_rnum.0.lcssa.i, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !dbg !862, !tbaa !714
  store i32 %38, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !dbg !863, !tbaa !716
  call fastcc void @makebonds() #19, !dbg !864
  %call350.i = call i32 @addresidue(ptr noundef %call2.i, ptr noundef nonnull %sname.i, ptr noundef nonnull @res) #19, !dbg !865
  call fastcc void @initres() #19, !dbg !866
  br label %fgetpdb.exit, !dbg !867

fgetpdb.exit:                                     ; preds = %for.end341.i, %if.then344.i
  %m_nvalid.i = getelementptr inbounds %struct.molecule_t, ptr %call2.i, i64 0, i32 5, !dbg !868
  store i32 0, ptr %m_nvalid.i, align 8, !dbg !869, !tbaa !870
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %loptions.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rnum.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %field.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %l_rid.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rid.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %l_rname.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rname.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %aname.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %sname.i) #19, !dbg !872
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %line.i) #19, !dbg !872
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !361, metadata !DIExpression()), !dbg !363
  %41 = load ptr, ptr @stdin, align 8, !dbg !873, !tbaa !374
  %cmp19.not = icmp eq ptr %fp.1, %41, !dbg !875
  br i1 %cmp19.not, label %if.end26, label %if.then20, !dbg !876

if.then20:                                        ; preds = %fgetpdb.exit
  %call21 = call i32 @get_mytaskid() #19, !dbg !877
  %cmp22 = icmp eq i32 %call21, 0, !dbg !880
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !881

if.then23:                                        ; preds = %if.then20
  %call24 = call i32 @fclose(ptr noundef %fp.1), !dbg !882
  br label %if.end26, !dbg !884

if.end26:                                         ; preds = %if.then20, %if.then23, %fgetpdb.exit
  ret ptr %call2.i, !dbg !885
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare !dbg !886 i32 @get_mytaskid() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare !dbg !889 void @reducerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !892 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @getmatrix(ptr noundef %fname) local_unnamed_addr #6 !dbg !2 {
entry:
  %line = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %fname, metadata !274, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr null, metadata !275, metadata !DIExpression()), !dbg !896
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %line) #19, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %line, metadata !334, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata ptr undef, metadata !339, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i32 0, metadata !342, metadata !DIExpression()), !dbg !896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @getmatrix.mat, i8 0, i64 128, i1 false), !dbg !900
  %cmp = icmp eq ptr %fname, null, !dbg !901
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !903

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %fname, align 1, !dbg !904, !tbaa !368
  %cmp1 = icmp eq i8 %0, 0, !dbg !905
  br i1 %cmp1, label %if.then, label %if.else, !dbg !906

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !907, !tbaa !374
  %2 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 35, i64 1, ptr %1) #20, !dbg !909
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !896
  br label %if.end53, !dbg !910

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strcmp(ptr noundef nonnull %fname, ptr noundef nonnull dereferenceable(2) @.str) #18, !dbg !911
  %tobool.not = icmp eq i32 %call3, 0, !dbg !911
  br i1 %tobool.not, label %if.then4, label %if.else5, !dbg !913

if.then4:                                         ; preds = %if.else
  %3 = load ptr, ptr @stdin, align 8, !dbg !914, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %3, metadata !275, metadata !DIExpression()), !dbg !896
  br label %if.end12, !dbg !915

if.else5:                                         ; preds = %if.else
  %call6 = tail call ptr @fopen(ptr noundef nonnull %fname, ptr noundef nonnull @.str.1), !dbg !916
  call void @llvm.dbg.value(metadata ptr %call6, metadata !275, metadata !DIExpression()), !dbg !896
  %cmp7 = icmp eq ptr %call6, null, !dbg !918
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !919

if.then9:                                         ; preds = %if.else5
  %4 = load ptr, ptr @stderr, align 8, !dbg !920, !tbaa !374
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull %fname) #20, !dbg !922
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !896
  br label %if.end53, !dbg !923

if.end12:                                         ; preds = %if.then4, %if.else5
  %fp.0 = phi ptr [ %call6, %if.else5 ], [ %3, %if.then4 ], !dbg !924
  call void @llvm.dbg.value(metadata ptr %fp.0, metadata !275, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 0, metadata !338, metadata !DIExpression()), !dbg !896
  br label %for.cond.outer, !dbg !925

for.cond.outer:                                   ; preds = %if.end37, %if.end12
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end37 ], [ 0, %if.end12 ]
  br label %for.cond, !dbg !927

for.cond:                                         ; preds = %for.cond.outer, %for.body
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !338, metadata !DIExpression()), !dbg !896
  %call13 = call ptr @fgets(ptr noundef nonnull %line, i32 noundef 256, ptr noundef %fp.0), !dbg !928
  %tobool14.not = icmp eq ptr %call13, null, !dbg !927
  br i1 %tobool14.not, label %for.end, label %for.body, !dbg !927

for.body:                                         ; preds = %for.cond
  %5 = load i8, ptr %line, align 16, !dbg !930, !tbaa !368
  %cmp17 = icmp eq i8 %5, 35, !dbg !933
  br i1 %cmp17, label %for.cond, label %if.end20, !dbg !934, !llvm.loop !935

if.end20:                                         ; preds = %for.body
  %arrayidx = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %indvars.iv, !dbg !937
  %arrayidx25 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %indvars.iv, i64 1, !dbg !938
  %arrayidx28 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %indvars.iv, i64 2, !dbg !939
  %arrayidx31 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %indvars.iv, i64 3, !dbg !940
  %call32 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.5, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx25, ptr noundef nonnull %arrayidx28, ptr noundef nonnull %arrayidx31) #19, !dbg !941
  call void @llvm.dbg.value(metadata i32 %call32, metadata !340, metadata !DIExpression()), !dbg !896
  %cmp33.not = icmp eq i32 %call32, 4, !dbg !942
  br i1 %cmp33.not, label %if.end37, label %if.then35, !dbg !944

if.then35:                                        ; preds = %if.end20
  %6 = trunc i64 %indvars.iv to i32, !dbg !945
  %7 = load ptr, ptr @stderr, align 8, !dbg !945, !tbaa !374
  %add = add nuw nsw i32 %6, 1, !dbg !947
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef %add, i32 noundef %call32) #20, !dbg !948
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !896
  br label %CLEAN_UP.sink.split, !dbg !949

if.end37:                                         ; preds = %if.end20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !950
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !338, metadata !DIExpression()), !dbg !896
  %exitcond = icmp eq i64 %indvars.iv.next, 4, !dbg !951
  br i1 %exitcond, label %CLEAN_UP, label %for.cond.outer, !dbg !953, !llvm.loop !935

for.end:                                          ; preds = %for.cond
  %8 = trunc i64 %indvars.iv to i32, !dbg !954
  call void @llvm.dbg.value(metadata i32 %8, metadata !338, metadata !DIExpression()), !dbg !896
  %cmp42.not = icmp eq i32 %8, 4, !dbg !954
  br i1 %cmp42.not, label %CLEAN_UP, label %if.then44, !dbg !956

if.then44:                                        ; preds = %for.end
  %9 = load ptr, ptr @stderr, align 8, !dbg !957, !tbaa !374
  %call45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %8) #20, !dbg !959
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !896
  br label %CLEAN_UP.sink.split, !dbg !960

CLEAN_UP.sink.split:                              ; preds = %if.then35, %if.then44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @getmatrix.mat, i8 0, i64 128, i1 false), !dbg !896
  br label %CLEAN_UP, !dbg !961

CLEAN_UP:                                         ; preds = %if.end37, %CLEAN_UP.sink.split, %for.end
  call void @llvm.dbg.value(metadata ptr %fp.0, metadata !275, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.label(metadata !343), !dbg !963
  %cmp47.not = icmp eq ptr %fp.0, null, !dbg !961
  %10 = load ptr, ptr @stdin, align 8
  %cmp49.not = icmp eq ptr %fp.0, %10
  %or.cond = select i1 %cmp47.not, i1 true, i1 %cmp49.not, !dbg !964
  br i1 %or.cond, label %if.end53, label %if.then51, !dbg !964

if.then51:                                        ; preds = %CLEAN_UP
  %call52 = call i32 @fclose(ptr noundef nonnull %fp.0), !dbg !965
  br label %if.end53, !dbg !965

if.end53:                                         ; preds = %if.then9, %if.then, %if.then51, %CLEAN_UP
  call void @llvm.dbg.value(metadata ptr @getmatrix.mat, metadata !341, metadata !DIExpression()), !dbg !896
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %line) #19, !dbg !966
  ret ptr @getmatrix.mat, !dbg !967
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare !dbg !968 noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @putpdb(ptr noundef %fname, ptr noundef readonly %mol, ptr noundef readonly %options) local_unnamed_addr #0 !dbg !973 {
entry:
  %rname.i = alloca [8 x i8], align 4
  %aname.i = alloca [8 x i8], align 1
  %rid.i = alloca [7 x i8], align 1
  %loptions.i = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %fname, metadata !977, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr %mol, metadata !978, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr %options, metadata !979, metadata !DIExpression()), !dbg !982
  %tobool.not = icmp eq ptr %mol, null, !dbg !983
  %call = tail call i32 @get_mytaskid() #19, !dbg !982
  %cmp = icmp eq i32 %call, 0, !dbg !982
  br i1 %tobool.not, label %if.then, label %if.end3, !dbg !985

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then1, label %cleanup, !dbg !986

if.then1:                                         ; preds = %if.then
  %0 = load ptr, ptr @stderr, align 8, !dbg !988, !tbaa !374
  %1 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %0) #20, !dbg !991
  br label %cleanup, !dbg !992

if.end3:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !982
  br i1 %cmp, label %if.then6, label %if.end23, !dbg !993

if.then6:                                         ; preds = %if.end3
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %fname, ptr noundef nonnull dereferenceable(2) @.str) #18, !dbg !994
  %tobool8.not = icmp eq i32 %call7, 0, !dbg !994
  br i1 %tobool8.not, label %if.end.i, label %if.else, !dbg !998

if.else:                                          ; preds = %if.then6
  %call10 = tail call ptr @fopen(ptr noundef %fname, ptr noundef nonnull @.str.9), !dbg !999
  call void @llvm.dbg.value(metadata ptr %call10, metadata !980, metadata !DIExpression()), !dbg !982
  %cmp11 = icmp eq ptr %call10, null, !dbg !1001
  br i1 %cmp11, label %if.end15, label %if.end.i.thread, !dbg !1002

if.end.i.thread:                                  ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !981, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr null, metadata !980, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr null, metadata !1003, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1008, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %options, metadata !1009, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rname.i) #19, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %rname.i, metadata !1019, metadata !DIExpression()) #19, !dbg !1040
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aname.i) #19, !dbg !1041
  call void @llvm.dbg.declare(metadata ptr %aname.i, metadata !1021, metadata !DIExpression()) #19, !dbg !1042
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rid.i) #19, !dbg !1043
  call void @llvm.dbg.declare(metadata ptr %rid.i, metadata !1022, metadata !DIExpression()) #19, !dbg !1044
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %loptions.i) #19, !dbg !1045
  call void @llvm.dbg.declare(metadata ptr %loptions.i, metadata !1026, metadata !DIExpression()) #19, !dbg !1046
  call void @llvm.dbg.value(metadata i32 0, metadata !1027, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1028, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1029, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1030, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1031, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1033, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata ptr null, metadata !1034, metadata !DIExpression()) #19, !dbg !1035
  br label %if.end4.i, !dbg !1047

if.end15:                                         ; preds = %if.else
  %call13 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %fname) #19, !dbg !1048
  call void @llvm.dbg.value(metadata i32 undef, metadata !981, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr null, metadata !980, metadata !DIExpression()), !dbg !982
  br label %if.end23, !dbg !1050

if.end.i:                                         ; preds = %if.then6
  %2 = load ptr, ptr @stdout, align 8, !dbg !1051, !tbaa !374
  call void @llvm.dbg.value(metadata i32 undef, metadata !981, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr null, metadata !980, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr null, metadata !1003, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1008, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %options, metadata !1009, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rname.i) #19, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %rname.i, metadata !1019, metadata !DIExpression()) #19, !dbg !1040
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aname.i) #19, !dbg !1041
  call void @llvm.dbg.declare(metadata ptr %aname.i, metadata !1021, metadata !DIExpression()) #19, !dbg !1042
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rid.i) #19, !dbg !1043
  call void @llvm.dbg.declare(metadata ptr %rid.i, metadata !1022, metadata !DIExpression()) #19, !dbg !1044
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %loptions.i) #19, !dbg !1045
  call void @llvm.dbg.declare(metadata ptr %loptions.i, metadata !1026, metadata !DIExpression()) #19, !dbg !1046
  call void @llvm.dbg.value(metadata i32 0, metadata !1027, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1028, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1029, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1030, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1031, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1033, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata ptr null, metadata !1034, metadata !DIExpression()) #19, !dbg !1035
  %tobool1.not.i = icmp eq ptr %2, null, !dbg !1052
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end4.i, !dbg !1047

if.then2.i:                                       ; preds = %if.end.i
  %3 = load ptr, ptr @stderr, align 8, !dbg !1054, !tbaa !374
  %4 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 27, i64 1, ptr %3) #22, !dbg !1056
  br label %fputpdb.exit, !dbg !1057

if.end4.i:                                        ; preds = %if.end.i.thread, %if.end.i
  %fp.0.ph36 = phi ptr [ %call10, %if.end.i.thread ], [ %2, %if.end.i ]
  %cmp.i = icmp eq ptr %options, null, !dbg !1058
  br i1 %cmp.i, label %if.then5.i, label %if.else.i, !dbg !1060

if.then5.i:                                       ; preds = %if.end4.i
  store i8 0, ptr %loptions.i, align 16, !dbg !1061, !tbaa !368
  br label %if.end8.i, !dbg !1062

if.else.i:                                        ; preds = %if.end4.i
  %call7.i = call ptr @strncpy(ptr noundef nonnull %loptions.i, ptr noundef nonnull %options, i64 noundef 255) #19, !dbg !1063
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %loptions.i, i64 0, i64 255, !dbg !1065
  store i8 0, ptr %arrayidx.i, align 1, !dbg !1066, !tbaa !368
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then5.i
  %call10.i = call ptr @strstr(ptr noundef nonnull %loptions.i, ptr noundef nonnull @.str.42) #18, !dbg !1067
  %cmp11.i = icmp ne ptr %call10.i, null, !dbg !1068
  call void @llvm.dbg.value(metadata i1 %cmp11.i, metadata !1027, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1035
  %call13.i = call ptr @strstr(ptr noundef nonnull %loptions.i, ptr noundef nonnull @.str.56) #18, !dbg !1069
  %cmp14.i = icmp ne ptr %call13.i, null, !dbg !1070
  call void @llvm.dbg.value(metadata i1 %cmp14.i, metadata !1028, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1035
  %call17.i = call ptr @strstr(ptr noundef nonnull %loptions.i, ptr noundef nonnull @.str.57) #18, !dbg !1071
  %cmp18.i = icmp ne ptr %call17.i, null, !dbg !1072
  call void @llvm.dbg.value(metadata i1 %cmp18.i, metadata !1029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1035
  %call21.i = call ptr @strstr(ptr noundef nonnull %loptions.i, ptr noundef nonnull @.str.58) #18, !dbg !1073
  %cmp22.i = icmp ne ptr %call21.i, null, !dbg !1074
  call void @llvm.dbg.value(metadata i1 %cmp22.i, metadata !1030, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1035
  %call25.i = call ptr @strstr(ptr noundef nonnull %loptions.i, ptr noundef nonnull @.str.59) #18, !dbg !1075
  %cmp26.i = icmp ne ptr %call25.i, null, !dbg !1076
  call void @llvm.dbg.value(metadata i1 %cmp26.i, metadata !1031, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1035
  %call29.i = call ptr @strstr(ptr noundef nonnull %loptions.i, ptr noundef nonnull @.str.60) #18, !dbg !1077
  %cmp30.i = icmp eq ptr %call29.i, null, !dbg !1078
  call void @llvm.dbg.value(metadata i1 %cmp30.i, metadata !1032, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1035
  %call33.i = call ptr @strstr(ptr noundef nonnull %loptions.i, ptr noundef nonnull @.str.61) #18, !dbg !1079
  %cmp34.i = icmp ne ptr %call33.i, null, !dbg !1080
  call void @llvm.dbg.value(metadata i1 %cmp34.i, metadata !1033, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i1 undef, metadata !1032, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i1 undef, metadata !1081, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1093
  call void @llvm.dbg.value(metadata i1 %cmp34.i, metadata !1086, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1093
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1087, metadata !DIExpression()) #19, !dbg !1093
  call void @llvm.dbg.value(metadata ptr null, metadata !1088, metadata !DIExpression()) #19, !dbg !1093
  call void @llvm.dbg.value(metadata i32 0, metadata !1091, metadata !DIExpression()) #19, !dbg !1093
  %tobool.not.i.i = select i1 %cmp34.i, i1 true, i1 %cmp30.i, !dbg !1095
  br i1 %tobool.not.i.i, label %if.end.i.i, label %initcid.exit.i, !dbg !1097

if.end.i.i:                                       ; preds = %if.end8.i
  %call.i.i = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !1088, metadata !DIExpression()) #19, !dbg !1093
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !1099
  br i1 %cmp.i.i, label %if.then58.thread.i.i, label %if.end3.i.i, !dbg !1101

if.then58.thread.i.i:                             ; preds = %if.end.i.i
  %5 = load ptr, ptr @stderr, align 8, !dbg !1102, !tbaa !374
  %6 = call i64 @fwrite(ptr nonnull @.str.71, i64 28, i64 1, ptr %5) #22, !dbg !1104
  call void @llvm.dbg.value(metadata i32 undef, metadata !1091, metadata !DIExpression()) #19, !dbg !1093
  call void @llvm.dbg.label(metadata !1092) #19, !dbg !1105
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !1106, metadata !DIExpression()) #19, !dbg !1111
  br label %initcid.exit.i, !dbg !1115

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21, !dbg !1116
  %c_cids.i.i = getelementptr inbounds %struct.cid_t, ptr %call.i.i, i64 0, i32 2, !dbg !1117
  store ptr %call4.i.i, ptr %c_cids.i.i, align 8, !dbg !1118, !tbaa !1119
  %cmp6.i.i = icmp eq ptr %call4.i.i, null, !dbg !1121
  br i1 %cmp6.i.i, label %if.end.i.i.i, label %if.end9.i.i, !dbg !1123

if.end9.i.i:                                      ; preds = %if.end3.i.i
  store i32 65, ptr %call.i.i, align 8, !dbg !1124, !tbaa !1125
  %c_last.i.i = getelementptr inbounds %struct.cid_t, ptr %call.i.i, i64 0, i32 1, !dbg !1126
  store i32 90, ptr %c_last.i.i, align 4, !dbg !1127, !tbaa !1128
  call void @llvm.dbg.value(metadata i32 65, metadata !1089, metadata !DIExpression()) #19, !dbg !1093
  %uglygep.i.i = getelementptr i8, ptr %call4.i.i, i64 65, !dbg !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %uglygep.i.i, i8 0, i64 26, i1 false) #19, !dbg !1131, !tbaa !368
  call void @llvm.dbg.value(metadata i32 undef, metadata !1089, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1093
  br i1 %cmp34.i, label %if.end19.i.i, label %initcid.exit.i, !dbg !1133

if.end19.i.i:                                     ; preds = %if.end9.i.i
  %m_strands.i.i = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !1134
  call void @llvm.dbg.value(metadata ptr undef, metadata !1090, metadata !DIExpression()) #19, !dbg !1093
  %sp.092.i.i = load ptr, ptr %m_strands.i.i, align 8, !dbg !1138, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %sp.092.i.i, metadata !1090, metadata !DIExpression()) #19, !dbg !1093
  %tobool21.not93.i.i = icmp eq ptr %sp.092.i.i, null, !dbg !1139
  br i1 %tobool21.not93.i.i, label %for.body44.i.i.preheader, label %for.body22.i.i, !dbg !1139

for.body22.i.i:                                   ; preds = %if.end19.i.i, %for.inc37.i.i
  %sp.094.i.i = phi ptr [ %sp.0.i.i, %for.inc37.i.i ], [ %sp.092.i.i, %if.end19.i.i ]
  %7 = load ptr, ptr %sp.094.i.i, align 8, !dbg !1140, !tbaa !740
  %call23.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #18, !dbg !1144
  %cmp24.i.i = icmp eq i64 %call23.i.i, 1, !dbg !1145
  br i1 %cmp24.i.i, label %if.then25.i.i, label %for.inc37.i.i, !dbg !1146

if.then25.i.i:                                    ; preds = %for.body22.i.i
  %8 = load i8, ptr %7, align 1, !dbg !1147, !tbaa !368
  call void @llvm.dbg.value(metadata i8 %8, metadata !1089, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #19, !dbg !1093
  %9 = add i8 %8, -65, !dbg !1149
  %10 = icmp ult i8 %9, 26, !dbg !1149
  br i1 %10, label %if.then31.i.i, label %for.inc37.i.i, !dbg !1149

if.then31.i.i:                                    ; preds = %if.then25.i.i
  call void @llvm.dbg.value(metadata i8 %8, metadata !1089, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #19, !dbg !1093
  %idxprom3390.i.i = zext i8 %8 to i64, !dbg !1151
  %arrayidx34.i.i = getelementptr inbounds i8, ptr %call4.i.i, i64 %idxprom3390.i.i, !dbg !1151
  store i8 1, ptr %arrayidx34.i.i, align 1, !dbg !1152, !tbaa !368
  br label %for.inc37.i.i, !dbg !1151

for.inc37.i.i:                                    ; preds = %if.then31.i.i, %if.then25.i.i, %for.body22.i.i
  %s_next.i.i = getelementptr inbounds %struct.strand_t, ptr %sp.094.i.i, i64 0, i32 4, !dbg !1153
  call void @llvm.dbg.value(metadata ptr undef, metadata !1090, metadata !DIExpression()) #19, !dbg !1093
  %sp.0.i.i = load ptr, ptr %s_next.i.i, align 8, !dbg !1138, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %sp.0.i.i, metadata !1090, metadata !DIExpression()) #19, !dbg !1093
  %tobool21.not.i.i = icmp eq ptr %sp.0.i.i, null, !dbg !1139
  br i1 %tobool21.not.i.i, label %for.body44.i.i.preheader, label %for.body22.i.i, !dbg !1139, !llvm.loop !1154

for.body44.i.i.preheader:                         ; preds = %for.inc37.i.i, %if.end19.i.i
  br label %for.body44.i.i, !dbg !1156

for.body44.i.i:                                   ; preds = %for.body44.i.i.preheader, %for.inc52.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc52.i.i ], [ 65, %for.body44.i.i.preheader ]
  %arrayidx48.i.i = getelementptr inbounds i8, ptr %call4.i.i, i64 %indvars.iv.i.i, !dbg !1158
  %11 = load i8, ptr %arrayidx48.i.i, align 1, !dbg !1158, !tbaa !368
  %tobool49.not.i.i = icmp eq i8 %11, 0, !dbg !1158
  br i1 %tobool49.not.i.i, label %initcid.exit.i, label %for.inc52.i.i, !dbg !1162

for.inc52.i.i:                                    ; preds = %for.body44.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1163
  %12 = trunc i64 %indvars.iv.next.i.i to i32, !dbg !1163
  store i32 %12, ptr %call.i.i, align 8, !dbg !1163, !tbaa !1125
  %exitcond.i = icmp eq i64 %indvars.iv.next.i.i, 91, !dbg !1164
  br i1 %exitcond.i, label %initcid.exit.i, label %for.body44.i.i, !dbg !1156, !llvm.loop !1165

if.end.i.i.i:                                     ; preds = %if.end3.i.i
  %13 = load ptr, ptr @stderr, align 8, !dbg !1167, !tbaa !374
  %14 = call i64 @fwrite(ptr nonnull @.str.72, i64 31, i64 1, ptr %13) #22, !dbg !1169
  call void @llvm.dbg.value(metadata i32 undef, metadata !1091, metadata !DIExpression()) #19, !dbg !1093
  call void @llvm.dbg.label(metadata !1092) #19, !dbg !1105
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !1106, metadata !DIExpression()) #19, !dbg !1111
  call void @free(ptr noundef nonnull %call.i.i) #19, !dbg !1170
  br label %initcid.exit.i, !dbg !1173

initcid.exit.i:                                   ; preds = %for.inc52.i.i, %for.body44.i.i, %if.end.i.i.i, %if.end9.i.i, %if.then58.thread.i.i, %if.end8.i
  %retval.0.i.i = phi ptr [ null, %if.end8.i ], [ %call.i.i, %if.end9.i.i ], [ null, %if.then58.thread.i.i ], [ null, %if.end.i.i.i ], [ %call.i.i, %for.body44.i.i ], [ %call.i.i, %for.inc52.i.i ], !dbg !1093
  call void @llvm.dbg.value(metadata ptr %retval.0.i.i, metadata !1034, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1014, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1011, metadata !DIExpression()) #19, !dbg !1035
  %m_strands.i = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !1174
  call void @llvm.dbg.value(metadata ptr undef, metadata !1016, metadata !DIExpression()) #19, !dbg !1035
  %sp.0687.i = load ptr, ptr %m_strands.i, align 8, !dbg !1176, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %sp.0687.i, metadata !1016, metadata !DIExpression()) #19, !dbg !1035
  %tobool40.not688.i = icmp eq ptr %sp.0687.i, null, !dbg !1177
  br i1 %tobool40.not688.i, label %for.end176.i, label %for.body.lr.ph.i, !dbg !1177

for.body.lr.ph.i:                                 ; preds = %initcid.exit.i
  %cmp.i270.i = icmp eq ptr %retval.0.i.i, null
  %c_last.i272.i = getelementptr inbounds %struct.cid_t, ptr %retval.0.i.i, i64 0, i32 1
  %c_cids.i274.i = getelementptr inbounds %struct.cid_t, ptr %retval.0.i.i, i64 0, i32 2
  %add.ptr.i.i = getelementptr inbounds i8, ptr %aname.i, i64 1
  %arrayidx6.i.i = getelementptr inbounds i8, ptr %aname.i, i64 4
  %arrayidx14.i.i = getelementptr inbounds i8, ptr %aname.i, i64 2
  %arrayidx21.i.i = getelementptr inbounds i8, ptr %aname.i, i64 3
  %or.cond197.i = select i1 %cmp18.i, i1 true, i1 %cmp22.i
  %or.cond197.not.i = xor i1 %or.cond197.i, true
  %or.cond198.i = select i1 %or.cond197.not.i, i1 true, i1 %cmp11.i
  %or.cond199.i = select i1 %or.cond198.i, i1 true, i1 %cmp14.i
  br label %for.body.i, !dbg !1177

for.body.i:                                       ; preds = %for.end173.i, %for.body.lr.ph.i
  %sp.0691.i = phi ptr [ %sp.0687.i, %for.body.lr.ph.i ], [ %sp.0.i, %for.end173.i ]
  %tr.0690.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %tr.1.lcssa.i, %for.end173.i ]
  %ta.0689.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ta.1.lcssa.i, %for.end173.i ]
  call void @llvm.dbg.value(metadata i32 %tr.0690.i, metadata !1011, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %ta.0689.i, metadata !1014, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %retval.0.i.i, metadata !1178, metadata !DIExpression()) #19, !dbg !1187
  call void @llvm.dbg.value(metadata i1 undef, metadata !1183, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1187
  call void @llvm.dbg.value(metadata i1 %cmp34.i, metadata !1184, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1187
  call void @llvm.dbg.value(metadata ptr %sp.0691.i, metadata !1185, metadata !DIExpression()) #19, !dbg !1187
  br i1 %tobool.not.i.i, label %if.end.i271.i, label %nextcid.exit.i, !dbg !1191

if.end.i271.i:                                    ; preds = %for.body.i
  br i1 %cmp.i270.i, label %if.then1.i.i, label %if.else.i.i, !dbg !1192

if.then1.i.i:                                     ; preds = %if.end.i271.i
  %15 = load ptr, ptr @stderr, align 8, !dbg !1193, !tbaa !374
  %16 = call i64 @fwrite(ptr nonnull @.str.74, i64 18, i64 1, ptr %15) #22, !dbg !1196
  br label %nextcid.exit.i, !dbg !1197

if.else.i.i:                                      ; preds = %if.end.i271.i
  %17 = load i32, ptr %retval.0.i.i, align 8, !dbg !1198, !tbaa !1125
  %18 = load i32, ptr %c_last.i272.i, align 4, !dbg !1200, !tbaa !1128
  %cmp2.i.i = icmp sgt i32 %17, %18, !dbg !1201
  br i1 %cmp2.i.i, label %nextcid.exit.i, label %if.else4.i.i, !dbg !1202

if.else4.i.i:                                     ; preds = %if.else.i.i
  br i1 %cmp34.i, label %if.then6.i.i, label %if.else34.i.i, !dbg !1203

if.then6.i.i:                                     ; preds = %if.else4.i.i
  %19 = load ptr, ptr %sp.0691.i, align 8, !dbg !1204, !tbaa !740
  %call7.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #18, !dbg !1208
  %cmp8.i.i = icmp eq i64 %call7.i.i, 1, !dbg !1209
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end17.i.i, !dbg !1210

if.then9.i.i:                                     ; preds = %if.then6.i.i
  %20 = load i8, ptr %19, align 1, !dbg !1211, !tbaa !368
  call void @llvm.dbg.value(metadata i8 %20, metadata !1186, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #19, !dbg !1187
  %21 = add i8 %20, -65, !dbg !1213
  %22 = icmp ult i8 %21, 26, !dbg !1213
  br i1 %22, label %if.then15.i273.i, label %if.end17.i.i, !dbg !1213

if.then15.i273.i:                                 ; preds = %if.then9.i.i
  %conv57.i.i = zext i8 %20 to i32, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %conv57.i.i, metadata !1186, metadata !DIExpression()) #19, !dbg !1187
  br label %nextcid.exit.i, !dbg !1215

if.end17.i.i:                                     ; preds = %if.then9.i.i, %if.then6.i.i
  call void @llvm.dbg.value(metadata i32 %17, metadata !1186, metadata !DIExpression()) #19, !dbg !1187
  %23 = load ptr, ptr %c_cids.i274.i, align 8, !dbg !1216, !tbaa !1119
  %idxprom.i.i = sext i32 %17 to i64, !dbg !1217
  %arrayidx.i.i = getelementptr inbounds i8, ptr %23, i64 %idxprom.i.i, !dbg !1217
  store i8 1, ptr %arrayidx.i.i, align 1, !dbg !1218, !tbaa !368
  %24 = load i32, ptr %retval.0.i.i, align 8, !dbg !1219, !tbaa !1125
  %25 = load i32, ptr %c_last.i272.i, align 4, !tbaa !1128
  %26 = sext i32 %24 to i64, !dbg !1219
  %smax.i.i = call i32 @llvm.smax.i32(i32 %25, i32 %24) #19, !dbg !1219
  %wide.trip.count.i.i = sext i32 %smax.i.i to i64, !dbg !1221
  br label %for.cond.i.i, !dbg !1219

for.cond.i.i:                                     ; preds = %for.body.i.i, %if.end17.i.i
  %indvars.iv.i275.i = phi i64 [ %indvars.iv.next.i276.i, %for.body.i.i ], [ %26, %if.end17.i.i ]
  %indvars.iv.next.i276.i = add nsw i64 %indvars.iv.i275.i, 1, !dbg !1223
  %27 = trunc i64 %indvars.iv.next.i276.i to i32, !dbg !1223
  store i32 %27, ptr %retval.0.i.i, align 8, !dbg !1223, !tbaa !1125
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i275.i, %wide.trip.count.i.i, !dbg !1221
  br i1 %exitcond.not.i.i, label %nextcid.exit.i, label %for.body.i.i, !dbg !1224

for.body.i.i:                                     ; preds = %for.cond.i.i
  %28 = load ptr, ptr %c_cids.i274.i, align 8, !dbg !1225, !tbaa !1119
  %arrayidx28.i.i = getelementptr inbounds i8, ptr %28, i64 %indvars.iv.next.i276.i, !dbg !1228
  %29 = load i8, ptr %arrayidx28.i.i, align 1, !dbg !1228, !tbaa !368
  %tobool29.not.i.i = icmp eq i8 %29, 0, !dbg !1228
  br i1 %tobool29.not.i.i, label %nextcid.exit.i, label %for.cond.i.i, !dbg !1229, !llvm.loop !1230

if.else34.i.i:                                    ; preds = %if.else4.i.i
  call void @llvm.dbg.value(metadata i32 %17, metadata !1186, metadata !DIExpression()) #19, !dbg !1187
  %inc37.i.i = add nsw i32 %17, 1, !dbg !1232
  store i32 %inc37.i.i, ptr %retval.0.i.i, align 8, !dbg !1232, !tbaa !1125
  br label %nextcid.exit.i, !dbg !1234

nextcid.exit.i:                                   ; preds = %for.body.i.i, %for.cond.i.i, %if.else34.i.i, %if.then15.i273.i, %if.else.i.i, %if.then1.i.i, %for.body.i
  %retval.0.i277.i = phi i32 [ 32, %if.then1.i.i ], [ %conv57.i.i, %if.then15.i273.i ], [ %17, %if.else34.i.i ], [ 32, %for.body.i ], [ 32, %if.else.i.i ], [ %17, %for.cond.i.i ], [ %17, %for.body.i.i ], !dbg !1187
  call void @llvm.dbg.value(metadata i32 %retval.0.i277.i, metadata !1015, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1010, metadata !DIExpression()) #19, !dbg !1035
  %s_nresidues.i = getelementptr inbounds %struct.strand_t, ptr %sp.0691.i, i64 0, i32 5
  call void @llvm.dbg.value(metadata i32 %tr.0690.i, metadata !1011, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %ta.0689.i, metadata !1014, metadata !DIExpression()) #19, !dbg !1035
  %30 = load i32, ptr %s_nresidues.i, align 8, !dbg !1235, !tbaa !1238
  %cmp44679.i = icmp sgt i32 %30, 0, !dbg !1239
  br i1 %cmp44679.i, label %for.body46.lr.ph.i, label %for.end173.i, !dbg !1240

for.body46.lr.ph.i:                               ; preds = %nextcid.exit.i
  %s_residues.i = getelementptr inbounds %struct.strand_t, ptr %sp.0691.i, i64 0, i32 7
  %sext.i = shl i32 %retval.0.i277.i, 24
  %conv112.i = ashr exact i32 %sext.i, 24
  br label %for.body46.i, !dbg !1240

for.body46.i:                                     ; preds = %for.inc170.i, %for.body46.lr.ph.i
  %indvars.iv694.i = phi i64 [ 0, %for.body46.lr.ph.i ], [ %indvars.iv.next695.i, %for.inc170.i ]
  %tr.1681.i = phi i32 [ %tr.0690.i, %for.body46.lr.ph.i ], [ %inc172.i, %for.inc170.i ]
  %ta.1680.i = phi i32 [ %ta.0689.i, %for.body46.lr.ph.i ], [ %ta.2.lcssa.i, %for.inc170.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv694.i, metadata !1010, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %tr.1681.i, metadata !1011, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %ta.1680.i, metadata !1014, metadata !DIExpression()) #19, !dbg !1035
  %31 = load ptr, ptr %s_residues.i, align 8, !dbg !1241, !tbaa !754
  %arrayidx47.i = getelementptr inbounds ptr, ptr %31, i64 %indvars.iv694.i, !dbg !1243
  %32 = load ptr, ptr %arrayidx47.i, align 8, !dbg !1243, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %32, metadata !1017, metadata !DIExpression()) #19, !dbg !1035
  %r_resid.i = getelementptr inbounds %struct.residue_t, ptr %32, i64 0, i32 5, !dbg !1244
  %33 = load ptr, ptr %r_resid.i, align 8, !dbg !1244, !tbaa !711
  %tobool49.not.i = icmp eq ptr %33, null, !dbg !1245
  %spec.select267.i = select i1 %tobool49.not.i, ptr @.str.62, ptr %33, !dbg !1245
  %call51.i = call ptr @strcpy(ptr noundef nonnull %rid.i, ptr noundef nonnull %spec.select267.i) #19, !dbg !1246
  br i1 %cmp18.i, label %if.then53.i, label %if.else55.i, !dbg !1247

if.then53.i:                                      ; preds = %for.body46.i
  %34 = getelementptr i8, ptr %32, i64 24, !dbg !1248
  %.val.i = load ptr, ptr %34, align 8, !dbg !1248, !tbaa !708
  call void @llvm.dbg.value(metadata ptr %rname.i, metadata !1250, metadata !DIExpression()) #19, !dbg !1256
  call void @llvm.dbg.value(metadata ptr undef, metadata !1255, metadata !DIExpression()) #19, !dbg !1256
  %call.i278.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %rname.i, ptr noundef nonnull dereferenceable(1) %.val.i) #19, !dbg !1258
  %lhsv.i = load i32, ptr %rname.i, align 4, !dbg !1259
  switch i32 %lhsv.i, label %if.end22.i.i [
    i32 4281671, label %if.end.i280.thread.i
    i32 4539457, label %if.then5.i.i
    i32 5851220, label %if.then10.i.i
    i32 5527875, label %if.then15.i282.i
    i32 4280917, label %if.then20.i.i
  ], !dbg !1261

if.end.i280.thread.i:                             ; preds = %if.then53.i
  store i32 4661280, ptr %rname.i, align 4, !dbg !1262
  br label %if.end22.i.i, !dbg !1263

if.then5.i.i:                                     ; preds = %if.then53.i
  store i32 4268064, ptr %rname.i, align 4, !dbg !1264
  br label %if.end22.i.i, !dbg !1264

if.then10.i.i:                                    ; preds = %if.then53.i
  store i32 5513248, ptr %rname.i, align 4, !dbg !1266
  br label %if.end22.i.i, !dbg !1266

if.then15.i282.i:                                 ; preds = %if.then53.i
  store i32 4399136, ptr %rname.i, align 4, !dbg !1268
  br label %if.end22.i.i, !dbg !1268

if.then20.i.i:                                    ; preds = %if.then53.i
  store i32 5578784, ptr %rname.i, align 4, !dbg !1270
  br label %if.end22.i.i, !dbg !1270

if.end22.i.i:                                     ; preds = %if.then20.i.i, %if.then15.i282.i, %if.then10.i.i, %if.then5.i.i, %if.end.i280.thread.i, %if.then53.i
  %lhsv553743.i = phi i32 [ 5578784, %if.then20.i.i ], [ 4399136, %if.then15.i282.i ], [ 5513248, %if.then10.i.i ], [ 4661280, %if.end.i280.thread.i ], [ 4268064, %if.then5.i.i ], [ %lhsv.i, %if.then53.i ]
  %bcmp545.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.80, i64 3) #19, !dbg !1272
  %tobool24.not.i.i = icmp eq i32 %bcmp545.i, 0, !dbg !1272
  br i1 %tobool24.not.i.i, label %if.then25.i285.i, label %if.end27.i.i, !dbg !1274

if.then25.i285.i:                                 ; preds = %if.end22.i.i
  store i32 4661280, ptr %rname.i, align 4, !dbg !1275
  br label %if.end27.i.i, !dbg !1275

if.end27.i.i:                                     ; preds = %if.then25.i285.i, %if.end22.i.i
  %lhsv553742.i = phi i32 [ 4661280, %if.then25.i285.i ], [ %lhsv553743.i, %if.end22.i.i ]
  %bcmp546.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.81, i64 3) #19, !dbg !1276
  %tobool29.not.i286.i = icmp eq i32 %bcmp546.i, 0, !dbg !1276
  br i1 %tobool29.not.i286.i, label %if.then30.i.i, label %if.end32.i.i, !dbg !1278

if.then30.i.i:                                    ; preds = %if.end27.i.i
  store i32 4268064, ptr %rname.i, align 4, !dbg !1279
  br label %if.end32.i.i, !dbg !1279

if.end32.i.i:                                     ; preds = %if.then30.i.i, %if.end27.i.i
  %lhsv553741.i = phi i32 [ 4268064, %if.then30.i.i ], [ %lhsv553742.i, %if.end27.i.i ]
  %bcmp547.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.82, i64 3) #19, !dbg !1280
  %tobool34.not.i.i = icmp eq i32 %bcmp547.i, 0, !dbg !1280
  br i1 %tobool34.not.i.i, label %if.then35.i.i, label %if.end37.i.i, !dbg !1282

if.then35.i.i:                                    ; preds = %if.end32.i.i
  store i32 5513248, ptr %rname.i, align 4, !dbg !1283
  br label %if.end37.i.i, !dbg !1283

if.end37.i.i:                                     ; preds = %if.then35.i.i, %if.end32.i.i
  %lhsv553740.i = phi i32 [ 5513248, %if.then35.i.i ], [ %lhsv553741.i, %if.end32.i.i ]
  %bcmp548.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.83, i64 3) #19, !dbg !1284
  %tobool39.not.i.i = icmp eq i32 %bcmp548.i, 0, !dbg !1284
  br i1 %tobool39.not.i.i, label %if.then40.i.i, label %if.end42.i.i, !dbg !1286

if.then40.i.i:                                    ; preds = %if.end37.i.i
  store i32 4399136, ptr %rname.i, align 4, !dbg !1287
  br label %if.end42.i.i, !dbg !1287

if.end42.i.i:                                     ; preds = %if.then40.i.i, %if.end37.i.i
  %lhsv553739.i = phi i32 [ 4399136, %if.then40.i.i ], [ %lhsv553740.i, %if.end37.i.i ]
  %bcmp549.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.84, i64 3) #19, !dbg !1288
  %tobool44.not.i.i = icmp eq i32 %bcmp549.i, 0, !dbg !1288
  br i1 %tobool44.not.i.i, label %if.then45.i.i, label %if.end47.i.i, !dbg !1290

if.then45.i.i:                                    ; preds = %if.end42.i.i
  store i32 4661280, ptr %rname.i, align 4, !dbg !1291
  br label %if.end47.i.i, !dbg !1291

if.end47.i.i:                                     ; preds = %if.then45.i.i, %if.end42.i.i
  %lhsv553738.i = phi i32 [ 4661280, %if.then45.i.i ], [ %lhsv553739.i, %if.end42.i.i ]
  %bcmp550.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.85, i64 3) #19, !dbg !1292
  %tobool49.not.i287.i = icmp eq i32 %bcmp550.i, 0, !dbg !1292
  br i1 %tobool49.not.i287.i, label %if.then50.i.i, label %if.end52.i.i, !dbg !1294

if.then50.i.i:                                    ; preds = %if.end47.i.i
  store i32 4268064, ptr %rname.i, align 4, !dbg !1295
  br label %if.end52.i.i, !dbg !1295

if.end52.i.i:                                     ; preds = %if.then50.i.i, %if.end47.i.i
  %lhsv553737.i = phi i32 [ 4268064, %if.then50.i.i ], [ %lhsv553738.i, %if.end47.i.i ]
  %bcmp551.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.86, i64 3) #19, !dbg !1296
  %tobool54.not.i.i = icmp eq i32 %bcmp551.i, 0, !dbg !1296
  br i1 %tobool54.not.i.i, label %if.then55.i.i, label %if.end57.i.i, !dbg !1298

if.then55.i.i:                                    ; preds = %if.end52.i.i
  store i32 5578784, ptr %rname.i, align 4, !dbg !1299
  br label %if.end57.i.i, !dbg !1299

if.end57.i.i:                                     ; preds = %if.then55.i.i, %if.end52.i.i
  %lhsv553736.i = phi i32 [ 5578784, %if.then55.i.i ], [ %lhsv553737.i, %if.end52.i.i ]
  %bcmp552.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.87, i64 3) #19, !dbg !1300
  %tobool59.not.i.i = icmp eq i32 %bcmp552.i, 0, !dbg !1300
  br i1 %tobool59.not.i.i, label %if.end62.i.thread.i, label %if.end62.i.i, !dbg !1302

if.end62.i.thread.i:                              ; preds = %if.end57.i.i
  store i32 4399136, ptr %rname.i, align 4, !dbg !1303
  br label %if.end63.i, !dbg !1304

if.end62.i.i:                                     ; preds = %if.end57.i.i
  switch i32 %lhsv553736.i, label %if.end63.i [
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
  ], !dbg !1304

if.then65.i.i:                                    ; preds = %if.end62.i.i
  store i32 4661280, ptr %rname.i, align 4, !dbg !1305
  br label %if.end63.i, !dbg !1305

if.then70.i.i:                                    ; preds = %if.end62.i.i
  store i32 4268064, ptr %rname.i, align 4, !dbg !1307
  br label %if.end63.i, !dbg !1307

if.then75.i.i:                                    ; preds = %if.end62.i.i
  store i32 5513248, ptr %rname.i, align 4, !dbg !1309
  br label %if.end63.i, !dbg !1309

if.then80.i.i:                                    ; preds = %if.end62.i.i
  store i32 4399136, ptr %rname.i, align 4, !dbg !1311
  br label %if.end63.i, !dbg !1311

if.then85.i.i:                                    ; preds = %if.end62.i.i
  store i32 4661280, ptr %rname.i, align 4, !dbg !1313
  br label %if.end63.i, !dbg !1313

if.then90.i.i:                                    ; preds = %if.end62.i.i
  store i32 4268064, ptr %rname.i, align 4, !dbg !1315
  br label %if.end63.i, !dbg !1315

if.then95.i.i:                                    ; preds = %if.end62.i.i
  store i32 5578784, ptr %rname.i, align 4, !dbg !1317
  br label %if.end63.i, !dbg !1317

if.then100.i.i:                                   ; preds = %if.end62.i.i
  store i32 4399136, ptr %rname.i, align 4, !dbg !1319
  br label %if.end63.i, !dbg !1319

if.then105.i.i:                                   ; preds = %if.end62.i.i
  store i32 4661280, ptr %rname.i, align 4, !dbg !1321
  br label %if.end63.i, !dbg !1321

if.then110.i.i:                                   ; preds = %if.end62.i.i
  store i32 4268064, ptr %rname.i, align 4, !dbg !1323
  br label %if.end63.i, !dbg !1323

if.then115.i.i:                                   ; preds = %if.end62.i.i
  store i32 5513248, ptr %rname.i, align 4, !dbg !1325
  br label %if.end63.i, !dbg !1325

if.then120.i.i:                                   ; preds = %if.end62.i.i
  store i32 4399136, ptr %rname.i, align 4, !dbg !1327
  br label %if.end63.i, !dbg !1327

if.then125.i.i:                                   ; preds = %if.end62.i.i
  store i32 4661280, ptr %rname.i, align 4, !dbg !1329
  br label %if.end63.i, !dbg !1329

if.then130.i.i:                                   ; preds = %if.end62.i.i
  store i32 4268064, ptr %rname.i, align 4, !dbg !1331
  br label %if.end63.i, !dbg !1331

if.then135.i.i:                                   ; preds = %if.end62.i.i
  store i32 5578784, ptr %rname.i, align 4, !dbg !1333
  br label %if.end63.i, !dbg !1333

if.end142.i.thread.i:                             ; preds = %if.end62.i.i
  store i32 4399136, ptr %rname.i, align 4, !dbg !1335
  br label %if.end63.i, !dbg !1337

if.then145.i.i:                                   ; preds = %if.end62.i.i
  store i32 5458248, ptr %rname.i, align 4, !dbg !1338
  br label %if.end63.i, !dbg !1338

if.then155.i.i:                                   ; preds = %if.end62.i.i
  store i32 5458248, ptr %rname.i, align 4, !dbg !1340
  br label %if.end63.i, !dbg !1340

if.then160.i.i:                                   ; preds = %if.end62.i.i
  store i32 5462339, ptr %rname.i, align 4, !dbg !1342
  br label %if.end63.i, !dbg !1342

if.then165.i.i:                                   ; preds = %if.end62.i.i
  store i32 5264193, ptr %rname.i, align 4, !dbg !1344
  br label %if.end63.i, !dbg !1344

if.then170.i.i:                                   ; preds = %if.end62.i.i
  store i32 5590087, ptr %rname.i, align 4, !dbg !1346
  br label %if.end63.i, !dbg !1346

if.else55.i:                                      ; preds = %for.body46.i
  br i1 %cmp22.i, label %if.then57.i, label %if.else59.i, !dbg !1348

if.then57.i:                                      ; preds = %if.else55.i
  %35 = getelementptr i8, ptr %32, i64 24, !dbg !1349
  %.val268.i = load ptr, ptr %35, align 8, !dbg !1349, !tbaa !708
  call void @llvm.dbg.value(metadata ptr %rname.i, metadata !1351, metadata !DIExpression()) #19, !dbg !1355
  call void @llvm.dbg.value(metadata ptr undef, metadata !1354, metadata !DIExpression()) #19, !dbg !1355
  %call.i288.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %rname.i, ptr noundef nonnull dereferenceable(1) %.val268.i) #19, !dbg !1357
  %lhsv621.i = load i32, ptr %rname.i, align 4, !dbg !1358
  switch i32 %lhsv621.i, label %if.end22.i310.i [
    i32 4281671, label %if.end.i294.thread.i
    i32 4539457, label %if.then5.i295.i
    i32 5851220, label %if.then10.i299.i
    i32 5527875, label %if.then15.i303.i
    i32 4280917, label %if.then20.i307.i
  ], !dbg !1360

if.end.i294.thread.i:                             ; preds = %if.then57.i
  store i32 4661280, ptr %rname.i, align 4, !dbg !1361
  br label %if.end22.i310.i, !dbg !1362

if.then5.i295.i:                                  ; preds = %if.then57.i
  store i32 4268064, ptr %rname.i, align 4, !dbg !1363
  br label %if.end22.i310.i, !dbg !1363

if.then10.i299.i:                                 ; preds = %if.then57.i
  store i32 5513248, ptr %rname.i, align 4, !dbg !1365
  br label %if.end22.i310.i, !dbg !1365

if.then15.i303.i:                                 ; preds = %if.then57.i
  store i32 4399136, ptr %rname.i, align 4, !dbg !1367
  br label %if.end22.i310.i, !dbg !1367

if.then20.i307.i:                                 ; preds = %if.then57.i
  store i32 5578784, ptr %rname.i, align 4, !dbg !1369
  br label %if.end22.i310.i, !dbg !1369

if.end22.i310.i:                                  ; preds = %if.then20.i307.i, %if.then15.i303.i, %if.then10.i299.i, %if.then5.i295.i, %if.end.i294.thread.i, %if.then57.i
  %lhsv631709.i = phi i32 [ 5578784, %if.then20.i307.i ], [ 4399136, %if.then15.i303.i ], [ 5513248, %if.then10.i299.i ], [ 4661280, %if.end.i294.thread.i ], [ 4268064, %if.then5.i295.i ], [ %lhsv621.i, %if.then57.i ]
  %bcmp502.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.80, i64 3) #19, !dbg !1371
  %tobool24.not.i309.i = icmp eq i32 %bcmp502.i, 0, !dbg !1371
  br i1 %tobool24.not.i309.i, label %if.then25.i311.i, label %if.end27.i314.i, !dbg !1373

if.then25.i311.i:                                 ; preds = %if.end22.i310.i
  store i32 4670496, ptr %rname.i, align 4, !dbg !1374
  br label %if.end27.i314.i, !dbg !1374

if.end27.i314.i:                                  ; preds = %if.then25.i311.i, %if.end22.i310.i
  %lhsv631708.i = phi i32 [ 4670496, %if.then25.i311.i ], [ %lhsv631709.i, %if.end22.i310.i ]
  %bcmp503.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.81, i64 3) #19, !dbg !1375
  %tobool29.not.i313.i = icmp eq i32 %bcmp503.i, 0, !dbg !1375
  br i1 %tobool29.not.i313.i, label %if.then30.i315.i, label %if.end32.i318.i, !dbg !1377

if.then30.i315.i:                                 ; preds = %if.end27.i314.i
  store i32 4277280, ptr %rname.i, align 4, !dbg !1378
  br label %if.end32.i318.i, !dbg !1378

if.end32.i318.i:                                  ; preds = %if.then30.i315.i, %if.end27.i314.i
  %lhsv631707.i = phi i32 [ 4277280, %if.then30.i315.i ], [ %lhsv631708.i, %if.end27.i314.i ]
  %bcmp504.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.82, i64 3) #19, !dbg !1379
  %tobool34.not.i317.i = icmp eq i32 %bcmp504.i, 0, !dbg !1379
  br i1 %tobool34.not.i317.i, label %if.then35.i319.i, label %if.end37.i322.i, !dbg !1381

if.then35.i319.i:                                 ; preds = %if.end32.i318.i
  store i32 5522464, ptr %rname.i, align 4, !dbg !1382
  br label %if.end37.i322.i, !dbg !1382

if.end37.i322.i:                                  ; preds = %if.then35.i319.i, %if.end32.i318.i
  %lhsv631706.i = phi i32 [ 5522464, %if.then35.i319.i ], [ %lhsv631707.i, %if.end32.i318.i ]
  %bcmp505.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.83, i64 3) #19, !dbg !1383
  %tobool39.not.i321.i = icmp eq i32 %bcmp505.i, 0, !dbg !1383
  br i1 %tobool39.not.i321.i, label %if.then40.i323.i, label %if.end42.i326.i, !dbg !1385

if.then40.i323.i:                                 ; preds = %if.end37.i322.i
  store i32 4408352, ptr %rname.i, align 4, !dbg !1386
  br label %if.end42.i326.i, !dbg !1386

if.end42.i326.i:                                  ; preds = %if.then40.i323.i, %if.end37.i322.i
  %lhsv631705.i = phi i32 [ 4408352, %if.then40.i323.i ], [ %lhsv631706.i, %if.end37.i322.i ]
  %bcmp506.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.84, i64 3) #19, !dbg !1387
  %tobool44.not.i325.i = icmp eq i32 %bcmp506.i, 0, !dbg !1387
  br i1 %tobool44.not.i325.i, label %if.then45.i327.i, label %if.end47.i330.i, !dbg !1389

if.then45.i327.i:                                 ; preds = %if.end42.i326.i
  store i32 4674080, ptr %rname.i, align 4, !dbg !1390
  br label %if.end47.i330.i, !dbg !1390

if.end47.i330.i:                                  ; preds = %if.then45.i327.i, %if.end42.i326.i
  %lhsv631704.i = phi i32 [ 4674080, %if.then45.i327.i ], [ %lhsv631705.i, %if.end42.i326.i ]
  %bcmp507.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.85, i64 3) #19, !dbg !1391
  %tobool49.not.i329.i = icmp eq i32 %bcmp507.i, 0, !dbg !1391
  br i1 %tobool49.not.i329.i, label %if.then50.i331.i, label %if.end52.i334.i, !dbg !1393

if.then50.i331.i:                                 ; preds = %if.end47.i330.i
  store i32 4280864, ptr %rname.i, align 4, !dbg !1394
  br label %if.end52.i334.i, !dbg !1394

if.end52.i334.i:                                  ; preds = %if.then50.i331.i, %if.end47.i330.i
  %lhsv631703.i = phi i32 [ 4280864, %if.then50.i331.i ], [ %lhsv631704.i, %if.end47.i330.i ]
  %bcmp508.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.86, i64 3) #19, !dbg !1395
  %tobool54.not.i333.i = icmp eq i32 %bcmp508.i, 0, !dbg !1395
  br i1 %tobool54.not.i333.i, label %if.then55.i335.i, label %if.end57.i338.i, !dbg !1397

if.then55.i335.i:                                 ; preds = %if.end52.i334.i
  store i32 5591584, ptr %rname.i, align 4, !dbg !1398
  br label %if.end57.i338.i, !dbg !1398

if.end57.i338.i:                                  ; preds = %if.then55.i335.i, %if.end52.i334.i
  %lhsv631702.i = phi i32 [ 5591584, %if.then55.i335.i ], [ %lhsv631703.i, %if.end52.i334.i ]
  %bcmp509.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.87, i64 3) #19, !dbg !1399
  %tobool59.not.i337.i = icmp eq i32 %bcmp509.i, 0, !dbg !1399
  br i1 %tobool59.not.i337.i, label %if.end62.i342.thread.i, label %if.end62.i342.i, !dbg !1401

if.end62.i342.thread.i:                           ; preds = %if.end57.i338.i
  store i32 4411936, ptr %rname.i, align 4, !dbg !1402
  br label %if.end63.i, !dbg !1403

if.end62.i342.i:                                  ; preds = %if.end57.i338.i
  switch i32 %lhsv631702.i, label %if.end63.i [
    i32 3360580, label %if.then65.i343.i
    i32 3359044, label %if.then70.i347.i
    i32 3363908, label %if.then75.i351.i
    i32 3359556, label %if.then80.i355.i
    i32 3360594, label %if.then85.i359.i
    i32 3359058, label %if.then90.i363.i
    i32 3364178, label %if.then95.i367.i
    i32 3359570, label %if.then100.i371.i
    i32 3491652, label %if.then105.i375.i
    i32 3490116, label %if.then110.i379.i
    i32 3494980, label %if.then115.i383.i
    i32 3490628, label %if.then120.i387.i
    i32 3491666, label %if.then125.i391.i
    i32 3490130, label %if.then130.i395.i
    i32 3495250, label %if.then135.i399.i
    i32 3490642, label %if.end142.i406.thread.i
    i32 4475208, label %if.then145.i407.i
    i32 5261640, label %if.then155.i415.i
    i32 5790019, label %if.then160.i419.i
    i32 4739905, label %if.then165.i423.i
    i32 4738119, label %if.then170.i427.i
  ], !dbg !1403

if.then65.i343.i:                                 ; preds = %if.end62.i342.i
  store i32 4670496, ptr %rname.i, align 4, !dbg !1404
  br label %if.end63.i, !dbg !1404

if.then70.i347.i:                                 ; preds = %if.end62.i342.i
  store i32 4277280, ptr %rname.i, align 4, !dbg !1406
  br label %if.end63.i, !dbg !1406

if.then75.i351.i:                                 ; preds = %if.end62.i342.i
  store i32 5522464, ptr %rname.i, align 4, !dbg !1408
  br label %if.end63.i, !dbg !1408

if.then80.i355.i:                                 ; preds = %if.end62.i342.i
  store i32 4408352, ptr %rname.i, align 4, !dbg !1410
  br label %if.end63.i, !dbg !1410

if.then85.i359.i:                                 ; preds = %if.end62.i342.i
  store i32 4674080, ptr %rname.i, align 4, !dbg !1412
  br label %if.end63.i, !dbg !1412

if.then90.i363.i:                                 ; preds = %if.end62.i342.i
  store i32 4280864, ptr %rname.i, align 4, !dbg !1414
  br label %if.end63.i, !dbg !1414

if.then95.i367.i:                                 ; preds = %if.end62.i342.i
  store i32 5591584, ptr %rname.i, align 4, !dbg !1416
  br label %if.end63.i, !dbg !1416

if.then100.i371.i:                                ; preds = %if.end62.i342.i
  store i32 4411936, ptr %rname.i, align 4, !dbg !1418
  br label %if.end63.i, !dbg !1418

if.then105.i375.i:                                ; preds = %if.end62.i342.i
  store i32 4670496, ptr %rname.i, align 4, !dbg !1420
  br label %if.end63.i, !dbg !1420

if.then110.i379.i:                                ; preds = %if.end62.i342.i
  store i32 4277280, ptr %rname.i, align 4, !dbg !1422
  br label %if.end63.i, !dbg !1422

if.then115.i383.i:                                ; preds = %if.end62.i342.i
  store i32 5522464, ptr %rname.i, align 4, !dbg !1424
  br label %if.end63.i, !dbg !1424

if.then120.i387.i:                                ; preds = %if.end62.i342.i
  store i32 4408352, ptr %rname.i, align 4, !dbg !1426
  br label %if.end63.i, !dbg !1426

if.then125.i391.i:                                ; preds = %if.end62.i342.i
  store i32 4674080, ptr %rname.i, align 4, !dbg !1428
  br label %if.end63.i, !dbg !1428

if.then130.i395.i:                                ; preds = %if.end62.i342.i
  store i32 4280864, ptr %rname.i, align 4, !dbg !1430
  br label %if.end63.i, !dbg !1430

if.then135.i399.i:                                ; preds = %if.end62.i342.i
  store i32 5591584, ptr %rname.i, align 4, !dbg !1432
  br label %if.end63.i, !dbg !1432

if.end142.i406.thread.i:                          ; preds = %if.end62.i342.i
  store i32 4411936, ptr %rname.i, align 4, !dbg !1434
  br label %if.end63.i, !dbg !1436

if.then145.i407.i:                                ; preds = %if.end62.i342.i
  store i32 5458248, ptr %rname.i, align 4, !dbg !1437
  br label %if.end63.i, !dbg !1437

if.then155.i415.i:                                ; preds = %if.end62.i342.i
  store i32 5458248, ptr %rname.i, align 4, !dbg !1439
  br label %if.end63.i, !dbg !1439

if.then160.i419.i:                                ; preds = %if.end62.i342.i
  store i32 5462339, ptr %rname.i, align 4, !dbg !1441
  br label %if.end63.i, !dbg !1441

if.then165.i423.i:                                ; preds = %if.end62.i342.i
  store i32 5264193, ptr %rname.i, align 4, !dbg !1443
  br label %if.end63.i, !dbg !1443

if.then170.i427.i:                                ; preds = %if.end62.i342.i
  store i32 5590087, ptr %rname.i, align 4, !dbg !1445
  br label %if.end63.i, !dbg !1445

if.else59.i:                                      ; preds = %if.else55.i
  %r_resname.i = getelementptr inbounds %struct.residue_t, ptr %32, i64 0, i32 4, !dbg !1447
  %36 = load ptr, ptr %r_resname.i, align 8, !dbg !1447, !tbaa !708
  %call61.i = call ptr @strcpy(ptr noundef nonnull %rname.i, ptr noundef nonnull dereferenceable(1) %36) #19, !dbg !1448
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else59.i, %if.then170.i427.i, %if.then165.i423.i, %if.then160.i419.i, %if.then155.i415.i, %if.then145.i407.i, %if.end142.i406.thread.i, %if.then135.i399.i, %if.then130.i395.i, %if.then125.i391.i, %if.then120.i387.i, %if.then115.i383.i, %if.then110.i379.i, %if.then105.i375.i, %if.then100.i371.i, %if.then95.i367.i, %if.then90.i363.i, %if.then85.i359.i, %if.then80.i355.i, %if.then75.i351.i, %if.then70.i347.i, %if.then65.i343.i, %if.end62.i342.i, %if.end62.i342.thread.i, %if.then170.i.i, %if.then165.i.i, %if.then160.i.i, %if.then155.i.i, %if.then145.i.i, %if.end142.i.thread.i, %if.then135.i.i, %if.then130.i.i, %if.then125.i.i, %if.then120.i.i, %if.then115.i.i, %if.then110.i.i, %if.then105.i.i, %if.then100.i.i, %if.then95.i.i, %if.then90.i.i, %if.then85.i.i, %if.then80.i.i, %if.then75.i.i, %if.then70.i.i, %if.then65.i.i, %if.end62.i.i, %if.end62.i.thread.i
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()) #19, !dbg !1035
  %r_natoms.i = getelementptr inbounds %struct.residue_t, ptr %32, i64 0, i32 15
  call void @llvm.dbg.value(metadata i32 %ta.1680.i, metadata !1014, metadata !DIExpression()) #19, !dbg !1035
  %37 = load i32, ptr %r_natoms.i, align 8, !dbg !1449, !tbaa !716
  %cmp65676.i = icmp sgt i32 %37, 0, !dbg !1452
  br i1 %cmp65676.i, label %for.body67.lr.ph.i, label %for.inc170.i, !dbg !1453

for.body67.lr.ph.i:                               ; preds = %if.end63.i
  %r_atoms.i = getelementptr inbounds %struct.residue_t, ptr %32, i64 0, i32 17
  %38 = trunc i64 %indvars.iv694.i to i32
  %tr.1.r.0.i = select i1 %cmp26.i, i32 %tr.1681.i, i32 %38
  %cond96.i = add nsw i32 %tr.1.r.0.i, 1
  br label %for.body67.i, !dbg !1453

for.body67.i:                                     ; preds = %if.end167.i, %for.body67.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body67.lr.ph.i ], [ %indvars.iv.next.i, %if.end167.i ]
  %ta.2677.i = phi i32 [ %ta.1680.i, %for.body67.lr.ph.i ], [ %inc.i, %if.end167.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1013, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %ta.2677.i, metadata !1014, metadata !DIExpression()) #19, !dbg !1035
  %inc.i = add nsw i32 %ta.2677.i, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1014, metadata !DIExpression()) #19, !dbg !1035
  %39 = load ptr, ptr %r_atoms.i, align 8, !dbg !1456, !tbaa !1457
  %arrayidx69.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, !dbg !1458
  call void @llvm.dbg.value(metadata ptr %arrayidx69.i, metadata !1018, metadata !DIExpression()) #19, !dbg !1035
  %40 = load ptr, ptr %arrayidx69.i, align 8, !dbg !1459, !tbaa !490
  br i1 %cmp18.i, label %if.then71.i, label %if.else74.i, !dbg !1461

if.then71.i:                                      ; preds = %for.body67.i
  call void @llvm.dbg.value(metadata ptr %aname.i, metadata !1462, metadata !DIExpression()) #19, !dbg !1469
  call void @llvm.dbg.value(metadata ptr %40, metadata !1467, metadata !DIExpression()) #19, !dbg !1469
  call void @llvm.dbg.value(metadata ptr %rname.i, metadata !1468, metadata !DIExpression()) #19, !dbg !1469
  store i8 32, ptr %aname.i, align 1, !dbg !1471, !tbaa !368
  %call.i428.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #18, !dbg !1472
  %cmp.i429.i = icmp ugt i64 %call.i428.i, 3, !dbg !1474
  br i1 %cmp.i429.i, label %land.lhs.true.i.i, label %if.end.i432.i, !dbg !1475

land.lhs.true.i.i:                                ; preds = %if.then71.i
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %40, i64 3, !dbg !1476
  %41 = load i8, ptr %arrayidx1.i.i, align 1, !dbg !1476, !tbaa !368
  %cmp2.not.i.i = icmp eq i8 %41, 32, !dbg !1477
  br i1 %cmp2.not.i.i, label %if.end.i432.i, label %if.then.i430.i, !dbg !1478

if.then.i430.i:                                   ; preds = %land.lhs.true.i.i
  store i8 %41, ptr %aname.i, align 1, !dbg !1479, !tbaa !368
  br label %if.end.i432.i, !dbg !1480

if.end.i432.i:                                    ; preds = %if.then.i430.i, %land.lhs.true.i.i, %if.then71.i
  %42 = load i8, ptr %40, align 1, !dbg !1481, !tbaa !368
  store i8 %42, ptr %add.ptr.i.i, align 1, !dbg !1482, !tbaa !368
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %40, i64 1, !dbg !1483
  %43 = load i8, ptr %arrayidx8.i.i, align 1, !dbg !1483, !tbaa !368
  store i8 %43, ptr %arrayidx14.i.i, align 1, !dbg !1484, !tbaa !368
  %arrayidx10.i.i = getelementptr inbounds i8, ptr %40, i64 2, !dbg !1485
  %44 = load i8, ptr %arrayidx10.i.i, align 1, !dbg !1485, !tbaa !368
  %cmp14.i.i = icmp eq i8 %44, 39, !dbg !1486
  %spec.select.i.i = select i1 %cmp14.i.i, i8 42, i8 %44, !dbg !1488
  store i8 %spec.select.i.i, ptr %arrayidx21.i.i, align 1, !dbg !1469, !tbaa !368
  store i8 0, ptr %arrayidx6.i.i, align 1, !dbg !1489, !tbaa !368
  %bcmp491.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %aname.i, ptr noundef nonnull dereferenceable(2) @.str.121, i64 2) #19, !dbg !1490
  %tobool.not.i431.i = icmp eq i32 %bcmp491.i, 0, !dbg !1490
  %.off.i.i = add i8 %spec.select.i.i, -49
  %switch.i.i = icmp ult i8 %.off.i.i, 3
  %or.cond.i.i = select i1 %tobool.not.i431.i, i1 %switch.i.i, i1 false, !dbg !1492
  br i1 %or.cond.i.i, label %land.lhs.true35.i.i, label %if.end85.i, !dbg !1492

land.lhs.true35.i.i:                              ; preds = %if.end.i432.i
  %bcmp492.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %aname.i, ptr noundef nonnull dereferenceable(3) @.str.122, i64 3) #19, !dbg !1493
  %tobool37.not.i.i = icmp eq i32 %bcmp492.i, 0, !dbg !1493
  br i1 %tobool37.not.i.i, label %if.then50.i435.i, label %lor.lhs.false38.i.i, !dbg !1494

lor.lhs.false38.i.i:                              ; preds = %land.lhs.true35.i.i
  %bcmp493.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.123, i64 3) #19, !dbg !1495
  %tobool40.not.i.i = icmp eq i32 %bcmp493.i, 0, !dbg !1495
  br i1 %tobool40.not.i.i, label %if.end85.i, label %land.lhs.true41.i.i, !dbg !1496

land.lhs.true41.i.i:                              ; preds = %lor.lhs.false38.i.i
  %bcmp494.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.124, i64 3) #19, !dbg !1497
  %tobool43.not.i.i = icmp eq i32 %bcmp494.i, 0, !dbg !1497
  br i1 %tobool43.not.i.i, label %if.end85.i, label %land.lhs.true44.i.i, !dbg !1498

land.lhs.true44.i.i:                              ; preds = %land.lhs.true41.i.i
  %bcmp495.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rname.i, ptr noundef nonnull dereferenceable(3) @.str.125, i64 3) #19, !dbg !1499
  %tobool46.not.i.i = icmp eq i32 %bcmp495.i, 0, !dbg !1499
  %lhsv619.i = load i16, ptr %rname.i, align 4
  %.not620.i = icmp eq i16 %lhsv619.i, 18760
  %or.cond675.i = select i1 %tobool46.not.i.i, i1 true, i1 %.not620.i, !dbg !1500
  br i1 %or.cond675.i, label %if.end85.i, label %if.then50.i435.i, !dbg !1500

if.then50.i435.i:                                 ; preds = %land.lhs.true44.i.i, %land.lhs.true35.i.i
  store i8 %spec.select.i.i, ptr %aname.i, align 1, !dbg !1501, !tbaa !368
  store i8 32, ptr %arrayidx21.i.i, align 1, !dbg !1503, !tbaa !368
  br label %if.end85.i, !dbg !1504

if.else74.i:                                      ; preds = %for.body67.i
  br i1 %cmp22.i, label %if.then76.i, label %if.else80.i, !dbg !1505

if.then76.i:                                      ; preds = %if.else74.i
  call void @llvm.dbg.value(metadata ptr %aname.i, metadata !1506, metadata !DIExpression()) #19, !dbg !1511
  call void @llvm.dbg.value(metadata ptr %40, metadata !1509, metadata !DIExpression()) #19, !dbg !1511
  call void @llvm.dbg.value(metadata ptr undef, metadata !1510, metadata !DIExpression()) #19, !dbg !1511
  %call.i436.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #18, !dbg !1514
  %cmp.i437.i = icmp ugt i64 %call.i436.i, 3, !dbg !1516
  br i1 %cmp.i437.i, label %land.lhs.true.i439.i, label %if.else.i442.i, !dbg !1517

land.lhs.true.i439.i:                             ; preds = %if.then76.i
  %arrayidx.i438.i = getelementptr inbounds i8, ptr %40, i64 3, !dbg !1518
  %45 = load i8, ptr %arrayidx.i438.i, align 1, !dbg !1518, !tbaa !368
  %cmp1.not.i.i = icmp eq i8 %45, 32, !dbg !1519
  br i1 %cmp1.not.i.i, label %if.else.i442.i, label %if.then.i441.i, !dbg !1520

if.then.i441.i:                                   ; preds = %land.lhs.true.i439.i
  %call3.i440.i = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %aname.i, ptr noundef nonnull dereferenceable(1) %40, i64 noundef 5) #19, !dbg !1521
  br label %if.end.i444.i, !dbg !1523

if.else.i442.i:                                   ; preds = %land.lhs.true.i439.i, %if.then76.i
  store i8 32, ptr %aname.i, align 1, !dbg !1524, !tbaa !368
  %call5.i.i = call ptr @strncpy(ptr noundef nonnull %add.ptr.i.i, ptr noundef nonnull dereferenceable(1) %40, i64 noundef 3) #19, !dbg !1526
  store i8 0, ptr %arrayidx6.i.i, align 1, !dbg !1527, !tbaa !368
  br label %if.end.i444.i

if.end.i444.i:                                    ; preds = %if.else.i442.i, %if.then.i441.i
  %46 = load i8, ptr %add.ptr.i.i, align 1, !dbg !1528, !tbaa !368
  %cmp9.i.i = icmp eq i8 %46, 0, !dbg !1530
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end13.i.i, !dbg !1531

if.then11.i.i:                                    ; preds = %if.end.i444.i
  store i8 32, ptr %add.ptr.i.i, align 1, !dbg !1532, !tbaa !368
  br label %if.end13.i.i, !dbg !1533

if.end13.i.i:                                     ; preds = %if.then11.i.i, %if.end.i444.i
  %47 = phi i8 [ 32, %if.then11.i.i ], [ %46, %if.end.i444.i ]
  %48 = load i8, ptr %arrayidx14.i.i, align 1, !dbg !1534, !tbaa !368
  %cmp16.i445.i = icmp eq i8 %48, 0, !dbg !1536
  br i1 %cmp16.i445.i, label %if.then18.i.i, label %if.end20.i.i, !dbg !1537

if.then18.i.i:                                    ; preds = %if.end13.i.i
  store i8 32, ptr %arrayidx14.i.i, align 1, !dbg !1538, !tbaa !368
  br label %if.end20.i.i, !dbg !1539

if.end20.i.i:                                     ; preds = %if.then18.i.i, %if.end13.i.i
  %49 = phi i8 [ 32, %if.then18.i.i ], [ %48, %if.end13.i.i ]
  %50 = load i8, ptr %arrayidx21.i.i, align 1, !dbg !1540, !tbaa !368
  %cmp23.i.i = icmp eq i8 %50, 0, !dbg !1542
  br i1 %cmp23.i.i, label %if.then25.i446.i, label %if.end27.i449.i, !dbg !1543

if.then25.i446.i:                                 ; preds = %if.end20.i.i
  store i8 32, ptr %arrayidx21.i.i, align 1, !dbg !1544, !tbaa !368
  br label %if.end27.i449.i, !dbg !1545

if.end27.i449.i:                                  ; preds = %if.then25.i446.i, %if.end20.i.i
  %51 = phi i8 [ 32, %if.then25.i446.i ], [ %50, %if.end20.i.i ]
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.127, i64 4) #19, !dbg !1546
  %tobool.not.i448.i = icmp eq i32 %bcmp.i, 0, !dbg !1546
  br i1 %tobool.not.i448.i, label %if.then29.i.i, label %if.end31.i.i, !dbg !1548

if.then29.i.i:                                    ; preds = %if.end27.i449.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %aname.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.128, i64 noundef 5, i1 false) #19, !dbg !1549
  br label %if.end31.i.i, !dbg !1549

if.end31.i.i:                                     ; preds = %if.then29.i.i, %if.end27.i449.i
  %52 = phi i8 [ 39, %if.then29.i.i ], [ %51, %if.end27.i449.i ]
  %53 = phi i8 [ 53, %if.then29.i.i ], [ %49, %if.end27.i449.i ]
  %54 = phi i8 [ 72, %if.then29.i.i ], [ %47, %if.end27.i449.i ]
  %bcmp468.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.129, i64 4) #19, !dbg !1550
  %tobool33.not.i.i = icmp eq i32 %bcmp468.i, 0, !dbg !1550
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %if.end36.i.i, !dbg !1552

if.then34.i.i:                                    ; preds = %if.end31.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %aname.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.130, i64 noundef 5, i1 false) #19, !dbg !1553
  br label %if.end36.i.i, !dbg !1553

if.end36.i.i:                                     ; preds = %if.then34.i.i, %if.end31.i.i
  %55 = phi i8 [ 39, %if.then34.i.i ], [ %52, %if.end31.i.i ]
  %56 = phi i8 [ 39, %if.then34.i.i ], [ %53, %if.end31.i.i ]
  %57 = phi i8 [ 53, %if.then34.i.i ], [ %54, %if.end31.i.i ]
  %bcmp469.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.29, i64 4) #19, !dbg !1554
  %tobool38.not.i.i = icmp eq i32 %bcmp469.i, 0, !dbg !1554
  br i1 %tobool38.not.i.i, label %if.then39.i.i, label %if.end41.i.i, !dbg !1556

if.then39.i.i:                                    ; preds = %if.end36.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %aname.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.131, i64 noundef 5, i1 false) #19, !dbg !1557
  br label %if.end41.i.i, !dbg !1557

if.end41.i.i:                                     ; preds = %if.then39.i.i, %if.end36.i.i
  %58 = phi i8 [ 39, %if.then39.i.i ], [ %55, %if.end36.i.i ]
  %59 = phi i8 [ 50, %if.then39.i.i ], [ %56, %if.end36.i.i ]
  %60 = phi i8 [ 72, %if.then39.i.i ], [ %57, %if.end36.i.i ]
  %bcmp470.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.132, i64 4) #19, !dbg !1558
  %tobool43.not.i451.i = icmp eq i32 %bcmp470.i, 0, !dbg !1558
  br i1 %tobool43.not.i451.i, label %if.then44.i.i, label %if.end46.i.i, !dbg !1560

if.then44.i.i:                                    ; preds = %if.end41.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %aname.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.133, i64 noundef 5, i1 false) #19, !dbg !1561
  br label %if.end46.i.i, !dbg !1561

if.end46.i.i:                                     ; preds = %if.then44.i.i, %if.end41.i.i
  %61 = phi i8 [ 39, %if.then44.i.i ], [ %58, %if.end41.i.i ]
  %62 = phi i8 [ 39, %if.then44.i.i ], [ %59, %if.end41.i.i ]
  %63 = phi i8 [ 50, %if.then44.i.i ], [ %60, %if.end41.i.i ]
  %bcmp471.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.134, i64 4) #19, !dbg !1562
  %tobool48.not.i.i = icmp eq i32 %bcmp471.i, 0, !dbg !1562
  br i1 %tobool48.not.i.i, label %if.then49.i.i, label %if.end51.i.i, !dbg !1564

if.then49.i.i:                                    ; preds = %if.end46.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %aname.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.135, i64 noundef 5, i1 false) #19, !dbg !1565
  br label %if.end51.i.i, !dbg !1565

if.end51.i.i:                                     ; preds = %if.then49.i.i, %if.end46.i.i
  %64 = phi i8 [ 49, %if.then49.i.i ], [ %61, %if.end46.i.i ]
  %65 = phi i8 [ 80, %if.then49.i.i ], [ %62, %if.end46.i.i ]
  %66 = phi i8 [ 79, %if.then49.i.i ], [ %63, %if.end46.i.i ]
  %bcmp472.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.136, i64 4) #19, !dbg !1566
  %tobool53.not.i.i = icmp eq i32 %bcmp472.i, 0, !dbg !1566
  br i1 %tobool53.not.i.i, label %if.then54.i.i, label %if.end56.i.i, !dbg !1568

if.then54.i.i:                                    ; preds = %if.end51.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %aname.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.137, i64 noundef 5, i1 false) #19, !dbg !1569
  br label %if.end56.i.i, !dbg !1569

if.end56.i.i:                                     ; preds = %if.then54.i.i, %if.end51.i.i
  %67 = phi i8 [ 50, %if.then54.i.i ], [ %64, %if.end51.i.i ]
  %68 = phi i8 [ 80, %if.then54.i.i ], [ %65, %if.end51.i.i ]
  %69 = phi i8 [ 79, %if.then54.i.i ], [ %66, %if.end51.i.i ]
  %bcmp473.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.138, i64 4) #19, !dbg !1570
  %tobool58.not.i.i = icmp eq i32 %bcmp473.i, 0, !dbg !1570
  br i1 %tobool58.not.i.i, label %if.then59.i.i, label %if.end61.i.i, !dbg !1572

if.then59.i.i:                                    ; preds = %if.end56.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %aname.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.139, i64 noundef 5, i1 false) #19, !dbg !1573
  br label %if.end61.i.i, !dbg !1573

if.end61.i.i:                                     ; preds = %if.then59.i.i, %if.end56.i.i
  %70 = phi i8 [ 39, %if.then59.i.i ], [ %67, %if.end56.i.i ]
  %71 = phi i8 [ 53, %if.then59.i.i ], [ %68, %if.end56.i.i ]
  %72 = phi i8 [ 79, %if.then59.i.i ], [ %69, %if.end56.i.i ]
  %bcmp474.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.140, i64 4) #19, !dbg !1574
  %tobool63.not.i.i = icmp eq i32 %bcmp474.i, 0, !dbg !1574
  br i1 %tobool63.not.i.i, label %if.then64.i.i, label %if.end66.i.i, !dbg !1576

if.then64.i.i:                                    ; preds = %if.end61.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %aname.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.141, i64 noundef 5, i1 false) #19, !dbg !1577
  br label %if.end66.i.i, !dbg !1577

if.end66.i.i:                                     ; preds = %if.then64.i.i, %if.end61.i.i
  %73 = phi i8 [ 39, %if.then64.i.i ], [ %70, %if.end61.i.i ]
  %74 = phi i8 [ 51, %if.then64.i.i ], [ %71, %if.end61.i.i ]
  %75 = phi i8 [ 79, %if.then64.i.i ], [ %72, %if.end61.i.i ]
  %bcmp475.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.142, i64 4) #19, !dbg !1578
  %tobool68.not.i.i = icmp eq i32 %bcmp475.i, 0, !dbg !1578
  br i1 %tobool68.not.i.i, label %if.then113.i.i, label %lor.lhs.false.i.i, !dbg !1580

lor.lhs.false.i.i:                                ; preds = %if.end66.i.i
  %bcmp476.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.143, i64 4) #19, !dbg !1581
  %tobool70.not.i.i = icmp eq i32 %bcmp476.i, 0, !dbg !1581
  br i1 %tobool70.not.i.i, label %if.then113.i.i, label %lor.lhs.false71.i.i, !dbg !1582

lor.lhs.false71.i.i:                              ; preds = %lor.lhs.false.i.i
  %bcmp477.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.144, i64 4) #19, !dbg !1583
  %tobool73.not.i.i = icmp eq i32 %bcmp477.i, 0, !dbg !1583
  br i1 %tobool73.not.i.i, label %if.then113.i.i, label %lor.lhs.false74.i.i, !dbg !1584

lor.lhs.false74.i.i:                              ; preds = %lor.lhs.false71.i.i
  %bcmp478.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.145, i64 4) #19, !dbg !1585
  %tobool76.not.i.i = icmp eq i32 %bcmp478.i, 0, !dbg !1585
  br i1 %tobool76.not.i.i, label %if.then113.i.i, label %lor.lhs.false77.i.i, !dbg !1586

lor.lhs.false77.i.i:                              ; preds = %lor.lhs.false74.i.i
  %bcmp479.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.146, i64 4) #19, !dbg !1587
  %tobool79.not.i453.i = icmp eq i32 %bcmp479.i, 0, !dbg !1587
  br i1 %tobool79.not.i453.i, label %if.then113.i.i, label %lor.lhs.false80.i.i, !dbg !1588

lor.lhs.false80.i.i:                              ; preds = %lor.lhs.false77.i.i
  %bcmp480.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.147, i64 4) #19, !dbg !1589
  %tobool82.not.i.i = icmp eq i32 %bcmp480.i, 0, !dbg !1589
  br i1 %tobool82.not.i.i, label %if.then113.i.i, label %lor.lhs.false83.i.i, !dbg !1590

lor.lhs.false83.i.i:                              ; preds = %lor.lhs.false80.i.i
  %bcmp481.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.148, i64 4) #19, !dbg !1591
  %tobool85.not.i.i = icmp eq i32 %bcmp481.i, 0, !dbg !1591
  br i1 %tobool85.not.i.i, label %if.then113.i.i, label %lor.lhs.false86.i.i, !dbg !1592

lor.lhs.false86.i.i:                              ; preds = %lor.lhs.false83.i.i
  %bcmp482.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.149, i64 4) #19, !dbg !1593
  %tobool88.not.i.i = icmp eq i32 %bcmp482.i, 0, !dbg !1593
  br i1 %tobool88.not.i.i, label %if.then113.i.i, label %lor.lhs.false89.i.i, !dbg !1594

lor.lhs.false89.i.i:                              ; preds = %lor.lhs.false86.i.i
  %bcmp483.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.150, i64 4) #19, !dbg !1595
  %tobool91.not.i.i = icmp eq i32 %bcmp483.i, 0, !dbg !1595
  br i1 %tobool91.not.i.i, label %if.then113.i.i, label %lor.lhs.false92.i.i, !dbg !1596

lor.lhs.false92.i.i:                              ; preds = %lor.lhs.false89.i.i
  %bcmp484.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.151, i64 4) #19, !dbg !1597
  %tobool94.not.i455.i = icmp eq i32 %bcmp484.i, 0, !dbg !1597
  br i1 %tobool94.not.i455.i, label %if.then113.i.i, label %lor.lhs.false95.i.i, !dbg !1598

lor.lhs.false95.i.i:                              ; preds = %lor.lhs.false92.i.i
  %bcmp485.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.152, i64 4) #19, !dbg !1599
  %tobool97.not.i.i = icmp eq i32 %bcmp485.i, 0, !dbg !1599
  br i1 %tobool97.not.i.i, label %if.then113.i.i, label %lor.lhs.false98.i.i, !dbg !1600

lor.lhs.false98.i.i:                              ; preds = %lor.lhs.false95.i.i
  %bcmp486.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.153, i64 4) #19, !dbg !1601
  %tobool100.not.i.i = icmp eq i32 %bcmp486.i, 0, !dbg !1601
  br i1 %tobool100.not.i.i, label %if.then113.i.i, label %lor.lhs.false101.i.i, !dbg !1602

lor.lhs.false101.i.i:                             ; preds = %lor.lhs.false98.i.i
  %bcmp487.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.154, i64 4) #19, !dbg !1603
  %tobool103.not.i.i = icmp eq i32 %bcmp487.i, 0, !dbg !1603
  br i1 %tobool103.not.i.i, label %if.then113.i.i, label %lor.lhs.false104.i.i, !dbg !1604

lor.lhs.false104.i.i:                             ; preds = %lor.lhs.false101.i.i
  %bcmp488.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.155, i64 4) #19, !dbg !1605
  %tobool106.not.i.i = icmp eq i32 %bcmp488.i, 0, !dbg !1605
  br i1 %tobool106.not.i.i, label %if.then113.i.i, label %lor.lhs.false107.i.i, !dbg !1606

lor.lhs.false107.i.i:                             ; preds = %lor.lhs.false104.i.i
  %bcmp489.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.156, i64 4) #19, !dbg !1607
  %tobool109.not.i457.i = icmp eq i32 %bcmp489.i, 0, !dbg !1607
  br i1 %tobool109.not.i457.i, label %if.then113.i.i, label %lor.lhs.false110.i.i, !dbg !1608

lor.lhs.false110.i.i:                             ; preds = %lor.lhs.false107.i.i
  %bcmp490.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %aname.i, ptr noundef nonnull dereferenceable(4) @.str.157, i64 4) #19, !dbg !1609
  %tobool112.not.i.i = icmp eq i32 %bcmp490.i, 0, !dbg !1609
  br i1 %tobool112.not.i.i, label %if.then113.i.i, label %if.end85.i, !dbg !1610

if.then113.i.i:                                   ; preds = %lor.lhs.false110.i.i, %lor.lhs.false107.i.i, %lor.lhs.false104.i.i, %lor.lhs.false101.i.i, %lor.lhs.false98.i.i, %lor.lhs.false95.i.i, %lor.lhs.false92.i.i, %lor.lhs.false89.i.i, %lor.lhs.false86.i.i, %lor.lhs.false83.i.i, %lor.lhs.false80.i.i, %lor.lhs.false77.i.i, %lor.lhs.false74.i.i, %lor.lhs.false71.i.i, %lor.lhs.false.i.i, %if.end66.i.i
  store i8 %75, ptr %aname.i, align 1, !dbg !1611, !tbaa !368
  store i8 %74, ptr %add.ptr.i.i, align 1, !dbg !1613, !tbaa !368
  store i8 %73, ptr %arrayidx14.i.i, align 1, !dbg !1614, !tbaa !368
  store i8 32, ptr %arrayidx21.i.i, align 1, !dbg !1615, !tbaa !368
  br label %if.end85.i, !dbg !1616

if.else80.i:                                      ; preds = %if.else74.i
  %call83.i = call ptr @strcpy(ptr noundef nonnull %aname.i, ptr noundef nonnull dereferenceable(1) %40) #19, !dbg !1617
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.else80.i, %if.then113.i.i, %lor.lhs.false110.i.i, %if.then50.i435.i, %land.lhs.true44.i.i, %land.lhs.true41.i.i, %lor.lhs.false38.i.i, %if.end.i432.i
  %strcmpload.i = load i8, ptr %rid.i, align 1, !dbg !1618
  %tobool88.i = icmp eq i8 %strcmpload.i, 0, !dbg !1618
  %or.cond.i = select i1 %tobool88.i, i1 true, i1 %cmp26.i, !dbg !1620
  %cmp97.i = icmp slt i32 %ta.2677.i, 99999, !dbg !1621
  br i1 %or.cond.i, label %if.then90.i, label %if.else121.i, !dbg !1620

if.then90.i:                                      ; preds = %if.end85.i
  call void @llvm.dbg.value(metadata i32 %cond96.i, metadata !1012, metadata !DIExpression()) #19, !dbg !1035
  br i1 %cmp97.i, label %if.then99.i, label %if.else109.i, !dbg !1622

if.then99.i:                                      ; preds = %if.then90.i
  %a_pos.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, !dbg !1624
  %76 = load double, ptr %a_pos.i, align 8, !dbg !1627, !tbaa !670
  %arrayidx105.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1628
  %77 = load double, ptr %arrayidx105.i, align 8, !dbg !1628, !tbaa !670
  %arrayidx107.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1629
  %78 = load double, ptr %arrayidx107.i, align 8, !dbg !1629, !tbaa !670
  %call108.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %fp.0.ph36, ptr noundef nonnull @.str.63, i32 noundef %inc.i, ptr noundef nonnull %aname.i, ptr noundef nonnull %rname.i, i32 noundef %conv112.i, i32 noundef %cond96.i, double noundef %76, double noundef %77, double noundef %78) #19, !dbg !1630
  br label %if.end148.i, !dbg !1631

if.else109.i:                                     ; preds = %if.then90.i
  %rem466.i = urem i32 %inc.i, 100000, !dbg !1632
  %a_pos113.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, !dbg !1634
  %79 = load double, ptr %a_pos113.i, align 8, !dbg !1635, !tbaa !670
  %arrayidx116.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1636
  %80 = load double, ptr %arrayidx116.i, align 8, !dbg !1636, !tbaa !670
  %arrayidx118.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1637
  %81 = load double, ptr %arrayidx118.i, align 8, !dbg !1637, !tbaa !670
  %call119.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %fp.0.ph36, ptr noundef nonnull @.str.64, i32 noundef %rem466.i, ptr noundef nonnull %aname.i, ptr noundef nonnull %rname.i, i32 noundef %conv112.i, i32 noundef %cond96.i, double noundef %79, double noundef %80, double noundef %81) #19, !dbg !1638
  br label %if.end148.i

if.else121.i:                                     ; preds = %if.end85.i
  br i1 %cmp97.i, label %if.then124.i, label %if.else135.i, !dbg !1639

if.then124.i:                                     ; preds = %if.else121.i
  %a_pos128.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, !dbg !1641
  %82 = load double, ptr %a_pos128.i, align 8, !dbg !1644, !tbaa !670
  %arrayidx131.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1645
  %83 = load double, ptr %arrayidx131.i, align 8, !dbg !1645, !tbaa !670
  %arrayidx133.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1646
  %84 = load double, ptr %arrayidx133.i, align 8, !dbg !1646, !tbaa !670
  %call134.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %fp.0.ph36, ptr noundef nonnull @.str.65, i32 noundef %inc.i, ptr noundef nonnull %aname.i, ptr noundef nonnull %rname.i, ptr noundef nonnull %rid.i, double noundef %82, double noundef %83, double noundef %84) #19, !dbg !1647
  br label %if.end148.i, !dbg !1648

if.else135.i:                                     ; preds = %if.else121.i
  %rem136467.i = urem i32 %inc.i, 100000, !dbg !1649
  %a_pos140.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, !dbg !1651
  %85 = load double, ptr %a_pos140.i, align 8, !dbg !1652, !tbaa !670
  %arrayidx143.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1653
  %86 = load double, ptr %arrayidx143.i, align 8, !dbg !1653, !tbaa !670
  %arrayidx145.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1654
  %87 = load double, ptr %arrayidx145.i, align 8, !dbg !1654, !tbaa !670
  %call146.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %fp.0.ph36, ptr noundef nonnull @.str.66, i32 noundef %rem136467.i, ptr noundef nonnull %aname.i, ptr noundef nonnull %rname.i, ptr noundef nonnull %rid.i, double noundef %85, double noundef %86, double noundef %87) #19, !dbg !1655
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.else135.i, %if.then124.i, %if.else109.i, %if.then99.i
  br i1 %cmp11.i, label %if.then150.i, label %if.else152.i, !dbg !1656

if.then150.i:                                     ; preds = %if.end148.i
  %a_charge.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 6, !dbg !1657
  %88 = load double, ptr %a_charge.i, align 8, !dbg !1657, !tbaa !809
  %a_radius.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 7, !dbg !1660
  %89 = load double, ptr %a_radius.i, align 8, !dbg !1660, !tbaa !813
  %call151.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %fp.0.ph36, ptr noundef nonnull @.str.67, double noundef %88, double noundef %89) #19, !dbg !1661
  br label %if.end167.i, !dbg !1662

if.else152.i:                                     ; preds = %if.end148.i
  br i1 %cmp14.i, label %if.end167.i, label %if.end157.i, !dbg !1663

if.end157.i:                                      ; preds = %if.else152.i
  %a_occ.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 9, !dbg !1664
  %90 = load double, ptr %a_occ.i, align 8, !dbg !1664, !tbaa !816
  %a_bfact.i = getelementptr inbounds %struct.atom_t, ptr %39, i64 %indvars.iv.i, i32 8, !dbg !1667
  %91 = load double, ptr %a_bfact.i, align 8, !dbg !1667, !tbaa !819
  %call155.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %fp.0.ph36, ptr noundef nonnull @.str.68, double noundef %90, double noundef %91) #19, !dbg !1668
  br i1 %or.cond199.i, label %if.end167.i, label %if.then164.i, !dbg !1669

if.then164.i:                                     ; preds = %if.end157.i
  %92 = load ptr, ptr %arrayidx69.i, align 8, !dbg !1671, !tbaa !490
  %call166.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %fp.0.ph36, ptr noundef nonnull @.str.69, ptr noundef %92) #19, !dbg !1673
  br label %if.end167.i, !dbg !1674

if.end167.i:                                      ; preds = %if.then164.i, %if.end157.i, %if.else152.i, %if.then150.i
  %fputc.i = call i32 @fputc(i32 10, ptr nonnull %fp.0.ph36) #19, !dbg !1675
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1013, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1014, metadata !DIExpression()) #19, !dbg !1035
  %93 = load i32, ptr %r_natoms.i, align 8, !dbg !1449, !tbaa !716
  %94 = sext i32 %93 to i64, !dbg !1452
  %cmp65.i = icmp slt i64 %indvars.iv.next.i, %94, !dbg !1452
  br i1 %cmp65.i, label %for.body67.i, label %for.inc170.i, !dbg !1453, !llvm.loop !1677

for.inc170.i:                                     ; preds = %if.end167.i, %if.end63.i
  %ta.2.lcssa.i = phi i32 [ %ta.1680.i, %if.end63.i ], [ %inc.i, %if.end167.i ], !dbg !1176
  %indvars.iv.next695.i = add nuw nsw i64 %indvars.iv694.i, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next695.i, metadata !1010, metadata !DIExpression()) #19, !dbg !1035
  %inc172.i = add nsw i32 %tr.1681.i, 1, !dbg !1680
  call void @llvm.dbg.value(metadata i32 %inc172.i, metadata !1011, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %ta.2.lcssa.i, metadata !1014, metadata !DIExpression()) #19, !dbg !1035
  %95 = load i32, ptr %s_nresidues.i, align 8, !dbg !1235, !tbaa !1238
  %96 = sext i32 %95 to i64, !dbg !1239
  %cmp44.i = icmp slt i64 %indvars.iv.next695.i, %96, !dbg !1239
  br i1 %cmp44.i, label %for.body46.i, label %for.end173.i, !dbg !1240, !llvm.loop !1681

for.end173.i:                                     ; preds = %for.inc170.i, %nextcid.exit.i
  %ta.1.lcssa.i = phi i32 [ %ta.0689.i, %nextcid.exit.i ], [ %ta.2.lcssa.i, %for.inc170.i ], !dbg !1683
  %tr.1.lcssa.i = phi i32 [ %tr.0690.i, %nextcid.exit.i ], [ %inc172.i, %for.inc170.i ], !dbg !1176
  %97 = call i64 @fwrite(ptr nonnull @.str.70, i64 4, i64 1, ptr nonnull %fp.0.ph36) #19, !dbg !1684
  %s_next.i = getelementptr inbounds %struct.strand_t, ptr %sp.0691.i, i64 0, i32 4, !dbg !1685
  call void @llvm.dbg.value(metadata ptr undef, metadata !1016, metadata !DIExpression()) #19, !dbg !1035
  %sp.0.i = load ptr, ptr %s_next.i, align 8, !dbg !1176, !tbaa !374
  call void @llvm.dbg.value(metadata i32 %tr.1.lcssa.i, metadata !1011, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %sp.0.i, metadata !1016, metadata !DIExpression()) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %ta.1.lcssa.i, metadata !1014, metadata !DIExpression()) #19, !dbg !1035
  %tobool40.not.i = icmp eq ptr %sp.0.i, null, !dbg !1177
  br i1 %tobool40.not.i, label %for.end176.i, label %for.body.i, !dbg !1177, !llvm.loop !1686

for.end176.i:                                     ; preds = %for.end173.i, %initcid.exit.i
  call void @llvm.dbg.value(metadata ptr %retval.0.i.i, metadata !1106, metadata !DIExpression()) #19, !dbg !1688
  %cmp.not.i.i = icmp eq ptr %retval.0.i.i, null, !dbg !1690
  br i1 %cmp.not.i.i, label %fputpdb.exit, label %if.then.i460.i, !dbg !1691

if.then.i460.i:                                   ; preds = %for.end176.i
  %c_cids.i458.i = getelementptr inbounds %struct.cid_t, ptr %retval.0.i.i, i64 0, i32 2, !dbg !1692
  %98 = load ptr, ptr %c_cids.i458.i, align 8, !dbg !1692, !tbaa !1119
  %cmp1.not.i459.i = icmp eq ptr %98, null, !dbg !1694
  br i1 %cmp1.not.i459.i, label %if.end.i461.i, label %if.then2.i.i, !dbg !1695

if.then2.i.i:                                     ; preds = %if.then.i460.i
  call void @free(ptr noundef nonnull %98) #19, !dbg !1696
  br label %if.end.i461.i, !dbg !1696

if.end.i461.i:                                    ; preds = %if.then2.i.i, %if.then.i460.i
  call void @free(ptr noundef nonnull %retval.0.i.i) #19, !dbg !1697
  br label %fputpdb.exit, !dbg !1698

fputpdb.exit:                                     ; preds = %if.then2.i, %for.end176.i, %if.end.i461.i
  %fp.0.ph37 = phi ptr [ null, %if.then2.i ], [ %fp.0.ph36, %for.end176.i ], [ %fp.0.ph36, %if.end.i461.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %loptions.i) #19, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rid.i) #19, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aname.i) #19, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rname.i) #19, !dbg !1699
  %99 = load ptr, ptr @stdout, align 8, !dbg !1700, !tbaa !374
  %cmp18.not = icmp eq ptr %fp.0.ph37, %99, !dbg !1702
  br i1 %cmp18.not, label %if.end23, label %if.then19, !dbg !1703

if.then19:                                        ; preds = %fputpdb.exit
  %call20 = call i32 @fclose(ptr noundef %fp.0.ph37), !dbg !1704
  br label %if.end23, !dbg !1704

if.end23:                                         ; preds = %if.end15, %if.then19, %fputpdb.exit, %if.end3
  %ier.1 = phi i32 [ 0, %if.then19 ], [ 0, %fputpdb.exit ], [ -1, %if.end15 ], [ 0, %if.end3 ], !dbg !982
  call void @llvm.dbg.value(metadata i32 %ier.1, metadata !981, metadata !DIExpression()), !dbg !982
  call void @reducerror(i32 noundef %ier.1) #19, !dbg !1705
  br label %cleanup, !dbg !1706

cleanup:                                          ; preds = %if.then, %if.then1, %if.end23
  ret i32 0, !dbg !1707
}

declare !dbg !1708 i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @putcif(ptr noundef %fname, ptr noundef %blockId, ptr noundef readonly %mol) local_unnamed_addr #0 !dbg !1711 {
entry:
  call void @llvm.dbg.value(metadata ptr %fname, metadata !1715, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata ptr %blockId, metadata !1716, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1717, metadata !DIExpression()), !dbg !1719
  %tobool.not = icmp eq ptr %mol, null, !dbg !1720
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1722

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1723, !tbaa !374
  %1 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 22, i64 1, ptr %0) #20, !dbg !1725
  br label %cleanup, !dbg !1726

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %fname, ptr noundef nonnull dereferenceable(2) @.str) #18, !dbg !1727
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !1727
  br i1 %tobool2.not, label %if.then3, label %if.else, !dbg !1729

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @stdout, align 8, !dbg !1730, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %2, metadata !1718, metadata !DIExpression()), !dbg !1719
  br label %if.end8, !dbg !1731

if.else:                                          ; preds = %if.end
  %call4 = tail call ptr @fopen(ptr noundef %fname, ptr noundef nonnull @.str.9), !dbg !1732
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1718, metadata !DIExpression()), !dbg !1719
  %cmp = icmp eq ptr %call4, null, !dbg !1734
  br i1 %cmp, label %if.then5, label %if.end8, !dbg !1735

if.then5:                                         ; preds = %if.else
  %call6 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %fname) #19, !dbg !1736
  tail call void @exit(i32 noundef 1) #23, !dbg !1738
  unreachable, !dbg !1738

if.end8:                                          ; preds = %if.else, %if.then3
  %fp.0 = phi ptr [ %call4, %if.else ], [ %2, %if.then3 ], !dbg !1739
  call void @llvm.dbg.value(metadata ptr %fp.0, metadata !1718, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata ptr %fp.0, metadata !1740, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata ptr %blockId, metadata !1745, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1746, metadata !DIExpression()) #19, !dbg !1756
  %m_nstrands.i = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 1, !dbg !1758
  %3 = load i32, ptr %m_nstrands.i, align 8, !dbg !1758, !tbaa !1759
  call void @llvm.dbg.value(metadata i8 undef, metadata !1752, metadata !DIExpression()) #19, !dbg !1756
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fp.0, ptr noundef nonnull @.str.158, ptr noundef %blockId) #19, !dbg !1760
  %4 = tail call i64 @fwrite(ptr nonnull @.str.159, i64 37, i64 1, ptr %fp.0) #19, !dbg !1761
  %call2.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fp.0, ptr noundef nonnull @.str.160, ptr noundef %blockId) #19, !dbg !1762
  %5 = tail call i64 @fwrite(ptr nonnull @.str.161, i64 49, i64 1, ptr %fp.0) #19, !dbg !1763
  %6 = tail call i64 @fwrite(ptr nonnull @.str.162, i64 45, i64 1, ptr %fp.0) #19, !dbg !1764
  %7 = tail call i64 @fwrite(ptr nonnull @.str.163, i64 50, i64 1, ptr %fp.0) #19, !dbg !1765
  %8 = tail call i64 @fwrite(ptr nonnull @.str.164, i64 42, i64 1, ptr %fp.0) #19, !dbg !1766
  %9 = tail call i64 @fwrite(ptr nonnull @.str.165, i64 38, i64 1, ptr %fp.0) #19, !dbg !1767
  %10 = tail call i64 @fwrite(ptr nonnull @.str.166, i64 51, i64 1, ptr %fp.0) #19, !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1751, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 0, metadata !1750, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 0, metadata !1748, metadata !DIExpression()) #19, !dbg !1756
  %m_strands.i = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !1769
  call void @llvm.dbg.value(metadata ptr undef, metadata !1753, metadata !DIExpression()) #19, !dbg !1756
  %sp.078.i = load ptr, ptr %m_strands.i, align 8, !dbg !1771, !tbaa !374
  call void @llvm.dbg.value(metadata i32 0, metadata !1748, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata ptr %sp.078.i, metadata !1753, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i8 undef, metadata !1752, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 0, metadata !1751, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 0, metadata !1750, metadata !DIExpression()) #19, !dbg !1756
  %tobool.not79.i = icmp eq ptr %sp.078.i, null, !dbg !1772
  br i1 %tobool.not79.i, label %fputcif.exit, label %for.body.preheader.i, !dbg !1772

for.body.preheader.i:                             ; preds = %if.end8
  %cmp.i = icmp sgt i32 %3, 1, !dbg !1773
  %conv.i = select i1 %cmp.i, i8 65, i8 46, !dbg !1774
  call void @llvm.dbg.value(metadata i8 %conv.i, metadata !1752, metadata !DIExpression()) #19, !dbg !1756
  br label %for.body.i, !dbg !1772

for.body.i:                                       ; preds = %for.end32.i, %for.body.preheader.i
  %sp.084.i = phi ptr [ %sp.0.i, %for.end32.i ], [ %sp.078.i, %for.body.preheader.i ]
  %tr.083.i = phi i32 [ %tr.1.lcssa.i, %for.end32.i ], [ 0, %for.body.preheader.i ]
  %cid.082.i = phi i8 [ %spec.select.i, %for.end32.i ], [ %conv.i, %for.body.preheader.i ]
  %strandnum.081.i = phi i32 [ %inc.i, %for.end32.i ], [ 0, %for.body.preheader.i ]
  %ta.080.i = phi i32 [ %ta.1.lcssa.i, %for.end32.i ], [ 0, %for.body.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %tr.083.i, metadata !1748, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i8 %cid.082.i, metadata !1752, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %strandnum.081.i, metadata !1751, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %ta.080.i, metadata !1750, metadata !DIExpression()) #19, !dbg !1756
  %inc.i = add nuw nsw i32 %strandnum.081.i, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1751, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 0, metadata !1747, metadata !DIExpression()) #19, !dbg !1756
  %s_nresidues.i = getelementptr inbounds %struct.strand_t, ptr %sp.084.i, i64 0, i32 5
  call void @llvm.dbg.value(metadata i32 0, metadata !1747, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %tr.083.i, metadata !1748, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %ta.080.i, metadata !1750, metadata !DIExpression()) #19, !dbg !1756
  %11 = load i32, ptr %s_nresidues.i, align 8, !dbg !1778, !tbaa !1238
  %cmp1071.i = icmp sgt i32 %11, 0, !dbg !1781
  br i1 %cmp1071.i, label %for.body12.lr.ph.i, label %for.end32.i, !dbg !1782

for.body12.lr.ph.i:                               ; preds = %for.body.i
  %s_residues.i = getelementptr inbounds %struct.strand_t, ptr %sp.084.i, i64 0, i32 7
  %conv20.i = sext i8 %cid.082.i to i32
  br label %for.body12.i, !dbg !1782

for.body12.i:                                     ; preds = %for.inc29.i, %for.body12.lr.ph.i
  %12 = phi i32 [ %11, %for.body12.lr.ph.i ], [ %26, %for.inc29.i ]
  %indvars.iv86.i = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next87.pre-phi.i, %for.inc29.i ]
  %tr.173.i = phi i32 [ %tr.083.i, %for.body12.lr.ph.i ], [ %inc31.pre-phi.i, %for.inc29.i ]
  %ta.172.i = phi i32 [ %ta.080.i, %for.body12.lr.ph.i ], [ %ta.2.lcssa.i, %for.inc29.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv86.i, metadata !1747, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %tr.173.i, metadata !1748, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %ta.172.i, metadata !1750, metadata !DIExpression()) #19, !dbg !1756
  %13 = load ptr, ptr %s_residues.i, align 8, !dbg !1783, !tbaa !754
  %arrayidx.i = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv86.i, !dbg !1785
  %14 = load ptr, ptr %arrayidx.i, align 8, !dbg !1785, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %14, metadata !1754, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 0, metadata !1749, metadata !DIExpression()) #19, !dbg !1756
  %r_natoms.i = getelementptr inbounds %struct.residue_t, ptr %14, i64 0, i32 15
  call void @llvm.dbg.value(metadata i32 %ta.172.i, metadata !1750, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 0, metadata !1749, metadata !DIExpression()) #19, !dbg !1756
  %15 = load i32, ptr %r_natoms.i, align 8, !dbg !1786, !tbaa !716
  %cmp1468.i = icmp sgt i32 %15, 0, !dbg !1789
  br i1 %cmp1468.i, label %for.body16.lr.ph.i, label %for.body12.for.inc29_crit_edge.i, !dbg !1790

for.body12.for.inc29_crit_edge.i:                 ; preds = %for.body12.i
  %.pre90.i = add nuw nsw i64 %indvars.iv86.i, 1, !dbg !1791
  %.pre91.i = add nsw i32 %tr.173.i, 1, !dbg !1792
  br label %for.inc29.i, !dbg !1790

for.body16.lr.ph.i:                               ; preds = %for.body12.i
  %r_atoms.i = getelementptr inbounds %struct.residue_t, ptr %14, i64 0, i32 17
  %r_resname.i = getelementptr inbounds %struct.residue_t, ptr %14, i64 0, i32 4
  %add.i = add nsw i32 %tr.173.i, 1
  %16 = add nuw nsw i64 %indvars.iv86.i, 1
  %17 = trunc i64 %16 to i32
  br label %for.body16.i, !dbg !1790

for.body16.i:                                     ; preds = %for.body16.i, %for.body16.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body16.lr.ph.i ], [ %indvars.iv.next.i, %for.body16.i ]
  %ta.270.i = phi i32 [ %ta.172.i, %for.body16.lr.ph.i ], [ %inc17.i, %for.body16.i ]
  call void @llvm.dbg.value(metadata i32 %ta.270.i, metadata !1750, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1749, metadata !DIExpression()) #19, !dbg !1756
  %inc17.i = add nsw i32 %ta.270.i, 1, !dbg !1793
  call void @llvm.dbg.value(metadata i32 %inc17.i, metadata !1750, metadata !DIExpression()) #19, !dbg !1756
  %18 = load ptr, ptr %r_atoms.i, align 8, !dbg !1795, !tbaa !1457
  %arrayidx19.i = getelementptr inbounds %struct.atom_t, ptr %18, i64 %indvars.iv.i, !dbg !1796
  call void @llvm.dbg.value(metadata ptr %arrayidx19.i, metadata !1755, metadata !DIExpression()) #19, !dbg !1756
  %19 = load ptr, ptr %arrayidx19.i, align 8, !dbg !1797, !tbaa !490
  %20 = load ptr, ptr %r_resname.i, align 8, !dbg !1798, !tbaa !708
  %a_pos.i = getelementptr inbounds %struct.atom_t, ptr %18, i64 %indvars.iv.i, i32 17, !dbg !1799
  %21 = load double, ptr %a_pos.i, align 8, !dbg !1800, !tbaa !670
  %arrayidx23.i = getelementptr inbounds %struct.atom_t, ptr %18, i64 %indvars.iv.i, i32 17, i64 1, !dbg !1801
  %22 = load double, ptr %arrayidx23.i, align 8, !dbg !1801, !tbaa !670
  %arrayidx25.i = getelementptr inbounds %struct.atom_t, ptr %18, i64 %indvars.iv.i, i32 17, i64 2, !dbg !1802
  %23 = load double, ptr %arrayidx25.i, align 8, !dbg !1802, !tbaa !670
  %call27.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fp.0, ptr noundef nonnull @.str.167, i32 noundef %inc17.i, ptr noundef %19, ptr noundef %20, i32 noundef %conv20.i, i32 noundef %add.i, double noundef %21, double noundef %22, double noundef %23, i32 noundef %inc.i, i32 noundef %17) #19, !dbg !1803
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1749, metadata !DIExpression()) #19, !dbg !1756
  %24 = load i32, ptr %r_natoms.i, align 8, !dbg !1786, !tbaa !716
  %25 = sext i32 %24 to i64, !dbg !1789
  %cmp14.i = icmp slt i64 %indvars.iv.next.i, %25, !dbg !1789
  br i1 %cmp14.i, label %for.body16.i, label %for.inc29.loopexit.i, !dbg !1790, !llvm.loop !1805

for.inc29.loopexit.i:                             ; preds = %for.body16.i
  %.pre.i = load i32, ptr %s_nresidues.i, align 8, !dbg !1778, !tbaa !1238
  br label %for.inc29.i, !dbg !1791

for.inc29.i:                                      ; preds = %for.inc29.loopexit.i, %for.body12.for.inc29_crit_edge.i
  %inc31.pre-phi.i = phi i32 [ %.pre91.i, %for.body12.for.inc29_crit_edge.i ], [ %add.i, %for.inc29.loopexit.i ], !dbg !1792
  %indvars.iv.next87.pre-phi.i = phi i64 [ %.pre90.i, %for.body12.for.inc29_crit_edge.i ], [ %16, %for.inc29.loopexit.i ], !dbg !1791
  %26 = phi i32 [ %12, %for.body12.for.inc29_crit_edge.i ], [ %.pre.i, %for.inc29.loopexit.i ], !dbg !1778
  %ta.2.lcssa.i = phi i32 [ %ta.172.i, %for.body12.for.inc29_crit_edge.i ], [ %inc17.i, %for.inc29.loopexit.i ], !dbg !1771
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next87.pre-phi.i, metadata !1747, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %inc31.pre-phi.i, metadata !1748, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %ta.2.lcssa.i, metadata !1750, metadata !DIExpression()) #19, !dbg !1756
  %27 = sext i32 %26 to i64, !dbg !1781
  %cmp10.i = icmp slt i64 %indvars.iv.next87.pre-phi.i, %27, !dbg !1781
  br i1 %cmp10.i, label %for.body12.i, label %for.end32.i, !dbg !1782, !llvm.loop !1807

for.end32.i:                                      ; preds = %for.inc29.i, %for.body.i
  %ta.1.lcssa.i = phi i32 [ %ta.080.i, %for.body.i ], [ %ta.2.lcssa.i, %for.inc29.i ], !dbg !1809
  %tr.1.lcssa.i = phi i32 [ %tr.083.i, %for.body.i ], [ %inc31.pre-phi.i, %for.inc29.i ], !dbg !1771
  %28 = load i32, ptr %m_nstrands.i, align 8, !dbg !1810, !tbaa !1759
  %cmp34.i = icmp sgt i32 %28, 1, !dbg !1812
  %inc36.i = zext i1 %cmp34.i to i8, !dbg !1813
  %spec.select.i = add i8 %cid.082.i, %inc36.i, !dbg !1813
  call void @llvm.dbg.value(metadata i8 %spec.select.i, metadata !1752, metadata !DIExpression()) #19, !dbg !1756
  %s_next.i = getelementptr inbounds %struct.strand_t, ptr %sp.084.i, i64 0, i32 4, !dbg !1814
  call void @llvm.dbg.value(metadata ptr undef, metadata !1753, metadata !DIExpression()) #19, !dbg !1756
  %sp.0.i = load ptr, ptr %s_next.i, align 8, !dbg !1771, !tbaa !374
  call void @llvm.dbg.value(metadata i32 %tr.1.lcssa.i, metadata !1748, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata ptr %sp.0.i, metadata !1753, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1751, metadata !DIExpression()) #19, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %ta.1.lcssa.i, metadata !1750, metadata !DIExpression()) #19, !dbg !1756
  %tobool.not.i = icmp eq ptr %sp.0.i, null, !dbg !1772
  br i1 %tobool.not.i, label %fputcif.exit, label %for.body.i, !dbg !1772, !llvm.loop !1815

fputcif.exit:                                     ; preds = %for.end32.i, %if.end8
  %29 = load ptr, ptr @stdout, align 8, !dbg !1817, !tbaa !374
  %cmp9.not = icmp eq ptr %fp.0, %29, !dbg !1819
  br i1 %cmp9.not, label %cleanup, label %if.then10, !dbg !1820

if.then10:                                        ; preds = %fputcif.exit
  %call11 = tail call i32 @fclose(ptr noundef %fp.0), !dbg !1821
  br label %cleanup, !dbg !1821

cleanup:                                          ; preds = %fputcif.exit, %if.then10, %if.then
  ret i32 0, !dbg !1822
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @putbnd(ptr noundef %fname, ptr noundef readonly %mol) local_unnamed_addr #0 !dbg !1823 {
entry:
  call void @llvm.dbg.value(metadata ptr %fname, metadata !1827, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1828, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 0, metadata !1839, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata ptr null, metadata !1840, metadata !DIExpression()), !dbg !1844
  %tobool.not = icmp eq ptr %mol, null, !dbg !1845
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1847

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1848, !tbaa !374
  %1 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 22, i64 1, ptr %0) #20, !dbg !1850
  br label %cleanup, !dbg !1851

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @fopen(ptr noundef %fname, ptr noundef nonnull @.str.9), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1829, metadata !DIExpression()), !dbg !1844
  %cmp = icmp eq ptr %call1, null, !dbg !1854
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !1855

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %fname) #19, !dbg !1856
  tail call void @exit(i32 noundef 1) #23, !dbg !1858
  unreachable, !dbg !1858

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1838, metadata !DIExpression()), !dbg !1844
  %m_strands = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !1859
  call void @llvm.dbg.value(metadata ptr undef, metadata !1830, metadata !DIExpression()), !dbg !1844
  %sp.0180 = load ptr, ptr %m_strands, align 8, !dbg !1861, !tbaa !374
  call void @llvm.dbg.value(metadata i32 0, metadata !1838, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata ptr %sp.0180, metadata !1830, metadata !DIExpression()), !dbg !1844
  %tobool5.not181 = icmp eq ptr %sp.0180, null, !dbg !1862
  br i1 %tobool5.not181, label %for.end.thread, label %for.body, !dbg !1862

for.body:                                         ; preds = %if.end4, %for.body
  %sp.0183 = phi ptr [ %sp.0, %for.body ], [ %sp.0180, %if.end4 ]
  %tr.0182 = phi i32 [ %add, %for.body ], [ 0, %if.end4 ]
  call void @llvm.dbg.value(metadata i32 %tr.0182, metadata !1838, metadata !DIExpression()), !dbg !1844
  %s_nresidues = getelementptr inbounds %struct.strand_t, ptr %sp.0183, i64 0, i32 5, !dbg !1863
  %2 = load i32, ptr %s_nresidues, align 8, !dbg !1863, !tbaa !1238
  %add = add nsw i32 %2, %tr.0182, !dbg !1865
  call void @llvm.dbg.value(metadata i32 %add, metadata !1838, metadata !DIExpression()), !dbg !1844
  %s_next = getelementptr inbounds %struct.strand_t, ptr %sp.0183, i64 0, i32 4, !dbg !1866
  call void @llvm.dbg.value(metadata ptr undef, metadata !1830, metadata !DIExpression()), !dbg !1844
  %sp.0 = load ptr, ptr %s_next, align 8, !dbg !1861, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %sp.0, metadata !1830, metadata !DIExpression()), !dbg !1844
  %tobool5.not = icmp eq ptr %sp.0, null, !dbg !1862
  br i1 %tobool5.not, label %for.end, label %for.body, !dbg !1862, !llvm.loop !1867

for.end:                                          ; preds = %for.body
  %phi.cast = sext i32 %add to i64, !dbg !1869
  %phi.bo = shl nsw i64 %phi.cast, 2, !dbg !1869
  %call6 = tail call noalias ptr @malloc(i64 noundef %phi.bo) #21, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1840, metadata !DIExpression()), !dbg !1844
  %cmp7 = icmp eq ptr %call6, null, !dbg !1872
  br i1 %cmp7, label %clean_up.thread, label %for.cond13.preheader, !dbg !1873

for.end.thread:                                   ; preds = %if.end4
  %call6217 = tail call noalias ptr @malloc(i64 noundef 0) #21, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1840, metadata !DIExpression()), !dbg !1844
  %cmp7218 = icmp eq ptr %call6217, null, !dbg !1872
  br i1 %cmp7218, label %clean_up.thread, label %if.then103, !dbg !1873

for.cond13.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1838, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata ptr %sp.0180, metadata !1830, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 0, metadata !1833, metadata !DIExpression()), !dbg !1844
  br i1 %tobool5.not181, label %if.then103, label %for.body15, !dbg !1874

clean_up.thread:                                  ; preds = %for.end.thread, %for.end
  %call10 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #19, !dbg !1876
  call void @llvm.dbg.value(metadata i32 0, metadata !1839, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.label(metadata !1843), !dbg !1878
  br label %if.end104, !dbg !1879

for.cond44.preheader:                             ; preds = %for.inc40
  call void @llvm.dbg.value(metadata i32 0, metadata !1838, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata ptr %sp.0180, metadata !1830, metadata !DIExpression()), !dbg !1844
  br i1 %tobool5.not181, label %if.then103, label %for.cond47.preheader, !dbg !1880

for.body15:                                       ; preds = %for.cond13.preheader, %for.inc40
  %sp.1192 = phi ptr [ %sp.1, %for.inc40 ], [ %sp.0180, %for.cond13.preheader ]
  %tr.1191 = phi i32 [ %tr.2, %for.inc40 ], [ 0, %for.cond13.preheader ]
  %ta.0190 = phi i32 [ %ta.2, %for.inc40 ], [ 0, %for.cond13.preheader ]
  call void @llvm.dbg.value(metadata i32 %tr.1191, metadata !1838, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 %ta.0190, metadata !1833, metadata !DIExpression()), !dbg !1844
  %idxprom = sext i32 %tr.1191 to i64, !dbg !1882
  %arrayidx = getelementptr inbounds i32, ptr %call6, i64 %idxprom, !dbg !1882
  store i32 %ta.0190, ptr %arrayidx, align 4, !dbg !1885, !tbaa !524
  %s_nresidues16 = getelementptr inbounds %struct.strand_t, ptr %sp.1192, i64 0, i32 5, !dbg !1886
  %3 = load i32, ptr %s_nresidues16, align 8, !dbg !1886, !tbaa !1238
  %cmp17 = icmp sgt i32 %3, 0, !dbg !1888
  br i1 %cmp17, label %if.then19, label %for.inc40, !dbg !1889

if.then19:                                        ; preds = %for.body15
  %s_residues = getelementptr inbounds %struct.strand_t, ptr %sp.1192, i64 0, i32 7, !dbg !1890
  %4 = load ptr, ptr %s_residues, align 8, !dbg !1890, !tbaa !754
  %5 = load ptr, ptr %4, align 8, !dbg !1892, !tbaa !374
  %r_natoms = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 15, !dbg !1893
  %6 = load i32, ptr %r_natoms, align 8, !dbg !1893, !tbaa !716
  %add21 = add nsw i32 %6, %ta.0190, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %add21, metadata !1833, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 1, metadata !1836, metadata !DIExpression()), !dbg !1844
  %cmp24184.not = icmp eq i32 %3, 1, !dbg !1895
  br i1 %cmp24184.not, label %for.end36, label %for.body26.preheader, !dbg !1898

for.body26.preheader:                             ; preds = %if.then19
  %wide.trip.count = zext i32 %3 to i64, !dbg !1895
  br label %for.body26, !dbg !1898

for.body26:                                       ; preds = %for.body26.preheader, %for.body26
  %indvars.iv = phi i64 [ 1, %for.body26.preheader ], [ %indvars.iv.next, %for.body26 ]
  %ta.1185 = phi i32 [ %add21, %for.body26.preheader ], [ %add34, %for.body26 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1836, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 %ta.1185, metadata !1833, metadata !DIExpression()), !dbg !1844
  %7 = add nsw i64 %indvars.iv, %idxprom, !dbg !1899
  %arrayidx29 = getelementptr inbounds i32, ptr %call6, i64 %7, !dbg !1901
  store i32 %ta.1185, ptr %arrayidx29, align 4, !dbg !1902, !tbaa !524
  %arrayidx32 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv, !dbg !1903
  %8 = load ptr, ptr %arrayidx32, align 8, !dbg !1903, !tbaa !374
  %r_natoms33 = getelementptr inbounds %struct.residue_t, ptr %8, i64 0, i32 15, !dbg !1904
  %9 = load i32, ptr %r_natoms33, align 8, !dbg !1904, !tbaa !716
  %add34 = add nsw i32 %9, %ta.1185, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1833, metadata !DIExpression()), !dbg !1844
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1836, metadata !DIExpression()), !dbg !1844
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1895
  br i1 %exitcond.not, label %for.end36, label %for.body26, !dbg !1898, !llvm.loop !1907

for.end36:                                        ; preds = %for.body26, %if.then19
  %ta.1.lcssa = phi i32 [ %add21, %if.then19 ], [ %add34, %for.body26 ], !dbg !1909
  %add38 = add nsw i32 %3, %tr.1191, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %add38, metadata !1838, metadata !DIExpression()), !dbg !1844
  br label %for.inc40, !dbg !1911

for.inc40:                                        ; preds = %for.body15, %for.end36
  %ta.2 = phi i32 [ %ta.1.lcssa, %for.end36 ], [ %ta.0190, %for.body15 ], !dbg !1912
  %tr.2 = phi i32 [ %add38, %for.end36 ], [ %tr.1191, %for.body15 ], !dbg !1912
  call void @llvm.dbg.value(metadata i32 %tr.2, metadata !1838, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 %ta.2, metadata !1833, metadata !DIExpression()), !dbg !1844
  %s_next41 = getelementptr inbounds %struct.strand_t, ptr %sp.1192, i64 0, i32 4, !dbg !1913
  call void @llvm.dbg.value(metadata ptr undef, metadata !1830, metadata !DIExpression()), !dbg !1844
  %sp.1 = load ptr, ptr %s_next41, align 8, !dbg !1912, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %sp.1, metadata !1830, metadata !DIExpression()), !dbg !1844
  %tobool14.not = icmp eq ptr %sp.1, null, !dbg !1874
  br i1 %tobool14.not, label %for.cond44.preheader, label %for.body15, !dbg !1874, !llvm.loop !1914

for.cond47.preheader:                             ; preds = %for.cond44.preheader, %for.end96
  %sp.2205 = phi ptr [ %sp.2, %for.end96 ], [ %sp.0180, %for.cond44.preheader ]
  %tr.3204 = phi i32 [ %add98, %for.end96 ], [ 0, %for.cond44.preheader ]
  call void @llvm.dbg.value(metadata i32 %tr.3204, metadata !1838, metadata !DIExpression()), !dbg !1844
  %s_nresidues48 = getelementptr inbounds %struct.strand_t, ptr %sp.2205, i64 0, i32 5
  call void @llvm.dbg.value(metadata i32 0, metadata !1836, metadata !DIExpression()), !dbg !1844
  %10 = load i32, ptr %s_nresidues48, align 8, !dbg !1916, !tbaa !1238
  %cmp49198 = icmp sgt i32 %10, 0, !dbg !1921
  br i1 %cmp49198, label %for.body51.lr.ph, label %for.end96, !dbg !1922

for.body51.lr.ph:                                 ; preds = %for.cond47.preheader
  %s_residues52 = getelementptr inbounds %struct.strand_t, ptr %sp.2205, i64 0, i32 7
  %add86 = add i32 %tr.3204, -1
  %11 = sext i32 %tr.3204 to i64, !dbg !1922
  br label %for.body51, !dbg !1922

for.body51:                                       ; preds = %for.body51.lr.ph, %for.inc94
  %indvars.iv212 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next213, %for.inc94 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv212, metadata !1836, metadata !DIExpression()), !dbg !1844
  %12 = load ptr, ptr %s_residues52, align 8, !dbg !1923, !tbaa !754
  %arrayidx54 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv212, !dbg !1925
  %13 = load ptr, ptr %arrayidx54, align 8, !dbg !1925, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %13, metadata !1831, metadata !DIExpression()), !dbg !1844
  %14 = add nsw i64 %indvars.iv212, %11, !dbg !1926
  %arrayidx57 = getelementptr inbounds i32, ptr %call6, i64 %14, !dbg !1927
  %15 = load i32, ptr %arrayidx57, align 4, !dbg !1927, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %15, metadata !1832, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 0, metadata !1841, metadata !DIExpression()), !dbg !1844
  %r_nintbonds = getelementptr inbounds %struct.residue_t, ptr %13, i64 0, i32 11
  %16 = load i32, ptr %r_nintbonds, align 8, !dbg !1928, !tbaa !1931
  %cmp59193 = icmp sgt i32 %16, 0, !dbg !1932
  br i1 %cmp59193, label %for.body61.lr.ph, label %for.end74, !dbg !1933

for.body61.lr.ph:                                 ; preds = %for.body51
  %r_intbonds = getelementptr inbounds %struct.residue_t, ptr %13, i64 0, i32 12
  br label %for.body61, !dbg !1933

for.body61:                                       ; preds = %for.body61.lr.ph, %for.body61
  %indvars.iv209 = phi i64 [ 0, %for.body61.lr.ph ], [ %indvars.iv.next210, %for.body61 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv209, metadata !1841, metadata !DIExpression()), !dbg !1844
  %17 = load ptr, ptr %r_intbonds, align 8, !dbg !1934, !tbaa !1936
  %arrayidx63 = getelementptr inbounds [2 x i32], ptr %17, i64 %indvars.iv209, !dbg !1937
  %18 = load i32, ptr %arrayidx63, align 4, !dbg !1937, !tbaa !524
  %add65 = add nsw i32 %18, %15, !dbg !1938
  %arrayidx69 = getelementptr inbounds [2 x i32], ptr %17, i64 %indvars.iv209, i64 1, !dbg !1939
  %19 = load i32, ptr %arrayidx69, align 4, !dbg !1939, !tbaa !524
  %add70 = add nsw i32 %19, %15, !dbg !1940
  %call71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call1, ptr noundef nonnull @.str.15, i32 noundef %add65, i32 noundef %add70), !dbg !1941
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next210, metadata !1841, metadata !DIExpression()), !dbg !1844
  %20 = load i32, ptr %r_nintbonds, align 8, !dbg !1928, !tbaa !1931
  %21 = sext i32 %20 to i64, !dbg !1932
  %cmp59 = icmp slt i64 %indvars.iv.next210, %21, !dbg !1932
  br i1 %cmp59, label %for.body61, label %for.end74, !dbg !1933, !llvm.loop !1943

for.end74:                                        ; preds = %for.body61, %for.body51
  %r_extbonds = getelementptr inbounds %struct.residue_t, ptr %13, i64 0, i32 10, !dbg !1945
  call void @llvm.dbg.value(metadata ptr undef, metadata !1842, metadata !DIExpression()), !dbg !1844
  %ebp.0195 = load ptr, ptr %r_extbonds, align 8, !dbg !1947, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %ebp.0195, metadata !1842, metadata !DIExpression()), !dbg !1844
  %tobool76.not196 = icmp eq ptr %ebp.0195, null, !dbg !1948
  br i1 %tobool76.not196, label %for.inc94, label %for.body77, !dbg !1948

for.body77:                                       ; preds = %for.end74, %for.inc92
  %ebp.0197 = phi ptr [ %ebp.0, %for.inc92 ], [ %ebp.0195, %for.end74 ]
  %eb_rnum = getelementptr inbounds %struct.extbond_t, ptr %ebp.0197, i64 0, i32 2, !dbg !1949
  %22 = load i32, ptr %eb_rnum, align 4, !dbg !1949, !tbaa !1953
  call void @llvm.dbg.value(metadata i32 %22, metadata !1837, metadata !DIExpression()), !dbg !1844
  %23 = sext i32 %22 to i64, !dbg !1955
  %cmp79.not = icmp slt i64 %indvars.iv212, %23, !dbg !1955
  br i1 %cmp79.not, label %if.end82, label %for.inc92, !dbg !1956

if.end82:                                         ; preds = %for.body77
  call void @llvm.dbg.value(metadata i32 %15, metadata !1834, metadata !DIExpression()), !dbg !1844
  %sub = add i32 %add86, %22, !dbg !1957
  %idxprom87 = sext i32 %sub to i64, !dbg !1958
  %arrayidx88 = getelementptr inbounds i32, ptr %call6, i64 %idxprom87, !dbg !1958
  %24 = load i32, ptr %arrayidx88, align 4, !dbg !1958, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %24, metadata !1835, metadata !DIExpression()), !dbg !1844
  %eb_anum = getelementptr inbounds %struct.extbond_t, ptr %ebp.0197, i64 0, i32 1, !dbg !1959
  %25 = load i32, ptr %eb_anum, align 8, !dbg !1959, !tbaa !1960
  %add89 = add nsw i32 %25, %15, !dbg !1961
  %eb_ranum = getelementptr inbounds %struct.extbond_t, ptr %ebp.0197, i64 0, i32 3, !dbg !1962
  %26 = load i32, ptr %eb_ranum, align 8, !dbg !1962, !tbaa !1963
  %add90 = add nsw i32 %26, %24, !dbg !1964
  %call91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call1, ptr noundef nonnull @.str.15, i32 noundef %add89, i32 noundef %add90), !dbg !1965
  br label %for.inc92, !dbg !1966

for.inc92:                                        ; preds = %for.body77, %if.end82
  call void @llvm.dbg.value(metadata ptr undef, metadata !1842, metadata !DIExpression()), !dbg !1844
  %ebp.0 = load ptr, ptr %ebp.0197, align 8, !dbg !1947, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %ebp.0, metadata !1842, metadata !DIExpression()), !dbg !1844
  %tobool76.not = icmp eq ptr %ebp.0, null, !dbg !1948
  br i1 %tobool76.not, label %for.inc94, label %for.body77, !dbg !1948, !llvm.loop !1967

for.inc94:                                        ; preds = %for.inc92, %for.end74
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next213, metadata !1836, metadata !DIExpression()), !dbg !1844
  %27 = load i32, ptr %s_nresidues48, align 8, !dbg !1916, !tbaa !1238
  %28 = sext i32 %27 to i64, !dbg !1921
  %cmp49 = icmp slt i64 %indvars.iv.next213, %28, !dbg !1921
  br i1 %cmp49, label %for.body51, label %for.end96, !dbg !1922, !llvm.loop !1970

for.end96:                                        ; preds = %for.inc94, %for.cond47.preheader
  %.lcssa = phi i32 [ %10, %for.cond47.preheader ], [ %27, %for.inc94 ], !dbg !1916
  %add98 = add nsw i32 %.lcssa, %tr.3204, !dbg !1972
  call void @llvm.dbg.value(metadata i32 %add98, metadata !1838, metadata !DIExpression()), !dbg !1844
  %s_next100 = getelementptr inbounds %struct.strand_t, ptr %sp.2205, i64 0, i32 4, !dbg !1973
  call void @llvm.dbg.value(metadata ptr undef, metadata !1830, metadata !DIExpression()), !dbg !1844
  %sp.2 = load ptr, ptr %s_next100, align 8, !dbg !1974, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %sp.2, metadata !1830, metadata !DIExpression()), !dbg !1844
  %tobool45.not = icmp eq ptr %sp.2, null, !dbg !1880
  br i1 %tobool45.not, label %if.then103, label %for.cond47.preheader, !dbg !1880, !llvm.loop !1975

if.then103:                                       ; preds = %for.end96, %for.end.thread, %for.cond13.preheader, %for.cond44.preheader
  %call6220 = phi ptr [ %call6, %for.cond44.preheader ], [ %call6, %for.cond13.preheader ], [ %call6217, %for.end.thread ], [ %call6, %for.end96 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1839, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.label(metadata !1843), !dbg !1878
  tail call void @free(ptr noundef nonnull %call6220) #19, !dbg !1977
  br label %if.end104, !dbg !1977

if.end104:                                        ; preds = %clean_up.thread, %if.then103
  %rval.0179 = phi i32 [ 1, %clean_up.thread ], [ 0, %if.then103 ]
  %call105 = tail call i32 @fclose(ptr noundef nonnull %call1), !dbg !1979
  br label %cleanup, !dbg !1980

cleanup:                                          ; preds = %if.end104, %if.then
  %retval.0 = phi i32 [ %rval.0179, %if.end104 ], [ 0, %if.then ], !dbg !1844
  ret i32 %retval.0, !dbg !1981
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @putdist(ptr noundef %fname, ptr noundef %mol, ptr noundef %aexp1, ptr noundef %aexp2) local_unnamed_addr #0 !dbg !1982 {
entry:
  call void @llvm.dbg.value(metadata ptr %fname, metadata !1986, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1987, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr %aexp1, metadata !1988, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr %aexp2, metadata !1989, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 0, metadata !2002, metadata !DIExpression()), !dbg !2004
  %tobool.not = icmp eq ptr %mol, null, !dbg !2005
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2007

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !2008, !tbaa !374
  %1 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 23, i64 1, ptr %0) #20, !dbg !2010
  br label %cleanup, !dbg !2011

if.end:                                           ; preds = %entry
  tail call void @select_atoms(ptr noundef nonnull %mol, ptr noundef %aexp1) #19, !dbg !2012
  %m_strands = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !2013
  call void @llvm.dbg.value(metadata ptr undef, metadata !1991, metadata !DIExpression()), !dbg !2004
  %sp1.0212 = load ptr, ptr %m_strands, align 8, !dbg !2015, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %sp1.0212, metadata !1991, metadata !DIExpression()), !dbg !2004
  %tobool1.not213 = icmp eq ptr %sp1.0212, null, !dbg !2016
  br i1 %tobool1.not213, label %for.end29, label %for.body, !dbg !2016

for.body:                                         ; preds = %if.end, %for.inc28
  %sp1.0214 = phi ptr [ %sp1.0, %for.inc28 ], [ %sp1.0212, %if.end ]
  %s_attr = getelementptr inbounds %struct.strand_t, ptr %sp1.0214, i64 0, i32 2, !dbg !2017
  %2 = load i32, ptr %s_attr, align 4, !dbg !2020, !tbaa !2021
  %and = and i32 %2, -3, !dbg !2020
  %and3 = shl i32 %2, 1, !dbg !2022
  %3 = and i32 %and3, 2, !dbg !2022
  %or = or i32 %3, %and, !dbg !2023
  store i32 %or, ptr %s_attr, align 4, !dbg !2023, !tbaa !2021
  call void @llvm.dbg.value(metadata i32 0, metadata !1997, metadata !DIExpression()), !dbg !2004
  %s_nresidues = getelementptr inbounds %struct.strand_t, ptr %sp1.0214, i64 0, i32 5
  %4 = load i32, ptr %s_nresidues, align 8, !tbaa !1238
  call void @llvm.dbg.value(metadata i32 0, metadata !1997, metadata !DIExpression()), !dbg !2004
  %cmp210 = icmp sgt i32 %4, 0, !dbg !2024
  br i1 %cmp210, label %for.body7.lr.ph, label %for.inc28, !dbg !2027

for.body7.lr.ph:                                  ; preds = %for.body
  %s_residues = getelementptr inbounds %struct.strand_t, ptr %sp1.0214, i64 0, i32 7
  %5 = load ptr, ptr %s_residues, align 8, !tbaa !754
  %wide.trip.count = zext i32 %4 to i64, !dbg !2024
  br label %for.body7, !dbg !2027

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc25
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.inc25 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1997, metadata !DIExpression()), !dbg !2004
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv, !dbg !2028
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2028, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %6, metadata !1992, metadata !DIExpression()), !dbg !2004
  %r_attr = getelementptr inbounds %struct.residue_t, ptr %6, i64 0, i32 6, !dbg !2030
  %7 = load i32, ptr %r_attr, align 8, !dbg !2031, !tbaa !2032
  %and8 = and i32 %7, -3, !dbg !2031
  %and10 = shl i32 %7, 1, !dbg !2033
  %8 = and i32 %and10, 2, !dbg !2033
  %or14 = or i32 %8, %and8, !dbg !2034
  store i32 %or14, ptr %r_attr, align 8, !dbg !2034, !tbaa !2032
  call void @llvm.dbg.value(metadata i32 0, metadata !1999, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr undef, metadata !1994, metadata !DIExpression()), !dbg !2004
  %r_natoms = getelementptr inbounds %struct.residue_t, ptr %6, i64 0, i32 15
  %9 = load i32, ptr %r_natoms, align 8, !tbaa !716
  call void @llvm.dbg.value(metadata i32 0, metadata !1999, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr undef, metadata !1994, metadata !DIExpression()), !dbg !2004
  %cmp16207 = icmp sgt i32 %9, 0, !dbg !2035
  br i1 %cmp16207, label %for.body17.preheader, label %for.inc25, !dbg !2038

for.body17.preheader:                             ; preds = %for.body7
  %r_atoms = getelementptr inbounds %struct.residue_t, ptr %6, i64 0, i32 17, !dbg !2039
  %10 = load ptr, ptr %r_atoms, align 8, !dbg !2039, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr %10, metadata !1994, metadata !DIExpression()), !dbg !2004
  br label %for.body17, !dbg !2038

for.body17:                                       ; preds = %for.body17.preheader, %for.body17
  %a1.0209 = phi i32 [ %inc, %for.body17 ], [ 0, %for.body17.preheader ]
  %ap1.0208 = phi ptr [ %incdec.ptr, %for.body17 ], [ %10, %for.body17.preheader ]
  call void @llvm.dbg.value(metadata i32 %a1.0209, metadata !1999, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr %ap1.0208, metadata !1994, metadata !DIExpression()), !dbg !2004
  %a_attr = getelementptr inbounds %struct.atom_t, ptr %ap1.0208, i64 0, i32 2, !dbg !2040
  %11 = load i32, ptr %a_attr, align 8, !dbg !2042, !tbaa !796
  %and18 = and i32 %11, -3, !dbg !2042
  %and20 = shl i32 %11, 1, !dbg !2043
  %12 = and i32 %and20, 2, !dbg !2043
  %or24 = or i32 %12, %and18, !dbg !2044
  store i32 %or24, ptr %a_attr, align 8, !dbg !2044, !tbaa !796
  %inc = add nuw nsw i32 %a1.0209, 1, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1999, metadata !DIExpression()), !dbg !2004
  %incdec.ptr = getelementptr inbounds %struct.atom_t, ptr %ap1.0208, i64 1, !dbg !2046
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1994, metadata !DIExpression()), !dbg !2004
  %exitcond.not = icmp eq i32 %inc, %9, !dbg !2035
  br i1 %exitcond.not, label %for.inc25, label %for.body17, !dbg !2038, !llvm.loop !2047

for.inc25:                                        ; preds = %for.body17, %for.body7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1997, metadata !DIExpression()), !dbg !2004
  %exitcond247.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2024
  br i1 %exitcond247.not, label %for.inc28, label %for.body7, !dbg !2027, !llvm.loop !2050

for.inc28:                                        ; preds = %for.inc25, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, ptr %sp1.0214, i64 0, i32 4, !dbg !2052
  call void @llvm.dbg.value(metadata ptr undef, metadata !1991, metadata !DIExpression()), !dbg !2004
  %sp1.0 = load ptr, ptr %s_next, align 8, !dbg !2015, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %sp1.0, metadata !1991, metadata !DIExpression()), !dbg !2004
  %tobool1.not = icmp eq ptr %sp1.0, null, !dbg !2016
  br i1 %tobool1.not, label %for.end29, label %for.body, !dbg !2016, !llvm.loop !2053

for.end29:                                        ; preds = %for.inc28, %if.end
  tail call void @select_atoms(ptr noundef nonnull %mol, ptr noundef %aexp2) #19, !dbg !2055
  call void @llvm.dbg.value(metadata i32 0, metadata !1996, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr undef, metadata !1991, metadata !DIExpression()), !dbg !2004
  %sp1.1215 = load ptr, ptr %m_strands, align 8, !dbg !2056, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %sp1.1215, metadata !1991, metadata !DIExpression()), !dbg !2004
  %tobool32.not216 = icmp eq ptr %sp1.1215, null, !dbg !2058
  br i1 %tobool32.not216, label %for.end37, label %for.body33, !dbg !2058

for.body33:                                       ; preds = %for.end29, %for.body33
  %sp1.1218 = phi ptr [ %sp1.1, %for.body33 ], [ %sp1.1215, %for.end29 ]
  %tr.0217 = phi i32 [ %add, %for.body33 ], [ 0, %for.end29 ]
  call void @llvm.dbg.value(metadata i32 %tr.0217, metadata !1996, metadata !DIExpression()), !dbg !2004
  %s_nresidues34 = getelementptr inbounds %struct.strand_t, ptr %sp1.1218, i64 0, i32 5, !dbg !2059
  %13 = load i32, ptr %s_nresidues34, align 8, !dbg !2059, !tbaa !1238
  %add = add nsw i32 %13, %tr.0217, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %add, metadata !1996, metadata !DIExpression()), !dbg !2004
  %s_next36 = getelementptr inbounds %struct.strand_t, ptr %sp1.1218, i64 0, i32 4, !dbg !2062
  call void @llvm.dbg.value(metadata ptr undef, metadata !1991, metadata !DIExpression()), !dbg !2004
  %sp1.1 = load ptr, ptr %s_next36, align 8, !dbg !2056, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %sp1.1, metadata !1991, metadata !DIExpression()), !dbg !2004
  %tobool32.not = icmp eq ptr %sp1.1, null, !dbg !2058
  br i1 %tobool32.not, label %for.end37, label %for.body33, !dbg !2058, !llvm.loop !2063

for.end37:                                        ; preds = %for.body33, %for.end29
  %tr.0.lcssa = phi i32 [ 0, %for.end29 ], [ %add, %for.body33 ], !dbg !2056
  %conv = sext i32 %tr.0.lcssa to i64, !dbg !2065
  %mul = shl nsw i64 %conv, 3, !dbg !2067
  %call38 = tail call noalias ptr @malloc(i64 noundef %mul) #21, !dbg !2068
  call void @llvm.dbg.value(metadata ptr %call38, metadata !2001, metadata !DIExpression()), !dbg !2004
  %cmp39 = icmp eq ptr %call38, null, !dbg !2069
  br i1 %cmp39, label %clean_up.thread, label %for.cond45.preheader, !dbg !2070

for.cond45.preheader:                             ; preds = %for.end37
  call void @llvm.dbg.value(metadata i32 0, metadata !1998, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr %sp1.1215, metadata !1991, metadata !DIExpression()), !dbg !2004
  br i1 %tobool32.not216, label %for.end64, label %for.cond48.preheader, !dbg !2071

clean_up.thread:                                  ; preds = %for.end37
  %14 = load ptr, ptr @stderr, align 8, !dbg !2073, !tbaa !374
  %15 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %14) #20, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %cnt.6, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.label(metadata !2003), !dbg !2076
  br label %cleanup, !dbg !2077

for.cond48.preheader:                             ; preds = %for.cond45.preheader, %for.inc62
  %sp1.2226 = phi ptr [ %sp1.2, %for.inc62 ], [ %sp1.1215, %for.cond45.preheader ]
  %r2.0225 = phi i32 [ %r2.1.lcssa, %for.inc62 ], [ 0, %for.cond45.preheader ]
  call void @llvm.dbg.value(metadata i32 %r2.0225, metadata !1998, metadata !DIExpression()), !dbg !2004
  %s_nresidues49 = getelementptr inbounds %struct.strand_t, ptr %sp1.2226, i64 0, i32 5
  %16 = load i32, ptr %s_nresidues49, align 8, !tbaa !1238
  call void @llvm.dbg.value(metadata i32 0, metadata !1997, metadata !DIExpression()), !dbg !2004
  %cmp50219 = icmp sgt i32 %16, 0, !dbg !2078
  br i1 %cmp50219, label %for.body52.lr.ph, label %for.inc62, !dbg !2083

for.body52.lr.ph:                                 ; preds = %for.cond48.preheader
  %s_residues53 = getelementptr inbounds %struct.strand_t, ptr %sp1.2226, i64 0, i32 7
  %17 = load ptr, ptr %s_residues53, align 8, !tbaa !754
  %18 = sext i32 %r2.0225 to i64, !dbg !2083
  %19 = shl nsw i64 %18, 3, !dbg !2083
  %uglygep = getelementptr i8, ptr %call38, i64 %19, !dbg !2083
  %20 = zext i32 %16 to i64, !dbg !2083
  %21 = shl nuw nsw i64 %20, 3, !dbg !2083
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %uglygep, ptr align 8 %17, i64 %21, i1 false), !dbg !2084, !tbaa !374
  call void @llvm.dbg.value(metadata i32 undef, metadata !1997, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 undef, metadata !1998, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2004
  %22 = add i32 %r2.0225, %16, !dbg !2083
  br label %for.inc62, !dbg !2085

for.inc62:                                        ; preds = %for.body52.lr.ph, %for.cond48.preheader
  %r2.1.lcssa = phi i32 [ %r2.0225, %for.cond48.preheader ], [ %22, %for.body52.lr.ph ], !dbg !2086
  %s_next63 = getelementptr inbounds %struct.strand_t, ptr %sp1.2226, i64 0, i32 4, !dbg !2085
  call void @llvm.dbg.value(metadata ptr undef, metadata !1991, metadata !DIExpression()), !dbg !2004
  %sp1.2 = load ptr, ptr %s_next63, align 8, !dbg !2086, !tbaa !374
  call void @llvm.dbg.value(metadata i32 %r2.1.lcssa, metadata !1998, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr %sp1.2, metadata !1991, metadata !DIExpression()), !dbg !2004
  %tobool46.not = icmp eq ptr %sp1.2, null, !dbg !2071
  br i1 %tobool46.not, label %for.end64, label %for.cond48.preheader, !dbg !2071, !llvm.loop !2087

for.end64:                                        ; preds = %for.inc62, %for.cond45.preheader
  %call65 = tail call ptr @fopen(ptr noundef %fname, ptr noundef nonnull @.str.9), !dbg !2089
  call void @llvm.dbg.value(metadata ptr %call65, metadata !1990, metadata !DIExpression()), !dbg !2004
  %cmp66 = icmp eq ptr %call65, null, !dbg !2091
  br i1 %cmp66, label %if.then68, label %for.cond71.preheader, !dbg !2092

for.cond71.preheader:                             ; preds = %for.end64
  call void @llvm.dbg.value(metadata i32 0, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 0, metadata !1997, metadata !DIExpression()), !dbg !2004
  %cmp72240 = icmp sgt i32 %tr.0.lcssa, 0, !dbg !2093
  br i1 %cmp72240, label %for.body74.us.preheader, label %if.then129, !dbg !2096

for.body74.us.preheader:                          ; preds = %for.cond71.preheader
  %wide.trip.count273 = zext i32 %tr.0.lcssa to i64, !dbg !2093
  br label %for.body74.us, !dbg !2096

for.body74.us:                                    ; preds = %for.body74.us.preheader, %for.inc125.us
  %indvars.iv269 = phi i64 [ 0, %for.body74.us.preheader ], [ %indvars.iv.next270.pre-phi, %for.inc125.us ]
  %cnt.0243.us = phi i32 [ 0, %for.body74.us.preheader ], [ %cnt.1.lcssa.us, %for.inc125.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.0243.us, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %indvars.iv269, metadata !1997, metadata !DIExpression()), !dbg !2004
  %arrayidx76.us = getelementptr inbounds ptr, ptr %call38, i64 %indvars.iv269, !dbg !2097
  %23 = load ptr, ptr %arrayidx76.us, align 8, !dbg !2097, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %23, metadata !1992, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 0, metadata !1999, metadata !DIExpression()), !dbg !2004
  %r_natoms78.us = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 15
  %24 = load i32, ptr %r_natoms78.us, align 8, !dbg !2099, !tbaa !716
  %cmp79236.us = icmp sgt i32 %24, 0, !dbg !2102
  br i1 %cmp79236.us, label %for.body81.lr.ph.us, label %for.body74.us.for.inc125.us_crit_edge, !dbg !2103

for.body74.us.for.inc125.us_crit_edge:            ; preds = %for.body74.us
  %.pre276 = add nuw nsw i64 %indvars.iv269, 1, !dbg !2104
  br label %for.inc125.us, !dbg !2103

for.inc125.us:                                    ; preds = %for.inc122.us.us, %for.body74.us.for.inc125.us_crit_edge
  %indvars.iv.next270.pre-phi = phi i64 [ %.pre276, %for.body74.us.for.inc125.us_crit_edge ], [ %25, %for.inc122.us.us ], !dbg !2104
  %cnt.1.lcssa.us = phi i32 [ %cnt.0243.us, %for.body74.us.for.inc125.us_crit_edge ], [ %cnt.5.us.us, %for.inc122.us.us ], !dbg !2105
  call void @llvm.dbg.value(metadata i32 %cnt.1.lcssa.us, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next270.pre-phi, metadata !1997, metadata !DIExpression()), !dbg !2004
  %exitcond274.not = icmp eq i64 %indvars.iv.next270.pre-phi, %wide.trip.count273, !dbg !2093
  br i1 %exitcond274.not, label %if.then129, label %for.body74.us, !dbg !2096, !llvm.loop !2106

for.body81.lr.ph.us:                              ; preds = %for.body74.us
  %r_atoms82.us = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 17
  %25 = add nuw nsw i64 %indvars.iv269, 1
  %r_resname.us = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 4
  %26 = trunc i64 %25 to i32
  br label %for.body81.us.us, !dbg !2103

for.body81.us.us:                                 ; preds = %for.inc122.us.us, %for.body81.lr.ph.us
  %27 = phi i32 [ %49, %for.inc122.us.us ], [ %24, %for.body81.lr.ph.us ]
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %for.inc122.us.us ], [ 0, %for.body81.lr.ph.us ]
  %cnt.1238.us.us = phi i32 [ %cnt.5.us.us, %for.inc122.us.us ], [ %cnt.0243.us, %for.body81.lr.ph.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.1238.us.us, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %indvars.iv266, metadata !1999, metadata !DIExpression()), !dbg !2004
  %28 = load ptr, ptr %r_atoms82.us, align 8, !dbg !2108, !tbaa !1457
  %arrayidx84.us.us = getelementptr inbounds %struct.atom_t, ptr %28, i64 %indvars.iv266, !dbg !2110
  call void @llvm.dbg.value(metadata ptr %arrayidx84.us.us, metadata !1994, metadata !DIExpression()), !dbg !2004
  %a_attr85.us.us = getelementptr inbounds %struct.atom_t, ptr %28, i64 %indvars.iv266, i32 2, !dbg !2111
  %29 = load i32, ptr %a_attr85.us.us, align 8, !dbg !2111, !tbaa !796
  %and86.us.us = and i32 %29, 2, !dbg !2113
  %tobool87.not.us.us = icmp eq i32 %and86.us.us, 0, !dbg !2113
  br i1 %tobool87.not.us.us, label %for.inc122.us.us, label %for.cond89.preheader.us.us, !dbg !2114

for.body92.us.us:                                 ; preds = %for.cond89.preheader.us.us, %for.inc118.us.us
  %indvars.iv260 = phi i64 [ 0, %for.cond89.preheader.us.us ], [ %indvars.iv.next261.pre-phi, %for.inc118.us.us ]
  %cnt.2234.us.us = phi i32 [ %cnt.1238.us.us, %for.cond89.preheader.us.us ], [ %cnt.3.lcssa.us.us, %for.inc118.us.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.2234.us.us, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %indvars.iv260, metadata !1998, metadata !DIExpression()), !dbg !2004
  %arrayidx94.us.us = getelementptr inbounds ptr, ptr %call38, i64 %indvars.iv260, !dbg !2115
  %30 = load ptr, ptr %arrayidx94.us.us, align 8, !dbg !2115, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %30, metadata !1993, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 0, metadata !2000, metadata !DIExpression()), !dbg !2004
  %r_natoms96.us.us = getelementptr inbounds %struct.residue_t, ptr %30, i64 0, i32 15
  %31 = load i32, ptr %r_natoms96.us.us, align 8, !dbg !2120, !tbaa !716
  %cmp97227.us.us = icmp sgt i32 %31, 0, !dbg !2123
  br i1 %cmp97227.us.us, label %for.body99.lr.ph.us.us, label %for.body92.us.us.for.inc118.us.us_crit_edge, !dbg !2124

for.body92.us.us.for.inc118.us.us_crit_edge:      ; preds = %for.body92.us.us
  %.pre277 = add nuw nsw i64 %indvars.iv260, 1, !dbg !2125
  br label %for.inc118.us.us, !dbg !2124

for.inc118.us.us:                                 ; preds = %for.inc115.us.us, %for.body92.us.us.for.inc118.us.us_crit_edge
  %indvars.iv.next261.pre-phi = phi i64 [ %.pre277, %for.body92.us.us.for.inc118.us.us_crit_edge ], [ %51, %for.inc115.us.us ], !dbg !2125
  %cnt.3.lcssa.us.us = phi i32 [ %cnt.2234.us.us, %for.body92.us.us.for.inc118.us.us_crit_edge ], [ %cnt.4.us.us, %for.inc115.us.us ], !dbg !2126
  call void @llvm.dbg.value(metadata i32 %cnt.3.lcssa.us.us, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next261.pre-phi, metadata !1998, metadata !DIExpression()), !dbg !2004
  %exitcond265.not = icmp eq i64 %indvars.iv.next261.pre-phi, %wide.trip.count273, !dbg !2127
  br i1 %exitcond265.not, label %for.inc122.us.us.loopexit, label %for.body92.us.us, !dbg !2128, !llvm.loop !2129

for.body99.us.us:                                 ; preds = %for.body99.lr.ph.us.us, %for.inc115.us.us
  %32 = phi i32 [ %31, %for.body99.lr.ph.us.us ], [ %47, %for.inc115.us.us ]
  %indvars.iv257 = phi i64 [ 0, %for.body99.lr.ph.us.us ], [ %indvars.iv.next258, %for.inc115.us.us ]
  %cnt.3229.us.us = phi i32 [ %cnt.2234.us.us, %for.body99.lr.ph.us.us ], [ %cnt.4.us.us, %for.inc115.us.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.3229.us.us, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %indvars.iv257, metadata !2000, metadata !DIExpression()), !dbg !2004
  %33 = load ptr, ptr %r_atoms100.us.us, align 8, !dbg !2131, !tbaa !1457
  call void @llvm.dbg.value(metadata !DIArgList(ptr %33, i64 %indvars.iv257), metadata !1995, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2004
  %a_attr103.us.us = getelementptr inbounds %struct.atom_t, ptr %33, i64 %indvars.iv257, i32 2, !dbg !2133
  %34 = load i32, ptr %a_attr103.us.us, align 8, !dbg !2133, !tbaa !796
  %and104.us.us = and i32 %34, 1, !dbg !2135
  %tobool105.not.us.us = icmp eq i32 %and104.us.us, 0, !dbg !2135
  br i1 %tobool105.not.us.us, label %for.inc115.us.us, label %if.then106.us.us, !dbg !2136

if.then106.us.us:                                 ; preds = %for.body99.us.us
  %arrayidx102.us.us = getelementptr inbounds %struct.atom_t, ptr %33, i64 %indvars.iv257, !dbg !2137
  call void @llvm.dbg.value(metadata ptr %arrayidx102.us.us, metadata !1995, metadata !DIExpression()), !dbg !2004
  %35 = load ptr, ptr %r_resname.us, align 8, !dbg !2138, !tbaa !708
  %36 = load ptr, ptr %arrayidx84.us.us, align 8, !dbg !2140, !tbaa !490
  %37 = load ptr, ptr %r_resname109.us.us, align 8, !dbg !2141, !tbaa !708
  %38 = load ptr, ptr %arrayidx102.us.us, align 8, !dbg !2142, !tbaa !490
  call void @llvm.dbg.value(metadata ptr %arrayidx84.us.us, metadata !2143, metadata !DIExpression()) #19, !dbg !2152
  call void @llvm.dbg.value(metadata ptr %arrayidx102.us.us, metadata !2148, metadata !DIExpression()) #19, !dbg !2152
  %39 = load double, ptr %a_pos.i.us.us, align 8, !dbg !2154, !tbaa !670
  %a_pos1.i.us.us = getelementptr inbounds %struct.atom_t, ptr %33, i64 %indvars.iv257, i32 17, !dbg !2155
  %40 = load double, ptr %a_pos1.i.us.us, align 8, !dbg !2156, !tbaa !670
  %sub.i.us.us = fsub double %39, %40, !dbg !2157
  call void @llvm.dbg.value(metadata double %sub.i.us.us, metadata !2149, metadata !DIExpression()) #19, !dbg !2152
  %41 = load double, ptr %arrayidx4.i.us.us, align 8, !dbg !2158, !tbaa !670
  %arrayidx6.i.us.us = getelementptr inbounds %struct.atom_t, ptr %33, i64 %indvars.iv257, i32 17, i64 1, !dbg !2159
  %42 = load double, ptr %arrayidx6.i.us.us, align 8, !dbg !2159, !tbaa !670
  %sub7.i.us.us = fsub double %41, %42, !dbg !2160
  call void @llvm.dbg.value(metadata double %sub7.i.us.us, metadata !2150, metadata !DIExpression()) #19, !dbg !2152
  %43 = load double, ptr %arrayidx9.i.us.us, align 8, !dbg !2161, !tbaa !670
  %arrayidx11.i.us.us = getelementptr inbounds %struct.atom_t, ptr %33, i64 %indvars.iv257, i32 17, i64 2, !dbg !2162
  %44 = load double, ptr %arrayidx11.i.us.us, align 8, !dbg !2162, !tbaa !670
  %sub12.i.us.us = fsub double %43, %44, !dbg !2163
  call void @llvm.dbg.value(metadata double %sub12.i.us.us, metadata !2151, metadata !DIExpression()) #19, !dbg !2152
  %mul13.i.us.us = fmul double %sub7.i.us.us, %sub7.i.us.us, !dbg !2164
  %45 = tail call double @llvm.fmuladd.f64(double %sub.i.us.us, double %sub.i.us.us, double %mul13.i.us.us) #19, !dbg !2165
  %46 = tail call double @llvm.fmuladd.f64(double %sub12.i.us.us, double %sub12.i.us.us, double %45) #19, !dbg !2166
  %call.i.us.us = tail call double @sqrt(double noundef %46) #19, !dbg !2167
  %call112.us.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call65, ptr noundef nonnull @.str.19, i32 noundef %26, ptr noundef %35, ptr noundef %36, i32 noundef %52, ptr noundef %37, ptr noundef %38, double noundef %call.i.us.us), !dbg !2168
  %inc113.us.us = add nsw i32 %cnt.3229.us.us, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %inc113.us.us, metadata !2002, metadata !DIExpression()), !dbg !2004
  %.pre = load i32, ptr %r_natoms96.us.us, align 8, !dbg !2120, !tbaa !716
  br label %for.inc115.us.us, !dbg !2170

for.inc115.us.us:                                 ; preds = %if.then106.us.us, %for.body99.us.us
  %47 = phi i32 [ %.pre, %if.then106.us.us ], [ %32, %for.body99.us.us ], !dbg !2120
  %cnt.4.us.us = phi i32 [ %inc113.us.us, %if.then106.us.us ], [ %cnt.3229.us.us, %for.body99.us.us ], !dbg !2126
  call void @llvm.dbg.value(metadata i32 %cnt.4.us.us, metadata !2002, metadata !DIExpression()), !dbg !2004
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next258, metadata !2000, metadata !DIExpression()), !dbg !2004
  %48 = sext i32 %47 to i64, !dbg !2123
  %cmp97.us.us = icmp slt i64 %indvars.iv.next258, %48, !dbg !2123
  br i1 %cmp97.us.us, label %for.body99.us.us, label %for.inc118.us.us, !dbg !2124, !llvm.loop !2172

for.inc122.us.us.loopexit:                        ; preds = %for.inc118.us.us
  %.pre275 = load i32, ptr %r_natoms78.us, align 8, !dbg !2099, !tbaa !716
  br label %for.inc122.us.us, !dbg !2174

for.inc122.us.us:                                 ; preds = %for.inc122.us.us.loopexit, %for.body81.us.us
  %49 = phi i32 [ %27, %for.body81.us.us ], [ %.pre275, %for.inc122.us.us.loopexit ], !dbg !2099
  %cnt.5.us.us = phi i32 [ %cnt.1238.us.us, %for.body81.us.us ], [ %cnt.3.lcssa.us.us, %for.inc122.us.us.loopexit ], !dbg !2105
  call void @llvm.dbg.value(metadata i32 %cnt.5.us.us, metadata !2002, metadata !DIExpression()), !dbg !2004
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next267, metadata !1999, metadata !DIExpression()), !dbg !2004
  %50 = sext i32 %49 to i64, !dbg !2102
  %cmp79.us.us = icmp slt i64 %indvars.iv.next267, %50, !dbg !2102
  br i1 %cmp79.us.us, label %for.body81.us.us, label %for.inc125.us, !dbg !2103, !llvm.loop !2175

for.cond89.preheader.us.us:                       ; preds = %for.body81.us.us
  call void @llvm.dbg.value(metadata i32 %cnt.1238.us.us, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 0, metadata !1998, metadata !DIExpression()), !dbg !2004
  %a_pos.i.us.us = getelementptr inbounds %struct.atom_t, ptr %28, i64 %indvars.iv266, i32 17
  %arrayidx4.i.us.us = getelementptr inbounds %struct.atom_t, ptr %28, i64 %indvars.iv266, i32 17, i64 1
  %arrayidx9.i.us.us = getelementptr inbounds %struct.atom_t, ptr %28, i64 %indvars.iv266, i32 17, i64 2
  br label %for.body92.us.us, !dbg !2128

for.body99.lr.ph.us.us:                           ; preds = %for.body92.us.us
  %r_atoms100.us.us = getelementptr inbounds %struct.residue_t, ptr %30, i64 0, i32 17
  %51 = add nuw nsw i64 %indvars.iv260, 1
  %r_resname109.us.us = getelementptr inbounds %struct.residue_t, ptr %30, i64 0, i32 4
  %52 = trunc i64 %51 to i32
  br label %for.body99.us.us, !dbg !2124

if.then68:                                        ; preds = %for.end64
  %53 = load ptr, ptr @stderr, align 8, !dbg !2177, !tbaa !374
  %call69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.18, ptr noundef %fname) #20, !dbg !2179
  br label %if.then129, !dbg !2180

if.then129:                                       ; preds = %for.inc125.us, %if.then68, %for.cond71.preheader
  %cnt.6 = phi i32 [ 0, %if.then68 ], [ 0, %for.cond71.preheader ], [ %cnt.1.lcssa.us, %for.inc125.us ], !dbg !2004
  call void @llvm.dbg.value(metadata i32 %cnt.6, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.label(metadata !2003), !dbg !2076
  tail call void @free(ptr noundef nonnull %call38) #19, !dbg !2181
  br label %cleanup, !dbg !2181

cleanup:                                          ; preds = %clean_up.thread, %if.then129, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cnt.6, %if.then129 ], [ 0, %clean_up.thread ], !dbg !2004
  ret i32 %retval.0, !dbg !2183
}

declare !dbg !2184 void @select_atoms(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @putmatrix(ptr noundef %fname, ptr nocapture noundef readonly %mat) local_unnamed_addr #6 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata ptr %fname, metadata !2193, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata ptr %mat, metadata !2194, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata ptr null, metadata !2195, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 0, metadata !2198, metadata !DIExpression()), !dbg !2200
  %cmp = icmp eq ptr %fname, null, !dbg !2201
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2203

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %fname, align 1, !dbg !2204, !tbaa !368
  %cmp1 = icmp eq i8 %0, 0, !dbg !2205
  br i1 %cmp1, label %if.then, label %if.else, !dbg !2206

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !2207, !tbaa !374
  %2 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %1) #20, !dbg !2209
  call void @llvm.dbg.value(metadata i32 1, metadata !2198, metadata !DIExpression()), !dbg !2200
  br label %if.end32, !dbg !2210

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strcmp(ptr noundef nonnull %fname, ptr noundef nonnull dereferenceable(2) @.str) #18, !dbg !2211
  %tobool.not = icmp eq i32 %call3, 0, !dbg !2211
  br i1 %tobool.not, label %if.then4, label %if.else5, !dbg !2213

if.then4:                                         ; preds = %if.else
  %3 = load ptr, ptr @stdout, align 8, !dbg !2214, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %3, metadata !2195, metadata !DIExpression()), !dbg !2200
  br label %if.end12, !dbg !2215

if.else5:                                         ; preds = %if.else
  %call6 = tail call ptr @fopen(ptr noundef nonnull %fname, ptr noundef nonnull @.str.9), !dbg !2216
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2195, metadata !DIExpression()), !dbg !2200
  %cmp7 = icmp eq ptr %call6, null, !dbg !2218
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !2219

if.then9:                                         ; preds = %if.else5
  %4 = load ptr, ptr @stderr, align 8, !dbg !2220, !tbaa !374
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef nonnull %fname) #20, !dbg !2222
  call void @llvm.dbg.value(metadata i32 1, metadata !2198, metadata !DIExpression()), !dbg !2200
  br label %if.end32, !dbg !2223

if.end12:                                         ; preds = %if.then4, %if.else5
  %fp.0 = phi ptr [ %call6, %if.else5 ], [ %3, %if.then4 ], !dbg !2224
  call void @llvm.dbg.value(metadata ptr %fp.0, metadata !2195, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 0, metadata !2196, metadata !DIExpression()), !dbg !2200
  br label %for.cond15.preheader, !dbg !2225

for.cond15.preheader:                             ; preds = %if.end12, %for.end
  %indvars.iv54 = phi i64 [ 0, %if.end12 ], [ %indvars.iv.next55, %for.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv54, metadata !2196, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 0, metadata !2197, metadata !DIExpression()), !dbg !2200
  br label %for.body18, !dbg !2227

for.body18:                                       ; preds = %for.cond15.preheader, %for.body18
  %indvars.iv = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next, %for.body18 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2197, metadata !DIExpression()), !dbg !2200
  %arrayidx20 = getelementptr inbounds [4 x double], ptr %mat, i64 %indvars.iv54, i64 %indvars.iv, !dbg !2231
  %5 = load double, ptr %arrayidx20, align 8, !dbg !2231, !tbaa !670
  %call21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fp.0, ptr noundef nonnull @.str.22, double noundef %5), !dbg !2233
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2197, metadata !DIExpression()), !dbg !2200
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2235
  br i1 %exitcond.not, label %for.end, label %for.body18, !dbg !2227, !llvm.loop !2236

for.end:                                          ; preds = %for.body18
  %fputc = tail call i32 @fputc(i32 10, ptr %fp.0), !dbg !2238
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next55, metadata !2196, metadata !DIExpression()), !dbg !2200
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, 4, !dbg !2240
  br i1 %exitcond57.not, label %CLEAN_UP, label %for.cond15.preheader, !dbg !2225, !llvm.loop !2241

CLEAN_UP:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata ptr %fp.0, metadata !2195, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.label(metadata !2199), !dbg !2243
  %cmp26.not = icmp eq ptr %fp.0, null, !dbg !2244
  %6 = load ptr, ptr @stdout, align 8
  %cmp28.not = icmp eq ptr %fp.0, %6
  %or.cond = select i1 %cmp26.not, i1 true, i1 %cmp28.not, !dbg !2246
  br i1 %or.cond, label %if.end32, label %if.then30, !dbg !2246

if.then30:                                        ; preds = %CLEAN_UP
  %call31 = tail call i32 @fclose(ptr noundef nonnull %fp.0), !dbg !2247
  br label %if.end32, !dbg !2247

if.end32:                                         ; preds = %if.then9, %if.then, %if.then30, %CLEAN_UP
  %err.050 = phi i32 [ 0, %if.then30 ], [ 0, %CLEAN_UP ], [ 1, %if.then ], [ 1, %if.then9 ]
  ret i32 %err.050, !dbg !2248
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @initres() unnamed_addr #0 !dbg !2249 {
entry:
  tail call void @NAB_initres(ptr noundef nonnull @res, i32 noundef 0) #19, !dbg !2250
  %0 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !dbg !2251, !tbaa !708
  %cmp = icmp eq ptr %0, null, !dbg !2253
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2254

if.then:                                          ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #21, !dbg !2255
  store ptr %call, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !dbg !2257, !tbaa !708
  %cmp1 = icmp eq ptr %call, null, !dbg !2258
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2260

if.then2:                                         ; preds = %if.then
  %1 = load ptr, ptr @stderr, align 8, !dbg !2261, !tbaa !374
  %2 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 40, i64 1, ptr %1) #20, !dbg !2263
  tail call void @exit(i32 noundef 1) #23, !dbg !2264
  unreachable, !dbg !2264

if.end4:                                          ; preds = %if.then, %entry
  %3 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !dbg !2265, !tbaa !711
  %cmp5 = icmp eq ptr %3, null, !dbg !2267
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !2268

if.then6:                                         ; preds = %if.end4
  %call7 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #21, !dbg !2269
  store ptr %call7, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !dbg !2271, !tbaa !711
  %cmp8 = icmp eq ptr %call7, null, !dbg !2272
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !2274

if.then9:                                         ; preds = %if.then6
  %4 = load ptr, ptr @stderr, align 8, !dbg !2275, !tbaa !374
  %5 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 38, i64 1, ptr %4) #20, !dbg !2277
  tail call void @exit(i32 noundef 1) #23, !dbg !2278
  unreachable, !dbg !2278

if.end12:                                         ; preds = %if.then6, %if.end4
  %6 = load i32, ptr @n_atab, align 4, !dbg !2279, !tbaa !524
  store i32 %6, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !dbg !2280, !tbaa !716
  store ptr @atab, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !dbg !2281, !tbaa !1457
  ret void, !dbg !2282
}

declare !dbg !2283 ptr @newmolecule() local_unnamed_addr #4

declare !dbg !2286 ptr @ggets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @makebonds() unnamed_addr #6 !dbg !2289 {
entry:
  call void @llvm.dbg.value(metadata ptr @res, metadata !2293, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 0, metadata !2294, metadata !DIExpression()), !dbg !2301
  %0 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !716
  call void @llvm.dbg.value(metadata i32 0, metadata !2294, metadata !DIExpression()), !dbg !2301
  %cmp4 = icmp sgt i32 %0, 0, !dbg !2302
  br i1 %cmp4, label %for.body.lr.ph, label %for.end130, !dbg !2305

for.body.lr.ph:                                   ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !tbaa !1457
  %wide.trip.count = zext i32 %0 to i64, !dbg !2302
  br label %for.body, !dbg !2305

for.cond1.preheader:                              ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !2294, metadata !DIExpression()), !dbg !2301
  %cmp310 = icmp sgt i32 %0, 1, !dbg !2306
  br i1 %cmp310, label %for.body4.lr.ph, label %for.end130, !dbg !2309

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %call = tail call ptr @__ctype_b_loc() #24, !dbg !2301
  br label %for.body4, !dbg !2309

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2294, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %indvars.iv), metadata !2296, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2301
  %a_nconnect = getelementptr inbounds %struct.atom_t, ptr %1, i64 %indvars.iv, i32 3, !dbg !2310
  store i32 0, ptr %a_nconnect, align 4, !dbg !2312, !tbaa !2313
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2294, metadata !DIExpression()), !dbg !2301
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2302
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body, !dbg !2305, !llvm.loop !2315

for.cond1.loopexit:                               ; preds = %for.inc125, %if.end
  %2 = phi i32 [ %4, %if.end ], [ %34, %for.inc125 ], !dbg !2317
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next19, metadata !2294, metadata !DIExpression()), !dbg !2301
  %sub = add nsw i32 %2, -1, !dbg !2318
  %3 = sext i32 %sub to i64, !dbg !2306
  %cmp3 = icmp slt i64 %indvars.iv.next19, %3, !dbg !2306
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !2309
  br i1 %cmp3, label %for.body4, label %for.end130, !dbg !2309, !llvm.loop !2319

for.body4:                                        ; preds = %for.body4.lr.ph, %for.cond1.loopexit
  %4 = phi i32 [ %0, %for.body4.lr.ph ], [ %2, %for.cond1.loopexit ]
  %indvars.iv18 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next19, %for.cond1.loopexit ]
  %indvars.iv13 = phi i64 [ 1, %for.body4.lr.ph ], [ %indvars.iv.next14, %for.cond1.loopexit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv18, metadata !2294, metadata !DIExpression()), !dbg !2301
  %5 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !dbg !2321, !tbaa !1457
  %arrayidx7 = getelementptr inbounds %struct.atom_t, ptr %5, i64 %indvars.iv18, !dbg !2323
  call void @llvm.dbg.value(metadata ptr %arrayidx7, metadata !2296, metadata !DIExpression()), !dbg !2301
  %6 = load ptr, ptr %call, align 8, !dbg !2324, !tbaa !374
  %7 = load ptr, ptr %arrayidx7, align 8, !dbg !2324, !tbaa !490
  %8 = load i8, ptr %7, align 1, !dbg !2324, !tbaa !368
  %idxprom8 = sext i8 %8 to i64, !dbg !2324
  %arrayidx9 = getelementptr inbounds i16, ptr %6, i64 %idxprom8, !dbg !2324
  %9 = load i16, ptr %arrayidx9, align 2, !dbg !2324, !tbaa !2326
  %10 = and i16 %9, 2048, !dbg !2324
  %tobool.not = icmp eq i16 %10, 0, !dbg !2324
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2328

if.then:                                          ; preds = %for.body4
  %arrayidx12 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2329
  %11 = load i8, ptr %arrayidx12, align 1, !dbg !2329, !tbaa !368
  call void @llvm.dbg.value(metadata i1 undef, metadata !2298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2301
  br label %if.end, !dbg !2330

if.end:                                           ; preds = %for.body4, %if.then
  %ih1.0.in.in.in = phi i8 [ %11, %if.then ], [ %8, %for.body4 ]
  %ih1.0.in.in = and i8 %ih1.0.in.in.in, -33, !dbg !2331
  %ih1.0.in = icmp eq i8 %ih1.0.in.in, 72, !dbg !2331
  call void @llvm.dbg.value(metadata i1 %ih1.0.in, metadata !2298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2301
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next19, metadata !2295, metadata !DIExpression()), !dbg !2301
  %12 = sext i32 %4 to i64, !dbg !2334
  %cmp346 = icmp slt i64 %indvars.iv.next19, %12, !dbg !2334
  br i1 %cmp346, label %for.body36.lr.ph, label %for.cond1.loopexit, !dbg !2336

for.body36.lr.ph:                                 ; preds = %if.end
  %a_pos.i = getelementptr inbounds %struct.atom_t, ptr %5, i64 %indvars.iv18, i32 17
  %arrayidx4.i = getelementptr inbounds %struct.atom_t, ptr %5, i64 %indvars.iv18, i32 17, i64 1
  %arrayidx9.i = getelementptr inbounds %struct.atom_t, ptr %5, i64 %indvars.iv18, i32 17, i64 2
  %a_nconnect104 = getelementptr inbounds %struct.atom_t, ptr %5, i64 %indvars.iv18, i32 3
  %.sink = trunc i64 %indvars.iv18 to i32
  br label %for.body36, !dbg !2336

for.body36:                                       ; preds = %for.inc125.for.body36_crit_edge, %for.body36.lr.ph
  %13 = phi ptr [ %6, %for.body36.lr.ph ], [ %.pre21, %for.inc125.for.body36_crit_edge ], !dbg !2337
  %14 = phi ptr [ %5, %for.body36.lr.ph ], [ %.pre, %for.inc125.for.body36_crit_edge ], !dbg !2340
  %indvars.iv15 = phi i64 [ %indvars.iv13, %for.body36.lr.ph ], [ %indvars.iv.next16, %for.inc125.for.body36_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv15, metadata !2295, metadata !DIExpression()), !dbg !2301
  %arrayidx39 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %indvars.iv15, !dbg !2341
  call void @llvm.dbg.value(metadata ptr %arrayidx39, metadata !2297, metadata !DIExpression()), !dbg !2301
  %15 = load ptr, ptr %arrayidx39, align 8, !dbg !2337, !tbaa !490
  %16 = load i8, ptr %15, align 1, !dbg !2337, !tbaa !368
  %idxprom43 = sext i8 %16 to i64, !dbg !2337
  %arrayidx44 = getelementptr inbounds i16, ptr %13, i64 %idxprom43, !dbg !2337
  %17 = load i16, ptr %arrayidx44, align 2, !dbg !2337, !tbaa !2326
  %18 = and i16 %17, 2048, !dbg !2337
  %tobool47.not = icmp eq i16 %18, 0, !dbg !2337
  br i1 %tobool47.not, label %if.end74, label %if.then48, !dbg !2342

if.then48:                                        ; preds = %for.body36
  %arrayidx50 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !2343
  %19 = load i8, ptr %arrayidx50, align 1, !dbg !2343, !tbaa !368
  call void @llvm.dbg.value(metadata i1 undef, metadata !2299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2301
  br label %if.end74, !dbg !2344

if.end74:                                         ; preds = %for.body36, %if.then48
  %ih2.0.in.in.in = phi i8 [ %19, %if.then48 ], [ %16, %for.body36 ]
  %ih2.0.in.in = and i8 %ih2.0.in.in.in, -33, !dbg !2345
  %ih2.0.in = icmp eq i8 %ih2.0.in.in, 72, !dbg !2345
  call void @llvm.dbg.value(metadata i1 %ih2.0.in, metadata !2299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2301
  call void @llvm.dbg.value(metadata ptr %arrayidx7, metadata !2143, metadata !DIExpression()) #19, !dbg !2346
  call void @llvm.dbg.value(metadata ptr %arrayidx39, metadata !2148, metadata !DIExpression()) #19, !dbg !2346
  %20 = load double, ptr %a_pos.i, align 8, !dbg !2348, !tbaa !670
  %a_pos1.i = getelementptr inbounds %struct.atom_t, ptr %14, i64 %indvars.iv15, i32 17, !dbg !2349
  %21 = load double, ptr %a_pos1.i, align 8, !dbg !2350, !tbaa !670
  %sub.i = fsub double %20, %21, !dbg !2351
  call void @llvm.dbg.value(metadata double %sub.i, metadata !2149, metadata !DIExpression()) #19, !dbg !2346
  %22 = load double, ptr %arrayidx4.i, align 8, !dbg !2352, !tbaa !670
  %arrayidx6.i = getelementptr inbounds %struct.atom_t, ptr %14, i64 %indvars.iv15, i32 17, i64 1, !dbg !2353
  %23 = load double, ptr %arrayidx6.i, align 8, !dbg !2353, !tbaa !670
  %sub7.i = fsub double %22, %23, !dbg !2354
  call void @llvm.dbg.value(metadata double %sub7.i, metadata !2150, metadata !DIExpression()) #19, !dbg !2346
  %24 = load double, ptr %arrayidx9.i, align 8, !dbg !2355, !tbaa !670
  %arrayidx11.i = getelementptr inbounds %struct.atom_t, ptr %14, i64 %indvars.iv15, i32 17, i64 2, !dbg !2356
  %25 = load double, ptr %arrayidx11.i, align 8, !dbg !2356, !tbaa !670
  %sub12.i = fsub double %24, %25, !dbg !2357
  call void @llvm.dbg.value(metadata double %sub12.i, metadata !2151, metadata !DIExpression()) #19, !dbg !2346
  %mul13.i = fmul double %sub7.i, %sub7.i, !dbg !2358
  %26 = tail call double @llvm.fmuladd.f64(double %sub.i, double %sub.i, double %mul13.i) #19, !dbg !2359
  %27 = tail call double @llvm.fmuladd.f64(double %sub12.i, double %sub12.i, double %26) #19, !dbg !2360
  %call.i = tail call double @sqrt(double noundef %27) #19, !dbg !2361
  call void @llvm.dbg.value(metadata double %call.i, metadata !2300, metadata !DIExpression()), !dbg !2301
  %or.cond = select i1 %ih1.0.in, i1 true, i1 %ih2.0.in, !dbg !2362
  br i1 %or.cond, label %if.then78, label %if.else100, !dbg !2362

if.then78:                                        ; preds = %if.end74
  %cmp79 = fcmp ugt double %call.i, 1.200000e+00, !dbg !2364
  br i1 %cmp79, label %for.inc125, label %if.then81, !dbg !2367

if.then81:                                        ; preds = %if.then78
  %28 = load i32, ptr %a_nconnect104, align 4, !dbg !2368, !tbaa !2313
  %cmp83 = icmp slt i32 %28, 8, !dbg !2371
  br i1 %cmp83, label %land.lhs.true, label %for.inc125, !dbg !2372

land.lhs.true:                                    ; preds = %if.then81
  %a_nconnect85 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %indvars.iv15, i32 3, !dbg !2373
  %29 = load i32, ptr %a_nconnect85, align 4, !dbg !2373, !tbaa !2313
  %cmp86 = icmp slt i32 %29, 8, !dbg !2374
  br i1 %cmp86, label %for.inc125.sink.split, label %for.inc125, !dbg !2375

if.else100:                                       ; preds = %if.end74
  %cmp101 = fcmp ugt double %call.i, 1.850000e+00, !dbg !2376
  br i1 %cmp101, label %for.inc125, label %if.then103, !dbg !2378

if.then103:                                       ; preds = %if.else100
  %30 = load i32, ptr %a_nconnect104, align 4, !dbg !2379, !tbaa !2313
  %cmp105 = icmp slt i32 %30, 8, !dbg !2382
  br i1 %cmp105, label %land.lhs.true107, label %for.inc125, !dbg !2383

land.lhs.true107:                                 ; preds = %if.then103
  %a_nconnect108 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %indvars.iv15, i32 3, !dbg !2384
  %31 = load i32, ptr %a_nconnect108, align 4, !dbg !2384, !tbaa !2313
  %cmp109 = icmp slt i32 %31, 8, !dbg !2385
  br i1 %cmp109, label %for.inc125.sink.split, label %for.inc125, !dbg !2386

for.inc125.sink.split:                            ; preds = %land.lhs.true107, %land.lhs.true
  %.sink27 = phi i32 [ %28, %land.lhs.true ], [ %30, %land.lhs.true107 ]
  %a_nconnect108.sink = phi ptr [ %a_nconnect85, %land.lhs.true ], [ %a_nconnect108, %land.lhs.true107 ]
  %inc114 = add nsw i32 %.sink27, 1, !dbg !2387
  store i32 %inc114, ptr %a_nconnect104, align 4, !dbg !2387, !tbaa !2313
  %idxprom115 = sext i32 %.sink27 to i64, !dbg !2387
  %arrayidx116 = getelementptr inbounds %struct.atom_t, ptr %5, i64 %indvars.iv18, i32 4, i64 %idxprom115, !dbg !2387
  %32 = trunc i64 %indvars.iv15 to i32, !dbg !2387
  store i32 %32, ptr %arrayidx116, align 4, !dbg !2387, !tbaa !524
  %33 = load i32, ptr %a_nconnect108.sink, align 4, !dbg !2387, !tbaa !2313
  %inc95 = add nsw i32 %33, 1, !dbg !2387
  store i32 %inc95, ptr %a_nconnect108.sink, align 4, !dbg !2387, !tbaa !2313
  %idxprom96 = sext i32 %33 to i64, !dbg !2387
  %arrayidx97 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %indvars.iv15, i32 4, i64 %idxprom96, !dbg !2387
  store i32 %.sink, ptr %arrayidx97, align 4, !dbg !2387, !tbaa !524
  br label %for.inc125, !dbg !2388

for.inc125:                                       ; preds = %for.inc125.sink.split, %if.then81, %land.lhs.true, %if.then78, %if.then103, %land.lhs.true107, %if.else100
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next16, metadata !2295, metadata !DIExpression()), !dbg !2301
  %34 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !dbg !2389, !tbaa !716
  %35 = trunc i64 %indvars.iv.next16 to i32, !dbg !2334
  %cmp34 = icmp sgt i32 %34, %35, !dbg !2334
  br i1 %cmp34, label %for.inc125.for.body36_crit_edge, label %for.cond1.loopexit, !dbg !2336, !llvm.loop !2390

for.inc125.for.body36_crit_edge:                  ; preds = %for.inc125
  %.pre = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !dbg !2340, !tbaa !1457
  %.pre21 = load ptr, ptr %call, align 8, !dbg !2337, !tbaa !374
  br label %for.body36, !dbg !2336

for.end130:                                       ; preds = %for.cond1.loopexit, %entry, %for.cond1.preheader
  ret void, !dbg !2392
}

declare !dbg !2393 i32 @addresidue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare !dbg !2396 i32 @addstrand(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2399 void @NAB_initatom(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2402 void @NAB_initres(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { argmemonly nofree nounwind willreturn }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { cold nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!345, !346, !347, !348, !349, !350}
!llvm.ident = !{!351}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mat", scope: !2, file: !3, line: 164, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "getmatrix", scope: !3, file: !3, line: 159, type: !4, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !273)
!3 = !DIFile(filename: "apps/544.nab_r/src/molio.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cdb33686aa1c4f7e8add621a7676e5be")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !13}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX_T", file: !8, line: 14, baseType: !9)
!8 = !DIFile(filename: "apps/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e6947e1b068a9350a45ab4ee56d7a2de")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, elements: !11)
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !12}
!12 = !DISubrange(count: 4)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !17, retainedTypes: !34, globals: !255, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/molio.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r", checksumkind: CSK_MD5, checksum: "cdb33686aa1c4f7e8add621a7676e5be")
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
!327 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
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
!348 = !{i32 7, !"PIC Level", i32 2}
!349 = !{i32 7, !"PIE Level", i32 2}
!350 = !{i32 7, !"uwtable", i32 2}
!351 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!352 = distinct !DISubprogram(name: "getpdb", scope: !3, file: !3, line: 121, type: !353, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !357)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !13, !13}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !8, line: 126, baseType: !65)
!357 = !{!358, !359, !360, !361, !362}
!358 = !DILocalVariable(name: "fname", arg: 1, scope: !352, file: !3, line: 121, type: !13)
!359 = !DILocalVariable(name: "options", arg: 2, scope: !352, file: !3, line: 121, type: !13)
!360 = !DILocalVariable(name: "fp", scope: !352, file: !3, line: 123, type: !276)
!361 = !DILocalVariable(name: "mol", scope: !352, file: !3, line: 124, type: !355)
!362 = !DILocalVariable(name: "ier", scope: !352, file: !3, line: 125, type: !37)
!363 = !DILocation(line: 0, scope: !352)
!364 = !DILocation(line: 127, column: 10, scope: !365)
!365 = distinct !DILexicalBlock(scope: !352, file: !3, line: 127, column: 9)
!366 = !DILocation(line: 127, column: 16, scope: !365)
!367 = !DILocation(line: 127, column: 20, scope: !365)
!368 = !{!369, !369, i64 0}
!369 = !{!"omnipotent char", !370, i64 0}
!370 = !{!"Simple C/C++ TBAA"}
!371 = !DILocation(line: 127, column: 9, scope: !352)
!372 = !DILocation(line: 128, column: 14, scope: !373)
!373 = distinct !DILexicalBlock(scope: !365, file: !3, line: 127, column: 28)
!374 = !{!375, !375, i64 0}
!375 = !{!"any pointer", !369, i64 0}
!376 = !DILocation(line: 129, column: 5, scope: !373)
!377 = !DILocation(line: 129, column: 17, scope: !378)
!378 = distinct !DILexicalBlock(scope: !365, file: !3, line: 129, column: 16)
!379 = !DILocation(line: 129, column: 16, scope: !365)
!380 = !DILocation(line: 130, column: 14, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !3, line: 129, column: 37)
!382 = !DILocation(line: 131, column: 5, scope: !381)
!383 = !DILocation(line: 133, column: 13, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 133, column: 13)
!385 = distinct !DILexicalBlock(scope: !378, file: !3, line: 131, column: 12)
!386 = !DILocation(line: 133, column: 28, scope: !384)
!387 = !DILocation(line: 133, column: 13, scope: !385)
!388 = !DILocation(line: 134, column: 23, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 134, column: 17)
!390 = distinct !DILexicalBlock(scope: !384, file: !3, line: 133, column: 34)
!391 = !DILocation(line: 134, column: 42, scope: !389)
!392 = !DILocation(line: 134, column: 17, scope: !390)
!393 = !DILocation(line: 135, column: 25, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !3, line: 134, column: 51)
!395 = !DILocation(line: 135, column: 17, scope: !394)
!396 = !DILocation(line: 137, column: 13, scope: !394)
!397 = !DILocation(line: 0, scope: !385)
!398 = !DILocation(line: 139, column: 9, scope: !385)
!399 = !DILocation(line: 143, column: 13, scope: !400)
!400 = distinct !DILexicalBlock(scope: !385, file: !3, line: 143, column: 13)
!401 = !DILocation(line: 143, column: 28, scope: !400)
!402 = !DILocation(line: 143, column: 13, scope: !385)
!403 = !DILocation(line: 0, scope: !365)
!404 = !DILocalVariable(name: "fp", arg: 1, scope: !405, file: !3, line: 464, type: !276)
!405 = distinct !DISubprogram(name: "fgetpdb", scope: !3, file: !3, line: 464, type: !406, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!355, !276, !13}
!408 = !{!404, !409, !410, !411, !412, !413, !414, !415, !419, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !452}
!409 = !DILocalVariable(name: "options", arg: 2, scope: !405, file: !3, line: 464, type: !13)
!410 = !DILocalVariable(name: "mol", scope: !405, file: !3, line: 466, type: !355)
!411 = !DILocalVariable(name: "ap", scope: !405, file: !3, line: 467, type: !219)
!412 = !DILocalVariable(name: "l_cid", scope: !405, file: !3, line: 468, type: !37)
!413 = !DILocalVariable(name: "cid", scope: !405, file: !3, line: 468, type: !37)
!414 = !DILocalVariable(name: "nchains", scope: !405, file: !3, line: 469, type: !37)
!415 = !DILocalVariable(name: "line", scope: !405, file: !3, line: 470, type: !416)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 656, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 82)
!419 = !DILocalVariable(name: "sname", scope: !405, file: !3, line: 471, type: !420)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 10)
!423 = !DILocalVariable(name: "aname", scope: !405, file: !3, line: 472, type: !420)
!424 = !DILocalVariable(name: "rname", scope: !405, file: !3, line: 473, type: !420)
!425 = !DILocalVariable(name: "l_rname", scope: !405, file: !3, line: 473, type: !420)
!426 = !DILocalVariable(name: "rid", scope: !405, file: !3, line: 474, type: !420)
!427 = !DILocalVariable(name: "l_rid", scope: !405, file: !3, line: 474, type: !420)
!428 = !DILocalVariable(name: "field", scope: !405, file: !3, line: 475, type: !420)
!429 = !DILocalVariable(name: "np", scope: !405, file: !3, line: 476, type: !13)
!430 = !DILocalVariable(name: "np1", scope: !405, file: !3, line: 476, type: !13)
!431 = !DILocalVariable(name: "rnum", scope: !405, file: !3, line: 477, type: !37)
!432 = !DILocalVariable(name: "l_rnum", scope: !405, file: !3, line: 477, type: !37)
!433 = !DILocalVariable(name: "x", scope: !405, file: !3, line: 478, type: !10)
!434 = !DILocalVariable(name: "y", scope: !405, file: !3, line: 478, type: !10)
!435 = !DILocalVariable(name: "z", scope: !405, file: !3, line: 478, type: !10)
!436 = !DILocalVariable(name: "q", scope: !405, file: !3, line: 478, type: !10)
!437 = !DILocalVariable(name: "r", scope: !405, file: !3, line: 478, type: !10)
!438 = !DILocalVariable(name: "occ", scope: !405, file: !3, line: 478, type: !10)
!439 = !DILocalVariable(name: "bfact", scope: !405, file: !3, line: 478, type: !10)
!440 = !DILocalVariable(name: "i", scope: !405, file: !3, line: 479, type: !37)
!441 = !DILocalVariable(name: "temp", scope: !405, file: !3, line: 480, type: !14)
!442 = !DILocalVariable(name: "loptions", scope: !405, file: !3, line: 481, type: !335)
!443 = !DILocalVariable(name: "sp", scope: !444, file: !3, line: 661, type: !74)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 660, column: 17)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 639, column: 31)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 639, column: 17)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 512, column: 46)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 511, column: 13)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 496, column: 37)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 496, column: 5)
!451 = distinct !DILexicalBlock(scope: !405, file: !3, line: 496, column: 5)
!452 = !DILocalVariable(name: "spl", scope: !444, file: !3, line: 661, type: !74)
!453 = !DILocation(line: 0, scope: !405, inlinedAt: !454)
!454 = distinct !DILocation(line: 148, column: 11, scope: !352)
!455 = !DILocation(line: 470, column: 5, scope: !405, inlinedAt: !454)
!456 = !DILocation(line: 470, column: 10, scope: !405, inlinedAt: !454)
!457 = !DILocation(line: 471, column: 5, scope: !405, inlinedAt: !454)
!458 = !DILocation(line: 471, column: 10, scope: !405, inlinedAt: !454)
!459 = !DILocation(line: 472, column: 5, scope: !405, inlinedAt: !454)
!460 = !DILocation(line: 472, column: 10, scope: !405, inlinedAt: !454)
!461 = !DILocation(line: 473, column: 5, scope: !405, inlinedAt: !454)
!462 = !DILocation(line: 473, column: 10, scope: !405, inlinedAt: !454)
!463 = !DILocation(line: 473, column: 21, scope: !405, inlinedAt: !454)
!464 = !DILocation(line: 474, column: 5, scope: !405, inlinedAt: !454)
!465 = !DILocation(line: 474, column: 10, scope: !405, inlinedAt: !454)
!466 = !DILocation(line: 474, column: 19, scope: !405, inlinedAt: !454)
!467 = !DILocation(line: 475, column: 5, scope: !405, inlinedAt: !454)
!468 = !DILocation(line: 475, column: 10, scope: !405, inlinedAt: !454)
!469 = !DILocation(line: 477, column: 5, scope: !405, inlinedAt: !454)
!470 = !DILocation(line: 478, column: 5, scope: !405, inlinedAt: !454)
!471 = !DILocation(line: 481, column: 5, scope: !405, inlinedAt: !454)
!472 = !DILocation(line: 481, column: 10, scope: !405, inlinedAt: !454)
!473 = !DILocation(line: 483, column: 17, scope: !474, inlinedAt: !454)
!474 = distinct !DILexicalBlock(scope: !405, file: !3, line: 483, column: 9)
!475 = !DILocation(line: 483, column: 9, scope: !405, inlinedAt: !454)
!476 = !DILocation(line: 484, column: 19, scope: !474, inlinedAt: !454)
!477 = !DILocation(line: 484, column: 9, scope: !474, inlinedAt: !454)
!478 = !DILocation(line: 486, column: 9, scope: !474, inlinedAt: !454)
!479 = !DILocation(line: 488, column: 5, scope: !405, inlinedAt: !454)
!480 = !DILocation(line: 778, column: 10, scope: !481, inlinedAt: !482)
!481 = distinct !DILexicalBlock(scope: !258, file: !3, line: 778, column: 9)
!482 = distinct !DILocation(line: 489, column: 5, scope: !405, inlinedAt: !454)
!483 = !DILocation(line: 778, column: 9, scope: !258, inlinedAt: !482)
!484 = !DILocation(line: 0, scope: !258, inlinedAt: !482)
!485 = !DILocation(line: 781, column: 35, scope: !486, inlinedAt: !482)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 780, column: 54)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 780, column: 5)
!488 = distinct !DILexicalBlock(scope: !258, file: !3, line: 780, column: 5)
!489 = !DILocation(line: 781, column: 24, scope: !486, inlinedAt: !482)
!490 = !{!491, !375, i64 0}
!491 = !{!"atom_t", !375, i64 0, !375, i64 8, !492, i64 16, !492, i64 20, !369, i64 24, !375, i64 56, !493, i64 64, !493, i64 72, !493, i64 80, !493, i64 88, !375, i64 96, !492, i64 104, !493, i64 112, !493, i64 120, !492, i64 128, !492, i64 132, !375, i64 136, !369, i64 144, !493, i64 168}
!492 = !{!"int", !369, i64 0}
!493 = !{!"double", !369, i64 0}
!494 = !DILocation(line: 782, column: 28, scope: !495, inlinedAt: !482)
!495 = distinct !DILexicalBlock(scope: !486, file: !3, line: 782, column: 13)
!496 = !DILocation(line: 782, column: 13, scope: !486, inlinedAt: !482)
!497 = !DILocation(line: 783, column: 21, scope: !498, inlinedAt: !482)
!498 = distinct !DILexicalBlock(scope: !495, file: !3, line: 782, column: 37)
!499 = !DILocation(line: 783, column: 13, scope: !498, inlinedAt: !482)
!500 = !DILocation(line: 784, column: 13, scope: !498, inlinedAt: !482)
!501 = !DILocation(line: 786, column: 25, scope: !486, inlinedAt: !482)
!502 = !DILocation(line: 787, column: 13, scope: !486, inlinedAt: !482)
!503 = !DILocation(line: 787, column: 24, scope: !486, inlinedAt: !482)
!504 = !{!491, !375, i64 8}
!505 = !DILocation(line: 788, column: 13, scope: !486, inlinedAt: !482)
!506 = !DILocation(line: 788, column: 23, scope: !486, inlinedAt: !482)
!507 = !{!491, !375, i64 96}
!508 = !DILocation(line: 789, column: 13, scope: !486, inlinedAt: !482)
!509 = !DILocation(line: 789, column: 24, scope: !486, inlinedAt: !482)
!510 = !{!491, !375, i64 136}
!511 = !DILocation(line: 780, column: 44, scope: !487, inlinedAt: !482)
!512 = !DILocation(line: 780, column: 50, scope: !487, inlinedAt: !482)
!513 = !DILocation(line: 780, column: 30, scope: !487, inlinedAt: !482)
!514 = !DILocation(line: 780, column: 5, scope: !488, inlinedAt: !482)
!515 = distinct !{!515, !514, !516, !517, !518}
!516 = !DILocation(line: 790, column: 5, scope: !488, inlinedAt: !482)
!517 = !{!"llvm.loop.mustprogress"}
!518 = !{!"llvm.loop.unroll.disable"}
!519 = !DILocation(line: 791, column: 10, scope: !258, inlinedAt: !482)
!520 = !DILocation(line: 792, column: 1, scope: !258, inlinedAt: !482)
!521 = !DILocation(line: 491, column: 11, scope: !405, inlinedAt: !454)
!522 = !DILocation(line: 494, column: 14, scope: !405, inlinedAt: !454)
!523 = !DILocation(line: 496, column: 30, scope: !451, inlinedAt: !454)
!524 = !{!492, !492, i64 0}
!525 = !DILocation(line: 503, column: 13, scope: !526, inlinedAt: !454)
!526 = distinct !DILexicalBlock(scope: !449, file: !3, line: 503, column: 13)
!527 = !DILocation(line: 503, column: 43, scope: !526, inlinedAt: !454)
!528 = !DILocation(line: 503, column: 13, scope: !449, inlinedAt: !454)
!529 = !DILocation(line: 507, column: 18, scope: !530, inlinedAt: !454)
!530 = distinct !DILexicalBlock(scope: !449, file: !3, line: 507, column: 9)
!531 = !DILocation(line: 507, column: 34, scope: !532, inlinedAt: !454)
!532 = distinct !DILexicalBlock(scope: !530, file: !3, line: 507, column: 9)
!533 = !DILocation(line: 507, column: 9, scope: !530, inlinedAt: !454)
!534 = !DILocation(line: 508, column: 21, scope: !532, inlinedAt: !454)
!535 = !DILocation(line: 509, column: 18, scope: !449, inlinedAt: !454)
!536 = !DILocation(line: 511, column: 13, scope: !448, inlinedAt: !454)
!537 = !DILocation(line: 511, column: 43, scope: !448, inlinedAt: !454)
!538 = !DILocation(line: 512, column: 13, scope: !448, inlinedAt: !454)
!539 = !DILocation(line: 512, column: 40, scope: !448, inlinedAt: !454)
!540 = !DILocation(line: 511, column: 13, scope: !449, inlinedAt: !454)
!541 = !DILocation(line: 513, column: 13, scope: !447, inlinedAt: !454)
!542 = !DILocation(line: 514, column: 33, scope: !447, inlinedAt: !454)
!543 = !DILocation(line: 516, column: 18, scope: !544, inlinedAt: !454)
!544 = distinct !DILexicalBlock(scope: !447, file: !3, line: 516, column: 13)
!545 = !DILocation(line: 0, scope: !544, inlinedAt: !454)
!546 = !DILocation(line: 516, column: 36, scope: !547, inlinedAt: !454)
!547 = distinct !DILexicalBlock(scope: !544, file: !3, line: 516, column: 13)
!548 = !DILocation(line: 516, column: 13, scope: !544, inlinedAt: !454)
!549 = !DILocation(line: 518, column: 25, scope: !550, inlinedAt: !454)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 517, column: 21)
!551 = distinct !DILexicalBlock(scope: !547, file: !3, line: 516, column: 47)
!552 = !DILocation(line: 518, column: 28, scope: !550, inlinedAt: !454)
!553 = !DILocation(line: 518, column: 21, scope: !550, inlinedAt: !454)
!554 = !DILocation(line: 516, column: 43, scope: !547, inlinedAt: !454)
!555 = !DILocation(line: 516, column: 13, scope: !547, inlinedAt: !454)
!556 = distinct !{!556, !548, !557, !517, !518}
!557 = !DILocation(line: 519, column: 13, scope: !544, inlinedAt: !454)
!558 = !DILocation(line: 520, column: 18, scope: !447, inlinedAt: !454)
!559 = !DILocation(line: 523, column: 17, scope: !560, inlinedAt: !454)
!560 = distinct !DILexicalBlock(scope: !447, file: !3, line: 523, column: 17)
!561 = !DILocation(line: 523, column: 33, scope: !560, inlinedAt: !454)
!562 = !DILocation(line: 525, column: 38, scope: !563, inlinedAt: !454)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 525, column: 17)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 525, column: 17)
!565 = distinct !DILexicalBlock(scope: !560, file: !3, line: 523, column: 72)
!566 = !DILocation(line: 525, column: 33, scope: !563, inlinedAt: !454)
!567 = !DILocation(line: 525, column: 31, scope: !563, inlinedAt: !454)
!568 = !DILocation(line: 525, column: 17, scope: !564, inlinedAt: !454)
!569 = !DILocation(line: 526, column: 40, scope: !563, inlinedAt: !454)
!570 = !DILocation(line: 526, column: 32, scope: !563, inlinedAt: !454)
!571 = !DILocation(line: 526, column: 21, scope: !563, inlinedAt: !454)
!572 = !DILocation(line: 526, column: 30, scope: !563, inlinedAt: !454)
!573 = distinct !{!573, !568, !574, !517, !518}
!574 = !DILocation(line: 526, column: 43, scope: !564, inlinedAt: !454)
!575 = !DILocation(line: 0, scope: !564, inlinedAt: !454)
!576 = !DILocation(line: 527, column: 17, scope: !565, inlinedAt: !454)
!577 = !DILocation(line: 527, column: 26, scope: !565, inlinedAt: !454)
!578 = !DILocation(line: 528, column: 13, scope: !565, inlinedAt: !454)
!579 = !DILocation(line: 531, column: 17, scope: !580, inlinedAt: !454)
!580 = distinct !DILexicalBlock(scope: !447, file: !3, line: 531, column: 17)
!581 = !DILocation(line: 531, column: 26, scope: !580, inlinedAt: !454)
!582 = !DILocation(line: 531, column: 17, scope: !447, inlinedAt: !454)
!583 = !DILocation(line: 532, column: 26, scope: !580, inlinedAt: !454)
!584 = !DILocation(line: 532, column: 17, scope: !580, inlinedAt: !454)
!585 = !DILocation(line: 533, column: 18, scope: !586, inlinedAt: !454)
!586 = distinct !DILexicalBlock(scope: !447, file: !3, line: 533, column: 17)
!587 = !DILocation(line: 533, column: 17, scope: !447, inlinedAt: !454)
!588 = !DILocation(line: 534, column: 17, scope: !586, inlinedAt: !454)
!589 = !DILocation(line: 536, column: 13, scope: !447, inlinedAt: !454)
!590 = !DILocation(line: 537, column: 33, scope: !447, inlinedAt: !454)
!591 = !DILocation(line: 538, column: 18, scope: !592, inlinedAt: !454)
!592 = distinct !DILexicalBlock(scope: !447, file: !3, line: 538, column: 13)
!593 = !DILocation(line: 0, scope: !592, inlinedAt: !454)
!594 = !DILocation(line: 538, column: 36, scope: !595, inlinedAt: !454)
!595 = distinct !DILexicalBlock(scope: !592, file: !3, line: 538, column: 13)
!596 = !DILocation(line: 538, column: 13, scope: !592, inlinedAt: !454)
!597 = !DILocation(line: 540, column: 25, scope: !598, inlinedAt: !454)
!598 = distinct !DILexicalBlock(scope: !599, file: !3, line: 539, column: 21)
!599 = distinct !DILexicalBlock(scope: !595, file: !3, line: 538, column: 47)
!600 = !DILocation(line: 540, column: 28, scope: !598, inlinedAt: !454)
!601 = !DILocation(line: 540, column: 21, scope: !598, inlinedAt: !454)
!602 = !DILocation(line: 538, column: 43, scope: !595, inlinedAt: !454)
!603 = !DILocation(line: 538, column: 13, scope: !595, inlinedAt: !454)
!604 = distinct !{!604, !596, !605, !517, !518}
!605 = !DILocation(line: 541, column: 13, scope: !592, inlinedAt: !454)
!606 = !DILocation(line: 542, column: 18, scope: !447, inlinedAt: !454)
!607 = !DILocation(line: 551, column: 18, scope: !608, inlinedAt: !454)
!608 = distinct !DILexicalBlock(scope: !447, file: !3, line: 551, column: 17)
!609 = !DILocation(line: 551, column: 17, scope: !447, inlinedAt: !454)
!610 = !DILocation(line: 552, column: 28, scope: !608, inlinedAt: !454)
!611 = !{!612, !492, i64 44}
!612 = !{!"residue_t", !375, i64 0, !492, i64 8, !492, i64 12, !492, i64 16, !375, i64 24, !375, i64 32, !492, i64 40, !492, i64 44, !492, i64 48, !375, i64 56, !375, i64 64, !492, i64 72, !375, i64 80, !492, i64 88, !375, i64 96, !492, i64 104, !375, i64 112, !375, i64 120}
!613 = !DILocation(line: 552, column: 17, scope: !608, inlinedAt: !454)
!614 = !DILocation(line: 553, column: 18, scope: !615, inlinedAt: !454)
!615 = distinct !DILexicalBlock(scope: !447, file: !3, line: 553, column: 17)
!616 = !DILocation(line: 553, column: 41, scope: !615, inlinedAt: !454)
!617 = !DILocation(line: 554, column: 17, scope: !615, inlinedAt: !454)
!618 = !DILocation(line: 557, column: 18, scope: !619, inlinedAt: !454)
!619 = distinct !DILexicalBlock(scope: !447, file: !3, line: 557, column: 17)
!620 = !DILocation(line: 557, column: 17, scope: !447, inlinedAt: !454)
!621 = !DILocation(line: 558, column: 17, scope: !619, inlinedAt: !454)
!622 = !DILocation(line: 559, column: 17, scope: !447, inlinedAt: !454)
!623 = !DILocation(line: 560, column: 17, scope: !624, inlinedAt: !454)
!624 = distinct !DILexicalBlock(scope: !447, file: !3, line: 559, column: 17)
!625 = !DILocation(line: 562, column: 17, scope: !626, inlinedAt: !454)
!626 = distinct !DILexicalBlock(scope: !447, file: !3, line: 561, column: 17)
!627 = !DILocation(line: 563, column: 17, scope: !447, inlinedAt: !454)
!628 = !DILocation(line: 564, column: 17, scope: !629, inlinedAt: !454)
!629 = distinct !DILexicalBlock(scope: !447, file: !3, line: 563, column: 17)
!630 = !DILocation(line: 566, column: 17, scope: !631, inlinedAt: !454)
!631 = distinct !DILexicalBlock(scope: !447, file: !3, line: 565, column: 17)
!632 = !DILocation(line: 569, column: 13, scope: !447, inlinedAt: !454)
!633 = !DILocation(line: 570, column: 30, scope: !447, inlinedAt: !454)
!634 = !DILocation(line: 572, column: 19, scope: !447, inlinedAt: !454)
!635 = !DILocation(line: 573, column: 13, scope: !447, inlinedAt: !454)
!636 = !DILocation(line: 575, column: 13, scope: !447, inlinedAt: !454)
!637 = !DILocation(line: 576, column: 33, scope: !447, inlinedAt: !454)
!638 = !DILocalVariable(name: "__nptr", arg: 1, scope: !639, file: !640, line: 25, type: !643)
!639 = distinct !DISubprogram(name: "atof", scope: !640, file: !640, line: 25, type: !641, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !645)
!640 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "", checksumkind: CSK_MD5, checksum: "48f612e342a3b16120b9f0760cf29677")
!641 = !DISubroutineType(types: !642)
!642 = !{!10, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!645 = !{!638}
!646 = !DILocation(line: 0, scope: !639, inlinedAt: !647)
!647 = distinct !DILocation(line: 577, column: 17, scope: !447, inlinedAt: !454)
!648 = !DILocation(line: 27, column: 10, scope: !639, inlinedAt: !647)
!649 = !DILocation(line: 579, column: 13, scope: !447, inlinedAt: !454)
!650 = !DILocation(line: 580, column: 33, scope: !447, inlinedAt: !454)
!651 = !DILocation(line: 0, scope: !639, inlinedAt: !652)
!652 = distinct !DILocation(line: 581, column: 17, scope: !447, inlinedAt: !454)
!653 = !DILocation(line: 27, column: 10, scope: !639, inlinedAt: !652)
!654 = !DILocation(line: 583, column: 13, scope: !447, inlinedAt: !454)
!655 = !DILocation(line: 584, column: 33, scope: !447, inlinedAt: !454)
!656 = !DILocation(line: 0, scope: !639, inlinedAt: !657)
!657 = distinct !DILocation(line: 585, column: 17, scope: !447, inlinedAt: !454)
!658 = !DILocation(line: 27, column: 10, scope: !639, inlinedAt: !657)
!659 = !DILocation(line: 587, column: 17, scope: !660, inlinedAt: !454)
!660 = distinct !DILexicalBlock(scope: !447, file: !3, line: 587, column: 17)
!661 = !DILocation(line: 587, column: 17, scope: !447, inlinedAt: !454)
!662 = !DILocation(line: 603, column: 17, scope: !663, inlinedAt: !454)
!663 = distinct !DILexicalBlock(scope: !660, file: !3, line: 587, column: 43)
!664 = !DILocation(line: 611, column: 13, scope: !663, inlinedAt: !454)
!665 = !DILocation(line: 613, column: 22, scope: !666, inlinedAt: !454)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 613, column: 21)
!667 = distinct !DILexicalBlock(scope: !660, file: !3, line: 611, column: 20)
!668 = !DILocation(line: 613, column: 21, scope: !667, inlinedAt: !454)
!669 = !DILocation(line: 614, column: 23, scope: !666, inlinedAt: !454)
!670 = !{!493, !493, i64 0}
!671 = !DILocation(line: 614, column: 21, scope: !666, inlinedAt: !454)
!672 = !DILocation(line: 616, column: 23, scope: !673, inlinedAt: !454)
!673 = distinct !DILexicalBlock(scope: !666, file: !3, line: 615, column: 26)
!674 = !DILocation(line: 616, column: 21, scope: !673, inlinedAt: !454)
!675 = !DILocation(line: 618, column: 23, scope: !676, inlinedAt: !454)
!676 = distinct !DILexicalBlock(scope: !673, file: !3, line: 617, column: 26)
!677 = !DILocation(line: 618, column: 21, scope: !676, inlinedAt: !454)
!678 = !DILocation(line: 620, column: 23, scope: !679, inlinedAt: !454)
!679 = distinct !DILexicalBlock(scope: !676, file: !3, line: 619, column: 26)
!680 = !DILocation(line: 620, column: 21, scope: !679, inlinedAt: !454)
!681 = !DILocation(line: 622, column: 23, scope: !682, inlinedAt: !454)
!682 = distinct !DILexicalBlock(scope: !679, file: !3, line: 621, column: 26)
!683 = !DILocation(line: 622, column: 21, scope: !682, inlinedAt: !454)
!684 = !DILocation(line: 624, column: 23, scope: !685, inlinedAt: !454)
!685 = distinct !DILexicalBlock(scope: !682, file: !3, line: 623, column: 26)
!686 = !DILocation(line: 624, column: 21, scope: !685, inlinedAt: !454)
!687 = !DILocation(line: 626, column: 23, scope: !685, inlinedAt: !454)
!688 = !DILocation(line: 627, column: 19, scope: !667, inlinedAt: !454)
!689 = !DILocation(line: 630, column: 17, scope: !667, inlinedAt: !454)
!690 = !DILocation(line: 631, column: 37, scope: !667, inlinedAt: !454)
!691 = !DILocation(line: 0, scope: !639, inlinedAt: !692)
!692 = distinct !DILocation(line: 632, column: 23, scope: !667, inlinedAt: !454)
!693 = !DILocation(line: 27, column: 10, scope: !639, inlinedAt: !692)
!694 = !DILocation(line: 634, column: 17, scope: !667, inlinedAt: !454)
!695 = !DILocation(line: 635, column: 37, scope: !667, inlinedAt: !454)
!696 = !DILocation(line: 0, scope: !639, inlinedAt: !697)
!697 = distinct !DILocation(line: 636, column: 25, scope: !667, inlinedAt: !454)
!698 = !DILocation(line: 27, column: 10, scope: !639, inlinedAt: !697)
!699 = !DILocation(line: 0, scope: !660, inlinedAt: !454)
!700 = !DILocation(line: 639, column: 21, scope: !446, inlinedAt: !454)
!701 = !DILocation(line: 639, column: 17, scope: !447, inlinedAt: !454)
!702 = !DILocation(line: 640, column: 21, scope: !703, inlinedAt: !454)
!703 = distinct !DILexicalBlock(scope: !445, file: !3, line: 640, column: 21)
!704 = !DILocation(line: 640, column: 28, scope: !703, inlinedAt: !454)
!705 = !DILocation(line: 640, column: 21, scope: !445, inlinedAt: !454)
!706 = !DILocation(line: 641, column: 32, scope: !707, inlinedAt: !454)
!707 = distinct !DILexicalBlock(scope: !703, file: !3, line: 640, column: 33)
!708 = !{!612, !375, i64 24}
!709 = !DILocation(line: 641, column: 21, scope: !707, inlinedAt: !454)
!710 = !DILocation(line: 642, column: 32, scope: !707, inlinedAt: !454)
!711 = !{!612, !375, i64 32}
!712 = !DILocation(line: 642, column: 21, scope: !707, inlinedAt: !454)
!713 = !DILocation(line: 643, column: 31, scope: !707, inlinedAt: !454)
!714 = !{!612, !492, i64 8}
!715 = !DILocation(line: 644, column: 34, scope: !707, inlinedAt: !454)
!716 = !{!612, !492, i64 104}
!717 = !DILocation(line: 645, column: 21, scope: !707, inlinedAt: !454)
!718 = !DILocation(line: 646, column: 21, scope: !707, inlinedAt: !454)
!719 = !DILocation(line: 647, column: 21, scope: !707, inlinedAt: !454)
!720 = !DILocation(line: 648, column: 28, scope: !707, inlinedAt: !454)
!721 = !DILocation(line: 649, column: 17, scope: !707, inlinedAt: !454)
!722 = !DILocation(line: 651, column: 24, scope: !445, inlinedAt: !454)
!723 = !DILocation(line: 652, column: 25, scope: !724, inlinedAt: !454)
!724 = distinct !DILexicalBlock(scope: !445, file: !3, line: 652, column: 21)
!725 = !DILocation(line: 652, column: 21, scope: !445, inlinedAt: !454)
!726 = !DILocation(line: 653, column: 21, scope: !724, inlinedAt: !454)
!727 = !DILocation(line: 655, column: 30, scope: !728, inlinedAt: !454)
!728 = distinct !DILexicalBlock(scope: !724, file: !3, line: 654, column: 22)
!729 = !DILocation(line: 656, column: 30, scope: !728, inlinedAt: !454)
!730 = !DILocation(line: 658, column: 17, scope: !445, inlinedAt: !454)
!731 = !DILocation(line: 0, scope: !444, inlinedAt: !454)
!732 = !DILocation(line: 663, column: 26, scope: !733, inlinedAt: !454)
!733 = distinct !DILexicalBlock(scope: !444, file: !3, line: 663, column: 21)
!734 = !DILocation(line: 0, scope: !733, inlinedAt: !454)
!735 = !{}
!736 = !DILocation(line: 665, column: 42, scope: !737, inlinedAt: !454)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 665, column: 29)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 664, column: 45)
!739 = distinct !DILexicalBlock(scope: !733, file: !3, line: 663, column: 21)
!740 = !{!741, !375, i64 0}
!741 = !{!"strand_t", !375, i64 0, !492, i64 8, !492, i64 12, !375, i64 16, !375, i64 24, !492, i64 32, !492, i64 36, !375, i64 40}
!742 = !DILocation(line: 665, column: 30, scope: !737, inlinedAt: !454)
!743 = !DILocation(line: 664, column: 37, scope: !739, inlinedAt: !454)
!744 = !DILocation(line: 665, column: 29, scope: !738, inlinedAt: !454)
!745 = distinct !{!745, !746, !747, !517, !518}
!746 = !DILocation(line: 663, column: 21, scope: !733, inlinedAt: !454)
!747 = !DILocation(line: 669, column: 21, scope: !733, inlinedAt: !454)
!748 = !DILocation(line: 670, column: 25, scope: !444, inlinedAt: !454)
!749 = !DILocation(line: 670, column: 36, scope: !444, inlinedAt: !454)
!750 = !{!741, !492, i64 36}
!751 = !DILocation(line: 672, column: 40, scope: !444, inlinedAt: !454)
!752 = !DILocation(line: 671, column: 25, scope: !444, inlinedAt: !454)
!753 = !DILocation(line: 671, column: 36, scope: !444, inlinedAt: !454)
!754 = !{!741, !375, i64 40}
!755 = !DILocation(line: 680, column: 17, scope: !445, inlinedAt: !454)
!756 = !DILocation(line: 681, column: 17, scope: !445, inlinedAt: !454)
!757 = !DILocation(line: 682, column: 26, scope: !445, inlinedAt: !454)
!758 = !DILocation(line: 684, column: 13, scope: !445, inlinedAt: !454)
!759 = !DILocalVariable(name: "l_rname", arg: 1, scope: !760, file: !3, line: 744, type: !13)
!760 = distinct !DISubprogram(name: "isnewres", scope: !3, file: !3, line: 744, type: !761, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!37, !13, !13, !37, !37}
!763 = !{!759, !764, !765, !766}
!764 = !DILocalVariable(name: "rname", arg: 2, scope: !760, file: !3, line: 744, type: !13)
!765 = !DILocalVariable(name: "l_rnum", arg: 3, scope: !760, file: !3, line: 744, type: !37)
!766 = !DILocalVariable(name: "rnum", arg: 4, scope: !760, file: !3, line: 744, type: !37)
!767 = !DILocation(line: 0, scope: !760, inlinedAt: !768)
!768 = distinct !DILocation(line: 684, column: 24, scope: !769, inlinedAt: !454)
!769 = distinct !DILexicalBlock(scope: !446, file: !3, line: 684, column: 24)
!770 = !DILocation(line: 747, column: 13, scope: !760, inlinedAt: !768)
!771 = !DILocation(line: 747, column: 36, scope: !760, inlinedAt: !768)
!772 = !DILocation(line: 685, column: 28, scope: !773, inlinedAt: !454)
!773 = distinct !DILexicalBlock(scope: !769, file: !3, line: 684, column: 64)
!774 = !DILocation(line: 685, column: 17, scope: !773, inlinedAt: !454)
!775 = !DILocation(line: 686, column: 28, scope: !773, inlinedAt: !454)
!776 = !DILocation(line: 686, column: 17, scope: !773, inlinedAt: !454)
!777 = !DILocation(line: 687, column: 27, scope: !773, inlinedAt: !454)
!778 = !DILocation(line: 688, column: 32, scope: !773, inlinedAt: !454)
!779 = !DILocation(line: 688, column: 30, scope: !773, inlinedAt: !454)
!780 = !DILocation(line: 689, column: 17, scope: !773, inlinedAt: !454)
!781 = !DILocation(line: 690, column: 17, scope: !773, inlinedAt: !454)
!782 = !DILocation(line: 691, column: 17, scope: !773, inlinedAt: !454)
!783 = !DILocation(line: 692, column: 17, scope: !773, inlinedAt: !454)
!784 = !DILocation(line: 693, column: 17, scope: !773, inlinedAt: !454)
!785 = !DILocation(line: 694, column: 26, scope: !773, inlinedAt: !454)
!786 = !DILocation(line: 695, column: 24, scope: !773, inlinedAt: !454)
!787 = !DILocation(line: 696, column: 13, scope: !773, inlinedAt: !454)
!788 = !DILocation(line: 0, scope: !451, inlinedAt: !454)
!789 = !DILocation(line: 697, column: 24, scope: !447, inlinedAt: !454)
!790 = !DILocation(line: 697, column: 19, scope: !447, inlinedAt: !454)
!791 = !DILocation(line: 698, column: 13, scope: !447, inlinedAt: !454)
!792 = !DILocation(line: 699, column: 24, scope: !447, inlinedAt: !454)
!793 = !DILocation(line: 699, column: 13, scope: !447, inlinedAt: !454)
!794 = !DILocation(line: 700, column: 17, scope: !447, inlinedAt: !454)
!795 = !DILocation(line: 700, column: 24, scope: !447, inlinedAt: !454)
!796 = !{!491, !492, i64 16}
!797 = !DILocation(line: 701, column: 17, scope: !447, inlinedAt: !454)
!798 = !DILocation(line: 701, column: 27, scope: !447, inlinedAt: !454)
!799 = !{!491, !375, i64 56}
!800 = !DILocation(line: 702, column: 17, scope: !447, inlinedAt: !454)
!801 = !DILocation(line: 702, column: 26, scope: !447, inlinedAt: !454)
!802 = !DILocation(line: 703, column: 13, scope: !447, inlinedAt: !454)
!803 = !DILocation(line: 703, column: 26, scope: !447, inlinedAt: !454)
!804 = !DILocation(line: 704, column: 13, scope: !447, inlinedAt: !454)
!805 = !DILocation(line: 704, column: 26, scope: !447, inlinedAt: !454)
!806 = !DILocation(line: 705, column: 28, scope: !447, inlinedAt: !454)
!807 = !DILocation(line: 705, column: 17, scope: !447, inlinedAt: !454)
!808 = !DILocation(line: 705, column: 26, scope: !447, inlinedAt: !454)
!809 = !{!491, !493, i64 64}
!810 = !DILocation(line: 706, column: 28, scope: !447, inlinedAt: !454)
!811 = !DILocation(line: 706, column: 17, scope: !447, inlinedAt: !454)
!812 = !DILocation(line: 706, column: 26, scope: !447, inlinedAt: !454)
!813 = !{!491, !493, i64 72}
!814 = !DILocation(line: 707, column: 17, scope: !447, inlinedAt: !454)
!815 = !DILocation(line: 707, column: 23, scope: !447, inlinedAt: !454)
!816 = !{!491, !493, i64 88}
!817 = !DILocation(line: 708, column: 17, scope: !447, inlinedAt: !454)
!818 = !DILocation(line: 708, column: 25, scope: !447, inlinedAt: !454)
!819 = !{!491, !493, i64 80}
!820 = !DILocation(line: 709, column: 19, scope: !447, inlinedAt: !454)
!821 = !DILocation(line: 711, column: 9, scope: !447, inlinedAt: !454)
!822 = !DILocation(line: 711, column: 20, scope: !823, inlinedAt: !454)
!823 = distinct !DILexicalBlock(scope: !448, file: !3, line: 711, column: 20)
!824 = !DILocation(line: 711, column: 44, scope: !823, inlinedAt: !454)
!825 = !DILocation(line: 711, column: 20, scope: !448, inlinedAt: !454)
!826 = !DILocation(line: 712, column: 17, scope: !827, inlinedAt: !454)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 712, column: 17)
!828 = distinct !DILexicalBlock(scope: !823, file: !3, line: 711, column: 50)
!829 = !DILocation(line: 712, column: 24, scope: !827, inlinedAt: !454)
!830 = !DILocation(line: 712, column: 17, scope: !828, inlinedAt: !454)
!831 = !DILocation(line: 713, column: 28, scope: !832, inlinedAt: !454)
!832 = distinct !DILexicalBlock(scope: !827, file: !3, line: 712, column: 29)
!833 = !DILocation(line: 713, column: 17, scope: !832, inlinedAt: !454)
!834 = !DILocation(line: 714, column: 28, scope: !832, inlinedAt: !454)
!835 = !DILocation(line: 714, column: 17, scope: !832, inlinedAt: !454)
!836 = !DILocation(line: 715, column: 27, scope: !832, inlinedAt: !454)
!837 = !DILocation(line: 716, column: 30, scope: !832, inlinedAt: !454)
!838 = !DILocation(line: 717, column: 17, scope: !832, inlinedAt: !454)
!839 = !DILocation(line: 718, column: 17, scope: !832, inlinedAt: !454)
!840 = !DILocation(line: 719, column: 17, scope: !832, inlinedAt: !454)
!841 = !DILocation(line: 720, column: 24, scope: !832, inlinedAt: !454)
!842 = !DILocation(line: 721, column: 13, scope: !832, inlinedAt: !454)
!843 = !DILocation(line: 723, column: 22, scope: !828, inlinedAt: !454)
!844 = !DILocation(line: 724, column: 20, scope: !828, inlinedAt: !454)
!845 = !DILocation(line: 726, column: 9, scope: !828, inlinedAt: !454)
!846 = !DILocation(line: 726, column: 20, scope: !847, inlinedAt: !454)
!847 = distinct !DILexicalBlock(scope: !823, file: !3, line: 726, column: 20)
!848 = !DILocation(line: 726, column: 44, scope: !847, inlinedAt: !454)
!849 = !DILocation(line: 726, column: 20, scope: !823, inlinedAt: !454)
!850 = distinct !{!850, !851, !852, !518}
!851 = !DILocation(line: 496, column: 5, scope: !451, inlinedAt: !454)
!852 = !DILocation(line: 728, column: 5, scope: !451, inlinedAt: !454)
!853 = !DILocation(line: 729, column: 9, scope: !854, inlinedAt: !454)
!854 = distinct !DILexicalBlock(scope: !405, file: !3, line: 729, column: 9)
!855 = !DILocation(line: 729, column: 16, scope: !854, inlinedAt: !454)
!856 = !DILocation(line: 729, column: 9, scope: !405, inlinedAt: !454)
!857 = !DILocation(line: 730, column: 20, scope: !858, inlinedAt: !454)
!858 = distinct !DILexicalBlock(scope: !854, file: !3, line: 729, column: 21)
!859 = !DILocation(line: 730, column: 9, scope: !858, inlinedAt: !454)
!860 = !DILocation(line: 731, column: 20, scope: !858, inlinedAt: !454)
!861 = !DILocation(line: 731, column: 9, scope: !858, inlinedAt: !454)
!862 = !DILocation(line: 732, column: 19, scope: !858, inlinedAt: !454)
!863 = !DILocation(line: 733, column: 22, scope: !858, inlinedAt: !454)
!864 = !DILocation(line: 734, column: 9, scope: !858, inlinedAt: !454)
!865 = !DILocation(line: 735, column: 9, scope: !858, inlinedAt: !454)
!866 = !DILocation(line: 736, column: 9, scope: !858, inlinedAt: !454)
!867 = !DILocation(line: 737, column: 5, scope: !858, inlinedAt: !454)
!868 = !DILocation(line: 739, column: 10, scope: !405, inlinedAt: !454)
!869 = !DILocation(line: 739, column: 19, scope: !405, inlinedAt: !454)
!870 = !{!871, !492, i64 120}
!871 = !{!"molecule_t", !369, i64 0, !492, i64 96, !375, i64 104, !492, i64 112, !492, i64 116, !492, i64 120, !375, i64 128}
!872 = !DILocation(line: 742, column: 1, scope: !405, inlinedAt: !454)
!873 = !DILocation(line: 150, column: 15, scope: !874)
!874 = distinct !DILexicalBlock(scope: !352, file: !3, line: 150, column: 9)
!875 = !DILocation(line: 150, column: 12, scope: !874)
!876 = !DILocation(line: 150, column: 9, scope: !352)
!877 = !DILocation(line: 151, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 151, column: 13)
!879 = distinct !DILexicalBlock(scope: !874, file: !3, line: 150, column: 22)
!880 = !DILocation(line: 151, column: 28, scope: !878)
!881 = !DILocation(line: 151, column: 13, scope: !879)
!882 = !DILocation(line: 152, column: 13, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !3, line: 151, column: 34)
!884 = !DILocation(line: 153, column: 9, scope: !883)
!885 = !DILocation(line: 156, column: 5, scope: !352)
!886 = !DISubprogram(name: "get_mytaskid", scope: !3, file: !3, line: 99, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!887 = !DISubroutineType(types: !888)
!888 = !{!37}
!889 = !DISubprogram(name: "reducerror", scope: !3, file: !3, line: 100, type: !890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !37}
!892 = !DISubprogram(name: "fclose", scope: !893, file: !893, line: 213, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!893 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!894 = !DISubroutineType(types: !895)
!895 = !{!37, !276}
!896 = !DILocation(line: 0, scope: !2)
!897 = !DILocation(line: 162, column: 5, scope: !2)
!898 = !DILocation(line: 162, column: 10, scope: !2)
!899 = !DILocation(line: 163, column: 12, scope: !2)
!900 = !DILocation(line: 168, column: 5, scope: !2)
!901 = !DILocation(line: 169, column: 15, scope: !902)
!902 = distinct !DILexicalBlock(scope: !2, file: !3, line: 169, column: 9)
!903 = !DILocation(line: 169, column: 23, scope: !902)
!904 = !DILocation(line: 169, column: 26, scope: !902)
!905 = !DILocation(line: 169, column: 33, scope: !902)
!906 = !DILocation(line: 169, column: 9, scope: !2)
!907 = !DILocation(line: 170, column: 17, scope: !908)
!908 = distinct !DILexicalBlock(scope: !902, file: !3, line: 169, column: 42)
!909 = !DILocation(line: 170, column: 9, scope: !908)
!910 = !DILocation(line: 172, column: 9, scope: !908)
!911 = !DILocation(line: 173, column: 17, scope: !912)
!912 = distinct !DILexicalBlock(scope: !902, file: !3, line: 173, column: 16)
!913 = !DILocation(line: 173, column: 16, scope: !902)
!914 = !DILocation(line: 174, column: 14, scope: !912)
!915 = !DILocation(line: 174, column: 9, scope: !912)
!916 = !DILocation(line: 175, column: 20, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !3, line: 175, column: 14)
!918 = !DILocation(line: 175, column: 39, scope: !917)
!919 = !DILocation(line: 175, column: 14, scope: !912)
!920 = !DILocation(line: 176, column: 17, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 175, column: 48)
!922 = !DILocation(line: 176, column: 9, scope: !921)
!923 = !DILocation(line: 178, column: 9, scope: !921)
!924 = !DILocation(line: 0, scope: !912)
!925 = !DILocation(line: 180, column: 10, scope: !926)
!926 = distinct !DILexicalBlock(scope: !2, file: !3, line: 180, column: 5)
!927 = !DILocation(line: 180, column: 5, scope: !926)
!928 = !DILocation(line: 180, column: 17, scope: !929)
!929 = distinct !DILexicalBlock(scope: !926, file: !3, line: 180, column: 5)
!930 = !DILocation(line: 181, column: 13, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !3, line: 181, column: 13)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 180, column: 49)
!933 = !DILocation(line: 181, column: 19, scope: !931)
!934 = !DILocation(line: 181, column: 13, scope: !932)
!935 = distinct !{!935, !927, !936, !517, !518}
!936 = !DILocation(line: 201, column: 5, scope: !926)
!937 = !DILocation(line: 185, column: 23, scope: !932)
!938 = !DILocation(line: 185, column: 35, scope: !932)
!939 = !DILocation(line: 185, column: 47, scope: !932)
!940 = !DILocation(line: 185, column: 59, scope: !932)
!941 = !DILocation(line: 184, column: 15, scope: !932)
!942 = !DILocation(line: 190, column: 17, scope: !943)
!943 = distinct !DILexicalBlock(scope: !932, file: !3, line: 190, column: 13)
!944 = !DILocation(line: 190, column: 13, scope: !932)
!945 = !DILocation(line: 191, column: 21, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !3, line: 190, column: 23)
!947 = !DILocation(line: 193, column: 23, scope: !946)
!948 = !DILocation(line: 191, column: 13, scope: !946)
!949 = !DILocation(line: 196, column: 13, scope: !946)
!950 = !DILocation(line: 198, column: 10, scope: !932)
!951 = !DILocation(line: 199, column: 15, scope: !952)
!952 = distinct !DILexicalBlock(scope: !932, file: !3, line: 199, column: 13)
!953 = !DILocation(line: 199, column: 13, scope: !932)
!954 = !DILocation(line: 202, column: 11, scope: !955)
!955 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 9)
!956 = !DILocation(line: 202, column: 9, scope: !2)
!957 = !DILocation(line: 203, column: 17, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !3, line: 202, column: 17)
!959 = !DILocation(line: 203, column: 9, scope: !958)
!960 = !DILocation(line: 207, column: 9, scope: !958)
!961 = !DILocation(line: 212, column: 12, scope: !962)
!962 = distinct !DILexicalBlock(scope: !2, file: !3, line: 212, column: 9)
!963 = !DILocation(line: 210, column: 3, scope: !2)
!964 = !DILocation(line: 212, column: 20, scope: !962)
!965 = !DILocation(line: 213, column: 9, scope: !962)
!966 = !DILocation(line: 217, column: 1, scope: !2)
!967 = !DILocation(line: 216, column: 5, scope: !2)
!968 = !DISubprogram(name: "fgets", scope: !893, file: !893, line: 564, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!969 = !DISubroutineType(types: !970)
!970 = !{!13, !971, !37, !972}
!971 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!972 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !276)
!973 = distinct !DISubprogram(name: "putpdb", scope: !3, file: !3, line: 225, type: !974, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!37, !13, !355, !13}
!976 = !{!977, !978, !979, !980, !981}
!977 = !DILocalVariable(name: "fname", arg: 1, scope: !973, file: !3, line: 225, type: !13)
!978 = !DILocalVariable(name: "mol", arg: 2, scope: !973, file: !3, line: 225, type: !355)
!979 = !DILocalVariable(name: "options", arg: 3, scope: !973, file: !3, line: 225, type: !13)
!980 = !DILocalVariable(name: "fp", scope: !973, file: !3, line: 227, type: !276)
!981 = !DILocalVariable(name: "ier", scope: !973, file: !3, line: 228, type: !37)
!982 = !DILocation(line: 0, scope: !973)
!983 = !DILocation(line: 230, column: 10, scope: !984)
!984 = distinct !DILexicalBlock(scope: !973, file: !3, line: 230, column: 9)
!985 = !DILocation(line: 230, column: 9, scope: !973)
!986 = !DILocation(line: 231, column: 13, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !3, line: 230, column: 15)
!988 = !DILocation(line: 232, column: 21, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 231, column: 34)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 231, column: 13)
!991 = !DILocation(line: 232, column: 13, scope: !989)
!992 = !DILocation(line: 233, column: 9, scope: !989)
!993 = !DILocation(line: 238, column: 9, scope: !973)
!994 = !DILocation(line: 239, column: 14, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 239, column: 13)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 238, column: 30)
!997 = distinct !DILexicalBlock(scope: !973, file: !3, line: 238, column: 9)
!998 = !DILocation(line: 239, column: 13, scope: !996)
!999 = !DILocation(line: 241, column: 24, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !3, line: 241, column: 18)
!1001 = !DILocation(line: 241, column: 43, scope: !1000)
!1002 = !DILocation(line: 241, column: 18, scope: !995)
!1003 = !DILocalVariable(name: "fp", arg: 1, scope: !1004, file: !3, line: 849, type: !276)
!1004 = distinct !DISubprogram(name: "fputpdb", scope: !3, file: !3, line: 849, type: !1005, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !276, !355, !13}
!1007 = !{!1003, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1021, !1022, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034}
!1008 = !DILocalVariable(name: "mol", arg: 2, scope: !1004, file: !3, line: 849, type: !355)
!1009 = !DILocalVariable(name: "options", arg: 3, scope: !1004, file: !3, line: 849, type: !13)
!1010 = !DILocalVariable(name: "r", scope: !1004, file: !3, line: 863, type: !37)
!1011 = !DILocalVariable(name: "tr", scope: !1004, file: !3, line: 863, type: !37)
!1012 = !DILocalVariable(name: "rn", scope: !1004, file: !3, line: 863, type: !37)
!1013 = !DILocalVariable(name: "a", scope: !1004, file: !3, line: 863, type: !37)
!1014 = !DILocalVariable(name: "ta", scope: !1004, file: !3, line: 863, type: !37)
!1015 = !DILocalVariable(name: "cid", scope: !1004, file: !3, line: 864, type: !14)
!1016 = !DILocalVariable(name: "sp", scope: !1004, file: !3, line: 865, type: !74)
!1017 = !DILocalVariable(name: "res", scope: !1004, file: !3, line: 866, type: !39)
!1018 = !DILocalVariable(name: "ap", scope: !1004, file: !3, line: 867, type: !219)
!1019 = !DILocalVariable(name: "rname", scope: !1004, file: !3, line: 868, type: !1020)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !229)
!1021 = !DILocalVariable(name: "aname", scope: !1004, file: !3, line: 869, type: !1020)
!1022 = !DILocalVariable(name: "rid", scope: !1004, file: !3, line: 870, type: !1023)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 7)
!1026 = !DILocalVariable(name: "loptions", scope: !1004, file: !3, line: 871, type: !335)
!1027 = !DILocalVariable(name: "opt_pqr", scope: !1004, file: !3, line: 872, type: !37)
!1028 = !DILocalVariable(name: "opt_nobocc", scope: !1004, file: !3, line: 873, type: !37)
!1029 = !DILocalVariable(name: "opt_brook", scope: !1004, file: !3, line: 874, type: !37)
!1030 = !DILocalVariable(name: "opt_wwpdb", scope: !1004, file: !3, line: 875, type: !37)
!1031 = !DILocalVariable(name: "opt_tr", scope: !1004, file: !3, line: 876, type: !37)
!1032 = !DILocalVariable(name: "opt_nocid", scope: !1004, file: !3, line: 877, type: !37)
!1033 = !DILocalVariable(name: "opt_allcid", scope: !1004, file: !3, line: 878, type: !37)
!1034 = !DILocalVariable(name: "cidstate", scope: !1004, file: !3, line: 879, type: !248)
!1035 = !DILocation(line: 0, scope: !1004, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 246, column: 13, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 245, column: 23)
!1038 = distinct !DILexicalBlock(scope: !996, file: !3, line: 245, column: 13)
!1039 = !DILocation(line: 868, column: 5, scope: !1004, inlinedAt: !1036)
!1040 = !DILocation(line: 868, column: 10, scope: !1004, inlinedAt: !1036)
!1041 = !DILocation(line: 869, column: 5, scope: !1004, inlinedAt: !1036)
!1042 = !DILocation(line: 869, column: 10, scope: !1004, inlinedAt: !1036)
!1043 = !DILocation(line: 870, column: 5, scope: !1004, inlinedAt: !1036)
!1044 = !DILocation(line: 870, column: 10, scope: !1004, inlinedAt: !1036)
!1045 = !DILocation(line: 871, column: 5, scope: !1004, inlinedAt: !1036)
!1046 = !DILocation(line: 871, column: 10, scope: !1004, inlinedAt: !1036)
!1047 = !DILocation(line: 885, column: 9, scope: !1004, inlinedAt: !1036)
!1048 = !DILocation(line: 242, column: 13, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 241, column: 52)
!1050 = !DILocation(line: 245, column: 13, scope: !996)
!1051 = !DILocation(line: 240, column: 18, scope: !995)
!1052 = !DILocation(line: 885, column: 10, scope: !1053, inlinedAt: !1036)
!1053 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 885, column: 9)
!1054 = !DILocation(line: 886, column: 17, scope: !1055, inlinedAt: !1036)
!1055 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 885, column: 14)
!1056 = !DILocation(line: 886, column: 9, scope: !1055, inlinedAt: !1036)
!1057 = !DILocation(line: 887, column: 9, scope: !1055, inlinedAt: !1036)
!1058 = !DILocation(line: 890, column: 17, scope: !1059, inlinedAt: !1036)
!1059 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 890, column: 9)
!1060 = !DILocation(line: 890, column: 9, scope: !1004, inlinedAt: !1036)
!1061 = !DILocation(line: 891, column: 19, scope: !1059, inlinedAt: !1036)
!1062 = !DILocation(line: 891, column: 9, scope: !1059, inlinedAt: !1036)
!1063 = !DILocation(line: 893, column: 9, scope: !1064, inlinedAt: !1036)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 892, column: 10)
!1065 = !DILocation(line: 894, column: 9, scope: !1064, inlinedAt: !1036)
!1066 = !DILocation(line: 894, column: 23, scope: !1064, inlinedAt: !1036)
!1067 = !DILocation(line: 896, column: 15, scope: !1004, inlinedAt: !1036)
!1068 = !DILocation(line: 896, column: 40, scope: !1004, inlinedAt: !1036)
!1069 = !DILocation(line: 897, column: 18, scope: !1004, inlinedAt: !1036)
!1070 = !DILocation(line: 897, column: 46, scope: !1004, inlinedAt: !1036)
!1071 = !DILocation(line: 898, column: 17, scope: !1004, inlinedAt: !1036)
!1072 = !DILocation(line: 898, column: 44, scope: !1004, inlinedAt: !1036)
!1073 = !DILocation(line: 899, column: 17, scope: !1004, inlinedAt: !1036)
!1074 = !DILocation(line: 899, column: 44, scope: !1004, inlinedAt: !1036)
!1075 = !DILocation(line: 900, column: 14, scope: !1004, inlinedAt: !1036)
!1076 = !DILocation(line: 900, column: 38, scope: !1004, inlinedAt: !1036)
!1077 = !DILocation(line: 901, column: 17, scope: !1004, inlinedAt: !1036)
!1078 = !DILocation(line: 901, column: 44, scope: !1004, inlinedAt: !1036)
!1079 = !DILocation(line: 902, column: 18, scope: !1004, inlinedAt: !1036)
!1080 = !DILocation(line: 902, column: 46, scope: !1004, inlinedAt: !1036)
!1081 = !DILocalVariable(name: "nocid", arg: 1, scope: !1082, file: !3, line: 1021, type: !37)
!1082 = distinct !DISubprogram(name: "initcid", scope: !3, file: !3, line: 1021, type: !1083, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1085)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!248, !37, !37, !355}
!1085 = !{!1081, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1086 = !DILocalVariable(name: "allcid", arg: 2, scope: !1082, file: !3, line: 1021, type: !37)
!1087 = !DILocalVariable(name: "mol", arg: 3, scope: !1082, file: !3, line: 1021, type: !355)
!1088 = !DILocalVariable(name: "cid", scope: !1082, file: !3, line: 1023, type: !248)
!1089 = !DILocalVariable(name: "c", scope: !1082, file: !3, line: 1024, type: !37)
!1090 = !DILocalVariable(name: "sp", scope: !1082, file: !3, line: 1025, type: !74)
!1091 = !DILocalVariable(name: "err", scope: !1082, file: !3, line: 1026, type: !37)
!1092 = !DILabel(scope: !1082, name: "CLEAN_UP", file: !3, line: 1067)
!1093 = !DILocation(line: 0, scope: !1082, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 905, column: 16, scope: !1004, inlinedAt: !1036)
!1095 = !DILocation(line: 1028, column: 9, scope: !1096, inlinedAt: !1094)
!1096 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1028, column: 9)
!1097 = !DILocation(line: 1028, column: 9, scope: !1082, inlinedAt: !1094)
!1098 = !DILocation(line: 1031, column: 21, scope: !1082, inlinedAt: !1094)
!1099 = !DILocation(line: 1032, column: 13, scope: !1100, inlinedAt: !1094)
!1100 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1032, column: 9)
!1101 = !DILocation(line: 1032, column: 9, scope: !1082, inlinedAt: !1094)
!1102 = !DILocation(line: 1033, column: 17, scope: !1103, inlinedAt: !1094)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 1032, column: 22)
!1104 = !DILocation(line: 1033, column: 9, scope: !1103, inlinedAt: !1094)
!1105 = !DILocation(line: 1067, column: 3, scope: !1082, inlinedAt: !1094)
!1106 = !DILocalVariable(name: "cid", arg: 1, scope: !1107, file: !3, line: 1011, type: !248)
!1107 = distinct !DISubprogram(name: "freecid", scope: !3, file: !3, line: 1011, type: !1108, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !248}
!1110 = !{!1106}
!1111 = !DILocation(line: 0, scope: !1107, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 1070, column: 9, scope: !1113, inlinedAt: !1094)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 1069, column: 14)
!1114 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1069, column: 9)
!1115 = !DILocation(line: 1014, column: 9, scope: !1107, inlinedAt: !1112)
!1116 = !DILocation(line: 1037, column: 28, scope: !1082, inlinedAt: !1094)
!1117 = !DILocation(line: 1037, column: 10, scope: !1082, inlinedAt: !1094)
!1118 = !DILocation(line: 1037, column: 17, scope: !1082, inlinedAt: !1094)
!1119 = !{!1120, !375, i64 8}
!1120 = !{!"cid_t", !492, i64 0, !492, i64 4, !375, i64 8}
!1121 = !DILocation(line: 1038, column: 21, scope: !1122, inlinedAt: !1094)
!1122 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1038, column: 9)
!1123 = !DILocation(line: 1038, column: 9, scope: !1082, inlinedAt: !1094)
!1124 = !DILocation(line: 1043, column: 17, scope: !1082, inlinedAt: !1094)
!1125 = !{!1120, !492, i64 0}
!1126 = !DILocation(line: 1044, column: 10, scope: !1082, inlinedAt: !1094)
!1127 = !DILocation(line: 1044, column: 17, scope: !1082, inlinedAt: !1094)
!1128 = !{!1120, !492, i64 4}
!1129 = !DILocation(line: 1045, column: 5, scope: !1130, inlinedAt: !1094)
!1130 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1045, column: 5)
!1131 = !DILocation(line: 1046, column: 24, scope: !1132, inlinedAt: !1094)
!1132 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 1045, column: 5)
!1133 = !DILocation(line: 1048, column: 9, scope: !1082, inlinedAt: !1094)
!1134 = !DILocation(line: 1054, column: 24, scope: !1135, inlinedAt: !1094)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1054, column: 9)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 1048, column: 17)
!1137 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1048, column: 9)
!1138 = !DILocation(line: 0, scope: !1135, inlinedAt: !1094)
!1139 = !DILocation(line: 1054, column: 9, scope: !1135, inlinedAt: !1094)
!1140 = !DILocation(line: 1055, column: 28, scope: !1141, inlinedAt: !1094)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 1055, column: 17)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 1054, column: 56)
!1143 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 1054, column: 9)
!1144 = !DILocation(line: 1055, column: 17, scope: !1141, inlinedAt: !1094)
!1145 = !DILocation(line: 1055, column: 42, scope: !1141, inlinedAt: !1094)
!1146 = !DILocation(line: 1055, column: 17, scope: !1142, inlinedAt: !1094)
!1147 = !DILocation(line: 1056, column: 21, scope: !1148, inlinedAt: !1094)
!1148 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 1055, column: 48)
!1149 = !DILocation(line: 1057, column: 30, scope: !1150, inlinedAt: !1094)
!1150 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 1057, column: 21)
!1151 = !DILocation(line: 1058, column: 21, scope: !1150, inlinedAt: !1094)
!1152 = !DILocation(line: 1058, column: 36, scope: !1150, inlinedAt: !1094)
!1153 = !DILocation(line: 1054, column: 48, scope: !1143, inlinedAt: !1094)
!1154 = distinct !{!1154, !1139, !1155, !517, !518}
!1155 = !DILocation(line: 1060, column: 9, scope: !1135, inlinedAt: !1094)
!1156 = !DILocation(line: 1061, column: 9, scope: !1157, inlinedAt: !1094)
!1157 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1061, column: 9)
!1158 = !DILocation(line: 1062, column: 18, scope: !1159, inlinedAt: !1094)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 1062, column: 17)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 1061, column: 59)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 1061, column: 9)
!1162 = !DILocation(line: 1062, column: 17, scope: !1160, inlinedAt: !1094)
!1163 = !DILocation(line: 1061, column: 55, scope: !1161, inlinedAt: !1094)
!1164 = !DILocation(line: 1061, column: 28, scope: !1161, inlinedAt: !1094)
!1165 = distinct !{!1165, !1156, !1166, !517, !518}
!1166 = !DILocation(line: 1064, column: 9, scope: !1157, inlinedAt: !1094)
!1167 = !DILocation(line: 1039, column: 17, scope: !1168, inlinedAt: !1094)
!1168 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1038, column: 30)
!1169 = !DILocation(line: 1039, column: 9, scope: !1168, inlinedAt: !1094)
!1170 = !DILocation(line: 1017, column: 9, scope: !1171, inlinedAt: !1112)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 1014, column: 22)
!1172 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1014, column: 9)
!1173 = !DILocation(line: 1018, column: 5, scope: !1171, inlinedAt: !1112)
!1174 = !DILocation(line: 911, column: 36, scope: !1175, inlinedAt: !1036)
!1175 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 911, column: 5)
!1176 = !DILocation(line: 0, scope: !1175, inlinedAt: !1036)
!1177 = !DILocation(line: 911, column: 5, scope: !1175, inlinedAt: !1036)
!1178 = !DILocalVariable(name: "cid", arg: 1, scope: !1179, file: !3, line: 1077, type: !248)
!1179 = distinct !DISubprogram(name: "nextcid", scope: !3, file: !3, line: 1077, type: !1180, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!37, !248, !37, !37, !74}
!1182 = !{!1178, !1183, !1184, !1185, !1186}
!1183 = !DILocalVariable(name: "nocid", arg: 2, scope: !1179, file: !3, line: 1077, type: !37)
!1184 = !DILocalVariable(name: "allcid", arg: 3, scope: !1179, file: !3, line: 1077, type: !37)
!1185 = !DILocalVariable(name: "sp", arg: 4, scope: !1179, file: !3, line: 1077, type: !74)
!1186 = !DILocalVariable(name: "c", scope: !1179, file: !3, line: 1079, type: !37)
!1187 = !DILocation(line: 0, scope: !1179, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 920, column: 15, scope: !1189, inlinedAt: !1036)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 911, column: 68)
!1190 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 911, column: 5)
!1191 = !DILocation(line: 1081, column: 9, scope: !1179, inlinedAt: !1188)
!1192 = !DILocation(line: 1084, column: 9, scope: !1179, inlinedAt: !1188)
!1193 = !DILocation(line: 1085, column: 17, scope: !1194, inlinedAt: !1188)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1084, column: 22)
!1195 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 1084, column: 9)
!1196 = !DILocation(line: 1085, column: 9, scope: !1194, inlinedAt: !1188)
!1197 = !DILocation(line: 1086, column: 9, scope: !1194, inlinedAt: !1188)
!1198 = !DILocation(line: 1087, column: 21, scope: !1199, inlinedAt: !1188)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1087, column: 16)
!1200 = !DILocation(line: 1087, column: 35, scope: !1199, inlinedAt: !1188)
!1201 = !DILocation(line: 1087, column: 28, scope: !1199, inlinedAt: !1188)
!1202 = !DILocation(line: 1087, column: 16, scope: !1195, inlinedAt: !1188)
!1203 = !DILocation(line: 1089, column: 14, scope: !1199, inlinedAt: !1188)
!1204 = !DILocation(line: 1090, column: 24, scope: !1205, inlinedAt: !1188)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 1090, column: 13)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 1089, column: 22)
!1207 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 1089, column: 14)
!1208 = !DILocation(line: 1090, column: 13, scope: !1205, inlinedAt: !1188)
!1209 = !DILocation(line: 1090, column: 38, scope: !1205, inlinedAt: !1188)
!1210 = !DILocation(line: 1090, column: 13, scope: !1206, inlinedAt: !1188)
!1211 = !DILocation(line: 1091, column: 17, scope: !1212, inlinedAt: !1188)
!1212 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 1090, column: 44)
!1213 = !DILocation(line: 1092, column: 26, scope: !1214, inlinedAt: !1188)
!1214 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 1092, column: 17)
!1215 = !DILocation(line: 1093, column: 17, scope: !1214, inlinedAt: !1188)
!1216 = !DILocation(line: 1096, column: 14, scope: !1206, inlinedAt: !1188)
!1217 = !DILocation(line: 1096, column: 9, scope: !1206, inlinedAt: !1188)
!1218 = !DILocation(line: 1096, column: 34, scope: !1206, inlinedAt: !1188)
!1219 = !DILocation(line: 1097, column: 14, scope: !1220, inlinedAt: !1188)
!1220 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 1097, column: 9)
!1221 = !DILocation(line: 1097, column: 41, scope: !1222, inlinedAt: !1188)
!1222 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 1097, column: 9)
!1223 = !DILocation(line: 0, scope: !1220, inlinedAt: !1188)
!1224 = !DILocation(line: 1097, column: 9, scope: !1220, inlinedAt: !1188)
!1225 = !DILocation(line: 1098, column: 23, scope: !1226, inlinedAt: !1188)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 1098, column: 17)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1097, column: 72)
!1228 = !DILocation(line: 1098, column: 18, scope: !1226, inlinedAt: !1188)
!1229 = !DILocation(line: 1098, column: 17, scope: !1227, inlinedAt: !1188)
!1230 = distinct !{!1230, !1224, !1231, !517, !518}
!1231 = !DILocation(line: 1100, column: 9, scope: !1220, inlinedAt: !1188)
!1232 = !DILocation(line: 1104, column: 20, scope: !1233, inlinedAt: !1188)
!1233 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 1102, column: 12)
!1234 = !DILocation(line: 1105, column: 9, scope: !1233, inlinedAt: !1188)
!1235 = !DILocation(line: 921, column: 29, scope: !1236, inlinedAt: !1036)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 921, column: 9)
!1237 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 921, column: 9)
!1238 = !{!741, !492, i64 32}
!1239 = !DILocation(line: 921, column: 23, scope: !1236, inlinedAt: !1036)
!1240 = !DILocation(line: 921, column: 9, scope: !1237, inlinedAt: !1036)
!1241 = !DILocation(line: 922, column: 23, scope: !1242, inlinedAt: !1036)
!1242 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 921, column: 53)
!1243 = !DILocation(line: 922, column: 19, scope: !1242, inlinedAt: !1036)
!1244 = !DILocation(line: 923, column: 30, scope: !1242, inlinedAt: !1036)
!1245 = !DILocation(line: 923, column: 25, scope: !1242, inlinedAt: !1036)
!1246 = !DILocation(line: 923, column: 13, scope: !1242, inlinedAt: !1036)
!1247 = !DILocation(line: 924, column: 17, scope: !1242, inlinedAt: !1036)
!1248 = !DILocation(line: 925, column: 17, scope: !1249, inlinedAt: !1036)
!1249 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 924, column: 17)
!1250 = !DILocalVariable(name: "rname", arg: 1, scope: !1251, file: !3, line: 1109, type: !13)
!1251 = distinct !DISubprogram(name: "mk_brook_rname", scope: !3, file: !3, line: 1109, type: !1252, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !13, !39}
!1254 = !{!1250, !1255}
!1255 = !DILocalVariable(name: "res", arg: 2, scope: !1251, file: !3, line: 1109, type: !39)
!1256 = !DILocation(line: 0, scope: !1251, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 925, column: 17, scope: !1249, inlinedAt: !1036)
!1258 = !DILocation(line: 1112, column: 5, scope: !1251, inlinedAt: !1257)
!1259 = !DILocation(line: 1114, column: 10, scope: !1260, inlinedAt: !1257)
!1260 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1114, column: 9)
!1261 = !DILocation(line: 1114, column: 9, scope: !1251, inlinedAt: !1257)
!1262 = !DILocation(line: 1115, column: 9, scope: !1260, inlinedAt: !1257)
!1263 = !DILocation(line: 1116, column: 9, scope: !1251, inlinedAt: !1257)
!1264 = !DILocation(line: 1117, column: 9, scope: !1265, inlinedAt: !1257)
!1265 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1116, column: 9)
!1266 = !DILocation(line: 1119, column: 9, scope: !1267, inlinedAt: !1257)
!1267 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1118, column: 9)
!1268 = !DILocation(line: 1121, column: 9, scope: !1269, inlinedAt: !1257)
!1269 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1120, column: 9)
!1270 = !DILocation(line: 1123, column: 9, scope: !1271, inlinedAt: !1257)
!1271 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1122, column: 9)
!1272 = !DILocation(line: 1125, column: 10, scope: !1273, inlinedAt: !1257)
!1273 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1125, column: 9)
!1274 = !DILocation(line: 1125, column: 9, scope: !1251, inlinedAt: !1257)
!1275 = !DILocation(line: 1126, column: 9, scope: !1273, inlinedAt: !1257)
!1276 = !DILocation(line: 1127, column: 10, scope: !1277, inlinedAt: !1257)
!1277 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1127, column: 9)
!1278 = !DILocation(line: 1127, column: 9, scope: !1251, inlinedAt: !1257)
!1279 = !DILocation(line: 1128, column: 9, scope: !1277, inlinedAt: !1257)
!1280 = !DILocation(line: 1129, column: 10, scope: !1281, inlinedAt: !1257)
!1281 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1129, column: 9)
!1282 = !DILocation(line: 1129, column: 9, scope: !1251, inlinedAt: !1257)
!1283 = !DILocation(line: 1130, column: 9, scope: !1281, inlinedAt: !1257)
!1284 = !DILocation(line: 1131, column: 10, scope: !1285, inlinedAt: !1257)
!1285 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1131, column: 9)
!1286 = !DILocation(line: 1131, column: 9, scope: !1251, inlinedAt: !1257)
!1287 = !DILocation(line: 1132, column: 9, scope: !1285, inlinedAt: !1257)
!1288 = !DILocation(line: 1134, column: 10, scope: !1289, inlinedAt: !1257)
!1289 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1134, column: 9)
!1290 = !DILocation(line: 1134, column: 9, scope: !1251, inlinedAt: !1257)
!1291 = !DILocation(line: 1135, column: 9, scope: !1289, inlinedAt: !1257)
!1292 = !DILocation(line: 1136, column: 10, scope: !1293, inlinedAt: !1257)
!1293 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1136, column: 9)
!1294 = !DILocation(line: 1136, column: 9, scope: !1251, inlinedAt: !1257)
!1295 = !DILocation(line: 1137, column: 9, scope: !1293, inlinedAt: !1257)
!1296 = !DILocation(line: 1138, column: 10, scope: !1297, inlinedAt: !1257)
!1297 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1138, column: 9)
!1298 = !DILocation(line: 1138, column: 9, scope: !1251, inlinedAt: !1257)
!1299 = !DILocation(line: 1139, column: 9, scope: !1297, inlinedAt: !1257)
!1300 = !DILocation(line: 1140, column: 10, scope: !1301, inlinedAt: !1257)
!1301 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1140, column: 9)
!1302 = !DILocation(line: 1140, column: 9, scope: !1251, inlinedAt: !1257)
!1303 = !DILocation(line: 1141, column: 9, scope: !1301, inlinedAt: !1257)
!1304 = !DILocation(line: 1143, column: 9, scope: !1251, inlinedAt: !1257)
!1305 = !DILocation(line: 1144, column: 9, scope: !1306, inlinedAt: !1257)
!1306 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1143, column: 9)
!1307 = !DILocation(line: 1146, column: 9, scope: !1308, inlinedAt: !1257)
!1308 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1145, column: 9)
!1309 = !DILocation(line: 1148, column: 9, scope: !1310, inlinedAt: !1257)
!1310 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1147, column: 9)
!1311 = !DILocation(line: 1150, column: 9, scope: !1312, inlinedAt: !1257)
!1312 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1149, column: 9)
!1313 = !DILocation(line: 1153, column: 9, scope: !1314, inlinedAt: !1257)
!1314 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1152, column: 9)
!1315 = !DILocation(line: 1155, column: 9, scope: !1316, inlinedAt: !1257)
!1316 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1154, column: 9)
!1317 = !DILocation(line: 1157, column: 9, scope: !1318, inlinedAt: !1257)
!1318 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1156, column: 9)
!1319 = !DILocation(line: 1159, column: 9, scope: !1320, inlinedAt: !1257)
!1320 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1158, column: 9)
!1321 = !DILocation(line: 1162, column: 9, scope: !1322, inlinedAt: !1257)
!1322 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1161, column: 9)
!1323 = !DILocation(line: 1164, column: 9, scope: !1324, inlinedAt: !1257)
!1324 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1163, column: 9)
!1325 = !DILocation(line: 1166, column: 9, scope: !1326, inlinedAt: !1257)
!1326 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1165, column: 9)
!1327 = !DILocation(line: 1168, column: 9, scope: !1328, inlinedAt: !1257)
!1328 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1167, column: 9)
!1329 = !DILocation(line: 1171, column: 9, scope: !1330, inlinedAt: !1257)
!1330 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1170, column: 9)
!1331 = !DILocation(line: 1173, column: 9, scope: !1332, inlinedAt: !1257)
!1332 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1172, column: 9)
!1333 = !DILocation(line: 1175, column: 9, scope: !1334, inlinedAt: !1257)
!1334 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1174, column: 9)
!1335 = !DILocation(line: 1177, column: 9, scope: !1336, inlinedAt: !1257)
!1336 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1176, column: 9)
!1337 = !DILocation(line: 1179, column: 9, scope: !1251, inlinedAt: !1257)
!1338 = !DILocation(line: 1180, column: 9, scope: !1339, inlinedAt: !1257)
!1339 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1179, column: 9)
!1340 = !DILocation(line: 1184, column: 9, scope: !1341, inlinedAt: !1257)
!1341 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1183, column: 9)
!1342 = !DILocation(line: 1186, column: 9, scope: !1343, inlinedAt: !1257)
!1343 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1185, column: 9)
!1344 = !DILocation(line: 1188, column: 9, scope: !1345, inlinedAt: !1257)
!1345 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1187, column: 9)
!1346 = !DILocation(line: 1190, column: 9, scope: !1347, inlinedAt: !1257)
!1347 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1189, column: 9)
!1348 = !DILocation(line: 926, column: 22, scope: !1249, inlinedAt: !1036)
!1349 = !DILocation(line: 927, column: 17, scope: !1350, inlinedAt: !1036)
!1350 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 926, column: 22)
!1351 = !DILocalVariable(name: "rname", arg: 1, scope: !1352, file: !3, line: 1194, type: !13)
!1352 = distinct !DISubprogram(name: "mk_wwpdb_rname", scope: !3, file: !3, line: 1194, type: !1252, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1353)
!1353 = !{!1351, !1354}
!1354 = !DILocalVariable(name: "res", arg: 2, scope: !1352, file: !3, line: 1194, type: !39)
!1355 = !DILocation(line: 0, scope: !1352, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 927, column: 17, scope: !1350, inlinedAt: !1036)
!1357 = !DILocation(line: 1197, column: 5, scope: !1352, inlinedAt: !1356)
!1358 = !DILocation(line: 1199, column: 10, scope: !1359, inlinedAt: !1356)
!1359 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1199, column: 9)
!1360 = !DILocation(line: 1199, column: 9, scope: !1352, inlinedAt: !1356)
!1361 = !DILocation(line: 1200, column: 9, scope: !1359, inlinedAt: !1356)
!1362 = !DILocation(line: 1201, column: 9, scope: !1352, inlinedAt: !1356)
!1363 = !DILocation(line: 1202, column: 9, scope: !1364, inlinedAt: !1356)
!1364 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1201, column: 9)
!1365 = !DILocation(line: 1204, column: 9, scope: !1366, inlinedAt: !1356)
!1366 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1203, column: 9)
!1367 = !DILocation(line: 1206, column: 9, scope: !1368, inlinedAt: !1356)
!1368 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1205, column: 9)
!1369 = !DILocation(line: 1208, column: 9, scope: !1370, inlinedAt: !1356)
!1370 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1207, column: 9)
!1371 = !DILocation(line: 1210, column: 10, scope: !1372, inlinedAt: !1356)
!1372 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1210, column: 9)
!1373 = !DILocation(line: 1210, column: 9, scope: !1352, inlinedAt: !1356)
!1374 = !DILocation(line: 1211, column: 9, scope: !1372, inlinedAt: !1356)
!1375 = !DILocation(line: 1212, column: 10, scope: !1376, inlinedAt: !1356)
!1376 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1212, column: 9)
!1377 = !DILocation(line: 1212, column: 9, scope: !1352, inlinedAt: !1356)
!1378 = !DILocation(line: 1213, column: 9, scope: !1376, inlinedAt: !1356)
!1379 = !DILocation(line: 1214, column: 10, scope: !1380, inlinedAt: !1356)
!1380 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1214, column: 9)
!1381 = !DILocation(line: 1214, column: 9, scope: !1352, inlinedAt: !1356)
!1382 = !DILocation(line: 1215, column: 9, scope: !1380, inlinedAt: !1356)
!1383 = !DILocation(line: 1216, column: 10, scope: !1384, inlinedAt: !1356)
!1384 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1216, column: 9)
!1385 = !DILocation(line: 1216, column: 9, scope: !1352, inlinedAt: !1356)
!1386 = !DILocation(line: 1217, column: 9, scope: !1384, inlinedAt: !1356)
!1387 = !DILocation(line: 1219, column: 10, scope: !1388, inlinedAt: !1356)
!1388 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1219, column: 9)
!1389 = !DILocation(line: 1219, column: 9, scope: !1352, inlinedAt: !1356)
!1390 = !DILocation(line: 1220, column: 9, scope: !1388, inlinedAt: !1356)
!1391 = !DILocation(line: 1221, column: 10, scope: !1392, inlinedAt: !1356)
!1392 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1221, column: 9)
!1393 = !DILocation(line: 1221, column: 9, scope: !1352, inlinedAt: !1356)
!1394 = !DILocation(line: 1222, column: 9, scope: !1392, inlinedAt: !1356)
!1395 = !DILocation(line: 1223, column: 10, scope: !1396, inlinedAt: !1356)
!1396 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1223, column: 9)
!1397 = !DILocation(line: 1223, column: 9, scope: !1352, inlinedAt: !1356)
!1398 = !DILocation(line: 1224, column: 9, scope: !1396, inlinedAt: !1356)
!1399 = !DILocation(line: 1225, column: 10, scope: !1400, inlinedAt: !1356)
!1400 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1225, column: 9)
!1401 = !DILocation(line: 1225, column: 9, scope: !1352, inlinedAt: !1356)
!1402 = !DILocation(line: 1226, column: 9, scope: !1400, inlinedAt: !1356)
!1403 = !DILocation(line: 1228, column: 9, scope: !1352, inlinedAt: !1356)
!1404 = !DILocation(line: 1229, column: 9, scope: !1405, inlinedAt: !1356)
!1405 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1228, column: 9)
!1406 = !DILocation(line: 1231, column: 9, scope: !1407, inlinedAt: !1356)
!1407 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1230, column: 9)
!1408 = !DILocation(line: 1233, column: 9, scope: !1409, inlinedAt: !1356)
!1409 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1232, column: 9)
!1410 = !DILocation(line: 1235, column: 9, scope: !1411, inlinedAt: !1356)
!1411 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1234, column: 9)
!1412 = !DILocation(line: 1238, column: 9, scope: !1413, inlinedAt: !1356)
!1413 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1237, column: 9)
!1414 = !DILocation(line: 1240, column: 9, scope: !1415, inlinedAt: !1356)
!1415 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1239, column: 9)
!1416 = !DILocation(line: 1242, column: 9, scope: !1417, inlinedAt: !1356)
!1417 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1241, column: 9)
!1418 = !DILocation(line: 1244, column: 9, scope: !1419, inlinedAt: !1356)
!1419 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1243, column: 9)
!1420 = !DILocation(line: 1247, column: 9, scope: !1421, inlinedAt: !1356)
!1421 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1246, column: 9)
!1422 = !DILocation(line: 1249, column: 9, scope: !1423, inlinedAt: !1356)
!1423 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1248, column: 9)
!1424 = !DILocation(line: 1251, column: 9, scope: !1425, inlinedAt: !1356)
!1425 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1250, column: 9)
!1426 = !DILocation(line: 1253, column: 9, scope: !1427, inlinedAt: !1356)
!1427 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1252, column: 9)
!1428 = !DILocation(line: 1256, column: 9, scope: !1429, inlinedAt: !1356)
!1429 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1255, column: 9)
!1430 = !DILocation(line: 1258, column: 9, scope: !1431, inlinedAt: !1356)
!1431 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1257, column: 9)
!1432 = !DILocation(line: 1260, column: 9, scope: !1433, inlinedAt: !1356)
!1433 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1259, column: 9)
!1434 = !DILocation(line: 1262, column: 9, scope: !1435, inlinedAt: !1356)
!1435 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1261, column: 9)
!1436 = !DILocation(line: 1264, column: 9, scope: !1352, inlinedAt: !1356)
!1437 = !DILocation(line: 1265, column: 9, scope: !1438, inlinedAt: !1356)
!1438 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1264, column: 9)
!1439 = !DILocation(line: 1269, column: 9, scope: !1440, inlinedAt: !1356)
!1440 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1268, column: 9)
!1441 = !DILocation(line: 1271, column: 9, scope: !1442, inlinedAt: !1356)
!1442 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1270, column: 9)
!1443 = !DILocation(line: 1273, column: 9, scope: !1444, inlinedAt: !1356)
!1444 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1272, column: 9)
!1445 = !DILocation(line: 1275, column: 9, scope: !1446, inlinedAt: !1356)
!1446 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1274, column: 9)
!1447 = !DILocation(line: 929, column: 36, scope: !1350, inlinedAt: !1036)
!1448 = !DILocation(line: 929, column: 17, scope: !1350, inlinedAt: !1036)
!1449 = !DILocation(line: 930, column: 34, scope: !1450, inlinedAt: !1036)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 930, column: 13)
!1451 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 930, column: 13)
!1452 = !DILocation(line: 930, column: 27, scope: !1450, inlinedAt: !1036)
!1453 = !DILocation(line: 930, column: 13, scope: !1451, inlinedAt: !1036)
!1454 = !DILocation(line: 931, column: 19, scope: !1455, inlinedAt: !1036)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 930, column: 49)
!1456 = !DILocation(line: 932, column: 28, scope: !1455, inlinedAt: !1036)
!1457 = !{!612, !375, i64 120}
!1458 = !DILocation(line: 932, column: 23, scope: !1455, inlinedAt: !1036)
!1459 = !DILocation(line: 0, scope: !1460, inlinedAt: !1036)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 934, column: 21)
!1461 = !DILocation(line: 934, column: 21, scope: !1455, inlinedAt: !1036)
!1462 = !DILocalVariable(name: "aname", arg: 1, scope: !1463, file: !3, line: 1279, type: !13)
!1463 = distinct !DISubprogram(name: "mk_brook_aname", scope: !3, file: !3, line: 1279, type: !1464, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !13, !13, !13}
!1466 = !{!1462, !1467, !1468}
!1467 = !DILocalVariable(name: "name", arg: 2, scope: !1463, file: !3, line: 1279, type: !13)
!1468 = !DILocalVariable(name: "rname", arg: 3, scope: !1463, file: !3, line: 1279, type: !13)
!1469 = !DILocation(line: 0, scope: !1463, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 935, column: 21, scope: !1460, inlinedAt: !1036)
!1471 = !DILocation(line: 1285, column: 14, scope: !1463, inlinedAt: !1470)
!1472 = !DILocation(line: 1287, column: 9, scope: !1473, inlinedAt: !1470)
!1473 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 1287, column: 9)
!1474 = !DILocation(line: 1287, column: 22, scope: !1473, inlinedAt: !1470)
!1475 = !DILocation(line: 1287, column: 27, scope: !1473, inlinedAt: !1470)
!1476 = !DILocation(line: 1287, column: 30, scope: !1473, inlinedAt: !1470)
!1477 = !DILocation(line: 1287, column: 38, scope: !1473, inlinedAt: !1470)
!1478 = !DILocation(line: 1287, column: 9, scope: !1463, inlinedAt: !1470)
!1479 = !DILocation(line: 1288, column: 18, scope: !1473, inlinedAt: !1470)
!1480 = !DILocation(line: 1288, column: 9, scope: !1473, inlinedAt: !1470)
!1481 = !DILocation(line: 1289, column: 16, scope: !1463, inlinedAt: !1470)
!1482 = !DILocation(line: 1289, column: 14, scope: !1463, inlinedAt: !1470)
!1483 = !DILocation(line: 1290, column: 16, scope: !1463, inlinedAt: !1470)
!1484 = !DILocation(line: 1290, column: 14, scope: !1463, inlinedAt: !1470)
!1485 = !DILocation(line: 1291, column: 16, scope: !1463, inlinedAt: !1470)
!1486 = !DILocation(line: 1292, column: 18, scope: !1487, inlinedAt: !1470)
!1487 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 1292, column: 9)
!1488 = !DILocation(line: 1292, column: 9, scope: !1463, inlinedAt: !1470)
!1489 = !DILocation(line: 1294, column: 14, scope: !1463, inlinedAt: !1470)
!1490 = !DILocation(line: 1297, column: 10, scope: !1491, inlinedAt: !1470)
!1491 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 1297, column: 9)
!1492 = !DILocation(line: 1297, column: 34, scope: !1491, inlinedAt: !1470)
!1493 = !DILocation(line: 1299, column: 11, scope: !1491, inlinedAt: !1470)
!1494 = !DILocation(line: 1299, column: 36, scope: !1491, inlinedAt: !1470)
!1495 = !DILocation(line: 1301, column: 11, scope: !1491, inlinedAt: !1470)
!1496 = !DILocation(line: 1301, column: 36, scope: !1491, inlinedAt: !1470)
!1497 = !DILocation(line: 1301, column: 39, scope: !1491, inlinedAt: !1470)
!1498 = !DILocation(line: 1301, column: 64, scope: !1491, inlinedAt: !1470)
!1499 = !DILocation(line: 1301, column: 67, scope: !1491, inlinedAt: !1470)
!1500 = !DILocation(line: 1305, column: 11, scope: !1491, inlinedAt: !1470)
!1501 = !DILocation(line: 1306, column: 18, scope: !1502, inlinedAt: !1470)
!1502 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 1305, column: 41)
!1503 = !DILocation(line: 1307, column: 18, scope: !1502, inlinedAt: !1470)
!1504 = !DILocation(line: 1308, column: 5, scope: !1502, inlinedAt: !1470)
!1505 = !DILocation(line: 936, column: 26, scope: !1460, inlinedAt: !1036)
!1506 = !DILocalVariable(name: "aname", arg: 1, scope: !1507, file: !3, line: 1315, type: !13)
!1507 = distinct !DISubprogram(name: "mk_wwpdb_aname", scope: !3, file: !3, line: 1315, type: !1464, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1508)
!1508 = !{!1506, !1509, !1510}
!1509 = !DILocalVariable(name: "name", arg: 2, scope: !1507, file: !3, line: 1315, type: !13)
!1510 = !DILocalVariable(name: "rname", arg: 3, scope: !1507, file: !3, line: 1315, type: !13)
!1511 = !DILocation(line: 0, scope: !1507, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 937, column: 21, scope: !1513, inlinedAt: !1036)
!1513 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 936, column: 26)
!1514 = !DILocation(line: 1329, column: 9, scope: !1515, inlinedAt: !1512)
!1515 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1329, column: 9)
!1516 = !DILocation(line: 1329, column: 22, scope: !1515, inlinedAt: !1512)
!1517 = !DILocation(line: 1329, column: 27, scope: !1515, inlinedAt: !1512)
!1518 = !DILocation(line: 1329, column: 30, scope: !1515, inlinedAt: !1512)
!1519 = !DILocation(line: 1329, column: 38, scope: !1515, inlinedAt: !1512)
!1520 = !DILocation(line: 1329, column: 9, scope: !1507, inlinedAt: !1512)
!1521 = !DILocation(line: 1330, column: 9, scope: !1522, inlinedAt: !1512)
!1522 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1329, column: 45)
!1523 = !DILocation(line: 1331, column: 5, scope: !1522, inlinedAt: !1512)
!1524 = !DILocation(line: 1332, column: 18, scope: !1525, inlinedAt: !1512)
!1525 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1331, column: 12)
!1526 = !DILocation(line: 1333, column: 9, scope: !1525, inlinedAt: !1512)
!1527 = !DILocation(line: 1334, column: 18, scope: !1525, inlinedAt: !1512)
!1528 = !DILocation(line: 1337, column: 9, scope: !1529, inlinedAt: !1512)
!1529 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1337, column: 9)
!1530 = !DILocation(line: 1337, column: 18, scope: !1529, inlinedAt: !1512)
!1531 = !DILocation(line: 1337, column: 9, scope: !1507, inlinedAt: !1512)
!1532 = !DILocation(line: 1337, column: 37, scope: !1529, inlinedAt: !1512)
!1533 = !DILocation(line: 1337, column: 28, scope: !1529, inlinedAt: !1512)
!1534 = !DILocation(line: 1338, column: 9, scope: !1535, inlinedAt: !1512)
!1535 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1338, column: 9)
!1536 = !DILocation(line: 1338, column: 18, scope: !1535, inlinedAt: !1512)
!1537 = !DILocation(line: 1338, column: 9, scope: !1507, inlinedAt: !1512)
!1538 = !DILocation(line: 1338, column: 37, scope: !1535, inlinedAt: !1512)
!1539 = !DILocation(line: 1338, column: 28, scope: !1535, inlinedAt: !1512)
!1540 = !DILocation(line: 1339, column: 9, scope: !1541, inlinedAt: !1512)
!1541 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1339, column: 9)
!1542 = !DILocation(line: 1339, column: 18, scope: !1541, inlinedAt: !1512)
!1543 = !DILocation(line: 1339, column: 9, scope: !1507, inlinedAt: !1512)
!1544 = !DILocation(line: 1339, column: 37, scope: !1541, inlinedAt: !1512)
!1545 = !DILocation(line: 1339, column: 28, scope: !1541, inlinedAt: !1512)
!1546 = !DILocation(line: 1346, column: 10, scope: !1547, inlinedAt: !1512)
!1547 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1346, column: 9)
!1548 = !DILocation(line: 1346, column: 9, scope: !1507, inlinedAt: !1512)
!1549 = !DILocation(line: 1346, column: 37, scope: !1547, inlinedAt: !1512)
!1550 = !DILocation(line: 1347, column: 10, scope: !1551, inlinedAt: !1512)
!1551 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1347, column: 9)
!1552 = !DILocation(line: 1347, column: 9, scope: !1507, inlinedAt: !1512)
!1553 = !DILocation(line: 1347, column: 37, scope: !1551, inlinedAt: !1512)
!1554 = !DILocation(line: 1348, column: 10, scope: !1555, inlinedAt: !1512)
!1555 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1348, column: 9)
!1556 = !DILocation(line: 1348, column: 9, scope: !1507, inlinedAt: !1512)
!1557 = !DILocation(line: 1348, column: 37, scope: !1555, inlinedAt: !1512)
!1558 = !DILocation(line: 1349, column: 10, scope: !1559, inlinedAt: !1512)
!1559 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1349, column: 9)
!1560 = !DILocation(line: 1349, column: 9, scope: !1507, inlinedAt: !1512)
!1561 = !DILocation(line: 1349, column: 37, scope: !1559, inlinedAt: !1512)
!1562 = !DILocation(line: 1350, column: 10, scope: !1563, inlinedAt: !1512)
!1563 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1350, column: 9)
!1564 = !DILocation(line: 1350, column: 9, scope: !1507, inlinedAt: !1512)
!1565 = !DILocation(line: 1350, column: 37, scope: !1563, inlinedAt: !1512)
!1566 = !DILocation(line: 1351, column: 10, scope: !1567, inlinedAt: !1512)
!1567 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1351, column: 9)
!1568 = !DILocation(line: 1351, column: 9, scope: !1507, inlinedAt: !1512)
!1569 = !DILocation(line: 1351, column: 37, scope: !1567, inlinedAt: !1512)
!1570 = !DILocation(line: 1352, column: 10, scope: !1571, inlinedAt: !1512)
!1571 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1352, column: 9)
!1572 = !DILocation(line: 1352, column: 9, scope: !1507, inlinedAt: !1512)
!1573 = !DILocation(line: 1352, column: 37, scope: !1571, inlinedAt: !1512)
!1574 = !DILocation(line: 1353, column: 10, scope: !1575, inlinedAt: !1512)
!1575 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1353, column: 9)
!1576 = !DILocation(line: 1353, column: 9, scope: !1507, inlinedAt: !1512)
!1577 = !DILocation(line: 1353, column: 37, scope: !1575, inlinedAt: !1512)
!1578 = !DILocation(line: 1359, column: 10, scope: !1579, inlinedAt: !1512)
!1579 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1359, column: 9)
!1580 = !DILocation(line: 1359, column: 36, scope: !1579, inlinedAt: !1512)
!1581 = !DILocation(line: 1359, column: 40, scope: !1579, inlinedAt: !1512)
!1582 = !DILocation(line: 1359, column: 66, scope: !1579, inlinedAt: !1512)
!1583 = !DILocation(line: 1360, column: 10, scope: !1579, inlinedAt: !1512)
!1584 = !DILocation(line: 1360, column: 36, scope: !1579, inlinedAt: !1512)
!1585 = !DILocation(line: 1360, column: 40, scope: !1579, inlinedAt: !1512)
!1586 = !DILocation(line: 1360, column: 66, scope: !1579, inlinedAt: !1512)
!1587 = !DILocation(line: 1361, column: 10, scope: !1579, inlinedAt: !1512)
!1588 = !DILocation(line: 1361, column: 36, scope: !1579, inlinedAt: !1512)
!1589 = !DILocation(line: 1361, column: 40, scope: !1579, inlinedAt: !1512)
!1590 = !DILocation(line: 1361, column: 66, scope: !1579, inlinedAt: !1512)
!1591 = !DILocation(line: 1362, column: 10, scope: !1579, inlinedAt: !1512)
!1592 = !DILocation(line: 1362, column: 36, scope: !1579, inlinedAt: !1512)
!1593 = !DILocation(line: 1362, column: 40, scope: !1579, inlinedAt: !1512)
!1594 = !DILocation(line: 1362, column: 66, scope: !1579, inlinedAt: !1512)
!1595 = !DILocation(line: 1363, column: 10, scope: !1579, inlinedAt: !1512)
!1596 = !DILocation(line: 1363, column: 36, scope: !1579, inlinedAt: !1512)
!1597 = !DILocation(line: 1363, column: 40, scope: !1579, inlinedAt: !1512)
!1598 = !DILocation(line: 1363, column: 66, scope: !1579, inlinedAt: !1512)
!1599 = !DILocation(line: 1364, column: 10, scope: !1579, inlinedAt: !1512)
!1600 = !DILocation(line: 1364, column: 36, scope: !1579, inlinedAt: !1512)
!1601 = !DILocation(line: 1364, column: 40, scope: !1579, inlinedAt: !1512)
!1602 = !DILocation(line: 1364, column: 66, scope: !1579, inlinedAt: !1512)
!1603 = !DILocation(line: 1365, column: 10, scope: !1579, inlinedAt: !1512)
!1604 = !DILocation(line: 1365, column: 36, scope: !1579, inlinedAt: !1512)
!1605 = !DILocation(line: 1365, column: 40, scope: !1579, inlinedAt: !1512)
!1606 = !DILocation(line: 1365, column: 66, scope: !1579, inlinedAt: !1512)
!1607 = !DILocation(line: 1366, column: 10, scope: !1579, inlinedAt: !1512)
!1608 = !DILocation(line: 1366, column: 36, scope: !1579, inlinedAt: !1512)
!1609 = !DILocation(line: 1366, column: 40, scope: !1579, inlinedAt: !1512)
!1610 = !DILocation(line: 1359, column: 9, scope: !1507, inlinedAt: !1512)
!1611 = !DILocation(line: 1367, column: 18, scope: !1612, inlinedAt: !1512)
!1612 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 1366, column: 67)
!1613 = !DILocation(line: 1368, column: 18, scope: !1612, inlinedAt: !1512)
!1614 = !DILocation(line: 1369, column: 18, scope: !1612, inlinedAt: !1512)
!1615 = !DILocation(line: 1370, column: 18, scope: !1612, inlinedAt: !1512)
!1616 = !DILocation(line: 1371, column: 5, scope: !1612, inlinedAt: !1512)
!1617 = !DILocation(line: 939, column: 21, scope: !1513, inlinedAt: !1036)
!1618 = !DILocation(line: 941, column: 22, scope: !1619, inlinedAt: !1036)
!1619 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 941, column: 21)
!1620 = !DILocation(line: 941, column: 38, scope: !1619, inlinedAt: !1036)
!1621 = !DILocation(line: 0, scope: !1619, inlinedAt: !1036)
!1622 = !DILocation(line: 949, column: 25, scope: !1623, inlinedAt: !1036)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 941, column: 49)
!1624 = !DILocation(line: 957, column: 37, scope: !1625, inlinedAt: !1036)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 949, column: 38)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 949, column: 25)
!1627 = !DILocation(line: 957, column: 33, scope: !1625, inlinedAt: !1036)
!1628 = !DILocation(line: 957, column: 47, scope: !1625, inlinedAt: !1036)
!1629 = !DILocation(line: 957, column: 61, scope: !1625, inlinedAt: !1036)
!1630 = !DILocation(line: 950, column: 25, scope: !1625, inlinedAt: !1036)
!1631 = !DILocation(line: 958, column: 21, scope: !1625, inlinedAt: !1036)
!1632 = !DILocation(line: 961, column: 36, scope: !1633, inlinedAt: !1036)
!1633 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 958, column: 28)
!1634 = !DILocation(line: 966, column: 37, scope: !1633, inlinedAt: !1036)
!1635 = !DILocation(line: 966, column: 33, scope: !1633, inlinedAt: !1036)
!1636 = !DILocation(line: 966, column: 47, scope: !1633, inlinedAt: !1036)
!1637 = !DILocation(line: 966, column: 61, scope: !1633, inlinedAt: !1036)
!1638 = !DILocation(line: 959, column: 25, scope: !1633, inlinedAt: !1036)
!1639 = !DILocation(line: 970, column: 25, scope: !1640, inlinedAt: !1036)
!1640 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 968, column: 24)
!1641 = !DILocation(line: 974, column: 37, scope: !1642, inlinedAt: !1036)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 970, column: 38)
!1643 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 970, column: 25)
!1644 = !DILocation(line: 974, column: 33, scope: !1642, inlinedAt: !1036)
!1645 = !DILocation(line: 974, column: 47, scope: !1642, inlinedAt: !1036)
!1646 = !DILocation(line: 974, column: 61, scope: !1642, inlinedAt: !1036)
!1647 = !DILocation(line: 971, column: 25, scope: !1642, inlinedAt: !1036)
!1648 = !DILocation(line: 975, column: 21, scope: !1642, inlinedAt: !1036)
!1649 = !DILocation(line: 978, column: 36, scope: !1650, inlinedAt: !1036)
!1650 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 975, column: 28)
!1651 = !DILocation(line: 979, column: 37, scope: !1650, inlinedAt: !1036)
!1652 = !DILocation(line: 979, column: 33, scope: !1650, inlinedAt: !1036)
!1653 = !DILocation(line: 979, column: 47, scope: !1650, inlinedAt: !1036)
!1654 = !DILocation(line: 979, column: 61, scope: !1650, inlinedAt: !1036)
!1655 = !DILocation(line: 976, column: 25, scope: !1650, inlinedAt: !1036)
!1656 = !DILocation(line: 982, column: 21, scope: !1455, inlinedAt: !1036)
!1657 = !DILocation(line: 985, column: 33, scope: !1658, inlinedAt: !1036)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 982, column: 30)
!1659 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 982, column: 21)
!1660 = !DILocation(line: 985, column: 47, scope: !1658, inlinedAt: !1036)
!1661 = !DILocation(line: 984, column: 21, scope: !1658, inlinedAt: !1036)
!1662 = !DILocation(line: 986, column: 17, scope: !1658, inlinedAt: !1036)
!1663 = !DILocation(line: 986, column: 28, scope: !1659, inlinedAt: !1036)
!1664 = !DILocation(line: 988, column: 33, scope: !1665, inlinedAt: !1036)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 986, column: 41)
!1666 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 986, column: 28)
!1667 = !DILocation(line: 988, column: 44, scope: !1665, inlinedAt: !1036)
!1668 = !DILocation(line: 987, column: 21, scope: !1665, inlinedAt: !1036)
!1669 = !DILocation(line: 991, column: 32, scope: !1670, inlinedAt: !1036)
!1670 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 991, column: 21)
!1671 = !DILocation(line: 992, column: 47, scope: !1672, inlinedAt: !1036)
!1672 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 991, column: 74)
!1673 = !DILocation(line: 992, column: 21, scope: !1672, inlinedAt: !1036)
!1674 = !DILocation(line: 993, column: 17, scope: !1672, inlinedAt: !1036)
!1675 = !DILocation(line: 995, column: 17, scope: !1455, inlinedAt: !1036)
!1676 = !DILocation(line: 930, column: 45, scope: !1450, inlinedAt: !1036)
!1677 = distinct !{!1677, !1453, !1678, !517, !518}
!1678 = !DILocation(line: 997, column: 13, scope: !1451, inlinedAt: !1036)
!1679 = !DILocation(line: 921, column: 43, scope: !1236, inlinedAt: !1036)
!1680 = !DILocation(line: 921, column: 49, scope: !1236, inlinedAt: !1036)
!1681 = distinct !{!1681, !1240, !1682, !517, !518}
!1682 = !DILocation(line: 999, column: 9, scope: !1237, inlinedAt: !1036)
!1683 = !DILocation(line: 911, column: 13, scope: !1175, inlinedAt: !1036)
!1684 = !DILocation(line: 1001, column: 9, scope: !1189, inlinedAt: !1036)
!1685 = !DILocation(line: 911, column: 60, scope: !1190, inlinedAt: !1036)
!1686 = distinct !{!1686, !1177, !1687, !517, !518}
!1687 = !DILocation(line: 1007, column: 5, scope: !1175, inlinedAt: !1036)
!1688 = !DILocation(line: 0, scope: !1107, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 1008, column: 5, scope: !1004, inlinedAt: !1036)
!1690 = !DILocation(line: 1014, column: 13, scope: !1172, inlinedAt: !1689)
!1691 = !DILocation(line: 1014, column: 9, scope: !1107, inlinedAt: !1689)
!1692 = !DILocation(line: 1015, column: 18, scope: !1693, inlinedAt: !1689)
!1693 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 1015, column: 13)
!1694 = !DILocation(line: 1015, column: 25, scope: !1693, inlinedAt: !1689)
!1695 = !DILocation(line: 1015, column: 13, scope: !1171, inlinedAt: !1689)
!1696 = !DILocation(line: 1016, column: 13, scope: !1693, inlinedAt: !1689)
!1697 = !DILocation(line: 1017, column: 9, scope: !1171, inlinedAt: !1689)
!1698 = !DILocation(line: 1018, column: 5, scope: !1171, inlinedAt: !1689)
!1699 = !DILocation(line: 1009, column: 1, scope: !1004, inlinedAt: !1036)
!1700 = !DILocation(line: 247, column: 23, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 247, column: 17)
!1702 = !DILocation(line: 247, column: 20, scope: !1701)
!1703 = !DILocation(line: 247, column: 17, scope: !1037)
!1704 = !DILocation(line: 248, column: 17, scope: !1701)
!1705 = !DILocation(line: 251, column: 5, scope: !973)
!1706 = !DILocation(line: 253, column: 5, scope: !973)
!1707 = !DILocation(line: 254, column: 1, scope: !973)
!1708 = !DISubprogram(name: "rt_errormsg_s", scope: !3, file: !3, line: 107, type: !1709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!37, !37, !13, !13}
!1711 = distinct !DISubprogram(name: "putcif", scope: !3, file: !3, line: 256, type: !1712, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!37, !13, !13, !355}
!1714 = !{!1715, !1716, !1717, !1718}
!1715 = !DILocalVariable(name: "fname", arg: 1, scope: !1711, file: !3, line: 256, type: !13)
!1716 = !DILocalVariable(name: "blockId", arg: 2, scope: !1711, file: !3, line: 256, type: !13)
!1717 = !DILocalVariable(name: "mol", arg: 3, scope: !1711, file: !3, line: 256, type: !355)
!1718 = !DILocalVariable(name: "fp", scope: !1711, file: !3, line: 258, type: !276)
!1719 = !DILocation(line: 0, scope: !1711)
!1720 = !DILocation(line: 260, column: 10, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 260, column: 9)
!1722 = !DILocation(line: 260, column: 9, scope: !1711)
!1723 = !DILocation(line: 261, column: 17, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 260, column: 15)
!1725 = !DILocation(line: 261, column: 9, scope: !1724)
!1726 = !DILocation(line: 262, column: 9, scope: !1724)
!1727 = !DILocation(line: 264, column: 10, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 264, column: 9)
!1729 = !DILocation(line: 264, column: 9, scope: !1711)
!1730 = !DILocation(line: 265, column: 14, scope: !1728)
!1731 = !DILocation(line: 265, column: 9, scope: !1728)
!1732 = !DILocation(line: 266, column: 20, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 266, column: 14)
!1734 = !DILocation(line: 266, column: 39, scope: !1733)
!1735 = !DILocation(line: 266, column: 14, scope: !1728)
!1736 = !DILocation(line: 267, column: 9, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 266, column: 48)
!1738 = !DILocation(line: 268, column: 9, scope: !1737)
!1739 = !DILocation(line: 0, scope: !1728)
!1740 = !DILocalVariable(name: "fp", arg: 1, scope: !1741, file: !3, line: 1381, type: !276)
!1741 = distinct !DISubprogram(name: "fputcif", scope: !3, file: !3, line: 1381, type: !1742, scopeLine: 1382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !276, !13, !355}
!1744 = !{!1740, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755}
!1745 = !DILocalVariable(name: "blockId", arg: 2, scope: !1741, file: !3, line: 1381, type: !13)
!1746 = !DILocalVariable(name: "mol", arg: 3, scope: !1741, file: !3, line: 1381, type: !355)
!1747 = !DILocalVariable(name: "r", scope: !1741, file: !3, line: 1383, type: !37)
!1748 = !DILocalVariable(name: "tr", scope: !1741, file: !3, line: 1383, type: !37)
!1749 = !DILocalVariable(name: "a", scope: !1741, file: !3, line: 1383, type: !37)
!1750 = !DILocalVariable(name: "ta", scope: !1741, file: !3, line: 1383, type: !37)
!1751 = !DILocalVariable(name: "strandnum", scope: !1741, file: !3, line: 1383, type: !37)
!1752 = !DILocalVariable(name: "cid", scope: !1741, file: !3, line: 1384, type: !14)
!1753 = !DILocalVariable(name: "sp", scope: !1741, file: !3, line: 1385, type: !74)
!1754 = !DILocalVariable(name: "res", scope: !1741, file: !3, line: 1386, type: !39)
!1755 = !DILocalVariable(name: "ap", scope: !1741, file: !3, line: 1387, type: !219)
!1756 = !DILocation(line: 0, scope: !1741, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 270, column: 5, scope: !1711)
!1758 = !DILocation(line: 1392, column: 17, scope: !1741, inlinedAt: !1757)
!1759 = !{!871, !492, i64 96}
!1760 = !DILocation(line: 1396, column: 5, scope: !1741, inlinedAt: !1757)
!1761 = !DILocation(line: 1397, column: 5, scope: !1741, inlinedAt: !1757)
!1762 = !DILocation(line: 1398, column: 5, scope: !1741, inlinedAt: !1757)
!1763 = !DILocation(line: 1399, column: 5, scope: !1741, inlinedAt: !1757)
!1764 = !DILocation(line: 1400, column: 5, scope: !1741, inlinedAt: !1757)
!1765 = !DILocation(line: 1401, column: 5, scope: !1741, inlinedAt: !1757)
!1766 = !DILocation(line: 1402, column: 5, scope: !1741, inlinedAt: !1757)
!1767 = !DILocation(line: 1403, column: 5, scope: !1741, inlinedAt: !1757)
!1768 = !DILocation(line: 1404, column: 5, scope: !1741, inlinedAt: !1757)
!1769 = !DILocation(line: 1407, column: 36, scope: !1770, inlinedAt: !1757)
!1770 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 1407, column: 5)
!1771 = !DILocation(line: 0, scope: !1770, inlinedAt: !1757)
!1772 = !DILocation(line: 1407, column: 5, scope: !1770, inlinedAt: !1757)
!1773 = !DILocation(line: 1392, column: 28, scope: !1741, inlinedAt: !1757)
!1774 = !DILocation(line: 1392, column: 11, scope: !1741, inlinedAt: !1757)
!1775 = !DILocation(line: 1408, column: 18, scope: !1776, inlinedAt: !1757)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 1407, column: 68)
!1777 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 1407, column: 5)
!1778 = !DILocation(line: 1409, column: 29, scope: !1779, inlinedAt: !1757)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1409, column: 9)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1409, column: 9)
!1781 = !DILocation(line: 1409, column: 23, scope: !1779, inlinedAt: !1757)
!1782 = !DILocation(line: 1409, column: 9, scope: !1780, inlinedAt: !1757)
!1783 = !DILocation(line: 1410, column: 23, scope: !1784, inlinedAt: !1757)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1409, column: 53)
!1785 = !DILocation(line: 1410, column: 19, scope: !1784, inlinedAt: !1757)
!1786 = !DILocation(line: 1411, column: 34, scope: !1787, inlinedAt: !1757)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 1411, column: 13)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1411, column: 13)
!1789 = !DILocation(line: 1411, column: 27, scope: !1787, inlinedAt: !1757)
!1790 = !DILocation(line: 1411, column: 13, scope: !1788, inlinedAt: !1757)
!1791 = !DILocation(line: 1409, column: 43, scope: !1779, inlinedAt: !1757)
!1792 = !DILocation(line: 1409, column: 49, scope: !1779, inlinedAt: !1757)
!1793 = !DILocation(line: 1412, column: 19, scope: !1794, inlinedAt: !1757)
!1794 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1411, column: 49)
!1795 = !DILocation(line: 1413, column: 28, scope: !1794, inlinedAt: !1757)
!1796 = !DILocation(line: 1413, column: 23, scope: !1794, inlinedAt: !1757)
!1797 = !DILocation(line: 1423, column: 33, scope: !1794, inlinedAt: !1757)
!1798 = !DILocation(line: 1423, column: 50, scope: !1794, inlinedAt: !1757)
!1799 = !DILocation(line: 1424, column: 29, scope: !1794, inlinedAt: !1757)
!1800 = !DILocation(line: 1424, column: 25, scope: !1794, inlinedAt: !1757)
!1801 = !DILocation(line: 1424, column: 39, scope: !1794, inlinedAt: !1757)
!1802 = !DILocation(line: 1424, column: 53, scope: !1794, inlinedAt: !1757)
!1803 = !DILocation(line: 1421, column: 17, scope: !1794, inlinedAt: !1757)
!1804 = !DILocation(line: 1411, column: 45, scope: !1787, inlinedAt: !1757)
!1805 = distinct !{!1805, !1790, !1806, !517, !518}
!1806 = !DILocation(line: 1426, column: 13, scope: !1788, inlinedAt: !1757)
!1807 = distinct !{!1807, !1782, !1808, !517, !518}
!1808 = !DILocation(line: 1427, column: 9, scope: !1780, inlinedAt: !1757)
!1809 = !DILocation(line: 1407, column: 13, scope: !1770, inlinedAt: !1757)
!1810 = !DILocation(line: 1428, column: 18, scope: !1811, inlinedAt: !1757)
!1811 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1428, column: 13)
!1812 = !DILocation(line: 1428, column: 29, scope: !1811, inlinedAt: !1757)
!1813 = !DILocation(line: 1428, column: 13, scope: !1776, inlinedAt: !1757)
!1814 = !DILocation(line: 1407, column: 60, scope: !1777, inlinedAt: !1757)
!1815 = distinct !{!1815, !1772, !1816, !517, !518}
!1816 = !DILocation(line: 1430, column: 5, scope: !1770, inlinedAt: !1757)
!1817 = !DILocation(line: 271, column: 15, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 271, column: 9)
!1819 = !DILocation(line: 271, column: 12, scope: !1818)
!1820 = !DILocation(line: 271, column: 9, scope: !1711)
!1821 = !DILocation(line: 272, column: 9, scope: !1818)
!1822 = !DILocation(line: 274, column: 1, scope: !1711)
!1823 = distinct !DISubprogram(name: "putbnd", scope: !3, file: !3, line: 276, type: !1824, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!37, !13, !355}
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1827 = !DILocalVariable(name: "fname", arg: 1, scope: !1823, file: !3, line: 276, type: !13)
!1828 = !DILocalVariable(name: "mol", arg: 2, scope: !1823, file: !3, line: 276, type: !355)
!1829 = !DILocalVariable(name: "fp", scope: !1823, file: !3, line: 278, type: !276)
!1830 = !DILocalVariable(name: "sp", scope: !1823, file: !3, line: 279, type: !74)
!1831 = !DILocalVariable(name: "res", scope: !1823, file: !3, line: 280, type: !39)
!1832 = !DILocalVariable(name: "a", scope: !1823, file: !3, line: 281, type: !37)
!1833 = !DILocalVariable(name: "ta", scope: !1823, file: !3, line: 281, type: !37)
!1834 = !DILocalVariable(name: "ai", scope: !1823, file: !3, line: 281, type: !37)
!1835 = !DILocalVariable(name: "aj", scope: !1823, file: !3, line: 281, type: !37)
!1836 = !DILocalVariable(name: "r", scope: !1823, file: !3, line: 281, type: !37)
!1837 = !DILocalVariable(name: "rj", scope: !1823, file: !3, line: 281, type: !37)
!1838 = !DILocalVariable(name: "tr", scope: !1823, file: !3, line: 281, type: !37)
!1839 = !DILocalVariable(name: "rval", scope: !1823, file: !3, line: 282, type: !37)
!1840 = !DILocalVariable(name: "aoff", scope: !1823, file: !3, line: 283, type: !36)
!1841 = !DILocalVariable(name: "b", scope: !1823, file: !3, line: 284, type: !37)
!1842 = !DILocalVariable(name: "ebp", scope: !1823, file: !3, line: 285, type: !190)
!1843 = !DILabel(scope: !1823, name: "clean_up", file: !3, line: 338)
!1844 = !DILocation(line: 0, scope: !1823)
!1845 = !DILocation(line: 287, column: 10, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 287, column: 9)
!1847 = !DILocation(line: 287, column: 9, scope: !1823)
!1848 = !DILocation(line: 288, column: 17, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 287, column: 15)
!1850 = !DILocation(line: 288, column: 9, scope: !1849)
!1851 = !DILocation(line: 289, column: 9, scope: !1849)
!1852 = !DILocation(line: 291, column: 15, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 291, column: 9)
!1854 = !DILocation(line: 291, column: 34, scope: !1853)
!1855 = !DILocation(line: 291, column: 9, scope: !1823)
!1856 = !DILocation(line: 292, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 291, column: 43)
!1858 = !DILocation(line: 293, column: 9, scope: !1857)
!1859 = !DILocation(line: 296, column: 28, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 296, column: 5)
!1861 = !DILocation(line: 0, scope: !1860)
!1862 = !DILocation(line: 296, column: 5, scope: !1860)
!1863 = !DILocation(line: 297, column: 19, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 296, column: 5)
!1865 = !DILocation(line: 297, column: 12, scope: !1864)
!1866 = !DILocation(line: 296, column: 52, scope: !1864)
!1867 = distinct !{!1867, !1862, !1868, !517, !518}
!1868 = !DILocation(line: 297, column: 19, scope: !1860)
!1869 = !DILocation(line: 299, column: 32, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 299, column: 9)
!1871 = !DILocation(line: 299, column: 25, scope: !1870)
!1872 = !DILocation(line: 299, column: 51, scope: !1870)
!1873 = !DILocation(line: 299, column: 9, scope: !1823)
!1874 = !DILocation(line: 305, column: 5, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 305, column: 5)
!1876 = !DILocation(line: 300, column: 9, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 299, column: 60)
!1878 = !DILocation(line: 338, column: 3, scope: !1823)
!1879 = !DILocation(line: 339, column: 9, scope: !1823)
!1880 = !DILocation(line: 317, column: 5, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 317, column: 5)
!1882 = !DILocation(line: 306, column: 9, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 305, column: 68)
!1884 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 305, column: 5)
!1885 = !DILocation(line: 306, column: 18, scope: !1883)
!1886 = !DILocation(line: 307, column: 17, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 307, column: 13)
!1888 = !DILocation(line: 307, column: 29, scope: !1887)
!1889 = !DILocation(line: 307, column: 13, scope: !1883)
!1890 = !DILocation(line: 308, column: 23, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 307, column: 34)
!1892 = !DILocation(line: 308, column: 19, scope: !1891)
!1893 = !DILocation(line: 308, column: 38, scope: !1891)
!1894 = !DILocation(line: 308, column: 16, scope: !1891)
!1895 = !DILocation(line: 309, column: 27, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 309, column: 13)
!1897 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 309, column: 13)
!1898 = !DILocation(line: 309, column: 13, scope: !1897)
!1899 = !DILocation(line: 310, column: 25, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 309, column: 51)
!1901 = !DILocation(line: 310, column: 17, scope: !1900)
!1902 = !DILocation(line: 310, column: 30, scope: !1900)
!1903 = !DILocation(line: 311, column: 23, scope: !1900)
!1904 = !DILocation(line: 311, column: 42, scope: !1900)
!1905 = !DILocation(line: 311, column: 20, scope: !1900)
!1906 = !DILocation(line: 309, column: 47, scope: !1896)
!1907 = distinct !{!1907, !1898, !1908, !517, !518}
!1908 = !DILocation(line: 312, column: 13, scope: !1897)
!1909 = !DILocation(line: 0, scope: !1891)
!1910 = !DILocation(line: 313, column: 16, scope: !1891)
!1911 = !DILocation(line: 314, column: 9, scope: !1891)
!1912 = !DILocation(line: 0, scope: !1875)
!1913 = !DILocation(line: 305, column: 60, scope: !1884)
!1914 = distinct !{!1914, !1874, !1915, !517, !518}
!1915 = !DILocation(line: 315, column: 5, scope: !1875)
!1916 = !DILocation(line: 318, column: 29, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 318, column: 9)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 318, column: 9)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 317, column: 60)
!1920 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 317, column: 5)
!1921 = !DILocation(line: 318, column: 23, scope: !1917)
!1922 = !DILocation(line: 318, column: 9, scope: !1918)
!1923 = !DILocation(line: 319, column: 23, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 318, column: 47)
!1925 = !DILocation(line: 319, column: 19, scope: !1924)
!1926 = !DILocation(line: 320, column: 24, scope: !1924)
!1927 = !DILocation(line: 320, column: 17, scope: !1924)
!1928 = !DILocation(line: 321, column: 34, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 321, column: 13)
!1930 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 321, column: 13)
!1931 = !{!612, !492, i64 72}
!1932 = !DILocation(line: 321, column: 27, scope: !1929)
!1933 = !DILocation(line: 321, column: 13, scope: !1930)
!1934 = !DILocation(line: 323, column: 30, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 321, column: 52)
!1936 = !{!612, !375, i64 80}
!1937 = !DILocation(line: 323, column: 25, scope: !1935)
!1938 = !DILocation(line: 323, column: 47, scope: !1935)
!1939 = !DILocation(line: 324, column: 25, scope: !1935)
!1940 = !DILocation(line: 324, column: 47, scope: !1935)
!1941 = !DILocation(line: 322, column: 17, scope: !1935)
!1942 = !DILocation(line: 321, column: 48, scope: !1929)
!1943 = distinct !{!1943, !1933, !1944, !517, !518}
!1944 = !DILocation(line: 325, column: 13, scope: !1930)
!1945 = !DILocation(line: 326, column: 29, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 326, column: 13)
!1947 = !DILocation(line: 0, scope: !1946)
!1948 = !DILocation(line: 326, column: 13, scope: !1946)
!1949 = !DILocation(line: 327, column: 32, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 327, column: 21)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 326, column: 66)
!1952 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 326, column: 13)
!1953 = !{!1954, !492, i64 12}
!1954 = !{!"extbond_t", !375, i64 0, !492, i64 8, !492, i64 12, !492, i64 16}
!1955 = !DILocation(line: 327, column: 41, scope: !1950)
!1956 = !DILocation(line: 327, column: 21, scope: !1951)
!1957 = !DILocation(line: 330, column: 35, scope: !1951)
!1958 = !DILocation(line: 330, column: 22, scope: !1951)
!1959 = !DILocation(line: 332, column: 30, scope: !1951)
!1960 = !{!1954, !492, i64 8}
!1961 = !DILocation(line: 332, column: 38, scope: !1951)
!1962 = !DILocation(line: 332, column: 49, scope: !1951)
!1963 = !{!1954, !492, i64 16}
!1964 = !DILocation(line: 332, column: 58, scope: !1951)
!1965 = !DILocation(line: 331, column: 17, scope: !1951)
!1966 = !DILocation(line: 333, column: 13, scope: !1951)
!1967 = distinct !{!1967, !1948, !1968, !517, !518}
!1968 = !DILocation(line: 333, column: 13, scope: !1946)
!1969 = !DILocation(line: 318, column: 43, scope: !1917)
!1970 = distinct !{!1970, !1922, !1971, !517, !518}
!1971 = !DILocation(line: 334, column: 9, scope: !1918)
!1972 = !DILocation(line: 335, column: 12, scope: !1919)
!1973 = !DILocation(line: 317, column: 52, scope: !1920)
!1974 = !DILocation(line: 0, scope: !1881)
!1975 = distinct !{!1975, !1880, !1976, !517, !518}
!1976 = !DILocation(line: 336, column: 5, scope: !1881)
!1977 = !DILocation(line: 340, column: 9, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 339, column: 9)
!1979 = !DILocation(line: 342, column: 5, scope: !1823)
!1980 = !DILocation(line: 344, column: 5, scope: !1823)
!1981 = !DILocation(line: 345, column: 1, scope: !1823)
!1982 = distinct !DISubprogram(name: "putdist", scope: !3, file: !3, line: 347, type: !1983, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!37, !13, !355, !13, !13}
!1985 = !{!1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003}
!1986 = !DILocalVariable(name: "fname", arg: 1, scope: !1982, file: !3, line: 347, type: !13)
!1987 = !DILocalVariable(name: "mol", arg: 2, scope: !1982, file: !3, line: 347, type: !355)
!1988 = !DILocalVariable(name: "aexp1", arg: 3, scope: !1982, file: !3, line: 347, type: !13)
!1989 = !DILocalVariable(name: "aexp2", arg: 4, scope: !1982, file: !3, line: 347, type: !13)
!1990 = !DILocalVariable(name: "fp", scope: !1982, file: !3, line: 349, type: !276)
!1991 = !DILocalVariable(name: "sp1", scope: !1982, file: !3, line: 350, type: !74)
!1992 = !DILocalVariable(name: "res1", scope: !1982, file: !3, line: 351, type: !39)
!1993 = !DILocalVariable(name: "res2", scope: !1982, file: !3, line: 351, type: !39)
!1994 = !DILocalVariable(name: "ap1", scope: !1982, file: !3, line: 352, type: !219)
!1995 = !DILocalVariable(name: "ap2", scope: !1982, file: !3, line: 352, type: !219)
!1996 = !DILocalVariable(name: "tr", scope: !1982, file: !3, line: 353, type: !37)
!1997 = !DILocalVariable(name: "r1", scope: !1982, file: !3, line: 353, type: !37)
!1998 = !DILocalVariable(name: "r2", scope: !1982, file: !3, line: 353, type: !37)
!1999 = !DILocalVariable(name: "a1", scope: !1982, file: !3, line: 353, type: !37)
!2000 = !DILocalVariable(name: "a2", scope: !1982, file: !3, line: 353, type: !37)
!2001 = !DILocalVariable(name: "res", scope: !1982, file: !3, line: 354, type: !38)
!2002 = !DILocalVariable(name: "cnt", scope: !1982, file: !3, line: 355, type: !37)
!2003 = !DILabel(scope: !1982, name: "clean_up", file: !3, line: 420)
!2004 = !DILocation(line: 0, scope: !1982)
!2005 = !DILocation(line: 357, column: 10, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 357, column: 9)
!2007 = !DILocation(line: 357, column: 9, scope: !1982)
!2008 = !DILocation(line: 358, column: 17, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 357, column: 15)
!2010 = !DILocation(line: 358, column: 9, scope: !2009)
!2011 = !DILocation(line: 359, column: 9, scope: !2009)
!2012 = !DILocation(line: 362, column: 5, scope: !1982)
!2013 = !DILocation(line: 363, column: 21, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 363, column: 5)
!2015 = !DILocation(line: 0, scope: !2014)
!2016 = !DILocation(line: 363, column: 5, scope: !2014)
!2017 = !DILocation(line: 364, column: 14, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 363, column: 56)
!2019 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 363, column: 5)
!2020 = !DILocation(line: 364, column: 21, scope: !2018)
!2021 = !{!741, !492, i64 12}
!2022 = !DILocation(line: 365, column: 24, scope: !2018)
!2023 = !DILocation(line: 365, column: 21, scope: !2018)
!2024 = !DILocation(line: 366, column: 25, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 366, column: 9)
!2026 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 366, column: 9)
!2027 = !DILocation(line: 366, column: 9, scope: !2026)
!2028 = !DILocation(line: 367, column: 20, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 366, column: 51)
!2030 = !DILocation(line: 368, column: 19, scope: !2029)
!2031 = !DILocation(line: 368, column: 26, scope: !2029)
!2032 = !{!612, !492, i64 40}
!2033 = !DILocation(line: 369, column: 29, scope: !2029)
!2034 = !DILocation(line: 369, column: 26, scope: !2029)
!2035 = !DILocation(line: 370, column: 50, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 370, column: 13)
!2037 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 370, column: 13)
!2038 = !DILocation(line: 370, column: 13, scope: !2037)
!2039 = !DILocation(line: 370, column: 38, scope: !2037)
!2040 = !DILocation(line: 372, column: 22, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 371, column: 31)
!2042 = !DILocation(line: 372, column: 29, scope: !2041)
!2043 = !DILocation(line: 373, column: 32, scope: !2041)
!2044 = !DILocation(line: 373, column: 29, scope: !2041)
!2045 = !DILocation(line: 371, column: 20, scope: !2036)
!2046 = !DILocation(line: 371, column: 27, scope: !2036)
!2047 = distinct !{!2047, !2038, !2048, !517, !518}
!2048 = !DILocation(line: 374, column: 13, scope: !2037)
!2049 = !DILocation(line: 366, column: 47, scope: !2025)
!2050 = distinct !{!2050, !2027, !2051, !517, !518}
!2051 = !DILocation(line: 375, column: 9, scope: !2026)
!2052 = !DILocation(line: 363, column: 48, scope: !2019)
!2053 = distinct !{!2053, !2016, !2054, !517, !518}
!2054 = !DILocation(line: 376, column: 5, scope: !2014)
!2055 = !DILocation(line: 377, column: 5, scope: !1982)
!2056 = !DILocation(line: 0, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 379, column: 5)
!2058 = !DILocation(line: 379, column: 5, scope: !2057)
!2059 = !DILocation(line: 380, column: 20, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 379, column: 5)
!2061 = !DILocation(line: 380, column: 12, scope: !2060)
!2062 = !DILocation(line: 379, column: 56, scope: !2060)
!2063 = distinct !{!2063, !2058, !2064, !517, !518}
!2064 = !DILocation(line: 380, column: 20, scope: !2057)
!2065 = !DILocation(line: 381, column: 38, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 381, column: 9)
!2067 = !DILocation(line: 381, column: 41, scope: !2066)
!2068 = !DILocation(line: 381, column: 31, scope: !2066)
!2069 = !DILocation(line: 382, column: 9, scope: !2066)
!2070 = !DILocation(line: 381, column: 9, scope: !1982)
!2071 = !DILocation(line: 386, column: 5, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 386, column: 5)
!2073 = !DILocation(line: 383, column: 17, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 382, column: 18)
!2075 = !DILocation(line: 383, column: 9, scope: !2074)
!2076 = !DILocation(line: 420, column: 3, scope: !1982)
!2077 = !DILocation(line: 421, column: 9, scope: !1982)
!2078 = !DILocation(line: 387, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 387, column: 9)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 387, column: 9)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 386, column: 64)
!2082 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 386, column: 5)
!2083 = !DILocation(line: 387, column: 9, scope: !2080)
!2084 = !DILocation(line: 388, column: 23, scope: !2079)
!2085 = !DILocation(line: 386, column: 56, scope: !2082)
!2086 = !DILocation(line: 0, scope: !2072)
!2087 = distinct !{!2087, !2071, !2088, !517, !518}
!2088 = !DILocation(line: 389, column: 5, scope: !2072)
!2089 = !DILocation(line: 391, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 391, column: 9)
!2091 = !DILocation(line: 391, column: 34, scope: !2090)
!2092 = !DILocation(line: 391, column: 9, scope: !1982)
!2093 = !DILocation(line: 396, column: 30, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 396, column: 5)
!2095 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 396, column: 5)
!2096 = !DILocation(line: 396, column: 5, scope: !2095)
!2097 = !DILocation(line: 397, column: 16, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 396, column: 42)
!2099 = !DILocation(line: 398, column: 33, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 398, column: 9)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 398, column: 9)
!2102 = !DILocation(line: 398, column: 25, scope: !2100)
!2103 = !DILocation(line: 398, column: 9, scope: !2101)
!2104 = !DILocation(line: 396, column: 38, scope: !2094)
!2105 = !DILocation(line: 396, column: 14, scope: !2095)
!2106 = distinct !{!2106, !2096, !2107, !517, !518}
!2107 = !DILocation(line: 418, column: 5, scope: !2095)
!2108 = !DILocation(line: 399, column: 26, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 398, column: 49)
!2110 = !DILocation(line: 399, column: 20, scope: !2109)
!2111 = !DILocation(line: 400, column: 36, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 400, column: 17)
!2113 = !DILocation(line: 400, column: 29, scope: !2112)
!2114 = !DILocation(line: 400, column: 17, scope: !2109)
!2115 = !DILocation(line: 402, column: 28, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 401, column: 45)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 401, column: 17)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 401, column: 17)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 400, column: 44)
!2120 = !DILocation(line: 403, column: 45, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 403, column: 21)
!2122 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 403, column: 21)
!2123 = !DILocation(line: 403, column: 37, scope: !2121)
!2124 = !DILocation(line: 403, column: 21, scope: !2122)
!2125 = !DILocation(line: 401, column: 41, scope: !2117)
!2126 = !DILocation(line: 0, scope: !2095)
!2127 = !DILocation(line: 401, column: 33, scope: !2117)
!2128 = !DILocation(line: 401, column: 17, scope: !2118)
!2129 = distinct !{!2129, !2128, !2130, !517, !518}
!2130 = !DILocation(line: 415, column: 17, scope: !2118)
!2131 = !DILocation(line: 404, column: 38, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 403, column: 61)
!2133 = !DILocation(line: 405, column: 46, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 405, column: 29)
!2135 = !DILocation(line: 405, column: 39, scope: !2134)
!2136 = !DILocation(line: 405, column: 29, scope: !2132)
!2137 = !DILocation(line: 404, column: 32, scope: !2132)
!2138 = !DILocation(line: 408, column: 51, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 405, column: 54)
!2140 = !DILocation(line: 409, column: 42, scope: !2139)
!2141 = !DILocation(line: 410, column: 43, scope: !2139)
!2142 = !DILocation(line: 410, column: 59, scope: !2139)
!2143 = !DILocalVariable(name: "ap1", arg: 1, scope: !2144, file: !3, line: 839, type: !219)
!2144 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 839, type: !2145, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!10, !219, !219}
!2147 = !{!2143, !2148, !2149, !2150, !2151}
!2148 = !DILocalVariable(name: "ap2", arg: 2, scope: !2144, file: !3, line: 839, type: !219)
!2149 = !DILocalVariable(name: "dx", scope: !2144, file: !3, line: 841, type: !10)
!2150 = !DILocalVariable(name: "dy", scope: !2144, file: !3, line: 841, type: !10)
!2151 = !DILocalVariable(name: "dz", scope: !2144, file: !3, line: 841, type: !10)
!2152 = !DILocation(line: 0, scope: !2144, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 411, column: 37, scope: !2139)
!2154 = !DILocation(line: 843, column: 10, scope: !2144, inlinedAt: !2153)
!2155 = !DILocation(line: 843, column: 31, scope: !2144, inlinedAt: !2153)
!2156 = !DILocation(line: 843, column: 26, scope: !2144, inlinedAt: !2153)
!2157 = !DILocation(line: 843, column: 24, scope: !2144, inlinedAt: !2153)
!2158 = !DILocation(line: 844, column: 10, scope: !2144, inlinedAt: !2153)
!2159 = !DILocation(line: 844, column: 26, scope: !2144, inlinedAt: !2153)
!2160 = !DILocation(line: 844, column: 24, scope: !2144, inlinedAt: !2153)
!2161 = !DILocation(line: 845, column: 10, scope: !2144, inlinedAt: !2153)
!2162 = !DILocation(line: 845, column: 26, scope: !2144, inlinedAt: !2153)
!2163 = !DILocation(line: 845, column: 24, scope: !2144, inlinedAt: !2153)
!2164 = !DILocation(line: 846, column: 31, scope: !2144, inlinedAt: !2153)
!2165 = !DILocation(line: 846, column: 26, scope: !2144, inlinedAt: !2153)
!2166 = !DILocation(line: 846, column: 36, scope: !2144, inlinedAt: !2153)
!2167 = !DILocation(line: 846, column: 13, scope: !2144, inlinedAt: !2153)
!2168 = !DILocation(line: 406, column: 29, scope: !2139)
!2169 = !DILocation(line: 412, column: 32, scope: !2139)
!2170 = !DILocation(line: 413, column: 25, scope: !2139)
!2171 = !DILocation(line: 403, column: 57, scope: !2121)
!2172 = distinct !{!2172, !2124, !2173, !517, !518}
!2173 = !DILocation(line: 414, column: 21, scope: !2122)
!2174 = !DILocation(line: 398, column: 45, scope: !2100)
!2175 = distinct !{!2175, !2103, !2176, !517, !518}
!2176 = !DILocation(line: 417, column: 9, scope: !2101)
!2177 = !DILocation(line: 392, column: 17, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 391, column: 43)
!2179 = !DILocation(line: 392, column: 9, scope: !2178)
!2180 = !DILocation(line: 393, column: 9, scope: !2178)
!2181 = !DILocation(line: 422, column: 9, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 421, column: 9)
!2183 = !DILocation(line: 425, column: 1, scope: !1982)
!2184 = !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 106, type: !2185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !355, !13}
!2187 = distinct !DISubprogram(name: "putmatrix", scope: !3, file: !3, line: 427, type: !2188, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2192)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!37, !13, !2190}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !214)
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199}
!2193 = !DILocalVariable(name: "fname", arg: 1, scope: !2187, file: !3, line: 427, type: !13)
!2194 = !DILocalVariable(name: "mat", arg: 2, scope: !2187, file: !3, line: 427, type: !2190)
!2195 = !DILocalVariable(name: "fp", scope: !2187, file: !3, line: 429, type: !276)
!2196 = !DILocalVariable(name: "i", scope: !2187, file: !3, line: 430, type: !37)
!2197 = !DILocalVariable(name: "j", scope: !2187, file: !3, line: 430, type: !37)
!2198 = !DILocalVariable(name: "err", scope: !2187, file: !3, line: 431, type: !37)
!2199 = !DILabel(scope: !2187, name: "CLEAN_UP", file: !3, line: 451)
!2200 = !DILocation(line: 0, scope: !2187)
!2201 = !DILocation(line: 433, column: 15, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 433, column: 9)
!2203 = !DILocation(line: 433, column: 23, scope: !2202)
!2204 = !DILocation(line: 433, column: 26, scope: !2202)
!2205 = !DILocation(line: 433, column: 33, scope: !2202)
!2206 = !DILocation(line: 433, column: 9, scope: !2187)
!2207 = !DILocation(line: 434, column: 17, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 433, column: 42)
!2209 = !DILocation(line: 434, column: 9, scope: !2208)
!2210 = !DILocation(line: 436, column: 9, scope: !2208)
!2211 = !DILocation(line: 437, column: 17, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 437, column: 16)
!2213 = !DILocation(line: 437, column: 16, scope: !2202)
!2214 = !DILocation(line: 438, column: 14, scope: !2212)
!2215 = !DILocation(line: 438, column: 9, scope: !2212)
!2216 = !DILocation(line: 439, column: 20, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 439, column: 14)
!2218 = !DILocation(line: 439, column: 39, scope: !2217)
!2219 = !DILocation(line: 439, column: 14, scope: !2212)
!2220 = !DILocation(line: 440, column: 17, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 439, column: 48)
!2222 = !DILocation(line: 440, column: 9, scope: !2221)
!2223 = !DILocation(line: 442, column: 9, scope: !2221)
!2224 = !DILocation(line: 0, scope: !2212)
!2225 = !DILocation(line: 445, column: 5, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 445, column: 5)
!2227 = !DILocation(line: 446, column: 9, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 446, column: 9)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 445, column: 29)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 445, column: 5)
!2231 = !DILocation(line: 447, column: 32, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 446, column: 9)
!2233 = !DILocation(line: 447, column: 13, scope: !2232)
!2234 = !DILocation(line: 446, column: 29, scope: !2232)
!2235 = !DILocation(line: 446, column: 23, scope: !2232)
!2236 = distinct !{!2236, !2227, !2237, !517, !518}
!2237 = !DILocation(line: 447, column: 41, scope: !2228)
!2238 = !DILocation(line: 448, column: 9, scope: !2229)
!2239 = !DILocation(line: 445, column: 25, scope: !2230)
!2240 = !DILocation(line: 445, column: 19, scope: !2230)
!2241 = distinct !{!2241, !2225, !2242, !517, !518}
!2242 = !DILocation(line: 449, column: 5, scope: !2226)
!2243 = !DILocation(line: 451, column: 3, scope: !2187)
!2244 = !DILocation(line: 453, column: 12, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 453, column: 9)
!2246 = !DILocation(line: 453, column: 20, scope: !2245)
!2247 = !DILocation(line: 454, column: 9, scope: !2245)
!2248 = !DILocation(line: 455, column: 5, scope: !2187)
!2249 = distinct !DISubprogram(name: "initres", scope: !3, file: !3, line: 750, type: !259, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !735)
!2250 = !DILocation(line: 753, column: 5, scope: !2249)
!2251 = !DILocation(line: 754, column: 13, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 754, column: 9)
!2253 = !DILocation(line: 754, column: 23, scope: !2252)
!2254 = !DILocation(line: 754, column: 9, scope: !2249)
!2255 = !DILocation(line: 755, column: 34, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 754, column: 32)
!2257 = !DILocation(line: 755, column: 23, scope: !2256)
!2258 = !DILocation(line: 756, column: 27, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 756, column: 13)
!2260 = !DILocation(line: 756, column: 13, scope: !2256)
!2261 = !DILocation(line: 757, column: 21, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 756, column: 36)
!2263 = !DILocation(line: 757, column: 13, scope: !2262)
!2264 = !DILocation(line: 758, column: 13, scope: !2262)
!2265 = !DILocation(line: 761, column: 13, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 761, column: 9)
!2267 = !DILocation(line: 761, column: 21, scope: !2266)
!2268 = !DILocation(line: 761, column: 9, scope: !2249)
!2269 = !DILocation(line: 762, column: 32, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 761, column: 30)
!2271 = !DILocation(line: 762, column: 21, scope: !2270)
!2272 = !DILocation(line: 763, column: 25, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 763, column: 13)
!2274 = !DILocation(line: 763, column: 13, scope: !2270)
!2275 = !DILocation(line: 764, column: 21, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 763, column: 34)
!2277 = !DILocation(line: 764, column: 13, scope: !2276)
!2278 = !DILocation(line: 765, column: 13, scope: !2276)
!2279 = !DILocation(line: 768, column: 20, scope: !2249)
!2280 = !DILocation(line: 768, column: 18, scope: !2249)
!2281 = !DILocation(line: 769, column: 17, scope: !2249)
!2282 = !DILocation(line: 770, column: 1, scope: !2249)
!2283 = !DISubprogram(name: "newmolecule", scope: !3, file: !3, line: 103, type: !2284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!355}
!2286 = !DISubprogram(name: "ggets", scope: !3, file: !3, line: 101, type: !2287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!13, !13, !37, !276}
!2289 = distinct !DISubprogram(name: "makebonds", scope: !3, file: !3, line: 794, type: !2290, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !39}
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300}
!2293 = !DILocalVariable(name: "res", arg: 1, scope: !2289, file: !3, line: 794, type: !39)
!2294 = !DILocalVariable(name: "a1", scope: !2289, file: !3, line: 796, type: !37)
!2295 = !DILocalVariable(name: "a2", scope: !2289, file: !3, line: 796, type: !37)
!2296 = !DILocalVariable(name: "ap1", scope: !2289, file: !3, line: 797, type: !219)
!2297 = !DILocalVariable(name: "ap2", scope: !2289, file: !3, line: 797, type: !219)
!2298 = !DILocalVariable(name: "ih1", scope: !2289, file: !3, line: 798, type: !37)
!2299 = !DILocalVariable(name: "ih2", scope: !2289, file: !3, line: 798, type: !37)
!2300 = !DILocalVariable(name: "d", scope: !2289, file: !3, line: 799, type: !10)
!2301 = !DILocation(line: 0, scope: !2289)
!2302 = !DILocation(line: 801, column: 21, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 801, column: 5)
!2304 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 801, column: 5)
!2305 = !DILocation(line: 801, column: 5, scope: !2304)
!2306 = !DILocation(line: 806, column: 21, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 806, column: 5)
!2308 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 806, column: 5)
!2309 = !DILocation(line: 806, column: 5, scope: !2308)
!2310 = !DILocation(line: 803, column: 14, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 801, column: 44)
!2312 = !DILocation(line: 803, column: 25, scope: !2311)
!2313 = !{!491, !492, i64 20}
!2314 = !DILocation(line: 801, column: 40, scope: !2303)
!2315 = distinct !{!2315, !2305, !2316, !517, !518}
!2316 = !DILocation(line: 804, column: 5, scope: !2304)
!2317 = !DILocation(line: 806, column: 28, scope: !2307)
!2318 = !DILocation(line: 806, column: 37, scope: !2307)
!2319 = distinct !{!2319, !2309, !2320, !517, !518}
!2320 = !DILocation(line: 836, column: 5, scope: !2308)
!2321 = !DILocation(line: 807, column: 21, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 806, column: 48)
!2323 = !DILocation(line: 807, column: 16, scope: !2322)
!2324 = !DILocation(line: 808, column: 13, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 808, column: 13)
!2326 = !{!2327, !2327, i64 0}
!2327 = !{!"short", !369, i64 0}
!2328 = !DILocation(line: 808, column: 13, scope: !2322)
!2329 = !DILocation(line: 809, column: 19, scope: !2325)
!2330 = !DILocation(line: 809, column: 13, scope: !2325)
!2331 = !DILocation(line: 0, scope: !2325)
!2332 = !DILocation(line: 812, column: 22, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 812, column: 9)
!2334 = !DILocation(line: 812, column: 30, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 812, column: 9)
!2336 = !DILocation(line: 812, column: 9, scope: !2333)
!2337 = !DILocation(line: 814, column: 17, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 814, column: 17)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 812, column: 53)
!2340 = !DILocation(line: 813, column: 25, scope: !2339)
!2341 = !DILocation(line: 813, column: 20, scope: !2339)
!2342 = !DILocation(line: 814, column: 17, scope: !2339)
!2343 = !DILocation(line: 815, column: 23, scope: !2338)
!2344 = !DILocation(line: 815, column: 17, scope: !2338)
!2345 = !DILocation(line: 0, scope: !2338)
!2346 = !DILocation(line: 0, scope: !2144, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 819, column: 17, scope: !2339)
!2348 = !DILocation(line: 843, column: 10, scope: !2144, inlinedAt: !2347)
!2349 = !DILocation(line: 843, column: 31, scope: !2144, inlinedAt: !2347)
!2350 = !DILocation(line: 843, column: 26, scope: !2144, inlinedAt: !2347)
!2351 = !DILocation(line: 843, column: 24, scope: !2144, inlinedAt: !2347)
!2352 = !DILocation(line: 844, column: 10, scope: !2144, inlinedAt: !2347)
!2353 = !DILocation(line: 844, column: 26, scope: !2144, inlinedAt: !2347)
!2354 = !DILocation(line: 844, column: 24, scope: !2144, inlinedAt: !2347)
!2355 = !DILocation(line: 845, column: 10, scope: !2144, inlinedAt: !2347)
!2356 = !DILocation(line: 845, column: 26, scope: !2144, inlinedAt: !2347)
!2357 = !DILocation(line: 845, column: 24, scope: !2144, inlinedAt: !2347)
!2358 = !DILocation(line: 846, column: 31, scope: !2144, inlinedAt: !2347)
!2359 = !DILocation(line: 846, column: 26, scope: !2144, inlinedAt: !2347)
!2360 = !DILocation(line: 846, column: 36, scope: !2144, inlinedAt: !2347)
!2361 = !DILocation(line: 846, column: 13, scope: !2144, inlinedAt: !2347)
!2362 = !DILocation(line: 820, column: 21, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 820, column: 17)
!2364 = !DILocation(line: 821, column: 23, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 821, column: 21)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 820, column: 29)
!2367 = !DILocation(line: 821, column: 21, scope: !2366)
!2368 = !DILocation(line: 822, column: 30, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 822, column: 25)
!2370 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 821, column: 37)
!2371 = !DILocation(line: 822, column: 41, scope: !2369)
!2372 = !DILocation(line: 822, column: 58, scope: !2369)
!2373 = !DILocation(line: 823, column: 30, scope: !2369)
!2374 = !DILocation(line: 823, column: 41, scope: !2369)
!2375 = !DILocation(line: 822, column: 25, scope: !2370)
!2376 = !DILocation(line: 828, column: 26, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 828, column: 24)
!2378 = !DILocation(line: 828, column: 24, scope: !2363)
!2379 = !DILocation(line: 829, column: 26, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 829, column: 21)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 828, column: 39)
!2382 = !DILocation(line: 829, column: 37, scope: !2380)
!2383 = !DILocation(line: 829, column: 54, scope: !2380)
!2384 = !DILocation(line: 830, column: 26, scope: !2380)
!2385 = !DILocation(line: 830, column: 37, scope: !2380)
!2386 = !DILocation(line: 829, column: 21, scope: !2381)
!2387 = !DILocation(line: 0, scope: !2363)
!2388 = !DILocation(line: 812, column: 49, scope: !2335)
!2389 = !DILocation(line: 812, column: 37, scope: !2335)
!2390 = distinct !{!2390, !2336, !2391, !517, !518}
!2391 = !DILocation(line: 835, column: 9, scope: !2333)
!2392 = !DILocation(line: 837, column: 1, scope: !2289)
!2393 = !DISubprogram(name: "addresidue", scope: !3, file: !3, line: 105, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!37, !355, !13, !39}
!2396 = !DISubprogram(name: "addstrand", scope: !3, file: !3, line: 104, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!37, !355, !13}
!2399 = !DISubprogram(name: "NAB_initatom", scope: !3, file: !3, line: 89, type: !2400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !219, !37}
!2402 = !DISubprogram(name: "NAB_initres", scope: !3, file: !3, line: 88, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !735)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{null, !39, !37}
