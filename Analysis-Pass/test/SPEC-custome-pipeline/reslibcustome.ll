; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/reslib.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/reslib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.reslib_t = type { %struct.reslib_t*, i8*, i32, i32, %struct.residue_t* }
%struct.residue_t = type { %struct.residue_t*, i32, i32, i32, i8*, i8*, i32, i32, i32, %struct.strand_t*, %struct.extbond_t*, i32, [2 x i32]*, i32, %struct.chiral_t*, i32, i32*, %struct.atom_t* }
%struct.strand_t = type { i8*, i32, i32, %struct.molecule_t*, %struct.strand_t*, i32, i32, %struct.residue_t** }
%struct.molecule_t = type { [4 x [3 x double]], i32, %struct.strand_t*, i32, i32, i32, %struct.parm* }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, [3 x double], double, double, double, double, double, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double* }
%struct.extbond_t = type { %struct.extbond_t*, i32, i32, i32 }
%struct.chiral_t = type { [4 x i32], double }
%struct.atom_t = type { i8*, i8*, i32, i32, [8 x i32], %struct.residue_t*, double, double, double, double, i8*, i32, double, double, i32, i32, i8*, [3 x double], double }
%struct.DATABASEt = type { i32, %struct._IO_FILE*, [256 x i8], i32, i32, [10 x [256 x i8]], i8, i8*, i32, [1000 x i8], i32, [256 x i8], i32 }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"getreslibkind: unknown reslib %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dna\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rna\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"DNA\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ADE\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"GUA\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"DG\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"THY\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"CYT\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"URA\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@e_msg = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str.23 = private unnamed_addr constant [21 x i8] c"%s not in library %s\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Residue %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"new residue %s\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Unable to allocate space for %s.\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"atoms in new residue %s\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"atom index in new residue %s\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"bonds in new residue %s\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"chirality in residue %s\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"copyresidue: can't allocate new r_resname.\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"copyresidue: can't allocate new r_resid.\0A\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"copyresidue: can't allocate anp.\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"new strand %s\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"copystrand pointer array\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"strandname %s\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"copymolecule\00", align 1
@reslibs = internal unnamed_addr global %struct.reslib_t* null, align 8, !dbg !235
@.str.38 = private unnamed_addr constant [5 x i8] c".lib\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"../leap/lib/%s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"Can't open residue library %s.\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"new reslib %s\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"name for new reslib %s\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"atomtype\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"united\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"pdb file %s\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Can't open file %s.\0A\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"bnd file %s\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"qr\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"qr file %s\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"chi file %s\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"%-*.*s\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"Incorrect line in residue library header %s...\0A\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"%s/reslib/%s\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c".\00", align 1
@initatoms.init = internal unnamed_addr global i1 false, align 4, !dbg !270
@atoms = internal global [1000 x %struct.atom_t] zeroinitializer, align 16, !dbg !245
@.str.64 = private unnamed_addr constant [39 x i8] c"initatoms: can't allocate a_atomname.\0A\00", align 1
@n_atoms = internal global i32 0, align 4, !dbg !250
@.str.65 = private unnamed_addr constant [7 x i8] c"!index\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"entry.%s.\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"unit.name\00", align 1
@lr_name = internal global [8 x i8] zeroinitializer, align 1, !dbg !252
@.str.68 = private unnamed_addr constant [11 x i8] c"unit.atoms\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"unit.positions\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"unit.connectivity\00", align 1
@n_bonds = internal global i32 0, align 4, !dbg !255
@bonds = internal unnamed_addr global [1000 x [2 x i32]] zeroinitializer, align 16, !dbg !257
@.str.71 = private unnamed_addr constant [24 x i8] c"residue %s in reslib %s\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"atoms in residue %s in reslib %s\00", align 1
@.str.73 = private unnamed_addr constant [46 x i8] c"addres2reslib: can't allocate new r_resname.\0A\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"addres2reslib: can't allocate new r_resid.\0A\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"addres2reslib: can't allocate anp.\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"bonds of residue %s\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"%s not in reslib %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"REMARK\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"%s %d %s %s %d %lf %lf %lf\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"REMARK RESLIB %s %s\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"UNITED\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"# %s\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"Incorrect header line in bond file: %s...\0A\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.89 = private unnamed_addr constant [41 x i8] c"Incorrect data line in bond file: %s...\0A\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"REM\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"%s %d %s %s %d %lf %lf\00", align 1
@n_chi = internal unnamed_addr global i32 0, align 4, !dbg !260
@.str.92 = private unnamed_addr constant [44 x i8] c"chi2reslib: bad line in chirality file: %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"chi2reslib: res %s not in %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"chi2reslib: atom \22%s\22 not in residue \22%s\22\0A\00", align 1
@chi = internal unnamed_addr global [500 x %struct.chiral_t] zeroinitializer, align 16, !dbg !262
@.str.96 = private unnamed_addr constant [44 x i8] c"addchi2reslib: can't alloc r_chiral for %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"addchi2reslib: res %s not reslib %s\0A\00", align 1
@switch.table.getreslibkind = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)], align 8

; Function Attrs: nounwind uwtable
define dso_local i8* @getreslibkind(i8* noundef %reslib) local_unnamed_addr #0 !dbg !276 {
entry:
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !280, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i8** undef, metadata !281, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !285, metadata !DIExpression()) #14, !dbg !291
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !290, metadata !DIExpression()) #14, !dbg !291
  %rlp.05.i = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !294, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.05.i, metadata !290, metadata !DIExpression()) #14, !dbg !291
  %tobool.not6.i = icmp eq %struct.reslib_t* %rlp.05.i, null, !dbg !300
  br i1 %tobool.not6.i, label %if.then, label %for.body.i, !dbg !300

for.body.i:                                       ; preds = %entry, %for.inc.i
  %rlp.07.i = phi %struct.reslib_t* [ %rlp.0.i, %for.inc.i ], [ %rlp.05.i, %entry ]
  %rl_name.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.07.i, i64 0, i32 1, !dbg !301
  %0 = load i8*, i8** %rl_name.i, align 8, !dbg !301, !tbaa !305
  %call.i = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %reslib) #15, !dbg !308
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !309
  br i1 %cmp.i, label %if.end5, label %for.inc.i, !dbg !310

for.inc.i:                                        ; preds = %for.body.i
  %rl_next.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.07.i, i64 0, i32 0, !dbg !311
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !290, metadata !DIExpression()) #14, !dbg !291
  %rlp.0.i = load %struct.reslib_t*, %struct.reslib_t** %rl_next.i, align 8, !dbg !294, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0.i, metadata !290, metadata !DIExpression()) #14, !dbg !291
  %tobool.not.i = icmp eq %struct.reslib_t* %rlp.0.i, null, !dbg !300
  br i1 %tobool.not.i, label %if.then, label %for.body.i, !dbg !300, !llvm.loop !312

if.then:                                          ; preds = %for.inc.i, %entry
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !282, metadata !DIExpression()), !dbg !283
  %call1 = tail call fastcc %struct.reslib_t* @read_reslib(i8* noundef %reslib), !dbg !316
  call void @llvm.dbg.value(metadata %struct.reslib_t* %call1, metadata !282, metadata !DIExpression()), !dbg !283
  %cmp2 = icmp eq %struct.reslib_t* %call1, null, !dbg !319
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !320

if.then3:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !321, !tbaa !296
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %reslib) #16, !dbg !323
  tail call void @exit(i32 noundef 1) #17, !dbg !324
  unreachable, !dbg !324

if.end5:                                          ; preds = %for.body.i, %if.then
  %rlp.0 = phi %struct.reslib_t* [ %call1, %if.then ], [ %rlp.07.i, %for.body.i ], !dbg !325
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0, metadata !282, metadata !DIExpression()), !dbg !283
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.0, i64 0, i32 2, !dbg !326
  %2 = load i32, i32* %rl_r_kind, align 8, !dbg !326, !tbaa !328
  %switch.tableidx = add i32 %2, -1, !dbg !329
  %3 = icmp ult i32 %switch.tableidx, 3, !dbg !329
  br i1 %3, label %switch.lookup, label %cleanup, !dbg !329

switch.lookup:                                    ; preds = %if.end5
  %4 = sext i32 %switch.tableidx to i64, !dbg !329
  %switch.gep = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table.getreslibkind, i64 0, i64 %4, !dbg !329
  %switch.load = load i8*, i8** %switch.gep, align 8, !dbg !329
  br label %cleanup, !dbg !329

cleanup:                                          ; preds = %switch.lookup, %if.end5
  %retval.0 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %if.end5 ], [ %switch.load, %switch.lookup ], !dbg !330
  ret i8* %retval.0, !dbg !331
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.reslib_t* @read_reslib(i8* noundef %reslib) unnamed_addr #0 !dbg !332 {
entry:
  %line.i108 = alloca [256 x i8], align 16
  %r_name.i109 = alloca [20 x i8], align 16
  %anm1.i = alloca [8 x i8], align 1
  %anm2.i = alloca [8 x i8], align 1
  %anm3.i = alloca [8 x i8], align 1
  %anm4.i = alloca [8 x i8], align 1
  %line.i78 = alloca [256 x i8], align 16
  %ltype.i79 = alloca [10 x i8], align 1
  %a_name.i80 = alloca [10 x i8], align 1
  %r_name.i81 = alloca [10 x i8], align 1
  %a_num.i82 = alloca i32, align 4
  %r_num.i83 = alloca i32, align 4
  %q.i = alloca double, align 8
  %r.i = alloca double, align 8
  %line.i60 = alloca [256 x i8], align 16
  %r_name.i61 = alloca [20 x i8], align 16
  %bi.i = alloca i32, align 4
  %bj.i = alloca i32, align 4
  %rkind.i.i = alloca [100 x i8], align 16
  %rakind.i.i = alloca [100 x i8], align 16
  %line.i36 = alloca [256 x i8], align 16
  %ltype.i = alloca [10 x i8], align 1
  %a_name.i37 = alloca [10 x i8], align 1
  %r_name.i = alloca [10 x i8], align 1
  %a_num.i = alloca i32, align 4
  %r_num.i = alloca i32, align 4
  %x.i38 = alloca double, align 8
  %y.i39 = alloca double, align 8
  %z.i40 = alloca double, align 8
  %n_names.i = alloca i32, align 4
  %n_resnames.i = alloca i32, align 4
  %typex.i = alloca [100 x i32], align 16
  %resx.i = alloca [100 x i32], align 16
  %flags.i = alloca [100 x i32], align 16
  %seq.i = alloca [100 x i32], align 16
  %elmnt.i = alloca [100 x i32], align 16
  %atom1x.i = alloca [100 x i32], align 16
  %atom2x.i = alloca [100 x i32], align 16
  %chg.i = alloca [100 x double], align 16
  %x.i = alloca [100 x double], align 16
  %y.i = alloca [100 x double], align 16
  %z.i = alloca [100 x double], align 16
  %a_name.i = alloca [100 x [10 x i8]], align 16
  %type.i = alloca [100 x [10 x i8]], align 16
  %res_name.i = alloca [100 x [10 x i8]], align 16
  %prefix.i = alloca [255 x i8], align 16
  %line.i = alloca [128 x i8], align 16
  %keyword.i = alloca [20 x i8], align 16
  %value.i = alloca [100 x i8], align 16
  %newname.i = alloca [100 x i8], align 16
  %fname.i = alloca [256 x i8], align 16
  %offname = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !334, metadata !DIExpression()), !dbg !400
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %offname, i64 0, i64 0, !dbg !401
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #14, !dbg !401
  call void @llvm.dbg.declare(metadata [256 x i8]* %offname, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !403, metadata !DIExpression()) #14, !dbg !431
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !409, metadata !DIExpression()) #14, !dbg !431
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !410, metadata !DIExpression()) #14, !dbg !431
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !411, metadata !DIExpression()) #14, !dbg !431
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !412, metadata !DIExpression()) #14, !dbg !431
  call void @llvm.dbg.value(metadata i8* %0, metadata !413, metadata !DIExpression()) #14, !dbg !431
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %line.i, i64 0, i64 0, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #14, !dbg !434
  call void @llvm.dbg.declare(metadata [128 x i8]* %line.i, metadata !419, metadata !DIExpression()) #14, !dbg !435
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %keyword.i, i64 0, i64 0, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #14, !dbg !434
  call void @llvm.dbg.declare(metadata [20 x i8]* %keyword.i, metadata !423, metadata !DIExpression()) #14, !dbg !436
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %value.i, i64 0, i64 0, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %3) #14, !dbg !434
  call void @llvm.dbg.declare(metadata [100 x i8]* %value.i, metadata !424, metadata !DIExpression()) #14, !dbg !437
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %newname.i, i64 0, i64 0, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %4) #14, !dbg !434
  call void @llvm.dbg.declare(metadata [100 x i8]* %newname.i, metadata !428, metadata !DIExpression()) #14, !dbg !438
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %fname.i, i64 0, i64 0, !dbg !439
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #14, !dbg !439
  call void @llvm.dbg.declare(metadata [256 x i8]* %fname.i, metadata !429, metadata !DIExpression()) #14, !dbg !440
  %call.i = tail call i8* @strstr(i8* noundef nonnull dereferenceable(1) %reslib, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #15, !dbg !441
  %cmp.not.i = icmp eq i8* %call.i, null, !dbg !443
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i, !dbg !444

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %4, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef %reslib) #14, !dbg !445
  call void @llvm.dbg.value(metadata i8* %4, metadata !447, metadata !DIExpression()) #14, !dbg !453
  call void @llvm.dbg.value(metadata i8* %5, metadata !452, metadata !DIExpression()) #14, !dbg !453
  %6 = load i8, i8* %4, align 16, !dbg !455, !tbaa !457
  %cmp.i.i = icmp eq i8 %6, 47, !dbg !458
  %7 = bitcast [100 x i8]* %newname.i to i16*
  %rhsv.i = load i16, i16* %7, align 16
  %.not.i = icmp eq i16 %rhsv.i, 12078
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %.not.i, !dbg !459
  br i1 %or.cond.i, label %if.then.i.i, label %if.else.i.i, !dbg !459

if.then.i.i:                                      ; preds = %if.then.i
  %call2.i.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %4) #14, !dbg !460
  br label %mk_fname.exit.i, !dbg !460

if.else.i.i:                                      ; preds = %if.then.i
  %call3.i.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %4) #14, !dbg !461
  br label %mk_fname.exit.i

mk_fname.exit.i:                                  ; preds = %if.else.i.i, %if.then.i.i
  %call5.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !462
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call5.i, metadata !414, metadata !DIExpression()) #14, !dbg !431
  %cmp6.i = icmp eq %struct._IO_FILE* %call5.i, null, !dbg !464
  br i1 %cmp6.i, label %if.then7.i, label %if.end18.i, !dbg !465

if.then7.i:                                       ; preds = %mk_fname.exit.i
  %call9.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %5) #14, !dbg !466
  br label %read_reslib_header.exit.thread, !dbg !468

if.else.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !447, metadata !DIExpression()) #14, !dbg !469
  call void @llvm.dbg.value(metadata i8* %5, metadata !452, metadata !DIExpression()) #14, !dbg !469
  %8 = load i8, i8* %reslib, align 1, !dbg !472, !tbaa !457
  %cmp.i307.i = icmp eq i8 %8, 47, !dbg !473
  br i1 %cmp.i307.i, label %if.then.i312.i, label %lor.lhs.false.i310.i, !dbg !474

lor.lhs.false.i310.i:                             ; preds = %if.else.i
  %call.i308.i = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %reslib, i64 noundef 2) #15, !dbg !475
  %tobool.not.i309.i = icmp eq i32 %call.i308.i, 0, !dbg !475
  br i1 %tobool.not.i309.i, label %if.then.i312.i, label %if.else.i314.i, !dbg !476

if.then.i312.i:                                   ; preds = %lor.lhs.false.i310.i, %if.else.i
  %call2.i311.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %reslib) #14, !dbg !477
  br label %mk_fname.exit315.i, !dbg !477

if.else.i314.i:                                   ; preds = %lor.lhs.false.i310.i
  %call3.i313.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %reslib) #14, !dbg !478
  br label %mk_fname.exit315.i

mk_fname.exit315.i:                               ; preds = %if.else.i314.i, %if.then.i312.i
  %call12.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !479
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call12.i, metadata !414, metadata !DIExpression()) #14, !dbg !431
  %cmp13.i = icmp eq %struct._IO_FILE* %call12.i, null, !dbg !481
  br i1 %cmp13.i, label %if.then14.i, label %if.end18.i, !dbg !482

if.then14.i:                                      ; preds = %mk_fname.exit315.i
  %call16.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %5) #14, !dbg !483
  br label %read_reslib_header.exit.thread, !dbg !485

if.end18.i:                                       ; preds = %mk_fname.exit315.i, %mk_fname.exit.i
  %rfp.0.i = phi %struct._IO_FILE* [ %call5.i, %mk_fname.exit.i ], [ %call12.i, %mk_fname.exit315.i ], !dbg !486
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %rfp.0.i, metadata !414, metadata !DIExpression()) #14, !dbg !431
  %call19.i = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #14, !dbg !487
  %9 = bitcast i8* %call19.i to %struct.reslib_t*, !dbg !489
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !415, metadata !DIExpression()) #14, !dbg !431
  %cmp20.i = icmp eq i8* %call19.i, null, !dbg !490
  br i1 %cmp20.i, label %if.then21.i, label %if.end24.i, !dbg !491

if.then21.i:                                      ; preds = %if.end18.i
  %call22.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* noundef %reslib) #14, !dbg !492
  %call23.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !494
  br label %read_reslib_header.exit.thread, !dbg !495

if.end24.i:                                       ; preds = %if.end18.i
  %call25.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %reslib) #15, !dbg !496
  call void @llvm.dbg.value(metadata i64 %call25.i, metadata !417, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !431
  %conv.i = shl i64 %call25.i, 32, !dbg !497
  %sext.i = add i64 %conv.i, 4294967296, !dbg !497
  %conv26.i = ashr exact i64 %sext.i, 32, !dbg !497
  %call27.i = call noalias i8* @malloc(i64 noundef %conv26.i) #14, !dbg !499
  call void @llvm.dbg.value(metadata i8* %call27.i, metadata !418, metadata !DIExpression()) #14, !dbg !431
  %cmp28.i = icmp eq i8* %call27.i, null, !dbg !500
  br i1 %cmp28.i, label %if.then30.i, label %if.end33.i, !dbg !501

if.then30.i:                                      ; preds = %if.end24.i
  %call31.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i8* noundef %reslib) #14, !dbg !502
  %call32.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !504
  br label %read_reslib_header.exit.thread, !dbg !505

if.end33.i:                                       ; preds = %if.end24.i
  %call34.i = call i8* @strcpy(i8* noundef nonnull %call27.i, i8* noundef nonnull dereferenceable(1) %reslib) #14, !dbg !506
  %10 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !507, !tbaa !296
  %rl_next.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %9, i64 0, i32 0, !dbg !508
  store %struct.reslib_t* %10, %struct.reslib_t** %rl_next.i, align 8, !dbg !509, !tbaa !510
  store i8* %call19.i, i8** bitcast (%struct.reslib_t** @reslibs to i8**), align 8, !dbg !511, !tbaa !296
  %rl_name.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %9, i64 0, i32 1, !dbg !512
  store i8* %call27.i, i8** %rl_name.i, align 8, !dbg !513, !tbaa !305
  %rl_r_kind.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %9, i64 0, i32 2, !dbg !514
  %rl_r_atomkind.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %9, i64 0, i32 3, !dbg !515
  %11 = bitcast i32* %rl_r_kind.i to i8*, !dbg !516
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false) #14, !dbg !517
  store i8 0, i8* %0, align 16, !dbg !518, !tbaa !457
  %call35.i = call i8* @strstr(i8* noundef nonnull dereferenceable(1) %reslib, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #15, !dbg !519
  %cmp36.i = icmp eq i8* %call35.i, null, !dbg !521
  br i1 %cmp36.i, label %while.cond.preheader.i, label %if.else195.i, !dbg !522

while.cond.preheader.i:                           ; preds = %if.end33.i
  %12 = bitcast [20 x i8]* %keyword.i to i32*
  %13 = bitcast [100 x i8]* %value.i to i16*
  %14 = bitcast [100 x i8]* %value.i to i32*
  %call40378.i = call i8* @fgets(i8* noundef nonnull %1, i32 noundef 128, %struct._IO_FILE* noundef nonnull %rfp.0.i) #14, !dbg !523
  %tobool.not379.i = icmp eq i8* %call40378.i, null, !dbg !525
  br i1 %tobool.not379.i, label %read_reslib_header.exit.thread198, label %while.body.i, !dbg !525

read_reslib_header.exit.thread198:                ; preds = %while.cond.preheader.i
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !415, metadata !DIExpression()) #14, !dbg !431
  call void @llvm.dbg.label(metadata !430) #14, !dbg !526
  %call198.i203 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %rfp.0.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %4) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %3) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #14, !dbg !528
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !398, metadata !DIExpression()), !dbg !400
  br label %if.end, !dbg !529

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.cond.backedge.i
  %pfp.0 = phi %struct._IO_FILE* [ %pfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !516
  %bfp.0 = phi %struct._IO_FILE* [ %bfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !530
  %qfp.0 = phi %struct._IO_FILE* [ %qfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !531
  %cfp.0 = phi %struct._IO_FILE* [ %cfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !532
  %15 = load i8, i8* %1, align 16, !dbg !533, !tbaa !457
  %cmp43.i = icmp eq i8 %15, 35, !dbg !536
  br i1 %cmp43.i, label %while.cond.backedge.i, label %if.end46.i, !dbg !537

if.end46.i:                                       ; preds = %while.body.i
  %call50.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* noundef nonnull %2, i8* noundef nonnull %3) #14, !dbg !538
  call void @llvm.dbg.value(metadata i32 %call50.i, metadata !416, metadata !DIExpression()) #14, !dbg !431
  switch i32 %call50.i, label %clean_up.thread.i [
    i32 -1, label %while.cond.backedge.i
    i32 2, label %if.else58.i
  ], !dbg !540

if.else58.i:                                      ; preds = %if.end46.i
  %bcmp.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %2, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i64 5) #14, !dbg !541
  %cmp61.i = icmp eq i32 %bcmp.i, 0, !dbg !544
  br i1 %cmp61.i, label %if.then63.i, label %if.else88.i, !dbg !545

if.then63.i:                                      ; preds = %if.else58.i
  %lhsv300.i = load i32, i32* %14, align 16, !dbg !546
  switch i32 %lhsv300.i, label %if.else77.i [
    i32 6385252, label %if.then68.i
    i32 6385266, label %if.then75.i
  ], !dbg !549

if.then68.i:                                      ; preds = %if.then63.i
  store i32 1, i32* %rl_r_kind.i, align 8, !dbg !550, !tbaa !328
  br label %while.cond.backedge.i, !dbg !551

if.then75.i:                                      ; preds = %if.then63.i
  store i32 2, i32* %rl_r_kind.i, align 8, !dbg !552, !tbaa !328
  br label %while.cond.backedge.i, !dbg !554

if.else77.i:                                      ; preds = %if.then63.i
  %bcmp306.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %3, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 3) #14, !dbg !555
  %cmp80.i = icmp eq i32 %bcmp306.i, 0, !dbg !557
  br i1 %cmp80.i, label %if.then82.i, label %clean_up.thread.i, !dbg !558

if.then82.i:                                      ; preds = %if.else77.i
  store i32 3, i32* %rl_r_kind.i, align 8, !dbg !559, !tbaa !328
  br label %while.cond.backedge.i

if.else88.i:                                      ; preds = %if.else58.i
  %bcmp284.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %2, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i64 9) #14, !dbg !560
  %cmp91.i = icmp eq i32 %bcmp284.i, 0, !dbg !562
  br i1 %cmp91.i, label %if.then93.i, label %if.else110.i, !dbg !563

if.then93.i:                                      ; preds = %if.else88.i
  %bcmp296.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %3, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i64 7) #14, !dbg !564
  %cmp96.i = icmp eq i32 %bcmp296.i, 0, !dbg !567
  br i1 %cmp96.i, label %if.then98.i, label %if.else100.i, !dbg !568

if.then98.i:                                      ; preds = %if.then93.i
  store i32 1, i32* %rl_r_atomkind.i, align 4, !dbg !569, !tbaa !570
  br label %while.cond.backedge.i, !dbg !571

if.else100.i:                                     ; preds = %if.then93.i
  %lhsv297.i = load i32, i32* %14, align 16, !dbg !572
  %.not299.i = icmp eq i32 %lhsv297.i, 7105633, !dbg !572
  br i1 %.not299.i, label %if.then105.i, label %clean_up.thread.i, !dbg !574

if.then105.i:                                     ; preds = %if.else100.i
  store i32 2, i32* %rl_r_atomkind.i, align 4, !dbg !575, !tbaa !570
  br label %while.cond.backedge.i

if.else110.i:                                     ; preds = %if.else88.i
  %lhsv.i = load i32, i32* %12, align 16, !dbg !576
  switch i32 %lhsv.i, label %if.else151.i [
    i32 6710895, label %if.then115.i
    i32 6448240, label %if.then122.i
    i32 6581858, label %if.then139.i
  ], !dbg !578

if.then115.i:                                     ; preds = %if.else110.i
  call void @llvm.dbg.value(metadata i8* %3, metadata !447, metadata !DIExpression()) #14, !dbg !579
  call void @llvm.dbg.value(metadata i8* %0, metadata !452, metadata !DIExpression()) #14, !dbg !579
  %16 = load i8, i8* %3, align 16, !dbg !582, !tbaa !457
  %cmp.i316.i = icmp eq i8 %16, 47, !dbg !583
  %rhsv371.i = load i16, i16* %13, align 16
  %.not373.i = icmp eq i16 %rhsv371.i, 12078
  %or.cond374.i = select i1 %cmp.i316.i, i1 true, i1 %.not373.i, !dbg !584
  br i1 %or.cond374.i, label %if.then.i321.i, label %if.else.i323.i, !dbg !584

if.then.i321.i:                                   ; preds = %if.then115.i
  %call2.i320.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %3) #14, !dbg !585
  br label %while.cond.backedge.i, !dbg !585

if.else.i323.i:                                   ; preds = %if.then115.i
  %call3.i322.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %3) #14, !dbg !586
  br label %while.cond.backedge.i

if.then122.i:                                     ; preds = %if.else110.i
  call void @llvm.dbg.value(metadata i8* %3, metadata !447, metadata !DIExpression()) #14, !dbg !587
  call void @llvm.dbg.value(metadata i8* %5, metadata !452, metadata !DIExpression()) #14, !dbg !587
  %17 = load i8, i8* %3, align 16, !dbg !591, !tbaa !457
  %cmp.i325.i = icmp eq i8 %17, 47, !dbg !592
  %rhsv368.i = load i16, i16* %13, align 16
  %.not370.i = icmp eq i16 %rhsv368.i, 12078
  %or.cond375.i = select i1 %cmp.i325.i, i1 true, i1 %.not370.i, !dbg !593
  br i1 %or.cond375.i, label %if.then.i330.i, label %if.else.i332.i, !dbg !593

if.then.i330.i:                                   ; preds = %if.then122.i
  %call2.i329.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %3) #14, !dbg !594
  br label %mk_fname.exit333.i, !dbg !594

if.else.i332.i:                                   ; preds = %if.then122.i
  %call3.i331.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %3) #14, !dbg !595
  br label %mk_fname.exit333.i

mk_fname.exit333.i:                               ; preds = %if.else.i332.i, %if.then.i330.i
  %call126.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !596
  %cmp127.i = icmp eq %struct._IO_FILE* %call126.i, null, !dbg !598
  br i1 %cmp127.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !599

if.then139.i:                                     ; preds = %if.else110.i
  call void @llvm.dbg.value(metadata i8* %3, metadata !447, metadata !DIExpression()) #14, !dbg !600
  call void @llvm.dbg.value(metadata i8* %5, metadata !452, metadata !DIExpression()) #14, !dbg !600
  %18 = load i8, i8* %3, align 16, !dbg !604, !tbaa !457
  %cmp.i334.i = icmp eq i8 %18, 47, !dbg !605
  %rhsv365.i = load i16, i16* %13, align 16
  %.not367.i = icmp eq i16 %rhsv365.i, 12078
  %or.cond376.i = select i1 %cmp.i334.i, i1 true, i1 %.not367.i, !dbg !606
  br i1 %or.cond376.i, label %if.then.i339.i, label %if.else.i341.i, !dbg !606

if.then.i339.i:                                   ; preds = %if.then139.i
  %call2.i338.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %3) #14, !dbg !607
  br label %mk_fname.exit342.i, !dbg !607

if.else.i341.i:                                   ; preds = %if.then139.i
  %call3.i340.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %3) #14, !dbg !608
  br label %mk_fname.exit342.i

mk_fname.exit342.i:                               ; preds = %if.else.i341.i, %if.then.i339.i
  %call143.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !609
  %cmp144.i = icmp eq %struct._IO_FILE* %call143.i, null, !dbg !611
  br i1 %cmp144.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !612

if.else151.i:                                     ; preds = %if.else110.i
  %bcmp292.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %2, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 3) #14, !dbg !613
  %cmp154.i = icmp eq i32 %bcmp292.i, 0, !dbg !615
  br i1 %cmp154.i, label %if.then156.i, label %if.else168.i, !dbg !616

if.then156.i:                                     ; preds = %if.else151.i
  call void @llvm.dbg.value(metadata i8* %3, metadata !447, metadata !DIExpression()) #14, !dbg !617
  call void @llvm.dbg.value(metadata i8* %5, metadata !452, metadata !DIExpression()) #14, !dbg !617
  %19 = load i8, i8* %3, align 16, !dbg !620, !tbaa !457
  %cmp.i143 = icmp eq i8 %19, 47, !dbg !621
  %rhsv206 = load i16, i16* %13, align 16
  %.not208 = icmp eq i16 %rhsv206, 12078
  %or.cond = select i1 %cmp.i143, i1 true, i1 %.not208, !dbg !622
  br i1 %or.cond, label %if.then.i148, label %if.else.i150, !dbg !622

if.then.i148:                                     ; preds = %if.then156.i
  %call2.i147 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %3) #14, !dbg !623
  br label %mk_fname.exit152, !dbg !623

if.else.i150:                                     ; preds = %if.then156.i
  %call3.i149 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %3) #14, !dbg !624
  br label %mk_fname.exit152

mk_fname.exit152:                                 ; preds = %if.then.i148, %if.else.i150
  %call160.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !625
  %cmp161.i = icmp eq %struct._IO_FILE* %call160.i, null, !dbg !627
  br i1 %cmp161.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !628

if.else168.i:                                     ; preds = %if.else151.i
  %.not295.i = icmp eq i32 %lhsv.i, 6908003, !dbg !629
  br i1 %.not295.i, label %if.then173.i, label %clean_up.thread.i, !dbg !631

if.then173.i:                                     ; preds = %if.else168.i
  call void @llvm.dbg.value(metadata i8* %3, metadata !447, metadata !DIExpression()) #14, !dbg !632
  call void @llvm.dbg.value(metadata i8* %5, metadata !452, metadata !DIExpression()) #14, !dbg !632
  %20 = load i8, i8* %3, align 16, !dbg !635, !tbaa !457
  %cmp.i136 = icmp eq i8 %20, 47, !dbg !636
  %rhsv = load i16, i16* %13, align 16
  %.not = icmp eq i16 %rhsv, 12078
  %or.cond209 = select i1 %cmp.i136, i1 true, i1 %.not, !dbg !637
  br i1 %or.cond209, label %if.then.i140, label %if.else.i141, !dbg !637

if.then.i140:                                     ; preds = %if.then173.i
  %call2.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %3) #14, !dbg !638
  br label %mk_fname.exit, !dbg !638

if.else.i141:                                     ; preds = %if.then173.i
  %call3.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %3) #14, !dbg !639
  br label %mk_fname.exit

mk_fname.exit:                                    ; preds = %if.then.i140, %if.else.i141
  %call177.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !640
  %cmp178.i = icmp eq %struct._IO_FILE* %call177.i, null, !dbg !642
  br i1 %cmp178.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !643

while.cond.backedge.i:                            ; preds = %mk_fname.exit, %mk_fname.exit152, %mk_fname.exit342.i, %mk_fname.exit333.i, %if.else.i323.i, %if.then.i321.i, %if.then105.i, %if.then98.i, %if.then82.i, %if.then75.i, %if.then68.i, %if.end46.i, %while.body.i
  %pfp.1 = phi %struct._IO_FILE* [ %pfp.0, %while.body.i ], [ %pfp.0, %if.then82.i ], [ %pfp.0, %if.then75.i ], [ %pfp.0, %if.then68.i ], [ %pfp.0, %if.then98.i ], [ %pfp.0, %if.then105.i ], [ %pfp.0, %mk_fname.exit152 ], [ %pfp.0, %mk_fname.exit ], [ %pfp.0, %mk_fname.exit342.i ], [ %call126.i, %mk_fname.exit333.i ], [ %pfp.0, %if.then.i321.i ], [ %pfp.0, %if.else.i323.i ], [ %pfp.0, %if.end46.i ], !dbg !431
  %bfp.1 = phi %struct._IO_FILE* [ %bfp.0, %while.body.i ], [ %bfp.0, %if.then82.i ], [ %bfp.0, %if.then75.i ], [ %bfp.0, %if.then68.i ], [ %bfp.0, %if.then98.i ], [ %bfp.0, %if.then105.i ], [ %bfp.0, %mk_fname.exit152 ], [ %bfp.0, %mk_fname.exit ], [ %call143.i, %mk_fname.exit342.i ], [ %bfp.0, %mk_fname.exit333.i ], [ %bfp.0, %if.then.i321.i ], [ %bfp.0, %if.else.i323.i ], [ %bfp.0, %if.end46.i ], !dbg !431
  %qfp.1 = phi %struct._IO_FILE* [ %qfp.0, %while.body.i ], [ %qfp.0, %if.then82.i ], [ %qfp.0, %if.then75.i ], [ %qfp.0, %if.then68.i ], [ %qfp.0, %if.then98.i ], [ %qfp.0, %if.then105.i ], [ %call160.i, %mk_fname.exit152 ], [ %qfp.0, %mk_fname.exit ], [ %qfp.0, %mk_fname.exit342.i ], [ %qfp.0, %mk_fname.exit333.i ], [ %qfp.0, %if.then.i321.i ], [ %qfp.0, %if.else.i323.i ], [ %qfp.0, %if.end46.i ], !dbg !431
  %cfp.1 = phi %struct._IO_FILE* [ %cfp.0, %while.body.i ], [ %cfp.0, %if.then82.i ], [ %cfp.0, %if.then75.i ], [ %cfp.0, %if.then68.i ], [ %cfp.0, %if.then98.i ], [ %cfp.0, %if.then105.i ], [ %cfp.0, %mk_fname.exit152 ], [ %call177.i, %mk_fname.exit ], [ %cfp.0, %mk_fname.exit342.i ], [ %cfp.0, %mk_fname.exit333.i ], [ %cfp.0, %if.then.i321.i ], [ %cfp.0, %if.else.i323.i ], [ %cfp.0, %if.end46.i ], !dbg !431
  %call40.i = call i8* @fgets(i8* noundef nonnull %1, i32 noundef 128, %struct._IO_FILE* noundef %rfp.0.i) #14, !dbg !523
  %tobool.not.i = icmp eq i8* %call40.i, null, !dbg !525
  br i1 %tobool.not.i, label %read_reslib_header.exit, label %while.body.i, !dbg !525, !llvm.loop !644

if.else195.i:                                     ; preds = %if.end33.i
  call void @llvm.dbg.value(metadata i8* %4, metadata !447, metadata !DIExpression()) #14, !dbg !646
  call void @llvm.dbg.value(metadata i8* %0, metadata !452, metadata !DIExpression()) #14, !dbg !646
  %21 = load i8, i8* %4, align 16, !dbg !649, !tbaa !457
  %cmp.i343.i = icmp eq i8 %21, 47, !dbg !650
  %22 = bitcast [100 x i8]* %newname.i to i16*
  %rhsv362.i = load i16, i16* %22, align 16
  %.not364.i = icmp eq i16 %rhsv362.i, 12078
  %or.cond377.i = select i1 %cmp.i343.i, i1 true, i1 %.not364.i, !dbg !651
  br i1 %or.cond377.i, label %if.then.i348.i, label %if.else.i350.i, !dbg !651

if.then.i348.i:                                   ; preds = %if.else195.i
  %call2.i347.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %4) #14, !dbg !652
  br label %read_reslib_header.exit.thread186, !dbg !652

if.else.i350.i:                                   ; preds = %if.else195.i
  %call3.i349.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %4) #14, !dbg !653
  br label %read_reslib_header.exit.thread186

clean_up.thread.sink.split.i:                     ; preds = %mk_fname.exit, %mk_fname.exit152, %mk_fname.exit342.i, %mk_fname.exit333.i
  %pfp.2 = phi %struct._IO_FILE* [ %pfp.0, %mk_fname.exit152 ], [ %pfp.0, %mk_fname.exit ], [ %pfp.0, %mk_fname.exit342.i ], [ null, %mk_fname.exit333.i ], !dbg !431
  %bfp.2 = phi %struct._IO_FILE* [ %bfp.0, %mk_fname.exit152 ], [ %bfp.0, %mk_fname.exit ], [ null, %mk_fname.exit342.i ], [ %bfp.0, %mk_fname.exit333.i ], !dbg !431
  %qfp.2 = phi %struct._IO_FILE* [ null, %mk_fname.exit152 ], [ %qfp.0, %mk_fname.exit ], [ %qfp.0, %mk_fname.exit342.i ], [ %qfp.0, %mk_fname.exit333.i ], !dbg !431
  %cfp.2 = phi %struct._IO_FILE* [ %cfp.0, %mk_fname.exit152 ], [ null, %mk_fname.exit ], [ %cfp.0, %mk_fname.exit342.i ], [ %cfp.0, %mk_fname.exit333.i ], !dbg !431
  %.sink.i = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), %mk_fname.exit152 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), %mk_fname.exit ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), %mk_fname.exit342.i ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), %mk_fname.exit333.i ]
  %call131.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %.sink.i, i8* noundef nonnull %3) #14, !dbg !654
  %call132.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !654
  br label %clean_up.thread.i, !dbg !527

clean_up.thread.i:                                ; preds = %if.else168.i, %if.else100.i, %if.else77.i, %if.end46.i, %clean_up.thread.sink.split.i
  %pfp.3 = phi %struct._IO_FILE* [ %pfp.2, %clean_up.thread.sink.split.i ], [ %pfp.0, %if.end46.i ], [ %pfp.0, %if.else77.i ], [ %pfp.0, %if.else100.i ], [ %pfp.0, %if.else168.i ], !dbg !516
  %bfp.3 = phi %struct._IO_FILE* [ %bfp.2, %clean_up.thread.sink.split.i ], [ %bfp.0, %if.end46.i ], [ %bfp.0, %if.else77.i ], [ %bfp.0, %if.else100.i ], [ %bfp.0, %if.else168.i ], !dbg !530
  %qfp.3 = phi %struct._IO_FILE* [ %qfp.2, %clean_up.thread.sink.split.i ], [ %qfp.0, %if.end46.i ], [ %qfp.0, %if.else77.i ], [ %qfp.0, %if.else100.i ], [ %qfp.0, %if.else168.i ], !dbg !431
  %cfp.3 = phi %struct._IO_FILE* [ %cfp.2, %clean_up.thread.sink.split.i ], [ %cfp.0, %if.end46.i ], [ %cfp.0, %if.else77.i ], [ %cfp.0, %if.else100.i ], [ %cfp.0, %if.else168.i ], !dbg !532
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !415, metadata !DIExpression()) #14, !dbg !431
  call void @llvm.dbg.label(metadata !430) #14, !dbg !526
  %call198353.i = call i32 @fclose(%struct._IO_FILE* noundef %rfp.0.i) #14, !dbg !527
  %tobool202.not.i = icmp eq %struct._IO_FILE* %pfp.3, null, !dbg !655
  br i1 %tobool202.not.i, label %if.end205.i, label %if.then203.i, !dbg !659

read_reslib_header.exit.thread186:                ; preds = %if.then.i348.i, %if.else.i350.i
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !415, metadata !DIExpression()) #14, !dbg !431
  call void @llvm.dbg.label(metadata !430) #14, !dbg !526
  %call198359.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %rfp.0.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %4) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %3) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #14, !dbg !528
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !398, metadata !DIExpression()), !dbg !400
  br label %if.end, !dbg !529

if.then203.i:                                     ; preds = %clean_up.thread.i
  %call204.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %pfp.3) #14, !dbg !660
  br label %if.end205.i, !dbg !660

if.end205.i:                                      ; preds = %if.then203.i, %clean_up.thread.i
  %tobool206.not.i = icmp eq %struct._IO_FILE* %bfp.3, null, !dbg !661
  br i1 %tobool206.not.i, label %if.end209.i, label %if.then207.i, !dbg !663

if.then207.i:                                     ; preds = %if.end205.i
  %call208.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %bfp.3) #14, !dbg !664
  br label %if.end209.i, !dbg !664

if.end209.i:                                      ; preds = %if.then207.i, %if.end205.i
  %tobool210.not.i = icmp eq %struct._IO_FILE* %qfp.3, null, !dbg !665
  br i1 %tobool210.not.i, label %if.end213.i, label %if.then211.i, !dbg !667

if.then211.i:                                     ; preds = %if.end209.i
  %call212.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %qfp.3) #14, !dbg !668
  br label %if.end213.i, !dbg !668

if.end213.i:                                      ; preds = %if.then211.i, %if.end209.i
  %tobool214.not.i = icmp eq %struct._IO_FILE* %cfp.3, null, !dbg !669
  br i1 %tobool214.not.i, label %if.end217.i, label %if.then215.i, !dbg !671

if.then215.i:                                     ; preds = %if.end213.i
  %call216.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %cfp.3) #14, !dbg !672
  br label %if.end217.i, !dbg !672

if.end217.i:                                      ; preds = %if.then215.i, %if.end213.i
  %call219.i = call i64 @strlen(i8* noundef nonnull %1) #15, !dbg !673
  %23 = trunc i64 %call219.i to i32, !dbg !673
  %conv220.i = add i32 %23, -1, !dbg !673
  call void @llvm.dbg.value(metadata i32 %conv220.i, metadata !417, metadata !DIExpression()) #14, !dbg !431
  %24 = icmp slt i32 %conv220.i, 20, !dbg !674
  %cond.i = select i1 %24, i32 %conv220.i, i32 20, !dbg !674
  call void @llvm.dbg.value(metadata i32 %cond.i, metadata !417, metadata !DIExpression()) #14, !dbg !431
  %call224.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 noundef %cond.i, i32 noundef %cond.i, i8* noundef nonnull %1) #14, !dbg !675
  %call225.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !676
  br label %read_reslib_header.exit.thread, !dbg !677

read_reslib_header.exit.thread:                   ; preds = %if.then7.i, %if.then21.i, %if.then30.i, %if.then14.i, %if.end217.i
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %4) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %3) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #14, !dbg !528
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !398, metadata !DIExpression()), !dbg !400
  br label %cleanup, !dbg !529

read_reslib_header.exit:                          ; preds = %while.cond.backedge.i
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !415, metadata !DIExpression()) #14, !dbg !431
  call void @llvm.dbg.label(metadata !430) #14, !dbg !526
  %call198.i = call i32 @fclose(%struct._IO_FILE* noundef %rfp.0.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %4) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %3) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #14, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #14, !dbg !528
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !398, metadata !DIExpression()), !dbg !400
  br label %if.end, !dbg !529

if.end:                                           ; preds = %read_reslib_header.exit, %read_reslib_header.exit.thread198, %read_reslib_header.exit.thread186
  %cfp.5196 = phi %struct._IO_FILE* [ null, %read_reslib_header.exit.thread186 ], [ %cfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread198 ]
  %qfp.5195 = phi %struct._IO_FILE* [ null, %read_reslib_header.exit.thread186 ], [ %qfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread198 ]
  %bfp.5194 = phi %struct._IO_FILE* [ null, %read_reslib_header.exit.thread186 ], [ %bfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread198 ]
  %pfp.5193 = phi %struct._IO_FILE* [ null, %read_reslib_header.exit.thread186 ], [ %pfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread198 ]
  %.b.i = load i1, i1* @initatoms.init, align 4, !dbg !678
  br i1 %.b.i, label %initatoms.exit, label %if.end.i, !dbg !681

if.end.i:                                         ; preds = %if.end
  store i1 true, i1* @initatoms.init, align 4, !dbg !682
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !244, metadata !DIExpression()) #14, !dbg !683
  call void @llvm.dbg.value(metadata i32 0, metadata !243, metadata !DIExpression()) #14, !dbg !683
  br label %for.body.i, !dbg !684

for.body.i:                                       ; preds = %for.inc.i, %if.end.i
  %ap.014.i = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %if.end.i ], [ %incdec.ptr.i, %for.inc.i ]
  %i.013.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap.014.i, metadata !244, metadata !DIExpression()) #14, !dbg !683
  call void @llvm.dbg.value(metadata i32 %i.013.i, metadata !243, metadata !DIExpression()) #14, !dbg !683
  call void @NAB_initatom(%struct.atom_t* noundef nonnull %ap.014.i, i32 noundef 1) #14, !dbg !686
  %call.i27 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #14, !dbg !689
  %a_atomname.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.014.i, i64 0, i32 0, !dbg !690
  store i8* %call.i27, i8** %a_atomname.i, align 8, !dbg !691, !tbaa !692
  %cmp2.i = icmp eq i8* %call.i27, null, !dbg !695
  br i1 %cmp2.i, label %if.then3.i, label %for.inc.i, !dbg !697

if.then3.i:                                       ; preds = %for.body.i
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !698, !tbaa !296
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %25) #18, !dbg !700
  call void @exit(i32 noundef 1) #17, !dbg !701
  unreachable, !dbg !701

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.013.i, 1, !dbg !702
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !243, metadata !DIExpression()) #14, !dbg !683
  %incdec.ptr.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.014.i, i64 1, !dbg !703
  call void @llvm.dbg.value(metadata %struct.atom_t* %incdec.ptr.i, metadata !244, metadata !DIExpression()) #14, !dbg !683
  %exitcond.not.i = icmp eq i32 %inc.i, 1000, !dbg !704
  br i1 %exitcond.not.i, label %initatoms.exit, label %for.body.i, !dbg !684, !llvm.loop !705

initatoms.exit:                                   ; preds = %for.inc.i, %if.end
  %27 = load i8, i8* %0, align 16, !dbg !707, !tbaa !457
  %tobool.not = icmp eq i8 %27, 0, !dbg !707
  br i1 %tobool.not, label %if.else, label %if.then2, !dbg !709

if.then2:                                         ; preds = %initatoms.exit
  call void @llvm.dbg.value(metadata i8* %0, metadata !710, metadata !DIExpression()) #14, !dbg !770
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !715, metadata !DIExpression()) #14, !dbg !770
  %28 = bitcast i32* %n_names.i to i8*, !dbg !773
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #14, !dbg !773
  %29 = bitcast i32* %n_resnames.i to i8*, !dbg !773
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #14, !dbg !773
  %30 = bitcast [100 x i32]* %typex.i to i8*, !dbg !774
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %30) #14, !dbg !774
  call void @llvm.dbg.declare(metadata [100 x i32]* %typex.i, metadata !748, metadata !DIExpression()) #14, !dbg !775
  %31 = bitcast [100 x i32]* %resx.i to i8*, !dbg !774
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %31) #14, !dbg !774
  call void @llvm.dbg.declare(metadata [100 x i32]* %resx.i, metadata !750, metadata !DIExpression()) #14, !dbg !776
  %32 = bitcast [100 x i32]* %flags.i to i8*, !dbg !774
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %32) #14, !dbg !774
  call void @llvm.dbg.declare(metadata [100 x i32]* %flags.i, metadata !751, metadata !DIExpression()) #14, !dbg !777
  %33 = bitcast [100 x i32]* %seq.i to i8*, !dbg !774
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %33) #14, !dbg !774
  call void @llvm.dbg.declare(metadata [100 x i32]* %seq.i, metadata !752, metadata !DIExpression()) #14, !dbg !778
  %34 = bitcast [100 x i32]* %elmnt.i to i8*, !dbg !774
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %34) #14, !dbg !774
  call void @llvm.dbg.declare(metadata [100 x i32]* %elmnt.i, metadata !753, metadata !DIExpression()) #14, !dbg !779
  %35 = bitcast [100 x i32]* %atom1x.i to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %35) #14, !dbg !780
  call void @llvm.dbg.declare(metadata [100 x i32]* %atom1x.i, metadata !754, metadata !DIExpression()) #14, !dbg !781
  %36 = bitcast [100 x i32]* %atom2x.i to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %36) #14, !dbg !780
  call void @llvm.dbg.declare(metadata [100 x i32]* %atom2x.i, metadata !755, metadata !DIExpression()) #14, !dbg !782
  %37 = bitcast [100 x double]* %chg.i to i8*, !dbg !783
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %37) #14, !dbg !783
  call void @llvm.dbg.declare(metadata [100 x double]* %chg.i, metadata !756, metadata !DIExpression()) #14, !dbg !784
  %38 = bitcast [100 x double]* %x.i to i8*, !dbg !783
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %38) #14, !dbg !783
  call void @llvm.dbg.declare(metadata [100 x double]* %x.i, metadata !758, metadata !DIExpression()) #14, !dbg !785
  %39 = bitcast [100 x double]* %y.i to i8*, !dbg !783
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %39) #14, !dbg !783
  call void @llvm.dbg.declare(metadata [100 x double]* %y.i, metadata !759, metadata !DIExpression()) #14, !dbg !786
  %40 = bitcast [100 x double]* %z.i to i8*, !dbg !783
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %40) #14, !dbg !783
  call void @llvm.dbg.declare(metadata [100 x double]* %z.i, metadata !760, metadata !DIExpression()) #14, !dbg !787
  %41 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %a_name.i, i64 0, i64 0, i64 0, !dbg !788
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %41) #14, !dbg !788
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %a_name.i, metadata !761, metadata !DIExpression()) #14, !dbg !789
  %42 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %type.i, i64 0, i64 0, i64 0, !dbg !788
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %42) #14, !dbg !788
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %type.i, metadata !764, metadata !DIExpression()) #14, !dbg !790
  %43 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %res_name.i, i64 0, i64 0, i64 0, !dbg !788
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %43) #14, !dbg !788
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %res_name.i, metadata !765, metadata !DIExpression()) #14, !dbg !791
  %44 = getelementptr inbounds [255 x i8], [255 x i8]* %prefix.i, i64 0, i64 0, !dbg !792
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %44) #14, !dbg !792
  call void @llvm.dbg.declare(metadata [255 x i8]* %prefix.i, metadata !766, metadata !DIExpression()) #14, !dbg !793
  store i32 0, i32* @n_atoms, align 4, !dbg !794, !tbaa !795
  %call.i28 = call %struct.DATABASEt* (i8*, i32, ...) bitcast (%struct.DATABASEt* (...)* @dbDBRndOpen to %struct.DATABASEt* (i8*, i32, ...)*)(i8* noundef nonnull %0, i32 noundef 1) #14, !dbg !796
  call void @llvm.dbg.value(metadata %struct.DATABASEt* %call.i28, metadata !721, metadata !DIExpression()) #14, !dbg !770
  %arraydecay.i = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %res_name.i, i64 0, i64 0, !dbg !797
  call void @llvm.dbg.value(metadata i32* %n_resnames.i, metadata !718, metadata !DIExpression(DW_OP_deref)) #14, !dbg !770
  %call1.i29 = call signext i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* noundef nonnull %n_resnames.i, [10 x i8]* noundef nonnull %arraydecay.i, i32 noundef 10) #14, !dbg !798
  call void @llvm.dbg.value(metadata i8 %call1.i29, metadata !747, metadata !DIExpression()) #14, !dbg !770
  call void @llvm.dbg.value(metadata i32 0, metadata !720, metadata !DIExpression()) #14, !dbg !770
  %arraydecay7.i = getelementptr inbounds [100 x i32], [100 x i32]* %typex.i, i64 0, i64 0
  %arraydecay8.i = getelementptr inbounds [100 x i32], [100 x i32]* %resx.i, i64 0, i64 0
  %arraydecay9.i = getelementptr inbounds [100 x i32], [100 x i32]* %flags.i, i64 0, i64 0
  %arraydecay10.i = getelementptr inbounds [100 x i32], [100 x i32]* %seq.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [100 x i32], [100 x i32]* %elmnt.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [100 x double], [100 x double]* %chg.i, i64 0, i64 0
  %arraydecay13.i = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %a_name.i, i64 0, i64 0
  %arraydecay14.i = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %type.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [100 x double], [100 x double]* %x.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [100 x double], [100 x double]* %y.i, i64 0, i64 0
  %arraydecay18.i = getelementptr inbounds [100 x double], [100 x double]* %z.i, i64 0, i64 0
  %arraydecay43.i = getelementptr inbounds [100 x i32], [100 x i32]* %atom1x.i, i64 0, i64 0
  %arraydecay44.i = getelementptr inbounds [100 x i32], [100 x i32]* %atom2x.i, i64 0, i64 0
  %45 = load i32, i32* %n_resnames.i, align 4, !dbg !799, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %45, metadata !718, metadata !DIExpression()) #14, !dbg !770
  %cmp107.i = icmp sgt i32 %45, 0, !dbg !802
  br i1 %cmp107.i, label %for.body.i31, label %off2reslib.exit, !dbg !803

for.body.i31:                                     ; preds = %if.then2, %for.inc66.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %for.inc66.i ], [ 0, %if.then2 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv114.i, metadata !720, metadata !DIExpression()) #14, !dbg !770
  %arraydecay3.i = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %res_name.i, i64 0, i64 %indvars.iv114.i, i64 0, !dbg !804
  %call4.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %44, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* noundef nonnull %arraydecay3.i) #14, !dbg !806
  call void (%struct.DATABASEt*, ...) bitcast (void (...)* @DBZeroPrefix to void (%struct.DATABASEt*, ...)*)(%struct.DATABASEt* noundef %call.i28) #14, !dbg !807
  call void (%struct.DATABASEt*, i8*, ...) bitcast (void (...)* @DBPushPrefix to void (%struct.DATABASEt*, i8*, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef nonnull %44) #14, !dbg !808
  call void @llvm.dbg.value(metadata i32* %n_names.i, metadata !717, metadata !DIExpression(DW_OP_deref)) #14, !dbg !770
  %call6.i = call signext i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32* noundef nonnull %n_names.i, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i32 noundef 1) #14, !dbg !809
  call void @llvm.dbg.value(metadata i8 %call6.i, metadata !747, metadata !DIExpression()) #14, !dbg !770
  %call15.i = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32* noundef nonnull @n_atoms, i32 noundef 3, i32* noundef nonnull %arraydecay7.i, i64 noundef 4, i32 noundef 4, i32* noundef nonnull %arraydecay8.i, i64 noundef 4, i32 noundef 5, i32* noundef nonnull %arraydecay9.i, i64 noundef 4, i32 noundef 6, i32* noundef nonnull %arraydecay10.i, i64 noundef 4, i32 noundef 7, i32* noundef nonnull %arraydecay11.i, i64 noundef 4, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 8, double* noundef nonnull %arraydecay12.i, i64 noundef 8, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 1, [10 x i8]* noundef nonnull %arraydecay13.i, i32 noundef 10, i32 noundef 2, [10 x i8]* noundef nonnull %arraydecay14.i, i32 noundef 10, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0) #14, !dbg !810
  call void @llvm.dbg.value(metadata i8 %call15.i, metadata !747, metadata !DIExpression()) #14, !dbg !770
  %call19.i30 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32* noundef nonnull @n_atoms, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 1, double* noundef nonnull %arraydecay16.i, i64 noundef 8, i32 noundef 2, double* noundef nonnull %arraydecay17.i, i64 noundef 8, i32 noundef 3, double* noundef nonnull %arraydecay18.i, i64 noundef 8, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0) #14, !dbg !811
  call void @llvm.dbg.value(metadata i8 %call19.i30, metadata !747, metadata !DIExpression()) #14, !dbg !770
  call void @llvm.dbg.value(metadata i32 0, metadata !719, metadata !DIExpression()) #14, !dbg !770
  %46 = load i32, i32* @n_atoms, align 4, !dbg !812, !tbaa !795
  %cmp21102.i = icmp sgt i32 %46, 0, !dbg !815
  br i1 %cmp21102.i, label %for.body22.i, label %if.end.i34, !dbg !816

for.body22.i:                                     ; preds = %for.body.i31, %for.body22.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body22.i ], [ 0, %for.body.i31 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !719, metadata !DIExpression()) #14, !dbg !770
  %arrayidx24.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv.i, !dbg !817
  call void @llvm.dbg.value(metadata %struct.atom_t* %arrayidx24.i, metadata !716, metadata !DIExpression()) #14, !dbg !770
  call void @NAB_initatom(%struct.atom_t* noundef nonnull %arrayidx24.i, i32 noundef 0) #14, !dbg !819
  %a_atomname.i32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %arrayidx24.i, i64 0, i32 0, !dbg !820
  %47 = load i8*, i8** %a_atomname.i32, align 16, !dbg !820, !tbaa !692
  %arraydecay27.i = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %a_name.i, i64 0, i64 %indvars.iv.i, i64 0, !dbg !821
  %call28.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %47, i8* noundef nonnull %arraydecay27.i) #14, !dbg !822
  %arrayidx30.i = getelementptr inbounds [100 x double], [100 x double]* %chg.i, i64 0, i64 %indvars.iv.i, !dbg !823
  %48 = load double, double* %arrayidx30.i, align 8, !dbg !823, !tbaa !824
  %a_charge.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv.i, i32 6, !dbg !825
  store double %48, double* %a_charge.i, align 16, !dbg !826, !tbaa !827
  %arrayidx32.i = getelementptr inbounds [100 x double], [100 x double]* %x.i, i64 0, i64 %indvars.iv.i, !dbg !828
  %49 = load double, double* %arrayidx32.i, align 8, !dbg !828, !tbaa !824
  %arrayidx33.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv.i, i32 17, i64 0, !dbg !829
  store double %49, double* %arrayidx33.i, align 16, !dbg !830, !tbaa !824
  %arrayidx35.i = getelementptr inbounds [100 x double], [100 x double]* %y.i, i64 0, i64 %indvars.iv.i, !dbg !831
  %50 = load double, double* %arrayidx35.i, align 8, !dbg !831, !tbaa !824
  %arrayidx37.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv.i, i32 17, i64 1, !dbg !832
  store double %50, double* %arrayidx37.i, align 8, !dbg !833, !tbaa !824
  %arrayidx39.i = getelementptr inbounds [100 x double], [100 x double]* %z.i, i64 0, i64 %indvars.iv.i, !dbg !834
  %51 = load double, double* %arrayidx39.i, align 8, !dbg !834, !tbaa !824
  %arrayidx41.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv.i, i32 17, i64 2, !dbg !835
  store double %51, double* %arrayidx41.i, align 16, !dbg !836, !tbaa !824
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !837
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !719, metadata !DIExpression()) #14, !dbg !770
  %52 = load i32, i32* @n_atoms, align 4, !dbg !812, !tbaa !795
  %53 = sext i32 %52 to i64, !dbg !815
  %cmp21.i = icmp slt i64 %indvars.iv.next.i, %53, !dbg !815
  br i1 %cmp21.i, label %for.body22.i, label %for.end.i, !dbg !816, !llvm.loop !838

for.end.i:                                        ; preds = %for.body22.i
  %cmp42.i = icmp sgt i32 %52, 0, !dbg !840
  br i1 %cmp42.i, label %if.then.i33, label %if.end.i34, !dbg !842

if.then.i33:                                      ; preds = %for.end.i
  call fastcc void @addres2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !843
  br label %if.end.i34, !dbg !843

if.end.i34:                                       ; preds = %if.then.i33, %for.end.i, %for.body.i31
  %call46.i = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32* noundef nonnull @n_bonds, i32 noundef 1, i32* noundef nonnull %arraydecay43.i, i64 noundef 4, i32 noundef 2, i32* noundef nonnull %arraydecay44.i, i64 noundef 4, i32 noundef 3, i32* noundef nonnull %arraydecay9.i, i64 noundef 4, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0) #14, !dbg !844
  call void @llvm.dbg.value(metadata i8 %call46.i, metadata !747, metadata !DIExpression()) #14, !dbg !770
  call void @llvm.dbg.value(metadata i32 0, metadata !719, metadata !DIExpression()) #14, !dbg !770
  %54 = load i32, i32* @n_bonds, align 4, !tbaa !795
  %cmp48104.i = icmp sgt i32 %54, 0, !dbg !845
  br i1 %cmp48104.i, label %for.body49.preheader.i, label %for.inc66.i, !dbg !848

for.body49.preheader.i:                           ; preds = %if.end.i34
  %wide.trip.count.i = zext i32 %54 to i64, !dbg !845
  br label %for.body49.i, !dbg !848

for.body49.i:                                     ; preds = %for.body49.i, %for.body49.preheader.i
  %indvars.iv111.i = phi i64 [ 0, %for.body49.preheader.i ], [ %indvars.iv.next112.i, %for.body49.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv111.i, metadata !719, metadata !DIExpression()) #14, !dbg !770
  %arrayidx51.i = getelementptr inbounds [100 x i32], [100 x i32]* %atom1x.i, i64 0, i64 %indvars.iv111.i, !dbg !849
  %55 = load i32, i32* %arrayidx51.i, align 4, !dbg !849, !tbaa !795
  %arrayidx54.i = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv111.i, i64 0, !dbg !851
  store i32 %55, i32* %arrayidx54.i, align 8, !dbg !852, !tbaa !795
  %arrayidx56.i = getelementptr inbounds [100 x i32], [100 x i32]* %atom2x.i, i64 0, i64 %indvars.iv111.i, !dbg !853
  %56 = load i32, i32* %arrayidx56.i, align 4, !dbg !853, !tbaa !795
  %arrayidx59.i = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv111.i, i64 1, !dbg !854
  store i32 %56, i32* %arrayidx59.i, align 4, !dbg !855, !tbaa !795
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1, !dbg !856
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next112.i, metadata !719, metadata !DIExpression()) #14, !dbg !770
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next112.i, %wide.trip.count.i, !dbg !845
  br i1 %exitcond.not.i35, label %if.then64.i, label %for.body49.i, !dbg !848, !llvm.loop !857

if.then64.i:                                      ; preds = %for.body49.i
  call fastcc void @addbonds2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !859
  br label %for.inc66.i, !dbg !859

for.inc66.i:                                      ; preds = %if.then64.i, %if.end.i34
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1, !dbg !861
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next115.i, metadata !720, metadata !DIExpression()) #14, !dbg !770
  %57 = load i32, i32* %n_resnames.i, align 4, !dbg !799, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %57, metadata !718, metadata !DIExpression()) #14, !dbg !770
  %58 = sext i32 %57 to i64, !dbg !802
  %cmp.i = icmp slt i64 %indvars.iv.next115.i, %58, !dbg !802
  br i1 %cmp.i, label %for.body.i31, label %off2reslib.exit, !dbg !803, !llvm.loop !862

off2reslib.exit:                                  ; preds = %for.inc66.i, %if.then2
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %44) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %43) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %42) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %41) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %40) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %39) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %38) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %37) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %36) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %35) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %34) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %33) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %32) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %31) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %30) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #14, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #14, !dbg !864
  br label %if.end6, !dbg !865

if.else:                                          ; preds = %initatoms.exit
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %pfp.1, metadata !335, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %pfp.1, metadata !866, metadata !DIExpression()) #14, !dbg !883
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !871, metadata !DIExpression()) #14, !dbg !883
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %line.i36, i64 0, i64 0, !dbg !886
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %59) #14, !dbg !886
  call void @llvm.dbg.declare(metadata [256 x i8]* %line.i36, metadata !872, metadata !DIExpression()) #14, !dbg !887
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %ltype.i, i64 0, i64 0, !dbg !888
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %60) #14, !dbg !888
  call void @llvm.dbg.declare(metadata [10 x i8]* %ltype.i, metadata !873, metadata !DIExpression()) #14, !dbg !889
  %61 = getelementptr inbounds [10 x i8], [10 x i8]* %a_name.i37, i64 0, i64 0, !dbg !888
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %61) #14, !dbg !888
  call void @llvm.dbg.declare(metadata [10 x i8]* %a_name.i37, metadata !875, metadata !DIExpression()) #14, !dbg !890
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %r_name.i, i64 0, i64 0, !dbg !888
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %62) #14, !dbg !888
  call void @llvm.dbg.declare(metadata [10 x i8]* %r_name.i, metadata !876, metadata !DIExpression()) #14, !dbg !891
  %63 = bitcast i32* %a_num.i to i8*, !dbg !892
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %63) #14, !dbg !892
  %64 = bitcast i32* %r_num.i to i8*, !dbg !892
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %64) #14, !dbg !892
  %65 = bitcast double* %x.i38 to i8*, !dbg !893
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #14, !dbg !893
  %66 = bitcast double* %y.i39 to i8*, !dbg !893
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #14, !dbg !893
  %67 = bitcast double* %z.i40 to i8*, !dbg !893
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #14, !dbg !893
  store i32 0, i32* @n_atoms, align 4, !dbg !894, !tbaa !795
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !895, !tbaa !457
  %68 = bitcast [256 x i8]* %line.i36 to i32*
  %69 = getelementptr inbounds [100 x i8], [100 x i8]* %rkind.i.i, i64 0, i64 0
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %rakind.i.i, i64 0, i64 0
  %71 = bitcast [100 x i8]* %rkind.i.i to i32*
  %72 = bitcast [100 x i8]* %rakind.i.i to i64*
  %call46.i41 = call i8* @fgets(i8* noundef nonnull %59, i32 noundef 256, %struct._IO_FILE* noundef %pfp.5193) #14, !dbg !896
  %tobool.not47.i = icmp eq i8* %call46.i41, null, !dbg !897
  br i1 %tobool.not47.i, label %while.end.i, label %while.body.i44, !dbg !897

while.body.i44:                                   ; preds = %if.else, %if.end33.i59
  %bcmp.i42 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %59, i64 6) #14, !dbg !898
  %cmp.i43 = icmp eq i32 %bcmp.i42, 0, !dbg !901
  br i1 %cmp.i43, label %if.then.i45, label %if.else.i48, !dbg !902

if.then.i45:                                      ; preds = %while.body.i44
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !903, metadata !DIExpression()) #14, !dbg !911
  call void @llvm.dbg.value(metadata i8* %59, metadata !908, metadata !DIExpression()) #14, !dbg !911
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %69) #14, !dbg !914
  call void @llvm.dbg.declare(metadata [100 x i8]* %rkind.i.i, metadata !909, metadata !DIExpression()) #14, !dbg !915
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %70) #14, !dbg !914
  call void @llvm.dbg.declare(metadata [100 x i8]* %rakind.i.i, metadata !910, metadata !DIExpression()) #14, !dbg !916
  %call.i.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %59, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* noundef nonnull %69, i8* noundef nonnull %70) #14, !dbg !917
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2, !dbg !919
  br i1 %cmp.not.i.i, label %if.end.i.i, label %setrlibattrs.exit.i, !dbg !920

if.end.i.i:                                       ; preds = %if.then.i45
  %lhsv.i.i = load i32, i32* %71, align 16, !dbg !921
  switch i32 %lhsv.i.i, label %if.else11.i.i [
    i32 4279876, label %if.end19.sink.split.i.i
    i32 4279890, label %if.then9.i.i
  ], !dbg !923

if.then9.i.i:                                     ; preds = %if.end.i.i
  br label %if.end19.sink.split.i.i, !dbg !924

if.else11.i.i:                                    ; preds = %if.end.i.i
  %bcmp.i.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %69, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 3) #14, !dbg !926
  %cmp14.i.i = icmp eq i32 %bcmp.i.i, 0, !dbg !928
  br i1 %cmp14.i.i, label %if.end19.sink.split.i.i, label %if.end19.i.i, !dbg !929

if.end19.sink.split.i.i:                          ; preds = %if.else11.i.i, %if.then9.i.i, %if.end.i.i
  %.sink.i.i = phi i32 [ 2, %if.then9.i.i ], [ 1, %if.end.i.i ], [ 3, %if.else11.i.i ]
  store i32 %.sink.i.i, i32* %rl_r_kind.i, align 8, !dbg !930, !tbaa !328
  br label %if.end19.i.i, !dbg !931

if.end19.i.i:                                     ; preds = %if.end19.sink.split.i.i, %if.else11.i.i
  %bcmp41.i.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %70, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i64 7) #14, !dbg !931
  %cmp22.i.i = icmp eq i32 %bcmp41.i.i, 0, !dbg !933
  br i1 %cmp22.i.i, label %cleanup.sink.split.i.i, label %if.else24.i.i, !dbg !934

if.else24.i.i:                                    ; preds = %if.end19.i.i
  %lhsv42.i.i = load i64, i64* %72, align 16, !dbg !935
  %.not44.i.i = icmp eq i64 %lhsv42.i.i, 21760796498086977, !dbg !935
  br i1 %.not44.i.i, label %cleanup.sink.split.i.i, label %setrlibattrs.exit.i, !dbg !937

cleanup.sink.split.i.i:                           ; preds = %if.else24.i.i, %if.end19.i.i
  %.sink45.i.i = phi i32 [ 1, %if.end19.i.i ], [ 2, %if.else24.i.i ]
  store i32 %.sink45.i.i, i32* %rl_r_atomkind.i, align 4, !dbg !938, !tbaa !570
  br label %setrlibattrs.exit.i, !dbg !939

setrlibattrs.exit.i:                              ; preds = %cleanup.sink.split.i.i, %if.else24.i.i, %if.then.i45
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %70) #14, !dbg !939
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %69) #14, !dbg !939
  br label %if.end33.i59, !dbg !940

if.else.i48:                                      ; preds = %while.body.i44
  %rhsv.i46 = load i32, i32* %68, align 16, !dbg !941
  %.not.i47 = icmp eq i32 %rhsv.i46, 1297044545, !dbg !941
  br i1 %.not.i47, label %if.then10.i, label %lor.lhs.false.i, !dbg !943

lor.lhs.false.i:                                  ; preds = %if.else.i48
  %bcmp45.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %59, i64 6) #14, !dbg !944
  %cmp9.i = icmp eq i32 %bcmp45.i, 0, !dbg !945
  br i1 %cmp9.i, label %if.then10.i, label %if.end33.i59, !dbg !946

if.then10.i:                                      ; preds = %lor.lhs.false.i, %if.else.i48
  call void @llvm.dbg.value(metadata i32* %a_num.i, metadata !877, metadata !DIExpression(DW_OP_deref)) #14, !dbg !883
  call void @llvm.dbg.value(metadata i32* %r_num.i, metadata !878, metadata !DIExpression(DW_OP_deref)) #14, !dbg !883
  call void @llvm.dbg.value(metadata double* %x.i38, metadata !879, metadata !DIExpression(DW_OP_deref)) #14, !dbg !883
  call void @llvm.dbg.value(metadata double* %y.i39, metadata !880, metadata !DIExpression(DW_OP_deref)) #14, !dbg !883
  call void @llvm.dbg.value(metadata double* %z.i40, metadata !881, metadata !DIExpression(DW_OP_deref)) #14, !dbg !883
  %call15.i49 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %59, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %60, i32* noundef nonnull %a_num.i, i8* noundef nonnull %61, i8* noundef nonnull %62, i32* noundef nonnull %r_num.i, double* noundef nonnull %x.i38, double* noundef nonnull %y.i39, double* noundef nonnull %z.i40) #14, !dbg !947
  %call17.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %62) #15, !dbg !949
  %cmp18.not.i = icmp eq i32 %call17.i, 0, !dbg !951
  %.pre.i = load i32, i32* @n_atoms, align 4, !dbg !952, !tbaa !795
  br i1 %cmp18.not.i, label %if.end24.i56, label %if.then19.i, !dbg !953

if.then19.i:                                      ; preds = %if.then10.i
  %cmp20.i50 = icmp sgt i32 %.pre.i, 0, !dbg !954
  br i1 %cmp20.i50, label %if.then21.i51, label %if.end.i53, !dbg !957

if.then21.i51:                                    ; preds = %if.then19.i
  call fastcc void @addres2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !958
  store i32 0, i32* @n_atoms, align 4, !dbg !960, !tbaa !795
  br label %if.end.i53, !dbg !961

if.end.i53:                                       ; preds = %if.then21.i51, %if.then19.i
  %73 = phi i32 [ 0, %if.then21.i51 ], [ %.pre.i, %if.then19.i ]
  %call23.i52 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %62) #14, !dbg !962
  br label %if.end24.i56, !dbg !963

if.end24.i56:                                     ; preds = %if.end.i53, %if.then10.i
  %74 = phi i32 [ %73, %if.end.i53 ], [ %.pre.i, %if.then10.i ], !dbg !964
  %idxprom.i = sext i32 %74 to i64, !dbg !965
  %arrayidx.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i, !dbg !965
  call void @llvm.dbg.value(metadata %struct.atom_t* %arrayidx.i, metadata !882, metadata !DIExpression()) #14, !dbg !883
  call void @NAB_initatom(%struct.atom_t* noundef nonnull %arrayidx.i, i32 noundef 0) #14, !dbg !966
  %a_atomname.i54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %arrayidx.i, i64 0, i32 0, !dbg !967
  %75 = load i8*, i8** %a_atomname.i54, align 16, !dbg !967, !tbaa !692
  %call26.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %75, i8* noundef nonnull %61) #14, !dbg !968
  %76 = load double, double* %x.i38, align 8, !dbg !969, !tbaa !824
  call void @llvm.dbg.value(metadata double %76, metadata !879, metadata !DIExpression()) #14, !dbg !883
  %arrayidx27.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i, i32 17, i64 0, !dbg !970
  store double %76, double* %arrayidx27.i, align 16, !dbg !971, !tbaa !824
  %77 = load double, double* %y.i39, align 8, !dbg !972, !tbaa !824
  call void @llvm.dbg.value(metadata double %77, metadata !880, metadata !DIExpression()) #14, !dbg !883
  %arrayidx29.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i, i32 17, i64 1, !dbg !973
  store double %77, double* %arrayidx29.i, align 8, !dbg !974, !tbaa !824
  %78 = load double, double* %z.i40, align 8, !dbg !975, !tbaa !824
  call void @llvm.dbg.value(metadata double %78, metadata !881, metadata !DIExpression()) #14, !dbg !883
  %arrayidx31.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i, i32 17, i64 2, !dbg !976
  store double %78, double* %arrayidx31.i, align 16, !dbg !977, !tbaa !824
  %79 = load i32, i32* @n_atoms, align 4, !dbg !978, !tbaa !795
  %inc.i55 = add nsw i32 %79, 1, !dbg !978
  store i32 %inc.i55, i32* @n_atoms, align 4, !dbg !978, !tbaa !795
  br label %if.end33.i59, !dbg !979

if.end33.i59:                                     ; preds = %if.end24.i56, %lor.lhs.false.i, %setrlibattrs.exit.i
  %call.i57 = call i8* @fgets(i8* noundef nonnull %59, i32 noundef 256, %struct._IO_FILE* noundef %pfp.5193) #14, !dbg !896
  %tobool.not.i58 = icmp eq i8* %call.i57, null, !dbg !897
  br i1 %tobool.not.i58, label %while.end.i, label %while.body.i44, !dbg !897, !llvm.loop !980

while.end.i:                                      ; preds = %if.end33.i59, %if.else
  %80 = load i32, i32* @n_atoms, align 4, !dbg !982, !tbaa !795
  %cmp34.i = icmp sgt i32 %80, 0, !dbg !984
  br i1 %cmp34.i, label %if.then35.i, label %pdb2reslib.exit, !dbg !985

if.then35.i:                                      ; preds = %while.end.i
  call fastcc void @addres2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !986
  br label %pdb2reslib.exit, !dbg !986

pdb2reslib.exit:                                  ; preds = %while.end.i, %if.then35.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #14, !dbg !987
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #14, !dbg !987
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #14, !dbg !987
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %64) #14, !dbg !987
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %63) #14, !dbg !987
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %62) #14, !dbg !987
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %61) #14, !dbg !987
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %60) #14, !dbg !987
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %59) #14, !dbg !987
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %bfp.1, metadata !395, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %bfp.1, metadata !988, metadata !DIExpression()) #14, !dbg !997
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !991, metadata !DIExpression()) #14, !dbg !997
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %line.i60, i64 0, i64 0, !dbg !999
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %81) #14, !dbg !999
  call void @llvm.dbg.declare(metadata [256 x i8]* %line.i60, metadata !992, metadata !DIExpression()) #14, !dbg !1000
  %82 = getelementptr inbounds [20 x i8], [20 x i8]* %r_name.i61, i64 0, i64 0, !dbg !1001
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %82) #14, !dbg !1001
  call void @llvm.dbg.declare(metadata [20 x i8]* %r_name.i61, metadata !993, metadata !DIExpression()) #14, !dbg !1002
  %83 = bitcast i32* %bi.i to i8*, !dbg !1003
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %83) #14, !dbg !1003
  %84 = bitcast i32* %bj.i to i8*, !dbg !1003
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %84) #14, !dbg !1003
  store i32 0, i32* @n_bonds, align 4, !dbg !1004, !tbaa !795
  store i8 0, i8* %82, align 16, !dbg !1005, !tbaa !457
  %call70.i = call i8* @fgets(i8* noundef nonnull %81, i32 noundef 256, %struct._IO_FILE* noundef %bfp.5194) #14, !dbg !1006
  %tobool.not71.i = icmp eq i8* %call70.i, null, !dbg !1007
  br i1 %tobool.not71.i, label %while.end.i77, label %while.body.i63, !dbg !1007

while.body.i63:                                   ; preds = %pdb2reslib.exit, %if.end52.i
  %85 = load i8, i8* %81, align 16, !dbg !1008, !tbaa !457
  %cmp.i62 = icmp eq i8 %85, 35, !dbg !1011
  br i1 %cmp.i62, label %if.then.i65, label %if.else27.i, !dbg !1012

if.then.i65:                                      ; preds = %while.body.i63
  %call6.i64 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %81, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* noundef nonnull %82) #14, !dbg !1013
  %cmp7.not.i = icmp eq i32 %call6.i64, 1, !dbg !1016
  br i1 %cmp7.not.i, label %if.else.i69, label %if.then9.i, !dbg !1017

if.then9.i:                                       ; preds = %if.then.i65
  %call11.i = call i64 @strlen(i8* noundef nonnull %81) #15, !dbg !1018
  %86 = trunc i64 %call11.i to i32, !dbg !1018
  %conv12.i = add i32 %86, -1, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %conv12.i, metadata !994, metadata !DIExpression()) #14, !dbg !997
  %87 = icmp slt i32 %conv12.i, 20, !dbg !1020
  %cond.i66 = select i1 %87, i32 %conv12.i, i32 20, !dbg !1020
  call void @llvm.dbg.value(metadata i32 %cond.i66, metadata !994, metadata !DIExpression()) #14, !dbg !997
  %call16.i67 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 noundef %cond.i66, i32 noundef %cond.i66, i8* noundef nonnull %81) #14, !dbg !1021
  %call17.i68 = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1022
  br label %bnd2reslib.exit, !dbg !1023

if.else.i69:                                      ; preds = %if.then.i65
  %88 = load i32, i32* @n_bonds, align 4, !dbg !1024, !tbaa !795
  %cmp18.i = icmp sgt i32 %88, 0, !dbg !1026
  br i1 %cmp18.i, label %if.then20.i, label %if.else23.i, !dbg !1027

if.then20.i:                                      ; preds = %if.else.i69
  call fastcc void @addbonds2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1028
  %call22.i70 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %82) #14, !dbg !1030
  store i32 0, i32* @n_bonds, align 4, !dbg !1031, !tbaa !795
  br label %if.end52.i, !dbg !1032

if.else23.i:                                      ; preds = %if.else.i69
  %call25.i71 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %82) #14, !dbg !1033
  br label %if.end52.i

if.else27.i:                                      ; preds = %while.body.i63
  call void @llvm.dbg.value(metadata i32* %bi.i, metadata !995, metadata !DIExpression(DW_OP_deref)) #14, !dbg !997
  call void @llvm.dbg.value(metadata i32* %bj.i, metadata !996, metadata !DIExpression(DW_OP_deref)) #14, !dbg !997
  %call29.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %81, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* noundef nonnull %bi.i, i32* noundef nonnull %bj.i) #14, !dbg !1034
  %cmp30.not.i = icmp eq i32 %call29.i, 2, !dbg !1037
  br i1 %cmp30.not.i, label %if.else46.i, label %if.then32.i, !dbg !1038

if.then32.i:                                      ; preds = %if.else27.i
  %call34.i72 = call i64 @strlen(i8* noundef nonnull %81) #15, !dbg !1039
  %89 = trunc i64 %call34.i72 to i32, !dbg !1039
  %conv36.i = add i32 %89, -1, !dbg !1039
  call void @llvm.dbg.value(metadata i32 %conv36.i, metadata !994, metadata !DIExpression()) #14, !dbg !997
  %90 = icmp slt i32 %conv36.i, 20, !dbg !1041
  %cond42.i = select i1 %90, i32 %conv36.i, i32 20, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %cond42.i, metadata !994, metadata !DIExpression()) #14, !dbg !997
  %call44.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 noundef %cond42.i, i32 noundef %cond42.i, i8* noundef nonnull %81) #14, !dbg !1042
  %call45.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1043
  br label %bnd2reslib.exit, !dbg !1044

if.else46.i:                                      ; preds = %if.else27.i
  %91 = load i32, i32* %bi.i, align 4, !dbg !1045, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %91, metadata !995, metadata !DIExpression()) #14, !dbg !997
  %92 = load i32, i32* @n_bonds, align 4, !dbg !1047, !tbaa !795
  %idxprom.i73 = sext i32 %92 to i64, !dbg !1048
  %arrayidx47.i = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %idxprom.i73, i64 0, !dbg !1048
  store i32 %91, i32* %arrayidx47.i, align 8, !dbg !1049, !tbaa !795
  %93 = load i32, i32* %bj.i, align 4, !dbg !1050, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %93, metadata !996, metadata !DIExpression()) #14, !dbg !997
  %arrayidx50.i = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %idxprom.i73, i64 1, !dbg !1051
  store i32 %93, i32* %arrayidx50.i, align 4, !dbg !1052, !tbaa !795
  %inc.i74 = add nsw i32 %92, 1, !dbg !1053
  store i32 %inc.i74, i32* @n_bonds, align 4, !dbg !1053, !tbaa !795
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else46.i, %if.else23.i, %if.then20.i
  %call.i75 = call i8* @fgets(i8* noundef nonnull %81, i32 noundef 256, %struct._IO_FILE* noundef %bfp.5194) #14, !dbg !1006
  %tobool.not.i76 = icmp eq i8* %call.i75, null, !dbg !1007
  br i1 %tobool.not.i76, label %while.end.i77, label %while.body.i63, !dbg !1007, !llvm.loop !1054

while.end.i77:                                    ; preds = %if.end52.i, %pdb2reslib.exit
  %94 = load i32, i32* @n_bonds, align 4, !dbg !1056, !tbaa !795
  %cmp53.i = icmp sgt i32 %94, 0, !dbg !1058
  br i1 %cmp53.i, label %if.then55.i, label %bnd2reslib.exit, !dbg !1059

if.then55.i:                                      ; preds = %while.end.i77
  call fastcc void @addbonds2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1060
  br label %bnd2reslib.exit, !dbg !1060

bnd2reslib.exit:                                  ; preds = %if.then9.i, %if.then32.i, %while.end.i77, %if.then55.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %84) #14, !dbg !1061
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %83) #14, !dbg !1061
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %82) #14, !dbg !1061
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %81) #14, !dbg !1061
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %pfp.1, metadata !335, metadata !DIExpression()), !dbg !400
  %call4 = call i32 @fclose(%struct._IO_FILE* noundef %pfp.5193), !dbg !1062
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %bfp.1, metadata !395, metadata !DIExpression()), !dbg !400
  %call5 = call i32 @fclose(%struct._IO_FILE* noundef %bfp.5194), !dbg !1063
  br label %if.end6

if.end6:                                          ; preds = %bnd2reslib.exit, %off2reslib.exit
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %qfp.1, metadata !396, metadata !DIExpression()), !dbg !400
  %tobool7.not = icmp eq %struct._IO_FILE* %qfp.5195, null, !dbg !1064
  br i1 %tobool7.not, label %if.end10, label %if.then8, !dbg !1066

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %qfp.1, metadata !1067, metadata !DIExpression()) #14, !dbg !1080
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !1070, metadata !DIExpression()) #14, !dbg !1080
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %line.i78, i64 0, i64 0, !dbg !1083
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %95) #14, !dbg !1083
  call void @llvm.dbg.declare(metadata [256 x i8]* %line.i78, metadata !1071, metadata !DIExpression()) #14, !dbg !1084
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %ltype.i79, i64 0, i64 0, !dbg !1085
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %96) #14, !dbg !1085
  call void @llvm.dbg.declare(metadata [10 x i8]* %ltype.i79, metadata !1072, metadata !DIExpression()) #14, !dbg !1086
  %97 = getelementptr inbounds [10 x i8], [10 x i8]* %a_name.i80, i64 0, i64 0, !dbg !1085
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %97) #14, !dbg !1085
  call void @llvm.dbg.declare(metadata [10 x i8]* %a_name.i80, metadata !1073, metadata !DIExpression()) #14, !dbg !1087
  %98 = getelementptr inbounds [10 x i8], [10 x i8]* %r_name.i81, i64 0, i64 0, !dbg !1085
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %98) #14, !dbg !1085
  call void @llvm.dbg.declare(metadata [10 x i8]* %r_name.i81, metadata !1074, metadata !DIExpression()) #14, !dbg !1088
  %99 = bitcast i32* %a_num.i82 to i8*, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %99) #14, !dbg !1089
  %100 = bitcast i32* %r_num.i83 to i8*, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %100) #14, !dbg !1089
  %101 = bitcast double* %q.i to i8*, !dbg !1090
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %101) #14, !dbg !1090
  %102 = bitcast double* %r.i to i8*, !dbg !1090
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %102) #14, !dbg !1090
  store i32 0, i32* @n_atoms, align 4, !dbg !1091, !tbaa !795
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1092, !tbaa !457
  %103 = bitcast [256 x i8]* %line.i78 to i32*
  %call38.i = call i8* @fgets(i8* noundef nonnull %95, i32 noundef 256, %struct._IO_FILE* noundef nonnull %qfp.5195) #14, !dbg !1093
  %tobool.not39.i = icmp eq i8* %call38.i, null, !dbg !1094
  br i1 %tobool.not39.i, label %while.end.i107, label %while.body.i86, !dbg !1094

while.body.i86:                                   ; preds = %if.then8, %while.cond.backedge.i105
  %bcmp.i84 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef nonnull dereferenceable(3) %95, i64 3) #14, !dbg !1095
  %cmp.i85 = icmp eq i32 %bcmp.i84, 0, !dbg !1098
  br i1 %cmp.i85, label %while.cond.backedge.i105, label %if.else.i89, !dbg !1099

if.else.i89:                                      ; preds = %while.body.i86
  %rhsv.i87 = load i32, i32* %103, align 16, !dbg !1100
  %.not.i88 = icmp eq i32 %rhsv.i87, 1297044545, !dbg !1100
  br i1 %.not.i88, label %if.then9.i93, label %lor.lhs.false.i90, !dbg !1102

lor.lhs.false.i90:                                ; preds = %if.else.i89
  %bcmp37.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %95, i64 6) #14, !dbg !1103
  %cmp8.i = icmp eq i32 %bcmp37.i, 0, !dbg !1104
  br i1 %cmp8.i, label %if.then9.i93, label %while.cond.backedge.i105, !dbg !1105

if.then9.i93:                                     ; preds = %lor.lhs.false.i90, %if.else.i89
  call void @llvm.dbg.value(metadata i32* %a_num.i82, metadata !1075, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1080
  call void @llvm.dbg.value(metadata i32* %r_num.i83, metadata !1076, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1080
  call void @llvm.dbg.value(metadata double* %q.i, metadata !1077, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1080
  call void @llvm.dbg.value(metadata double* %r.i, metadata !1078, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1080
  %call14.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %95, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* noundef nonnull %96, i32* noundef nonnull %a_num.i82, i8* noundef nonnull %97, i8* noundef nonnull %98, i32* noundef nonnull %r_num.i83, double* noundef nonnull %q.i, double* noundef nonnull %r.i) #14, !dbg !1106
  %call16.i91 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %98) #15, !dbg !1108
  %cmp17.not.i = icmp eq i32 %call16.i91, 0, !dbg !1110
  %.pre.i92 = load i32, i32* @n_atoms, align 4, !dbg !1111, !tbaa !795
  br i1 %cmp17.not.i, label %if.end23.i, label %if.then18.i, !dbg !1112

if.then18.i:                                      ; preds = %if.then9.i93
  %cmp19.i = icmp sgt i32 %.pre.i92, 0, !dbg !1113
  br i1 %cmp19.i, label %if.then20.i94, label %if.end.i96, !dbg !1116

if.then20.i94:                                    ; preds = %if.then18.i
  call fastcc void @addqr2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1117
  store i32 0, i32* @n_atoms, align 4, !dbg !1119, !tbaa !795
  br label %if.end.i96, !dbg !1120

if.end.i96:                                       ; preds = %if.then20.i94, %if.then18.i
  %104 = phi i32 [ 0, %if.then20.i94 ], [ %.pre.i92, %if.then18.i ]
  %call22.i95 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %98) #14, !dbg !1121
  br label %if.end23.i, !dbg !1122

if.end23.i:                                       ; preds = %if.end.i96, %if.then9.i93
  %105 = phi i32 [ %104, %if.end.i96 ], [ %.pre.i92, %if.then9.i93 ], !dbg !1123
  %idxprom.i97 = sext i32 %105 to i64, !dbg !1124
  %arrayidx.i98 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i97, !dbg !1124
  call void @llvm.dbg.value(metadata %struct.atom_t* %arrayidx.i98, metadata !1079, metadata !DIExpression()) #14, !dbg !1080
  call void @NAB_initatom(%struct.atom_t* noundef nonnull %arrayidx.i98, i32 noundef 0) #14, !dbg !1125
  %a_atomname.i99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %arrayidx.i98, i64 0, i32 0, !dbg !1126
  %106 = load i8*, i8** %a_atomname.i99, align 16, !dbg !1126, !tbaa !692
  %call25.i100 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %106, i8* noundef nonnull %97) #14, !dbg !1127
  %107 = load double, double* %q.i, align 8, !dbg !1128, !tbaa !824
  call void @llvm.dbg.value(metadata double %107, metadata !1077, metadata !DIExpression()) #14, !dbg !1080
  %a_charge.i101 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i97, i32 6, !dbg !1129
  store double %107, double* %a_charge.i101, align 16, !dbg !1130, !tbaa !827
  %108 = load double, double* %r.i, align 8, !dbg !1131, !tbaa !824
  call void @llvm.dbg.value(metadata double %108, metadata !1078, metadata !DIExpression()) #14, !dbg !1080
  %a_radius.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i97, i32 7, !dbg !1132
  store double %108, double* %a_radius.i, align 8, !dbg !1133, !tbaa !1134
  %109 = load i32, i32* @n_atoms, align 4, !dbg !1135, !tbaa !795
  %inc.i102 = add nsw i32 %109, 1, !dbg !1135
  store i32 %inc.i102, i32* @n_atoms, align 4, !dbg !1135, !tbaa !795
  br label %while.cond.backedge.i105, !dbg !1136

while.cond.backedge.i105:                         ; preds = %if.end23.i, %lor.lhs.false.i90, %while.body.i86
  %call.i103 = call i8* @fgets(i8* noundef nonnull %95, i32 noundef 256, %struct._IO_FILE* noundef nonnull %qfp.5195) #14, !dbg !1093
  %tobool.not.i104 = icmp eq i8* %call.i103, null, !dbg !1094
  br i1 %tobool.not.i104, label %while.end.i107, label %while.body.i86, !dbg !1094, !llvm.loop !1137

while.end.i107:                                   ; preds = %while.cond.backedge.i105, %if.then8
  %110 = load i32, i32* @n_atoms, align 4, !dbg !1139, !tbaa !795
  %cmp28.i106 = icmp sgt i32 %110, 0, !dbg !1141
  br i1 %cmp28.i106, label %if.then29.i, label %qr2reslib.exit, !dbg !1142

if.then29.i:                                      ; preds = %while.end.i107
  call fastcc void @addqr2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1143
  br label %qr2reslib.exit, !dbg !1143

qr2reslib.exit:                                   ; preds = %while.end.i107, %if.then29.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %102) #14, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %101) #14, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %100) #14, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %99) #14, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %98) #14, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %97) #14, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %96) #14, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %95) #14, !dbg !1144
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %qfp.1, metadata !396, metadata !DIExpression()), !dbg !400
  %call9 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %qfp.5195), !dbg !1145
  br label %if.end10, !dbg !1146

if.end10:                                         ; preds = %qr2reslib.exit, %if.end6
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %cfp.1, metadata !397, metadata !DIExpression()), !dbg !400
  %tobool11.not = icmp eq %struct._IO_FILE* %cfp.5196, null, !dbg !1147
  br i1 %tobool11.not, label %cleanup, label %if.then12, !dbg !1149

if.then12:                                        ; preds = %if.end10
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %cfp.1, metadata !1150, metadata !DIExpression()) #14, !dbg !1169
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !1153, metadata !DIExpression()) #14, !dbg !1169
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %line.i108, i64 0, i64 0, !dbg !1172
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %111) #14, !dbg !1172
  call void @llvm.dbg.declare(metadata [256 x i8]* %line.i108, metadata !1154, metadata !DIExpression()) #14, !dbg !1173
  %112 = getelementptr inbounds [20 x i8], [20 x i8]* %r_name.i109, i64 0, i64 0, !dbg !1174
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %112) #14, !dbg !1174
  call void @llvm.dbg.declare(metadata [20 x i8]* %r_name.i109, metadata !1155, metadata !DIExpression()) #14, !dbg !1175
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !1157, metadata !DIExpression()) #14, !dbg !1169
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %anm1.i, i64 0, i64 0, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %113) #14, !dbg !1176
  call void @llvm.dbg.declare(metadata [8 x i8]* %anm1.i, metadata !1159, metadata !DIExpression()) #14, !dbg !1177
  %114 = getelementptr inbounds [8 x i8], [8 x i8]* %anm2.i, i64 0, i64 0, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %114) #14, !dbg !1176
  call void @llvm.dbg.declare(metadata [8 x i8]* %anm2.i, metadata !1160, metadata !DIExpression()) #14, !dbg !1178
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %anm3.i, i64 0, i64 0, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %115) #14, !dbg !1176
  call void @llvm.dbg.declare(metadata [8 x i8]* %anm3.i, metadata !1161, metadata !DIExpression()) #14, !dbg !1179
  %116 = getelementptr inbounds [8 x i8], [8 x i8]* %anm4.i, i64 0, i64 0, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %116) #14, !dbg !1176
  call void @llvm.dbg.declare(metadata [8 x i8]* %anm4.i, metadata !1162, metadata !DIExpression()) #14, !dbg !1180
  store i32 0, i32* @n_chi, align 4, !dbg !1181, !tbaa !795
  store i8 0, i8* %112, align 16, !dbg !1182, !tbaa !457
  %rl_rlist.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %9, i64 0, i32 4
  %call244.i = call i8* @fgets(i8* noundef nonnull %111, i32 noundef 256, %struct._IO_FILE* noundef nonnull %cfp.5196) #14, !dbg !1183
  %tobool.not245.i = icmp eq i8* %call244.i, null, !dbg !1184
  br i1 %tobool.not245.i, label %while.end.i135, label %while.body.i111, !dbg !1184

while.body.i111:                                  ; preds = %if.then12, %if.end104.i
  %res.0246.i = phi %struct.residue_t* [ %res.2.i, %if.end104.i ], [ null, %if.then12 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0246.i, metadata !1157, metadata !DIExpression()) #14, !dbg !1169
  %117 = load i8, i8* %111, align 16, !dbg !1185, !tbaa !457
  %cmp.i110 = icmp eq i8 %117, 35, !dbg !1188
  br i1 %cmp.i110, label %if.then.i114, label %if.else35.i, !dbg !1189

if.then.i114:                                     ; preds = %while.body.i111
  %call6.i112 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %111, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* noundef nonnull %112) #14, !dbg !1190
  %cmp7.not.i113 = icmp eq i32 %call6.i112, 1, !dbg !1193
  br i1 %cmp7.not.i113, label %if.else.i122, label %if.then9.i120, !dbg !1194

if.then9.i120:                                    ; preds = %if.then.i114
  %call11.i115 = call i64 @strlen(i8* noundef nonnull %111) #15, !dbg !1195
  %118 = trunc i64 %call11.i115 to i32, !dbg !1195
  %conv12.i116 = add i32 %118, -1, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %conv12.i116, metadata !1156, metadata !DIExpression()) #14, !dbg !1169
  %119 = icmp slt i32 %conv12.i116, 20, !dbg !1197
  %cond.i117 = select i1 %119, i32 %conv12.i116, i32 20, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %cond.i117, metadata !1156, metadata !DIExpression()) #14, !dbg !1169
  %call16.i118 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 noundef %cond.i117, i32 noundef %cond.i117, i8* noundef nonnull %111) #14, !dbg !1198
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1199, !tbaa !296
  %call17.i119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %120, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #18, !dbg !1200
  br label %chi2reslib.exit, !dbg !1201

if.else.i122:                                     ; preds = %if.then.i114
  %121 = load i32, i32* @n_chi, align 4, !dbg !1202, !tbaa !795
  %cmp18.i121 = icmp sgt i32 %121, 0, !dbg !1205
  br i1 %cmp18.i121, label %if.then20.i123, label %if.end.i124, !dbg !1206

if.then20.i123:                                   ; preds = %if.else.i122
  call fastcc void @addchi2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1207
  store i32 0, i32* @n_chi, align 4, !dbg !1209, !tbaa !795
  br label %if.end.i124, !dbg !1210

if.end.i124:                                      ; preds = %if.then20.i123, %if.else.i122
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !1158, metadata !DIExpression()) #14, !dbg !1169
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1157, metadata !DIExpression()) #14, !dbg !1169
  %res.1241.i = load %struct.residue_t*, %struct.residue_t** %rl_rlist.i, align 8, !dbg !1211, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.1241.i, metadata !1157, metadata !DIExpression()) #14, !dbg !1169
  %tobool21.not242.i = icmp eq %struct.residue_t* %res.1241.i, null, !dbg !1213
  br i1 %tobool21.not242.i, label %if.then28.i, label %for.body.i126, !dbg !1213

for.body.i126:                                    ; preds = %if.end.i124, %for.inc.i127
  %res.1243.i = phi %struct.residue_t* [ %res.1.i, %for.inc.i127 ], [ %res.1241.i, %if.end.i124 ]
  %r_resname.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.1243.i, i64 0, i32 4, !dbg !1214
  %122 = load i8*, i8** %r_resname.i, align 8, !dbg !1214, !tbaa !1218
  %call23.i125 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %122, i8* noundef nonnull %112) #15, !dbg !1220
  %tobool24.not.i = icmp eq i32 %call23.i125, 0, !dbg !1220
  br i1 %tobool24.not.i, label %if.end31.i, label %for.inc.i127, !dbg !1221

for.inc.i127:                                     ; preds = %for.body.i126
  %r_next.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.1243.i, i64 0, i32 0, !dbg !1222
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1157, metadata !DIExpression()) #14, !dbg !1169
  %res.1.i = load %struct.residue_t*, %struct.residue_t** %r_next.i, align 8, !dbg !1211, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.1.i, metadata !1157, metadata !DIExpression()) #14, !dbg !1169
  %tobool21.not.i = icmp eq %struct.residue_t* %res.1.i, null, !dbg !1213
  br i1 %tobool21.not.i, label %if.then28.i, label %for.body.i126, !dbg !1213, !llvm.loop !1223

if.then28.i:                                      ; preds = %if.end.i124, %for.inc.i127
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1158, metadata !DIExpression()) #14, !dbg !1169
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1225, !tbaa !296
  %124 = load i8*, i8** %rl_name.i, align 8, !dbg !1228, !tbaa !305
  %call30.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %123, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* noundef nonnull %112, i8* noundef %124) #18, !dbg !1229
  br label %chi2reslib.exit, !dbg !1230

if.end31.i:                                       ; preds = %for.body.i126
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.1243.i, metadata !1158, metadata !DIExpression()) #14, !dbg !1169
  %call33.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %112) #14, !dbg !1231
  br label %if.end104.i, !dbg !1232

if.else35.i:                                      ; preds = %while.body.i111
  %call41.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %111, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* noundef nonnull %113, i8* noundef nonnull %114, i8* noundef nonnull %115, i8* noundef nonnull %116) #14, !dbg !1233
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0246.i, metadata !1235, metadata !DIExpression()) #14, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %113, metadata !1240, metadata !DIExpression()) #14, !dbg !1242
  call void @llvm.dbg.value(metadata i32 0, metadata !1241, metadata !DIExpression()) #14, !dbg !1242
  %r_natoms.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 15
  %125 = load i32, i32* %r_natoms.i.i, align 8, !tbaa !1245
  %cmp10.i.i = icmp sgt i32 %125, 0, !dbg !1246
  br i1 %cmp10.i.i, label %for.body.lr.ph.i.i, label %if.then45.i, !dbg !1249

for.body.lr.ph.i.i:                               ; preds = %if.else35.i
  %r_atoms.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 17, !dbg !1250
  %126 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i.i, align 8, !tbaa !1253
  %wide.trip.count.i.i = zext i32 %125 to i64, !dbg !1246
  br label %for.body.i.i, !dbg !1249

for.cond.i.i:                                     ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1242
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1246
  br i1 %exitcond.not.i.i, label %if.then45.i, label %for.body.i.i, !dbg !1249, !llvm.loop !1254

for.body.i.i:                                     ; preds = %for.cond.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1242
  %a_atomname.i.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %126, i64 %indvars.iv.i.i, i32 0, !dbg !1256
  %127 = load i8*, i8** %a_atomname.i.i, align 8, !dbg !1256, !tbaa !692
  %call.i.i129 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %127, i8* noundef nonnull dereferenceable(1) %113) #15, !dbg !1257
  %tobool.not.i.i = icmp eq i32 %call.i.i129, 0, !dbg !1257
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1242
  br i1 %tobool.not.i.i, label %for.body.lr.ph.i164.i, label %for.cond.i.i, !dbg !1259

if.then45.i:                                      ; preds = %if.else35.i, %for.cond.i.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* undef, i64 undef), metadata !1167, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1169
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1260, !tbaa !296
  %r_resname47.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 4, !dbg !1262
  %129 = load i8*, i8** %r_resname47.i, align 8, !dbg !1262, !tbaa !1218
  %call48.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %128, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %113, i8* noundef %129) #18, !dbg !1263
  call void @exit(i32 noundef 1) #17, !dbg !1264
  unreachable, !dbg !1264

for.body.lr.ph.i164.i:                            ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %126, i64 %indvars.iv.i.i), metadata !1167, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1169
  %conv50.i = trunc i64 %indvars.iv.i.i to i32, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %conv50.i, metadata !1163, metadata !DIExpression()) #14, !dbg !1169
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0246.i, metadata !1235, metadata !DIExpression()) #14, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %114, metadata !1240, metadata !DIExpression()) #14, !dbg !1266
  call void @llvm.dbg.value(metadata i32 0, metadata !1241, metadata !DIExpression()) #14, !dbg !1266
  br label %for.body.i173.i, !dbg !1269

for.cond.i166.i:                                  ; preds = %for.body.i173.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i172.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1266
  %exitcond.not.i165.i = icmp eq i64 %indvars.iv.next.i172.i, %wide.trip.count.i.i, !dbg !1270
  br i1 %exitcond.not.i165.i, label %if.then55.i130, label %for.body.i173.i, !dbg !1269, !llvm.loop !1271

for.body.i173.i:                                  ; preds = %for.cond.i166.i, %for.body.lr.ph.i164.i
  %indvars.iv.i167.i = phi i64 [ 0, %for.body.lr.ph.i164.i ], [ %indvars.iv.next.i172.i, %for.cond.i166.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i167.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1266
  %a_atomname.i169.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %126, i64 %indvars.iv.i167.i, i32 0, !dbg !1273
  %130 = load i8*, i8** %a_atomname.i169.i, align 8, !dbg !1273, !tbaa !692
  %call.i170.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %130, i8* noundef nonnull dereferenceable(1) %114) #15, !dbg !1274
  %tobool.not.i171.i = icmp eq i32 %call.i170.i, 0, !dbg !1274
  %indvars.iv.next.i172.i = add nuw nsw i64 %indvars.iv.i167.i, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i172.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1266
  br i1 %tobool.not.i171.i, label %for.body.lr.ph.i180.i, label %for.cond.i166.i, !dbg !1276

if.then55.i130:                                   ; preds = %for.cond.i166.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %126, i64 undef), metadata !1167, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1169
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1277, !tbaa !296
  %r_resname57.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 4, !dbg !1279
  %132 = load i8*, i8** %r_resname57.i, align 8, !dbg !1279, !tbaa !1218
  %call58.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %131, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %114, i8* noundef %132) #18, !dbg !1280
  call void @exit(i32 noundef 1) #17, !dbg !1281
  unreachable, !dbg !1281

for.body.lr.ph.i180.i:                            ; preds = %for.body.i173.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %126, i64 %indvars.iv.i167.i), metadata !1167, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1169
  %conv65.i = trunc i64 %indvars.iv.i167.i to i32, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %conv65.i, metadata !1164, metadata !DIExpression()) #14, !dbg !1169
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0246.i, metadata !1235, metadata !DIExpression()) #14, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %115, metadata !1240, metadata !DIExpression()) #14, !dbg !1283
  call void @llvm.dbg.value(metadata i32 0, metadata !1241, metadata !DIExpression()) #14, !dbg !1283
  br label %for.body.i189.i, !dbg !1286

for.cond.i182.i:                                  ; preds = %for.body.i189.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i188.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1283
  %exitcond.not.i181.i = icmp eq i64 %indvars.iv.next.i188.i, %wide.trip.count.i.i, !dbg !1287
  br i1 %exitcond.not.i181.i, label %if.then70.i, label %for.body.i189.i, !dbg !1286, !llvm.loop !1288

for.body.i189.i:                                  ; preds = %for.cond.i182.i, %for.body.lr.ph.i180.i
  %indvars.iv.i183.i = phi i64 [ 0, %for.body.lr.ph.i180.i ], [ %indvars.iv.next.i188.i, %for.cond.i182.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i183.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1283
  %a_atomname.i185.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %126, i64 %indvars.iv.i183.i, i32 0, !dbg !1290
  %133 = load i8*, i8** %a_atomname.i185.i, align 8, !dbg !1290, !tbaa !692
  %call.i186.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %133, i8* noundef nonnull dereferenceable(1) %115) #15, !dbg !1291
  %tobool.not.i187.i = icmp eq i32 %call.i186.i, 0, !dbg !1291
  %indvars.iv.next.i188.i = add nuw nsw i64 %indvars.iv.i183.i, 1, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i188.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1283
  br i1 %tobool.not.i187.i, label %for.body.i205.i, label %for.cond.i182.i, !dbg !1293

if.then70.i:                                      ; preds = %for.cond.i182.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %126, i64 undef), metadata !1167, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1169
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1294, !tbaa !296
  %r_resname72.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 4, !dbg !1296
  %135 = load i8*, i8** %r_resname72.i, align 8, !dbg !1296, !tbaa !1218
  %call73.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %115, i8* noundef %135) #18, !dbg !1297
  call void @exit(i32 noundef 1) #17, !dbg !1298
  unreachable, !dbg !1298

for.cond.i198.i:                                  ; preds = %for.body.i205.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i204.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1299
  %exitcond.not.i197.i = icmp eq i64 %indvars.iv.next.i204.i, %wide.trip.count.i.i, !dbg !1302
  br i1 %exitcond.not.i197.i, label %if.then85.i, label %for.body.i205.i, !dbg !1303, !llvm.loop !1304

for.body.i205.i:                                  ; preds = %for.body.i189.i, %for.cond.i198.i
  %indvars.iv.i199.i = phi i64 [ %indvars.iv.next.i204.i, %for.cond.i198.i ], [ 0, %for.body.i189.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i199.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1299
  %a_atomname.i201.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %126, i64 %indvars.iv.i199.i, i32 0, !dbg !1306
  %136 = load i8*, i8** %a_atomname.i201.i, align 8, !dbg !1306, !tbaa !692
  %call.i202.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %136, i8* noundef nonnull dereferenceable(1) %116) #15, !dbg !1307
  %tobool.not.i203.i = icmp eq i32 %call.i202.i, 0, !dbg !1307
  %indvars.iv.next.i204.i = add nuw nsw i64 %indvars.iv.i199.i, 1, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i204.i, metadata !1241, metadata !DIExpression()) #14, !dbg !1299
  br i1 %tobool.not.i203.i, label %if.else89.i, label %for.cond.i198.i, !dbg !1309

if.then85.i:                                      ; preds = %for.cond.i198.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %126, i64 undef), metadata !1167, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1169
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1310, !tbaa !296
  %r_resname87.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 4, !dbg !1312
  %138 = load i8*, i8** %r_resname87.i, align 8, !dbg !1312, !tbaa !1218
  %call88.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %137, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %116, i8* noundef %138) #18, !dbg !1313
  call void @exit(i32 noundef 1) #17, !dbg !1314
  unreachable, !dbg !1314

if.else89.i:                                      ; preds = %for.body.i205.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %126, i64 %indvars.iv.i199.i), metadata !1167, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i183.i, metadata !1165, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #14, !dbg !1169
  %conv80.i = trunc i64 %indvars.iv.i183.i to i32, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %conv80.i, metadata !1165, metadata !DIExpression()) #14, !dbg !1169
  %conv95.i = trunc i64 %indvars.iv.i199.i to i32, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %conv95.i, metadata !1166, metadata !DIExpression()) #14, !dbg !1169
  %139 = load i32, i32* @n_chi, align 4, !dbg !1317, !tbaa !795
  %idxprom.i131 = sext i32 %139 to i64, !dbg !1318
  call void @llvm.dbg.value(metadata !DIArgList([500 x %struct.chiral_t]* @chi, i64 %idxprom.i131), metadata !1168, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1169
  %inc.i132 = add nsw i32 %139, 1, !dbg !1319
  store i32 %inc.i132, i32* @n_chi, align 4, !dbg !1319, !tbaa !795
  %arrayidx97.i = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %idxprom.i131, i32 0, i64 0, !dbg !1320
  store i32 %conv50.i, i32* %arrayidx97.i, align 8, !dbg !1321, !tbaa !795
  %arrayidx99.i = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %idxprom.i131, i32 0, i64 1, !dbg !1322
  store i32 %conv65.i, i32* %arrayidx99.i, align 4, !dbg !1323, !tbaa !795
  %arrayidx101.i = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %idxprom.i131, i32 0, i64 2, !dbg !1324
  store i32 %conv80.i, i32* %arrayidx101.i, align 8, !dbg !1325, !tbaa !795
  %arrayidx103.i = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %idxprom.i131, i32 0, i64 3, !dbg !1326
  store i32 %conv95.i, i32* %arrayidx103.i, align 4, !dbg !1327, !tbaa !795
  %c_dist.i = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %idxprom.i131, i32 1, !dbg !1328
  store double 0.000000e+00, double* %c_dist.i, align 8, !dbg !1329, !tbaa !1330
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else89.i, %if.end31.i
  %res.2.i = phi %struct.residue_t* [ %res.1243.i, %if.end31.i ], [ %res.0246.i, %if.else89.i ], !dbg !1169
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.2.i, metadata !1157, metadata !DIExpression()) #14, !dbg !1169
  %call.i133 = call i8* @fgets(i8* noundef nonnull %111, i32 noundef 256, %struct._IO_FILE* noundef nonnull %cfp.5196) #14, !dbg !1183
  %tobool.not.i134 = icmp eq i8* %call.i133, null, !dbg !1184
  br i1 %tobool.not.i134, label %while.end.i135, label %while.body.i111, !dbg !1184, !llvm.loop !1332

while.end.i135:                                   ; preds = %if.end104.i, %if.then12
  %140 = load i32, i32* @n_chi, align 4, !dbg !1334, !tbaa !795
  %cmp105.i = icmp sgt i32 %140, 0, !dbg !1336
  br i1 %cmp105.i, label %if.then107.i, label %chi2reslib.exit, !dbg !1337

if.then107.i:                                     ; preds = %while.end.i135
  call fastcc void @addchi2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1338
  store i32 0, i32* @n_chi, align 4, !dbg !1340, !tbaa !795
  br label %chi2reslib.exit, !dbg !1341

chi2reslib.exit:                                  ; preds = %if.then9.i120, %if.then28.i, %while.end.i135, %if.then107.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %116) #14, !dbg !1342
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %115) #14, !dbg !1342
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #14, !dbg !1342
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113) #14, !dbg !1342
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %112) #14, !dbg !1342
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %111) #14, !dbg !1342
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %cfp.1, metadata !397, metadata !DIExpression()), !dbg !400
  %call13 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %cfp.5196), !dbg !1343
  br label %cleanup, !dbg !1344

cleanup:                                          ; preds = %read_reslib_header.exit.thread, %if.end10, %chi2reslib.exit
  %retval.0 = phi %struct.reslib_t* [ %9, %chi2reslib.exit ], [ %9, %if.end10 ], [ null, %read_reslib_header.exit.thread ], !dbg !400
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #14, !dbg !1345
  ret %struct.reslib_t* %retval.0, !dbg !1345
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @setreslibkind(i8* noundef %reslib, i8* nocapture noundef readonly %kind) local_unnamed_addr #0 !dbg !1346 {
entry:
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !1350, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i8* %kind, metadata !1351, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.declare(metadata i8** undef, metadata !1352, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !285, metadata !DIExpression()) #14, !dbg !1356
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !290, metadata !DIExpression()) #14, !dbg !1356
  %rlp.05.i = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1359, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.05.i, metadata !290, metadata !DIExpression()) #14, !dbg !1356
  %tobool.not6.i = icmp eq %struct.reslib_t* %rlp.05.i, null, !dbg !1360
  br i1 %tobool.not6.i, label %if.then, label %for.body.i, !dbg !1360

for.body.i:                                       ; preds = %entry, %for.inc.i
  %rlp.07.i = phi %struct.reslib_t* [ %rlp.0.i, %for.inc.i ], [ %rlp.05.i, %entry ]
  %rl_name.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.07.i, i64 0, i32 1, !dbg !1361
  %0 = load i8*, i8** %rl_name.i, align 8, !dbg !1361, !tbaa !305
  %call.i = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %reslib) #15, !dbg !1362
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !1363
  br i1 %cmp.i, label %if.end5, label %for.inc.i, !dbg !1364

for.inc.i:                                        ; preds = %for.body.i
  %rl_next.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.07.i, i64 0, i32 0, !dbg !1365
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !290, metadata !DIExpression()) #14, !dbg !1356
  %rlp.0.i = load %struct.reslib_t*, %struct.reslib_t** %rl_next.i, align 8, !dbg !1359, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0.i, metadata !290, metadata !DIExpression()) #14, !dbg !1356
  %tobool.not.i = icmp eq %struct.reslib_t* %rlp.0.i, null, !dbg !1360
  br i1 %tobool.not.i, label %if.then, label %for.body.i, !dbg !1360, !llvm.loop !1366

if.then:                                          ; preds = %for.inc.i, %entry
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !1353, metadata !DIExpression()), !dbg !1354
  %call1 = tail call fastcc %struct.reslib_t* @read_reslib(i8* noundef %reslib), !dbg !1368
  call void @llvm.dbg.value(metadata %struct.reslib_t* %call1, metadata !1353, metadata !DIExpression()), !dbg !1354
  %cmp2 = icmp eq %struct.reslib_t* %call1, null, !dbg !1371
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !1372

if.then3:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1373, !tbaa !296
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %reslib) #16, !dbg !1375
  tail call void @exit(i32 noundef 1) #17, !dbg !1376
  unreachable, !dbg !1376

if.end5:                                          ; preds = %for.body.i, %if.then
  %rlp.0 = phi %struct.reslib_t* [ %call1, %if.then ], [ %rlp.07.i, %for.body.i ], !dbg !1377
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0, metadata !1353, metadata !DIExpression()), !dbg !1354
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.0, i64 0, i32 2, !dbg !1378
  store i32 0, i32* %rl_r_kind, align 8, !dbg !1379, !tbaa !328
  %call6 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #15, !dbg !1380
  %tobool.not = icmp eq i32 %call6, 0, !dbg !1380
  br i1 %tobool.not, label %if.end28.sink.split, label %lor.lhs.false, !dbg !1382

lor.lhs.false:                                    ; preds = %if.end5
  %call7 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #15, !dbg !1383
  %tobool8.not = icmp eq i32 %call7, 0, !dbg !1383
  br i1 %tobool8.not, label %if.end28.sink.split, label %if.else, !dbg !1384

if.else:                                          ; preds = %lor.lhs.false
  %call11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1385
  %tobool12.not = icmp eq i32 %call11, 0, !dbg !1385
  br i1 %tobool12.not, label %if.end28.sink.split, label %lor.lhs.false13, !dbg !1387

lor.lhs.false13:                                  ; preds = %if.else
  %call14 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #15, !dbg !1388
  %tobool15.not = icmp eq i32 %call14, 0, !dbg !1388
  br i1 %tobool15.not, label %if.end28.sink.split, label %if.else18, !dbg !1389

if.else18:                                        ; preds = %lor.lhs.false13
  %call19 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1390
  %tobool20.not = icmp eq i32 %call19, 0, !dbg !1390
  br i1 %tobool20.not, label %if.end28.sink.split, label %lor.lhs.false21, !dbg !1392

lor.lhs.false21:                                  ; preds = %if.else18
  %call22 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #15, !dbg !1393
  %tobool23.not = icmp eq i32 %call22, 0, !dbg !1393
  br i1 %tobool23.not, label %if.end28.sink.split, label %if.end28, !dbg !1394

if.end28.sink.split:                              ; preds = %if.else18, %lor.lhs.false21, %if.else, %lor.lhs.false13, %if.end5, %lor.lhs.false
  %.sink = phi i32 [ 1, %lor.lhs.false ], [ 1, %if.end5 ], [ 2, %lor.lhs.false13 ], [ 2, %if.else ], [ 3, %lor.lhs.false21 ], [ 3, %if.else18 ]
  store i32 %.sink, i32* %rl_r_kind, align 8, !dbg !1395, !tbaa !328
  br label %if.end28, !dbg !1396

if.end28:                                         ; preds = %if.end28.sink.split, %lor.lhs.false21
  %2 = phi i32 [ 0, %lor.lhs.false21 ], [ %.sink, %if.end28.sink.split ], !dbg !1397
  ret i32 %2, !dbg !1396
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @getresidue(i8* noundef %rname, i8* noundef %reslib) local_unnamed_addr #0 !dbg !1398 {
entry:
  %leapname = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %rname, metadata !1402, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !1403, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.declare(metadata i8** undef, metadata !1404, metadata !DIExpression()), !dbg !1413
  %0 = getelementptr inbounds [5 x i8], [5 x i8]* %leapname, i64 0, i64 0, !dbg !1414
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %0) #14, !dbg !1414
  call void @llvm.dbg.declare(metadata [5 x i8]* %leapname, metadata !1405, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !285, metadata !DIExpression()) #14, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !290, metadata !DIExpression()) #14, !dbg !1416
  %rlp.05.i = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1419, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.05.i, metadata !290, metadata !DIExpression()) #14, !dbg !1416
  %tobool.not6.i = icmp eq %struct.reslib_t* %rlp.05.i, null, !dbg !1420
  br i1 %tobool.not6.i, label %if.then, label %for.body.i, !dbg !1420

for.body.i:                                       ; preds = %entry, %for.inc.i
  %rlp.07.i = phi %struct.reslib_t* [ %rlp.0.i, %for.inc.i ], [ %rlp.05.i, %entry ]
  %rl_name.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.07.i, i64 0, i32 1, !dbg !1421
  %1 = load i8*, i8** %rl_name.i, align 8, !dbg !1421, !tbaa !305
  %call.i = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %reslib) #15, !dbg !1422
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !1423
  br i1 %cmp.i, label %if.end4, label %for.inc.i, !dbg !1424

for.inc.i:                                        ; preds = %for.body.i
  %rl_next.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.07.i, i64 0, i32 0, !dbg !1425
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !290, metadata !DIExpression()) #14, !dbg !1416
  %rlp.0.i = load %struct.reslib_t*, %struct.reslib_t** %rl_next.i, align 8, !dbg !1419, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0.i, metadata !290, metadata !DIExpression()) #14, !dbg !1416
  %tobool.not.i = icmp eq %struct.reslib_t* %rlp.0.i, null, !dbg !1420
  br i1 %tobool.not.i, label %if.then, label %for.body.i, !dbg !1420, !llvm.loop !1426

if.then:                                          ; preds = %for.inc.i, %entry
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !1409, metadata !DIExpression()), !dbg !1412
  %call1 = tail call fastcc %struct.reslib_t* @read_reslib(i8* noundef %reslib), !dbg !1428
  call void @llvm.dbg.value(metadata %struct.reslib_t* %call1, metadata !1409, metadata !DIExpression()), !dbg !1412
  %cmp2 = icmp eq %struct.reslib_t* %call1, null, !dbg !1431
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1432

if.then3:                                         ; preds = %if.then
  tail call void @exit(i32 noundef 1) #17, !dbg !1433
  unreachable, !dbg !1433

if.end4:                                          ; preds = %for.body.i, %if.then
  %rlp.0 = phi %struct.reslib_t* [ %call1, %if.then ], [ %rlp.07.i, %for.body.i ], !dbg !1435
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0, metadata !1409, metadata !DIExpression()), !dbg !1412
  %call5 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(1) %rname) #14, !dbg !1436
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.0, i64 0, i32 2, !dbg !1437
  %2 = load i32, i32* %rl_r_kind, align 8, !dbg !1437, !tbaa !328
  switch i32 %2, label %if.end65 [
    i32 1, label %if.then7
    i32 2, label %if.then36
  ], !dbg !1439

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 3) #15, !dbg !1440
  %tobool.not = icmp eq i32 %call8, 0, !dbg !1440
  br i1 %tobool.not, label %if.then9, label %if.else, !dbg !1443

if.then9:                                         ; preds = %if.then7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1444
  br label %if.end65, !dbg !1444

if.else:                                          ; preds = %if.then7
  %call12 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 noundef 3) #15, !dbg !1445
  %tobool13.not = icmp eq i32 %call12, 0, !dbg !1445
  br i1 %tobool13.not, label %if.then14, label %if.else17, !dbg !1447

if.then14:                                        ; preds = %if.else
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1448
  br label %if.end65, !dbg !1448

if.else17:                                        ; preds = %if.else
  %call18 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 noundef 3) #15, !dbg !1449
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !1449
  br i1 %tobool19.not, label %if.then20, label %if.else23, !dbg !1451

if.then20:                                        ; preds = %if.else17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1452
  br label %if.end65, !dbg !1452

if.else23:                                        ; preds = %if.else17
  %call24 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 noundef 3) #15, !dbg !1453
  %tobool25.not = icmp eq i32 %call24, 0, !dbg !1453
  br i1 %tobool25.not, label %if.then26, label %if.end65, !dbg !1455

if.then26:                                        ; preds = %if.else23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1456
  br label %if.end65, !dbg !1456

if.then36:                                        ; preds = %if.end4
  %call37 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 3) #15, !dbg !1457
  %tobool38.not = icmp eq i32 %call37, 0, !dbg !1457
  br i1 %tobool38.not, label %if.then39, label %if.else42, !dbg !1461

if.then39:                                        ; preds = %if.then36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1462
  br label %if.end65, !dbg !1462

if.else42:                                        ; preds = %if.then36
  %call43 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 noundef 3) #15, !dbg !1463
  %tobool44.not = icmp eq i32 %call43, 0, !dbg !1463
  br i1 %tobool44.not, label %if.then45, label %if.else48, !dbg !1465

if.then45:                                        ; preds = %if.else42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1466
  br label %if.end65, !dbg !1466

if.else48:                                        ; preds = %if.else42
  %call49 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef 3) #15, !dbg !1467
  %tobool50.not = icmp eq i32 %call49, 0, !dbg !1467
  br i1 %tobool50.not, label %if.then51, label %if.else54, !dbg !1469

if.then51:                                        ; preds = %if.else48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1470
  br label %if.end65, !dbg !1470

if.else54:                                        ; preds = %if.else48
  %call55 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 noundef 3) #15, !dbg !1471
  %tobool56.not = icmp eq i32 %call55, 0, !dbg !1471
  br i1 %tobool56.not, label %if.then57, label %if.end65, !dbg !1473

if.then57:                                        ; preds = %if.else54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1474
  br label %if.end65, !dbg !1474

if.end65:                                         ; preds = %if.end4, %if.then45, %if.else54, %if.then57, %if.then51, %if.then39, %if.then9, %if.then20, %if.then26, %if.else23, %if.then14
  %strchr = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %rname, i32 51), !dbg !1475
  %cmp67.not = icmp eq i8* %strchr, null, !dbg !1477
  br i1 %cmp67.not, label %if.else71, label %if.end78.sink.split, !dbg !1478

if.else71:                                        ; preds = %if.end65
  %strchr123 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %rname, i32 53), !dbg !1479
  %cmp73.not = icmp eq i8* %strchr123, null, !dbg !1481
  br i1 %cmp73.not, label %if.end78, label %if.end78.sink.split, !dbg !1482

if.end78.sink.split:                              ; preds = %if.else71, %if.end65
  %.sink = phi i16 [ 51, %if.end65 ], [ 53, %if.else71 ]
  %strlen = call i64 @strlen(i8* nonnull %0), !dbg !1483
  %endptr = getelementptr [5 x i8], [5 x i8]* %leapname, i64 0, i64 %strlen, !dbg !1483
  %3 = bitcast i8* %endptr to i16*, !dbg !1483
  store i16 %.sink, i16* %3, align 1, !dbg !1483
  br label %if.end78, !dbg !1484

if.end78:                                         ; preds = %if.end78.sink.split, %if.else71
  %rl_rlist = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.0, i64 0, i32 4, !dbg !1484
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1410, metadata !DIExpression()), !dbg !1412
  %res.0130 = load %struct.residue_t*, %struct.residue_t** %rl_rlist, align 8, !dbg !1486, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0130, metadata !1410, metadata !DIExpression()), !dbg !1412
  %cond131 = icmp eq %struct.residue_t* %res.0130, null, !dbg !1487
  br i1 %cond131, label %if.then89, label %for.body, !dbg !1487

for.body:                                         ; preds = %if.end78, %for.inc
  %res.0132 = phi %struct.residue_t* [ %res.0, %for.inc ], [ %res.0130, %if.end78 ]
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0132, i64 0, i32 4, !dbg !1488
  %4 = load i8*, i8** %r_resname, align 8, !dbg !1488, !tbaa !1218
  %call80 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(1) %rname) #15, !dbg !1492
  %cmp81 = icmp eq i32 %call80, 0, !dbg !1493
  br i1 %cmp81, label %if.end92, label %lor.lhs.false, !dbg !1494

lor.lhs.false:                                    ; preds = %for.body
  %call84 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull %0) #15, !dbg !1495
  %cmp85 = icmp eq i32 %call84, 0, !dbg !1496
  br i1 %cmp85, label %if.end92, label %for.inc, !dbg !1497

for.inc:                                          ; preds = %lor.lhs.false
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0132, i64 0, i32 0, !dbg !1498
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1410, metadata !DIExpression()), !dbg !1412
  %res.0 = load %struct.residue_t*, %struct.residue_t** %r_next, align 8, !dbg !1486, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0, metadata !1410, metadata !DIExpression()), !dbg !1412
  %cond = icmp eq %struct.residue_t* %res.0, null, !dbg !1487
  br i1 %cond, label %if.then89, label %for.body, !dbg !1487, !llvm.loop !1499

if.then89:                                        ; preds = %for.inc, %if.end78
  %call90 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* noundef %rname, i8* noundef %reslib) #14, !dbg !1501
  %call91 = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1504
  br label %cleanup, !dbg !1505

if.end92:                                         ; preds = %lor.lhs.false, %for.body
  %call93 = call %struct.residue_t* @copyresidue(%struct.residue_t* noundef nonnull %res.0132), !dbg !1506
  call void @llvm.dbg.value(metadata %struct.residue_t* %call93, metadata !1411, metadata !DIExpression()), !dbg !1412
  br label %cleanup, !dbg !1507

cleanup:                                          ; preds = %if.end92, %if.then89
  %retval.0 = phi %struct.residue_t* [ null, %if.then89 ], [ %call93, %if.end92 ], !dbg !1412
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %0) #14, !dbg !1508
  ret %struct.residue_t* %retval.0, !dbg !1508
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare dso_local i8* @strcpy(i8* noalias noundef returned writeonly, i8* noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

declare !dbg !1509 dso_local i32 @rt_errormsg_s(i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* noundef %res) local_unnamed_addr #0 !dbg !1514 {
entry:
  call void @llvm.dbg.value(metadata %struct.residue_t* %res, metadata !1518, metadata !DIExpression()), !dbg !1530
  %call = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 noundef 128) #14, !dbg !1531
  %0 = bitcast i8* %call to %struct.residue_t*, !dbg !1533
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !1524, metadata !DIExpression()), !dbg !1530
  %cmp = icmp eq i8* %call, null, !dbg !1534
  br i1 %cmp, label %if.then, label %if.end, !dbg !1535

if.then:                                          ; preds = %entry
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1536
  %1 = load i8*, i8** %r_resname, align 8, !dbg !1536, !tbaa !1218
  %call1 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* noundef %1) #14, !dbg !1538
  %call2 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1539
  br label %cleanup, !dbg !1540

if.end:                                           ; preds = %entry
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 15, !dbg !1541
  %2 = load i32, i32* %r_natoms, align 8, !dbg !1541, !tbaa !1245
  %conv = sext i32 %2 to i64, !dbg !1543
  %mul = mul nsw i64 %conv, 176, !dbg !1544
  %call3 = tail call noalias i8* @malloc(i64 noundef %mul) #14, !dbg !1545
  %3 = bitcast i8* %call3 to %struct.atom_t*, !dbg !1546
  call void @llvm.dbg.value(metadata %struct.atom_t* %3, metadata !1525, metadata !DIExpression()), !dbg !1530
  %cmp4 = icmp eq i8* %call3, null, !dbg !1547
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !1548

if.then6:                                         ; preds = %if.end
  %r_resname7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1549
  %4 = load i8*, i8** %r_resname7, align 8, !dbg !1549, !tbaa !1218
  %call8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* noundef %4) #14, !dbg !1551
  %call9 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1552
  br label %cleanup, !dbg !1553

if.end10:                                         ; preds = %if.end
  %mul13 = shl nsw i64 %conv, 2, !dbg !1554
  %call14 = tail call noalias i8* @malloc(i64 noundef %mul13) #14, !dbg !1556
  call void @llvm.dbg.value(metadata i8* %call14, metadata !1523, metadata !DIExpression()), !dbg !1530
  %cmp15 = icmp eq i8* %call14, null, !dbg !1557
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !1558

if.then17:                                        ; preds = %if.end10
  %r_resname18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1559
  %5 = load i8*, i8** %r_resname18, align 8, !dbg !1559, !tbaa !1218
  %call19 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* noundef %5) #14, !dbg !1561
  %call20 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1562
  br label %cleanup, !dbg !1563

if.end21:                                         ; preds = %if.end10
  %r_nintbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 11, !dbg !1564
  %6 = load i32, i32* %r_nintbonds, align 8, !dbg !1564, !tbaa !1566
  %cmp22 = icmp sgt i32 %6, 0, !dbg !1567
  br i1 %cmp22, label %if.then24, label %if.end36, !dbg !1568

if.then24:                                        ; preds = %if.end21
  %conv26506 = zext i32 %6 to i64, !dbg !1569
  %mul27 = shl nuw nsw i64 %conv26506, 3, !dbg !1572
  %call28 = tail call noalias i8* @malloc(i64 noundef %mul27) #14, !dbg !1573
  %7 = bitcast i8* %call28 to [2 x i32]*, !dbg !1574
  call void @llvm.dbg.value(metadata [2 x i32]* %7, metadata !1528, metadata !DIExpression()), !dbg !1530
  %cmp29 = icmp eq i8* %call28, null, !dbg !1575
  br i1 %cmp29, label %if.then31, label %if.end36, !dbg !1576

if.then31:                                        ; preds = %if.then24
  %r_resname32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1577
  %8 = load i8*, i8** %r_resname32, align 8, !dbg !1577, !tbaa !1218
  %call33 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* noundef %8) #14, !dbg !1579
  %call34 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1580
  br label %cleanup, !dbg !1581

if.end36:                                         ; preds = %if.end21, %if.then24
  %bp.0 = phi [2 x i32]* [ %7, %if.then24 ], [ null, %if.end21 ], !dbg !1582
  call void @llvm.dbg.value(metadata [2 x i32]* %bp.0, metadata !1528, metadata !DIExpression()), !dbg !1530
  %r_nchiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 13, !dbg !1583
  %9 = load i32, i32* %r_nchiral, align 8, !dbg !1583, !tbaa !1585
  %cmp37 = icmp sgt i32 %9, 0, !dbg !1586
  br i1 %cmp37, label %if.then39, label %if.end52, !dbg !1587

if.then39:                                        ; preds = %if.end36
  %conv41507 = zext i32 %9 to i64, !dbg !1588
  %mul42 = mul nuw nsw i64 %conv41507, 24, !dbg !1591
  %call43 = tail call noalias i8* @malloc(i64 noundef %mul42) #14, !dbg !1592
  %10 = bitcast i8* %call43 to %struct.chiral_t*, !dbg !1593
  call void @llvm.dbg.value(metadata %struct.chiral_t* %10, metadata !1529, metadata !DIExpression()), !dbg !1530
  %cmp44 = icmp eq i8* %call43, null, !dbg !1594
  br i1 %cmp44, label %if.then46, label %if.end52, !dbg !1595

if.then46:                                        ; preds = %if.then39
  %r_resname47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1596
  %11 = load i8*, i8** %r_resname47, align 8, !dbg !1596, !tbaa !1218
  %call48 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* noundef %11) #14, !dbg !1598
  %call49 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1599
  br label %cleanup, !dbg !1600

if.end52:                                         ; preds = %if.end36, %if.then39
  %cp.0 = phi %struct.chiral_t* [ %10, %if.then39 ], [ null, %if.end36 ], !dbg !1601
  call void @llvm.dbg.value(metadata %struct.chiral_t* %cp.0, metadata !1529, metadata !DIExpression()), !dbg !1530
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 0, !dbg !1602
  store %struct.residue_t* null, %struct.residue_t** %r_next, align 8, !dbg !1603, !tbaa !1604
  %r_resname53 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1605
  %12 = load i8*, i8** %r_resname53, align 8, !dbg !1605, !tbaa !1218
  %call54 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #15, !dbg !1606
  %add = add i64 %call54, 1, !dbg !1607
  %call55 = tail call noalias i8* @malloc(i64 noundef %add) #14, !dbg !1608
  call void @llvm.dbg.value(metadata i8* %call55, metadata !1527, metadata !DIExpression()), !dbg !1530
  %cmp56 = icmp eq i8* %call55, null, !dbg !1609
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !1611

if.then58:                                        ; preds = %if.end52
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1612, !tbaa !296
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %13) #16, !dbg !1614
  tail call void @exit(i32 noundef 1) #17, !dbg !1615
  unreachable, !dbg !1615

if.end60:                                         ; preds = %if.end52
  %call62 = tail call i8* @strcpy(i8* noundef nonnull %call55, i8* noundef nonnull dereferenceable(1) %12) #14, !dbg !1616
  %r_resname63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1617
  store i8* %call55, i8** %r_resname63, align 8, !dbg !1618, !tbaa !1218
  %r_resid = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 5, !dbg !1619
  %15 = load i8*, i8** %r_resid, align 8, !dbg !1619, !tbaa !1620
  %call64 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %15) #15, !dbg !1621
  %add65 = add i64 %call64, 1, !dbg !1622
  %call66 = tail call noalias i8* @malloc(i64 noundef %add65) #14, !dbg !1623
  call void @llvm.dbg.value(metadata i8* %call66, metadata !1527, metadata !DIExpression()), !dbg !1530
  %cmp67 = icmp eq i8* %call66, null, !dbg !1624
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !1626

if.then69:                                        ; preds = %if.end60
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1627, !tbaa !296
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %16) #16, !dbg !1629
  tail call void @exit(i32 noundef 1) #17, !dbg !1630
  unreachable, !dbg !1630

if.end71:                                         ; preds = %if.end60
  %call73 = tail call i8* @strcpy(i8* noundef nonnull %call66, i8* noundef nonnull dereferenceable(1) %15) #14, !dbg !1631
  %r_resid74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !1632
  store i8* %call66, i8** %r_resid74, align 8, !dbg !1633, !tbaa !1620
  %r_num = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 1, !dbg !1634
  %18 = load i32, i32* %r_num, align 8, !dbg !1634, !tbaa !1635
  %r_num75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 1, !dbg !1636
  store i32 %18, i32* %r_num75, align 8, !dbg !1637, !tbaa !1635
  %r_tresnum = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 2, !dbg !1638
  store i32 0, i32* %r_tresnum, align 4, !dbg !1639, !tbaa !1640
  %r_resnum = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 3, !dbg !1641
  store i32 0, i32* %r_resnum, align 8, !dbg !1642, !tbaa !1643
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 6, !dbg !1644
  %19 = load i32, i32* %r_attr, align 8, !dbg !1644, !tbaa !1645
  %r_attr76 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 6, !dbg !1646
  store i32 %19, i32* %r_attr76, align 8, !dbg !1647, !tbaa !1645
  %r_strand = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 9, !dbg !1648
  store %struct.strand_t* null, %struct.strand_t** %r_strand, align 8, !dbg !1649, !tbaa !1650
  %call77 = tail call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* noundef nonnull %res) #14, !dbg !1651
  %r_extbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 10, !dbg !1652
  store %struct.extbond_t* %call77, %struct.extbond_t** %r_extbonds, align 8, !dbg !1653, !tbaa !1654
  %20 = load i32, i32* %r_nintbonds, align 8, !dbg !1655, !tbaa !1566
  %r_nintbonds79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !1656
  store i32 %20, i32* %r_nintbonds79, align 8, !dbg !1657, !tbaa !1566
  %r_intbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !1658
  store [2 x i32]* %bp.0, [2 x i32]** %r_intbonds, align 8, !dbg !1659, !tbaa !1660
  call void @llvm.dbg.value(metadata i32 0, metadata !1520, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 0, metadata !1520, metadata !DIExpression()), !dbg !1530
  %cmp81509 = icmp sgt i32 %20, 0, !dbg !1661
  br i1 %cmp81509, label %for.body.lr.ph, label %for.end, !dbg !1664

for.body.lr.ph:                                   ; preds = %if.end71
  %r_intbonds83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 12
  %21 = load [2 x i32]*, [2 x i32]** %r_intbonds83, align 8, !tbaa !1660
  %wide.trip.count = zext i32 %20 to i64, !dbg !1661
  br label %for.body, !dbg !1664

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1520, metadata !DIExpression()), !dbg !1530
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %indvars.iv, i64 0, !dbg !1665
  %22 = load i32, i32* %arrayidx84, align 4, !dbg !1665, !tbaa !795
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %indvars.iv, i64 0, !dbg !1667
  store i32 %22, i32* %arrayidx88, align 4, !dbg !1668, !tbaa !795
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %indvars.iv, i64 1, !dbg !1669
  %23 = load i32, i32* %arrayidx92, align 4, !dbg !1669, !tbaa !795
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %indvars.iv, i64 1, !dbg !1670
  store i32 %23, i32* %arrayidx96, align 4, !dbg !1671, !tbaa !795
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1520, metadata !DIExpression()), !dbg !1530
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1661
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1664, !llvm.loop !1673

for.end:                                          ; preds = %for.body, %if.end71
  %24 = load i32, i32* %r_nchiral, align 8, !dbg !1675, !tbaa !1585
  %r_nchiral98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !1676
  store i32 %24, i32* %r_nchiral98, align 8, !dbg !1677, !tbaa !1585
  %r_chiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !1678
  store %struct.chiral_t* %cp.0, %struct.chiral_t** %r_chiral, align 8, !dbg !1679, !tbaa !1680
  call void @llvm.dbg.value(metadata %struct.chiral_t* %cp.0, metadata !1529, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 0, metadata !1521, metadata !DIExpression()), !dbg !1530
  %cmp102512 = icmp sgt i32 %24, 0, !dbg !1681
  br i1 %cmp102512, label %for.cond105.preheader.lr.ph, label %for.end126, !dbg !1684

for.cond105.preheader.lr.ph:                      ; preds = %for.end
  %r_chiral109 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 14
  %25 = load %struct.chiral_t*, %struct.chiral_t** %r_chiral109, align 8, !tbaa !1680
  %wide.trip.count533 = zext i32 %24 to i64, !dbg !1681
  br label %for.cond105.preheader, !dbg !1684

for.cond105.preheader:                            ; preds = %for.cond105.preheader.lr.ph, %for.end119
  %indvars.iv530 = phi i64 [ 0, %for.cond105.preheader.lr.ph ], [ %indvars.iv.next531, %for.end119 ]
  %cp.1514 = phi %struct.chiral_t* [ %cp.0, %for.cond105.preheader.lr.ph ], [ %incdec.ptr, %for.end119 ]
  call void @llvm.dbg.value(metadata %struct.chiral_t* %cp.1514, metadata !1529, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i64 %indvars.iv530, metadata !1521, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1530
  br label %for.body108, !dbg !1685

for.body108:                                      ; preds = %for.cond105.preheader, %for.body108
  %indvars.iv526 = phi i64 [ 0, %for.cond105.preheader ], [ %indvars.iv.next527, %for.body108 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv526, metadata !1519, metadata !DIExpression()), !dbg !1530
  %arrayidx113 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %25, i64 %indvars.iv530, i32 0, i64 %indvars.iv526, !dbg !1688
  %26 = load i32, i32* %arrayidx113, align 4, !dbg !1688, !tbaa !795
  %arrayidx116 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.1514, i64 0, i32 0, i64 %indvars.iv526, !dbg !1690
  store i32 %26, i32* %arrayidx116, align 4, !dbg !1691, !tbaa !795
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next527, metadata !1519, metadata !DIExpression()), !dbg !1530
  %exitcond529.not = icmp eq i64 %indvars.iv.next527, 4, !dbg !1693
  br i1 %exitcond529.not, label %for.end119, label %for.body108, !dbg !1685, !llvm.loop !1694

for.end119:                                       ; preds = %for.body108
  %c_dist = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %25, i64 %indvars.iv530, i32 1, !dbg !1696
  %27 = load double, double* %c_dist, align 8, !dbg !1696, !tbaa !1330
  %c_dist123 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.1514, i64 0, i32 1, !dbg !1697
  store double %27, double* %c_dist123, align 8, !dbg !1698, !tbaa !1330
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next531, metadata !1521, metadata !DIExpression()), !dbg !1530
  %incdec.ptr = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.1514, i64 1, !dbg !1700
  call void @llvm.dbg.value(metadata %struct.chiral_t* %incdec.ptr, metadata !1529, metadata !DIExpression()), !dbg !1530
  %exitcond534.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count533, !dbg !1681
  br i1 %exitcond534.not, label %for.end126, label %for.cond105.preheader, !dbg !1684, !llvm.loop !1701

for.end126:                                       ; preds = %for.end119, %for.end
  %r_kind = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 7, !dbg !1703
  %28 = load i32, i32* %r_kind, align 4, !dbg !1703, !tbaa !1704
  %r_kind127 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 7, !dbg !1705
  store i32 %28, i32* %r_kind127, align 4, !dbg !1706, !tbaa !1704
  %r_atomkind = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 8, !dbg !1707
  %29 = load i32, i32* %r_atomkind, align 8, !dbg !1707, !tbaa !1708
  %r_atomkind128 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !1709
  store i32 %29, i32* %r_atomkind128, align 8, !dbg !1710, !tbaa !1708
  %30 = load i32, i32* %r_natoms, align 8, !dbg !1711, !tbaa !1245
  %r_natoms130 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !1712
  store i32 %30, i32* %r_natoms130, align 8, !dbg !1713, !tbaa !1245
  %r_aindex = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !1714
  %31 = bitcast i32** %r_aindex to i8**, !dbg !1715
  store i8* %call14, i8** %31, align 8, !dbg !1715, !tbaa !1716
  %r_aindex131 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 16, !dbg !1717
  %32 = load i32*, i32** %r_aindex131, align 8, !dbg !1717, !tbaa !1716
  %tobool.not = icmp eq i32* %32, null, !dbg !1719
  %33 = bitcast i8* %call14 to i32*, !dbg !1720
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1530
  %cmp150517 = icmp sgt i32 %30, 0, !dbg !1721
  br i1 %tobool.not, label %for.cond148.preheader, label %for.cond133.preheader, !dbg !1720

for.cond133.preheader:                            ; preds = %for.end126
  br i1 %cmp150517, label %for.body137.lr.ph, label %if.end159.thread, !dbg !1722

for.body137.lr.ph:                                ; preds = %for.cond133.preheader
  %34 = sext i32 %30 to i64
  br label %for.body137, !dbg !1722

for.cond148.preheader:                            ; preds = %for.end126
  br i1 %cmp150517, label %for.body152.lr.ph, label %if.end159.thread, !dbg !1725

for.body152.lr.ph:                                ; preds = %for.cond148.preheader
  %35 = sext i32 %30 to i64
  br label %for.body152, !dbg !1725

for.body137:                                      ; preds = %for.body137.lr.ph, %for.body137
  %indvars.iv535 = phi i64 [ 0, %for.body137.lr.ph ], [ %indvars.iv.next536, %for.body137 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv535, metadata !1519, metadata !DIExpression()), !dbg !1530
  %arrayidx140 = getelementptr inbounds i32, i32* %32, i64 %indvars.iv535, !dbg !1728
  %36 = load i32, i32* %arrayidx140, align 4, !dbg !1728, !tbaa !795
  %arrayidx143 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv535, !dbg !1730
  store i32 %36, i32* %arrayidx143, align 4, !dbg !1731, !tbaa !795
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next536, metadata !1519, metadata !DIExpression()), !dbg !1530
  %cmp135 = icmp slt i64 %indvars.iv.next536, %34, !dbg !1733
  br i1 %cmp135, label %for.body137, label %if.end159, !dbg !1722, !llvm.loop !1734

for.body152:                                      ; preds = %for.body152.lr.ph, %for.body152
  %indvars.iv538 = phi i64 [ 0, %for.body152.lr.ph ], [ %indvars.iv.next539, %for.body152 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv538, metadata !1519, metadata !DIExpression()), !dbg !1530
  %arrayidx155 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv538, !dbg !1736
  %37 = trunc i64 %indvars.iv538 to i32, !dbg !1738
  store i32 %37, i32* %arrayidx155, align 4, !dbg !1738, !tbaa !795
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next539, metadata !1519, metadata !DIExpression()), !dbg !1530
  %cmp150 = icmp slt i64 %indvars.iv.next539, %35, !dbg !1740
  br i1 %cmp150, label %for.body152, label %if.end159, !dbg !1725, !llvm.loop !1741

if.end159.thread:                                 ; preds = %for.cond133.preheader, %for.cond148.preheader
  %r_atoms552 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1743
  %38 = bitcast %struct.atom_t** %r_atoms552 to i8**, !dbg !1744
  store i8* %call3, i8** %38, align 8, !dbg !1744, !tbaa !1253
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1530
  br label %cleanup, !dbg !1745

if.end159:                                        ; preds = %for.body137, %for.body152
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1743
  %39 = bitcast %struct.atom_t** %r_atoms to i8**, !dbg !1744
  store i8* %call3, i8** %39, align 8, !dbg !1744, !tbaa !1253
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1530
  %cmp162520 = icmp sgt i32 %30, 0, !dbg !1747
  br i1 %cmp162520, label %for.body164.lr.ph, label %cleanup, !dbg !1745

for.body164.lr.ph:                                ; preds = %if.end159
  %r_atoms165 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 17
  %40 = load %struct.atom_t*, %struct.atom_t** %r_atoms165, align 8, !tbaa !1253
  %wide.trip.count550 = zext i32 %30 to i64, !dbg !1747
  br label %for.body164, !dbg !1745

for.body164:                                      ; preds = %for.body164.lr.ph, %for.end214
  %indvars.iv547 = phi i64 [ 0, %for.body164.lr.ph ], [ %indvars.iv.next548, %for.end214 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv547, metadata !1519, metadata !DIExpression()), !dbg !1530
  %a_atomname = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 0, !dbg !1749
  %41 = load i8*, i8** %a_atomname, align 8, !dbg !1749, !tbaa !692
  %call168 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %41) #15, !dbg !1751
  %add169 = add i64 %call168, 1, !dbg !1752
  %call170 = tail call noalias i8* @malloc(i64 noundef %add169) #14, !dbg !1753
  call void @llvm.dbg.value(metadata i8* %call170, metadata !1526, metadata !DIExpression()), !dbg !1530
  %cmp171 = icmp eq i8* %call170, null, !dbg !1754
  br i1 %cmp171, label %if.then173, label %if.end175, !dbg !1756

if.then173:                                       ; preds = %for.body164
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1757, !tbaa !296
  %43 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %42) #16, !dbg !1759
  tail call void @exit(i32 noundef 1) #17, !dbg !1760
  unreachable, !dbg !1760

if.end175:                                        ; preds = %for.body164
  %call180 = tail call i8* @strcpy(i8* noundef nonnull %call170, i8* noundef nonnull dereferenceable(1) %41) #14, !dbg !1761
  %a_atomname183 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 0, !dbg !1762
  store i8* %call170, i8** %a_atomname183, align 8, !dbg !1763, !tbaa !692
  %a_atomtype = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 1, !dbg !1764
  store i8* null, i8** %a_atomtype, align 8, !dbg !1765, !tbaa !1766
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 2, !dbg !1767
  %44 = load i32, i32* %a_attr, align 8, !dbg !1767, !tbaa !1768
  %a_attr191 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 2, !dbg !1769
  store i32 %44, i32* %a_attr191, align 8, !dbg !1770, !tbaa !1768
  %a_nconnect = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 3, !dbg !1771
  %45 = load i32, i32* %a_nconnect, align 4, !dbg !1771, !tbaa !1772
  %a_nconnect197 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 3, !dbg !1773
  store i32 %45, i32* %a_nconnect197, align 4, !dbg !1774, !tbaa !1772
  call void @llvm.dbg.value(metadata i32 0, metadata !1522, metadata !DIExpression()), !dbg !1530
  br label %for.body201, !dbg !1775

for.body201:                                      ; preds = %if.end175, %for.body201
  %indvars.iv543 = phi i64 [ 0, %if.end175 ], [ %indvars.iv.next544, %for.body201 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv543, metadata !1522, metadata !DIExpression()), !dbg !1530
  %arrayidx206 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 4, i64 %indvars.iv543, !dbg !1777
  %46 = load i32, i32* %arrayidx206, align 4, !dbg !1777, !tbaa !795
  %arrayidx211 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 4, i64 %indvars.iv543, !dbg !1779
  store i32 %46, i32* %arrayidx211, align 4, !dbg !1780, !tbaa !795
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next544, metadata !1522, metadata !DIExpression()), !dbg !1530
  %exitcond546.not = icmp eq i64 %indvars.iv.next544, 8, !dbg !1782
  br i1 %exitcond546.not, label %for.end214, label %for.body201, !dbg !1775, !llvm.loop !1783

for.end214:                                       ; preds = %for.body201
  %a_residue = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 5, !dbg !1785
  %47 = bitcast %struct.residue_t** %a_residue to i8**, !dbg !1786
  store i8* %call, i8** %47, align 8, !dbg !1786, !tbaa !1787
  %a_charge = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 6, !dbg !1788
  %48 = load double, double* %a_charge, align 8, !dbg !1788, !tbaa !827
  %a_charge222 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 6, !dbg !1789
  store double %48, double* %a_charge222, align 8, !dbg !1790, !tbaa !827
  %a_radius = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 7, !dbg !1791
  %49 = load double, double* %a_radius, align 8, !dbg !1791, !tbaa !1134
  %a_radius228 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 7, !dbg !1792
  store double %49, double* %a_radius228, align 8, !dbg !1793, !tbaa !1134
  %a_bfact = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 8, !dbg !1794
  %50 = load double, double* %a_bfact, align 8, !dbg !1794, !tbaa !1795
  %a_bfact234 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 8, !dbg !1796
  store double %50, double* %a_bfact234, align 8, !dbg !1797, !tbaa !1795
  %a_occ = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 9, !dbg !1798
  %51 = load double, double* %a_occ, align 8, !dbg !1798, !tbaa !1799
  %a_occ240 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 9, !dbg !1800
  store double %51, double* %a_occ240, align 8, !dbg !1801, !tbaa !1799
  %a_element = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 10, !dbg !1802
  store i8* null, i8** %a_element, align 8, !dbg !1803, !tbaa !1804
  %a_int1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 11, !dbg !1805
  %52 = load i32, i32* %a_int1, align 8, !dbg !1805, !tbaa !1806
  %a_int1248 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 11, !dbg !1807
  store i32 %52, i32* %a_int1248, align 8, !dbg !1808, !tbaa !1806
  %a_float1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 12, !dbg !1809
  %53 = load double, double* %a_float1, align 8, !dbg !1809, !tbaa !1810
  %a_float1254 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 12, !dbg !1811
  store double %53, double* %a_float1254, align 8, !dbg !1812, !tbaa !1810
  %a_float2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 13, !dbg !1813
  %54 = load double, double* %a_float2, align 8, !dbg !1813, !tbaa !1814
  %a_float2260 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 13, !dbg !1815
  store double %54, double* %a_float2260, align 8, !dbg !1816, !tbaa !1814
  %a_tatomnum = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 14, !dbg !1817
  %55 = load i32, i32* %a_tatomnum, align 8, !dbg !1817, !tbaa !1818
  %a_tatomnum266 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 14, !dbg !1819
  store i32 %55, i32* %a_tatomnum266, align 8, !dbg !1820, !tbaa !1818
  %a_atomnum = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 15, !dbg !1821
  %56 = load i32, i32* %a_atomnum, align 4, !dbg !1821, !tbaa !1822
  %a_atomnum272 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 15, !dbg !1823
  store i32 %56, i32* %a_atomnum272, align 4, !dbg !1824, !tbaa !1822
  %a_fullname = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 16, !dbg !1825
  store i8* null, i8** %a_fullname, align 8, !dbg !1826, !tbaa !1827
  %arrayidx278 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 17, i64 0, !dbg !1828
  %57 = load double, double* %arrayidx278, align 8, !dbg !1828, !tbaa !824
  %arrayidx282 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 17, i64 0, !dbg !1829
  store double %57, double* %arrayidx282, align 8, !dbg !1830, !tbaa !824
  %arrayidx287 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 17, i64 1, !dbg !1831
  %58 = load double, double* %arrayidx287, align 8, !dbg !1831, !tbaa !824
  %arrayidx291 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 17, i64 1, !dbg !1832
  store double %58, double* %arrayidx291, align 8, !dbg !1833, !tbaa !824
  %arrayidx296 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 17, i64 2, !dbg !1834
  %59 = load double, double* %arrayidx296, align 8, !dbg !1834, !tbaa !824
  %arrayidx300 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 17, i64 2, !dbg !1835
  store double %59, double* %arrayidx300, align 8, !dbg !1836, !tbaa !824
  %a_w = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %indvars.iv547, i32 18, !dbg !1837
  %60 = load double, double* %a_w, align 8, !dbg !1837, !tbaa !1838
  %a_w306 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 18, !dbg !1839
  store double %60, double* %a_w306, align 8, !dbg !1840, !tbaa !1838
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next548, metadata !1519, metadata !DIExpression()), !dbg !1530
  %exitcond551.not = icmp eq i64 %indvars.iv.next548, %wide.trip.count550, !dbg !1747
  br i1 %exitcond551.not, label %cleanup, label %for.body164, !dbg !1745, !llvm.loop !1842

cleanup:                                          ; preds = %for.end214, %if.end159.thread, %if.end159, %if.then46, %if.then31, %if.then17, %if.then6, %if.then
  %retval.0 = phi %struct.residue_t* [ null, %if.then ], [ null, %if.then6 ], [ null, %if.then17 ], [ null, %if.then31 ], [ null, %if.then46 ], [ %0, %if.end159 ], [ %0, %if.end159.thread ], [ %0, %for.end214 ], !dbg !1530
  ret %struct.residue_t* %retval.0, !dbg !1844
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) local_unnamed_addr #5

declare dso_local %struct.extbond_t* @copyextbonds(...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* nocapture noundef readonly %str) local_unnamed_addr #0 !dbg !1845 {
entry:
  call void @llvm.dbg.value(metadata %struct.strand_t* %str, metadata !1849, metadata !DIExpression()), !dbg !1853
  %call = tail call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #14, !dbg !1854
  %0 = bitcast i8* %call to %struct.strand_t*, !dbg !1856
  call void @llvm.dbg.value(metadata %struct.strand_t* %0, metadata !1850, metadata !DIExpression()), !dbg !1853
  %cmp = icmp eq i8* %call, null, !dbg !1857
  br i1 %cmp, label %if.then, label %if.end, !dbg !1858

if.then:                                          ; preds = %entry
  %s_strandname = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 0, !dbg !1859
  %1 = load i8*, i8** %s_strandname, align 8, !dbg !1859, !tbaa !1861
  %call1 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* noundef %1) #14, !dbg !1863
  br label %cleanup.sink.split, !dbg !1864

if.end:                                           ; preds = %entry
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 5, !dbg !1865
  %2 = load i32, i32* %s_nresidues, align 8, !dbg !1865, !tbaa !1867
  %conv = sext i32 %2 to i64, !dbg !1868
  %mul = shl nsw i64 %conv, 3, !dbg !1869
  %call3 = tail call noalias i8* @malloc(i64 noundef %mul) #14, !dbg !1870
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 7, !dbg !1871
  %3 = bitcast %struct.residue_t*** %s_residues to i8**, !dbg !1872
  store i8* %call3, i8** %3, align 8, !dbg !1872, !tbaa !1873
  %cmp4 = icmp eq i8* %call3, null, !dbg !1874
  br i1 %cmp4, label %cleanup.sink.split, label %if.end8, !dbg !1875

if.end8:                                          ; preds = %if.end
  %s_strandname9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 0, !dbg !1876
  %4 = load i8*, i8** %s_strandname9, align 8, !dbg !1876, !tbaa !1861
  %call10 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %4) #15, !dbg !1878
  %add = add i64 %call10, 1, !dbg !1879
  %call12 = tail call noalias i8* @malloc(i64 noundef %add) #14, !dbg !1880
  call void @llvm.dbg.value(metadata i8* %call12, metadata !1851, metadata !DIExpression()), !dbg !1853
  %cmp13 = icmp eq i8* %call12, null, !dbg !1881
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !1882

if.then15:                                        ; preds = %if.end8
  %call17 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* noundef %4) #14, !dbg !1883
  br label %cleanup.sink.split, !dbg !1885

if.end19:                                         ; preds = %if.end8
  %s_strandname20 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1886
  store i8* %call12, i8** %s_strandname20, align 8, !dbg !1887, !tbaa !1861
  %call23 = tail call i8* @strcpy(i8* noundef nonnull %call12, i8* noundef nonnull dereferenceable(1) %4) #14, !dbg !1888
  %s_strandnum = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 1, !dbg !1889
  %5 = load i32, i32* %s_strandnum, align 8, !dbg !1889, !tbaa !1890
  %s_strandnum24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 1, !dbg !1891
  store i32 %5, i32* %s_strandnum24, align 8, !dbg !1892, !tbaa !1890
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 2, !dbg !1893
  %6 = load i32, i32* %s_attr, align 4, !dbg !1893, !tbaa !1894
  %s_attr25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 2, !dbg !1895
  store i32 %6, i32* %s_attr25, align 4, !dbg !1896, !tbaa !1894
  %s_molecule = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 3, !dbg !1897
  %s_nresidues27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 5, !dbg !1898
  %7 = bitcast %struct.molecule_t** %s_molecule to i8*, !dbg !1899
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !dbg !1900
  store i32 %2, i32* %s_nresidues27, align 8, !dbg !1899, !tbaa !1867
  %s_res_size = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 6, !dbg !1901
  store i32 %2, i32* %s_res_size, align 4, !dbg !1902, !tbaa !1903
  call void @llvm.dbg.value(metadata i32 0, metadata !1852, metadata !DIExpression()), !dbg !1853
  %s_residues32 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 7
  call void @llvm.dbg.value(metadata i32 0, metadata !1852, metadata !DIExpression()), !dbg !1853
  %cmp3086 = icmp sgt i32 %2, 0, !dbg !1904
  br i1 %cmp3086, label %for.body, label %cleanup, !dbg !1907

for.body:                                         ; preds = %if.end19, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end19 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1852, metadata !DIExpression()), !dbg !1853
  %8 = load %struct.residue_t**, %struct.residue_t*** %s_residues32, align 8, !dbg !1908, !tbaa !1873
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %8, i64 %indvars.iv, !dbg !1910
  %9 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !1910, !tbaa !296
  %call33 = tail call %struct.residue_t* @copyresidue(%struct.residue_t* noundef %9), !dbg !1911
  %10 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !dbg !1912, !tbaa !1873
  %arrayidx36 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %10, i64 %indvars.iv, !dbg !1913
  store %struct.residue_t* %call33, %struct.residue_t** %arrayidx36, align 8, !dbg !1914, !tbaa !296
  %11 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !dbg !1915, !tbaa !1873
  %arrayidx39 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %11, i64 %indvars.iv, !dbg !1916
  %12 = load %struct.residue_t*, %struct.residue_t** %arrayidx39, align 8, !dbg !1916, !tbaa !296
  %r_strand = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 9, !dbg !1917
  %13 = bitcast %struct.strand_t** %r_strand to i8**, !dbg !1918
  store i8* %call, i8** %13, align 8, !dbg !1918, !tbaa !1650
  %cmp40.not = icmp eq i64 %indvars.iv, 0, !dbg !1919
  br i1 %cmp40.not, label %for.inc, label %if.then42, !dbg !1921

if.then42:                                        ; preds = %for.body
  %14 = load %struct.residue_t*, %struct.residue_t** %arrayidx39, align 8, !dbg !1922, !tbaa !296
  %15 = add nuw i64 %indvars.iv, 4294967295
  %16 = and i64 %15, 4294967295
  %arrayidx48 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %11, i64 %16, !dbg !1923
  %17 = load %struct.residue_t*, %struct.residue_t** %arrayidx48, align 8, !dbg !1923, !tbaa !296
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 0, !dbg !1924
  store %struct.residue_t* %14, %struct.residue_t** %r_next, align 8, !dbg !1925, !tbaa !1604
  br label %for.inc, !dbg !1923

for.inc:                                          ; preds = %for.body, %if.then42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1852, metadata !DIExpression()), !dbg !1853
  %18 = load i32, i32* %s_nresidues, align 8, !dbg !1927, !tbaa !1867
  %19 = sext i32 %18 to i64, !dbg !1904
  %cmp30 = icmp slt i64 %indvars.iv.next, %19, !dbg !1904
  br i1 %cmp30, label %for.body, label %cleanup, !dbg !1907, !llvm.loop !1928

cleanup.sink.split:                               ; preds = %if.end, %if.then, %if.then15
  %.sink = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), %if.then15 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), %if.end ]
  %call18 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef %.sink) #14, !dbg !1853
  br label %cleanup, !dbg !1930

cleanup:                                          ; preds = %for.inc, %cleanup.sink.split, %if.end19
  %retval.0 = phi %struct.strand_t* [ %0, %if.end19 ], [ null, %cleanup.sink.split ], [ %0, %for.inc ], !dbg !1853
  ret %struct.strand_t* %retval.0, !dbg !1930
}

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* noundef %mol) local_unnamed_addr #0 !dbg !1931 {
entry:
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1935, metadata !DIExpression()), !dbg !1942
  %mol96 = bitcast %struct.molecule_t* %mol to i8*, !dbg !1943
  tail call void @upd_molnumbers(%struct.molecule_t* noundef %mol) #14, !dbg !1943
  %call = tail call noalias dereferenceable_or_null(136) i8* @malloc(i64 noundef 136) #14, !dbg !1944
  %0 = bitcast i8* %call to %struct.molecule_t*, !dbg !1946
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1941, metadata !DIExpression()), !dbg !1942
  %cmp = icmp eq i8* %call, null, !dbg !1947
  br i1 %cmp, label %if.then, label %if.end, !dbg !1948

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(13) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 13, i1 false), !dbg !1949
  %call2 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1951
  br label %cleanup, !dbg !1952

if.end:                                           ; preds = %entry
  %m_nstrands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 1, !dbg !1953
  %1 = load i32, i32* %m_nstrands, align 8, !dbg !1953, !tbaa !1954
  %m_nstrands3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !1956
  store i32 %1, i32* %m_nstrands3, align 8, !dbg !1957, !tbaa !1954
  %m_nresidues = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 3, !dbg !1958
  %2 = load i32, i32* %m_nresidues, align 8, !dbg !1958, !tbaa !1959
  %m_nresidues4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 3, !dbg !1960
  store i32 %2, i32* %m_nresidues4, align 8, !dbg !1961, !tbaa !1959
  %m_natoms = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 4, !dbg !1962
  %3 = load i32, i32* %m_natoms, align 4, !dbg !1962, !tbaa !1963
  %m_natoms5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 4, !dbg !1964
  store i32 %3, i32* %m_natoms5, align 4, !dbg !1965, !tbaa !1963
  %m_nvalid = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 5, !dbg !1966
  %4 = load i32, i32* %m_nvalid, align 8, !dbg !1966, !tbaa !1967
  %m_nvalid6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !1968
  store i32 %4, i32* %m_nvalid6, align 8, !dbg !1969, !tbaa !1967
  %m_prm = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 6, !dbg !1970
  %5 = load %struct.parm*, %struct.parm** %m_prm, align 8, !dbg !1970, !tbaa !1972
  %cmp7.not = icmp eq %struct.parm* %5, null, !dbg !1973
  br i1 %cmp7.not, label %if.end13, label %if.then8, !dbg !1974

if.then8:                                         ; preds = %if.end
  %call10 = tail call %struct.parm* @copyparm(%struct.parm* noundef nonnull %5) #14, !dbg !1975
  br label %if.end13, !dbg !1977

if.end13:                                         ; preds = %if.end, %if.then8
  %call10.sink = phi %struct.parm* [ %call10, %if.then8 ], [ null, %if.end ], !dbg !1978
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !1979
  store %struct.parm* %call10.sink, %struct.parm** %6, align 8, !dbg !1980
  call void @llvm.dbg.value(metadata i32 0, metadata !1936, metadata !DIExpression()), !dbg !1942
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %call, i8* noundef nonnull align 8 dereferenceable(96) %mol96, i64 96, i1 false), !dbg !1981, !tbaa !824
  call void @llvm.dbg.value(metadata i32 undef, metadata !1937, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1942
  call void @llvm.dbg.value(metadata i32 undef, metadata !1936, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1942
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1988
  %7 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !1988, !tbaa !1989
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !1938, metadata !DIExpression()), !dbg !1942
  %cmp28.not = icmp eq %struct.strand_t* %7, null, !dbg !1990
  br i1 %cmp28.not, label %while.end, label %if.end32, !dbg !1992

if.end32:                                         ; preds = %if.end13
  %call30 = tail call %struct.strand_t* @copystrand(%struct.strand_t* noundef nonnull %7), !dbg !1993
  call void @llvm.dbg.value(metadata %struct.strand_t* %call30, metadata !1939, metadata !DIExpression()), !dbg !1942
  %s_molecule = getelementptr inbounds %struct.strand_t, %struct.strand_t* %call30, i64 0, i32 3, !dbg !1995
  %8 = bitcast %struct.molecule_t** %s_molecule to i8**, !dbg !1996
  store i8* %call, i8** %8, align 8, !dbg !1996, !tbaa !1997
  %m_strands31 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1998
  store %struct.strand_t* %call30, %struct.strand_t** %m_strands31, align 8, !dbg !1999, !tbaa !1989
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i64 0, i32 4, !dbg !2000
  %9 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !2000, !tbaa !2001
  call void @llvm.dbg.value(metadata %struct.strand_t* %9, metadata !1938, metadata !DIExpression()), !dbg !1942
  %cmp33.not90 = icmp eq %struct.strand_t* %9, null, !dbg !2002
  br i1 %cmp33.not90, label %while.end, label %if.end37, !dbg !2003

if.end37:                                         ; preds = %if.end32, %if.end37
  %newstr.192 = phi %struct.strand_t* [ %call34, %if.end37 ], [ %call30, %if.end32 ]
  %strptr.191 = phi %struct.strand_t* [ %11, %if.end37 ], [ %9, %if.end32 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %newstr.192, metadata !1939, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata %struct.strand_t* %strptr.191, metadata !1938, metadata !DIExpression()), !dbg !1942
  %call34 = tail call %struct.strand_t* @copystrand(%struct.strand_t* noundef nonnull %strptr.191), !dbg !2004
  call void @llvm.dbg.value(metadata %struct.strand_t* %call34, metadata !1940, metadata !DIExpression()), !dbg !1942
  %s_next36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %newstr.192, i64 0, i32 4, !dbg !2006
  store %struct.strand_t* %call34, %struct.strand_t** %s_next36, align 8, !dbg !2008, !tbaa !2001
  %s_molecule38 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %call34, i64 0, i32 3, !dbg !2009
  %10 = bitcast %struct.molecule_t** %s_molecule38 to i8**, !dbg !2010
  store i8* %call, i8** %10, align 8, !dbg !2010, !tbaa !1997
  call void @llvm.dbg.value(metadata %struct.strand_t* %call34, metadata !1939, metadata !DIExpression()), !dbg !1942
  %s_next39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %strptr.191, i64 0, i32 4, !dbg !2011
  %11 = load %struct.strand_t*, %struct.strand_t** %s_next39, align 8, !dbg !2011, !tbaa !2001
  call void @llvm.dbg.value(metadata %struct.strand_t* %11, metadata !1938, metadata !DIExpression()), !dbg !1942
  %cmp33.not = icmp eq %struct.strand_t* %11, null, !dbg !2002
  br i1 %cmp33.not, label %while.end, label %if.end37, !dbg !2003, !llvm.loop !2012

while.end:                                        ; preds = %if.end37, %if.end13, %if.end32
  tail call void @upd_molnumbers(%struct.molecule_t* noundef nonnull %0) #14, !dbg !2014
  br label %cleanup, !dbg !2015

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi %struct.molecule_t* [ null, %if.then ], [ %0, %while.end ], !dbg !1942
  ret %struct.molecule_t* %retval.0, !dbg !2016
}

declare !dbg !2017 dso_local void @upd_molnumbers(%struct.molecule_t* noundef) local_unnamed_addr #7

declare !dbg !2020 dso_local %struct.parm* @copyparm(%struct.parm* noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !2023 dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !2027 dso_local noundef i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @__isoc99_sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !2032 dso_local void @NAB_initatom(%struct.atom_t* noundef, i32 noundef) local_unnamed_addr #7

declare dso_local %struct.DATABASEt* @dbDBRndOpen(...) local_unnamed_addr #7

declare dso_local signext i8 @bDBGetValue(...) local_unnamed_addr #7

declare dso_local void @DBZeroPrefix(...) local_unnamed_addr #7

declare dso_local void @DBPushPrefix(...) local_unnamed_addr #7

declare dso_local signext i8 @bDBGetTable(...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @addres2reslib(%struct.reslib_t* nocapture noundef %rlp) unnamed_addr #0 !dbg !2035 {
entry:
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp, metadata !2039, metadata !DIExpression()), !dbg !2046
  %call = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 noundef 128) #14, !dbg !2047
  %0 = bitcast i8* %call to %struct.residue_t*, !dbg !2049
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2040, metadata !DIExpression()), !dbg !2046
  %cmp = icmp eq i8* %call, null, !dbg !2050
  br i1 %cmp, label %cleanup.sink.split, label %if.end, !dbg !2051

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @n_atoms, align 4, !dbg !2052, !tbaa !795
  %conv = sext i32 %1 to i64, !dbg !2052
  %mul = mul nsw i64 %conv, 176, !dbg !2054
  %call3 = tail call noalias i8* @malloc(i64 noundef %mul) #14, !dbg !2055
  call void @llvm.dbg.value(metadata i8* %call3, metadata !2041, metadata !DIExpression()), !dbg !2046
  %cmp4 = icmp eq i8* %call3, null, !dbg !2056
  br i1 %cmp4, label %cleanup.sink.split, label %if.end10, !dbg !2057

if.end10:                                         ; preds = %if.end
  %rl_rlist = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 4, !dbg !2058
  %2 = load %struct.residue_t*, %struct.residue_t** %rl_rlist, align 8, !dbg !2058, !tbaa !2059
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 0, !dbg !2060
  store %struct.residue_t* %2, %struct.residue_t** %r_next, align 8, !dbg !2061, !tbaa !1604
  %3 = bitcast %struct.residue_t** %rl_rlist to i8**, !dbg !2062
  store i8* %call, i8** %3, align 8, !dbg !2062, !tbaa !2059
  %call12 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #15, !dbg !2063
  %add = add i64 %call12, 1, !dbg !2064
  %call13 = tail call noalias i8* @malloc(i64 noundef %add) #14, !dbg !2065
  call void @llvm.dbg.value(metadata i8* %call13, metadata !2043, metadata !DIExpression()), !dbg !2046
  %cmp14 = icmp eq i8* %call13, null, !dbg !2066
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !2068

if.then16:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2069, !tbaa !296
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %4) #16, !dbg !2071
  tail call void @exit(i32 noundef 1) #17, !dbg !2072
  unreachable, !dbg !2072

if.end18:                                         ; preds = %if.end10
  %call19 = tail call i8* @strcpy(i8* noundef nonnull %call13, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #14, !dbg !2073
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !2074
  store i8* %call13, i8** %r_resname, align 8, !dbg !2075, !tbaa !1218
  %call20 = tail call noalias dereferenceable_or_null(1) i8* @malloc(i64 noundef 1) #14, !dbg !2076
  call void @llvm.dbg.value(metadata i8* %call20, metadata !2043, metadata !DIExpression()), !dbg !2046
  %cmp21 = icmp eq i8* %call20, null, !dbg !2077
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !2079

if.then23:                                        ; preds = %if.end18
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2080, !tbaa !296
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %6) #16, !dbg !2082
  tail call void @exit(i32 noundef 1) #17, !dbg !2083
  unreachable, !dbg !2083

if.end25:                                         ; preds = %if.end18
  store i8 0, i8* %call20, align 1, !dbg !2084
  %r_resid = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !2085
  store i8* %call20, i8** %r_resid, align 8, !dbg !2086, !tbaa !1620
  %r_num = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 1, !dbg !2087
  store i32 0, i32* %r_num, align 8, !dbg !2088, !tbaa !1635
  %r_tresnum = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 2, !dbg !2089
  store i32 0, i32* %r_tresnum, align 4, !dbg !2090, !tbaa !1640
  %r_resnum = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 3, !dbg !2091
  store i32 0, i32* %r_resnum, align 8, !dbg !2092, !tbaa !1643
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 6, !dbg !2093
  store i32 0, i32* %r_attr, align 8, !dbg !2094, !tbaa !1645
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 2, !dbg !2095
  %8 = load i32, i32* %rl_r_kind, align 8, !dbg !2095, !tbaa !328
  %r_kind = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 7, !dbg !2096
  store i32 %8, i32* %r_kind, align 4, !dbg !2097, !tbaa !1704
  %rl_r_atomkind = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 3, !dbg !2098
  %9 = load i32, i32* %rl_r_atomkind, align 4, !dbg !2098, !tbaa !570
  %r_atomkind = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !2099
  store i32 %9, i32* %r_atomkind, align 8, !dbg !2100, !tbaa !1708
  %r_strand = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 9, !dbg !2101
  %r_intbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !2102
  store [2 x i32]* null, [2 x i32]** %r_intbonds, align 8, !dbg !2103, !tbaa !1660
  %r_nchiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !2104
  store i32 0, i32* %r_nchiral, align 8, !dbg !2105, !tbaa !1585
  %r_chiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !2106
  store %struct.chiral_t* null, %struct.chiral_t** %r_chiral, align 8, !dbg !2107, !tbaa !1680
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !2108
  %10 = bitcast %struct.strand_t** %r_strand to i8*, !dbg !2109
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) %10, i8 0, i64 20, i1 false), !dbg !2110
  store i32 %1, i32* %r_natoms, align 8, !dbg !2109, !tbaa !1245
  %r_aindex = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !2111
  store i32* null, i32** %r_aindex, align 8, !dbg !2112, !tbaa !1716
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2113
  %11 = bitcast %struct.atom_t** %r_atoms to i8**, !dbg !2114
  store i8* %call3, i8** %11, align 8, !dbg !2114, !tbaa !1253
  call void @llvm.dbg.value(metadata i32 0, metadata !2044, metadata !DIExpression()), !dbg !2046
  %cmp27232 = icmp sgt i32 %1, 0, !dbg !2115
  %12 = bitcast i8* %call3 to %struct.atom_t*, !dbg !2118
  br i1 %cmp27232, label %for.body, label %cleanup, !dbg !2118

for.body:                                         ; preds = %if.end25, %for.end127
  %indvar = phi i64 [ %indvar.next, %for.end127 ], [ 0, %if.end25 ]
  call void @llvm.dbg.value(metadata i64 %indvar, metadata !2044, metadata !DIExpression()), !dbg !2046
  %a_atomname = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 0, !dbg !2119
  %13 = load i8*, i8** %a_atomname, align 16, !dbg !2119, !tbaa !692
  %call29 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %13) #15, !dbg !2121
  %add30 = add i64 %call29, 1, !dbg !2122
  %call31 = tail call noalias i8* @malloc(i64 noundef %add30) #14, !dbg !2123
  call void @llvm.dbg.value(metadata i8* %call31, metadata !2042, metadata !DIExpression()), !dbg !2046
  %cmp32 = icmp eq i8* %call31, null, !dbg !2124
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !2126

if.then34:                                        ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2127, !tbaa !296
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %14) #16, !dbg !2129
  tail call void @exit(i32 noundef 1) #17, !dbg !2130
  unreachable, !dbg !2130

if.end36:                                         ; preds = %for.body
  %call40 = tail call i8* @strcpy(i8* noundef nonnull %call31, i8* noundef nonnull dereferenceable(1) %13) #14, !dbg !2131
  %a_atomname44 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 0, !dbg !2132
  store i8* %call31, i8** %a_atomname44, align 8, !dbg !2133, !tbaa !692
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 2, !dbg !2134
  store i32 0, i32* %a_attr, align 8, !dbg !2135, !tbaa !1768
  %a_nconnect = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 3, !dbg !2136
  store i32 0, i32* %a_nconnect, align 4, !dbg !2137, !tbaa !1772
  call void @llvm.dbg.value(metadata i32 0, metadata !2045, metadata !DIExpression()), !dbg !2046
  %scevgep = getelementptr %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 4, i64 0, !dbg !2138
  %scevgep234 = bitcast i32* %scevgep to i8*, !dbg !2138
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(32) %scevgep234, i8 -1, i64 32, i1 false), !dbg !2140, !tbaa !795
  call void @llvm.dbg.value(metadata i32 undef, metadata !2045, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i32 undef, metadata !2045, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2046
  %a_residue = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 5, !dbg !2142
  %16 = bitcast %struct.residue_t** %a_residue to i8**, !dbg !2143
  store i8* %call, i8** %16, align 8, !dbg !2143, !tbaa !1787
  %a_charge = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 6, !dbg !2144
  %17 = load double, double* %a_charge, align 16, !dbg !2144, !tbaa !827
  %a_charge68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 6, !dbg !2145
  store double %17, double* %a_charge68, align 8, !dbg !2146, !tbaa !827
  %a_radius = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 7, !dbg !2147
  %18 = load double, double* %a_radius, align 8, !dbg !2147, !tbaa !1134
  %a_radius74 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 7, !dbg !2148
  store double %18, double* %a_radius74, align 8, !dbg !2149, !tbaa !1134
  %a_bfact = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 8, !dbg !2150
  %19 = load double, double* %a_bfact, align 16, !dbg !2150, !tbaa !1795
  %a_bfact80 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 8, !dbg !2151
  store double %19, double* %a_bfact80, align 8, !dbg !2152, !tbaa !1795
  %a_occ = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 9, !dbg !2153
  %20 = load double, double* %a_occ, align 8, !dbg !2153, !tbaa !1799
  %a_occ86 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 9, !dbg !2154
  store double %20, double* %a_occ86, align 8, !dbg !2155, !tbaa !1799
  %a_int1 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 11, !dbg !2156
  %21 = load i32, i32* %a_int1, align 8, !dbg !2156, !tbaa !1806
  %a_int192 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 11, !dbg !2157
  store i32 %21, i32* %a_int192, align 8, !dbg !2158, !tbaa !1806
  %a_float1 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 12, !dbg !2159
  %22 = load double, double* %a_float1, align 16, !dbg !2159, !tbaa !1810
  %a_float198 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 12, !dbg !2160
  store double %22, double* %a_float198, align 8, !dbg !2161, !tbaa !1810
  %a_float2 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 13, !dbg !2162
  %23 = load double, double* %a_float2, align 8, !dbg !2162, !tbaa !1814
  %a_float2104 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 13, !dbg !2163
  store double %23, double* %a_float2104, align 8, !dbg !2164, !tbaa !1814
  %a_atomnum = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 15, !dbg !2165
  store i32 0, i32* %a_atomnum, align 4, !dbg !2166, !tbaa !1822
  %a_fullname = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 16, !dbg !2167
  store i8* null, i8** %a_fullname, align 8, !dbg !2168, !tbaa !1827
  call void @llvm.dbg.value(metadata i32 0, metadata !2045, metadata !DIExpression()), !dbg !2046
  br label %for.body114, !dbg !2169

for.body114:                                      ; preds = %if.end36, %for.body114
  %indvars.iv = phi i64 [ 0, %if.end36 ], [ %indvars.iv.next, %for.body114 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2045, metadata !DIExpression()), !dbg !2046
  %arrayidx118 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 17, i64 %indvars.iv, !dbg !2171
  %24 = load double, double* %arrayidx118, align 8, !dbg !2171, !tbaa !824
  %arrayidx124 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 17, i64 %indvars.iv, !dbg !2173
  store double %24, double* %arrayidx124, align 8, !dbg !2174, !tbaa !824
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2045, metadata !DIExpression()), !dbg !2046
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !2176
  br i1 %exitcond.not, label %for.end127, label %for.body114, !dbg !2169, !llvm.loop !2177

for.end127:                                       ; preds = %for.body114
  %a_w = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 18, !dbg !2179
  %25 = load double, double* %a_w, align 8, !dbg !2179, !tbaa !1838
  %a_w133 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 18, !dbg !2180
  store double %25, double* %a_w133, align 8, !dbg !2181, !tbaa !1838
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %indvar.next, metadata !2044, metadata !DIExpression()), !dbg !2046
  %cmp27 = icmp slt i64 %indvar.next, %conv, !dbg !2115
  br i1 %cmp27, label %for.body, label %cleanup, !dbg !2118, !llvm.loop !2183

cleanup.sink.split:                               ; preds = %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), %entry ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), %if.end ]
  %rl_name7 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 1, !dbg !2046
  %26 = load i8*, i8** %rl_name7, align 8, !dbg !2046, !tbaa !305
  %call8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %.sink, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef %26) #14, !dbg !2046
  %call9 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2046
  br label %cleanup, !dbg !2185

cleanup:                                          ; preds = %for.end127, %cleanup.sink.split, %if.end25
  ret void, !dbg !2185
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addbonds2reslib(%struct.reslib_t* nocapture noundef readonly %rlp) unnamed_addr #0 !dbg !2186 {
entry:
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp, metadata !2188, metadata !DIExpression()), !dbg !2197
  %rl_rlist = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 4, !dbg !2198
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2189, metadata !DIExpression()), !dbg !2197
  %res.0137 = load %struct.residue_t*, %struct.residue_t** %rl_rlist, align 8, !dbg !2200, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0137, metadata !2189, metadata !DIExpression()), !dbg !2197
  %tobool.not138 = icmp eq %struct.residue_t* %res.0137, null, !dbg !2201
  br i1 %tobool.not138, label %for.end80, label %for.body, !dbg !2201

for.body:                                         ; preds = %entry, %for.inc79
  %res.0139 = phi %struct.residue_t* [ %res.0, %for.inc79 ], [ %res.0137, %entry ]
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0139, i64 0, i32 4, !dbg !2202
  %0 = load i8*, i8** %r_resname, align 8, !dbg !2202, !tbaa !1218
  %call = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #15, !dbg !2206
  %cmp = icmp eq i32 %call, 0, !dbg !2207
  br i1 %cmp, label %if.then, label %for.inc79, !dbg !2208

if.then:                                          ; preds = %for.body
  %1 = load i32, i32* @n_bonds, align 4, !dbg !2209, !tbaa !795
  %conv = sext i32 %1 to i64, !dbg !2209
  %mul = shl nsw i64 %conv, 3, !dbg !2212
  %call1 = tail call noalias i8* @malloc(i64 noundef %mul) #14, !dbg !2213
  %2 = bitcast i8* %call1 to [2 x i32]*, !dbg !2214
  call void @llvm.dbg.value(metadata [2 x i32]* %2, metadata !2190, metadata !DIExpression()), !dbg !2197
  %cmp2 = icmp eq i8* %call1, null, !dbg !2215
  br i1 %cmp2, label %if.then4, label %for.cond7.preheader, !dbg !2216

for.cond7.preheader:                              ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !2191, metadata !DIExpression()), !dbg !2197
  %cmp8142 = icmp sgt i32 %1, 0, !dbg !2217
  br i1 %cmp8142, label %for.body10.lr.ph, label %for.end77, !dbg !2220

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0139, i64 0, i32 17
  %3 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !tbaa !1253
  br label %for.body10, !dbg !2220

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #14, !dbg !2221
  %call6 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2223
  br label %cleanup, !dbg !2224

for.body10:                                       ; preds = %for.body10.lr.ph, %for.inc75
  %indvars.iv153 = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next154, %for.inc75 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv153, metadata !2191, metadata !DIExpression()), !dbg !2197
  %arrayidx11 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv153, i64 0, !dbg !2225
  %4 = load i32, i32* %arrayidx11, align 8, !dbg !2225, !tbaa !795
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 %indvars.iv153, i64 0, !dbg !2227
  store i32 %4, i32* %arrayidx14, align 4, !dbg !2228, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %4, metadata !2193, metadata !DIExpression()), !dbg !2197
  %arrayidx17 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv153, i64 1, !dbg !2229
  %5 = load i32, i32* %arrayidx17, align 4, !dbg !2229, !tbaa !795
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 %indvars.iv153, i64 1, !dbg !2230
  store i32 %5, i32* %arrayidx20, align 4, !dbg !2231, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %5, metadata !2194, metadata !DIExpression()), !dbg !2197
  %dec = add nsw i32 %4, -1, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2193, metadata !DIExpression()), !dbg !2197
  %dec21 = add nsw i32 %5, -1, !dbg !2233
  call void @llvm.dbg.value(metadata i32 %dec21, metadata !2194, metadata !DIExpression()), !dbg !2197
  %idxprom22 = sext i32 %dec to i64, !dbg !2234
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %3, i64 %idxprom22), metadata !2195, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2197
  call void @llvm.dbg.value(metadata i32 0, metadata !2192, metadata !DIExpression()), !dbg !2197
  br label %for.body27, !dbg !2235

for.cond24:                                       ; preds = %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2192, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i32 undef, metadata !2192, metadata !DIExpression()), !dbg !2197
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !2239
  br i1 %exitcond.not, label %for.end, label %for.body27, !dbg !2235, !llvm.loop !2240

for.body27:                                       ; preds = %for.body10, %for.cond24
  %indvars.iv = phi i64 [ 0, %for.body10 ], [ %indvars.iv.next, %for.cond24 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2192, metadata !DIExpression()), !dbg !2197
  %arrayidx29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 4, i64 %indvars.iv, !dbg !2242
  %6 = load i32, i32* %arrayidx29, align 4, !dbg !2242, !tbaa !795
  %cmp30 = icmp eq i32 %6, %dec21, !dbg !2245
  br i1 %cmp30, label %for.end, label %if.else, !dbg !2246

if.else:                                          ; preds = %for.body27
  %cmp36 = icmp eq i32 %6, -1, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2192, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2197
  br i1 %cmp36, label %if.then38, label %for.cond24, !dbg !2249

if.then38:                                        ; preds = %if.else
  store i32 %dec21, i32* %arrayidx29, align 4, !dbg !2250, !tbaa !795
  %a_nconnect = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 3, !dbg !2252
  %7 = load i32, i32* %a_nconnect, align 4, !dbg !2253, !tbaa !1772
  %inc = add nsw i32 %7, 1, !dbg !2253
  store i32 %inc, i32* %a_nconnect, align 4, !dbg !2253, !tbaa !1772
  br label %for.end, !dbg !2254

for.end:                                          ; preds = %for.body27, %for.cond24, %if.then38
  %idxprom46 = sext i32 %dec21 to i64, !dbg !2255
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %3, i64 %idxprom46), metadata !2196, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2197
  call void @llvm.dbg.value(metadata i32 0, metadata !2192, metadata !DIExpression()), !dbg !2197
  br label %for.body51, !dbg !2256

for.cond48:                                       ; preds = %if.else58
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1, !dbg !2258
  call void @llvm.dbg.value(metadata i32 undef, metadata !2192, metadata !DIExpression()), !dbg !2197
  %exitcond152.not = icmp eq i64 %indvars.iv.next150, 8, !dbg !2260
  br i1 %exitcond152.not, label %for.inc75, label %for.body51, !dbg !2256, !llvm.loop !2261

for.body51:                                       ; preds = %for.end, %for.cond48
  %indvars.iv149 = phi i64 [ 0, %for.end ], [ %indvars.iv.next150, %for.cond48 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv149, metadata !2192, metadata !DIExpression()), !dbg !2197
  %arrayidx54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 4, i64 %indvars.iv149, !dbg !2263
  %8 = load i32, i32* %arrayidx54, align 4, !dbg !2263, !tbaa !795
  %cmp55 = icmp eq i32 %8, %dec, !dbg !2266
  br i1 %cmp55, label %for.inc75, label %if.else58, !dbg !2267

if.else58:                                        ; preds = %for.body51
  %cmp62 = icmp eq i32 %8, -1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %indvars.iv149, metadata !2192, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2197
  br i1 %cmp62, label %if.then64, label %for.cond48, !dbg !2270

if.then64:                                        ; preds = %if.else58
  store i32 %dec, i32* %arrayidx54, align 4, !dbg !2271, !tbaa !795
  %a_nconnect68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 3, !dbg !2273
  %9 = load i32, i32* %a_nconnect68, align 4, !dbg !2274, !tbaa !1772
  %inc69 = add nsw i32 %9, 1, !dbg !2274
  store i32 %inc69, i32* %a_nconnect68, align 4, !dbg !2274, !tbaa !1772
  br label %for.inc75, !dbg !2275

for.inc75:                                        ; preds = %for.cond48, %for.body51, %if.then64
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next154, metadata !2191, metadata !DIExpression()), !dbg !2197
  %10 = load i32, i32* @n_bonds, align 4, !dbg !2277, !tbaa !795
  %11 = sext i32 %10 to i64, !dbg !2217
  %cmp8 = icmp slt i64 %indvars.iv.next154, %11, !dbg !2217
  br i1 %cmp8, label %for.body10, label %for.end77, !dbg !2220, !llvm.loop !2278

for.end77:                                        ; preds = %for.inc75, %for.cond7.preheader
  %.lcssa = phi i32 [ %1, %for.cond7.preheader ], [ %10, %for.inc75 ], !dbg !2277
  %r_nintbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0139, i64 0, i32 11, !dbg !2280
  store i32 %.lcssa, i32* %r_nintbonds, align 8, !dbg !2281, !tbaa !1566
  %r_intbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0139, i64 0, i32 12, !dbg !2282
  %12 = bitcast [2 x i32]** %r_intbonds to i8**, !dbg !2283
  store i8* %call1, i8** %12, align 8, !dbg !2283, !tbaa !1660
  br label %cleanup, !dbg !2284

for.inc79:                                        ; preds = %for.body
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0139, i64 0, i32 0, !dbg !2285
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2189, metadata !DIExpression()), !dbg !2197
  %res.0 = load %struct.residue_t*, %struct.residue_t** %r_next, align 8, !dbg !2200, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0, metadata !2189, metadata !DIExpression()), !dbg !2197
  %tobool.not = icmp eq %struct.residue_t* %res.0, null, !dbg !2201
  br i1 %tobool.not, label %for.end80, label %for.body, !dbg !2201, !llvm.loop !2286

for.end80:                                        ; preds = %for.inc79, %entry
  %rl_name = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 1, !dbg !2288
  %13 = load i8*, i8** %rl_name, align 8, !dbg !2288, !tbaa !305
  %call81 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef %13) #14, !dbg !2289
  %call82 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2290
  br label %cleanup, !dbg !2291

cleanup:                                          ; preds = %for.end80, %for.end77, %if.then4
  ret void, !dbg !2292
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addqr2reslib(%struct.reslib_t* nocapture noundef readonly %rlp) unnamed_addr #0 !dbg !2293 {
entry:
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp, metadata !2295, metadata !DIExpression()), !dbg !2300
  %rl_rlist = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 4, !dbg !2301
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2296, metadata !DIExpression()), !dbg !2300
  %res.049 = load %struct.residue_t*, %struct.residue_t** %rl_rlist, align 8, !dbg !2303, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.049, metadata !2296, metadata !DIExpression()), !dbg !2300
  %tobool.not50 = icmp eq %struct.residue_t* %res.049, null, !dbg !2304
  br i1 %tobool.not50, label %for.end16, label %for.body, !dbg !2304

for.body:                                         ; preds = %entry, %for.inc15
  %res.051 = phi %struct.residue_t* [ %res.0, %for.inc15 ], [ %res.049, %entry ]
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.051, i64 0, i32 4, !dbg !2305
  %0 = load i8*, i8** %r_resname, align 8, !dbg !2305, !tbaa !1218
  %call = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #15, !dbg !2309
  %cmp = icmp eq i32 %call, 0, !dbg !2310
  br i1 %cmp, label %for.cond1.preheader, label %for.inc15, !dbg !2311

for.cond1.preheader:                              ; preds = %for.body
  %r_atoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.051, i64 0, i32 17
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !2298, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 0, metadata !2297, metadata !DIExpression()), !dbg !2300
  %1 = load i32, i32* @n_atoms, align 4, !dbg !2312, !tbaa !795
  %cmp252 = icmp sgt i32 %1, 0, !dbg !2316
  br i1 %cmp252, label %for.body3.lr.ph, label %cleanup, !dbg !2317

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %r_natoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.051, i64 0, i32 15
  %2 = load i32, i32* %r_natoms.i, align 8, !tbaa !1245
  %cmp10.i = icmp sgt i32 %2, 0
  %wide.trip.count.i = zext i32 %2 to i64
  br i1 %cmp10.i, label %for.body3.lr.ph.split.us, label %cleanup, !dbg !2318

for.body3.lr.ph.split.us:                         ; preds = %for.body3.lr.ph
  %3 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i, align 8, !tbaa !1253
  br label %for.body3.us, !dbg !2317

for.body3.us:                                     ; preds = %for.inc.us, %for.body3.lr.ph.split.us
  %4 = phi i32 [ %1, %for.body3.lr.ph.split.us ], [ %14, %for.inc.us ]
  %ap.054.us = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %for.body3.lr.ph.split.us ], [ %incdec.ptr.us, %for.inc.us ]
  %a.053.us = phi i32 [ 0, %for.body3.lr.ph.split.us ], [ %inc.us, %for.inc.us ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap.054.us, metadata !2298, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 %a.053.us, metadata !2297, metadata !DIExpression()), !dbg !2300
  %a_atomname.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 0, !dbg !2322
  %5 = load i8*, i8** %a_atomname.us, align 8, !dbg !2322, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.051, metadata !1235, metadata !DIExpression()) #14, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %5, metadata !1240, metadata !DIExpression()) #14, !dbg !2323
  call void @llvm.dbg.value(metadata i32 0, metadata !1241, metadata !DIExpression()) #14, !dbg !2323
  call void @llvm.dbg.value(metadata i32 0, metadata !1241, metadata !DIExpression()) #14, !dbg !2323
  br label %for.body.i.us, !dbg !2318

for.body.i.us:                                    ; preds = %for.cond.i.us, %for.body3.us
  %indvars.iv.i.us = phi i64 [ 0, %for.body3.us ], [ %indvars.iv.next.i.us, %for.cond.i.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.us, metadata !1241, metadata !DIExpression()) #14, !dbg !2323
  %a_atomname.i.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 0, !dbg !2324
  %6 = load i8*, i8** %a_atomname.i.us, align 8, !dbg !2324, !tbaa !692
  %call.i.us = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %5) #15, !dbg !2325
  %tobool.not.i.us = icmp eq i32 %call.i.us, 0, !dbg !2325
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.us, metadata !1241, metadata !DIExpression()) #14, !dbg !2323
  br i1 %tobool.not.i.us, label %if.then6.us, label %for.cond.i.us, !dbg !2327

for.cond.i.us:                                    ; preds = %for.body.i.us
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.us, metadata !1241, metadata !DIExpression()) #14, !dbg !2323
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i, !dbg !2328
  br i1 %exitcond.not.i.us, label %for.inc.us, label %for.body.i.us, !dbg !2318, !llvm.loop !2329

if.then6.us:                                      ; preds = %for.body.i.us
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %3, i64 %indvars.iv.i.us), metadata !2299, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2300
  %a_charge.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 6, !dbg !2331
  %7 = load double, double* %a_charge.us, align 8, !dbg !2331, !tbaa !827
  %a_charge7.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 6, !dbg !2333
  store double %7, double* %a_charge7.us, align 8, !dbg !2334, !tbaa !827
  %a_radius.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 7, !dbg !2335
  %8 = load double, double* %a_radius.us, align 8, !dbg !2335, !tbaa !1134
  %a_radius8.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 7, !dbg !2336
  store double %8, double* %a_radius8.us, align 8, !dbg !2337, !tbaa !1134
  %a_bfact.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 8, !dbg !2338
  %9 = load double, double* %a_bfact.us, align 8, !dbg !2338, !tbaa !1795
  %a_bfact9.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 8, !dbg !2339
  store double %9, double* %a_bfact9.us, align 8, !dbg !2340, !tbaa !1795
  %a_occ.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 9, !dbg !2341
  %10 = load double, double* %a_occ.us, align 8, !dbg !2341, !tbaa !1799
  %a_occ10.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 9, !dbg !2342
  store double %10, double* %a_occ10.us, align 8, !dbg !2343, !tbaa !1799
  %a_int1.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 11, !dbg !2344
  %11 = load i32, i32* %a_int1.us, align 8, !dbg !2344, !tbaa !1806
  %a_int111.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 11, !dbg !2345
  store i32 %11, i32* %a_int111.us, align 8, !dbg !2346, !tbaa !1806
  %a_float1.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 12, !dbg !2347
  %12 = load double, double* %a_float1.us, align 8, !dbg !2347, !tbaa !1810
  %a_float112.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 12, !dbg !2348
  store double %12, double* %a_float112.us, align 8, !dbg !2349, !tbaa !1810
  %a_float2.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 13, !dbg !2350
  %13 = load double, double* %a_float2.us, align 8, !dbg !2350, !tbaa !1814
  %a_float213.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 13, !dbg !2351
  store double %13, double* %a_float213.us, align 8, !dbg !2352, !tbaa !1814
  %.pre = load i32, i32* @n_atoms, align 4, !dbg !2312, !tbaa !795
  br label %for.inc.us, !dbg !2353

for.inc.us:                                       ; preds = %for.cond.i.us, %if.then6.us
  %14 = phi i32 [ %.pre, %if.then6.us ], [ %4, %for.cond.i.us ], !dbg !2312
  %inc.us = add nuw nsw i32 %a.053.us, 1, !dbg !2354
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !2297, metadata !DIExpression()), !dbg !2300
  %incdec.ptr.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 1, !dbg !2355
  call void @llvm.dbg.value(metadata %struct.atom_t* %incdec.ptr.us, metadata !2298, metadata !DIExpression()), !dbg !2300
  %cmp2.us = icmp slt i32 %inc.us, %14, !dbg !2316
  br i1 %cmp2.us, label %for.body3.us, label %cleanup, !dbg !2317, !llvm.loop !2356

for.inc15:                                        ; preds = %for.body
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.051, i64 0, i32 0, !dbg !2358
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2296, metadata !DIExpression()), !dbg !2300
  %res.0 = load %struct.residue_t*, %struct.residue_t** %r_next, align 8, !dbg !2303, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0, metadata !2296, metadata !DIExpression()), !dbg !2300
  %tobool.not = icmp eq %struct.residue_t* %res.0, null, !dbg !2304
  br i1 %tobool.not, label %for.end16, label %for.body, !dbg !2304, !llvm.loop !2359

for.end16:                                        ; preds = %for.inc15, %entry
  %rl_name = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 1, !dbg !2361
  %15 = load i8*, i8** %rl_name, align 8, !dbg !2361, !tbaa !305
  %call17 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef %15) #14, !dbg !2362
  %call18 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2363
  br label %cleanup, !dbg !2364

cleanup:                                          ; preds = %for.inc.us, %for.body3.lr.ph, %for.cond1.preheader, %for.end16
  ret void, !dbg !2365
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addchi2reslib(%struct.reslib_t* nocapture noundef readonly %rlp) unnamed_addr #0 !dbg !2366 {
entry:
  %pos = alloca [4 x [3 x double]], align 16
  %dvol = alloca [4 x [3 x double]], align 16
  %vol = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp, metadata !2368, metadata !DIExpression()), !dbg !2378
  %0 = bitcast [4 x [3 x double]]* %pos to i8*, !dbg !2379
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #14, !dbg !2379
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %pos, metadata !2374, metadata !DIExpression()), !dbg !2380
  %1 = bitcast [4 x [3 x double]]* %dvol to i8*, !dbg !2381
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #14, !dbg !2381
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %dvol, metadata !2376, metadata !DIExpression()), !dbg !2382
  %2 = bitcast double* %vol to i8*, !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14, !dbg !2383
  %rl_rlist = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 4, !dbg !2384
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2369, metadata !DIExpression()), !dbg !2378
  %res.087 = load %struct.residue_t*, %struct.residue_t** %rl_rlist, align 8, !dbg !2386, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.087, metadata !2369, metadata !DIExpression()), !dbg !2378
  %tobool.not88 = icmp eq %struct.residue_t* %res.087, null, !dbg !2387
  br i1 %tobool.not88, label %for.end48, label %for.body, !dbg !2387

for.body:                                         ; preds = %entry, %for.inc47
  %res.089 = phi %struct.residue_t* [ %res.0, %for.inc47 ], [ %res.087, %entry ]
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.089, i64 0, i32 4, !dbg !2388
  %3 = load i8*, i8** %r_resname, align 8, !dbg !2388, !tbaa !1218
  %call = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #15, !dbg !2392
  %tobool1.not = icmp eq i32 %call, 0, !dbg !2392
  br i1 %tobool1.not, label %if.then, label %for.inc47, !dbg !2393

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* @n_chi, align 4, !dbg !2394, !tbaa !795
  %conv = sext i32 %4 to i64, !dbg !2394
  %mul = mul nsw i64 %conv, 24, !dbg !2397
  %call2 = tail call noalias i8* @malloc(i64 noundef %mul) #14, !dbg !2398
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2370, metadata !DIExpression()), !dbg !2378
  %cmp = icmp eq i8* %call2, null, !dbg !2399
  br i1 %cmp, label %if.then4, label %if.end, !dbg !2400

if.then4:                                         ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2401, !tbaa !296
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* noundef %3) #16, !dbg !2403
  br label %cleanup, !dbg !2404

if.end:                                           ; preds = %if.then
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2370, metadata !DIExpression()), !dbg !2378
  %r_nchiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.089, i64 0, i32 13, !dbg !2405
  store i32 %4, i32* %r_nchiral, align 8, !dbg !2406, !tbaa !1585
  %r_chiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.089, i64 0, i32 14, !dbg !2407
  %6 = bitcast %struct.chiral_t** %r_chiral to i8**, !dbg !2408
  store i8* %call2, i8** %6, align 8, !dbg !2408, !tbaa !1680
  call void @llvm.dbg.value(metadata i32 0, metadata !2372, metadata !DIExpression()), !dbg !2378
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.089, i64 0, i32 17
  %7 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 0, i64 0
  %8 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %dvol, i64 0, i64 0, i64 0
  call void @llvm.dbg.value(metadata i32 0, metadata !2372, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2370, metadata !DIExpression()), !dbg !2378
  %cmp891 = icmp sgt i32 %4, 0, !dbg !2409
  br i1 %cmp891, label %for.cond11.preheader.preheader, label %cleanup, !dbg !2412

for.cond11.preheader.preheader:                   ; preds = %if.end
  %9 = bitcast i8* %call2 to %struct.chiral_t*, !dbg !2413
  call void @llvm.dbg.value(metadata %struct.chiral_t* %9, metadata !2370, metadata !DIExpression()), !dbg !2378
  br label %for.cond11.preheader, !dbg !2412

for.cond11.preheader:                             ; preds = %for.cond11.preheader.preheader, %for.end
  %indvars.iv97 = phi i64 [ 0, %for.cond11.preheader.preheader ], [ %indvars.iv.next98, %for.end ]
  %cp.092 = phi %struct.chiral_t* [ %9, %for.cond11.preheader.preheader ], [ %incdec.ptr, %for.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv97, metadata !2372, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata %struct.chiral_t* %cp.092, metadata !2370, metadata !DIExpression()), !dbg !2378
  %10 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !tbaa !1253
  call void @llvm.dbg.value(metadata i32 0, metadata !2371, metadata !DIExpression()), !dbg !2378
  br label %for.body14, !dbg !2414

for.body14:                                       ; preds = %for.cond11.preheader, %for.body14
  %indvars.iv = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next, %for.body14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2371, metadata !DIExpression()), !dbg !2378
  %arrayidx16 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %indvars.iv97, i32 0, i64 %indvars.iv, !dbg !2417
  %11 = load i32, i32* %arrayidx16, align 4, !dbg !2417, !tbaa !795
  %arrayidx19 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.092, i64 0, i32 0, i64 %indvars.iv, !dbg !2420
  store i32 %11, i32* %arrayidx19, align 4, !dbg !2421, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %11, metadata !2373, metadata !DIExpression()), !dbg !2378
  %idxprom20 = sext i32 %11 to i64, !dbg !2422
  %arrayidx22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20, i32 17, i64 0, !dbg !2422
  %12 = load double, double* %arrayidx22, align 8, !dbg !2422, !tbaa !824
  %arrayidx25 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 %indvars.iv, i64 0, !dbg !2423
  store double %12, double* %arrayidx25, align 8, !dbg !2424, !tbaa !824
  %arrayidx30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20, i32 17, i64 1, !dbg !2425
  %13 = load double, double* %arrayidx30, align 8, !dbg !2425, !tbaa !824
  %arrayidx33 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 %indvars.iv, i64 1, !dbg !2426
  store double %13, double* %arrayidx33, align 8, !dbg !2427, !tbaa !824
  %arrayidx38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20, i32 17, i64 2, !dbg !2428
  %14 = load double, double* %arrayidx38, align 8, !dbg !2428, !tbaa !824
  %arrayidx41 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 %indvars.iv, i64 2, !dbg !2429
  store double %14, double* %arrayidx41, align 8, !dbg !2430, !tbaa !824
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2371, metadata !DIExpression()), !dbg !2378
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2432
  br i1 %exitcond.not, label %for.end, label %for.body14, !dbg !2414, !llvm.loop !2433

for.end:                                          ; preds = %for.body14
  call void @llvm.dbg.value(metadata double* %vol, metadata !2377, metadata !DIExpression(DW_OP_deref)), !dbg !2378
  call void @chirvol(i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, double* noundef nonnull %7, double* noundef nonnull %8, double* noundef nonnull %vol) #14, !dbg !2435
  %15 = load double, double* %vol, align 8, !dbg !2436, !tbaa !824
  call void @llvm.dbg.value(metadata double %15, metadata !2377, metadata !DIExpression()), !dbg !2378
  %c_dist = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.092, i64 0, i32 1, !dbg !2437
  store double %15, double* %c_dist, align 8, !dbg !2438, !tbaa !1330
  %incdec.ptr = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.092, i64 1, !dbg !2439
  call void @llvm.dbg.value(metadata %struct.chiral_t* %incdec.ptr, metadata !2370, metadata !DIExpression()), !dbg !2378
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next98, metadata !2372, metadata !DIExpression()), !dbg !2378
  %16 = load i32, i32* @n_chi, align 4, !dbg !2441, !tbaa !795
  %17 = sext i32 %16 to i64, !dbg !2409
  %cmp8 = icmp slt i64 %indvars.iv.next98, %17, !dbg !2409
  br i1 %cmp8, label %for.cond11.preheader, label %cleanup, !dbg !2412, !llvm.loop !2442

for.inc47:                                        ; preds = %for.body
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.089, i64 0, i32 0, !dbg !2444
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2369, metadata !DIExpression()), !dbg !2378
  %res.0 = load %struct.residue_t*, %struct.residue_t** %r_next, align 8, !dbg !2386, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0, metadata !2369, metadata !DIExpression()), !dbg !2378
  %tobool.not = icmp eq %struct.residue_t* %res.0, null, !dbg !2387
  br i1 %tobool.not, label %for.end48, label %for.body, !dbg !2387, !llvm.loop !2445

for.end48:                                        ; preds = %for.inc47, %entry
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2447, !tbaa !296
  %19 = load i8*, i8** inttoptr (i64 24 to i8**), align 8, !dbg !2448, !tbaa !1218
  %rl_name = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 1, !dbg !2449
  %20 = load i8*, i8** %rl_name, align 8, !dbg !2449, !tbaa !305
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* noundef %19, i8* noundef %20) #16, !dbg !2450
  br label %cleanup, !dbg !2451

cleanup:                                          ; preds = %for.end, %if.end, %for.end48, %if.then4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14, !dbg !2451
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #14, !dbg !2451
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #14, !dbg !2451
  ret void, !dbg !2451
}

declare !dbg !2452 dso_local void @chirvol(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double* noundef, double* noundef, double* noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }
attributes #18 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!271, !272, !273, !274}
!llvm.ident = !{!275}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "e_msg", scope: !2, file: !225, line: 46, type: !267, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !234, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/reslib.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "7fe346e44e59392202140606056375ae")
!4 = !{!5, !6, !192, !219, !174, !181, !220, !46, !161, !221, !223, !97}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !8, line: 82, baseType: !9)
!8 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "e6947e1b068a9350a45ab4ee56d7a2de")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !8, line: 63, size: 1024, elements: !10)
!10 = !{!11, !13, !16, !17, !18, !22, !23, !24, !25, !26, !162, !172, !173, !179, !180, !189, !190, !191}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !9, file: !8, line: 64, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !9, file: !8, line: 65, baseType: !14, size: 32, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !8, line: 6, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !9, file: !8, line: 66, baseType: !14, size: 32, offset: 96)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !9, file: !8, line: 67, baseType: !14, size: 32, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !9, file: !8, line: 68, baseType: !19, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !8, line: 17, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !9, file: !8, line: 69, baseType: !19, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !9, file: !8, line: 70, baseType: !14, size: 32, offset: 320)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !9, file: !8, line: 71, baseType: !14, size: 32, offset: 352)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !9, file: !8, line: 72, baseType: !14, size: 32, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !9, file: !8, line: 73, baseType: !27, size: 64, offset: 448)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !8, line: 84, size: 384, elements: !29)
!29 = !{!30, !31, !32, !33, !157, !158, !159, !160}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !28, file: !8, line: 85, baseType: !19, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !28, file: !8, line: 86, baseType: !14, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !28, file: !8, line: 87, baseType: !14, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !28, file: !8, line: 88, baseType: !34, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !8, line: 118, size: 1088, elements: !36)
!36 = !{!37, !44, !45, !48, !49, !50, !51}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !35, file: !8, line: 119, baseType: !38, size: 768)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !8, line: 13, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 768, elements: !41)
!40 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!41 = !{!42, !43}
!42 = !DISubrange(count: 4)
!43 = !DISubrange(count: 3)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !35, file: !8, line: 120, baseType: !14, size: 32, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !35, file: !8, line: 121, baseType: !46, size: 64, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !8, line: 93, baseType: !28)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !35, file: !8, line: 122, baseType: !14, size: 32, offset: 896)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !35, file: !8, line: 123, baseType: !14, size: 32, offset: 928)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !35, file: !8, line: 124, baseType: !14, size: 32, offset: 960)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !35, file: !8, line: 125, baseType: !52, size: 64, offset: 1024)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !8, line: 115, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !8, line: 95, size: 5760, elements: !55)
!55 = !{!56, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !116, !117, !118, !119, !120, !121, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !54, file: !8, line: 96, baseType: !57, size: 648)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 648, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 81)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !54, file: !8, line: 97, baseType: !14, size: 32, offset: 672)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !54, file: !8, line: 97, baseType: !14, size: 32, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !54, file: !8, line: 97, baseType: !14, size: 32, offset: 736)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !54, file: !8, line: 98, baseType: !14, size: 32, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !54, file: !8, line: 98, baseType: !14, size: 32, offset: 800)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !54, file: !8, line: 98, baseType: !14, size: 32, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !54, file: !8, line: 98, baseType: !14, size: 32, offset: 864)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !54, file: !8, line: 98, baseType: !14, size: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !54, file: !8, line: 98, baseType: !14, size: 32, offset: 928)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !54, file: !8, line: 99, baseType: !14, size: 32, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !54, file: !8, line: 99, baseType: !14, size: 32, offset: 992)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !54, file: !8, line: 99, baseType: !14, size: 32, offset: 1024)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !54, file: !8, line: 99, baseType: !14, size: 32, offset: 1056)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !54, file: !8, line: 99, baseType: !14, size: 32, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !54, file: !8, line: 99, baseType: !14, size: 32, offset: 1120)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !54, file: !8, line: 100, baseType: !14, size: 32, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !54, file: !8, line: 100, baseType: !14, size: 32, offset: 1184)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !54, file: !8, line: 100, baseType: !14, size: 32, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !54, file: !8, line: 100, baseType: !14, size: 32, offset: 1248)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !54, file: !8, line: 100, baseType: !14, size: 32, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !54, file: !8, line: 100, baseType: !14, size: 32, offset: 1312)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !54, file: !8, line: 101, baseType: !14, size: 32, offset: 1344)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !54, file: !8, line: 101, baseType: !14, size: 32, offset: 1376)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !54, file: !8, line: 101, baseType: !14, size: 32, offset: 1408)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !54, file: !8, line: 101, baseType: !14, size: 32, offset: 1440)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !54, file: !8, line: 101, baseType: !14, size: 32, offset: 1472)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !54, file: !8, line: 101, baseType: !14, size: 32, offset: 1504)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !54, file: !8, line: 101, baseType: !14, size: 32, offset: 1536)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !54, file: !8, line: 101, baseType: !14, size: 32, offset: 1568)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !54, file: !8, line: 102, baseType: !14, size: 32, offset: 1600)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !54, file: !8, line: 102, baseType: !14, size: 32, offset: 1632)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !54, file: !8, line: 102, baseType: !14, size: 32, offset: 1664)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !54, file: !8, line: 103, baseType: !19, size: 64, offset: 1728)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !54, file: !8, line: 103, baseType: !19, size: 64, offset: 1792)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !54, file: !8, line: 103, baseType: !19, size: 64, offset: 1856)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !54, file: !8, line: 103, baseType: !19, size: 64, offset: 1920)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !54, file: !8, line: 104, baseType: !97, size: 64, offset: 1984)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !54, file: !8, line: 104, baseType: !97, size: 64, offset: 2048)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !54, file: !8, line: 104, baseType: !97, size: 64, offset: 2112)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !54, file: !8, line: 104, baseType: !97, size: 64, offset: 2176)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !54, file: !8, line: 104, baseType: !97, size: 64, offset: 2240)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !54, file: !8, line: 104, baseType: !97, size: 64, offset: 2304)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !54, file: !8, line: 104, baseType: !97, size: 64, offset: 2368)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !54, file: !8, line: 104, baseType: !97, size: 64, offset: 2432)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !54, file: !8, line: 104, baseType: !97, size: 64, offset: 2496)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !54, file: !8, line: 105, baseType: !97, size: 64, offset: 2560)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !54, file: !8, line: 105, baseType: !97, size: 64, offset: 2624)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !54, file: !8, line: 105, baseType: !97, size: 64, offset: 2688)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !54, file: !8, line: 105, baseType: !97, size: 64, offset: 2752)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !54, file: !8, line: 105, baseType: !97, size: 64, offset: 2816)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !54, file: !8, line: 105, baseType: !97, size: 64, offset: 2880)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !54, file: !8, line: 105, baseType: !97, size: 64, offset: 2944)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !54, file: !8, line: 106, baseType: !114, size: 192, offset: 3008)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 192, elements: !115)
!115 = !{!43}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !54, file: !8, line: 106, baseType: !40, size: 64, offset: 3200)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !54, file: !8, line: 106, baseType: !40, size: 64, offset: 3264)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !54, file: !8, line: 106, baseType: !40, size: 64, offset: 3328)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !54, file: !8, line: 106, baseType: !40, size: 64, offset: 3392)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !54, file: !8, line: 106, baseType: !40, size: 64, offset: 3456)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !54, file: !8, line: 107, baseType: !122, size: 64, offset: 3520)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !54, file: !8, line: 107, baseType: !122, size: 64, offset: 3584)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !54, file: !8, line: 107, baseType: !122, size: 64, offset: 3648)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !54, file: !8, line: 107, baseType: !122, size: 64, offset: 3712)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !54, file: !8, line: 107, baseType: !122, size: 64, offset: 3776)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !54, file: !8, line: 107, baseType: !122, size: 64, offset: 3840)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !54, file: !8, line: 108, baseType: !122, size: 64, offset: 3904)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !54, file: !8, line: 108, baseType: !122, size: 64, offset: 3968)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !54, file: !8, line: 108, baseType: !122, size: 64, offset: 4032)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !54, file: !8, line: 108, baseType: !122, size: 64, offset: 4096)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !54, file: !8, line: 108, baseType: !122, size: 64, offset: 4160)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !54, file: !8, line: 108, baseType: !122, size: 64, offset: 4224)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !54, file: !8, line: 109, baseType: !122, size: 64, offset: 4288)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !54, file: !8, line: 109, baseType: !122, size: 64, offset: 4352)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !54, file: !8, line: 109, baseType: !122, size: 64, offset: 4416)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !54, file: !8, line: 109, baseType: !122, size: 64, offset: 4480)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !54, file: !8, line: 109, baseType: !122, size: 64, offset: 4544)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !54, file: !8, line: 110, baseType: !122, size: 64, offset: 4608)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !54, file: !8, line: 110, baseType: !122, size: 64, offset: 4672)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !54, file: !8, line: 110, baseType: !122, size: 64, offset: 4736)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !54, file: !8, line: 110, baseType: !122, size: 64, offset: 4800)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !54, file: !8, line: 110, baseType: !122, size: 64, offset: 4864)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !54, file: !8, line: 111, baseType: !122, size: 64, offset: 4928)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !54, file: !8, line: 111, baseType: !122, size: 64, offset: 4992)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !54, file: !8, line: 111, baseType: !122, size: 64, offset: 5056)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !54, file: !8, line: 111, baseType: !122, size: 64, offset: 5120)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !54, file: !8, line: 111, baseType: !122, size: 64, offset: 5184)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !54, file: !8, line: 111, baseType: !122, size: 64, offset: 5248)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !54, file: !8, line: 112, baseType: !122, size: 64, offset: 5312)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !54, file: !8, line: 112, baseType: !122, size: 64, offset: 5376)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !54, file: !8, line: 112, baseType: !122, size: 64, offset: 5440)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !54, file: !8, line: 112, baseType: !122, size: 64, offset: 5504)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !54, file: !8, line: 113, baseType: !122, size: 64, offset: 5568)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !54, file: !8, line: 113, baseType: !122, size: 64, offset: 5632)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !54, file: !8, line: 114, baseType: !97, size: 64, offset: 5696)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !28, file: !8, line: 89, baseType: !27, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !28, file: !8, line: 90, baseType: !14, size: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !28, file: !8, line: 91, baseType: !14, size: 32, offset: 288)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !28, file: !8, line: 92, baseType: !161, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !9, file: !8, line: 74, baseType: !163, size: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !8, line: 52, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !8, line: 47, size: 192, elements: !166)
!166 = !{!167, !169, !170, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !165, file: !8, line: 48, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !165, file: !8, line: 49, baseType: !14, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !165, file: !8, line: 50, baseType: !14, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !165, file: !8, line: 51, baseType: !14, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !9, file: !8, line: 75, baseType: !14, size: 32, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !9, file: !8, line: 76, baseType: !174, size: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !8, line: 54, baseType: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 2)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !9, file: !8, line: 77, baseType: !14, size: 32, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !9, file: !8, line: 78, baseType: !181, size: 64, offset: 768)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !8, line: 61, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !8, line: 58, size: 192, elements: !184)
!184 = !{!185, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !183, file: !8, line: 59, baseType: !186, size: 128)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !187)
!187 = !{!42}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !183, file: !8, line: 60, baseType: !40, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !9, file: !8, line: 79, baseType: !14, size: 32, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !9, file: !8, line: 80, baseType: !122, size: 64, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !9, file: !8, line: 81, baseType: !192, size: 64, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !8, line: 45, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !8, line: 25, size: 1408, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !218}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !194, file: !8, line: 26, baseType: !19, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !194, file: !8, line: 27, baseType: !19, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !194, file: !8, line: 28, baseType: !14, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !194, file: !8, line: 29, baseType: !14, size: 32, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !194, file: !8, line: 30, baseType: !201, size: 256, offset: 192)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 8)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !194, file: !8, line: 31, baseType: !12, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !194, file: !8, line: 32, baseType: !40, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !194, file: !8, line: 33, baseType: !40, size: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !194, file: !8, line: 34, baseType: !40, size: 64, offset: 640)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !194, file: !8, line: 35, baseType: !40, size: 64, offset: 704)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !194, file: !8, line: 36, baseType: !19, size: 64, offset: 768)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !194, file: !8, line: 37, baseType: !14, size: 32, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !194, file: !8, line: 38, baseType: !40, size: 64, offset: 896)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !194, file: !8, line: 39, baseType: !40, size: 64, offset: 960)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !194, file: !8, line: 40, baseType: !14, size: 32, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !194, file: !8, line: 41, baseType: !14, size: 32, offset: 1056)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !194, file: !8, line: 42, baseType: !19, size: 64, offset: 1088)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !194, file: !8, line: 43, baseType: !217, size: 192, offset: 1152)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !8, line: 12, baseType: !114)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !194, file: !8, line: 44, baseType: !40, size: 64, offset: 1344)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !8, line: 126, baseType: !35)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESLIB_T", file: !225, line: 26, baseType: !226)
!225 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/reslib.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "7fe346e44e59392202140606056375ae")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reslib_t", file: !225, line: 20, size: 256, elements: !227)
!227 = !{!228, !230, !231, !232, !233}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rl_next", scope: !226, file: !225, line: 21, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rl_name", scope: !226, file: !225, line: 22, baseType: !220, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rl_r_kind", scope: !226, file: !225, line: 23, baseType: !15, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rl_r_atomkind", scope: !226, file: !225, line: 24, baseType: !15, size: 32, offset: 160)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rl_rlist", scope: !226, file: !225, line: 25, baseType: !6, size: 64, offset: 192)
!234 = !{!0, !235, !237, !245, !250, !252, !255, !257, !260, !262}
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "reslibs", scope: !2, file: !225, line: 44, type: !223, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "init", scope: !239, file: !225, line: 474, type: !15, isLocal: true, isDefinition: true)
!239 = distinct !DISubprogram(name: "initatoms", scope: !225, file: !225, line: 472, type: !240, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{null}
!242 = !{!243, !244}
!243 = !DILocalVariable(name: "i", scope: !239, file: !225, line: 475, type: !15)
!244 = !DILocalVariable(name: "ap", scope: !239, file: !225, line: 476, type: !192)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "atoms", scope: !2, file: !225, line: 34, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 1408000, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 1000)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "n_atoms", scope: !2, file: !225, line: 33, type: !15, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "lr_name", scope: !2, file: !225, line: 32, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !202)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "n_bonds", scope: !2, file: !225, line: 37, type: !15, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "bonds", scope: !2, file: !225, line: 38, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 64000, elements: !248)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "n_chi", scope: !2, file: !225, line: 41, type: !15, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "chi", scope: !2, file: !225, line: 42, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 96000, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 500)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 256)
!270 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!271 = !{i32 7, !"Dwarf Version", i32 5}
!272 = !{i32 2, !"Debug Info Version", i32 3}
!273 = !{i32 1, !"wchar_size", i32 4}
!274 = !{i32 7, !"uwtable", i32 1}
!275 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!276 = distinct !DISubprogram(name: "getreslibkind", scope: !225, file: !225, line: 78, type: !277, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{!220, !220}
!279 = !{!280, !281, !282}
!280 = !DILocalVariable(name: "reslib", arg: 1, scope: !276, file: !225, line: 78, type: !220)
!281 = !DILocalVariable(name: "nhp", scope: !276, file: !225, line: 80, type: !220)
!282 = !DILocalVariable(name: "rlp", scope: !276, file: !225, line: 81, type: !223)
!283 = !DILocation(line: 0, scope: !276)
!284 = !DILocation(line: 80, column: 8, scope: !276)
!285 = !DILocalVariable(name: "reslib", arg: 1, scope: !286, file: !225, line: 422, type: !220)
!286 = distinct !DISubprogram(name: "known_reslib", scope: !225, file: !225, line: 422, type: !287, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{!223, !220}
!289 = !{!285, !290}
!290 = !DILocalVariable(name: "rlp", scope: !286, file: !225, line: 424, type: !223)
!291 = !DILocation(line: 0, scope: !286, inlinedAt: !292)
!292 = distinct !DILocation(line: 83, column: 14, scope: !293)
!293 = distinct !DILexicalBlock(scope: !276, file: !225, line: 83, column: 6)
!294 = !DILocation(line: 0, scope: !295, inlinedAt: !292)
!295 = distinct !DILexicalBlock(scope: !286, file: !225, line: 426, column: 2)
!296 = !{!297, !297, i64 0}
!297 = !{!"any pointer", !298, i64 0}
!298 = !{!"omnipotent char", !299, i64 0}
!299 = !{!"Simple C/C++ TBAA"}
!300 = !DILocation(line: 426, column: 2, scope: !295, inlinedAt: !292)
!301 = !DILocation(line: 427, column: 20, scope: !302, inlinedAt: !292)
!302 = distinct !DILexicalBlock(scope: !303, file: !225, line: 427, column: 7)
!303 = distinct !DILexicalBlock(scope: !304, file: !225, line: 426, column: 47)
!304 = distinct !DILexicalBlock(scope: !295, file: !225, line: 426, column: 2)
!305 = !{!306, !297, i64 8}
!306 = !{!"reslib_t", !297, i64 0, !297, i64 8, !307, i64 16, !307, i64 20, !297, i64 24}
!307 = !{!"int", !298, i64 0}
!308 = !DILocation(line: 427, column: 7, scope: !302, inlinedAt: !292)
!309 = !DILocation(line: 427, column: 38, scope: !302, inlinedAt: !292)
!310 = !DILocation(line: 427, column: 7, scope: !303, inlinedAt: !292)
!311 = !DILocation(line: 426, column: 38, scope: !304, inlinedAt: !292)
!312 = distinct !{!312, !300, !313, !314, !315}
!313 = !DILocation(line: 430, column: 2, scope: !295, inlinedAt: !292)
!314 = !{!"llvm.loop.mustprogress"}
!315 = !{!"llvm.loop.unroll.disable"}
!316 = !DILocation(line: 84, column: 15, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !225, line: 84, column: 7)
!318 = distinct !DILexicalBlock(scope: !293, file: !225, line: 83, column: 48)
!319 = !DILocation(line: 84, column: 39, scope: !317)
!320 = !DILocation(line: 84, column: 7, scope: !318)
!321 = !DILocation(line: 85, column: 13, scope: !322)
!322 = distinct !DILexicalBlock(scope: !317, file: !225, line: 84, column: 48)
!323 = !DILocation(line: 85, column: 4, scope: !322)
!324 = !DILocation(line: 87, column: 4, scope: !322)
!325 = !DILocation(line: 0, scope: !293)
!326 = !DILocation(line: 90, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !276, file: !225, line: 90, column: 6)
!328 = !{!306, !307, i64 16}
!329 = !DILocation(line: 90, column: 6, scope: !276)
!330 = !DILocation(line: 0, scope: !327)
!331 = !DILocation(line: 101, column: 1, scope: !276)
!332 = distinct !DISubprogram(name: "read_reslib", scope: !225, file: !225, line: 434, type: !287, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!333 = !{!334, !335, !395, !396, !397, !398, !399}
!334 = !DILocalVariable(name: "reslib", arg: 1, scope: !332, file: !225, line: 434, type: !220)
!335 = !DILocalVariable(name: "pfp", scope: !332, file: !225, line: 436, type: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !338, line: 7, baseType: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !340, line: 49, size: 1728, elements: !341)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !357, !359, !360, !361, !365, !367, !369, !373, !376, !378, !381, !384, !385, !386, !390, !391}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !339, file: !340, line: 51, baseType: !15, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !339, file: !340, line: 54, baseType: !220, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !339, file: !340, line: 55, baseType: !220, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !339, file: !340, line: 56, baseType: !220, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !339, file: !340, line: 57, baseType: !220, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !339, file: !340, line: 58, baseType: !220, size: 64, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !339, file: !340, line: 59, baseType: !220, size: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !339, file: !340, line: 60, baseType: !220, size: 64, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !339, file: !340, line: 61, baseType: !220, size: 64, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !339, file: !340, line: 64, baseType: !220, size: 64, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !339, file: !340, line: 65, baseType: !220, size: 64, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !339, file: !340, line: 66, baseType: !220, size: 64, offset: 704)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !339, file: !340, line: 68, baseType: !355, size: 64, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !340, line: 36, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !339, file: !340, line: 70, baseType: !358, size: 64, offset: 832)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !339, file: !340, line: 72, baseType: !15, size: 32, offset: 896)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !339, file: !340, line: 73, baseType: !15, size: 32, offset: 928)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !339, file: !340, line: 74, baseType: !362, size: 64, offset: 960)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !363, line: 152, baseType: !364)
!363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!364 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !339, file: !340, line: 77, baseType: !366, size: 16, offset: 1024)
!366 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !339, file: !340, line: 78, baseType: !368, size: 8, offset: 1040)
!368 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !339, file: !340, line: 79, baseType: !370, size: 8, offset: 1048)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 1)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !339, file: !340, line: 81, baseType: !374, size: 64, offset: 1088)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !340, line: 43, baseType: null)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !339, file: !340, line: 89, baseType: !377, size: 64, offset: 1152)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !363, line: 153, baseType: !364)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !339, file: !340, line: 91, baseType: !379, size: 64, offset: 1216)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !340, line: 37, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !339, file: !340, line: 92, baseType: !382, size: 64, offset: 1280)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !340, line: 38, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !339, file: !340, line: 93, baseType: !358, size: 64, offset: 1344)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !339, file: !340, line: 94, baseType: !5, size: 64, offset: 1408)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !339, file: !340, line: 95, baseType: !387, size: 64, offset: 1472)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !388, line: 46, baseType: !389)
!388 = !DIFile(filename: "llvm-project/build/lib/clang/14.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/Research/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!389 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !339, file: !340, line: 96, baseType: !15, size: 32, offset: 1536)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !339, file: !340, line: 98, baseType: !392, size: 160, offset: 1568)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 20)
!395 = !DILocalVariable(name: "bfp", scope: !332, file: !225, line: 437, type: !336)
!396 = !DILocalVariable(name: "qfp", scope: !332, file: !225, line: 438, type: !336)
!397 = !DILocalVariable(name: "cfp", scope: !332, file: !225, line: 439, type: !336)
!398 = !DILocalVariable(name: "rlp", scope: !332, file: !225, line: 440, type: !223)
!399 = !DILocalVariable(name: "offname", scope: !332, file: !225, line: 441, type: !267)
!400 = !DILocation(line: 0, scope: !332)
!401 = !DILocation(line: 441, column: 2, scope: !332)
!402 = !DILocation(line: 441, column: 7, scope: !332)
!403 = !DILocalVariable(name: "reslib", arg: 1, scope: !404, file: !225, line: 492, type: !220)
!404 = distinct !DISubprogram(name: "read_reslib_header", scope: !225, file: !225, line: 492, type: !405, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !408)
!405 = !DISubroutineType(types: !406)
!406 = !{!223, !220, !407, !407, !407, !407, !220}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!408 = !{!403, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !423, !424, !428, !429, !430}
!409 = !DILocalVariable(name: "pfp", arg: 2, scope: !404, file: !225, line: 493, type: !407)
!410 = !DILocalVariable(name: "bfp", arg: 3, scope: !404, file: !225, line: 493, type: !407)
!411 = !DILocalVariable(name: "qfp", arg: 4, scope: !404, file: !225, line: 493, type: !407)
!412 = !DILocalVariable(name: "cfp", arg: 5, scope: !404, file: !225, line: 493, type: !407)
!413 = !DILocalVariable(name: "offname", arg: 6, scope: !404, file: !225, line: 493, type: !220)
!414 = !DILocalVariable(name: "rfp", scope: !404, file: !225, line: 495, type: !336)
!415 = !DILocalVariable(name: "rlp", scope: !404, file: !225, line: 496, type: !223)
!416 = !DILocalVariable(name: "nw", scope: !404, file: !225, line: 497, type: !15)
!417 = !DILocalVariable(name: "nsize", scope: !404, file: !225, line: 497, type: !15)
!418 = !DILocalVariable(name: "np", scope: !404, file: !225, line: 498, type: !220)
!419 = !DILocalVariable(name: "line", scope: !404, file: !225, line: 499, type: !420)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 128)
!423 = !DILocalVariable(name: "keyword", scope: !404, file: !225, line: 499, type: !392)
!424 = !DILocalVariable(name: "value", scope: !404, file: !225, line: 499, type: !425)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 800, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 100)
!428 = !DILocalVariable(name: "newname", scope: !404, file: !225, line: 499, type: !425)
!429 = !DILocalVariable(name: "fname", scope: !404, file: !225, line: 500, type: !267)
!430 = !DILabel(scope: !404, name: "clean_up", file: !225, line: 621)
!431 = !DILocation(line: 0, scope: !404, inlinedAt: !432)
!432 = distinct !DILocation(line: 443, column: 14, scope: !433)
!433 = distinct !DILexicalBlock(scope: !332, file: !225, line: 443, column: 6)
!434 = !DILocation(line: 499, column: 2, scope: !404, inlinedAt: !432)
!435 = !DILocation(line: 499, column: 7, scope: !404, inlinedAt: !432)
!436 = !DILocation(line: 499, column: 20, scope: !404, inlinedAt: !432)
!437 = !DILocation(line: 499, column: 35, scope: !404, inlinedAt: !432)
!438 = !DILocation(line: 499, column: 49, scope: !404, inlinedAt: !432)
!439 = !DILocation(line: 500, column: 2, scope: !404, inlinedAt: !432)
!440 = !DILocation(line: 500, column: 7, scope: !404, inlinedAt: !432)
!441 = !DILocation(line: 502, column: 6, scope: !442, inlinedAt: !432)
!442 = distinct !DILexicalBlock(scope: !404, file: !225, line: 502, column: 6)
!443 = !DILocation(line: 502, column: 31, scope: !442, inlinedAt: !432)
!444 = !DILocation(line: 502, column: 6, scope: !404, inlinedAt: !432)
!445 = !DILocation(line: 503, column: 3, scope: !446, inlinedAt: !432)
!446 = distinct !DILexicalBlock(scope: !442, file: !225, line: 502, column: 40)
!447 = !DILocalVariable(name: "sname", arg: 1, scope: !448, file: !225, line: 637, type: !220)
!448 = distinct !DISubprogram(name: "mk_fname", scope: !225, file: !225, line: 637, type: !449, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !220, !220}
!451 = !{!447, !452}
!452 = !DILocalVariable(name: "fname", arg: 2, scope: !448, file: !225, line: 637, type: !220)
!453 = !DILocation(line: 0, scope: !448, inlinedAt: !454)
!454 = distinct !DILocation(line: 504, column: 3, scope: !446, inlinedAt: !432)
!455 = !DILocation(line: 640, column: 6, scope: !456, inlinedAt: !454)
!456 = distinct !DILexicalBlock(scope: !448, file: !225, line: 640, column: 6)
!457 = !{!298, !298, i64 0}
!458 = !DILocation(line: 640, column: 13, scope: !456, inlinedAt: !454)
!459 = !DILocation(line: 640, column: 20, scope: !456, inlinedAt: !454)
!460 = !DILocation(line: 642, column: 3, scope: !456, inlinedAt: !454)
!461 = !DILocation(line: 644, column: 3, scope: !456, inlinedAt: !454)
!462 = !DILocation(line: 505, column: 15, scope: !463, inlinedAt: !432)
!463 = distinct !DILexicalBlock(scope: !446, file: !225, line: 505, column: 7)
!464 = !DILocation(line: 505, column: 37, scope: !463, inlinedAt: !432)
!465 = !DILocation(line: 505, column: 7, scope: !446, inlinedAt: !432)
!466 = !DILocation(line: 506, column: 4, scope: !467, inlinedAt: !432)
!467 = distinct !DILexicalBlock(scope: !463, file: !225, line: 505, column: 46)
!468 = !DILocation(line: 507, column: 4, scope: !467, inlinedAt: !432)
!469 = !DILocation(line: 0, scope: !448, inlinedAt: !470)
!470 = distinct !DILocation(line: 510, column: 3, scope: !471, inlinedAt: !432)
!471 = distinct !DILexicalBlock(scope: !442, file: !225, line: 509, column: 7)
!472 = !DILocation(line: 640, column: 6, scope: !456, inlinedAt: !470)
!473 = !DILocation(line: 640, column: 13, scope: !456, inlinedAt: !470)
!474 = !DILocation(line: 640, column: 20, scope: !456, inlinedAt: !470)
!475 = !DILocation(line: 641, column: 4, scope: !456, inlinedAt: !470)
!476 = !DILocation(line: 640, column: 6, scope: !448, inlinedAt: !470)
!477 = !DILocation(line: 642, column: 3, scope: !456, inlinedAt: !470)
!478 = !DILocation(line: 644, column: 3, scope: !456, inlinedAt: !470)
!479 = !DILocation(line: 511, column: 15, scope: !480, inlinedAt: !432)
!480 = distinct !DILexicalBlock(scope: !471, file: !225, line: 511, column: 7)
!481 = !DILocation(line: 511, column: 37, scope: !480, inlinedAt: !432)
!482 = !DILocation(line: 511, column: 7, scope: !471, inlinedAt: !432)
!483 = !DILocation(line: 512, column: 4, scope: !484, inlinedAt: !432)
!484 = distinct !DILexicalBlock(scope: !480, file: !225, line: 511, column: 46)
!485 = !DILocation(line: 513, column: 4, scope: !484, inlinedAt: !432)
!486 = !DILocation(line: 0, scope: !442, inlinedAt: !432)
!487 = !DILocation(line: 517, column: 28, scope: !488, inlinedAt: !432)
!488 = distinct !DILexicalBlock(scope: !404, file: !225, line: 517, column: 6)
!489 = !DILocation(line: 517, column: 14, scope: !488, inlinedAt: !432)
!490 = !DILocation(line: 517, column: 59, scope: !488, inlinedAt: !432)
!491 = !DILocation(line: 517, column: 6, scope: !404, inlinedAt: !432)
!492 = !DILocation(line: 518, column: 3, scope: !493, inlinedAt: !432)
!493 = distinct !DILexicalBlock(scope: !488, file: !225, line: 517, column: 68)
!494 = !DILocation(line: 519, column: 3, scope: !493, inlinedAt: !432)
!495 = !DILocation(line: 520, column: 3, scope: !493, inlinedAt: !432)
!496 = !DILocation(line: 523, column: 10, scope: !404, inlinedAt: !432)
!497 = !DILocation(line: 524, column: 31, scope: !498, inlinedAt: !432)
!498 = distinct !DILexicalBlock(scope: !404, file: !225, line: 524, column: 6)
!499 = !DILocation(line: 524, column: 23, scope: !498, inlinedAt: !432)
!500 = !DILocation(line: 524, column: 58, scope: !498, inlinedAt: !432)
!501 = !DILocation(line: 524, column: 6, scope: !404, inlinedAt: !432)
!502 = !DILocation(line: 525, column: 3, scope: !503, inlinedAt: !432)
!503 = distinct !DILexicalBlock(scope: !498, file: !225, line: 524, column: 67)
!504 = !DILocation(line: 526, column: 3, scope: !503, inlinedAt: !432)
!505 = !DILocation(line: 527, column: 3, scope: !503, inlinedAt: !432)
!506 = !DILocation(line: 529, column: 2, scope: !404, inlinedAt: !432)
!507 = !DILocation(line: 530, column: 17, scope: !404, inlinedAt: !432)
!508 = !DILocation(line: 530, column: 7, scope: !404, inlinedAt: !432)
!509 = !DILocation(line: 530, column: 15, scope: !404, inlinedAt: !432)
!510 = !{!306, !297, i64 0}
!511 = !DILocation(line: 531, column: 10, scope: !404, inlinedAt: !432)
!512 = !DILocation(line: 532, column: 7, scope: !404, inlinedAt: !432)
!513 = !DILocation(line: 532, column: 15, scope: !404, inlinedAt: !432)
!514 = !DILocation(line: 533, column: 7, scope: !404, inlinedAt: !432)
!515 = !DILocation(line: 534, column: 7, scope: !404, inlinedAt: !432)
!516 = !DILocation(line: 537, column: 7, scope: !404, inlinedAt: !432)
!517 = !DILocation(line: 534, column: 21, scope: !404, inlinedAt: !432)
!518 = !DILocation(line: 541, column: 11, scope: !404, inlinedAt: !432)
!519 = !DILocation(line: 543, column: 7, scope: !520, inlinedAt: !432)
!520 = distinct !DILexicalBlock(scope: !404, file: !225, line: 543, column: 7)
!521 = !DILocation(line: 543, column: 32, scope: !520, inlinedAt: !432)
!522 = !DILocation(line: 543, column: 7, scope: !404, inlinedAt: !432)
!523 = !DILocation(line: 544, column: 10, scope: !524, inlinedAt: !432)
!524 = distinct !DILexicalBlock(scope: !520, file: !225, line: 543, column: 41)
!525 = !DILocation(line: 544, column: 3, scope: !524, inlinedAt: !432)
!526 = !DILocation(line: 621, column: 1, scope: !404, inlinedAt: !432)
!527 = !DILocation(line: 622, column: 2, scope: !404, inlinedAt: !432)
!528 = !DILocation(line: 635, column: 1, scope: !404, inlinedAt: !432)
!529 = !DILocation(line: 443, column: 6, scope: !332)
!530 = !DILocation(line: 538, column: 7, scope: !404, inlinedAt: !432)
!531 = !DILocation(line: 539, column: 7, scope: !404, inlinedAt: !432)
!532 = !DILocation(line: 540, column: 7, scope: !404, inlinedAt: !432)
!533 = !DILocation(line: 545, column: 8, scope: !534, inlinedAt: !432)
!534 = distinct !DILexicalBlock(scope: !535, file: !225, line: 545, column: 8)
!535 = distinct !DILexicalBlock(scope: !524, file: !225, line: 544, column: 46)
!536 = !DILocation(line: 545, column: 14, scope: !534, inlinedAt: !432)
!537 = !DILocation(line: 545, column: 8, scope: !535, inlinedAt: !432)
!538 = !DILocation(line: 547, column: 15, scope: !539, inlinedAt: !432)
!539 = distinct !DILexicalBlock(scope: !535, file: !225, line: 547, column: 8)
!540 = !DILocation(line: 547, column: 8, scope: !535, inlinedAt: !432)
!541 = !DILocation(line: 554, column: 14, scope: !542, inlinedAt: !432)
!542 = distinct !DILexicalBlock(scope: !543, file: !225, line: 554, column: 14)
!543 = distinct !DILexicalBlock(scope: !539, file: !225, line: 551, column: 14)
!544 = !DILocation(line: 554, column: 40, scope: !542, inlinedAt: !432)
!545 = !DILocation(line: 554, column: 14, scope: !543, inlinedAt: !432)
!546 = !DILocation(line: 555, column: 9, scope: !547, inlinedAt: !432)
!547 = distinct !DILexicalBlock(scope: !548, file: !225, line: 555, column: 9)
!548 = distinct !DILexicalBlock(scope: !542, file: !225, line: 554, column: 46)
!549 = !DILocation(line: 555, column: 9, scope: !548, inlinedAt: !432)
!550 = !DILocation(line: 556, column: 21, scope: !547, inlinedAt: !432)
!551 = !DILocation(line: 556, column: 6, scope: !547, inlinedAt: !432)
!552 = !DILocation(line: 558, column: 21, scope: !553, inlinedAt: !432)
!553 = distinct !DILexicalBlock(scope: !547, file: !225, line: 557, column: 14)
!554 = !DILocation(line: 558, column: 6, scope: !553, inlinedAt: !432)
!555 = !DILocation(line: 559, column: 14, scope: !556, inlinedAt: !432)
!556 = distinct !DILexicalBlock(scope: !553, file: !225, line: 559, column: 14)
!557 = !DILocation(line: 559, column: 36, scope: !556, inlinedAt: !432)
!558 = !DILocation(line: 559, column: 14, scope: !553, inlinedAt: !432)
!559 = !DILocation(line: 560, column: 21, scope: !556, inlinedAt: !432)
!560 = !DILocation(line: 565, column: 14, scope: !561, inlinedAt: !432)
!561 = distinct !DILexicalBlock(scope: !542, file: !225, line: 565, column: 14)
!562 = !DILocation(line: 565, column: 44, scope: !561, inlinedAt: !432)
!563 = !DILocation(line: 565, column: 14, scope: !542, inlinedAt: !432)
!564 = !DILocation(line: 566, column: 9, scope: !565, inlinedAt: !432)
!565 = distinct !DILexicalBlock(scope: !566, file: !225, line: 566, column: 9)
!566 = distinct !DILexicalBlock(scope: !561, file: !225, line: 565, column: 50)
!567 = !DILocation(line: 566, column: 35, scope: !565, inlinedAt: !432)
!568 = !DILocation(line: 566, column: 9, scope: !566, inlinedAt: !432)
!569 = !DILocation(line: 567, column: 25, scope: !565, inlinedAt: !432)
!570 = !{!306, !307, i64 20}
!571 = !DILocation(line: 567, column: 6, scope: !565, inlinedAt: !432)
!572 = !DILocation(line: 568, column: 14, scope: !573, inlinedAt: !432)
!573 = distinct !DILexicalBlock(scope: !565, file: !225, line: 568, column: 14)
!574 = !DILocation(line: 568, column: 14, scope: !565, inlinedAt: !432)
!575 = !DILocation(line: 569, column: 25, scope: !573, inlinedAt: !432)
!576 = !DILocation(line: 574, column: 14, scope: !577, inlinedAt: !432)
!577 = distinct !DILexicalBlock(scope: !561, file: !225, line: 574, column: 14)
!578 = !DILocation(line: 574, column: 14, scope: !561, inlinedAt: !432)
!579 = !DILocation(line: 0, scope: !448, inlinedAt: !580)
!580 = distinct !DILocation(line: 575, column: 5, scope: !581, inlinedAt: !432)
!581 = distinct !DILexicalBlock(scope: !577, file: !225, line: 574, column: 45)
!582 = !DILocation(line: 640, column: 6, scope: !456, inlinedAt: !580)
!583 = !DILocation(line: 640, column: 13, scope: !456, inlinedAt: !580)
!584 = !DILocation(line: 640, column: 20, scope: !456, inlinedAt: !580)
!585 = !DILocation(line: 642, column: 3, scope: !456, inlinedAt: !580)
!586 = !DILocation(line: 644, column: 3, scope: !456, inlinedAt: !580)
!587 = !DILocation(line: 0, scope: !448, inlinedAt: !588)
!588 = distinct !DILocation(line: 577, column: 5, scope: !589, inlinedAt: !432)
!589 = distinct !DILexicalBlock(scope: !590, file: !225, line: 576, column: 45)
!590 = distinct !DILexicalBlock(scope: !577, file: !225, line: 576, column: 14)
!591 = !DILocation(line: 640, column: 6, scope: !456, inlinedAt: !588)
!592 = !DILocation(line: 640, column: 13, scope: !456, inlinedAt: !588)
!593 = !DILocation(line: 640, column: 20, scope: !456, inlinedAt: !588)
!594 = !DILocation(line: 642, column: 3, scope: !456, inlinedAt: !588)
!595 = !DILocation(line: 644, column: 3, scope: !456, inlinedAt: !588)
!596 = !DILocation(line: 578, column: 18, scope: !597, inlinedAt: !432)
!597 = distinct !DILexicalBlock(scope: !589, file: !225, line: 578, column: 9)
!598 = !DILocation(line: 578, column: 40, scope: !597, inlinedAt: !432)
!599 = !DILocation(line: 578, column: 9, scope: !589, inlinedAt: !432)
!600 = !DILocation(line: 0, scope: !448, inlinedAt: !601)
!601 = distinct !DILocation(line: 586, column: 5, scope: !602, inlinedAt: !432)
!602 = distinct !DILexicalBlock(scope: !603, file: !225, line: 585, column: 45)
!603 = distinct !DILexicalBlock(scope: !590, file: !225, line: 585, column: 14)
!604 = !DILocation(line: 640, column: 6, scope: !456, inlinedAt: !601)
!605 = !DILocation(line: 640, column: 13, scope: !456, inlinedAt: !601)
!606 = !DILocation(line: 640, column: 20, scope: !456, inlinedAt: !601)
!607 = !DILocation(line: 642, column: 3, scope: !456, inlinedAt: !601)
!608 = !DILocation(line: 644, column: 3, scope: !456, inlinedAt: !601)
!609 = !DILocation(line: 587, column: 18, scope: !610, inlinedAt: !432)
!610 = distinct !DILexicalBlock(scope: !602, file: !225, line: 587, column: 9)
!611 = !DILocation(line: 587, column: 40, scope: !610, inlinedAt: !432)
!612 = !DILocation(line: 587, column: 9, scope: !602, inlinedAt: !432)
!613 = !DILocation(line: 594, column: 14, scope: !614, inlinedAt: !432)
!614 = distinct !DILexicalBlock(scope: !603, file: !225, line: 594, column: 14)
!615 = !DILocation(line: 594, column: 38, scope: !614, inlinedAt: !432)
!616 = !DILocation(line: 594, column: 14, scope: !603, inlinedAt: !432)
!617 = !DILocation(line: 0, scope: !448, inlinedAt: !618)
!618 = distinct !DILocation(line: 595, column: 5, scope: !619, inlinedAt: !432)
!619 = distinct !DILexicalBlock(scope: !614, file: !225, line: 594, column: 44)
!620 = !DILocation(line: 640, column: 6, scope: !456, inlinedAt: !618)
!621 = !DILocation(line: 640, column: 13, scope: !456, inlinedAt: !618)
!622 = !DILocation(line: 640, column: 20, scope: !456, inlinedAt: !618)
!623 = !DILocation(line: 642, column: 3, scope: !456, inlinedAt: !618)
!624 = !DILocation(line: 644, column: 3, scope: !456, inlinedAt: !618)
!625 = !DILocation(line: 596, column: 18, scope: !626, inlinedAt: !432)
!626 = distinct !DILexicalBlock(scope: !619, file: !225, line: 596, column: 9)
!627 = !DILocation(line: 596, column: 40, scope: !626, inlinedAt: !432)
!628 = !DILocation(line: 596, column: 9, scope: !619, inlinedAt: !432)
!629 = !DILocation(line: 603, column: 14, scope: !630, inlinedAt: !432)
!630 = distinct !DILexicalBlock(scope: !614, file: !225, line: 603, column: 14)
!631 = !DILocation(line: 603, column: 14, scope: !614, inlinedAt: !432)
!632 = !DILocation(line: 0, scope: !448, inlinedAt: !633)
!633 = distinct !DILocation(line: 604, column: 5, scope: !634, inlinedAt: !432)
!634 = distinct !DILexicalBlock(scope: !630, file: !225, line: 603, column: 45)
!635 = !DILocation(line: 640, column: 6, scope: !456, inlinedAt: !633)
!636 = !DILocation(line: 640, column: 13, scope: !456, inlinedAt: !633)
!637 = !DILocation(line: 640, column: 20, scope: !456, inlinedAt: !633)
!638 = !DILocation(line: 642, column: 3, scope: !456, inlinedAt: !633)
!639 = !DILocation(line: 644, column: 3, scope: !456, inlinedAt: !633)
!640 = !DILocation(line: 605, column: 18, scope: !641, inlinedAt: !432)
!641 = distinct !DILexicalBlock(scope: !634, file: !225, line: 605, column: 9)
!642 = !DILocation(line: 605, column: 40, scope: !641, inlinedAt: !432)
!643 = !DILocation(line: 605, column: 9, scope: !634, inlinedAt: !432)
!644 = distinct !{!644, !525, !645, !314, !315}
!645 = !DILocation(line: 616, column: 3, scope: !524, inlinedAt: !432)
!646 = !DILocation(line: 0, scope: !448, inlinedAt: !647)
!647 = distinct !DILocation(line: 618, column: 3, scope: !648, inlinedAt: !432)
!648 = distinct !DILexicalBlock(scope: !520, file: !225, line: 617, column: 7)
!649 = !DILocation(line: 640, column: 6, scope: !456, inlinedAt: !647)
!650 = !DILocation(line: 640, column: 13, scope: !456, inlinedAt: !647)
!651 = !DILocation(line: 640, column: 20, scope: !456, inlinedAt: !647)
!652 = !DILocation(line: 642, column: 3, scope: !456, inlinedAt: !647)
!653 = !DILocation(line: 644, column: 3, scope: !456, inlinedAt: !647)
!654 = !DILocation(line: 0, scope: !590, inlinedAt: !432)
!655 = !DILocation(line: 624, column: 7, scope: !656, inlinedAt: !432)
!656 = distinct !DILexicalBlock(scope: !657, file: !225, line: 624, column: 7)
!657 = distinct !DILexicalBlock(scope: !658, file: !225, line: 623, column: 19)
!658 = distinct !DILexicalBlock(scope: !404, file: !225, line: 623, column: 6)
!659 = !DILocation(line: 624, column: 7, scope: !657, inlinedAt: !432)
!660 = !DILocation(line: 624, column: 14, scope: !656, inlinedAt: !432)
!661 = !DILocation(line: 625, column: 7, scope: !662, inlinedAt: !432)
!662 = distinct !DILexicalBlock(scope: !657, file: !225, line: 625, column: 7)
!663 = !DILocation(line: 625, column: 7, scope: !657, inlinedAt: !432)
!664 = !DILocation(line: 625, column: 14, scope: !662, inlinedAt: !432)
!665 = !DILocation(line: 626, column: 7, scope: !666, inlinedAt: !432)
!666 = distinct !DILexicalBlock(scope: !657, file: !225, line: 626, column: 7)
!667 = !DILocation(line: 626, column: 7, scope: !657, inlinedAt: !432)
!668 = !DILocation(line: 626, column: 14, scope: !666, inlinedAt: !432)
!669 = !DILocation(line: 627, column: 7, scope: !670, inlinedAt: !432)
!670 = distinct !DILexicalBlock(scope: !657, file: !225, line: 627, column: 7)
!671 = !DILocation(line: 627, column: 7, scope: !657, inlinedAt: !432)
!672 = !DILocation(line: 627, column: 14, scope: !670, inlinedAt: !432)
!673 = !DILocation(line: 628, column: 11, scope: !657, inlinedAt: !432)
!674 = !DILocation(line: 629, column: 11, scope: !657, inlinedAt: !432)
!675 = !DILocation(line: 630, column: 3, scope: !657, inlinedAt: !432)
!676 = !DILocation(line: 631, column: 3, scope: !657, inlinedAt: !432)
!677 = !DILocation(line: 632, column: 2, scope: !657, inlinedAt: !432)
!678 = !DILocation(line: 478, column: 7, scope: !679, inlinedAt: !680)
!679 = distinct !DILexicalBlock(scope: !239, file: !225, line: 478, column: 6)
!680 = distinct !DILocation(line: 449, column: 2, scope: !332)
!681 = !DILocation(line: 478, column: 6, scope: !239, inlinedAt: !680)
!682 = !DILocation(line: 480, column: 7, scope: !239, inlinedAt: !680)
!683 = !DILocation(line: 0, scope: !239, inlinedAt: !680)
!684 = !DILocation(line: 481, column: 2, scope: !685, inlinedAt: !680)
!685 = distinct !DILexicalBlock(scope: !239, file: !225, line: 481, column: 2)
!686 = !DILocation(line: 482, column: 3, scope: !687, inlinedAt: !680)
!687 = distinct !DILexicalBlock(scope: !688, file: !225, line: 481, column: 51)
!688 = distinct !DILexicalBlock(scope: !685, file: !225, line: 481, column: 2)
!689 = !DILocation(line: 483, column: 30, scope: !687, inlinedAt: !680)
!690 = !DILocation(line: 483, column: 7, scope: !687, inlinedAt: !680)
!691 = !DILocation(line: 483, column: 18, scope: !687, inlinedAt: !680)
!692 = !{!693, !297, i64 0}
!693 = !{!"atom_t", !297, i64 0, !297, i64 8, !307, i64 16, !307, i64 20, !298, i64 24, !297, i64 56, !694, i64 64, !694, i64 72, !694, i64 80, !694, i64 88, !297, i64 96, !307, i64 104, !694, i64 112, !694, i64 120, !307, i64 128, !307, i64 132, !297, i64 136, !298, i64 144, !694, i64 168}
!694 = !{!"double", !298, i64 0}
!695 = !DILocation(line: 484, column: 22, scope: !696, inlinedAt: !680)
!696 = distinct !DILexicalBlock(scope: !687, file: !225, line: 484, column: 7)
!697 = !DILocation(line: 484, column: 7, scope: !687, inlinedAt: !680)
!698 = !DILocation(line: 485, column: 13, scope: !699, inlinedAt: !680)
!699 = distinct !DILexicalBlock(scope: !696, file: !225, line: 484, column: 31)
!700 = !DILocation(line: 485, column: 4, scope: !699, inlinedAt: !680)
!701 = !DILocation(line: 487, column: 4, scope: !699, inlinedAt: !680)
!702 = !DILocation(line: 481, column: 41, scope: !688, inlinedAt: !680)
!703 = !DILocation(line: 481, column: 47, scope: !688, inlinedAt: !680)
!704 = !DILocation(line: 481, column: 28, scope: !688, inlinedAt: !680)
!705 = distinct !{!705, !684, !706, !314, !315}
!706 = !DILocation(line: 489, column: 2, scope: !685, inlinedAt: !680)
!707 = !DILocation(line: 450, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !332, file: !225, line: 450, column: 7)
!709 = !DILocation(line: 450, column: 7, scope: !332)
!710 = !DILocalVariable(name: "offname", arg: 1, scope: !711, file: !225, line: 647, type: !220)
!711 = distinct !DISubprogram(name: "off2reslib", scope: !225, file: !225, line: 647, type: !712, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !714)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !220, !223}
!714 = !{!710, !715, !716, !717, !718, !719, !720, !721, !747, !748, !750, !751, !752, !753, !754, !755, !756, !758, !759, !760, !761, !764, !765, !766}
!715 = !DILocalVariable(name: "rlp", arg: 2, scope: !711, file: !225, line: 647, type: !223)
!716 = !DILocalVariable(name: "ap", scope: !711, file: !225, line: 649, type: !192)
!717 = !DILocalVariable(name: "n_names", scope: !711, file: !225, line: 650, type: !15)
!718 = !DILocalVariable(name: "n_resnames", scope: !711, file: !225, line: 650, type: !15)
!719 = !DILocalVariable(name: "i", scope: !711, file: !225, line: 650, type: !15)
!720 = !DILocalVariable(name: "ires", scope: !711, file: !225, line: 650, type: !15)
!721 = !DILocalVariable(name: "db", scope: !711, file: !225, line: 651, type: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASE", file: !723, line: 84, baseType: !724)
!723 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/database.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "d8cc1ae4cf951fbe7cfd9585ec1cbb55")
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASEt", file: !723, line: 82, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 65, size: 33024, elements: !727)
!727 = !{!728, !729, !730, !732, !733, !734, !738, !740, !741, !742, !744, !745, !746}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "iAccessMode", scope: !726, file: !723, line: 66, baseType: !15, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fDataBase", scope: !726, file: !723, line: 67, baseType: !336, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sFileName", scope: !726, file: !723, line: 68, baseType: !731, size: 2048, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "String", file: !723, line: 48, baseType: !267)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "iOpenMode", scope: !726, file: !723, line: 69, baseType: !15, size: 32, offset: 2176)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefix", scope: !726, file: !723, line: 70, baseType: !15, size: 32, offset: 2208)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "saPrefixStack", scope: !726, file: !723, line: 71, baseType: !735, size: 20480, offset: 2240)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 20480, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 10)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bCompactFileAtClose", scope: !726, file: !723, line: 72, baseType: !739, size: 8, offset: 22720)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !723, line: 47, baseType: !21)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dEntries", scope: !726, file: !723, line: 73, baseType: !5, size: 64, offset: 22784)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "iCurrentLine", scope: !726, file: !723, line: 74, baseType: !15, size: 32, offset: 22848)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "sLookAhead", scope: !726, file: !723, line: 75, baseType: !743, size: 8000, offset: 22880)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8000, elements: !248)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "iLastSequentialOperation", scope: !726, file: !723, line: 76, baseType: !15, size: 32, offset: 30880)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sLoopPrefix", scope: !726, file: !723, line: 79, baseType: !731, size: 2048, offset: 30912)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "dlEntryLoop", scope: !726, file: !723, line: 80, baseType: !15, size: 32, offset: 32960)
!747 = !DILocalVariable(name: "bresult", scope: !711, file: !225, line: 652, type: !739)
!748 = !DILocalVariable(name: "typex", scope: !711, file: !225, line: 653, type: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 3200, elements: !426)
!750 = !DILocalVariable(name: "resx", scope: !711, file: !225, line: 653, type: !749)
!751 = !DILocalVariable(name: "flags", scope: !711, file: !225, line: 653, type: !749)
!752 = !DILocalVariable(name: "seq", scope: !711, file: !225, line: 654, type: !749)
!753 = !DILocalVariable(name: "elmnt", scope: !711, file: !225, line: 654, type: !749)
!754 = !DILocalVariable(name: "atom1x", scope: !711, file: !225, line: 655, type: !749)
!755 = !DILocalVariable(name: "atom2x", scope: !711, file: !225, line: 655, type: !749)
!756 = !DILocalVariable(name: "chg", scope: !711, file: !225, line: 656, type: !757)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 6400, elements: !426)
!758 = !DILocalVariable(name: "x", scope: !711, file: !225, line: 656, type: !757)
!759 = !DILocalVariable(name: "y", scope: !711, file: !225, line: 656, type: !757)
!760 = !DILocalVariable(name: "z", scope: !711, file: !225, line: 656, type: !757)
!761 = !DILocalVariable(name: "a_name", scope: !711, file: !225, line: 657, type: !762)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8000, elements: !763)
!763 = !{!427, !737}
!764 = !DILocalVariable(name: "type", scope: !711, file: !225, line: 657, type: !762)
!765 = !DILocalVariable(name: "res_name", scope: !711, file: !225, line: 657, type: !762)
!766 = !DILocalVariable(name: "prefix", scope: !711, file: !225, line: 658, type: !767)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2040, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 255)
!770 = !DILocation(line: 0, scope: !711, inlinedAt: !771)
!771 = distinct !DILocation(line: 451, column: 3, scope: !772)
!772 = distinct !DILexicalBlock(scope: !708, file: !225, line: 450, column: 17)
!773 = !DILocation(line: 650, column: 2, scope: !711, inlinedAt: !771)
!774 = !DILocation(line: 653, column: 2, scope: !711, inlinedAt: !771)
!775 = !DILocation(line: 653, column: 6, scope: !711, inlinedAt: !771)
!776 = !DILocation(line: 653, column: 20, scope: !711, inlinedAt: !771)
!777 = !DILocation(line: 653, column: 33, scope: !711, inlinedAt: !771)
!778 = !DILocation(line: 654, column: 3, scope: !711, inlinedAt: !771)
!779 = !DILocation(line: 654, column: 15, scope: !711, inlinedAt: !771)
!780 = !DILocation(line: 655, column: 2, scope: !711, inlinedAt: !771)
!781 = !DILocation(line: 655, column: 6, scope: !711, inlinedAt: !771)
!782 = !DILocation(line: 655, column: 21, scope: !711, inlinedAt: !771)
!783 = !DILocation(line: 656, column: 2, scope: !711, inlinedAt: !771)
!784 = !DILocation(line: 656, column: 9, scope: !711, inlinedAt: !771)
!785 = !DILocation(line: 656, column: 21, scope: !711, inlinedAt: !771)
!786 = !DILocation(line: 656, column: 31, scope: !711, inlinedAt: !771)
!787 = !DILocation(line: 656, column: 41, scope: !711, inlinedAt: !771)
!788 = !DILocation(line: 657, column: 2, scope: !711, inlinedAt: !771)
!789 = !DILocation(line: 657, column: 7, scope: !711, inlinedAt: !771)
!790 = !DILocation(line: 657, column: 28, scope: !711, inlinedAt: !771)
!791 = !DILocation(line: 657, column: 47, scope: !711, inlinedAt: !771)
!792 = !DILocation(line: 658, column: 2, scope: !711, inlinedAt: !771)
!793 = !DILocation(line: 658, column: 7, scope: !711, inlinedAt: !771)
!794 = !DILocation(line: 660, column: 10, scope: !711, inlinedAt: !771)
!795 = !{!307, !307, i64 0}
!796 = !DILocation(line: 661, column: 7, scope: !711, inlinedAt: !771)
!797 = !DILocation(line: 665, column: 52, scope: !711, inlinedAt: !771)
!798 = !DILocation(line: 665, column: 12, scope: !711, inlinedAt: !771)
!799 = !DILocation(line: 667, column: 23, scope: !800, inlinedAt: !771)
!800 = distinct !DILexicalBlock(scope: !801, file: !225, line: 667, column: 2)
!801 = distinct !DILexicalBlock(scope: !711, file: !225, line: 667, column: 2)
!802 = !DILocation(line: 667, column: 21, scope: !800, inlinedAt: !771)
!803 = !DILocation(line: 667, column: 2, scope: !801, inlinedAt: !771)
!804 = !DILocation(line: 671, column: 33, scope: !805, inlinedAt: !771)
!805 = distinct !DILexicalBlock(scope: !800, file: !225, line: 667, column: 43)
!806 = !DILocation(line: 671, column: 3, scope: !805, inlinedAt: !771)
!807 = !DILocation(line: 672, column: 3, scope: !805, inlinedAt: !771)
!808 = !DILocation(line: 673, column: 3, scope: !805, inlinedAt: !771)
!809 = !DILocation(line: 674, column: 13, scope: !805, inlinedAt: !771)
!810 = !DILocation(line: 678, column: 13, scope: !805, inlinedAt: !771)
!811 = !DILocation(line: 699, column: 13, scope: !805, inlinedAt: !771)
!812 = !DILocation(line: 718, column: 18, scope: !813, inlinedAt: !771)
!813 = distinct !DILexicalBlock(scope: !814, file: !225, line: 718, column: 3)
!814 = distinct !DILexicalBlock(scope: !805, file: !225, line: 718, column: 3)
!815 = !DILocation(line: 718, column: 16, scope: !813, inlinedAt: !771)
!816 = !DILocation(line: 718, column: 3, scope: !814, inlinedAt: !771)
!817 = !DILocation(line: 719, column: 10, scope: !818, inlinedAt: !771)
!818 = distinct !DILexicalBlock(scope: !813, file: !225, line: 718, column: 32)
!819 = !DILocation(line: 720, column: 4, scope: !818, inlinedAt: !771)
!820 = !DILocation(line: 721, column: 16, scope: !818, inlinedAt: !771)
!821 = !DILocation(line: 721, column: 28, scope: !818, inlinedAt: !771)
!822 = !DILocation(line: 721, column: 4, scope: !818, inlinedAt: !771)
!823 = !DILocation(line: 722, column: 21, scope: !818, inlinedAt: !771)
!824 = !{!694, !694, i64 0}
!825 = !DILocation(line: 722, column: 8, scope: !818, inlinedAt: !771)
!826 = !DILocation(line: 722, column: 19, scope: !818, inlinedAt: !771)
!827 = !{!693, !694, i64 64}
!828 = !DILocation(line: 723, column: 21, scope: !818, inlinedAt: !771)
!829 = !DILocation(line: 723, column: 4, scope: !818, inlinedAt: !771)
!830 = !DILocation(line: 723, column: 19, scope: !818, inlinedAt: !771)
!831 = !DILocation(line: 724, column: 21, scope: !818, inlinedAt: !771)
!832 = !DILocation(line: 724, column: 4, scope: !818, inlinedAt: !771)
!833 = !DILocation(line: 724, column: 19, scope: !818, inlinedAt: !771)
!834 = !DILocation(line: 725, column: 21, scope: !818, inlinedAt: !771)
!835 = !DILocation(line: 725, column: 4, scope: !818, inlinedAt: !771)
!836 = !DILocation(line: 725, column: 19, scope: !818, inlinedAt: !771)
!837 = !DILocation(line: 718, column: 28, scope: !813, inlinedAt: !771)
!838 = distinct !{!838, !816, !839, !314, !315}
!839 = !DILocation(line: 726, column: 3, scope: !814, inlinedAt: !771)
!840 = !DILocation(line: 728, column: 15, scope: !841, inlinedAt: !771)
!841 = distinct !DILexicalBlock(scope: !805, file: !225, line: 728, column: 7)
!842 = !DILocation(line: 728, column: 7, scope: !805, inlinedAt: !771)
!843 = !DILocation(line: 729, column: 4, scope: !841, inlinedAt: !771)
!844 = !DILocation(line: 733, column: 13, scope: !805, inlinedAt: !771)
!845 = !DILocation(line: 752, column: 16, scope: !846, inlinedAt: !771)
!846 = distinct !DILexicalBlock(scope: !847, file: !225, line: 752, column: 3)
!847 = distinct !DILexicalBlock(scope: !805, file: !225, line: 752, column: 3)
!848 = !DILocation(line: 752, column: 3, scope: !847, inlinedAt: !771)
!849 = !DILocation(line: 753, column: 22, scope: !850, inlinedAt: !771)
!850 = distinct !DILexicalBlock(scope: !846, file: !225, line: 752, column: 32)
!851 = !DILocation(line: 753, column: 4, scope: !850, inlinedAt: !771)
!852 = !DILocation(line: 753, column: 20, scope: !850, inlinedAt: !771)
!853 = !DILocation(line: 754, column: 22, scope: !850, inlinedAt: !771)
!854 = !DILocation(line: 754, column: 4, scope: !850, inlinedAt: !771)
!855 = !DILocation(line: 754, column: 20, scope: !850, inlinedAt: !771)
!856 = !DILocation(line: 752, column: 28, scope: !846, inlinedAt: !771)
!857 = distinct !{!857, !848, !858, !314, !315}
!858 = !DILocation(line: 755, column: 3, scope: !847, inlinedAt: !771)
!859 = !DILocation(line: 758, column: 10, scope: !860, inlinedAt: !771)
!860 = distinct !DILexicalBlock(scope: !805, file: !225, line: 757, column: 10)
!861 = !DILocation(line: 667, column: 39, scope: !800, inlinedAt: !771)
!862 = distinct !{!862, !803, !863, !314, !315}
!863 = !DILocation(line: 759, column: 2, scope: !801, inlinedAt: !771)
!864 = !DILocation(line: 760, column: 1, scope: !711, inlinedAt: !771)
!865 = !DILocation(line: 452, column: 2, scope: !772)
!866 = !DILocalVariable(name: "rfp", arg: 1, scope: !867, file: !225, line: 762, type: !336)
!867 = distinct !DISubprogram(name: "pdb2reslib", scope: !225, file: !225, line: 762, type: !868, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !336, !223}
!870 = !{!866, !871, !872, !873, !875, !876, !877, !878, !879, !880, !881, !882}
!871 = !DILocalVariable(name: "rlp", arg: 2, scope: !867, file: !225, line: 762, type: !223)
!872 = !DILocalVariable(name: "line", scope: !867, file: !225, line: 764, type: !267)
!873 = !DILocalVariable(name: "ltype", scope: !867, file: !225, line: 765, type: !874)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 80, elements: !736)
!875 = !DILocalVariable(name: "a_name", scope: !867, file: !225, line: 765, type: !874)
!876 = !DILocalVariable(name: "r_name", scope: !867, file: !225, line: 765, type: !874)
!877 = !DILocalVariable(name: "a_num", scope: !867, file: !225, line: 766, type: !15)
!878 = !DILocalVariable(name: "r_num", scope: !867, file: !225, line: 766, type: !15)
!879 = !DILocalVariable(name: "x", scope: !867, file: !225, line: 767, type: !40)
!880 = !DILocalVariable(name: "y", scope: !867, file: !225, line: 767, type: !40)
!881 = !DILocalVariable(name: "z", scope: !867, file: !225, line: 767, type: !40)
!882 = !DILocalVariable(name: "ap", scope: !867, file: !225, line: 768, type: !192)
!883 = !DILocation(line: 0, scope: !867, inlinedAt: !884)
!884 = distinct !DILocation(line: 453, column: 3, scope: !885)
!885 = distinct !DILexicalBlock(scope: !708, file: !225, line: 452, column: 7)
!886 = !DILocation(line: 764, column: 2, scope: !867, inlinedAt: !884)
!887 = !DILocation(line: 764, column: 7, scope: !867, inlinedAt: !884)
!888 = !DILocation(line: 765, column: 2, scope: !867, inlinedAt: !884)
!889 = !DILocation(line: 765, column: 7, scope: !867, inlinedAt: !884)
!890 = !DILocation(line: 765, column: 20, scope: !867, inlinedAt: !884)
!891 = !DILocation(line: 765, column: 34, scope: !867, inlinedAt: !884)
!892 = !DILocation(line: 766, column: 2, scope: !867, inlinedAt: !884)
!893 = !DILocation(line: 767, column: 2, scope: !867, inlinedAt: !884)
!894 = !DILocation(line: 770, column: 10, scope: !867, inlinedAt: !884)
!895 = !DILocation(line: 771, column: 11, scope: !867, inlinedAt: !884)
!896 = !DILocation(line: 772, column: 9, scope: !867, inlinedAt: !884)
!897 = !DILocation(line: 772, column: 2, scope: !867, inlinedAt: !884)
!898 = !DILocation(line: 773, column: 7, scope: !899, inlinedAt: !884)
!899 = distinct !DILexicalBlock(scope: !900, file: !225, line: 773, column: 7)
!900 = distinct !DILexicalBlock(scope: !867, file: !225, line: 772, column: 45)
!901 = !DILocation(line: 773, column: 36, scope: !899, inlinedAt: !884)
!902 = !DILocation(line: 773, column: 7, scope: !900, inlinedAt: !884)
!903 = !DILocalVariable(name: "rlp", arg: 1, scope: !904, file: !225, line: 978, type: !223)
!904 = distinct !DISubprogram(name: "setrlibattrs", scope: !225, file: !225, line: 978, type: !905, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !907)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !223, !220}
!907 = !{!903, !908, !909, !910}
!908 = !DILocalVariable(name: "line", arg: 2, scope: !904, file: !225, line: 978, type: !220)
!909 = !DILocalVariable(name: "rkind", scope: !904, file: !225, line: 980, type: !425)
!910 = !DILocalVariable(name: "rakind", scope: !904, file: !225, line: 980, type: !425)
!911 = !DILocation(line: 0, scope: !904, inlinedAt: !912)
!912 = distinct !DILocation(line: 774, column: 4, scope: !913, inlinedAt: !884)
!913 = distinct !DILexicalBlock(scope: !899, file: !225, line: 773, column: 42)
!914 = !DILocation(line: 980, column: 2, scope: !904, inlinedAt: !912)
!915 = !DILocation(line: 980, column: 7, scope: !904, inlinedAt: !912)
!916 = !DILocation(line: 980, column: 21, scope: !904, inlinedAt: !912)
!917 = !DILocation(line: 982, column: 6, scope: !918, inlinedAt: !912)
!918 = distinct !DILexicalBlock(scope: !904, file: !225, line: 982, column: 6)
!919 = !DILocation(line: 982, column: 59, scope: !918, inlinedAt: !912)
!920 = !DILocation(line: 982, column: 6, scope: !904, inlinedAt: !912)
!921 = !DILocation(line: 984, column: 6, scope: !922, inlinedAt: !912)
!922 = distinct !DILexicalBlock(scope: !904, file: !225, line: 984, column: 6)
!923 = !DILocation(line: 984, column: 6, scope: !904, inlinedAt: !912)
!924 = !DILocation(line: 987, column: 3, scope: !925, inlinedAt: !912)
!925 = distinct !DILexicalBlock(scope: !922, file: !225, line: 986, column: 11)
!926 = !DILocation(line: 988, column: 11, scope: !927, inlinedAt: !912)
!927 = distinct !DILexicalBlock(scope: !925, file: !225, line: 988, column: 11)
!928 = !DILocation(line: 988, column: 33, scope: !927, inlinedAt: !912)
!929 = !DILocation(line: 988, column: 11, scope: !925, inlinedAt: !912)
!930 = !DILocation(line: 0, scope: !922, inlinedAt: !912)
!931 = !DILocation(line: 990, column: 6, scope: !932, inlinedAt: !912)
!932 = distinct !DILexicalBlock(scope: !904, file: !225, line: 990, column: 6)
!933 = !DILocation(line: 990, column: 33, scope: !932, inlinedAt: !912)
!934 = !DILocation(line: 990, column: 6, scope: !904, inlinedAt: !912)
!935 = !DILocation(line: 992, column: 11, scope: !936, inlinedAt: !912)
!936 = distinct !DILexicalBlock(scope: !932, file: !225, line: 992, column: 11)
!937 = !DILocation(line: 992, column: 11, scope: !932, inlinedAt: !912)
!938 = !DILocation(line: 0, scope: !932, inlinedAt: !912)
!939 = !DILocation(line: 994, column: 1, scope: !904, inlinedAt: !912)
!940 = !DILocation(line: 775, column: 3, scope: !913, inlinedAt: !884)
!941 = !DILocation(line: 775, column: 13, scope: !942, inlinedAt: !884)
!942 = distinct !DILexicalBlock(scope: !899, file: !225, line: 775, column: 13)
!943 = !DILocation(line: 775, column: 45, scope: !942, inlinedAt: !884)
!944 = !DILocation(line: 776, column: 4, scope: !942, inlinedAt: !884)
!945 = !DILocation(line: 776, column: 33, scope: !942, inlinedAt: !884)
!946 = !DILocation(line: 775, column: 13, scope: !899, inlinedAt: !884)
!947 = !DILocation(line: 778, column: 4, scope: !948, inlinedAt: !884)
!948 = distinct !DILexicalBlock(scope: !942, file: !225, line: 776, column: 39)
!949 = !DILocation(line: 785, column: 8, scope: !950, inlinedAt: !884)
!950 = distinct !DILexicalBlock(scope: !948, file: !225, line: 785, column: 8)
!951 = !DILocation(line: 785, column: 34, scope: !950, inlinedAt: !884)
!952 = !DILocation(line: 0, scope: !948, inlinedAt: !884)
!953 = !DILocation(line: 785, column: 8, scope: !948, inlinedAt: !884)
!954 = !DILocation(line: 786, column: 17, scope: !955, inlinedAt: !884)
!955 = distinct !DILexicalBlock(scope: !956, file: !225, line: 786, column: 9)
!956 = distinct !DILexicalBlock(scope: !950, file: !225, line: 785, column: 40)
!957 = !DILocation(line: 786, column: 9, scope: !956, inlinedAt: !884)
!958 = !DILocation(line: 787, column: 6, scope: !959, inlinedAt: !884)
!959 = distinct !DILexicalBlock(scope: !955, file: !225, line: 786, column: 22)
!960 = !DILocation(line: 788, column: 14, scope: !959, inlinedAt: !884)
!961 = !DILocation(line: 789, column: 5, scope: !959, inlinedAt: !884)
!962 = !DILocation(line: 790, column: 5, scope: !956, inlinedAt: !884)
!963 = !DILocation(line: 791, column: 4, scope: !956, inlinedAt: !884)
!964 = !DILocation(line: 792, column: 17, scope: !948, inlinedAt: !884)
!965 = !DILocation(line: 792, column: 10, scope: !948, inlinedAt: !884)
!966 = !DILocation(line: 793, column: 4, scope: !948, inlinedAt: !884)
!967 = !DILocation(line: 794, column: 16, scope: !948, inlinedAt: !884)
!968 = !DILocation(line: 794, column: 4, scope: !948, inlinedAt: !884)
!969 = !DILocation(line: 795, column: 21, scope: !948, inlinedAt: !884)
!970 = !DILocation(line: 795, column: 4, scope: !948, inlinedAt: !884)
!971 = !DILocation(line: 795, column: 19, scope: !948, inlinedAt: !884)
!972 = !DILocation(line: 796, column: 21, scope: !948, inlinedAt: !884)
!973 = !DILocation(line: 796, column: 4, scope: !948, inlinedAt: !884)
!974 = !DILocation(line: 796, column: 19, scope: !948, inlinedAt: !884)
!975 = !DILocation(line: 797, column: 21, scope: !948, inlinedAt: !884)
!976 = !DILocation(line: 797, column: 4, scope: !948, inlinedAt: !884)
!977 = !DILocation(line: 797, column: 19, scope: !948, inlinedAt: !884)
!978 = !DILocation(line: 798, column: 11, scope: !948, inlinedAt: !884)
!979 = !DILocation(line: 799, column: 3, scope: !948, inlinedAt: !884)
!980 = distinct !{!980, !897, !981, !314, !315}
!981 = !DILocation(line: 800, column: 2, scope: !867, inlinedAt: !884)
!982 = !DILocation(line: 801, column: 6, scope: !983, inlinedAt: !884)
!983 = distinct !DILexicalBlock(scope: !867, file: !225, line: 801, column: 6)
!984 = !DILocation(line: 801, column: 14, scope: !983, inlinedAt: !884)
!985 = !DILocation(line: 801, column: 6, scope: !867, inlinedAt: !884)
!986 = !DILocation(line: 802, column: 3, scope: !983, inlinedAt: !884)
!987 = !DILocation(line: 803, column: 1, scope: !867, inlinedAt: !884)
!988 = !DILocalVariable(name: "bfp", arg: 1, scope: !989, file: !225, line: 805, type: !336)
!989 = distinct !DISubprogram(name: "bnd2reslib", scope: !225, file: !225, line: 805, type: !868, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !990)
!990 = !{!988, !991, !992, !993, !994, !995, !996}
!991 = !DILocalVariable(name: "rlp", arg: 2, scope: !989, file: !225, line: 805, type: !223)
!992 = !DILocalVariable(name: "line", scope: !989, file: !225, line: 807, type: !267)
!993 = !DILocalVariable(name: "r_name", scope: !989, file: !225, line: 808, type: !392)
!994 = !DILocalVariable(name: "llen", scope: !989, file: !225, line: 809, type: !15)
!995 = !DILocalVariable(name: "bi", scope: !989, file: !225, line: 810, type: !15)
!996 = !DILocalVariable(name: "bj", scope: !989, file: !225, line: 810, type: !15)
!997 = !DILocation(line: 0, scope: !989, inlinedAt: !998)
!998 = distinct !DILocation(line: 454, column: 3, scope: !885)
!999 = !DILocation(line: 807, column: 2, scope: !989, inlinedAt: !998)
!1000 = !DILocation(line: 807, column: 7, scope: !989, inlinedAt: !998)
!1001 = !DILocation(line: 808, column: 2, scope: !989, inlinedAt: !998)
!1002 = !DILocation(line: 808, column: 7, scope: !989, inlinedAt: !998)
!1003 = !DILocation(line: 810, column: 2, scope: !989, inlinedAt: !998)
!1004 = !DILocation(line: 812, column: 10, scope: !989, inlinedAt: !998)
!1005 = !DILocation(line: 813, column: 10, scope: !989, inlinedAt: !998)
!1006 = !DILocation(line: 814, column: 9, scope: !989, inlinedAt: !998)
!1007 = !DILocation(line: 814, column: 2, scope: !989, inlinedAt: !998)
!1008 = !DILocation(line: 815, column: 7, scope: !1009, inlinedAt: !998)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !225, line: 815, column: 7)
!1010 = distinct !DILexicalBlock(scope: !989, file: !225, line: 814, column: 45)
!1011 = !DILocation(line: 815, column: 13, scope: !1009, inlinedAt: !998)
!1012 = !DILocation(line: 815, column: 7, scope: !1010, inlinedAt: !998)
!1013 = !DILocation(line: 816, column: 8, scope: !1014, inlinedAt: !998)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !225, line: 816, column: 8)
!1015 = distinct !DILexicalBlock(scope: !1009, file: !225, line: 815, column: 21)
!1016 = !DILocation(line: 816, column: 39, scope: !1014, inlinedAt: !998)
!1017 = !DILocation(line: 816, column: 8, scope: !1015, inlinedAt: !998)
!1018 = !DILocation(line: 817, column: 12, scope: !1019, inlinedAt: !998)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !225, line: 816, column: 45)
!1020 = !DILocation(line: 818, column: 12, scope: !1019, inlinedAt: !998)
!1021 = !DILocation(line: 819, column: 5, scope: !1019, inlinedAt: !998)
!1022 = !DILocation(line: 820, column: 5, scope: !1019, inlinedAt: !998)
!1023 = !DILocation(line: 822, column: 5, scope: !1019, inlinedAt: !998)
!1024 = !DILocation(line: 823, column: 14, scope: !1025, inlinedAt: !998)
!1025 = distinct !DILexicalBlock(scope: !1014, file: !225, line: 823, column: 14)
!1026 = !DILocation(line: 823, column: 22, scope: !1025, inlinedAt: !998)
!1027 = !DILocation(line: 823, column: 14, scope: !1014, inlinedAt: !998)
!1028 = !DILocation(line: 824, column: 5, scope: !1029, inlinedAt: !998)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !225, line: 823, column: 27)
!1030 = !DILocation(line: 825, column: 5, scope: !1029, inlinedAt: !998)
!1031 = !DILocation(line: 826, column: 13, scope: !1029, inlinedAt: !998)
!1032 = !DILocation(line: 827, column: 4, scope: !1029, inlinedAt: !998)
!1033 = !DILocation(line: 828, column: 5, scope: !1025, inlinedAt: !998)
!1034 = !DILocation(line: 830, column: 8, scope: !1035, inlinedAt: !998)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !225, line: 830, column: 8)
!1036 = distinct !DILexicalBlock(scope: !1009, file: !225, line: 829, column: 8)
!1037 = !DILocation(line: 830, column: 42, scope: !1035, inlinedAt: !998)
!1038 = !DILocation(line: 830, column: 8, scope: !1036, inlinedAt: !998)
!1039 = !DILocation(line: 831, column: 12, scope: !1040, inlinedAt: !998)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !225, line: 830, column: 48)
!1041 = !DILocation(line: 832, column: 12, scope: !1040, inlinedAt: !998)
!1042 = !DILocation(line: 833, column: 5, scope: !1040, inlinedAt: !998)
!1043 = !DILocation(line: 834, column: 5, scope: !1040, inlinedAt: !998)
!1044 = !DILocation(line: 836, column: 5, scope: !1040, inlinedAt: !998)
!1045 = !DILocation(line: 838, column: 29, scope: !1046, inlinedAt: !998)
!1046 = distinct !DILexicalBlock(scope: !1035, file: !225, line: 837, column: 9)
!1047 = !DILocation(line: 838, column: 12, scope: !1046, inlinedAt: !998)
!1048 = !DILocation(line: 838, column: 5, scope: !1046, inlinedAt: !998)
!1049 = !DILocation(line: 838, column: 27, scope: !1046, inlinedAt: !998)
!1050 = !DILocation(line: 839, column: 29, scope: !1046, inlinedAt: !998)
!1051 = !DILocation(line: 839, column: 5, scope: !1046, inlinedAt: !998)
!1052 = !DILocation(line: 839, column: 27, scope: !1046, inlinedAt: !998)
!1053 = !DILocation(line: 840, column: 12, scope: !1046, inlinedAt: !998)
!1054 = distinct !{!1054, !1007, !1055, !314, !315}
!1055 = !DILocation(line: 843, column: 2, scope: !989, inlinedAt: !998)
!1056 = !DILocation(line: 844, column: 6, scope: !1057, inlinedAt: !998)
!1057 = distinct !DILexicalBlock(scope: !989, file: !225, line: 844, column: 6)
!1058 = !DILocation(line: 844, column: 14, scope: !1057, inlinedAt: !998)
!1059 = !DILocation(line: 844, column: 6, scope: !989, inlinedAt: !998)
!1060 = !DILocation(line: 845, column: 3, scope: !1057, inlinedAt: !998)
!1061 = !DILocation(line: 846, column: 1, scope: !989, inlinedAt: !998)
!1062 = !DILocation(line: 455, column: 3, scope: !885)
!1063 = !DILocation(line: 456, column: 3, scope: !885)
!1064 = !DILocation(line: 459, column: 6, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !332, file: !225, line: 459, column: 6)
!1066 = !DILocation(line: 459, column: 6, scope: !332)
!1067 = !DILocalVariable(name: "qfp", arg: 1, scope: !1068, file: !225, line: 937, type: !336)
!1068 = distinct !DISubprogram(name: "qr2reslib", scope: !225, file: !225, line: 937, type: !868, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1069)
!1069 = !{!1067, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1070 = !DILocalVariable(name: "rlp", arg: 2, scope: !1068, file: !225, line: 937, type: !223)
!1071 = !DILocalVariable(name: "line", scope: !1068, file: !225, line: 939, type: !267)
!1072 = !DILocalVariable(name: "ltype", scope: !1068, file: !225, line: 940, type: !874)
!1073 = !DILocalVariable(name: "a_name", scope: !1068, file: !225, line: 940, type: !874)
!1074 = !DILocalVariable(name: "r_name", scope: !1068, file: !225, line: 940, type: !874)
!1075 = !DILocalVariable(name: "a_num", scope: !1068, file: !225, line: 941, type: !15)
!1076 = !DILocalVariable(name: "r_num", scope: !1068, file: !225, line: 941, type: !15)
!1077 = !DILocalVariable(name: "q", scope: !1068, file: !225, line: 942, type: !40)
!1078 = !DILocalVariable(name: "r", scope: !1068, file: !225, line: 942, type: !40)
!1079 = !DILocalVariable(name: "ap", scope: !1068, file: !225, line: 943, type: !192)
!1080 = !DILocation(line: 0, scope: !1068, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 460, column: 3, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1065, file: !225, line: 459, column: 11)
!1083 = !DILocation(line: 939, column: 2, scope: !1068, inlinedAt: !1081)
!1084 = !DILocation(line: 939, column: 7, scope: !1068, inlinedAt: !1081)
!1085 = !DILocation(line: 940, column: 2, scope: !1068, inlinedAt: !1081)
!1086 = !DILocation(line: 940, column: 7, scope: !1068, inlinedAt: !1081)
!1087 = !DILocation(line: 940, column: 20, scope: !1068, inlinedAt: !1081)
!1088 = !DILocation(line: 940, column: 34, scope: !1068, inlinedAt: !1081)
!1089 = !DILocation(line: 941, column: 2, scope: !1068, inlinedAt: !1081)
!1090 = !DILocation(line: 942, column: 2, scope: !1068, inlinedAt: !1081)
!1091 = !DILocation(line: 945, column: 10, scope: !1068, inlinedAt: !1081)
!1092 = !DILocation(line: 946, column: 11, scope: !1068, inlinedAt: !1081)
!1093 = !DILocation(line: 947, column: 9, scope: !1068, inlinedAt: !1081)
!1094 = !DILocation(line: 947, column: 2, scope: !1068, inlinedAt: !1081)
!1095 = !DILocation(line: 948, column: 7, scope: !1096, inlinedAt: !1081)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !225, line: 948, column: 7)
!1097 = distinct !DILexicalBlock(scope: !1068, file: !225, line: 947, column: 45)
!1098 = !DILocation(line: 948, column: 33, scope: !1096, inlinedAt: !1081)
!1099 = !DILocation(line: 948, column: 7, scope: !1097, inlinedAt: !1081)
!1100 = !DILocation(line: 950, column: 13, scope: !1101, inlinedAt: !1081)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !225, line: 950, column: 13)
!1102 = !DILocation(line: 950, column: 45, scope: !1101, inlinedAt: !1081)
!1103 = !DILocation(line: 951, column: 4, scope: !1101, inlinedAt: !1081)
!1104 = !DILocation(line: 951, column: 33, scope: !1101, inlinedAt: !1081)
!1105 = !DILocation(line: 950, column: 13, scope: !1096, inlinedAt: !1081)
!1106 = !DILocation(line: 953, column: 4, scope: !1107, inlinedAt: !1081)
!1107 = distinct !DILexicalBlock(scope: !1101, file: !225, line: 951, column: 39)
!1108 = !DILocation(line: 959, column: 8, scope: !1109, inlinedAt: !1081)
!1109 = distinct !DILexicalBlock(scope: !1107, file: !225, line: 959, column: 8)
!1110 = !DILocation(line: 959, column: 34, scope: !1109, inlinedAt: !1081)
!1111 = !DILocation(line: 0, scope: !1107, inlinedAt: !1081)
!1112 = !DILocation(line: 959, column: 8, scope: !1107, inlinedAt: !1081)
!1113 = !DILocation(line: 960, column: 17, scope: !1114, inlinedAt: !1081)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !225, line: 960, column: 9)
!1115 = distinct !DILexicalBlock(scope: !1109, file: !225, line: 959, column: 40)
!1116 = !DILocation(line: 960, column: 9, scope: !1115, inlinedAt: !1081)
!1117 = !DILocation(line: 961, column: 6, scope: !1118, inlinedAt: !1081)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !225, line: 960, column: 22)
!1119 = !DILocation(line: 962, column: 14, scope: !1118, inlinedAt: !1081)
!1120 = !DILocation(line: 963, column: 5, scope: !1118, inlinedAt: !1081)
!1121 = !DILocation(line: 964, column: 5, scope: !1115, inlinedAt: !1081)
!1122 = !DILocation(line: 965, column: 4, scope: !1115, inlinedAt: !1081)
!1123 = !DILocation(line: 966, column: 17, scope: !1107, inlinedAt: !1081)
!1124 = !DILocation(line: 966, column: 10, scope: !1107, inlinedAt: !1081)
!1125 = !DILocation(line: 967, column: 4, scope: !1107, inlinedAt: !1081)
!1126 = !DILocation(line: 968, column: 16, scope: !1107, inlinedAt: !1081)
!1127 = !DILocation(line: 968, column: 4, scope: !1107, inlinedAt: !1081)
!1128 = !DILocation(line: 969, column: 19, scope: !1107, inlinedAt: !1081)
!1129 = !DILocation(line: 969, column: 8, scope: !1107, inlinedAt: !1081)
!1130 = !DILocation(line: 969, column: 17, scope: !1107, inlinedAt: !1081)
!1131 = !DILocation(line: 970, column: 19, scope: !1107, inlinedAt: !1081)
!1132 = !DILocation(line: 970, column: 8, scope: !1107, inlinedAt: !1081)
!1133 = !DILocation(line: 970, column: 17, scope: !1107, inlinedAt: !1081)
!1134 = !{!693, !694, i64 72}
!1135 = !DILocation(line: 971, column: 11, scope: !1107, inlinedAt: !1081)
!1136 = !DILocation(line: 972, column: 3, scope: !1107, inlinedAt: !1081)
!1137 = distinct !{!1137, !1094, !1138, !314, !315}
!1138 = !DILocation(line: 973, column: 2, scope: !1068, inlinedAt: !1081)
!1139 = !DILocation(line: 974, column: 6, scope: !1140, inlinedAt: !1081)
!1140 = distinct !DILexicalBlock(scope: !1068, file: !225, line: 974, column: 6)
!1141 = !DILocation(line: 974, column: 14, scope: !1140, inlinedAt: !1081)
!1142 = !DILocation(line: 974, column: 6, scope: !1068, inlinedAt: !1081)
!1143 = !DILocation(line: 975, column: 3, scope: !1140, inlinedAt: !1081)
!1144 = !DILocation(line: 976, column: 1, scope: !1068, inlinedAt: !1081)
!1145 = !DILocation(line: 461, column: 3, scope: !1082)
!1146 = !DILocation(line: 462, column: 2, scope: !1082)
!1147 = !DILocation(line: 464, column: 6, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !332, file: !225, line: 464, column: 6)
!1149 = !DILocation(line: 464, column: 6, scope: !332)
!1150 = !DILocalVariable(name: "cfp", arg: 1, scope: !1151, file: !225, line: 848, type: !336)
!1151 = distinct !DISubprogram(name: "chi2reslib", scope: !225, file: !225, line: 848, type: !868, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1152)
!1152 = !{!1150, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1153 = !DILocalVariable(name: "rlp", arg: 2, scope: !1151, file: !225, line: 848, type: !223)
!1154 = !DILocalVariable(name: "line", scope: !1151, file: !225, line: 850, type: !267)
!1155 = !DILocalVariable(name: "r_name", scope: !1151, file: !225, line: 851, type: !392)
!1156 = !DILocalVariable(name: "llen", scope: !1151, file: !225, line: 852, type: !15)
!1157 = !DILocalVariable(name: "res", scope: !1151, file: !225, line: 853, type: !6)
!1158 = !DILocalVariable(name: "res1", scope: !1151, file: !225, line: 853, type: !6)
!1159 = !DILocalVariable(name: "anm1", scope: !1151, file: !225, line: 854, type: !254)
!1160 = !DILocalVariable(name: "anm2", scope: !1151, file: !225, line: 854, type: !254)
!1161 = !DILocalVariable(name: "anm3", scope: !1151, file: !225, line: 854, type: !254)
!1162 = !DILocalVariable(name: "anm4", scope: !1151, file: !225, line: 854, type: !254)
!1163 = !DILocalVariable(name: "a1", scope: !1151, file: !225, line: 855, type: !15)
!1164 = !DILocalVariable(name: "a2", scope: !1151, file: !225, line: 855, type: !15)
!1165 = !DILocalVariable(name: "a3", scope: !1151, file: !225, line: 855, type: !15)
!1166 = !DILocalVariable(name: "a4", scope: !1151, file: !225, line: 855, type: !15)
!1167 = !DILocalVariable(name: "ap", scope: !1151, file: !225, line: 856, type: !192)
!1168 = !DILocalVariable(name: "cp", scope: !1151, file: !225, line: 857, type: !181)
!1169 = !DILocation(line: 0, scope: !1151, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 465, column: 3, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1148, file: !225, line: 464, column: 11)
!1172 = !DILocation(line: 850, column: 2, scope: !1151, inlinedAt: !1170)
!1173 = !DILocation(line: 850, column: 7, scope: !1151, inlinedAt: !1170)
!1174 = !DILocation(line: 851, column: 2, scope: !1151, inlinedAt: !1170)
!1175 = !DILocation(line: 851, column: 7, scope: !1151, inlinedAt: !1170)
!1176 = !DILocation(line: 854, column: 2, scope: !1151, inlinedAt: !1170)
!1177 = !DILocation(line: 854, column: 7, scope: !1151, inlinedAt: !1170)
!1178 = !DILocation(line: 854, column: 18, scope: !1151, inlinedAt: !1170)
!1179 = !DILocation(line: 854, column: 29, scope: !1151, inlinedAt: !1170)
!1180 = !DILocation(line: 854, column: 40, scope: !1151, inlinedAt: !1170)
!1181 = !DILocation(line: 859, column: 8, scope: !1151, inlinedAt: !1170)
!1182 = !DILocation(line: 860, column: 10, scope: !1151, inlinedAt: !1170)
!1183 = !DILocation(line: 861, column: 9, scope: !1151, inlinedAt: !1170)
!1184 = !DILocation(line: 861, column: 2, scope: !1151, inlinedAt: !1170)
!1185 = !DILocation(line: 862, column: 7, scope: !1186, inlinedAt: !1170)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !225, line: 862, column: 7)
!1187 = distinct !DILexicalBlock(scope: !1151, file: !225, line: 861, column: 45)
!1188 = !DILocation(line: 862, column: 13, scope: !1186, inlinedAt: !1170)
!1189 = !DILocation(line: 862, column: 7, scope: !1187, inlinedAt: !1170)
!1190 = !DILocation(line: 863, column: 8, scope: !1191, inlinedAt: !1170)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !225, line: 863, column: 8)
!1192 = distinct !DILexicalBlock(scope: !1186, file: !225, line: 862, column: 21)
!1193 = !DILocation(line: 863, column: 39, scope: !1191, inlinedAt: !1170)
!1194 = !DILocation(line: 863, column: 8, scope: !1192, inlinedAt: !1170)
!1195 = !DILocation(line: 864, column: 12, scope: !1196, inlinedAt: !1170)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !225, line: 863, column: 45)
!1197 = !DILocation(line: 865, column: 12, scope: !1196, inlinedAt: !1170)
!1198 = !DILocation(line: 866, column: 5, scope: !1196, inlinedAt: !1170)
!1199 = !DILocation(line: 867, column: 14, scope: !1196, inlinedAt: !1170)
!1200 = !DILocation(line: 867, column: 5, scope: !1196, inlinedAt: !1170)
!1201 = !DILocation(line: 870, column: 5, scope: !1196, inlinedAt: !1170)
!1202 = !DILocation(line: 872, column: 9, scope: !1203, inlinedAt: !1170)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !225, line: 872, column: 9)
!1204 = distinct !DILexicalBlock(scope: !1191, file: !225, line: 871, column: 9)
!1205 = !DILocation(line: 872, column: 15, scope: !1203, inlinedAt: !1170)
!1206 = !DILocation(line: 872, column: 9, scope: !1204, inlinedAt: !1170)
!1207 = !DILocation(line: 873, column: 6, scope: !1208, inlinedAt: !1170)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !225, line: 872, column: 20)
!1209 = !DILocation(line: 874, column: 12, scope: !1208, inlinedAt: !1170)
!1210 = !DILocation(line: 875, column: 5, scope: !1208, inlinedAt: !1170)
!1211 = !DILocation(line: 0, scope: !1212, inlinedAt: !1170)
!1212 = distinct !DILexicalBlock(scope: !1204, file: !225, line: 877, column: 5)
!1213 = !DILocation(line: 877, column: 5, scope: !1212, inlinedAt: !1170)
!1214 = !DILocation(line: 879, column: 24, scope: !1215, inlinedAt: !1170)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !225, line: 879, column: 10)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !225, line: 878, column: 25)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !225, line: 877, column: 5)
!1218 = !{!1219, !297, i64 24}
!1219 = !{!"residue_t", !297, i64 0, !307, i64 8, !307, i64 12, !307, i64 16, !297, i64 24, !297, i64 32, !307, i64 40, !307, i64 44, !307, i64 48, !297, i64 56, !297, i64 64, !307, i64 72, !297, i64 80, !307, i64 88, !297, i64 96, !307, i64 104, !297, i64 112, !297, i64 120}
!1220 = !DILocation(line: 879, column: 11, scope: !1215, inlinedAt: !1170)
!1221 = !DILocation(line: 879, column: 10, scope: !1216, inlinedAt: !1170)
!1222 = !DILocation(line: 878, column: 17, scope: !1217, inlinedAt: !1170)
!1223 = distinct !{!1223, !1213, !1224, !314, !315}
!1224 = !DILocation(line: 883, column: 5, scope: !1212, inlinedAt: !1170)
!1225 = !DILocation(line: 885, column: 15, scope: !1226, inlinedAt: !1170)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !225, line: 884, column: 16)
!1227 = distinct !DILexicalBlock(scope: !1204, file: !225, line: 884, column: 9)
!1228 = !DILocation(line: 887, column: 20, scope: !1226, inlinedAt: !1170)
!1229 = !DILocation(line: 885, column: 6, scope: !1226, inlinedAt: !1170)
!1230 = !DILocation(line: 888, column: 6, scope: !1226, inlinedAt: !1170)
!1231 = !DILocation(line: 890, column: 5, scope: !1204, inlinedAt: !1170)
!1232 = !DILocation(line: 892, column: 3, scope: !1192, inlinedAt: !1170)
!1233 = !DILocation(line: 893, column: 4, scope: !1234, inlinedAt: !1170)
!1234 = distinct !DILexicalBlock(scope: !1186, file: !225, line: 892, column: 8)
!1235 = !DILocalVariable(name: "res", arg: 1, scope: !1236, file: !225, line: 1202, type: !6)
!1236 = distinct !DISubprogram(name: "findatom", scope: !225, file: !225, line: 1202, type: !1237, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!192, !6, !220}
!1239 = !{!1235, !1240, !1241}
!1240 = !DILocalVariable(name: "aname", arg: 2, scope: !1236, file: !225, line: 1202, type: !220)
!1241 = !DILocalVariable(name: "a", scope: !1236, file: !225, line: 1204, type: !15)
!1242 = !DILocation(line: 0, scope: !1236, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 894, column: 16, scope: !1244, inlinedAt: !1170)
!1244 = distinct !DILexicalBlock(scope: !1234, file: !225, line: 894, column: 8)
!1245 = !{!1219, !307, i64 104}
!1246 = !DILocation(line: 1206, column: 16, scope: !1247, inlinedAt: !1243)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !225, line: 1206, column: 2)
!1248 = distinct !DILexicalBlock(scope: !1236, file: !225, line: 1206, column: 2)
!1249 = !DILocation(line: 1206, column: 2, scope: !1248, inlinedAt: !1243)
!1250 = !DILocation(line: 1207, column: 21, scope: !1251, inlinedAt: !1243)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !225, line: 1207, column: 7)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !225, line: 1206, column: 38)
!1253 = !{!1219, !297, i64 120}
!1254 = distinct !{!1254, !1249, !1255, !314, !315}
!1255 = !DILocation(line: 1209, column: 2, scope: !1248, inlinedAt: !1243)
!1256 = !DILocation(line: 1207, column: 34, scope: !1251, inlinedAt: !1243)
!1257 = !DILocation(line: 1207, column: 8, scope: !1251, inlinedAt: !1243)
!1258 = !DILocation(line: 1206, column: 34, scope: !1247, inlinedAt: !1243)
!1259 = !DILocation(line: 1207, column: 7, scope: !1252, inlinedAt: !1243)
!1260 = !DILocation(line: 895, column: 14, scope: !1261, inlinedAt: !1170)
!1261 = distinct !DILexicalBlock(scope: !1244, file: !225, line: 894, column: 41)
!1262 = !DILocation(line: 897, column: 17, scope: !1261, inlinedAt: !1170)
!1263 = !DILocation(line: 895, column: 5, scope: !1261, inlinedAt: !1170)
!1264 = !DILocation(line: 898, column: 5, scope: !1261, inlinedAt: !1170)
!1265 = !DILocation(line: 900, column: 10, scope: !1244, inlinedAt: !1170)
!1266 = !DILocation(line: 0, scope: !1236, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 901, column: 16, scope: !1268, inlinedAt: !1170)
!1268 = distinct !DILexicalBlock(scope: !1234, file: !225, line: 901, column: 8)
!1269 = !DILocation(line: 1206, column: 2, scope: !1248, inlinedAt: !1267)
!1270 = !DILocation(line: 1206, column: 16, scope: !1247, inlinedAt: !1267)
!1271 = distinct !{!1271, !1269, !1272, !314, !315}
!1272 = !DILocation(line: 1209, column: 2, scope: !1248, inlinedAt: !1267)
!1273 = !DILocation(line: 1207, column: 34, scope: !1251, inlinedAt: !1267)
!1274 = !DILocation(line: 1207, column: 8, scope: !1251, inlinedAt: !1267)
!1275 = !DILocation(line: 1206, column: 34, scope: !1247, inlinedAt: !1267)
!1276 = !DILocation(line: 1207, column: 7, scope: !1252, inlinedAt: !1267)
!1277 = !DILocation(line: 902, column: 14, scope: !1278, inlinedAt: !1170)
!1278 = distinct !DILexicalBlock(scope: !1268, file: !225, line: 901, column: 41)
!1279 = !DILocation(line: 904, column: 17, scope: !1278, inlinedAt: !1170)
!1280 = !DILocation(line: 902, column: 5, scope: !1278, inlinedAt: !1170)
!1281 = !DILocation(line: 905, column: 5, scope: !1278, inlinedAt: !1170)
!1282 = !DILocation(line: 907, column: 10, scope: !1268, inlinedAt: !1170)
!1283 = !DILocation(line: 0, scope: !1236, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 908, column: 16, scope: !1285, inlinedAt: !1170)
!1285 = distinct !DILexicalBlock(scope: !1234, file: !225, line: 908, column: 8)
!1286 = !DILocation(line: 1206, column: 2, scope: !1248, inlinedAt: !1284)
!1287 = !DILocation(line: 1206, column: 16, scope: !1247, inlinedAt: !1284)
!1288 = distinct !{!1288, !1286, !1289, !314, !315}
!1289 = !DILocation(line: 1209, column: 2, scope: !1248, inlinedAt: !1284)
!1290 = !DILocation(line: 1207, column: 34, scope: !1251, inlinedAt: !1284)
!1291 = !DILocation(line: 1207, column: 8, scope: !1251, inlinedAt: !1284)
!1292 = !DILocation(line: 1206, column: 34, scope: !1247, inlinedAt: !1284)
!1293 = !DILocation(line: 1207, column: 7, scope: !1252, inlinedAt: !1284)
!1294 = !DILocation(line: 909, column: 14, scope: !1295, inlinedAt: !1170)
!1295 = distinct !DILexicalBlock(scope: !1285, file: !225, line: 908, column: 41)
!1296 = !DILocation(line: 911, column: 17, scope: !1295, inlinedAt: !1170)
!1297 = !DILocation(line: 909, column: 5, scope: !1295, inlinedAt: !1170)
!1298 = !DILocation(line: 912, column: 5, scope: !1295, inlinedAt: !1170)
!1299 = !DILocation(line: 0, scope: !1236, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 915, column: 16, scope: !1301, inlinedAt: !1170)
!1301 = distinct !DILexicalBlock(scope: !1234, file: !225, line: 915, column: 8)
!1302 = !DILocation(line: 1206, column: 16, scope: !1247, inlinedAt: !1300)
!1303 = !DILocation(line: 1206, column: 2, scope: !1248, inlinedAt: !1300)
!1304 = distinct !{!1304, !1303, !1305, !314, !315}
!1305 = !DILocation(line: 1209, column: 2, scope: !1248, inlinedAt: !1300)
!1306 = !DILocation(line: 1207, column: 34, scope: !1251, inlinedAt: !1300)
!1307 = !DILocation(line: 1207, column: 8, scope: !1251, inlinedAt: !1300)
!1308 = !DILocation(line: 1206, column: 34, scope: !1247, inlinedAt: !1300)
!1309 = !DILocation(line: 1207, column: 7, scope: !1252, inlinedAt: !1300)
!1310 = !DILocation(line: 916, column: 14, scope: !1311, inlinedAt: !1170)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !225, line: 915, column: 41)
!1312 = !DILocation(line: 918, column: 17, scope: !1311, inlinedAt: !1170)
!1313 = !DILocation(line: 916, column: 5, scope: !1311, inlinedAt: !1170)
!1314 = !DILocation(line: 919, column: 5, scope: !1311, inlinedAt: !1170)
!1315 = !DILocation(line: 914, column: 10, scope: !1285, inlinedAt: !1170)
!1316 = !DILocation(line: 921, column: 10, scope: !1301, inlinedAt: !1170)
!1317 = !DILocation(line: 922, column: 15, scope: !1234, inlinedAt: !1170)
!1318 = !DILocation(line: 922, column: 10, scope: !1234, inlinedAt: !1170)
!1319 = !DILocation(line: 923, column: 9, scope: !1234, inlinedAt: !1170)
!1320 = !DILocation(line: 924, column: 4, scope: !1234, inlinedAt: !1170)
!1321 = !DILocation(line: 924, column: 20, scope: !1234, inlinedAt: !1170)
!1322 = !DILocation(line: 925, column: 4, scope: !1234, inlinedAt: !1170)
!1323 = !DILocation(line: 925, column: 20, scope: !1234, inlinedAt: !1170)
!1324 = !DILocation(line: 926, column: 4, scope: !1234, inlinedAt: !1170)
!1325 = !DILocation(line: 926, column: 20, scope: !1234, inlinedAt: !1170)
!1326 = !DILocation(line: 927, column: 4, scope: !1234, inlinedAt: !1170)
!1327 = !DILocation(line: 927, column: 20, scope: !1234, inlinedAt: !1170)
!1328 = !DILocation(line: 928, column: 8, scope: !1234, inlinedAt: !1170)
!1329 = !DILocation(line: 928, column: 15, scope: !1234, inlinedAt: !1170)
!1330 = !{!1331, !694, i64 16}
!1331 = !{!"chiral_t", !298, i64 0, !694, i64 16}
!1332 = distinct !{!1332, !1184, !1333, !314, !315}
!1333 = !DILocation(line: 930, column: 2, scope: !1151, inlinedAt: !1170)
!1334 = !DILocation(line: 931, column: 6, scope: !1335, inlinedAt: !1170)
!1335 = distinct !DILexicalBlock(scope: !1151, file: !225, line: 931, column: 6)
!1336 = !DILocation(line: 931, column: 12, scope: !1335, inlinedAt: !1170)
!1337 = !DILocation(line: 931, column: 6, scope: !1151, inlinedAt: !1170)
!1338 = !DILocation(line: 932, column: 3, scope: !1339, inlinedAt: !1170)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !225, line: 931, column: 17)
!1340 = !DILocation(line: 933, column: 9, scope: !1339, inlinedAt: !1170)
!1341 = !DILocation(line: 934, column: 2, scope: !1339, inlinedAt: !1170)
!1342 = !DILocation(line: 935, column: 1, scope: !1151, inlinedAt: !1170)
!1343 = !DILocation(line: 466, column: 3, scope: !1171)
!1344 = !DILocation(line: 467, column: 2, scope: !1171)
!1345 = !DILocation(line: 470, column: 1, scope: !332)
!1346 = distinct !DISubprogram(name: "setreslibkind", scope: !225, file: !225, line: 103, type: !1347, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!15, !220, !220}
!1349 = !{!1350, !1351, !1352, !1353}
!1350 = !DILocalVariable(name: "reslib", arg: 1, scope: !1346, file: !225, line: 103, type: !220)
!1351 = !DILocalVariable(name: "kind", arg: 2, scope: !1346, file: !225, line: 103, type: !220)
!1352 = !DILocalVariable(name: "nhp", scope: !1346, file: !225, line: 105, type: !220)
!1353 = !DILocalVariable(name: "rlp", scope: !1346, file: !225, line: 106, type: !223)
!1354 = !DILocation(line: 0, scope: !1346)
!1355 = !DILocation(line: 105, column: 8, scope: !1346)
!1356 = !DILocation(line: 0, scope: !286, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 108, column: 14, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1346, file: !225, line: 108, column: 6)
!1359 = !DILocation(line: 0, scope: !295, inlinedAt: !1357)
!1360 = !DILocation(line: 426, column: 2, scope: !295, inlinedAt: !1357)
!1361 = !DILocation(line: 427, column: 20, scope: !302, inlinedAt: !1357)
!1362 = !DILocation(line: 427, column: 7, scope: !302, inlinedAt: !1357)
!1363 = !DILocation(line: 427, column: 38, scope: !302, inlinedAt: !1357)
!1364 = !DILocation(line: 427, column: 7, scope: !303, inlinedAt: !1357)
!1365 = !DILocation(line: 426, column: 38, scope: !304, inlinedAt: !1357)
!1366 = distinct !{!1366, !1360, !1367, !314, !315}
!1367 = !DILocation(line: 430, column: 2, scope: !295, inlinedAt: !1357)
!1368 = !DILocation(line: 109, column: 16, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !225, line: 109, column: 8)
!1370 = distinct !DILexicalBlock(scope: !1358, file: !225, line: 108, column: 48)
!1371 = !DILocation(line: 109, column: 40, scope: !1369)
!1372 = !DILocation(line: 109, column: 8, scope: !1370)
!1373 = !DILocation(line: 110, column: 15, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !225, line: 109, column: 49)
!1375 = !DILocation(line: 110, column: 6, scope: !1374)
!1376 = !DILocation(line: 112, column: 6, scope: !1374)
!1377 = !DILocation(line: 0, scope: !1358)
!1378 = !DILocation(line: 115, column: 7, scope: !1346)
!1379 = !DILocation(line: 115, column: 17, scope: !1346)
!1380 = !DILocation(line: 116, column: 8, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1346, file: !225, line: 116, column: 7)
!1382 = !DILocation(line: 116, column: 30, scope: !1381)
!1383 = !DILocation(line: 116, column: 34, scope: !1381)
!1384 = !DILocation(line: 116, column: 7, scope: !1346)
!1385 = !DILocation(line: 118, column: 13, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !225, line: 118, column: 12)
!1387 = !DILocation(line: 118, column: 35, scope: !1386)
!1388 = !DILocation(line: 118, column: 39, scope: !1386)
!1389 = !DILocation(line: 118, column: 12, scope: !1381)
!1390 = !DILocation(line: 120, column: 13, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !225, line: 120, column: 12)
!1392 = !DILocation(line: 120, column: 34, scope: !1391)
!1393 = !DILocation(line: 120, column: 38, scope: !1391)
!1394 = !DILocation(line: 120, column: 12, scope: !1386)
!1395 = !DILocation(line: 0, scope: !1381)
!1396 = !DILocation(line: 123, column: 9, scope: !1346)
!1397 = !DILocation(line: 123, column: 22, scope: !1346)
!1398 = distinct !DISubprogram(name: "getresidue", scope: !225, file: !225, line: 126, type: !1399, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1401)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!6, !220, !220}
!1401 = !{!1402, !1403, !1404, !1405, !1409, !1410, !1411}
!1402 = !DILocalVariable(name: "rname", arg: 1, scope: !1398, file: !225, line: 126, type: !220)
!1403 = !DILocalVariable(name: "reslib", arg: 2, scope: !1398, file: !225, line: 126, type: !220)
!1404 = !DILocalVariable(name: "nhp", scope: !1398, file: !225, line: 128, type: !220)
!1405 = !DILocalVariable(name: "leapname", scope: !1398, file: !225, line: 128, type: !1406)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 40, elements: !1407)
!1407 = !{!1408}
!1408 = !DISubrange(count: 5)
!1409 = !DILocalVariable(name: "rlp", scope: !1398, file: !225, line: 129, type: !223)
!1410 = !DILocalVariable(name: "res", scope: !1398, file: !225, line: 130, type: !6)
!1411 = !DILocalVariable(name: "nres", scope: !1398, file: !225, line: 130, type: !6)
!1412 = !DILocation(line: 0, scope: !1398)
!1413 = !DILocation(line: 128, column: 8, scope: !1398)
!1414 = !DILocation(line: 128, column: 2, scope: !1398)
!1415 = !DILocation(line: 128, column: 13, scope: !1398)
!1416 = !DILocation(line: 0, scope: !286, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 132, column: 14, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1398, file: !225, line: 132, column: 6)
!1419 = !DILocation(line: 0, scope: !295, inlinedAt: !1417)
!1420 = !DILocation(line: 426, column: 2, scope: !295, inlinedAt: !1417)
!1421 = !DILocation(line: 427, column: 20, scope: !302, inlinedAt: !1417)
!1422 = !DILocation(line: 427, column: 7, scope: !302, inlinedAt: !1417)
!1423 = !DILocation(line: 427, column: 38, scope: !302, inlinedAt: !1417)
!1424 = !DILocation(line: 427, column: 7, scope: !303, inlinedAt: !1417)
!1425 = !DILocation(line: 426, column: 38, scope: !304, inlinedAt: !1417)
!1426 = distinct !{!1426, !1420, !1427, !314, !315}
!1427 = !DILocation(line: 430, column: 2, scope: !295, inlinedAt: !1417)
!1428 = !DILocation(line: 133, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !225, line: 133, column: 7)
!1430 = distinct !DILexicalBlock(scope: !1418, file: !225, line: 132, column: 48)
!1431 = !DILocation(line: 133, column: 39, scope: !1429)
!1432 = !DILocation(line: 133, column: 7, scope: !1430)
!1433 = !DILocation(line: 134, column: 4, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !225, line: 133, column: 48)
!1435 = !DILocation(line: 0, scope: !1418)
!1436 = !DILocation(line: 138, column: 2, scope: !1398)
!1437 = !DILocation(line: 139, column: 12, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1398, file: !225, line: 139, column: 7)
!1439 = !DILocation(line: 139, column: 7, scope: !1398)
!1440 = !DILocation(line: 140, column: 14, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !225, line: 140, column: 13)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !225, line: 139, column: 33)
!1443 = !DILocation(line: 140, column: 13, scope: !1442)
!1444 = !DILocation(line: 141, column: 4, scope: !1441)
!1445 = !DILocation(line: 142, column: 14, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !225, line: 142, column: 13)
!1447 = !DILocation(line: 142, column: 13, scope: !1441)
!1448 = !DILocation(line: 143, column: 4, scope: !1446)
!1449 = !DILocation(line: 144, column: 14, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !225, line: 144, column: 13)
!1451 = !DILocation(line: 144, column: 13, scope: !1446)
!1452 = !DILocation(line: 145, column: 4, scope: !1450)
!1453 = !DILocation(line: 146, column: 14, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !225, line: 146, column: 13)
!1455 = !DILocation(line: 146, column: 13, scope: !1450)
!1456 = !DILocation(line: 147, column: 4, scope: !1454)
!1457 = !DILocation(line: 150, column: 14, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !225, line: 150, column: 13)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !225, line: 149, column: 38)
!1460 = distinct !DILexicalBlock(scope: !1438, file: !225, line: 149, column: 12)
!1461 = !DILocation(line: 150, column: 13, scope: !1459)
!1462 = !DILocation(line: 151, column: 4, scope: !1458)
!1463 = !DILocation(line: 152, column: 14, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !225, line: 152, column: 13)
!1465 = !DILocation(line: 152, column: 13, scope: !1458)
!1466 = !DILocation(line: 153, column: 4, scope: !1464)
!1467 = !DILocation(line: 154, column: 14, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !225, line: 154, column: 13)
!1469 = !DILocation(line: 154, column: 13, scope: !1464)
!1470 = !DILocation(line: 155, column: 4, scope: !1468)
!1471 = !DILocation(line: 156, column: 14, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !225, line: 156, column: 13)
!1473 = !DILocation(line: 156, column: 13, scope: !1468)
!1474 = !DILocation(line: 157, column: 4, scope: !1472)
!1475 = !DILocation(line: 159, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1398, file: !225, line: 159, column: 7)
!1477 = !DILocation(line: 159, column: 28, scope: !1476)
!1478 = !DILocation(line: 159, column: 7, scope: !1398)
!1479 = !DILocation(line: 161, column: 12, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !225, line: 161, column: 12)
!1481 = !DILocation(line: 161, column: 33, scope: !1480)
!1482 = !DILocation(line: 161, column: 12, scope: !1476)
!1483 = !DILocation(line: 0, scope: !1476)
!1484 = !DILocation(line: 163, column: 18, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1398, file: !225, line: 163, column: 2)
!1486 = !DILocation(line: 0, scope: !1485)
!1487 = !DILocation(line: 163, column: 2, scope: !1485)
!1488 = !DILocation(line: 164, column: 21, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !225, line: 164, column: 6)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !225, line: 163, column: 53)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !225, line: 163, column: 2)
!1492 = !DILocation(line: 164, column: 8, scope: !1489)
!1493 = !DILocation(line: 164, column: 40, scope: !1489)
!1494 = !DILocation(line: 164, column: 47, scope: !1489)
!1495 = !DILocation(line: 165, column: 6, scope: !1489)
!1496 = !DILocation(line: 165, column: 41, scope: !1489)
!1497 = !DILocation(line: 164, column: 6, scope: !1490)
!1498 = !DILocation(line: 163, column: 45, scope: !1491)
!1499 = distinct !{!1499, !1487, !1500, !314, !315}
!1500 = !DILocation(line: 167, column: 2, scope: !1485)
!1501 = !DILocation(line: 170, column: 3, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !225, line: 169, column: 19)
!1503 = distinct !DILexicalBlock(scope: !1398, file: !225, line: 169, column: 6)
!1504 = !DILocation(line: 171, column: 3, scope: !1502)
!1505 = !DILocation(line: 172, column: 3, scope: !1502)
!1506 = !DILocation(line: 175, column: 9, scope: !1398)
!1507 = !DILocation(line: 177, column: 2, scope: !1398)
!1508 = !DILocation(line: 178, column: 1, scope: !1398)
!1509 = !DISubprogram(name: "rt_errormsg_s", scope: !1510, file: !1510, line: 2, type: !1511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!1510 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/traceback.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "c13cba1549ebc0c91a943a70f996ba00")
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!15, !15, !220, !220}
!1513 = !{}
!1514 = distinct !DISubprogram(name: "copyresidue", scope: !225, file: !225, line: 180, type: !1515, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!6, !6}
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529}
!1518 = !DILocalVariable(name: "res", arg: 1, scope: !1514, file: !225, line: 180, type: !6)
!1519 = !DILocalVariable(name: "a", scope: !1514, file: !225, line: 182, type: !15)
!1520 = !DILocalVariable(name: "b", scope: !1514, file: !225, line: 182, type: !15)
!1521 = !DILocalVariable(name: "c", scope: !1514, file: !225, line: 182, type: !15)
!1522 = !DILocalVariable(name: "i", scope: !1514, file: !225, line: 182, type: !15)
!1523 = !DILocalVariable(name: "aip", scope: !1514, file: !225, line: 183, type: !219)
!1524 = !DILocalVariable(name: "nres", scope: !1514, file: !225, line: 184, type: !6)
!1525 = !DILocalVariable(name: "ap", scope: !1514, file: !225, line: 185, type: !192)
!1526 = !DILocalVariable(name: "anp", scope: !1514, file: !225, line: 186, type: !220)
!1527 = !DILocalVariable(name: "rnp", scope: !1514, file: !225, line: 186, type: !220)
!1528 = !DILocalVariable(name: "bp", scope: !1514, file: !225, line: 187, type: !174)
!1529 = !DILocalVariable(name: "cp", scope: !1514, file: !225, line: 188, type: !181)
!1530 = !DILocation(line: 0, scope: !1514)
!1531 = !DILocation(line: 190, column: 26, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 190, column: 5)
!1533 = !DILocation(line: 190, column: 13, scope: !1532)
!1534 = !DILocation(line: 191, column: 3, scope: !1532)
!1535 = !DILocation(line: 190, column: 5, scope: !1514)
!1536 = !DILocation(line: 193, column: 42, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !225, line: 192, column: 2)
!1538 = !DILocation(line: 193, column: 3, scope: !1537)
!1539 = !DILocation(line: 194, column: 3, scope: !1537)
!1540 = !DILocation(line: 195, column: 3, scope: !1537)
!1541 = !DILocation(line: 198, column: 37, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 198, column: 6)
!1543 = !DILocation(line: 198, column: 32, scope: !1542)
!1544 = !DILocation(line: 198, column: 45, scope: !1542)
!1545 = !DILocation(line: 198, column: 25, scope: !1542)
!1546 = !DILocation(line: 198, column: 13, scope: !1542)
!1547 = !DILocation(line: 199, column: 3, scope: !1542)
!1548 = !DILocation(line: 198, column: 6, scope: !1514)
!1549 = !DILocation(line: 201, column: 51, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1542, file: !225, line: 200, column: 2)
!1551 = !DILocation(line: 201, column: 3, scope: !1550)
!1552 = !DILocation(line: 202, column: 3, scope: !1550)
!1553 = !DILocation(line: 203, column: 3, scope: !1550)
!1554 = !DILocation(line: 206, column: 43, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 206, column: 6)
!1556 = !DILocation(line: 206, column: 23, scope: !1555)
!1557 = !DILocation(line: 206, column: 58, scope: !1555)
!1558 = !DILocation(line: 206, column: 6, scope: !1514)
!1559 = !DILocation(line: 209, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !225, line: 207, column: 2)
!1561 = !DILocation(line: 208, column: 3, scope: !1560)
!1562 = !DILocation(line: 210, column: 3, scope: !1560)
!1563 = !DILocation(line: 211, column: 3, scope: !1560)
!1564 = !DILocation(line: 214, column: 11, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 214, column: 6)
!1566 = !{!1219, !307, i64 72}
!1567 = !DILocation(line: 214, column: 23, scope: !1565)
!1568 = !DILocation(line: 214, column: 6, scope: !1514)
!1569 = !DILocation(line: 216, column: 11, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !225, line: 215, column: 7)
!1571 = distinct !DILexicalBlock(scope: !1565, file: !225, line: 214, column: 28)
!1572 = !DILocation(line: 216, column: 27, scope: !1570)
!1573 = !DILocation(line: 216, column: 4, scope: !1570)
!1574 = !DILocation(line: 215, column: 14, scope: !1570)
!1575 = !DILocation(line: 217, column: 4, scope: !1570)
!1576 = !DILocation(line: 215, column: 7, scope: !1571)
!1577 = !DILocation(line: 220, column: 37, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1570, file: !225, line: 218, column: 3)
!1579 = !DILocation(line: 219, column: 4, scope: !1578)
!1580 = !DILocation(line: 221, column: 4, scope: !1578)
!1581 = !DILocation(line: 222, column: 4, scope: !1578)
!1582 = !DILocation(line: 0, scope: !1565)
!1583 = !DILocation(line: 227, column: 11, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 227, column: 6)
!1585 = !{!1219, !307, i64 88}
!1586 = !DILocation(line: 227, column: 21, scope: !1584)
!1587 = !DILocation(line: 227, column: 6, scope: !1514)
!1588 = !DILocation(line: 229, column: 11, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !225, line: 228, column: 7)
!1590 = distinct !DILexicalBlock(scope: !1584, file: !225, line: 227, column: 26)
!1591 = !DILocation(line: 229, column: 25, scope: !1589)
!1592 = !DILocation(line: 229, column: 4, scope: !1589)
!1593 = !DILocation(line: 228, column: 14, scope: !1589)
!1594 = !DILocation(line: 230, column: 4, scope: !1589)
!1595 = !DILocation(line: 228, column: 7, scope: !1590)
!1596 = !DILocation(line: 233, column: 37, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1589, file: !225, line: 231, column: 3)
!1598 = !DILocation(line: 232, column: 4, scope: !1597)
!1599 = !DILocation(line: 234, column: 4, scope: !1597)
!1600 = !DILocation(line: 235, column: 4, scope: !1597)
!1601 = !DILocation(line: 0, scope: !1584)
!1602 = !DILocation(line: 240, column: 8, scope: !1514)
!1603 = !DILocation(line: 240, column: 15, scope: !1514)
!1604 = !{!1219, !297, i64 0}
!1605 = !DILocation(line: 242, column: 37, scope: !1514)
!1606 = !DILocation(line: 242, column: 25, scope: !1514)
!1607 = !DILocation(line: 242, column: 47, scope: !1514)
!1608 = !DILocation(line: 242, column: 18, scope: !1514)
!1609 = !DILocation(line: 243, column: 10, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 243, column: 6)
!1611 = !DILocation(line: 243, column: 6, scope: !1514)
!1612 = !DILocation(line: 244, column: 12, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1610, file: !225, line: 243, column: 19)
!1614 = !DILocation(line: 244, column: 3, scope: !1613)
!1615 = !DILocation(line: 246, column: 3, scope: !1613)
!1616 = !DILocation(line: 248, column: 2, scope: !1514)
!1617 = !DILocation(line: 249, column: 8, scope: !1514)
!1618 = !DILocation(line: 249, column: 18, scope: !1514)
!1619 = !DILocation(line: 251, column: 37, scope: !1514)
!1620 = !{!1219, !297, i64 32}
!1621 = !DILocation(line: 251, column: 25, scope: !1514)
!1622 = !DILocation(line: 251, column: 45, scope: !1514)
!1623 = !DILocation(line: 251, column: 18, scope: !1514)
!1624 = !DILocation(line: 252, column: 10, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 252, column: 6)
!1626 = !DILocation(line: 252, column: 6, scope: !1514)
!1627 = !DILocation(line: 253, column: 12, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !225, line: 252, column: 19)
!1629 = !DILocation(line: 253, column: 3, scope: !1628)
!1630 = !DILocation(line: 254, column: 3, scope: !1628)
!1631 = !DILocation(line: 256, column: 2, scope: !1514)
!1632 = !DILocation(line: 257, column: 8, scope: !1514)
!1633 = !DILocation(line: 257, column: 16, scope: !1514)
!1634 = !DILocation(line: 259, column: 21, scope: !1514)
!1635 = !{!1219, !307, i64 8}
!1636 = !DILocation(line: 259, column: 8, scope: !1514)
!1637 = !DILocation(line: 259, column: 14, scope: !1514)
!1638 = !DILocation(line: 260, column: 8, scope: !1514)
!1639 = !DILocation(line: 260, column: 18, scope: !1514)
!1640 = !{!1219, !307, i64 12}
!1641 = !DILocation(line: 261, column: 8, scope: !1514)
!1642 = !DILocation(line: 261, column: 17, scope: !1514)
!1643 = !{!1219, !307, i64 16}
!1644 = !DILocation(line: 262, column: 22, scope: !1514)
!1645 = !{!1219, !307, i64 40}
!1646 = !DILocation(line: 262, column: 8, scope: !1514)
!1647 = !DILocation(line: 262, column: 15, scope: !1514)
!1648 = !DILocation(line: 263, column: 8, scope: !1514)
!1649 = !DILocation(line: 263, column: 17, scope: !1514)
!1650 = !{!1219, !297, i64 56}
!1651 = !DILocation(line: 264, column: 21, scope: !1514)
!1652 = !DILocation(line: 264, column: 8, scope: !1514)
!1653 = !DILocation(line: 264, column: 19, scope: !1514)
!1654 = !{!1219, !297, i64 64}
!1655 = !DILocation(line: 265, column: 27, scope: !1514)
!1656 = !DILocation(line: 265, column: 8, scope: !1514)
!1657 = !DILocation(line: 265, column: 20, scope: !1514)
!1658 = !DILocation(line: 266, column: 8, scope: !1514)
!1659 = !DILocation(line: 266, column: 19, scope: !1514)
!1660 = !{!1219, !297, i64 80}
!1661 = !DILocation(line: 267, column: 16, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !225, line: 267, column: 2)
!1663 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 267, column: 2)
!1664 = !DILocation(line: 267, column: 2, scope: !1663)
!1665 = !DILocation(line: 268, column: 32, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !225, line: 267, column: 41)
!1667 = !DILocation(line: 268, column: 3, scope: !1666)
!1668 = !DILocation(line: 268, column: 30, scope: !1666)
!1669 = !DILocation(line: 269, column: 32, scope: !1666)
!1670 = !DILocation(line: 269, column: 3, scope: !1666)
!1671 = !DILocation(line: 269, column: 30, scope: !1666)
!1672 = !DILocation(line: 267, column: 37, scope: !1662)
!1673 = distinct !{!1673, !1664, !1674, !314, !315}
!1674 = !DILocation(line: 270, column: 2, scope: !1663)
!1675 = !DILocation(line: 271, column: 25, scope: !1514)
!1676 = !DILocation(line: 271, column: 8, scope: !1514)
!1677 = !DILocation(line: 271, column: 18, scope: !1514)
!1678 = !DILocation(line: 272, column: 8, scope: !1514)
!1679 = !DILocation(line: 272, column: 17, scope: !1514)
!1680 = !{!1219, !297, i64 96}
!1681 = !DILocation(line: 273, column: 37, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !225, line: 273, column: 2)
!1683 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 273, column: 2)
!1684 = !DILocation(line: 273, column: 2, scope: !1683)
!1685 = !DILocation(line: 274, column: 3, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !225, line: 274, column: 3)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !225, line: 273, column: 66)
!1688 = !DILocation(line: 275, column: 22, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !225, line: 274, column: 3)
!1690 = !DILocation(line: 275, column: 4, scope: !1689)
!1691 = !DILocation(line: 275, column: 20, scope: !1689)
!1692 = !DILocation(line: 274, column: 23, scope: !1689)
!1693 = !DILocation(line: 274, column: 17, scope: !1689)
!1694 = distinct !{!1694, !1685, !1695, !314, !315}
!1695 = !DILocation(line: 275, column: 51, scope: !1686)
!1696 = !DILocation(line: 276, column: 35, scope: !1687)
!1697 = !DILocation(line: 276, column: 7, scope: !1687)
!1698 = !DILocation(line: 276, column: 14, scope: !1687)
!1699 = !DILocation(line: 273, column: 56, scope: !1682)
!1700 = !DILocation(line: 273, column: 62, scope: !1682)
!1701 = distinct !{!1701, !1684, !1702, !314, !315}
!1702 = !DILocation(line: 277, column: 2, scope: !1683)
!1703 = !DILocation(line: 278, column: 22, scope: !1514)
!1704 = !{!1219, !307, i64 44}
!1705 = !DILocation(line: 278, column: 8, scope: !1514)
!1706 = !DILocation(line: 278, column: 15, scope: !1514)
!1707 = !DILocation(line: 279, column: 26, scope: !1514)
!1708 = !{!1219, !307, i64 48}
!1709 = !DILocation(line: 279, column: 8, scope: !1514)
!1710 = !DILocation(line: 279, column: 19, scope: !1514)
!1711 = !DILocation(line: 280, column: 24, scope: !1514)
!1712 = !DILocation(line: 280, column: 8, scope: !1514)
!1713 = !DILocation(line: 280, column: 17, scope: !1514)
!1714 = !DILocation(line: 281, column: 8, scope: !1514)
!1715 = !DILocation(line: 281, column: 17, scope: !1514)
!1716 = !{!1219, !297, i64 112}
!1717 = !DILocation(line: 282, column: 11, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 282, column: 6)
!1719 = !DILocation(line: 282, column: 6, scope: !1718)
!1720 = !DILocation(line: 282, column: 6, scope: !1514)
!1721 = !DILocation(line: 0, scope: !1718)
!1722 = !DILocation(line: 283, column: 3, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !225, line: 283, column: 3)
!1724 = distinct !DILexicalBlock(scope: !1718, file: !225, line: 282, column: 21)
!1725 = !DILocation(line: 286, column: 3, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !225, line: 286, column: 3)
!1727 = distinct !DILexicalBlock(scope: !1718, file: !225, line: 285, column: 7)
!1728 = !DILocation(line: 284, column: 26, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1723, file: !225, line: 283, column: 3)
!1730 = !DILocation(line: 284, column: 4, scope: !1729)
!1731 = !DILocation(line: 284, column: 24, scope: !1729)
!1732 = !DILocation(line: 283, column: 35, scope: !1729)
!1733 = !DILocation(line: 283, column: 17, scope: !1729)
!1734 = distinct !{!1734, !1722, !1735, !314, !315}
!1735 = !DILocation(line: 284, column: 43, scope: !1723)
!1736 = !DILocation(line: 287, column: 4, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1726, file: !225, line: 286, column: 3)
!1738 = !DILocation(line: 287, column: 24, scope: !1737)
!1739 = !DILocation(line: 286, column: 35, scope: !1737)
!1740 = !DILocation(line: 286, column: 17, scope: !1737)
!1741 = distinct !{!1741, !1725, !1742, !314, !315}
!1742 = !DILocation(line: 287, column: 26, scope: !1726)
!1743 = !DILocation(line: 289, column: 8, scope: !1514)
!1744 = !DILocation(line: 289, column: 16, scope: !1514)
!1745 = !DILocation(line: 290, column: 2, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 290, column: 2)
!1747 = !DILocation(line: 290, column: 16, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1746, file: !225, line: 290, column: 2)
!1749 = !DILocation(line: 292, column: 48, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1748, file: !225, line: 290, column: 38)
!1751 = !DILocation(line: 292, column: 24, scope: !1750)
!1752 = !DILocation(line: 292, column: 60, scope: !1750)
!1753 = !DILocation(line: 292, column: 17, scope: !1750)
!1754 = !DILocation(line: 293, column: 11, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !225, line: 293, column: 7)
!1756 = !DILocation(line: 293, column: 7, scope: !1750)
!1757 = !DILocation(line: 294, column: 13, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !225, line: 293, column: 20)
!1759 = !DILocation(line: 294, column: 4, scope: !1758)
!1760 = !DILocation(line: 295, column: 4, scope: !1758)
!1761 = !DILocation(line: 297, column: 3, scope: !1750)
!1762 = !DILocation(line: 298, column: 11, scope: !1750)
!1763 = !DILocation(line: 298, column: 22, scope: !1750)
!1764 = !DILocation(line: 299, column: 11, scope: !1750)
!1765 = !DILocation(line: 299, column: 22, scope: !1750)
!1766 = !{!693, !297, i64 8}
!1767 = !DILocation(line: 300, column: 38, scope: !1750)
!1768 = !{!693, !307, i64 16}
!1769 = !DILocation(line: 300, column: 11, scope: !1750)
!1770 = !DILocation(line: 300, column: 18, scope: !1750)
!1771 = !DILocation(line: 301, column: 42, scope: !1750)
!1772 = !{!693, !307, i64 20}
!1773 = !DILocation(line: 301, column: 11, scope: !1750)
!1774 = !DILocation(line: 301, column: 22, scope: !1750)
!1775 = !DILocation(line: 302, column: 3, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1750, file: !225, line: 302, column: 3)
!1777 = !DILocation(line: 303, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !225, line: 302, column: 3)
!1779 = !DILocation(line: 303, column: 4, scope: !1778)
!1780 = !DILocation(line: 303, column: 23, scope: !1778)
!1781 = !DILocation(line: 302, column: 38, scope: !1778)
!1782 = !DILocation(line: 302, column: 18, scope: !1778)
!1783 = distinct !{!1783, !1775, !1784, !314, !315}
!1784 = !DILocation(line: 303, column: 52, scope: !1776)
!1785 = !DILocation(line: 304, column: 11, scope: !1750)
!1786 = !DILocation(line: 304, column: 22, scope: !1750)
!1787 = !{!693, !297, i64 56}
!1788 = !DILocation(line: 305, column: 42, scope: !1750)
!1789 = !DILocation(line: 305, column: 11, scope: !1750)
!1790 = !DILocation(line: 305, column: 22, scope: !1750)
!1791 = !DILocation(line: 306, column: 42, scope: !1750)
!1792 = !DILocation(line: 306, column: 11, scope: !1750)
!1793 = !DILocation(line: 306, column: 22, scope: !1750)
!1794 = !DILocation(line: 307, column: 42, scope: !1750)
!1795 = !{!693, !694, i64 80}
!1796 = !DILocation(line: 307, column: 11, scope: !1750)
!1797 = !DILocation(line: 307, column: 22, scope: !1750)
!1798 = !DILocation(line: 308, column: 42, scope: !1750)
!1799 = !{!693, !694, i64 88}
!1800 = !DILocation(line: 308, column: 11, scope: !1750)
!1801 = !DILocation(line: 308, column: 22, scope: !1750)
!1802 = !DILocation(line: 309, column: 11, scope: !1750)
!1803 = !DILocation(line: 309, column: 22, scope: !1750)
!1804 = !{!693, !297, i64 96}
!1805 = !DILocation(line: 310, column: 42, scope: !1750)
!1806 = !{!693, !307, i64 104}
!1807 = !DILocation(line: 310, column: 11, scope: !1750)
!1808 = !DILocation(line: 310, column: 22, scope: !1750)
!1809 = !DILocation(line: 311, column: 42, scope: !1750)
!1810 = !{!693, !694, i64 112}
!1811 = !DILocation(line: 311, column: 11, scope: !1750)
!1812 = !DILocation(line: 311, column: 22, scope: !1750)
!1813 = !DILocation(line: 312, column: 42, scope: !1750)
!1814 = !{!693, !694, i64 120}
!1815 = !DILocation(line: 312, column: 11, scope: !1750)
!1816 = !DILocation(line: 312, column: 22, scope: !1750)
!1817 = !DILocation(line: 313, column: 42, scope: !1750)
!1818 = !{!693, !307, i64 128}
!1819 = !DILocation(line: 313, column: 11, scope: !1750)
!1820 = !DILocation(line: 313, column: 22, scope: !1750)
!1821 = !DILocation(line: 314, column: 42, scope: !1750)
!1822 = !{!693, !307, i64 132}
!1823 = !DILocation(line: 314, column: 11, scope: !1750)
!1824 = !DILocation(line: 314, column: 22, scope: !1750)
!1825 = !DILocation(line: 315, column: 11, scope: !1750)
!1826 = !DILocation(line: 315, column: 22, scope: !1750)
!1827 = !{!693, !297, i64 136}
!1828 = !DILocation(line: 316, column: 24, scope: !1750)
!1829 = !DILocation(line: 316, column: 3, scope: !1750)
!1830 = !DILocation(line: 316, column: 22, scope: !1750)
!1831 = !DILocation(line: 317, column: 24, scope: !1750)
!1832 = !DILocation(line: 317, column: 3, scope: !1750)
!1833 = !DILocation(line: 317, column: 22, scope: !1750)
!1834 = !DILocation(line: 318, column: 24, scope: !1750)
!1835 = !DILocation(line: 318, column: 3, scope: !1750)
!1836 = !DILocation(line: 318, column: 22, scope: !1750)
!1837 = !DILocation(line: 319, column: 42, scope: !1750)
!1838 = !{!693, !694, i64 168}
!1839 = !DILocation(line: 319, column: 11, scope: !1750)
!1840 = !DILocation(line: 319, column: 22, scope: !1750)
!1841 = !DILocation(line: 290, column: 34, scope: !1748)
!1842 = distinct !{!1842, !1745, !1843, !314, !315}
!1843 = !DILocation(line: 320, column: 2, scope: !1746)
!1844 = !DILocation(line: 323, column: 1, scope: !1514)
!1845 = distinct !DISubprogram(name: "copystrand", scope: !225, file: !225, line: 325, type: !1846, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!46, !46}
!1848 = !{!1849, !1850, !1851, !1852}
!1849 = !DILocalVariable(name: "str", arg: 1, scope: !1845, file: !225, line: 325, type: !46)
!1850 = !DILocalVariable(name: "newstrand", scope: !1845, file: !225, line: 327, type: !46)
!1851 = !DILocalVariable(name: "namebuf", scope: !1845, file: !225, line: 328, type: !220)
!1852 = !DILocalVariable(name: "resctr", scope: !1845, file: !225, line: 329, type: !15)
!1853 = !DILocation(line: 0, scope: !1845)
!1854 = !DILocation(line: 331, column: 33, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1845, file: !225, line: 331, column: 5)
!1856 = !DILocation(line: 331, column: 19, scope: !1855)
!1857 = !DILocation(line: 331, column: 64, scope: !1855)
!1858 = !DILocation(line: 331, column: 5, scope: !1845)
!1859 = !DILocation(line: 332, column: 41, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1855, file: !225, line: 331, column: 72)
!1861 = !{!1862, !297, i64 0}
!1862 = !{!"strand_t", !297, i64 0, !307, i64 8, !307, i64 12, !297, i64 16, !297, i64 24, !307, i64 32, !307, i64 36, !297, i64 40}
!1863 = !DILocation(line: 332, column: 3, scope: !1860)
!1864 = !DILocation(line: 334, column: 3, scope: !1860)
!1865 = !DILocation(line: 338, column: 16, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1845, file: !225, line: 337, column: 13)
!1867 = !{!1862, !307, i64 32}
!1868 = !DILocation(line: 338, column: 11, scope: !1866)
!1869 = !DILocation(line: 338, column: 28, scope: !1866)
!1870 = !DILocation(line: 338, column: 3, scope: !1866)
!1871 = !DILocation(line: 337, column: 26, scope: !1866)
!1872 = !DILocation(line: 337, column: 37, scope: !1866)
!1873 = !{!1862, !297, i64 40}
!1874 = !DILocation(line: 338, column: 56, scope: !1866)
!1875 = !DILocation(line: 337, column: 13, scope: !1845)
!1876 = !DILocation(line: 344, column: 51, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1845, file: !225, line: 344, column: 6)
!1878 = !DILocation(line: 344, column: 38, scope: !1877)
!1879 = !DILocation(line: 344, column: 66, scope: !1877)
!1880 = !DILocation(line: 344, column: 28, scope: !1877)
!1881 = !DILocation(line: 345, column: 24, scope: !1877)
!1882 = !DILocation(line: 344, column: 6, scope: !1845)
!1883 = !DILocation(line: 347, column: 3, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1877, file: !225, line: 346, column: 2)
!1885 = !DILocation(line: 349, column: 3, scope: !1884)
!1886 = !DILocation(line: 351, column: 13, scope: !1845)
!1887 = !DILocation(line: 351, column: 26, scope: !1845)
!1888 = !DILocation(line: 352, column: 2, scope: !1845)
!1889 = !DILocation(line: 353, column: 32, scope: !1845)
!1890 = !{!1862, !307, i64 8}
!1891 = !DILocation(line: 353, column: 13, scope: !1845)
!1892 = !DILocation(line: 353, column: 25, scope: !1845)
!1893 = !DILocation(line: 354, column: 27, scope: !1845)
!1894 = !{!1862, !307, i64 12}
!1895 = !DILocation(line: 354, column: 13, scope: !1845)
!1896 = !DILocation(line: 354, column: 20, scope: !1845)
!1897 = !DILocation(line: 355, column: 13, scope: !1845)
!1898 = !DILocation(line: 357, column: 13, scope: !1845)
!1899 = !DILocation(line: 357, column: 25, scope: !1845)
!1900 = !DILocation(line: 356, column: 20, scope: !1845)
!1901 = !DILocation(line: 358, column: 13, scope: !1845)
!1902 = !DILocation(line: 358, column: 24, scope: !1845)
!1903 = !{!1862, !307, i64 36}
!1904 = !DILocation(line: 359, column: 34, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !225, line: 359, column: 9)
!1906 = distinct !DILexicalBlock(scope: !1845, file: !225, line: 359, column: 9)
!1907 = !DILocation(line: 359, column: 9, scope: !1906)
!1908 = !DILocation(line: 361, column: 22, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !225, line: 359, column: 65)
!1910 = !DILocation(line: 361, column: 17, scope: !1909)
!1911 = !DILocation(line: 361, column: 4, scope: !1909)
!1912 = !DILocation(line: 360, column: 28, scope: !1909)
!1913 = !DILocation(line: 360, column: 17, scope: !1909)
!1914 = !DILocation(line: 360, column: 49, scope: !1909)
!1915 = !DILocation(line: 362, column: 28, scope: !1909)
!1916 = !DILocation(line: 362, column: 17, scope: !1909)
!1917 = !DILocation(line: 362, column: 50, scope: !1909)
!1918 = !DILocation(line: 362, column: 59, scope: !1909)
!1919 = !DILocation(line: 363, column: 29, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1909, file: !225, line: 363, column: 22)
!1921 = !DILocation(line: 363, column: 22, scope: !1909)
!1922 = !DILocation(line: 365, column: 5, scope: !1920)
!1923 = !DILocation(line: 364, column: 25, scope: !1920)
!1924 = !DILocation(line: 364, column: 62, scope: !1920)
!1925 = !DILocation(line: 364, column: 69, scope: !1920)
!1926 = !DILocation(line: 359, column: 60, scope: !1905)
!1927 = !DILocation(line: 359, column: 41, scope: !1905)
!1928 = distinct !{!1928, !1907, !1929, !314, !315}
!1929 = !DILocation(line: 366, column: 9, scope: !1906)
!1930 = !DILocation(line: 368, column: 1, scope: !1845)
!1931 = distinct !DISubprogram(name: "copymolecule", scope: !225, file: !225, line: 370, type: !1932, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!221, !221}
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1941}
!1935 = !DILocalVariable(name: "mol", arg: 1, scope: !1931, file: !225, line: 370, type: !221)
!1936 = !DILocalVariable(name: "row", scope: !1931, file: !225, line: 372, type: !15)
!1937 = !DILocalVariable(name: "col", scope: !1931, file: !225, line: 372, type: !15)
!1938 = !DILocalVariable(name: "strptr", scope: !1931, file: !225, line: 373, type: !46)
!1939 = !DILocalVariable(name: "newstr", scope: !1931, file: !225, line: 373, type: !46)
!1940 = !DILocalVariable(name: "nextstr", scope: !1931, file: !225, line: 373, type: !46)
!1941 = !DILocalVariable(name: "newmol", scope: !1931, file: !225, line: 374, type: !221)
!1942 = !DILocation(line: 0, scope: !1931)
!1943 = !DILocation(line: 376, column: 9, scope: !1931)
!1944 = !DILocation(line: 378, column: 39, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1931, file: !225, line: 378, column: 12)
!1946 = !DILocation(line: 378, column: 23, scope: !1945)
!1947 = !DILocation(line: 378, column: 72, scope: !1945)
!1948 = !DILocation(line: 378, column: 12, scope: !1931)
!1949 = !DILocation(line: 379, column: 17, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !225, line: 378, column: 80)
!1951 = !DILocation(line: 380, column: 17, scope: !1950)
!1952 = !DILocation(line: 381, column: 17, scope: !1950)
!1953 = !DILocation(line: 384, column: 35, scope: !1931)
!1954 = !{!1955, !307, i64 96}
!1955 = !{!"molecule_t", !298, i64 0, !307, i64 96, !297, i64 104, !307, i64 112, !307, i64 116, !307, i64 120, !297, i64 128}
!1956 = !DILocation(line: 384, column: 17, scope: !1931)
!1957 = !DILocation(line: 384, column: 28, scope: !1931)
!1958 = !DILocation(line: 385, column: 36, scope: !1931)
!1959 = !{!1955, !307, i64 112}
!1960 = !DILocation(line: 385, column: 17, scope: !1931)
!1961 = !DILocation(line: 385, column: 29, scope: !1931)
!1962 = !DILocation(line: 386, column: 33, scope: !1931)
!1963 = !{!1955, !307, i64 116}
!1964 = !DILocation(line: 386, column: 17, scope: !1931)
!1965 = !DILocation(line: 386, column: 26, scope: !1931)
!1966 = !DILocation(line: 387, column: 33, scope: !1931)
!1967 = !{!1955, !307, i64 120}
!1968 = !DILocation(line: 387, column: 17, scope: !1931)
!1969 = !DILocation(line: 387, column: 26, scope: !1931)
!1970 = !DILocation(line: 389, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1931, file: !225, line: 389, column: 14)
!1972 = !{!1955, !297, i64 128}
!1973 = !DILocation(line: 389, column: 25, scope: !1971)
!1974 = !DILocation(line: 389, column: 14, scope: !1931)
!1975 = !DILocation(line: 390, column: 33, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1971, file: !225, line: 389, column: 35)
!1977 = !DILocation(line: 391, column: 9, scope: !1976)
!1978 = !DILocation(line: 0, scope: !1971)
!1979 = !DILocation(line: 393, column: 25, scope: !1971)
!1980 = !DILocation(line: 393, column: 31, scope: !1971)
!1981 = !DILocation(line: 397, column: 51, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !225, line: 396, column: 50)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !225, line: 396, column: 17)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !225, line: 396, column: 17)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !225, line: 395, column: 42)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !225, line: 395, column: 9)
!1987 = distinct !DILexicalBlock(scope: !1931, file: !225, line: 395, column: 9)
!1988 = !DILocation(line: 401, column: 23, scope: !1931)
!1989 = !{!1955, !297, i64 104}
!1990 = !DILocation(line: 402, column: 21, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1931, file: !225, line: 402, column: 14)
!1992 = !DILocation(line: 402, column: 14, scope: !1931)
!1993 = !DILocation(line: 403, column: 26, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !225, line: 402, column: 30)
!1995 = !DILocation(line: 404, column: 25, scope: !1994)
!1996 = !DILocation(line: 404, column: 36, scope: !1994)
!1997 = !{!1862, !297, i64 16}
!1998 = !DILocation(line: 405, column: 25, scope: !1994)
!1999 = !DILocation(line: 405, column: 35, scope: !1994)
!2000 = !DILocation(line: 406, column: 34, scope: !1994)
!2001 = !{!1862, !297, i64 24}
!2002 = !DILocation(line: 409, column: 24, scope: !1931)
!2003 = !DILocation(line: 409, column: 9, scope: !1931)
!2004 = !DILocation(line: 410, column: 27, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1931, file: !225, line: 409, column: 34)
!2006 = !DILocation(line: 412, column: 33, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2005, file: !225, line: 411, column: 22)
!2008 = !DILocation(line: 412, column: 40, scope: !2007)
!2009 = !DILocation(line: 413, column: 26, scope: !2005)
!2010 = !DILocation(line: 413, column: 37, scope: !2005)
!2011 = !DILocation(line: 415, column: 34, scope: !2005)
!2012 = distinct !{!2012, !2003, !2013, !314, !315}
!2013 = !DILocation(line: 416, column: 9, scope: !1931)
!2014 = !DILocation(line: 418, column: 9, scope: !1931)
!2015 = !DILocation(line: 419, column: 9, scope: !1931)
!2016 = !DILocation(line: 420, column: 1, scope: !1931)
!2017 = !DISubprogram(name: "upd_molnumbers", scope: !225, file: !225, line: 16, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !221}
!2020 = !DISubprogram(name: "copyparm", scope: !225, file: !225, line: 53, type: !2021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!52, !52}
!2023 = !DISubprogram(name: "fclose", scope: !2024, file: !2024, line: 213, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2024 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!15, !336}
!2027 = !DISubprogram(name: "fgets", scope: !2024, file: !2024, line: 564, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!220, !2030, !15, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !220)
!2031 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !336)
!2032 = !DISubprogram(name: "NAB_initatom", scope: !225, file: !225, line: 48, type: !2033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !192, !15}
!2035 = distinct !DISubprogram(name: "addres2reslib", scope: !225, file: !225, line: 996, type: !2036, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !223}
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045}
!2039 = !DILocalVariable(name: "rlp", arg: 1, scope: !2035, file: !225, line: 996, type: !223)
!2040 = !DILocalVariable(name: "res", scope: !2035, file: !225, line: 998, type: !6)
!2041 = !DILocalVariable(name: "ap", scope: !2035, file: !225, line: 999, type: !192)
!2042 = !DILocalVariable(name: "anp", scope: !2035, file: !225, line: 1000, type: !220)
!2043 = !DILocalVariable(name: "rnp", scope: !2035, file: !225, line: 1000, type: !220)
!2044 = !DILocalVariable(name: "a", scope: !2035, file: !225, line: 1001, type: !15)
!2045 = !DILocalVariable(name: "i", scope: !2035, file: !225, line: 1001, type: !15)
!2046 = !DILocation(line: 0, scope: !2035)
!2047 = !DILocation(line: 1003, column: 29, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2035, file: !225, line: 1003, column: 6)
!2049 = !DILocation(line: 1003, column: 14, scope: !2048)
!2050 = !DILocation(line: 1003, column: 61, scope: !2048)
!2051 = !DILocation(line: 1003, column: 6, scope: !2035)
!2052 = !DILocation(line: 1009, column: 33, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2035, file: !225, line: 1009, column: 6)
!2054 = !DILocation(line: 1009, column: 41, scope: !2053)
!2055 = !DILocation(line: 1009, column: 25, scope: !2053)
!2056 = !DILocation(line: 1009, column: 64, scope: !2053)
!2057 = !DILocation(line: 1009, column: 6, scope: !2035)
!2058 = !DILocation(line: 1015, column: 21, scope: !2035)
!2059 = !{!306, !297, i64 24}
!2060 = !DILocation(line: 1015, column: 7, scope: !2035)
!2061 = !DILocation(line: 1015, column: 14, scope: !2035)
!2062 = !DILocation(line: 1016, column: 16, scope: !2035)
!2063 = !DILocation(line: 1018, column: 26, scope: !2035)
!2064 = !DILocation(line: 1018, column: 44, scope: !2035)
!2065 = !DILocation(line: 1018, column: 18, scope: !2035)
!2066 = !DILocation(line: 1019, column: 10, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2035, file: !225, line: 1019, column: 6)
!2068 = !DILocation(line: 1019, column: 6, scope: !2035)
!2069 = !DILocation(line: 1020, column: 12, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !225, line: 1019, column: 19)
!2071 = !DILocation(line: 1020, column: 3, scope: !2070)
!2072 = !DILocation(line: 1022, column: 3, scope: !2070)
!2073 = !DILocation(line: 1024, column: 2, scope: !2035)
!2074 = !DILocation(line: 1025, column: 7, scope: !2035)
!2075 = !DILocation(line: 1025, column: 17, scope: !2035)
!2076 = !DILocation(line: 1027, column: 18, scope: !2035)
!2077 = !DILocation(line: 1028, column: 10, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2035, file: !225, line: 1028, column: 6)
!2079 = !DILocation(line: 1028, column: 6, scope: !2035)
!2080 = !DILocation(line: 1029, column: 12, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !225, line: 1028, column: 19)
!2082 = !DILocation(line: 1029, column: 3, scope: !2081)
!2083 = !DILocation(line: 1031, column: 3, scope: !2081)
!2084 = !DILocation(line: 1033, column: 2, scope: !2035)
!2085 = !DILocation(line: 1034, column: 7, scope: !2035)
!2086 = !DILocation(line: 1034, column: 15, scope: !2035)
!2087 = !DILocation(line: 1036, column: 7, scope: !2035)
!2088 = !DILocation(line: 1036, column: 13, scope: !2035)
!2089 = !DILocation(line: 1037, column: 7, scope: !2035)
!2090 = !DILocation(line: 1037, column: 17, scope: !2035)
!2091 = !DILocation(line: 1038, column: 7, scope: !2035)
!2092 = !DILocation(line: 1038, column: 16, scope: !2035)
!2093 = !DILocation(line: 1039, column: 7, scope: !2035)
!2094 = !DILocation(line: 1039, column: 14, scope: !2035)
!2095 = !DILocation(line: 1040, column: 21, scope: !2035)
!2096 = !DILocation(line: 1040, column: 7, scope: !2035)
!2097 = !DILocation(line: 1040, column: 14, scope: !2035)
!2098 = !DILocation(line: 1041, column: 25, scope: !2035)
!2099 = !DILocation(line: 1041, column: 7, scope: !2035)
!2100 = !DILocation(line: 1041, column: 18, scope: !2035)
!2101 = !DILocation(line: 1042, column: 7, scope: !2035)
!2102 = !DILocation(line: 1045, column: 7, scope: !2035)
!2103 = !DILocation(line: 1045, column: 18, scope: !2035)
!2104 = !DILocation(line: 1046, column: 7, scope: !2035)
!2105 = !DILocation(line: 1046, column: 17, scope: !2035)
!2106 = !DILocation(line: 1047, column: 7, scope: !2035)
!2107 = !DILocation(line: 1047, column: 16, scope: !2035)
!2108 = !DILocation(line: 1048, column: 7, scope: !2035)
!2109 = !DILocation(line: 1048, column: 16, scope: !2035)
!2110 = !DILocation(line: 1043, column: 18, scope: !2035)
!2111 = !DILocation(line: 1049, column: 7, scope: !2035)
!2112 = !DILocation(line: 1049, column: 16, scope: !2035)
!2113 = !DILocation(line: 1050, column: 7, scope: !2035)
!2114 = !DILocation(line: 1050, column: 15, scope: !2035)
!2115 = !DILocation(line: 1051, column: 16, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !225, line: 1051, column: 2)
!2117 = distinct !DILexicalBlock(scope: !2035, file: !225, line: 1051, column: 2)
!2118 = !DILocation(line: 1051, column: 2, scope: !2117)
!2119 = !DILocation(line: 1052, column: 46, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !225, line: 1051, column: 32)
!2121 = !DILocation(line: 1052, column: 27, scope: !2120)
!2122 = !DILocation(line: 1052, column: 59, scope: !2120)
!2123 = !DILocation(line: 1052, column: 19, scope: !2120)
!2124 = !DILocation(line: 1053, column: 11, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !225, line: 1053, column: 7)
!2126 = !DILocation(line: 1053, column: 7, scope: !2120)
!2127 = !DILocation(line: 1054, column: 13, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !225, line: 1053, column: 20)
!2129 = !DILocation(line: 1054, column: 4, scope: !2128)
!2130 = !DILocation(line: 1056, column: 4, scope: !2128)
!2131 = !DILocation(line: 1059, column: 3, scope: !2120)
!2132 = !DILocation(line: 1060, column: 21, scope: !2120)
!2133 = !DILocation(line: 1060, column: 32, scope: !2120)
!2134 = !DILocation(line: 1061, column: 21, scope: !2120)
!2135 = !DILocation(line: 1061, column: 32, scope: !2120)
!2136 = !DILocation(line: 1062, column: 21, scope: !2120)
!2137 = !DILocation(line: 1062, column: 32, scope: !2120)
!2138 = !DILocation(line: 1063, column: 3, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2120, file: !225, line: 1063, column: 3)
!2140 = !DILocation(line: 1064, column: 37, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2139, file: !225, line: 1063, column: 3)
!2142 = !DILocation(line: 1065, column: 21, scope: !2120)
!2143 = !DILocation(line: 1065, column: 32, scope: !2120)
!2144 = !DILocation(line: 1066, column: 45, scope: !2120)
!2145 = !DILocation(line: 1066, column: 21, scope: !2120)
!2146 = !DILocation(line: 1066, column: 32, scope: !2120)
!2147 = !DILocation(line: 1067, column: 45, scope: !2120)
!2148 = !DILocation(line: 1067, column: 21, scope: !2120)
!2149 = !DILocation(line: 1067, column: 32, scope: !2120)
!2150 = !DILocation(line: 1068, column: 45, scope: !2120)
!2151 = !DILocation(line: 1068, column: 21, scope: !2120)
!2152 = !DILocation(line: 1068, column: 32, scope: !2120)
!2153 = !DILocation(line: 1069, column: 45, scope: !2120)
!2154 = !DILocation(line: 1069, column: 21, scope: !2120)
!2155 = !DILocation(line: 1069, column: 32, scope: !2120)
!2156 = !DILocation(line: 1070, column: 45, scope: !2120)
!2157 = !DILocation(line: 1070, column: 21, scope: !2120)
!2158 = !DILocation(line: 1070, column: 32, scope: !2120)
!2159 = !DILocation(line: 1071, column: 45, scope: !2120)
!2160 = !DILocation(line: 1071, column: 21, scope: !2120)
!2161 = !DILocation(line: 1071, column: 32, scope: !2120)
!2162 = !DILocation(line: 1072, column: 45, scope: !2120)
!2163 = !DILocation(line: 1072, column: 21, scope: !2120)
!2164 = !DILocation(line: 1072, column: 32, scope: !2120)
!2165 = !DILocation(line: 1073, column: 21, scope: !2120)
!2166 = !DILocation(line: 1073, column: 32, scope: !2120)
!2167 = !DILocation(line: 1074, column: 21, scope: !2120)
!2168 = !DILocation(line: 1074, column: 32, scope: !2120)
!2169 = !DILocation(line: 1075, column: 3, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2120, file: !225, line: 1075, column: 3)
!2171 = !DILocation(line: 1076, column: 35, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2170, file: !225, line: 1075, column: 3)
!2173 = !DILocation(line: 1076, column: 4, scope: !2172)
!2174 = !DILocation(line: 1076, column: 33, scope: !2172)
!2175 = !DILocation(line: 1075, column: 24, scope: !2172)
!2176 = !DILocation(line: 1075, column: 17, scope: !2172)
!2177 = distinct !{!2177, !2169, !2178, !314, !315}
!2178 = !DILocation(line: 1076, column: 55, scope: !2170)
!2179 = !DILocation(line: 1077, column: 45, scope: !2120)
!2180 = !DILocation(line: 1077, column: 21, scope: !2120)
!2181 = !DILocation(line: 1077, column: 32, scope: !2120)
!2182 = !DILocation(line: 1051, column: 28, scope: !2116)
!2183 = distinct !{!2183, !2118, !2184, !314, !315}
!2184 = !DILocation(line: 1078, column: 2, scope: !2117)
!2185 = !DILocation(line: 1079, column: 1, scope: !2035)
!2186 = distinct !DISubprogram(name: "addbonds2reslib", scope: !225, file: !225, line: 1081, type: !2036, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2188 = !DILocalVariable(name: "rlp", arg: 1, scope: !2186, file: !225, line: 1081, type: !223)
!2189 = !DILocalVariable(name: "res", scope: !2186, file: !225, line: 1083, type: !6)
!2190 = !DILocalVariable(name: "bp", scope: !2186, file: !225, line: 1084, type: !174)
!2191 = !DILocalVariable(name: "b", scope: !2186, file: !225, line: 1085, type: !15)
!2192 = !DILocalVariable(name: "a", scope: !2186, file: !225, line: 1086, type: !15)
!2193 = !DILocalVariable(name: "ai", scope: !2186, file: !225, line: 1086, type: !15)
!2194 = !DILocalVariable(name: "aj", scope: !2186, file: !225, line: 1086, type: !15)
!2195 = !DILocalVariable(name: "api", scope: !2186, file: !225, line: 1087, type: !192)
!2196 = !DILocalVariable(name: "apj", scope: !2186, file: !225, line: 1087, type: !192)
!2197 = !DILocation(line: 0, scope: !2186)
!2198 = !DILocation(line: 1089, column: 18, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2186, file: !225, line: 1089, column: 2)
!2200 = !DILocation(line: 0, scope: !2199)
!2201 = !DILocation(line: 1089, column: 2, scope: !2199)
!2202 = !DILocation(line: 1090, column: 20, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !225, line: 1090, column: 7)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !225, line: 1089, column: 52)
!2205 = distinct !DILexicalBlock(scope: !2199, file: !225, line: 1089, column: 2)
!2206 = !DILocation(line: 1090, column: 7, scope: !2203)
!2207 = !DILocation(line: 1090, column: 41, scope: !2203)
!2208 = !DILocation(line: 1090, column: 7, scope: !2204)
!2209 = !DILocation(line: 1092, column: 13, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !225, line: 1091, column: 8)
!2211 = distinct !DILexicalBlock(scope: !2203, file: !225, line: 1090, column: 47)
!2212 = !DILocation(line: 1092, column: 21, scope: !2210)
!2213 = !DILocation(line: 1092, column: 5, scope: !2210)
!2214 = !DILocation(line: 1091, column: 15, scope: !2210)
!2215 = !DILocation(line: 1093, column: 5, scope: !2210)
!2216 = !DILocation(line: 1091, column: 8, scope: !2211)
!2217 = !DILocation(line: 1099, column: 18, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !225, line: 1099, column: 4)
!2219 = distinct !DILexicalBlock(scope: !2211, file: !225, line: 1099, column: 4)
!2220 = !DILocation(line: 1099, column: 4, scope: !2219)
!2221 = !DILocation(line: 1094, column: 5, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2210, file: !225, line: 1093, column: 14)
!2223 = !DILocation(line: 1096, column: 5, scope: !2222)
!2224 = !DILocation(line: 1097, column: 5, scope: !2222)
!2225 = !DILocation(line: 1100, column: 25, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2218, file: !225, line: 1099, column: 34)
!2227 = !DILocation(line: 1100, column: 10, scope: !2226)
!2228 = !DILocation(line: 1100, column: 23, scope: !2226)
!2229 = !DILocation(line: 1101, column: 25, scope: !2226)
!2230 = !DILocation(line: 1101, column: 10, scope: !2226)
!2231 = !DILocation(line: 1101, column: 23, scope: !2226)
!2232 = !DILocation(line: 1102, column: 7, scope: !2226)
!2233 = !DILocation(line: 1103, column: 7, scope: !2226)
!2234 = !DILocation(line: 1104, column: 12, scope: !2226)
!2235 = !DILocation(line: 1105, column: 5, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2226, file: !225, line: 1105, column: 5)
!2237 = !DILocation(line: 1105, column: 38, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2236, file: !225, line: 1105, column: 5)
!2239 = !DILocation(line: 1105, column: 19, scope: !2238)
!2240 = distinct !{!2240, !2235, !2241, !314, !315}
!2241 = !DILocation(line: 1113, column: 5, scope: !2236)
!2242 = !DILocation(line: 1106, column: 10, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !225, line: 1106, column: 10)
!2244 = distinct !DILexicalBlock(scope: !2238, file: !225, line: 1105, column: 42)
!2245 = !DILocation(line: 1106, column: 30, scope: !2243)
!2246 = !DILocation(line: 1106, column: 10, scope: !2244)
!2247 = !DILocation(line: 1108, column: 35, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2243, file: !225, line: 1108, column: 15)
!2249 = !DILocation(line: 1108, column: 15, scope: !2243)
!2250 = !DILocation(line: 1109, column: 27, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !225, line: 1108, column: 45)
!2252 = !DILocation(line: 1110, column: 12, scope: !2251)
!2253 = !DILocation(line: 1110, column: 22, scope: !2251)
!2254 = !DILocation(line: 1111, column: 7, scope: !2251)
!2255 = !DILocation(line: 1114, column: 12, scope: !2226)
!2256 = !DILocation(line: 1115, column: 5, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2226, file: !225, line: 1115, column: 5)
!2258 = !DILocation(line: 1115, column: 38, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2257, file: !225, line: 1115, column: 5)
!2260 = !DILocation(line: 1115, column: 19, scope: !2259)
!2261 = distinct !{!2261, !2256, !2262, !314, !315}
!2262 = !DILocation(line: 1123, column: 5, scope: !2257)
!2263 = !DILocation(line: 1116, column: 10, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !225, line: 1116, column: 10)
!2265 = distinct !DILexicalBlock(scope: !2259, file: !225, line: 1115, column: 42)
!2266 = !DILocation(line: 1116, column: 30, scope: !2264)
!2267 = !DILocation(line: 1116, column: 10, scope: !2265)
!2268 = !DILocation(line: 1118, column: 35, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !225, line: 1118, column: 15)
!2270 = !DILocation(line: 1118, column: 15, scope: !2264)
!2271 = !DILocation(line: 1119, column: 27, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2269, file: !225, line: 1118, column: 45)
!2273 = !DILocation(line: 1120, column: 12, scope: !2272)
!2274 = !DILocation(line: 1120, column: 22, scope: !2272)
!2275 = !DILocation(line: 1121, column: 7, scope: !2272)
!2276 = !DILocation(line: 1099, column: 30, scope: !2218)
!2277 = !DILocation(line: 1099, column: 20, scope: !2218)
!2278 = distinct !{!2278, !2220, !2279, !314, !315}
!2279 = !DILocation(line: 1124, column: 4, scope: !2219)
!2280 = !DILocation(line: 1125, column: 9, scope: !2211)
!2281 = !DILocation(line: 1125, column: 21, scope: !2211)
!2282 = !DILocation(line: 1126, column: 9, scope: !2211)
!2283 = !DILocation(line: 1126, column: 20, scope: !2211)
!2284 = !DILocation(line: 1127, column: 4, scope: !2211)
!2285 = !DILocation(line: 1089, column: 44, scope: !2205)
!2286 = distinct !{!2286, !2201, !2287, !314, !315}
!2287 = !DILocation(line: 1129, column: 2, scope: !2199)
!2288 = !DILocation(line: 1130, column: 57, scope: !2186)
!2289 = !DILocation(line: 1130, column: 2, scope: !2186)
!2290 = !DILocation(line: 1131, column: 2, scope: !2186)
!2291 = !DILocation(line: 1132, column: 2, scope: !2186)
!2292 = !DILocation(line: 1133, column: 1, scope: !2186)
!2293 = distinct !DISubprogram(name: "addqr2reslib", scope: !225, file: !225, line: 1135, type: !2036, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!2294 = !{!2295, !2296, !2297, !2298, !2299}
!2295 = !DILocalVariable(name: "rlp", arg: 1, scope: !2293, file: !225, line: 1135, type: !223)
!2296 = !DILocalVariable(name: "res", scope: !2293, file: !225, line: 1137, type: !6)
!2297 = !DILocalVariable(name: "a", scope: !2293, file: !225, line: 1138, type: !15)
!2298 = !DILocalVariable(name: "ap", scope: !2293, file: !225, line: 1139, type: !192)
!2299 = !DILocalVariable(name: "apr", scope: !2293, file: !225, line: 1139, type: !192)
!2300 = !DILocation(line: 0, scope: !2293)
!2301 = !DILocation(line: 1141, column: 18, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2293, file: !225, line: 1141, column: 2)
!2303 = !DILocation(line: 0, scope: !2302)
!2304 = !DILocation(line: 1141, column: 2, scope: !2302)
!2305 = !DILocation(line: 1142, column: 20, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !225, line: 1142, column: 7)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !225, line: 1141, column: 52)
!2308 = distinct !DILexicalBlock(scope: !2302, file: !225, line: 1141, column: 2)
!2309 = !DILocation(line: 1142, column: 7, scope: !2306)
!2310 = !DILocation(line: 1142, column: 41, scope: !2306)
!2311 = !DILocation(line: 1142, column: 7, scope: !2307)
!2312 = !DILocation(line: 1143, column: 32, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !225, line: 1143, column: 4)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !225, line: 1143, column: 4)
!2315 = distinct !DILexicalBlock(scope: !2306, file: !225, line: 1142, column: 47)
!2316 = !DILocation(line: 1143, column: 30, scope: !2313)
!2317 = !DILocation(line: 1143, column: 4, scope: !2314)
!2318 = !DILocation(line: 1206, column: 2, scope: !1248, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 1144, column: 16, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !225, line: 1144, column: 9)
!2321 = distinct !DILexicalBlock(scope: !2313, file: !225, line: 1143, column: 52)
!2322 = !DILocation(line: 1144, column: 35, scope: !2320)
!2323 = !DILocation(line: 0, scope: !1236, inlinedAt: !2319)
!2324 = !DILocation(line: 1207, column: 34, scope: !1251, inlinedAt: !2319)
!2325 = !DILocation(line: 1207, column: 8, scope: !1251, inlinedAt: !2319)
!2326 = !DILocation(line: 1206, column: 34, scope: !1247, inlinedAt: !2319)
!2327 = !DILocation(line: 1207, column: 7, scope: !1252, inlinedAt: !2319)
!2328 = !DILocation(line: 1206, column: 16, scope: !1247, inlinedAt: !2319)
!2329 = distinct !{!2329, !2318, !2330, !314, !315}
!2330 = !DILocation(line: 1209, column: 2, scope: !1248, inlinedAt: !2319)
!2331 = !DILocation(line: 1146, column: 26, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2320, file: !225, line: 1144, column: 50)
!2333 = !DILocation(line: 1146, column: 11, scope: !2332)
!2334 = !DILocation(line: 1146, column: 20, scope: !2332)
!2335 = !DILocation(line: 1147, column: 26, scope: !2332)
!2336 = !DILocation(line: 1147, column: 11, scope: !2332)
!2337 = !DILocation(line: 1147, column: 20, scope: !2332)
!2338 = !DILocation(line: 1148, column: 26, scope: !2332)
!2339 = !DILocation(line: 1148, column: 11, scope: !2332)
!2340 = !DILocation(line: 1148, column: 20, scope: !2332)
!2341 = !DILocation(line: 1149, column: 26, scope: !2332)
!2342 = !DILocation(line: 1149, column: 11, scope: !2332)
!2343 = !DILocation(line: 1149, column: 20, scope: !2332)
!2344 = !DILocation(line: 1150, column: 26, scope: !2332)
!2345 = !DILocation(line: 1150, column: 11, scope: !2332)
!2346 = !DILocation(line: 1150, column: 20, scope: !2332)
!2347 = !DILocation(line: 1151, column: 26, scope: !2332)
!2348 = !DILocation(line: 1151, column: 11, scope: !2332)
!2349 = !DILocation(line: 1151, column: 20, scope: !2332)
!2350 = !DILocation(line: 1152, column: 26, scope: !2332)
!2351 = !DILocation(line: 1152, column: 11, scope: !2332)
!2352 = !DILocation(line: 1152, column: 20, scope: !2332)
!2353 = !DILocation(line: 1153, column: 5, scope: !2332)
!2354 = !DILocation(line: 1143, column: 42, scope: !2313)
!2355 = !DILocation(line: 1143, column: 48, scope: !2313)
!2356 = distinct !{!2356, !2317, !2357, !314, !315}
!2357 = !DILocation(line: 1154, column: 4, scope: !2314)
!2358 = !DILocation(line: 1141, column: 44, scope: !2308)
!2359 = distinct !{!2359, !2304, !2360, !314, !315}
!2360 = !DILocation(line: 1157, column: 2, scope: !2302)
!2361 = !DILocation(line: 1158, column: 57, scope: !2293)
!2362 = !DILocation(line: 1158, column: 2, scope: !2293)
!2363 = !DILocation(line: 1159, column: 2, scope: !2293)
!2364 = !DILocation(line: 1160, column: 2, scope: !2293)
!2365 = !DILocation(line: 1161, column: 1, scope: !2293)
!2366 = distinct !DISubprogram(name: "addchi2reslib", scope: !225, file: !225, line: 1163, type: !2036, scopeLine: 1164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2367)
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2376, !2377}
!2368 = !DILocalVariable(name: "rlp", arg: 1, scope: !2366, file: !225, line: 1163, type: !223)
!2369 = !DILocalVariable(name: "res", scope: !2366, file: !225, line: 1165, type: !6)
!2370 = !DILocalVariable(name: "cp", scope: !2366, file: !225, line: 1166, type: !181)
!2371 = !DILocalVariable(name: "a", scope: !2366, file: !225, line: 1167, type: !15)
!2372 = !DILocalVariable(name: "c", scope: !2366, file: !225, line: 1167, type: !15)
!2373 = !DILocalVariable(name: "ca", scope: !2366, file: !225, line: 1167, type: !15)
!2374 = !DILocalVariable(name: "pos", scope: !2366, file: !225, line: 1168, type: !2375)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 768, elements: !187)
!2376 = !DILocalVariable(name: "dvol", scope: !2366, file: !225, line: 1169, type: !2375)
!2377 = !DILocalVariable(name: "vol", scope: !2366, file: !225, line: 1170, type: !40)
!2378 = !DILocation(line: 0, scope: !2366)
!2379 = !DILocation(line: 1168, column: 2, scope: !2366)
!2380 = !DILocation(line: 1168, column: 11, scope: !2366)
!2381 = !DILocation(line: 1169, column: 2, scope: !2366)
!2382 = !DILocation(line: 1169, column: 11, scope: !2366)
!2383 = !DILocation(line: 1170, column: 2, scope: !2366)
!2384 = !DILocation(line: 1172, column: 18, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2366, file: !225, line: 1172, column: 2)
!2386 = !DILocation(line: 0, scope: !2385)
!2387 = !DILocation(line: 1172, column: 2, scope: !2385)
!2388 = !DILocation(line: 1173, column: 21, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !225, line: 1173, column: 7)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !225, line: 1172, column: 52)
!2391 = distinct !DILexicalBlock(scope: !2385, file: !225, line: 1172, column: 2)
!2392 = !DILocation(line: 1173, column: 8, scope: !2389)
!2393 = !DILocation(line: 1173, column: 7, scope: !2390)
!2394 = !DILocation(line: 1175, column: 13, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !225, line: 1174, column: 8)
!2396 = distinct !DILexicalBlock(scope: !2389, file: !225, line: 1173, column: 43)
!2397 = !DILocation(line: 1175, column: 19, scope: !2395)
!2398 = !DILocation(line: 1175, column: 5, scope: !2395)
!2399 = !DILocation(line: 1176, column: 5, scope: !2395)
!2400 = !DILocation(line: 1174, column: 8, scope: !2396)
!2401 = !DILocation(line: 1177, column: 14, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2395, file: !225, line: 1176, column: 14)
!2403 = !DILocation(line: 1177, column: 5, scope: !2402)
!2404 = !DILocation(line: 1180, column: 5, scope: !2402)
!2405 = !DILocation(line: 1182, column: 9, scope: !2396)
!2406 = !DILocation(line: 1182, column: 19, scope: !2396)
!2407 = !DILocation(line: 1183, column: 9, scope: !2396)
!2408 = !DILocation(line: 1183, column: 18, scope: !2396)
!2409 = !DILocation(line: 1184, column: 18, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !225, line: 1184, column: 4)
!2411 = distinct !DILexicalBlock(scope: !2396, file: !225, line: 1184, column: 4)
!2412 = !DILocation(line: 1184, column: 4, scope: !2411)
!2413 = !DILocation(line: 1174, column: 15, scope: !2395)
!2414 = !DILocation(line: 1185, column: 5, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !225, line: 1185, column: 5)
!2416 = distinct !DILexicalBlock(scope: !2410, file: !225, line: 1184, column: 32)
!2417 = !DILocation(line: 1186, column: 27, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !225, line: 1185, column: 29)
!2419 = distinct !DILexicalBlock(scope: !2415, file: !225, line: 1185, column: 5)
!2420 = !DILocation(line: 1186, column: 11, scope: !2418)
!2421 = !DILocation(line: 1186, column: 25, scope: !2418)
!2422 = !DILocation(line: 1187, column: 18, scope: !2418)
!2423 = !DILocation(line: 1187, column: 6, scope: !2418)
!2424 = !DILocation(line: 1187, column: 16, scope: !2418)
!2425 = !DILocation(line: 1188, column: 18, scope: !2418)
!2426 = !DILocation(line: 1188, column: 6, scope: !2418)
!2427 = !DILocation(line: 1188, column: 16, scope: !2418)
!2428 = !DILocation(line: 1189, column: 18, scope: !2418)
!2429 = !DILocation(line: 1189, column: 6, scope: !2418)
!2430 = !DILocation(line: 1189, column: 16, scope: !2418)
!2431 = !DILocation(line: 1185, column: 25, scope: !2419)
!2432 = !DILocation(line: 1185, column: 19, scope: !2419)
!2433 = distinct !{!2433, !2414, !2434, !314, !315}
!2434 = !DILocation(line: 1190, column: 5, scope: !2415)
!2435 = !DILocation(line: 1191, column: 5, scope: !2416)
!2436 = !DILocation(line: 1192, column: 18, scope: !2416)
!2437 = !DILocation(line: 1192, column: 9, scope: !2416)
!2438 = !DILocation(line: 1192, column: 16, scope: !2416)
!2439 = !DILocation(line: 1193, column: 7, scope: !2416)
!2440 = !DILocation(line: 1184, column: 28, scope: !2410)
!2441 = !DILocation(line: 1184, column: 20, scope: !2410)
!2442 = distinct !{!2442, !2412, !2443, !314, !315}
!2443 = !DILocation(line: 1194, column: 4, scope: !2411)
!2444 = !DILocation(line: 1172, column: 44, scope: !2391)
!2445 = distinct !{!2445, !2387, !2446, !314, !315}
!2446 = !DILocation(line: 1197, column: 2, scope: !2385)
!2447 = !DILocation(line: 1198, column: 11, scope: !2366)
!2448 = !DILocation(line: 1199, column: 8, scope: !2366)
!2449 = !DILocation(line: 1199, column: 24, scope: !2366)
!2450 = !DILocation(line: 1198, column: 2, scope: !2366)
!2451 = !DILocation(line: 1200, column: 1, scope: !2366)
!2452 = !DISubprogram(name: "chirvol", scope: !2453, file: !2453, line: 1, type: !2454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2453 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/chirvol.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "02115784aa5f2605efe296b0108dfa0f")
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !15, !15, !15, !15, !15, !97, !97, !97}
