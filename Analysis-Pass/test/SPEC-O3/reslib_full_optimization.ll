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
  %call1 = tail call fastcc %struct.reslib_t* @read_reslib(i8* noundef %reslib), !dbg !315
  call void @llvm.dbg.value(metadata %struct.reslib_t* %call1, metadata !282, metadata !DIExpression()), !dbg !283
  %cmp2 = icmp eq %struct.reslib_t* %call1, null, !dbg !318
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !319

if.then3:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !320, !tbaa !296
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %reslib) #16, !dbg !322
  tail call void @exit(i32 noundef 1) #17, !dbg !323
  unreachable, !dbg !323

if.end5:                                          ; preds = %for.body.i, %if.then
  %rlp.0 = phi %struct.reslib_t* [ %call1, %if.then ], [ %rlp.07.i, %for.body.i ], !dbg !324
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0, metadata !282, metadata !DIExpression()), !dbg !283
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.0, i64 0, i32 2, !dbg !325
  %2 = load i32, i32* %rl_r_kind, align 8, !dbg !325, !tbaa !327
  %switch.tableidx = add i32 %2, -1, !dbg !328
  %3 = icmp ult i32 %switch.tableidx, 3, !dbg !328
  br i1 %3, label %switch.lookup, label %cleanup, !dbg !328

switch.lookup:                                    ; preds = %if.end5
  %4 = sext i32 %switch.tableidx to i64, !dbg !328
  %switch.gep = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table.getreslibkind, i64 0, i64 %4, !dbg !328
  %switch.load = load i8*, i8** %switch.gep, align 8, !dbg !328
  br label %cleanup, !dbg !328

cleanup:                                          ; preds = %switch.lookup, %if.end5
  %retval.0 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %if.end5 ], [ %switch.load, %switch.lookup ], !dbg !329
  ret i8* %retval.0, !dbg !330
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.reslib_t* @read_reslib(i8* noundef %reslib) unnamed_addr #0 !dbg !331 {
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
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !333, metadata !DIExpression()), !dbg !399
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %offname, i64 0, i64 0, !dbg !400
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #14, !dbg !400
  call void @llvm.dbg.declare(metadata [256 x i8]* %offname, metadata !398, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !402, metadata !DIExpression()) #14, !dbg !430
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !408, metadata !DIExpression()) #14, !dbg !430
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !409, metadata !DIExpression()) #14, !dbg !430
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !410, metadata !DIExpression()) #14, !dbg !430
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !411, metadata !DIExpression()) #14, !dbg !430
  call void @llvm.dbg.value(metadata i8* %0, metadata !412, metadata !DIExpression()) #14, !dbg !430
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %line.i, i64 0, i64 0, !dbg !433
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #14, !dbg !433
  call void @llvm.dbg.declare(metadata [128 x i8]* %line.i, metadata !418, metadata !DIExpression()) #14, !dbg !434
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %keyword.i, i64 0, i64 0, !dbg !433
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #14, !dbg !433
  call void @llvm.dbg.declare(metadata [20 x i8]* %keyword.i, metadata !422, metadata !DIExpression()) #14, !dbg !435
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %value.i, i64 0, i64 0, !dbg !433
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %3) #14, !dbg !433
  call void @llvm.dbg.declare(metadata [100 x i8]* %value.i, metadata !423, metadata !DIExpression()) #14, !dbg !436
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %newname.i, i64 0, i64 0, !dbg !433
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %4) #14, !dbg !433
  call void @llvm.dbg.declare(metadata [100 x i8]* %newname.i, metadata !427, metadata !DIExpression()) #14, !dbg !437
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %fname.i, i64 0, i64 0, !dbg !438
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #14, !dbg !438
  call void @llvm.dbg.declare(metadata [256 x i8]* %fname.i, metadata !428, metadata !DIExpression()) #14, !dbg !439
  %call.i = tail call i8* @strstr(i8* noundef nonnull dereferenceable(1) %reslib, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #15, !dbg !440
  %cmp.not.i = icmp eq i8* %call.i, null, !dbg !442
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i, !dbg !443

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %4, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef %reslib) #14, !dbg !444
  call void @llvm.dbg.value(metadata i8* %4, metadata !446, metadata !DIExpression()) #14, !dbg !452
  call void @llvm.dbg.value(metadata i8* %5, metadata !451, metadata !DIExpression()) #14, !dbg !452
  %6 = load i8, i8* %4, align 16, !dbg !454, !tbaa !456
  %cmp.i.i = icmp eq i8 %6, 47, !dbg !457
  %7 = bitcast [100 x i8]* %newname.i to i16*
  %rhsv.i = load i16, i16* %7, align 16
  %.not.i = icmp eq i16 %rhsv.i, 12078
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %.not.i, !dbg !458
  br i1 %or.cond.i, label %if.then.i.i, label %if.else.i.i, !dbg !458

if.then.i.i:                                      ; preds = %if.then.i
  %call2.i.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %4) #14, !dbg !459
  br label %mk_fname.exit.i, !dbg !459

if.else.i.i:                                      ; preds = %if.then.i
  %call3.i.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %4) #14, !dbg !460
  br label %mk_fname.exit.i

mk_fname.exit.i:                                  ; preds = %if.else.i.i, %if.then.i.i
  %call5.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !461
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call5.i, metadata !413, metadata !DIExpression()) #14, !dbg !430
  %cmp6.i = icmp eq %struct._IO_FILE* %call5.i, null, !dbg !463
  br i1 %cmp6.i, label %if.then7.i, label %if.end18.i, !dbg !464

if.then7.i:                                       ; preds = %mk_fname.exit.i
  %call9.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %5) #14, !dbg !465
  br label %read_reslib_header.exit.thread, !dbg !467

if.else.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !446, metadata !DIExpression()) #14, !dbg !468
  call void @llvm.dbg.value(metadata i8* %5, metadata !451, metadata !DIExpression()) #14, !dbg !468
  %8 = load i8, i8* %reslib, align 1, !dbg !471, !tbaa !456
  %cmp.i307.i = icmp eq i8 %8, 47, !dbg !472
  br i1 %cmp.i307.i, label %if.then.i312.i, label %lor.lhs.false.i310.i, !dbg !473

lor.lhs.false.i310.i:                             ; preds = %if.else.i
  %call.i308.i = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %reslib, i64 noundef 2) #15, !dbg !474
  %tobool.not.i309.i = icmp eq i32 %call.i308.i, 0, !dbg !474
  br i1 %tobool.not.i309.i, label %if.then.i312.i, label %if.else.i314.i, !dbg !475

if.then.i312.i:                                   ; preds = %lor.lhs.false.i310.i, %if.else.i
  %call2.i311.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %reslib) #14, !dbg !476
  br label %mk_fname.exit315.i, !dbg !476

if.else.i314.i:                                   ; preds = %lor.lhs.false.i310.i
  %call3.i313.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %reslib) #14, !dbg !477
  br label %mk_fname.exit315.i

mk_fname.exit315.i:                               ; preds = %if.else.i314.i, %if.then.i312.i
  %call12.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !478
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call12.i, metadata !413, metadata !DIExpression()) #14, !dbg !430
  %cmp13.i = icmp eq %struct._IO_FILE* %call12.i, null, !dbg !480
  br i1 %cmp13.i, label %if.then14.i, label %if.end18.i, !dbg !481

if.then14.i:                                      ; preds = %mk_fname.exit315.i
  %call16.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %5) #14, !dbg !482
  br label %read_reslib_header.exit.thread, !dbg !484

if.end18.i:                                       ; preds = %mk_fname.exit315.i, %mk_fname.exit.i
  %rfp.0.i = phi %struct._IO_FILE* [ %call5.i, %mk_fname.exit.i ], [ %call12.i, %mk_fname.exit315.i ], !dbg !485
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %rfp.0.i, metadata !413, metadata !DIExpression()) #14, !dbg !430
  %call19.i = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #14, !dbg !486
  %9 = bitcast i8* %call19.i to %struct.reslib_t*, !dbg !488
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !414, metadata !DIExpression()) #14, !dbg !430
  %cmp20.i = icmp eq i8* %call19.i, null, !dbg !489
  br i1 %cmp20.i, label %if.then21.i, label %if.end24.i, !dbg !490

if.then21.i:                                      ; preds = %if.end18.i
  %call22.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* noundef %reslib) #14, !dbg !491
  %call23.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !493
  br label %read_reslib_header.exit.thread, !dbg !494

if.end24.i:                                       ; preds = %if.end18.i
  %call25.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %reslib) #15, !dbg !495
  call void @llvm.dbg.value(metadata i64 %call25.i, metadata !416, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !430
  %conv.i = shl i64 %call25.i, 32, !dbg !496
  %sext.i = add i64 %conv.i, 4294967296, !dbg !496
  %conv26.i = ashr exact i64 %sext.i, 32, !dbg !496
  %call27.i = call noalias i8* @malloc(i64 noundef %conv26.i) #14, !dbg !498
  call void @llvm.dbg.value(metadata i8* %call27.i, metadata !417, metadata !DIExpression()) #14, !dbg !430
  %cmp28.i = icmp eq i8* %call27.i, null, !dbg !499
  br i1 %cmp28.i, label %if.then30.i, label %if.end33.i, !dbg !500

if.then30.i:                                      ; preds = %if.end24.i
  %call31.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i8* noundef %reslib) #14, !dbg !501
  %call32.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !503
  br label %read_reslib_header.exit.thread, !dbg !504

if.end33.i:                                       ; preds = %if.end24.i
  %call34.i = call i8* @strcpy(i8* noundef nonnull %call27.i, i8* noundef nonnull dereferenceable(1) %reslib) #14, !dbg !505
  %10 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !506, !tbaa !296
  %rl_next.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %9, i64 0, i32 0, !dbg !507
  store %struct.reslib_t* %10, %struct.reslib_t** %rl_next.i, align 8, !dbg !508, !tbaa !509
  store i8* %call19.i, i8** bitcast (%struct.reslib_t** @reslibs to i8**), align 8, !dbg !510, !tbaa !296
  %rl_name.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %9, i64 0, i32 1, !dbg !511
  store i8* %call27.i, i8** %rl_name.i, align 8, !dbg !512, !tbaa !305
  %rl_r_kind.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %9, i64 0, i32 2, !dbg !513
  %rl_r_atomkind.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %9, i64 0, i32 3, !dbg !514
  %11 = bitcast i32* %rl_r_kind.i to i8*, !dbg !515
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false) #14, !dbg !516
  store i8 0, i8* %0, align 16, !dbg !517, !tbaa !456
  %call35.i = call i8* @strstr(i8* noundef nonnull dereferenceable(1) %reslib, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #15, !dbg !518
  %cmp36.i = icmp eq i8* %call35.i, null, !dbg !520
  br i1 %cmp36.i, label %while.cond.preheader.i, label %if.else195.i, !dbg !521

while.cond.preheader.i:                           ; preds = %if.end33.i
  %12 = bitcast [20 x i8]* %keyword.i to i32*
  %13 = bitcast [100 x i8]* %value.i to i16*
  %14 = bitcast [100 x i8]* %value.i to i32*
  %call40378.i = call i8* @fgets(i8* noundef nonnull %1, i32 noundef 128, %struct._IO_FILE* noundef nonnull %rfp.0.i) #14, !dbg !522
  %tobool.not379.i = icmp eq i8* %call40378.i, null, !dbg !524
  br i1 %tobool.not379.i, label %read_reslib_header.exit.thread198, label %while.body.i, !dbg !524

read_reslib_header.exit.thread198:                ; preds = %while.cond.preheader.i
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !414, metadata !DIExpression()) #14, !dbg !430
  call void @llvm.dbg.label(metadata !429) #14, !dbg !525
  %call198.i203 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %rfp.0.i) #14, !dbg !526
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %4) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %3) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #14, !dbg !527
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !397, metadata !DIExpression()), !dbg !399
  br label %if.end, !dbg !528

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.cond.backedge.i
  %pfp.0 = phi %struct._IO_FILE* [ %pfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !515
  %bfp.0 = phi %struct._IO_FILE* [ %bfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !529
  %qfp.0 = phi %struct._IO_FILE* [ %qfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !530
  %cfp.0 = phi %struct._IO_FILE* [ %cfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !531
  %15 = load i8, i8* %1, align 16, !dbg !532, !tbaa !456
  %cmp43.i = icmp eq i8 %15, 35, !dbg !535
  br i1 %cmp43.i, label %while.cond.backedge.i, label %if.end46.i, !dbg !536

if.end46.i:                                       ; preds = %while.body.i
  %call50.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* noundef nonnull %2, i8* noundef nonnull %3) #14, !dbg !537
  call void @llvm.dbg.value(metadata i32 %call50.i, metadata !415, metadata !DIExpression()) #14, !dbg !430
  switch i32 %call50.i, label %clean_up.thread.i [
    i32 -1, label %while.cond.backedge.i
    i32 2, label %if.else58.i
  ], !dbg !539

if.else58.i:                                      ; preds = %if.end46.i
  %bcmp.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %2, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i64 5) #14, !dbg !540
  %cmp61.i = icmp eq i32 %bcmp.i, 0, !dbg !543
  br i1 %cmp61.i, label %if.then63.i, label %if.else88.i, !dbg !544

if.then63.i:                                      ; preds = %if.else58.i
  %lhsv300.i = load i32, i32* %14, align 16, !dbg !545
  switch i32 %lhsv300.i, label %if.else77.i [
    i32 6385252, label %if.then68.i
    i32 6385266, label %if.then75.i
  ], !dbg !548

if.then68.i:                                      ; preds = %if.then63.i
  store i32 1, i32* %rl_r_kind.i, align 8, !dbg !549, !tbaa !327
  br label %while.cond.backedge.i, !dbg !550

if.then75.i:                                      ; preds = %if.then63.i
  store i32 2, i32* %rl_r_kind.i, align 8, !dbg !551, !tbaa !327
  br label %while.cond.backedge.i, !dbg !553

if.else77.i:                                      ; preds = %if.then63.i
  %bcmp306.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %3, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 3) #14, !dbg !554
  %cmp80.i = icmp eq i32 %bcmp306.i, 0, !dbg !556
  br i1 %cmp80.i, label %if.then82.i, label %clean_up.thread.i, !dbg !557

if.then82.i:                                      ; preds = %if.else77.i
  store i32 3, i32* %rl_r_kind.i, align 8, !dbg !558, !tbaa !327
  br label %while.cond.backedge.i

if.else88.i:                                      ; preds = %if.else58.i
  %bcmp284.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %2, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i64 9) #14, !dbg !559
  %cmp91.i = icmp eq i32 %bcmp284.i, 0, !dbg !561
  br i1 %cmp91.i, label %if.then93.i, label %if.else110.i, !dbg !562

if.then93.i:                                      ; preds = %if.else88.i
  %bcmp296.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %3, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i64 7) #14, !dbg !563
  %cmp96.i = icmp eq i32 %bcmp296.i, 0, !dbg !566
  br i1 %cmp96.i, label %if.then98.i, label %if.else100.i, !dbg !567

if.then98.i:                                      ; preds = %if.then93.i
  store i32 1, i32* %rl_r_atomkind.i, align 4, !dbg !568, !tbaa !569
  br label %while.cond.backedge.i, !dbg !570

if.else100.i:                                     ; preds = %if.then93.i
  %lhsv297.i = load i32, i32* %14, align 16, !dbg !571
  %.not299.i = icmp eq i32 %lhsv297.i, 7105633, !dbg !571
  br i1 %.not299.i, label %if.then105.i, label %clean_up.thread.i, !dbg !573

if.then105.i:                                     ; preds = %if.else100.i
  store i32 2, i32* %rl_r_atomkind.i, align 4, !dbg !574, !tbaa !569
  br label %while.cond.backedge.i

if.else110.i:                                     ; preds = %if.else88.i
  %lhsv.i = load i32, i32* %12, align 16, !dbg !575
  switch i32 %lhsv.i, label %if.else151.i [
    i32 6710895, label %if.then115.i
    i32 6448240, label %if.then122.i
    i32 6581858, label %if.then139.i
  ], !dbg !577

if.then115.i:                                     ; preds = %if.else110.i
  call void @llvm.dbg.value(metadata i8* %3, metadata !446, metadata !DIExpression()) #14, !dbg !578
  call void @llvm.dbg.value(metadata i8* %0, metadata !451, metadata !DIExpression()) #14, !dbg !578
  %16 = load i8, i8* %3, align 16, !dbg !581, !tbaa !456
  %cmp.i316.i = icmp eq i8 %16, 47, !dbg !582
  %rhsv371.i = load i16, i16* %13, align 16
  %.not373.i = icmp eq i16 %rhsv371.i, 12078
  %or.cond374.i = select i1 %cmp.i316.i, i1 true, i1 %.not373.i, !dbg !583
  br i1 %or.cond374.i, label %if.then.i321.i, label %if.else.i323.i, !dbg !583

if.then.i321.i:                                   ; preds = %if.then115.i
  %call2.i320.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %3) #14, !dbg !584
  br label %while.cond.backedge.i, !dbg !584

if.else.i323.i:                                   ; preds = %if.then115.i
  %call3.i322.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %3) #14, !dbg !585
  br label %while.cond.backedge.i

if.then122.i:                                     ; preds = %if.else110.i
  call void @llvm.dbg.value(metadata i8* %3, metadata !446, metadata !DIExpression()) #14, !dbg !586
  call void @llvm.dbg.value(metadata i8* %5, metadata !451, metadata !DIExpression()) #14, !dbg !586
  %17 = load i8, i8* %3, align 16, !dbg !590, !tbaa !456
  %cmp.i325.i = icmp eq i8 %17, 47, !dbg !591
  %rhsv368.i = load i16, i16* %13, align 16
  %.not370.i = icmp eq i16 %rhsv368.i, 12078
  %or.cond375.i = select i1 %cmp.i325.i, i1 true, i1 %.not370.i, !dbg !592
  br i1 %or.cond375.i, label %if.then.i330.i, label %if.else.i332.i, !dbg !592

if.then.i330.i:                                   ; preds = %if.then122.i
  %call2.i329.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %3) #14, !dbg !593
  br label %mk_fname.exit333.i, !dbg !593

if.else.i332.i:                                   ; preds = %if.then122.i
  %call3.i331.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %3) #14, !dbg !594
  br label %mk_fname.exit333.i

mk_fname.exit333.i:                               ; preds = %if.else.i332.i, %if.then.i330.i
  %call126.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !595
  %cmp127.i = icmp eq %struct._IO_FILE* %call126.i, null, !dbg !597
  br i1 %cmp127.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !598

if.then139.i:                                     ; preds = %if.else110.i
  call void @llvm.dbg.value(metadata i8* %3, metadata !446, metadata !DIExpression()) #14, !dbg !599
  call void @llvm.dbg.value(metadata i8* %5, metadata !451, metadata !DIExpression()) #14, !dbg !599
  %18 = load i8, i8* %3, align 16, !dbg !603, !tbaa !456
  %cmp.i334.i = icmp eq i8 %18, 47, !dbg !604
  %rhsv365.i = load i16, i16* %13, align 16
  %.not367.i = icmp eq i16 %rhsv365.i, 12078
  %or.cond376.i = select i1 %cmp.i334.i, i1 true, i1 %.not367.i, !dbg !605
  br i1 %or.cond376.i, label %if.then.i339.i, label %if.else.i341.i, !dbg !605

if.then.i339.i:                                   ; preds = %if.then139.i
  %call2.i338.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %3) #14, !dbg !606
  br label %mk_fname.exit342.i, !dbg !606

if.else.i341.i:                                   ; preds = %if.then139.i
  %call3.i340.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %3) #14, !dbg !607
  br label %mk_fname.exit342.i

mk_fname.exit342.i:                               ; preds = %if.else.i341.i, %if.then.i339.i
  %call143.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !608
  %cmp144.i = icmp eq %struct._IO_FILE* %call143.i, null, !dbg !610
  br i1 %cmp144.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !611

if.else151.i:                                     ; preds = %if.else110.i
  %bcmp292.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %2, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 3) #14, !dbg !612
  %cmp154.i = icmp eq i32 %bcmp292.i, 0, !dbg !614
  br i1 %cmp154.i, label %if.then156.i, label %if.else168.i, !dbg !615

if.then156.i:                                     ; preds = %if.else151.i
  call void @llvm.dbg.value(metadata i8* %3, metadata !446, metadata !DIExpression()) #14, !dbg !616
  call void @llvm.dbg.value(metadata i8* %5, metadata !451, metadata !DIExpression()) #14, !dbg !616
  %19 = load i8, i8* %3, align 16, !dbg !619, !tbaa !456
  %cmp.i143 = icmp eq i8 %19, 47, !dbg !620
  %rhsv206 = load i16, i16* %13, align 16
  %.not208 = icmp eq i16 %rhsv206, 12078
  %or.cond = select i1 %cmp.i143, i1 true, i1 %.not208, !dbg !621
  br i1 %or.cond, label %if.then.i148, label %if.else.i150, !dbg !621

if.then.i148:                                     ; preds = %if.then156.i
  %call2.i147 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %3) #14, !dbg !622
  br label %mk_fname.exit152, !dbg !622

if.else.i150:                                     ; preds = %if.then156.i
  %call3.i149 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %3) #14, !dbg !623
  br label %mk_fname.exit152

mk_fname.exit152:                                 ; preds = %if.then.i148, %if.else.i150
  %call160.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !624
  %cmp161.i = icmp eq %struct._IO_FILE* %call160.i, null, !dbg !626
  br i1 %cmp161.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !627

if.else168.i:                                     ; preds = %if.else151.i
  %.not295.i = icmp eq i32 %lhsv.i, 6908003, !dbg !628
  br i1 %.not295.i, label %if.then173.i, label %clean_up.thread.i, !dbg !630

if.then173.i:                                     ; preds = %if.else168.i
  call void @llvm.dbg.value(metadata i8* %3, metadata !446, metadata !DIExpression()) #14, !dbg !631
  call void @llvm.dbg.value(metadata i8* %5, metadata !451, metadata !DIExpression()) #14, !dbg !631
  %20 = load i8, i8* %3, align 16, !dbg !634, !tbaa !456
  %cmp.i136 = icmp eq i8 %20, 47, !dbg !635
  %rhsv = load i16, i16* %13, align 16
  %.not = icmp eq i16 %rhsv, 12078
  %or.cond209 = select i1 %cmp.i136, i1 true, i1 %.not, !dbg !636
  br i1 %or.cond209, label %if.then.i140, label %if.else.i141, !dbg !636

if.then.i140:                                     ; preds = %if.then173.i
  %call2.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull %3) #14, !dbg !637
  br label %mk_fname.exit, !dbg !637

if.else.i141:                                     ; preds = %if.then173.i
  %call3.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %3) #14, !dbg !638
  br label %mk_fname.exit

mk_fname.exit:                                    ; preds = %if.then.i140, %if.else.i141
  %call177.i = call %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !639
  %cmp178.i = icmp eq %struct._IO_FILE* %call177.i, null, !dbg !641
  br i1 %cmp178.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !642

while.cond.backedge.i:                            ; preds = %mk_fname.exit, %mk_fname.exit152, %mk_fname.exit342.i, %mk_fname.exit333.i, %if.else.i323.i, %if.then.i321.i, %if.then105.i, %if.then98.i, %if.then82.i, %if.then75.i, %if.then68.i, %if.end46.i, %while.body.i
  %pfp.1 = phi %struct._IO_FILE* [ %pfp.0, %while.body.i ], [ %pfp.0, %if.then82.i ], [ %pfp.0, %if.then75.i ], [ %pfp.0, %if.then68.i ], [ %pfp.0, %if.then98.i ], [ %pfp.0, %if.then105.i ], [ %pfp.0, %mk_fname.exit152 ], [ %pfp.0, %mk_fname.exit ], [ %pfp.0, %mk_fname.exit342.i ], [ %call126.i, %mk_fname.exit333.i ], [ %pfp.0, %if.then.i321.i ], [ %pfp.0, %if.else.i323.i ], [ %pfp.0, %if.end46.i ], !dbg !430
  %bfp.1 = phi %struct._IO_FILE* [ %bfp.0, %while.body.i ], [ %bfp.0, %if.then82.i ], [ %bfp.0, %if.then75.i ], [ %bfp.0, %if.then68.i ], [ %bfp.0, %if.then98.i ], [ %bfp.0, %if.then105.i ], [ %bfp.0, %mk_fname.exit152 ], [ %bfp.0, %mk_fname.exit ], [ %call143.i, %mk_fname.exit342.i ], [ %bfp.0, %mk_fname.exit333.i ], [ %bfp.0, %if.then.i321.i ], [ %bfp.0, %if.else.i323.i ], [ %bfp.0, %if.end46.i ], !dbg !430
  %qfp.1 = phi %struct._IO_FILE* [ %qfp.0, %while.body.i ], [ %qfp.0, %if.then82.i ], [ %qfp.0, %if.then75.i ], [ %qfp.0, %if.then68.i ], [ %qfp.0, %if.then98.i ], [ %qfp.0, %if.then105.i ], [ %call160.i, %mk_fname.exit152 ], [ %qfp.0, %mk_fname.exit ], [ %qfp.0, %mk_fname.exit342.i ], [ %qfp.0, %mk_fname.exit333.i ], [ %qfp.0, %if.then.i321.i ], [ %qfp.0, %if.else.i323.i ], [ %qfp.0, %if.end46.i ], !dbg !430
  %cfp.1 = phi %struct._IO_FILE* [ %cfp.0, %while.body.i ], [ %cfp.0, %if.then82.i ], [ %cfp.0, %if.then75.i ], [ %cfp.0, %if.then68.i ], [ %cfp.0, %if.then98.i ], [ %cfp.0, %if.then105.i ], [ %cfp.0, %mk_fname.exit152 ], [ %call177.i, %mk_fname.exit ], [ %cfp.0, %mk_fname.exit342.i ], [ %cfp.0, %mk_fname.exit333.i ], [ %cfp.0, %if.then.i321.i ], [ %cfp.0, %if.else.i323.i ], [ %cfp.0, %if.end46.i ], !dbg !430
  %call40.i = call i8* @fgets(i8* noundef nonnull %1, i32 noundef 128, %struct._IO_FILE* noundef %rfp.0.i) #14, !dbg !522
  %tobool.not.i = icmp eq i8* %call40.i, null, !dbg !524
  br i1 %tobool.not.i, label %read_reslib_header.exit, label %while.body.i, !dbg !524, !llvm.loop !643

if.else195.i:                                     ; preds = %if.end33.i
  call void @llvm.dbg.value(metadata i8* %4, metadata !446, metadata !DIExpression()) #14, !dbg !645
  call void @llvm.dbg.value(metadata i8* %0, metadata !451, metadata !DIExpression()) #14, !dbg !645
  %21 = load i8, i8* %4, align 16, !dbg !648, !tbaa !456
  %cmp.i343.i = icmp eq i8 %21, 47, !dbg !649
  %22 = bitcast [100 x i8]* %newname.i to i16*
  %rhsv362.i = load i16, i16* %22, align 16
  %.not364.i = icmp eq i16 %rhsv362.i, 12078
  %or.cond377.i = select i1 %cmp.i343.i, i1 true, i1 %.not364.i, !dbg !650
  br i1 %or.cond377.i, label %if.then.i348.i, label %if.else.i350.i, !dbg !650

if.then.i348.i:                                   ; preds = %if.else195.i
  %call2.i347.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %4) #14, !dbg !651
  br label %read_reslib_header.exit.thread186, !dbg !651

if.else.i350.i:                                   ; preds = %if.else195.i
  %call3.i349.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %4) #14, !dbg !652
  br label %read_reslib_header.exit.thread186

clean_up.thread.sink.split.i:                     ; preds = %mk_fname.exit, %mk_fname.exit152, %mk_fname.exit342.i, %mk_fname.exit333.i
  %pfp.2 = phi %struct._IO_FILE* [ %pfp.0, %mk_fname.exit152 ], [ %pfp.0, %mk_fname.exit ], [ %pfp.0, %mk_fname.exit342.i ], [ null, %mk_fname.exit333.i ], !dbg !430
  %bfp.2 = phi %struct._IO_FILE* [ %bfp.0, %mk_fname.exit152 ], [ %bfp.0, %mk_fname.exit ], [ null, %mk_fname.exit342.i ], [ %bfp.0, %mk_fname.exit333.i ], !dbg !430
  %qfp.2 = phi %struct._IO_FILE* [ null, %mk_fname.exit152 ], [ %qfp.0, %mk_fname.exit ], [ %qfp.0, %mk_fname.exit342.i ], [ %qfp.0, %mk_fname.exit333.i ], !dbg !430
  %cfp.2 = phi %struct._IO_FILE* [ %cfp.0, %mk_fname.exit152 ], [ null, %mk_fname.exit ], [ %cfp.0, %mk_fname.exit342.i ], [ %cfp.0, %mk_fname.exit333.i ], !dbg !430
  %.sink.i = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), %mk_fname.exit152 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), %mk_fname.exit ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), %mk_fname.exit342.i ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), %mk_fname.exit333.i ]
  %call131.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %.sink.i, i8* noundef nonnull %3) #14, !dbg !653
  %call132.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !653
  br label %clean_up.thread.i, !dbg !526

clean_up.thread.i:                                ; preds = %if.else168.i, %if.else100.i, %if.else77.i, %if.end46.i, %clean_up.thread.sink.split.i
  %pfp.3 = phi %struct._IO_FILE* [ %pfp.2, %clean_up.thread.sink.split.i ], [ %pfp.0, %if.end46.i ], [ %pfp.0, %if.else77.i ], [ %pfp.0, %if.else100.i ], [ %pfp.0, %if.else168.i ], !dbg !515
  %bfp.3 = phi %struct._IO_FILE* [ %bfp.2, %clean_up.thread.sink.split.i ], [ %bfp.0, %if.end46.i ], [ %bfp.0, %if.else77.i ], [ %bfp.0, %if.else100.i ], [ %bfp.0, %if.else168.i ], !dbg !529
  %qfp.3 = phi %struct._IO_FILE* [ %qfp.2, %clean_up.thread.sink.split.i ], [ %qfp.0, %if.end46.i ], [ %qfp.0, %if.else77.i ], [ %qfp.0, %if.else100.i ], [ %qfp.0, %if.else168.i ], !dbg !430
  %cfp.3 = phi %struct._IO_FILE* [ %cfp.2, %clean_up.thread.sink.split.i ], [ %cfp.0, %if.end46.i ], [ %cfp.0, %if.else77.i ], [ %cfp.0, %if.else100.i ], [ %cfp.0, %if.else168.i ], !dbg !531
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !414, metadata !DIExpression()) #14, !dbg !430
  call void @llvm.dbg.label(metadata !429) #14, !dbg !525
  %call198353.i = call i32 @fclose(%struct._IO_FILE* noundef %rfp.0.i) #14, !dbg !526
  %tobool202.not.i = icmp eq %struct._IO_FILE* %pfp.3, null, !dbg !654
  br i1 %tobool202.not.i, label %if.end205.i, label %if.then203.i, !dbg !658

read_reslib_header.exit.thread186:                ; preds = %if.then.i348.i, %if.else.i350.i
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !414, metadata !DIExpression()) #14, !dbg !430
  call void @llvm.dbg.label(metadata !429) #14, !dbg !525
  %call198359.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %rfp.0.i) #14, !dbg !526
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %4) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %3) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #14, !dbg !527
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !397, metadata !DIExpression()), !dbg !399
  br label %if.end, !dbg !528

if.then203.i:                                     ; preds = %clean_up.thread.i
  %call204.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %pfp.3) #14, !dbg !659
  br label %if.end205.i, !dbg !659

if.end205.i:                                      ; preds = %if.then203.i, %clean_up.thread.i
  %tobool206.not.i = icmp eq %struct._IO_FILE* %bfp.3, null, !dbg !660
  br i1 %tobool206.not.i, label %if.end209.i, label %if.then207.i, !dbg !662

if.then207.i:                                     ; preds = %if.end205.i
  %call208.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %bfp.3) #14, !dbg !663
  br label %if.end209.i, !dbg !663

if.end209.i:                                      ; preds = %if.then207.i, %if.end205.i
  %tobool210.not.i = icmp eq %struct._IO_FILE* %qfp.3, null, !dbg !664
  br i1 %tobool210.not.i, label %if.end213.i, label %if.then211.i, !dbg !666

if.then211.i:                                     ; preds = %if.end209.i
  %call212.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %qfp.3) #14, !dbg !667
  br label %if.end213.i, !dbg !667

if.end213.i:                                      ; preds = %if.then211.i, %if.end209.i
  %tobool214.not.i = icmp eq %struct._IO_FILE* %cfp.3, null, !dbg !668
  br i1 %tobool214.not.i, label %if.end217.i, label %if.then215.i, !dbg !670

if.then215.i:                                     ; preds = %if.end213.i
  %call216.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %cfp.3) #14, !dbg !671
  br label %if.end217.i, !dbg !671

if.end217.i:                                      ; preds = %if.then215.i, %if.end213.i
  %call219.i = call i64 @strlen(i8* noundef nonnull %1) #15, !dbg !672
  %23 = trunc i64 %call219.i to i32, !dbg !672
  %conv220.i = add i32 %23, -1, !dbg !672
  call void @llvm.dbg.value(metadata i32 %conv220.i, metadata !416, metadata !DIExpression()) #14, !dbg !430
  %24 = icmp slt i32 %conv220.i, 20, !dbg !673
  %cond.i = select i1 %24, i32 %conv220.i, i32 20, !dbg !673
  call void @llvm.dbg.value(metadata i32 %cond.i, metadata !416, metadata !DIExpression()) #14, !dbg !430
  %call224.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 noundef %cond.i, i32 noundef %cond.i, i8* noundef nonnull %1) #14, !dbg !674
  %call225.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !675
  br label %read_reslib_header.exit.thread, !dbg !676

read_reslib_header.exit.thread:                   ; preds = %if.then7.i, %if.then21.i, %if.then30.i, %if.then14.i, %if.end217.i
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %4) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %3) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #14, !dbg !527
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !397, metadata !DIExpression()), !dbg !399
  br label %cleanup, !dbg !528

read_reslib_header.exit:                          ; preds = %while.cond.backedge.i
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !414, metadata !DIExpression()) #14, !dbg !430
  call void @llvm.dbg.label(metadata !429) #14, !dbg !525
  %call198.i = call i32 @fclose(%struct._IO_FILE* noundef %rfp.0.i) #14, !dbg !526
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %4) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %3) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #14, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #14, !dbg !527
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !397, metadata !DIExpression()), !dbg !399
  br label %if.end, !dbg !528

if.end:                                           ; preds = %read_reslib_header.exit, %read_reslib_header.exit.thread198, %read_reslib_header.exit.thread186
  %cfp.5196 = phi %struct._IO_FILE* [ null, %read_reslib_header.exit.thread186 ], [ %cfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread198 ]
  %qfp.5195 = phi %struct._IO_FILE* [ null, %read_reslib_header.exit.thread186 ], [ %qfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread198 ]
  %bfp.5194 = phi %struct._IO_FILE* [ null, %read_reslib_header.exit.thread186 ], [ %bfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread198 ]
  %pfp.5193 = phi %struct._IO_FILE* [ null, %read_reslib_header.exit.thread186 ], [ %pfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread198 ]
  %.b.i = load i1, i1* @initatoms.init, align 4, !dbg !677
  br i1 %.b.i, label %initatoms.exit, label %if.end.i, !dbg !680

if.end.i:                                         ; preds = %if.end
  store i1 true, i1* @initatoms.init, align 4, !dbg !681
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !244, metadata !DIExpression()) #14, !dbg !682
  call void @llvm.dbg.value(metadata i32 0, metadata !243, metadata !DIExpression()) #14, !dbg !682
  br label %for.body.i, !dbg !683

for.body.i:                                       ; preds = %for.inc.i, %if.end.i
  %ap.014.i = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %if.end.i ], [ %incdec.ptr.i, %for.inc.i ]
  %i.013.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap.014.i, metadata !244, metadata !DIExpression()) #14, !dbg !682
  call void @llvm.dbg.value(metadata i32 %i.013.i, metadata !243, metadata !DIExpression()) #14, !dbg !682
  call void @NAB_initatom(%struct.atom_t* noundef nonnull %ap.014.i, i32 noundef 1) #14, !dbg !685
  %call.i27 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #14, !dbg !688
  %a_atomname.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.014.i, i64 0, i32 0, !dbg !689
  store i8* %call.i27, i8** %a_atomname.i, align 8, !dbg !690, !tbaa !691
  %cmp2.i = icmp eq i8* %call.i27, null, !dbg !694
  br i1 %cmp2.i, label %if.then3.i, label %for.inc.i, !dbg !696

if.then3.i:                                       ; preds = %for.body.i
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !697, !tbaa !296
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %25) #18, !dbg !699
  call void @exit(i32 noundef 1) #17, !dbg !700
  unreachable, !dbg !700

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.013.i, 1, !dbg !701
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !243, metadata !DIExpression()) #14, !dbg !682
  %incdec.ptr.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.014.i, i64 1, !dbg !702
  call void @llvm.dbg.value(metadata %struct.atom_t* %incdec.ptr.i, metadata !244, metadata !DIExpression()) #14, !dbg !682
  %exitcond.not.i = icmp eq i32 %inc.i, 1000, !dbg !703
  br i1 %exitcond.not.i, label %initatoms.exit, label %for.body.i, !dbg !683, !llvm.loop !704

initatoms.exit:                                   ; preds = %for.inc.i, %if.end
  %27 = load i8, i8* %0, align 16, !dbg !706, !tbaa !456
  %tobool.not = icmp eq i8 %27, 0, !dbg !706
  br i1 %tobool.not, label %if.else, label %if.then2, !dbg !708

if.then2:                                         ; preds = %initatoms.exit
  call void @llvm.dbg.value(metadata i8* %0, metadata !709, metadata !DIExpression()) #14, !dbg !769
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !714, metadata !DIExpression()) #14, !dbg !769
  %28 = bitcast i32* %n_names.i to i8*, !dbg !772
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #14, !dbg !772
  %29 = bitcast i32* %n_resnames.i to i8*, !dbg !772
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #14, !dbg !772
  %30 = bitcast [100 x i32]* %typex.i to i8*, !dbg !773
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %30) #14, !dbg !773
  call void @llvm.dbg.declare(metadata [100 x i32]* %typex.i, metadata !747, metadata !DIExpression()) #14, !dbg !774
  %31 = bitcast [100 x i32]* %resx.i to i8*, !dbg !773
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %31) #14, !dbg !773
  call void @llvm.dbg.declare(metadata [100 x i32]* %resx.i, metadata !749, metadata !DIExpression()) #14, !dbg !775
  %32 = bitcast [100 x i32]* %flags.i to i8*, !dbg !773
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %32) #14, !dbg !773
  call void @llvm.dbg.declare(metadata [100 x i32]* %flags.i, metadata !750, metadata !DIExpression()) #14, !dbg !776
  %33 = bitcast [100 x i32]* %seq.i to i8*, !dbg !773
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %33) #14, !dbg !773
  call void @llvm.dbg.declare(metadata [100 x i32]* %seq.i, metadata !751, metadata !DIExpression()) #14, !dbg !777
  %34 = bitcast [100 x i32]* %elmnt.i to i8*, !dbg !773
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %34) #14, !dbg !773
  call void @llvm.dbg.declare(metadata [100 x i32]* %elmnt.i, metadata !752, metadata !DIExpression()) #14, !dbg !778
  %35 = bitcast [100 x i32]* %atom1x.i to i8*, !dbg !779
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %35) #14, !dbg !779
  call void @llvm.dbg.declare(metadata [100 x i32]* %atom1x.i, metadata !753, metadata !DIExpression()) #14, !dbg !780
  %36 = bitcast [100 x i32]* %atom2x.i to i8*, !dbg !779
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %36) #14, !dbg !779
  call void @llvm.dbg.declare(metadata [100 x i32]* %atom2x.i, metadata !754, metadata !DIExpression()) #14, !dbg !781
  %37 = bitcast [100 x double]* %chg.i to i8*, !dbg !782
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %37) #14, !dbg !782
  call void @llvm.dbg.declare(metadata [100 x double]* %chg.i, metadata !755, metadata !DIExpression()) #14, !dbg !783
  %38 = bitcast [100 x double]* %x.i to i8*, !dbg !782
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %38) #14, !dbg !782
  call void @llvm.dbg.declare(metadata [100 x double]* %x.i, metadata !757, metadata !DIExpression()) #14, !dbg !784
  %39 = bitcast [100 x double]* %y.i to i8*, !dbg !782
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %39) #14, !dbg !782
  call void @llvm.dbg.declare(metadata [100 x double]* %y.i, metadata !758, metadata !DIExpression()) #14, !dbg !785
  %40 = bitcast [100 x double]* %z.i to i8*, !dbg !782
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %40) #14, !dbg !782
  call void @llvm.dbg.declare(metadata [100 x double]* %z.i, metadata !759, metadata !DIExpression()) #14, !dbg !786
  %41 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %a_name.i, i64 0, i64 0, i64 0, !dbg !787
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %41) #14, !dbg !787
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %a_name.i, metadata !760, metadata !DIExpression()) #14, !dbg !788
  %42 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %type.i, i64 0, i64 0, i64 0, !dbg !787
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %42) #14, !dbg !787
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %type.i, metadata !763, metadata !DIExpression()) #14, !dbg !789
  %43 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %res_name.i, i64 0, i64 0, i64 0, !dbg !787
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %43) #14, !dbg !787
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %res_name.i, metadata !764, metadata !DIExpression()) #14, !dbg !790
  %44 = getelementptr inbounds [255 x i8], [255 x i8]* %prefix.i, i64 0, i64 0, !dbg !791
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %44) #14, !dbg !791
  call void @llvm.dbg.declare(metadata [255 x i8]* %prefix.i, metadata !765, metadata !DIExpression()) #14, !dbg !792
  store i32 0, i32* @n_atoms, align 4, !dbg !793, !tbaa !794
  %call.i28 = call %struct.DATABASEt* (i8*, i32, ...) bitcast (%struct.DATABASEt* (...)* @dbDBRndOpen to %struct.DATABASEt* (i8*, i32, ...)*)(i8* noundef nonnull %0, i32 noundef 1) #14, !dbg !795
  call void @llvm.dbg.value(metadata %struct.DATABASEt* %call.i28, metadata !720, metadata !DIExpression()) #14, !dbg !769
  %arraydecay.i = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %res_name.i, i64 0, i64 0, !dbg !796
  call void @llvm.dbg.value(metadata i32* %n_resnames.i, metadata !717, metadata !DIExpression(DW_OP_deref)) #14, !dbg !769
  %call1.i29 = call signext i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* noundef nonnull %n_resnames.i, [10 x i8]* noundef nonnull %arraydecay.i, i32 noundef 10) #14, !dbg !797
  call void @llvm.dbg.value(metadata i8 %call1.i29, metadata !746, metadata !DIExpression()) #14, !dbg !769
  call void @llvm.dbg.value(metadata i32 0, metadata !719, metadata !DIExpression()) #14, !dbg !769
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
  %45 = load i32, i32* %n_resnames.i, align 4, !dbg !798, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %45, metadata !717, metadata !DIExpression()) #14, !dbg !769
  %cmp107.i = icmp sgt i32 %45, 0, !dbg !801
  br i1 %cmp107.i, label %for.body.i31, label %off2reslib.exit, !dbg !802

for.body.i31:                                     ; preds = %if.then2, %for.inc66.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %for.inc66.i ], [ 0, %if.then2 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv114.i, metadata !719, metadata !DIExpression()) #14, !dbg !769
  %arraydecay3.i = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %res_name.i, i64 0, i64 %indvars.iv114.i, i64 0, !dbg !803
  %call4.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %44, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* noundef nonnull %arraydecay3.i) #14, !dbg !805
  call void (%struct.DATABASEt*, ...) bitcast (void (...)* @DBZeroPrefix to void (%struct.DATABASEt*, ...)*)(%struct.DATABASEt* noundef %call.i28) #14, !dbg !806
  call void (%struct.DATABASEt*, i8*, ...) bitcast (void (...)* @DBPushPrefix to void (%struct.DATABASEt*, i8*, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef nonnull %44) #14, !dbg !807
  call void @llvm.dbg.value(metadata i32* %n_names.i, metadata !716, metadata !DIExpression(DW_OP_deref)) #14, !dbg !769
  %call6.i = call signext i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32* noundef nonnull %n_names.i, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i32 noundef 1) #14, !dbg !808
  call void @llvm.dbg.value(metadata i8 %call6.i, metadata !746, metadata !DIExpression()) #14, !dbg !769
  %call15.i = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32* noundef nonnull @n_atoms, i32 noundef 3, i32* noundef nonnull %arraydecay7.i, i64 noundef 4, i32 noundef 4, i32* noundef nonnull %arraydecay8.i, i64 noundef 4, i32 noundef 5, i32* noundef nonnull %arraydecay9.i, i64 noundef 4, i32 noundef 6, i32* noundef nonnull %arraydecay10.i, i64 noundef 4, i32 noundef 7, i32* noundef nonnull %arraydecay11.i, i64 noundef 4, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 8, double* noundef nonnull %arraydecay12.i, i64 noundef 8, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 1, [10 x i8]* noundef nonnull %arraydecay13.i, i32 noundef 10, i32 noundef 2, [10 x i8]* noundef nonnull %arraydecay14.i, i32 noundef 10, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0) #14, !dbg !809
  call void @llvm.dbg.value(metadata i8 %call15.i, metadata !746, metadata !DIExpression()) #14, !dbg !769
  %call19.i30 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32* noundef nonnull @n_atoms, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 1, double* noundef nonnull %arraydecay16.i, i64 noundef 8, i32 noundef 2, double* noundef nonnull %arraydecay17.i, i64 noundef 8, i32 noundef 3, double* noundef nonnull %arraydecay18.i, i64 noundef 8, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0) #14, !dbg !810
  call void @llvm.dbg.value(metadata i8 %call19.i30, metadata !746, metadata !DIExpression()) #14, !dbg !769
  call void @llvm.dbg.value(metadata i32 0, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %46 = load i32, i32* @n_atoms, align 4, !dbg !811, !tbaa !794
  %cmp21102.i = icmp sgt i32 %46, 0, !dbg !814
  br i1 %cmp21102.i, label %for.body22.i, label %if.end.i34, !dbg !815

for.body22.i:                                     ; preds = %for.body.i31, %for.body22.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body22.i ], [ 0, %for.body.i31 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %arrayidx24.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv.i, !dbg !816
  call void @llvm.dbg.value(metadata %struct.atom_t* %arrayidx24.i, metadata !715, metadata !DIExpression()) #14, !dbg !769
  call void @NAB_initatom(%struct.atom_t* noundef nonnull %arrayidx24.i, i32 noundef 0) #14, !dbg !818
  %a_atomname.i32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %arrayidx24.i, i64 0, i32 0, !dbg !819
  %47 = load i8*, i8** %a_atomname.i32, align 16, !dbg !819, !tbaa !691
  %arraydecay27.i = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %a_name.i, i64 0, i64 %indvars.iv.i, i64 0, !dbg !820
  %call28.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %47, i8* noundef nonnull %arraydecay27.i) #14, !dbg !821
  %arrayidx30.i = getelementptr inbounds [100 x double], [100 x double]* %chg.i, i64 0, i64 %indvars.iv.i, !dbg !822
  %48 = load double, double* %arrayidx30.i, align 8, !dbg !822, !tbaa !823
  %a_charge.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv.i, i32 6, !dbg !824
  store double %48, double* %a_charge.i, align 16, !dbg !825, !tbaa !826
  %arrayidx32.i = getelementptr inbounds [100 x double], [100 x double]* %x.i, i64 0, i64 %indvars.iv.i, !dbg !827
  %49 = load double, double* %arrayidx32.i, align 8, !dbg !827, !tbaa !823
  %arrayidx33.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv.i, i32 17, i64 0, !dbg !828
  store double %49, double* %arrayidx33.i, align 16, !dbg !829, !tbaa !823
  %arrayidx35.i = getelementptr inbounds [100 x double], [100 x double]* %y.i, i64 0, i64 %indvars.iv.i, !dbg !830
  %50 = load double, double* %arrayidx35.i, align 8, !dbg !830, !tbaa !823
  %arrayidx37.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv.i, i32 17, i64 1, !dbg !831
  store double %50, double* %arrayidx37.i, align 8, !dbg !832, !tbaa !823
  %arrayidx39.i = getelementptr inbounds [100 x double], [100 x double]* %z.i, i64 0, i64 %indvars.iv.i, !dbg !833
  %51 = load double, double* %arrayidx39.i, align 8, !dbg !833, !tbaa !823
  %arrayidx41.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv.i, i32 17, i64 2, !dbg !834
  store double %51, double* %arrayidx41.i, align 16, !dbg !835, !tbaa !823
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !836
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %52 = load i32, i32* @n_atoms, align 4, !dbg !811, !tbaa !794
  %53 = sext i32 %52 to i64, !dbg !814
  %cmp21.i = icmp slt i64 %indvars.iv.next.i, %53, !dbg !814
  br i1 %cmp21.i, label %for.body22.i, label %for.end.i, !dbg !815, !llvm.loop !837

for.end.i:                                        ; preds = %for.body22.i
  %cmp42.i = icmp sgt i32 %52, 0, !dbg !839
  br i1 %cmp42.i, label %if.then.i33, label %if.end.i34, !dbg !841

if.then.i33:                                      ; preds = %for.end.i
  call fastcc void @addres2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !842
  br label %if.end.i34, !dbg !842

if.end.i34:                                       ; preds = %if.then.i33, %for.end.i, %for.body.i31
  %call46.i = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* noundef %call.i28, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32* noundef nonnull @n_bonds, i32 noundef 1, i32* noundef nonnull %arraydecay43.i, i64 noundef 4, i32 noundef 2, i32* noundef nonnull %arraydecay44.i, i64 noundef 4, i32 noundef 3, i32* noundef nonnull %arraydecay9.i, i64 noundef 4, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0) #14, !dbg !843
  call void @llvm.dbg.value(metadata i8 %call46.i, metadata !746, metadata !DIExpression()) #14, !dbg !769
  call void @llvm.dbg.value(metadata i32 0, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %54 = load i32, i32* @n_bonds, align 4, !tbaa !794
  %cmp48104.i = icmp sgt i32 %54, 0, !dbg !844
  br i1 %cmp48104.i, label %for.body49.preheader.i, label %for.inc66.i, !dbg !847

for.body49.preheader.i:                           ; preds = %if.end.i34
  %wide.trip.count.i = zext i32 %54 to i64, !dbg !844
  %min.iters.check = icmp ult i32 %54, 4, !dbg !847
  br i1 %min.iters.check, label %for.body49.i.preheader, label %vector.ph, !dbg !847

vector.ph:                                        ; preds = %for.body49.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292, !dbg !847
  %55 = add nsw i64 %n.vec, -4, !dbg !847
  %56 = lshr exact i64 %55, 2, !dbg !847
  %57 = add nuw nsw i64 %56, 1, !dbg !847
  %xtraiter = and i64 %57, 1, !dbg !847
  %58 = icmp eq i64 %55, 0, !dbg !847
  br i1 %58, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !847

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %57, 9223372036854775806, !dbg !847
  br label %vector.body, !dbg !847

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !848
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %59 = or i64 %index, 2, !dbg !848
  %60 = getelementptr inbounds [100 x i32], [100 x i32]* %atom1x.i, i64 0, i64 %index, !dbg !848
  %61 = bitcast i32* %60 to <2 x i32>*, !dbg !849
  %wide.load = load <2 x i32>, <2 x i32>* %61, align 16, !dbg !849, !tbaa !794
  %62 = getelementptr inbounds i32, i32* %60, i64 2, !dbg !849
  %63 = bitcast i32* %62 to <2 x i32>*, !dbg !849
  %wide.load306 = load <2 x i32>, <2 x i32>* %63, align 8, !dbg !849, !tbaa !794
  %64 = getelementptr inbounds [100 x i32], [100 x i32]* %atom2x.i, i64 0, i64 %index, !dbg !848
  %65 = bitcast i32* %64 to <2 x i32>*, !dbg !851
  %wide.load307 = load <2 x i32>, <2 x i32>* %65, align 16, !dbg !851, !tbaa !794
  %66 = getelementptr inbounds i32, i32* %64, i64 2, !dbg !851
  %67 = bitcast i32* %66 to <2 x i32>*, !dbg !851
  %wide.load308 = load <2 x i32>, <2 x i32>* %67, align 8, !dbg !851, !tbaa !794
  %68 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %index, i64 0, !dbg !848
  %69 = bitcast i32* %68 to <4 x i32>*, !dbg !848
  %70 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %59, i64 0, !dbg !848
  %71 = bitcast i32* %70 to <4 x i32>*, !dbg !848
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load307, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !852
  store <4 x i32> %interleaved.vec, <4 x i32>* %69, align 16, !dbg !852, !tbaa !794
  %interleaved.vec309 = shufflevector <2 x i32> %wide.load306, <2 x i32> %wide.load308, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !852
  store <4 x i32> %interleaved.vec309, <4 x i32>* %71, align 16, !dbg !852, !tbaa !794
  %index.next = or i64 %index, 4, !dbg !848
  %72 = or i64 %index, 6, !dbg !848
  %73 = getelementptr inbounds [100 x i32], [100 x i32]* %atom1x.i, i64 0, i64 %index.next, !dbg !848
  %74 = bitcast i32* %73 to <2 x i32>*, !dbg !849
  %wide.load.1 = load <2 x i32>, <2 x i32>* %74, align 16, !dbg !849, !tbaa !794
  %75 = getelementptr inbounds i32, i32* %73, i64 2, !dbg !849
  %76 = bitcast i32* %75 to <2 x i32>*, !dbg !849
  %wide.load306.1 = load <2 x i32>, <2 x i32>* %76, align 8, !dbg !849, !tbaa !794
  %77 = getelementptr inbounds [100 x i32], [100 x i32]* %atom2x.i, i64 0, i64 %index.next, !dbg !848
  %78 = bitcast i32* %77 to <2 x i32>*, !dbg !851
  %wide.load307.1 = load <2 x i32>, <2 x i32>* %78, align 16, !dbg !851, !tbaa !794
  %79 = getelementptr inbounds i32, i32* %77, i64 2, !dbg !851
  %80 = bitcast i32* %79 to <2 x i32>*, !dbg !851
  %wide.load308.1 = load <2 x i32>, <2 x i32>* %80, align 8, !dbg !851, !tbaa !794
  %81 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %index.next, i64 0, !dbg !848
  %82 = bitcast i32* %81 to <4 x i32>*, !dbg !848
  %83 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %72, i64 0, !dbg !848
  %84 = bitcast i32* %83 to <4 x i32>*, !dbg !848
  %interleaved.vec.1 = shufflevector <2 x i32> %wide.load.1, <2 x i32> %wide.load307.1, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !852
  store <4 x i32> %interleaved.vec.1, <4 x i32>* %82, align 16, !dbg !852, !tbaa !794
  %interleaved.vec309.1 = shufflevector <2 x i32> %wide.load306.1, <2 x i32> %wide.load308.1, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !852
  store <4 x i32> %interleaved.vec309.1, <4 x i32>* %84, align 16, !dbg !852, !tbaa !794
  %index.next.1 = add nuw i64 %index, 8, !dbg !848
  %niter.next.1 = add i64 %niter, 2, !dbg !848
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !848
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !848, !llvm.loop !853

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !848
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil, !dbg !848

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %85 = or i64 %index.unr, 2, !dbg !848
  %86 = getelementptr inbounds [100 x i32], [100 x i32]* %atom1x.i, i64 0, i64 %index.unr, !dbg !848
  %87 = bitcast i32* %86 to <2 x i32>*, !dbg !849
  %wide.load.epil = load <2 x i32>, <2 x i32>* %87, align 16, !dbg !849, !tbaa !794
  %88 = getelementptr inbounds i32, i32* %86, i64 2, !dbg !849
  %89 = bitcast i32* %88 to <2 x i32>*, !dbg !849
  %wide.load306.epil = load <2 x i32>, <2 x i32>* %89, align 8, !dbg !849, !tbaa !794
  %90 = getelementptr inbounds [100 x i32], [100 x i32]* %atom2x.i, i64 0, i64 %index.unr, !dbg !848
  %91 = bitcast i32* %90 to <2 x i32>*, !dbg !851
  %wide.load307.epil = load <2 x i32>, <2 x i32>* %91, align 16, !dbg !851, !tbaa !794
  %92 = getelementptr inbounds i32, i32* %90, i64 2, !dbg !851
  %93 = bitcast i32* %92 to <2 x i32>*, !dbg !851
  %wide.load308.epil = load <2 x i32>, <2 x i32>* %93, align 8, !dbg !851, !tbaa !794
  %94 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %index.unr, i64 0, !dbg !848
  %95 = bitcast i32* %94 to <4 x i32>*, !dbg !848
  %96 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %85, i64 0, !dbg !848
  %97 = bitcast i32* %96 to <4 x i32>*, !dbg !848
  %interleaved.vec.epil = shufflevector <2 x i32> %wide.load.epil, <2 x i32> %wide.load307.epil, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !852
  store <4 x i32> %interleaved.vec.epil, <4 x i32>* %95, align 16, !dbg !852, !tbaa !794
  %interleaved.vec309.epil = shufflevector <2 x i32> %wide.load306.epil, <2 x i32> %wide.load308.epil, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !852
  store <4 x i32> %interleaved.vec309.epil, <4 x i32>* %97, align 16, !dbg !852, !tbaa !794
  br label %middle.block, !dbg !847

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i, !dbg !847
  br i1 %cmp.n, label %if.then64.i, label %for.body49.i.preheader, !dbg !847

for.body49.i.preheader:                           ; preds = %for.body49.preheader.i, %middle.block
  %indvars.iv111.i.ph = phi i64 [ 0, %for.body49.preheader.i ], [ %n.vec, %middle.block ]
  br label %for.body49.i, !dbg !847

for.body49.i:                                     ; preds = %for.body49.i.preheader, %for.body49.i
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i, %for.body49.i ], [ %indvars.iv111.i.ph, %for.body49.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv111.i, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %arrayidx51.i = getelementptr inbounds [100 x i32], [100 x i32]* %atom1x.i, i64 0, i64 %indvars.iv111.i, !dbg !849
  %98 = load i32, i32* %arrayidx51.i, align 4, !dbg !849, !tbaa !794
  %arrayidx54.i = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv111.i, i64 0, !dbg !856
  store i32 %98, i32* %arrayidx54.i, align 8, !dbg !857, !tbaa !794
  %arrayidx56.i = getelementptr inbounds [100 x i32], [100 x i32]* %atom2x.i, i64 0, i64 %indvars.iv111.i, !dbg !851
  %99 = load i32, i32* %arrayidx56.i, align 4, !dbg !851, !tbaa !794
  %arrayidx59.i = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv111.i, i64 1, !dbg !858
  store i32 %99, i32* %arrayidx59.i, align 4, !dbg !852, !tbaa !794
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1, !dbg !848
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next112.i, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next112.i, %wide.trip.count.i, !dbg !844
  br i1 %exitcond.not.i35, label %if.then64.i, label %for.body49.i, !dbg !847, !llvm.loop !859

if.then64.i:                                      ; preds = %for.body49.i, %middle.block
  call fastcc void @addbonds2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !861
  br label %for.inc66.i, !dbg !861

for.inc66.i:                                      ; preds = %if.then64.i, %if.end.i34
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1, !dbg !863
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next115.i, metadata !719, metadata !DIExpression()) #14, !dbg !769
  %100 = load i32, i32* %n_resnames.i, align 4, !dbg !798, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %100, metadata !717, metadata !DIExpression()) #14, !dbg !769
  %101 = sext i32 %100 to i64, !dbg !801
  %cmp.i = icmp slt i64 %indvars.iv.next115.i, %101, !dbg !801
  br i1 %cmp.i, label %for.body.i31, label %off2reslib.exit, !dbg !802, !llvm.loop !864

off2reslib.exit:                                  ; preds = %for.inc66.i, %if.then2
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %44) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %43) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %42) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %41) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %40) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %39) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %38) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %37) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %36) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %35) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %34) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %33) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %32) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %31) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %30) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #14, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #14, !dbg !866
  br label %if.end6, !dbg !867

if.else:                                          ; preds = %initatoms.exit
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %pfp.1, metadata !334, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %pfp.1, metadata !868, metadata !DIExpression()) #14, !dbg !885
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !873, metadata !DIExpression()) #14, !dbg !885
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %line.i36, i64 0, i64 0, !dbg !888
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %102) #14, !dbg !888
  call void @llvm.dbg.declare(metadata [256 x i8]* %line.i36, metadata !874, metadata !DIExpression()) #14, !dbg !889
  %103 = getelementptr inbounds [10 x i8], [10 x i8]* %ltype.i, i64 0, i64 0, !dbg !890
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %103) #14, !dbg !890
  call void @llvm.dbg.declare(metadata [10 x i8]* %ltype.i, metadata !875, metadata !DIExpression()) #14, !dbg !891
  %104 = getelementptr inbounds [10 x i8], [10 x i8]* %a_name.i37, i64 0, i64 0, !dbg !890
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %104) #14, !dbg !890
  call void @llvm.dbg.declare(metadata [10 x i8]* %a_name.i37, metadata !877, metadata !DIExpression()) #14, !dbg !892
  %105 = getelementptr inbounds [10 x i8], [10 x i8]* %r_name.i, i64 0, i64 0, !dbg !890
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %105) #14, !dbg !890
  call void @llvm.dbg.declare(metadata [10 x i8]* %r_name.i, metadata !878, metadata !DIExpression()) #14, !dbg !893
  %106 = bitcast i32* %a_num.i to i8*, !dbg !894
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %106) #14, !dbg !894
  %107 = bitcast i32* %r_num.i to i8*, !dbg !894
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %107) #14, !dbg !894
  %108 = bitcast double* %x.i38 to i8*, !dbg !895
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #14, !dbg !895
  %109 = bitcast double* %y.i39 to i8*, !dbg !895
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109) #14, !dbg !895
  %110 = bitcast double* %z.i40 to i8*, !dbg !895
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %110) #14, !dbg !895
  store i32 0, i32* @n_atoms, align 4, !dbg !896, !tbaa !794
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !897, !tbaa !456
  %111 = bitcast [256 x i8]* %line.i36 to i32*
  %112 = getelementptr inbounds [100 x i8], [100 x i8]* %rkind.i.i, i64 0, i64 0
  %113 = getelementptr inbounds [100 x i8], [100 x i8]* %rakind.i.i, i64 0, i64 0
  %114 = bitcast [100 x i8]* %rkind.i.i to i32*
  %115 = bitcast [100 x i8]* %rakind.i.i to i64*
  %call46.i41 = call i8* @fgets(i8* noundef nonnull %102, i32 noundef 256, %struct._IO_FILE* noundef %pfp.5193) #14, !dbg !898
  %tobool.not47.i = icmp eq i8* %call46.i41, null, !dbg !899
  br i1 %tobool.not47.i, label %while.end.i, label %while.body.i44, !dbg !899

while.body.i44:                                   ; preds = %if.else, %if.end33.i59
  %bcmp.i42 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %102, i64 6) #14, !dbg !900
  %cmp.i43 = icmp eq i32 %bcmp.i42, 0, !dbg !903
  br i1 %cmp.i43, label %if.then.i45, label %if.else.i48, !dbg !904

if.then.i45:                                      ; preds = %while.body.i44
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !905, metadata !DIExpression()) #14, !dbg !913
  call void @llvm.dbg.value(metadata i8* %102, metadata !910, metadata !DIExpression()) #14, !dbg !913
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %112) #14, !dbg !916
  call void @llvm.dbg.declare(metadata [100 x i8]* %rkind.i.i, metadata !911, metadata !DIExpression()) #14, !dbg !917
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %113) #14, !dbg !916
  call void @llvm.dbg.declare(metadata [100 x i8]* %rakind.i.i, metadata !912, metadata !DIExpression()) #14, !dbg !918
  %call.i.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %102, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* noundef nonnull %112, i8* noundef nonnull %113) #14, !dbg !919
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2, !dbg !921
  br i1 %cmp.not.i.i, label %if.end.i.i, label %setrlibattrs.exit.i, !dbg !922

if.end.i.i:                                       ; preds = %if.then.i45
  %lhsv.i.i = load i32, i32* %114, align 16, !dbg !923
  switch i32 %lhsv.i.i, label %if.else11.i.i [
    i32 4279876, label %if.end19.sink.split.i.i
    i32 4279890, label %if.then9.i.i
  ], !dbg !925

if.then9.i.i:                                     ; preds = %if.end.i.i
  br label %if.end19.sink.split.i.i, !dbg !926

if.else11.i.i:                                    ; preds = %if.end.i.i
  %bcmp.i.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %112, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 3) #14, !dbg !928
  %cmp14.i.i = icmp eq i32 %bcmp.i.i, 0, !dbg !930
  br i1 %cmp14.i.i, label %if.end19.sink.split.i.i, label %if.end19.i.i, !dbg !931

if.end19.sink.split.i.i:                          ; preds = %if.else11.i.i, %if.then9.i.i, %if.end.i.i
  %.sink.i.i = phi i32 [ 2, %if.then9.i.i ], [ 1, %if.end.i.i ], [ 3, %if.else11.i.i ]
  store i32 %.sink.i.i, i32* %rl_r_kind.i, align 8, !dbg !932, !tbaa !327
  br label %if.end19.i.i, !dbg !933

if.end19.i.i:                                     ; preds = %if.end19.sink.split.i.i, %if.else11.i.i
  %bcmp41.i.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %113, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i64 7) #14, !dbg !933
  %cmp22.i.i = icmp eq i32 %bcmp41.i.i, 0, !dbg !935
  br i1 %cmp22.i.i, label %cleanup.sink.split.i.i, label %if.else24.i.i, !dbg !936

if.else24.i.i:                                    ; preds = %if.end19.i.i
  %lhsv42.i.i = load i64, i64* %115, align 16, !dbg !937
  %.not44.i.i = icmp eq i64 %lhsv42.i.i, 21760796498086977, !dbg !937
  br i1 %.not44.i.i, label %cleanup.sink.split.i.i, label %setrlibattrs.exit.i, !dbg !939

cleanup.sink.split.i.i:                           ; preds = %if.else24.i.i, %if.end19.i.i
  %.sink45.i.i = phi i32 [ 1, %if.end19.i.i ], [ 2, %if.else24.i.i ]
  store i32 %.sink45.i.i, i32* %rl_r_atomkind.i, align 4, !dbg !940, !tbaa !569
  br label %setrlibattrs.exit.i, !dbg !941

setrlibattrs.exit.i:                              ; preds = %cleanup.sink.split.i.i, %if.else24.i.i, %if.then.i45
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %113) #14, !dbg !941
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %112) #14, !dbg !941
  br label %if.end33.i59, !dbg !942

if.else.i48:                                      ; preds = %while.body.i44
  %rhsv.i46 = load i32, i32* %111, align 16, !dbg !943
  %.not.i47 = icmp eq i32 %rhsv.i46, 1297044545, !dbg !943
  br i1 %.not.i47, label %if.then10.i, label %lor.lhs.false.i, !dbg !945

lor.lhs.false.i:                                  ; preds = %if.else.i48
  %bcmp45.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %102, i64 6) #14, !dbg !946
  %cmp9.i = icmp eq i32 %bcmp45.i, 0, !dbg !947
  br i1 %cmp9.i, label %if.then10.i, label %if.end33.i59, !dbg !948

if.then10.i:                                      ; preds = %lor.lhs.false.i, %if.else.i48
  call void @llvm.dbg.value(metadata i32* %a_num.i, metadata !879, metadata !DIExpression(DW_OP_deref)) #14, !dbg !885
  call void @llvm.dbg.value(metadata i32* %r_num.i, metadata !880, metadata !DIExpression(DW_OP_deref)) #14, !dbg !885
  call void @llvm.dbg.value(metadata double* %x.i38, metadata !881, metadata !DIExpression(DW_OP_deref)) #14, !dbg !885
  call void @llvm.dbg.value(metadata double* %y.i39, metadata !882, metadata !DIExpression(DW_OP_deref)) #14, !dbg !885
  call void @llvm.dbg.value(metadata double* %z.i40, metadata !883, metadata !DIExpression(DW_OP_deref)) #14, !dbg !885
  %call15.i49 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %102, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %103, i32* noundef nonnull %a_num.i, i8* noundef nonnull %104, i8* noundef nonnull %105, i32* noundef nonnull %r_num.i, double* noundef nonnull %x.i38, double* noundef nonnull %y.i39, double* noundef nonnull %z.i40) #14, !dbg !949
  %call17.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %105) #15, !dbg !951
  %cmp18.not.i = icmp eq i32 %call17.i, 0, !dbg !953
  %.pre.i = load i32, i32* @n_atoms, align 4, !dbg !954, !tbaa !794
  br i1 %cmp18.not.i, label %if.end24.i56, label %if.then19.i, !dbg !955

if.then19.i:                                      ; preds = %if.then10.i
  %cmp20.i50 = icmp sgt i32 %.pre.i, 0, !dbg !956
  br i1 %cmp20.i50, label %if.then21.i51, label %if.end.i53, !dbg !959

if.then21.i51:                                    ; preds = %if.then19.i
  call fastcc void @addres2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !960
  store i32 0, i32* @n_atoms, align 4, !dbg !962, !tbaa !794
  br label %if.end.i53, !dbg !963

if.end.i53:                                       ; preds = %if.then21.i51, %if.then19.i
  %116 = phi i32 [ 0, %if.then21.i51 ], [ %.pre.i, %if.then19.i ]
  %call23.i52 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %105) #14, !dbg !964
  br label %if.end24.i56, !dbg !965

if.end24.i56:                                     ; preds = %if.end.i53, %if.then10.i
  %117 = phi i32 [ %116, %if.end.i53 ], [ %.pre.i, %if.then10.i ], !dbg !966
  %idxprom.i = sext i32 %117 to i64, !dbg !967
  %arrayidx.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i, !dbg !967
  call void @llvm.dbg.value(metadata %struct.atom_t* %arrayidx.i, metadata !884, metadata !DIExpression()) #14, !dbg !885
  call void @NAB_initatom(%struct.atom_t* noundef nonnull %arrayidx.i, i32 noundef 0) #14, !dbg !968
  %a_atomname.i54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %arrayidx.i, i64 0, i32 0, !dbg !969
  %118 = load i8*, i8** %a_atomname.i54, align 16, !dbg !969, !tbaa !691
  %call26.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %118, i8* noundef nonnull %104) #14, !dbg !970
  %119 = load double, double* %x.i38, align 8, !dbg !971, !tbaa !823
  call void @llvm.dbg.value(metadata double %119, metadata !881, metadata !DIExpression()) #14, !dbg !885
  %arrayidx27.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i, i32 17, i64 0, !dbg !972
  store double %119, double* %arrayidx27.i, align 16, !dbg !973, !tbaa !823
  %120 = load double, double* %y.i39, align 8, !dbg !974, !tbaa !823
  call void @llvm.dbg.value(metadata double %120, metadata !882, metadata !DIExpression()) #14, !dbg !885
  %arrayidx29.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i, i32 17, i64 1, !dbg !975
  store double %120, double* %arrayidx29.i, align 8, !dbg !976, !tbaa !823
  %121 = load double, double* %z.i40, align 8, !dbg !977, !tbaa !823
  call void @llvm.dbg.value(metadata double %121, metadata !883, metadata !DIExpression()) #14, !dbg !885
  %arrayidx31.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i, i32 17, i64 2, !dbg !978
  store double %121, double* %arrayidx31.i, align 16, !dbg !979, !tbaa !823
  %122 = load i32, i32* @n_atoms, align 4, !dbg !980, !tbaa !794
  %inc.i55 = add nsw i32 %122, 1, !dbg !980
  store i32 %inc.i55, i32* @n_atoms, align 4, !dbg !980, !tbaa !794
  br label %if.end33.i59, !dbg !981

if.end33.i59:                                     ; preds = %if.end24.i56, %lor.lhs.false.i, %setrlibattrs.exit.i
  %call.i57 = call i8* @fgets(i8* noundef nonnull %102, i32 noundef 256, %struct._IO_FILE* noundef %pfp.5193) #14, !dbg !898
  %tobool.not.i58 = icmp eq i8* %call.i57, null, !dbg !899
  br i1 %tobool.not.i58, label %while.end.i, label %while.body.i44, !dbg !899, !llvm.loop !982

while.end.i:                                      ; preds = %if.end33.i59, %if.else
  %123 = load i32, i32* @n_atoms, align 4, !dbg !984, !tbaa !794
  %cmp34.i = icmp sgt i32 %123, 0, !dbg !986
  br i1 %cmp34.i, label %if.then35.i, label %pdb2reslib.exit, !dbg !987

if.then35.i:                                      ; preds = %while.end.i
  call fastcc void @addres2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !988
  br label %pdb2reslib.exit, !dbg !988

pdb2reslib.exit:                                  ; preds = %while.end.i, %if.then35.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %110) #14, !dbg !989
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109) #14, !dbg !989
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108) #14, !dbg !989
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %107) #14, !dbg !989
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %106) #14, !dbg !989
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %105) #14, !dbg !989
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %104) #14, !dbg !989
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %103) #14, !dbg !989
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %102) #14, !dbg !989
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %bfp.1, metadata !394, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %bfp.1, metadata !990, metadata !DIExpression()) #14, !dbg !999
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !993, metadata !DIExpression()) #14, !dbg !999
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %line.i60, i64 0, i64 0, !dbg !1001
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %124) #14, !dbg !1001
  call void @llvm.dbg.declare(metadata [256 x i8]* %line.i60, metadata !994, metadata !DIExpression()) #14, !dbg !1002
  %125 = getelementptr inbounds [20 x i8], [20 x i8]* %r_name.i61, i64 0, i64 0, !dbg !1003
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %125) #14, !dbg !1003
  call void @llvm.dbg.declare(metadata [20 x i8]* %r_name.i61, metadata !995, metadata !DIExpression()) #14, !dbg !1004
  %126 = bitcast i32* %bi.i to i8*, !dbg !1005
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %126) #14, !dbg !1005
  %127 = bitcast i32* %bj.i to i8*, !dbg !1005
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %127) #14, !dbg !1005
  store i32 0, i32* @n_bonds, align 4, !dbg !1006, !tbaa !794
  store i8 0, i8* %125, align 16, !dbg !1007, !tbaa !456
  %call70.i = call i8* @fgets(i8* noundef nonnull %124, i32 noundef 256, %struct._IO_FILE* noundef %bfp.5194) #14, !dbg !1008
  %tobool.not71.i = icmp eq i8* %call70.i, null, !dbg !1009
  br i1 %tobool.not71.i, label %while.end.i77, label %while.body.i63, !dbg !1009

while.body.i63:                                   ; preds = %pdb2reslib.exit, %if.end52.i
  %128 = load i8, i8* %124, align 16, !dbg !1010, !tbaa !456
  %cmp.i62 = icmp eq i8 %128, 35, !dbg !1013
  br i1 %cmp.i62, label %if.then.i65, label %if.else27.i, !dbg !1014

if.then.i65:                                      ; preds = %while.body.i63
  %call6.i64 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %124, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* noundef nonnull %125) #14, !dbg !1015
  %cmp7.not.i = icmp eq i32 %call6.i64, 1, !dbg !1018
  br i1 %cmp7.not.i, label %if.else.i69, label %if.then9.i, !dbg !1019

if.then9.i:                                       ; preds = %if.then.i65
  %call11.i = call i64 @strlen(i8* noundef nonnull %124) #15, !dbg !1020
  %129 = trunc i64 %call11.i to i32, !dbg !1020
  %conv12.i = add i32 %129, -1, !dbg !1020
  call void @llvm.dbg.value(metadata i32 %conv12.i, metadata !996, metadata !DIExpression()) #14, !dbg !999
  %130 = icmp slt i32 %conv12.i, 20, !dbg !1022
  %cond.i66 = select i1 %130, i32 %conv12.i, i32 20, !dbg !1022
  call void @llvm.dbg.value(metadata i32 %cond.i66, metadata !996, metadata !DIExpression()) #14, !dbg !999
  %call16.i67 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 noundef %cond.i66, i32 noundef %cond.i66, i8* noundef nonnull %124) #14, !dbg !1023
  %call17.i68 = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1024
  br label %bnd2reslib.exit, !dbg !1025

if.else.i69:                                      ; preds = %if.then.i65
  %131 = load i32, i32* @n_bonds, align 4, !dbg !1026, !tbaa !794
  %cmp18.i = icmp sgt i32 %131, 0, !dbg !1028
  br i1 %cmp18.i, label %if.then20.i, label %if.else23.i, !dbg !1029

if.then20.i:                                      ; preds = %if.else.i69
  call fastcc void @addbonds2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1030
  %call22.i70 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %125) #14, !dbg !1032
  store i32 0, i32* @n_bonds, align 4, !dbg !1033, !tbaa !794
  br label %if.end52.i, !dbg !1034

if.else23.i:                                      ; preds = %if.else.i69
  %call25.i71 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %125) #14, !dbg !1035
  br label %if.end52.i

if.else27.i:                                      ; preds = %while.body.i63
  call void @llvm.dbg.value(metadata i32* %bi.i, metadata !997, metadata !DIExpression(DW_OP_deref)) #14, !dbg !999
  call void @llvm.dbg.value(metadata i32* %bj.i, metadata !998, metadata !DIExpression(DW_OP_deref)) #14, !dbg !999
  %call29.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %124, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* noundef nonnull %bi.i, i32* noundef nonnull %bj.i) #14, !dbg !1036
  %cmp30.not.i = icmp eq i32 %call29.i, 2, !dbg !1039
  br i1 %cmp30.not.i, label %if.else46.i, label %if.then32.i, !dbg !1040

if.then32.i:                                      ; preds = %if.else27.i
  %call34.i72 = call i64 @strlen(i8* noundef nonnull %124) #15, !dbg !1041
  %132 = trunc i64 %call34.i72 to i32, !dbg !1041
  %conv36.i = add i32 %132, -1, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %conv36.i, metadata !996, metadata !DIExpression()) #14, !dbg !999
  %133 = icmp slt i32 %conv36.i, 20, !dbg !1043
  %cond42.i = select i1 %133, i32 %conv36.i, i32 20, !dbg !1043
  call void @llvm.dbg.value(metadata i32 %cond42.i, metadata !996, metadata !DIExpression()) #14, !dbg !999
  %call44.i = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 noundef %cond42.i, i32 noundef %cond42.i, i8* noundef nonnull %124) #14, !dbg !1044
  %call45.i = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1045
  br label %bnd2reslib.exit, !dbg !1046

if.else46.i:                                      ; preds = %if.else27.i
  %134 = load i32, i32* %bi.i, align 4, !dbg !1047, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %134, metadata !997, metadata !DIExpression()) #14, !dbg !999
  %135 = load i32, i32* @n_bonds, align 4, !dbg !1049, !tbaa !794
  %idxprom.i73 = sext i32 %135 to i64, !dbg !1050
  %arrayidx47.i = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %idxprom.i73, i64 0, !dbg !1050
  store i32 %134, i32* %arrayidx47.i, align 8, !dbg !1051, !tbaa !794
  %136 = load i32, i32* %bj.i, align 4, !dbg !1052, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %136, metadata !998, metadata !DIExpression()) #14, !dbg !999
  %arrayidx50.i = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %idxprom.i73, i64 1, !dbg !1053
  store i32 %136, i32* %arrayidx50.i, align 4, !dbg !1054, !tbaa !794
  %inc.i74 = add nsw i32 %135, 1, !dbg !1055
  store i32 %inc.i74, i32* @n_bonds, align 4, !dbg !1055, !tbaa !794
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else46.i, %if.else23.i, %if.then20.i
  %call.i75 = call i8* @fgets(i8* noundef nonnull %124, i32 noundef 256, %struct._IO_FILE* noundef %bfp.5194) #14, !dbg !1008
  %tobool.not.i76 = icmp eq i8* %call.i75, null, !dbg !1009
  br i1 %tobool.not.i76, label %while.end.i77, label %while.body.i63, !dbg !1009, !llvm.loop !1056

while.end.i77:                                    ; preds = %if.end52.i, %pdb2reslib.exit
  %137 = load i32, i32* @n_bonds, align 4, !dbg !1058, !tbaa !794
  %cmp53.i = icmp sgt i32 %137, 0, !dbg !1060
  br i1 %cmp53.i, label %if.then55.i, label %bnd2reslib.exit, !dbg !1061

if.then55.i:                                      ; preds = %while.end.i77
  call fastcc void @addbonds2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1062
  br label %bnd2reslib.exit, !dbg !1062

bnd2reslib.exit:                                  ; preds = %if.then9.i, %if.then32.i, %while.end.i77, %if.then55.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %127) #14, !dbg !1063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %126) #14, !dbg !1063
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %125) #14, !dbg !1063
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %124) #14, !dbg !1063
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %pfp.1, metadata !334, metadata !DIExpression()), !dbg !399
  %call4 = call i32 @fclose(%struct._IO_FILE* noundef %pfp.5193), !dbg !1064
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %bfp.1, metadata !394, metadata !DIExpression()), !dbg !399
  %call5 = call i32 @fclose(%struct._IO_FILE* noundef %bfp.5194), !dbg !1065
  br label %if.end6

if.end6:                                          ; preds = %bnd2reslib.exit, %off2reslib.exit
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %qfp.1, metadata !395, metadata !DIExpression()), !dbg !399
  %tobool7.not = icmp eq %struct._IO_FILE* %qfp.5195, null, !dbg !1066
  br i1 %tobool7.not, label %if.end10, label %if.then8, !dbg !1068

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %qfp.1, metadata !1069, metadata !DIExpression()) #14, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !1072, metadata !DIExpression()) #14, !dbg !1082
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %line.i78, i64 0, i64 0, !dbg !1085
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %138) #14, !dbg !1085
  call void @llvm.dbg.declare(metadata [256 x i8]* %line.i78, metadata !1073, metadata !DIExpression()) #14, !dbg !1086
  %139 = getelementptr inbounds [10 x i8], [10 x i8]* %ltype.i79, i64 0, i64 0, !dbg !1087
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %139) #14, !dbg !1087
  call void @llvm.dbg.declare(metadata [10 x i8]* %ltype.i79, metadata !1074, metadata !DIExpression()) #14, !dbg !1088
  %140 = getelementptr inbounds [10 x i8], [10 x i8]* %a_name.i80, i64 0, i64 0, !dbg !1087
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %140) #14, !dbg !1087
  call void @llvm.dbg.declare(metadata [10 x i8]* %a_name.i80, metadata !1075, metadata !DIExpression()) #14, !dbg !1089
  %141 = getelementptr inbounds [10 x i8], [10 x i8]* %r_name.i81, i64 0, i64 0, !dbg !1087
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %141) #14, !dbg !1087
  call void @llvm.dbg.declare(metadata [10 x i8]* %r_name.i81, metadata !1076, metadata !DIExpression()) #14, !dbg !1090
  %142 = bitcast i32* %a_num.i82 to i8*, !dbg !1091
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %142) #14, !dbg !1091
  %143 = bitcast i32* %r_num.i83 to i8*, !dbg !1091
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %143) #14, !dbg !1091
  %144 = bitcast double* %q.i to i8*, !dbg !1092
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %144) #14, !dbg !1092
  %145 = bitcast double* %r.i to i8*, !dbg !1092
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %145) #14, !dbg !1092
  store i32 0, i32* @n_atoms, align 4, !dbg !1093, !tbaa !794
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1094, !tbaa !456
  %146 = bitcast [256 x i8]* %line.i78 to i32*
  %call38.i = call i8* @fgets(i8* noundef nonnull %138, i32 noundef 256, %struct._IO_FILE* noundef nonnull %qfp.5195) #14, !dbg !1095
  %tobool.not39.i = icmp eq i8* %call38.i, null, !dbg !1096
  br i1 %tobool.not39.i, label %while.end.i107, label %while.body.i86, !dbg !1096

while.body.i86:                                   ; preds = %if.then8, %while.cond.backedge.i105
  %bcmp.i84 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef nonnull dereferenceable(3) %138, i64 3) #14, !dbg !1097
  %cmp.i85 = icmp eq i32 %bcmp.i84, 0, !dbg !1100
  br i1 %cmp.i85, label %while.cond.backedge.i105, label %if.else.i89, !dbg !1101

if.else.i89:                                      ; preds = %while.body.i86
  %rhsv.i87 = load i32, i32* %146, align 16, !dbg !1102
  %.not.i88 = icmp eq i32 %rhsv.i87, 1297044545, !dbg !1102
  br i1 %.not.i88, label %if.then9.i93, label %lor.lhs.false.i90, !dbg !1104

lor.lhs.false.i90:                                ; preds = %if.else.i89
  %bcmp37.i = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %138, i64 6) #14, !dbg !1105
  %cmp8.i = icmp eq i32 %bcmp37.i, 0, !dbg !1106
  br i1 %cmp8.i, label %if.then9.i93, label %while.cond.backedge.i105, !dbg !1107

if.then9.i93:                                     ; preds = %lor.lhs.false.i90, %if.else.i89
  call void @llvm.dbg.value(metadata i32* %a_num.i82, metadata !1077, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1082
  call void @llvm.dbg.value(metadata i32* %r_num.i83, metadata !1078, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1082
  call void @llvm.dbg.value(metadata double* %q.i, metadata !1079, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1082
  call void @llvm.dbg.value(metadata double* %r.i, metadata !1080, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1082
  %call14.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %138, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* noundef nonnull %139, i32* noundef nonnull %a_num.i82, i8* noundef nonnull %140, i8* noundef nonnull %141, i32* noundef nonnull %r_num.i83, double* noundef nonnull %q.i, double* noundef nonnull %r.i) #14, !dbg !1108
  %call16.i91 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %141) #15, !dbg !1110
  %cmp17.not.i = icmp eq i32 %call16.i91, 0, !dbg !1112
  %.pre.i92 = load i32, i32* @n_atoms, align 4, !dbg !1113, !tbaa !794
  br i1 %cmp17.not.i, label %if.end23.i, label %if.then18.i, !dbg !1114

if.then18.i:                                      ; preds = %if.then9.i93
  %cmp19.i = icmp sgt i32 %.pre.i92, 0, !dbg !1115
  br i1 %cmp19.i, label %if.then20.i94, label %if.end.i96, !dbg !1118

if.then20.i94:                                    ; preds = %if.then18.i
  call fastcc void @addqr2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1119
  store i32 0, i32* @n_atoms, align 4, !dbg !1121, !tbaa !794
  br label %if.end.i96, !dbg !1122

if.end.i96:                                       ; preds = %if.then20.i94, %if.then18.i
  %147 = phi i32 [ 0, %if.then20.i94 ], [ %.pre.i92, %if.then18.i ]
  %call22.i95 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %141) #14, !dbg !1123
  br label %if.end23.i, !dbg !1124

if.end23.i:                                       ; preds = %if.end.i96, %if.then9.i93
  %148 = phi i32 [ %147, %if.end.i96 ], [ %.pre.i92, %if.then9.i93 ], !dbg !1125
  %idxprom.i97 = sext i32 %148 to i64, !dbg !1126
  %arrayidx.i98 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i97, !dbg !1126
  call void @llvm.dbg.value(metadata %struct.atom_t* %arrayidx.i98, metadata !1081, metadata !DIExpression()) #14, !dbg !1082
  call void @NAB_initatom(%struct.atom_t* noundef nonnull %arrayidx.i98, i32 noundef 0) #14, !dbg !1127
  %a_atomname.i99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %arrayidx.i98, i64 0, i32 0, !dbg !1128
  %149 = load i8*, i8** %a_atomname.i99, align 16, !dbg !1128, !tbaa !691
  %call25.i100 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %149, i8* noundef nonnull %140) #14, !dbg !1129
  %150 = load double, double* %q.i, align 8, !dbg !1130, !tbaa !823
  call void @llvm.dbg.value(metadata double %150, metadata !1079, metadata !DIExpression()) #14, !dbg !1082
  %a_charge.i101 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i97, i32 6, !dbg !1131
  store double %150, double* %a_charge.i101, align 16, !dbg !1132, !tbaa !826
  %151 = load double, double* %r.i, align 8, !dbg !1133, !tbaa !823
  call void @llvm.dbg.value(metadata double %151, metadata !1080, metadata !DIExpression()) #14, !dbg !1082
  %a_radius.i = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %idxprom.i97, i32 7, !dbg !1134
  store double %151, double* %a_radius.i, align 8, !dbg !1135, !tbaa !1136
  %152 = load i32, i32* @n_atoms, align 4, !dbg !1137, !tbaa !794
  %inc.i102 = add nsw i32 %152, 1, !dbg !1137
  store i32 %inc.i102, i32* @n_atoms, align 4, !dbg !1137, !tbaa !794
  br label %while.cond.backedge.i105, !dbg !1138

while.cond.backedge.i105:                         ; preds = %if.end23.i, %lor.lhs.false.i90, %while.body.i86
  %call.i103 = call i8* @fgets(i8* noundef nonnull %138, i32 noundef 256, %struct._IO_FILE* noundef nonnull %qfp.5195) #14, !dbg !1095
  %tobool.not.i104 = icmp eq i8* %call.i103, null, !dbg !1096
  br i1 %tobool.not.i104, label %while.end.i107, label %while.body.i86, !dbg !1096, !llvm.loop !1139

while.end.i107:                                   ; preds = %while.cond.backedge.i105, %if.then8
  %153 = load i32, i32* @n_atoms, align 4, !dbg !1141, !tbaa !794
  %cmp28.i106 = icmp sgt i32 %153, 0, !dbg !1143
  br i1 %cmp28.i106, label %if.then29.i, label %qr2reslib.exit, !dbg !1144

if.then29.i:                                      ; preds = %while.end.i107
  call fastcc void @addqr2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1145
  br label %qr2reslib.exit, !dbg !1145

qr2reslib.exit:                                   ; preds = %while.end.i107, %if.then29.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %145) #14, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %144) #14, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %143) #14, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %142) #14, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %141) #14, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %140) #14, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %139) #14, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %138) #14, !dbg !1146
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %qfp.1, metadata !395, metadata !DIExpression()), !dbg !399
  %call9 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %qfp.5195), !dbg !1147
  br label %if.end10, !dbg !1148

if.end10:                                         ; preds = %qr2reslib.exit, %if.end6
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %cfp.1, metadata !396, metadata !DIExpression()), !dbg !399
  %tobool11.not = icmp eq %struct._IO_FILE* %cfp.5196, null, !dbg !1149
  br i1 %tobool11.not, label %cleanup, label %if.then12, !dbg !1151

if.then12:                                        ; preds = %if.end10
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %cfp.1, metadata !1152, metadata !DIExpression()) #14, !dbg !1171
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !1155, metadata !DIExpression()) #14, !dbg !1171
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %line.i108, i64 0, i64 0, !dbg !1174
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %154) #14, !dbg !1174
  call void @llvm.dbg.declare(metadata [256 x i8]* %line.i108, metadata !1156, metadata !DIExpression()) #14, !dbg !1175
  %155 = getelementptr inbounds [20 x i8], [20 x i8]* %r_name.i109, i64 0, i64 0, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %155) #14, !dbg !1176
  call void @llvm.dbg.declare(metadata [20 x i8]* %r_name.i109, metadata !1157, metadata !DIExpression()) #14, !dbg !1177
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !1159, metadata !DIExpression()) #14, !dbg !1171
  %156 = getelementptr inbounds [8 x i8], [8 x i8]* %anm1.i, i64 0, i64 0, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %156) #14, !dbg !1178
  call void @llvm.dbg.declare(metadata [8 x i8]* %anm1.i, metadata !1161, metadata !DIExpression()) #14, !dbg !1179
  %157 = getelementptr inbounds [8 x i8], [8 x i8]* %anm2.i, i64 0, i64 0, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %157) #14, !dbg !1178
  call void @llvm.dbg.declare(metadata [8 x i8]* %anm2.i, metadata !1162, metadata !DIExpression()) #14, !dbg !1180
  %158 = getelementptr inbounds [8 x i8], [8 x i8]* %anm3.i, i64 0, i64 0, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %158) #14, !dbg !1178
  call void @llvm.dbg.declare(metadata [8 x i8]* %anm3.i, metadata !1163, metadata !DIExpression()) #14, !dbg !1181
  %159 = getelementptr inbounds [8 x i8], [8 x i8]* %anm4.i, i64 0, i64 0, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %159) #14, !dbg !1178
  call void @llvm.dbg.declare(metadata [8 x i8]* %anm4.i, metadata !1164, metadata !DIExpression()) #14, !dbg !1182
  store i32 0, i32* @n_chi, align 4, !dbg !1183, !tbaa !794
  store i8 0, i8* %155, align 16, !dbg !1184, !tbaa !456
  %rl_rlist.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %9, i64 0, i32 4
  %call244.i = call i8* @fgets(i8* noundef nonnull %154, i32 noundef 256, %struct._IO_FILE* noundef nonnull %cfp.5196) #14, !dbg !1185
  %tobool.not245.i = icmp eq i8* %call244.i, null, !dbg !1186
  br i1 %tobool.not245.i, label %while.end.i135, label %while.body.i111, !dbg !1186

while.body.i111:                                  ; preds = %if.then12, %if.end104.i
  %res.0246.i = phi %struct.residue_t* [ %res.2.i, %if.end104.i ], [ null, %if.then12 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0246.i, metadata !1159, metadata !DIExpression()) #14, !dbg !1171
  %160 = load i8, i8* %154, align 16, !dbg !1187, !tbaa !456
  %cmp.i110 = icmp eq i8 %160, 35, !dbg !1190
  br i1 %cmp.i110, label %if.then.i114, label %if.else35.i, !dbg !1191

if.then.i114:                                     ; preds = %while.body.i111
  %call6.i112 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %154, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* noundef nonnull %155) #14, !dbg !1192
  %cmp7.not.i113 = icmp eq i32 %call6.i112, 1, !dbg !1195
  br i1 %cmp7.not.i113, label %if.else.i122, label %if.then9.i120, !dbg !1196

if.then9.i120:                                    ; preds = %if.then.i114
  %call11.i115 = call i64 @strlen(i8* noundef nonnull %154) #15, !dbg !1197
  %161 = trunc i64 %call11.i115 to i32, !dbg !1197
  %conv12.i116 = add i32 %161, -1, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %conv12.i116, metadata !1158, metadata !DIExpression()) #14, !dbg !1171
  %162 = icmp slt i32 %conv12.i116, 20, !dbg !1199
  %cond.i117 = select i1 %162, i32 %conv12.i116, i32 20, !dbg !1199
  call void @llvm.dbg.value(metadata i32 %cond.i117, metadata !1158, metadata !DIExpression()) #14, !dbg !1171
  %call16.i118 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 noundef %cond.i117, i32 noundef %cond.i117, i8* noundef nonnull %154) #14, !dbg !1200
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1201, !tbaa !296
  %call17.i119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %163, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #18, !dbg !1202
  br label %chi2reslib.exit, !dbg !1203

if.else.i122:                                     ; preds = %if.then.i114
  %164 = load i32, i32* @n_chi, align 4, !dbg !1204, !tbaa !794
  %cmp18.i121 = icmp sgt i32 %164, 0, !dbg !1207
  br i1 %cmp18.i121, label %if.then20.i123, label %if.end.i124, !dbg !1208

if.then20.i123:                                   ; preds = %if.else.i122
  call fastcc void @addchi2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1209
  store i32 0, i32* @n_chi, align 4, !dbg !1211, !tbaa !794
  br label %if.end.i124, !dbg !1212

if.end.i124:                                      ; preds = %if.then20.i123, %if.else.i122
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !1160, metadata !DIExpression()) #14, !dbg !1171
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1159, metadata !DIExpression()) #14, !dbg !1171
  %res.1241.i = load %struct.residue_t*, %struct.residue_t** %rl_rlist.i, align 8, !dbg !1213, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.1241.i, metadata !1159, metadata !DIExpression()) #14, !dbg !1171
  %tobool21.not242.i = icmp eq %struct.residue_t* %res.1241.i, null, !dbg !1215
  br i1 %tobool21.not242.i, label %if.then28.i, label %for.body.i126, !dbg !1215

for.body.i126:                                    ; preds = %if.end.i124, %for.inc.i127
  %res.1243.i = phi %struct.residue_t* [ %res.1.i, %for.inc.i127 ], [ %res.1241.i, %if.end.i124 ]
  %r_resname.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.1243.i, i64 0, i32 4, !dbg !1216
  %165 = load i8*, i8** %r_resname.i, align 8, !dbg !1216, !tbaa !1220
  %call23.i125 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %165, i8* noundef nonnull %155) #15, !dbg !1222
  %tobool24.not.i = icmp eq i32 %call23.i125, 0, !dbg !1222
  br i1 %tobool24.not.i, label %if.end31.i, label %for.inc.i127, !dbg !1223

for.inc.i127:                                     ; preds = %for.body.i126
  %r_next.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.1243.i, i64 0, i32 0, !dbg !1224
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1159, metadata !DIExpression()) #14, !dbg !1171
  %res.1.i = load %struct.residue_t*, %struct.residue_t** %r_next.i, align 8, !dbg !1213, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.1.i, metadata !1159, metadata !DIExpression()) #14, !dbg !1171
  %tobool21.not.i = icmp eq %struct.residue_t* %res.1.i, null, !dbg !1215
  br i1 %tobool21.not.i, label %if.then28.i, label %for.body.i126, !dbg !1215, !llvm.loop !1225

if.then28.i:                                      ; preds = %if.end.i124, %for.inc.i127
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1160, metadata !DIExpression()) #14, !dbg !1171
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1227, !tbaa !296
  %167 = load i8*, i8** %rl_name.i, align 8, !dbg !1230, !tbaa !305
  %call30.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %166, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* noundef nonnull %155, i8* noundef %167) #18, !dbg !1231
  br label %chi2reslib.exit, !dbg !1232

if.end31.i:                                       ; preds = %for.body.i126
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.1243.i, metadata !1160, metadata !DIExpression()) #14, !dbg !1171
  %call33.i = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %155) #14, !dbg !1233
  br label %if.end104.i, !dbg !1234

if.else35.i:                                      ; preds = %while.body.i111
  %call41.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %154, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* noundef nonnull %156, i8* noundef nonnull %157, i8* noundef nonnull %158, i8* noundef nonnull %159) #14, !dbg !1235
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0246.i, metadata !1237, metadata !DIExpression()) #14, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %156, metadata !1242, metadata !DIExpression()) #14, !dbg !1244
  call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()) #14, !dbg !1244
  %r_natoms.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 15
  %168 = load i32, i32* %r_natoms.i.i, align 8, !tbaa !1247
  %cmp10.i.i = icmp sgt i32 %168, 0, !dbg !1248
  br i1 %cmp10.i.i, label %for.body.lr.ph.i.i, label %if.then45.i, !dbg !1251

for.body.lr.ph.i.i:                               ; preds = %if.else35.i
  %r_atoms.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 17, !dbg !1252
  %169 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i.i, align 8, !tbaa !1255
  %wide.trip.count.i.i = zext i32 %168 to i64, !dbg !1248
  br label %for.body.i.i, !dbg !1251

for.cond.i.i:                                     ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1244
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1248
  br i1 %exitcond.not.i.i, label %if.then45.i, label %for.body.i.i, !dbg !1251, !llvm.loop !1256

for.body.i.i:                                     ; preds = %for.cond.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1244
  %a_atomname.i.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %169, i64 %indvars.iv.i.i, i32 0, !dbg !1258
  %170 = load i8*, i8** %a_atomname.i.i, align 8, !dbg !1258, !tbaa !691
  %call.i.i129 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %170, i8* noundef nonnull dereferenceable(1) %156) #15, !dbg !1259
  %tobool.not.i.i = icmp eq i32 %call.i.i129, 0, !dbg !1259
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1260
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1244
  br i1 %tobool.not.i.i, label %for.body.lr.ph.i164.i, label %for.cond.i.i, !dbg !1261

if.then45.i:                                      ; preds = %if.else35.i, %for.cond.i.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* undef, i64 undef), metadata !1169, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1171
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1262, !tbaa !296
  %r_resname47.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 4, !dbg !1264
  %172 = load i8*, i8** %r_resname47.i, align 8, !dbg !1264, !tbaa !1220
  %call48.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %171, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %156, i8* noundef %172) #18, !dbg !1265
  call void @exit(i32 noundef 1) #17, !dbg !1266
  unreachable, !dbg !1266

for.body.lr.ph.i164.i:                            ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %169, i64 %indvars.iv.i.i), metadata !1169, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1171
  %conv50.i = trunc i64 %indvars.iv.i.i to i32, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %conv50.i, metadata !1165, metadata !DIExpression()) #14, !dbg !1171
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0246.i, metadata !1237, metadata !DIExpression()) #14, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %157, metadata !1242, metadata !DIExpression()) #14, !dbg !1268
  call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()) #14, !dbg !1268
  br label %for.body.i173.i, !dbg !1271

for.cond.i166.i:                                  ; preds = %for.body.i173.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i172.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1268
  %exitcond.not.i165.i = icmp eq i64 %indvars.iv.next.i172.i, %wide.trip.count.i.i, !dbg !1272
  br i1 %exitcond.not.i165.i, label %if.then55.i130, label %for.body.i173.i, !dbg !1271, !llvm.loop !1273

for.body.i173.i:                                  ; preds = %for.cond.i166.i, %for.body.lr.ph.i164.i
  %indvars.iv.i167.i = phi i64 [ 0, %for.body.lr.ph.i164.i ], [ %indvars.iv.next.i172.i, %for.cond.i166.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i167.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1268
  %a_atomname.i169.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %169, i64 %indvars.iv.i167.i, i32 0, !dbg !1275
  %173 = load i8*, i8** %a_atomname.i169.i, align 8, !dbg !1275, !tbaa !691
  %call.i170.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %173, i8* noundef nonnull dereferenceable(1) %157) #15, !dbg !1276
  %tobool.not.i171.i = icmp eq i32 %call.i170.i, 0, !dbg !1276
  %indvars.iv.next.i172.i = add nuw nsw i64 %indvars.iv.i167.i, 1, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i172.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1268
  br i1 %tobool.not.i171.i, label %for.body.lr.ph.i180.i, label %for.cond.i166.i, !dbg !1278

if.then55.i130:                                   ; preds = %for.cond.i166.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %169, i64 undef), metadata !1169, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1171
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1279, !tbaa !296
  %r_resname57.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 4, !dbg !1281
  %175 = load i8*, i8** %r_resname57.i, align 8, !dbg !1281, !tbaa !1220
  %call58.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %174, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %157, i8* noundef %175) #18, !dbg !1282
  call void @exit(i32 noundef 1) #17, !dbg !1283
  unreachable, !dbg !1283

for.body.lr.ph.i180.i:                            ; preds = %for.body.i173.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %169, i64 %indvars.iv.i167.i), metadata !1169, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1171
  %conv65.i = trunc i64 %indvars.iv.i167.i to i32, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %conv65.i, metadata !1166, metadata !DIExpression()) #14, !dbg !1171
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0246.i, metadata !1237, metadata !DIExpression()) #14, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %158, metadata !1242, metadata !DIExpression()) #14, !dbg !1285
  call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()) #14, !dbg !1285
  br label %for.body.i189.i, !dbg !1288

for.cond.i182.i:                                  ; preds = %for.body.i189.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i188.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1285
  %exitcond.not.i181.i = icmp eq i64 %indvars.iv.next.i188.i, %wide.trip.count.i.i, !dbg !1289
  br i1 %exitcond.not.i181.i, label %if.then70.i, label %for.body.i189.i, !dbg !1288, !llvm.loop !1290

for.body.i189.i:                                  ; preds = %for.cond.i182.i, %for.body.lr.ph.i180.i
  %indvars.iv.i183.i = phi i64 [ 0, %for.body.lr.ph.i180.i ], [ %indvars.iv.next.i188.i, %for.cond.i182.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i183.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1285
  %a_atomname.i185.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %169, i64 %indvars.iv.i183.i, i32 0, !dbg !1292
  %176 = load i8*, i8** %a_atomname.i185.i, align 8, !dbg !1292, !tbaa !691
  %call.i186.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %176, i8* noundef nonnull dereferenceable(1) %158) #15, !dbg !1293
  %tobool.not.i187.i = icmp eq i32 %call.i186.i, 0, !dbg !1293
  %indvars.iv.next.i188.i = add nuw nsw i64 %indvars.iv.i183.i, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i188.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1285
  br i1 %tobool.not.i187.i, label %for.body.i205.i, label %for.cond.i182.i, !dbg !1295

if.then70.i:                                      ; preds = %for.cond.i182.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %169, i64 undef), metadata !1169, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1171
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1296, !tbaa !296
  %r_resname72.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 4, !dbg !1298
  %178 = load i8*, i8** %r_resname72.i, align 8, !dbg !1298, !tbaa !1220
  %call73.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %177, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %158, i8* noundef %178) #18, !dbg !1299
  call void @exit(i32 noundef 1) #17, !dbg !1300
  unreachable, !dbg !1300

for.cond.i198.i:                                  ; preds = %for.body.i205.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i204.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1301
  %exitcond.not.i197.i = icmp eq i64 %indvars.iv.next.i204.i, %wide.trip.count.i.i, !dbg !1304
  br i1 %exitcond.not.i197.i, label %if.then85.i, label %for.body.i205.i, !dbg !1305, !llvm.loop !1306

for.body.i205.i:                                  ; preds = %for.body.i189.i, %for.cond.i198.i
  %indvars.iv.i199.i = phi i64 [ %indvars.iv.next.i204.i, %for.cond.i198.i ], [ 0, %for.body.i189.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i199.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1301
  %a_atomname.i201.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %169, i64 %indvars.iv.i199.i, i32 0, !dbg !1308
  %179 = load i8*, i8** %a_atomname.i201.i, align 8, !dbg !1308, !tbaa !691
  %call.i202.i = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %179, i8* noundef nonnull dereferenceable(1) %159) #15, !dbg !1309
  %tobool.not.i203.i = icmp eq i32 %call.i202.i, 0, !dbg !1309
  %indvars.iv.next.i204.i = add nuw nsw i64 %indvars.iv.i199.i, 1, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i204.i, metadata !1243, metadata !DIExpression()) #14, !dbg !1301
  br i1 %tobool.not.i203.i, label %if.else89.i, label %for.cond.i198.i, !dbg !1311

if.then85.i:                                      ; preds = %for.cond.i198.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %169, i64 undef), metadata !1169, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1171
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1312, !tbaa !296
  %r_resname87.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0246.i, i64 0, i32 4, !dbg !1314
  %181 = load i8*, i8** %r_resname87.i, align 8, !dbg !1314, !tbaa !1220
  %call88.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %159, i8* noundef %181) #18, !dbg !1315
  call void @exit(i32 noundef 1) #17, !dbg !1316
  unreachable, !dbg !1316

if.else89.i:                                      ; preds = %for.body.i205.i
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %169, i64 %indvars.iv.i199.i), metadata !1169, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i183.i, metadata !1167, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #14, !dbg !1171
  %conv80.i = trunc i64 %indvars.iv.i183.i to i32, !dbg !1317
  call void @llvm.dbg.value(metadata i32 %conv80.i, metadata !1167, metadata !DIExpression()) #14, !dbg !1171
  %conv95.i = trunc i64 %indvars.iv.i199.i to i32, !dbg !1318
  call void @llvm.dbg.value(metadata i32 %conv95.i, metadata !1168, metadata !DIExpression()) #14, !dbg !1171
  %182 = load i32, i32* @n_chi, align 4, !dbg !1319, !tbaa !794
  %idxprom.i131 = sext i32 %182 to i64, !dbg !1320
  call void @llvm.dbg.value(metadata !DIArgList([500 x %struct.chiral_t]* @chi, i64 %idxprom.i131), metadata !1170, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1171
  %inc.i132 = add nsw i32 %182, 1, !dbg !1321
  store i32 %inc.i132, i32* @n_chi, align 4, !dbg !1321, !tbaa !794
  %arrayidx97.i = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %idxprom.i131, i32 0, i64 0, !dbg !1322
  store i32 %conv50.i, i32* %arrayidx97.i, align 8, !dbg !1323, !tbaa !794
  %arrayidx99.i = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %idxprom.i131, i32 0, i64 1, !dbg !1324
  store i32 %conv65.i, i32* %arrayidx99.i, align 4, !dbg !1325, !tbaa !794
  %arrayidx101.i = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %idxprom.i131, i32 0, i64 2, !dbg !1326
  store i32 %conv80.i, i32* %arrayidx101.i, align 8, !dbg !1327, !tbaa !794
  %arrayidx103.i = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %idxprom.i131, i32 0, i64 3, !dbg !1328
  store i32 %conv95.i, i32* %arrayidx103.i, align 4, !dbg !1329, !tbaa !794
  %c_dist.i = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %idxprom.i131, i32 1, !dbg !1330
  store double 0.000000e+00, double* %c_dist.i, align 8, !dbg !1331, !tbaa !1332
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else89.i, %if.end31.i
  %res.2.i = phi %struct.residue_t* [ %res.1243.i, %if.end31.i ], [ %res.0246.i, %if.else89.i ], !dbg !1171
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.2.i, metadata !1159, metadata !DIExpression()) #14, !dbg !1171
  %call.i133 = call i8* @fgets(i8* noundef nonnull %154, i32 noundef 256, %struct._IO_FILE* noundef nonnull %cfp.5196) #14, !dbg !1185
  %tobool.not.i134 = icmp eq i8* %call.i133, null, !dbg !1186
  br i1 %tobool.not.i134, label %while.end.i135, label %while.body.i111, !dbg !1186, !llvm.loop !1334

while.end.i135:                                   ; preds = %if.end104.i, %if.then12
  %183 = load i32, i32* @n_chi, align 4, !dbg !1336, !tbaa !794
  %cmp105.i = icmp sgt i32 %183, 0, !dbg !1338
  br i1 %cmp105.i, label %if.then107.i, label %chi2reslib.exit, !dbg !1339

if.then107.i:                                     ; preds = %while.end.i135
  call fastcc void @addchi2reslib(%struct.reslib_t* noundef nonnull %9) #14, !dbg !1340
  store i32 0, i32* @n_chi, align 4, !dbg !1342, !tbaa !794
  br label %chi2reslib.exit, !dbg !1343

chi2reslib.exit:                                  ; preds = %if.then9.i120, %if.then28.i, %while.end.i135, %if.then107.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %159) #14, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %158) #14, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %157) #14, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %156) #14, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %155) #14, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %154) #14, !dbg !1344
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %cfp.1, metadata !396, metadata !DIExpression()), !dbg !399
  %call13 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %cfp.5196), !dbg !1345
  br label %cleanup, !dbg !1346

cleanup:                                          ; preds = %read_reslib_header.exit.thread, %if.end10, %chi2reslib.exit
  %retval.0 = phi %struct.reslib_t* [ %9, %chi2reslib.exit ], [ %9, %if.end10 ], [ null, %read_reslib_header.exit.thread ], !dbg !399
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #14, !dbg !1347
  ret %struct.reslib_t* %retval.0, !dbg !1347
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @setreslibkind(i8* noundef %reslib, i8* nocapture noundef readonly %kind) local_unnamed_addr #0 !dbg !1348 {
entry:
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !1352, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %kind, metadata !1353, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata i8** undef, metadata !1354, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !285, metadata !DIExpression()) #14, !dbg !1358
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !290, metadata !DIExpression()) #14, !dbg !1358
  %rlp.05.i = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1361, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.05.i, metadata !290, metadata !DIExpression()) #14, !dbg !1358
  %tobool.not6.i = icmp eq %struct.reslib_t* %rlp.05.i, null, !dbg !1362
  br i1 %tobool.not6.i, label %if.then, label %for.body.i, !dbg !1362

for.body.i:                                       ; preds = %entry, %for.inc.i
  %rlp.07.i = phi %struct.reslib_t* [ %rlp.0.i, %for.inc.i ], [ %rlp.05.i, %entry ]
  %rl_name.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.07.i, i64 0, i32 1, !dbg !1363
  %0 = load i8*, i8** %rl_name.i, align 8, !dbg !1363, !tbaa !305
  %call.i = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %reslib) #15, !dbg !1364
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !1365
  br i1 %cmp.i, label %if.end5, label %for.inc.i, !dbg !1366

for.inc.i:                                        ; preds = %for.body.i
  %rl_next.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.07.i, i64 0, i32 0, !dbg !1367
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !290, metadata !DIExpression()) #14, !dbg !1358
  %rlp.0.i = load %struct.reslib_t*, %struct.reslib_t** %rl_next.i, align 8, !dbg !1361, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0.i, metadata !290, metadata !DIExpression()) #14, !dbg !1358
  %tobool.not.i = icmp eq %struct.reslib_t* %rlp.0.i, null, !dbg !1362
  br i1 %tobool.not.i, label %if.then, label %for.body.i, !dbg !1362, !llvm.loop !1368

if.then:                                          ; preds = %for.inc.i, %entry
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !1355, metadata !DIExpression()), !dbg !1356
  %call1 = tail call fastcc %struct.reslib_t* @read_reslib(i8* noundef %reslib), !dbg !1370
  call void @llvm.dbg.value(metadata %struct.reslib_t* %call1, metadata !1355, metadata !DIExpression()), !dbg !1356
  %cmp2 = icmp eq %struct.reslib_t* %call1, null, !dbg !1373
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !1374

if.then3:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1375, !tbaa !296
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %reslib) #16, !dbg !1377
  tail call void @exit(i32 noundef 1) #17, !dbg !1378
  unreachable, !dbg !1378

if.end5:                                          ; preds = %for.body.i, %if.then
  %rlp.0 = phi %struct.reslib_t* [ %call1, %if.then ], [ %rlp.07.i, %for.body.i ], !dbg !1379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0, metadata !1355, metadata !DIExpression()), !dbg !1356
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.0, i64 0, i32 2, !dbg !1380
  store i32 0, i32* %rl_r_kind, align 8, !dbg !1381, !tbaa !327
  %call6 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #15, !dbg !1382
  %tobool.not = icmp eq i32 %call6, 0, !dbg !1382
  br i1 %tobool.not, label %if.end28.sink.split, label %lor.lhs.false, !dbg !1384

lor.lhs.false:                                    ; preds = %if.end5
  %call7 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #15, !dbg !1385
  %tobool8.not = icmp eq i32 %call7, 0, !dbg !1385
  br i1 %tobool8.not, label %if.end28.sink.split, label %if.else, !dbg !1386

if.else:                                          ; preds = %lor.lhs.false
  %call11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1387
  %tobool12.not = icmp eq i32 %call11, 0, !dbg !1387
  br i1 %tobool12.not, label %if.end28.sink.split, label %lor.lhs.false13, !dbg !1389

lor.lhs.false13:                                  ; preds = %if.else
  %call14 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #15, !dbg !1390
  %tobool15.not = icmp eq i32 %call14, 0, !dbg !1390
  br i1 %tobool15.not, label %if.end28.sink.split, label %if.else18, !dbg !1391

if.else18:                                        ; preds = %lor.lhs.false13
  %call19 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1392
  %tobool20.not = icmp eq i32 %call19, 0, !dbg !1392
  br i1 %tobool20.not, label %if.end28.sink.split, label %lor.lhs.false21, !dbg !1394

lor.lhs.false21:                                  ; preds = %if.else18
  %call22 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %kind, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #15, !dbg !1395
  %tobool23.not = icmp eq i32 %call22, 0, !dbg !1395
  br i1 %tobool23.not, label %if.end28.sink.split, label %if.end28, !dbg !1396

if.end28.sink.split:                              ; preds = %if.else18, %lor.lhs.false21, %if.else, %lor.lhs.false13, %if.end5, %lor.lhs.false
  %.sink = phi i32 [ 1, %lor.lhs.false ], [ 1, %if.end5 ], [ 2, %lor.lhs.false13 ], [ 2, %if.else ], [ 3, %lor.lhs.false21 ], [ 3, %if.else18 ]
  store i32 %.sink, i32* %rl_r_kind, align 8, !dbg !1397, !tbaa !327
  br label %if.end28, !dbg !1398

if.end28:                                         ; preds = %if.end28.sink.split, %lor.lhs.false21
  %2 = phi i32 [ 0, %lor.lhs.false21 ], [ %.sink, %if.end28.sink.split ], !dbg !1399
  ret i32 %2, !dbg !1398
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @getresidue(i8* noundef %rname, i8* noundef %reslib) local_unnamed_addr #0 !dbg !1400 {
entry:
  %leapname = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %rname, metadata !1404, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !1405, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.declare(metadata i8** undef, metadata !1406, metadata !DIExpression()), !dbg !1415
  %0 = getelementptr inbounds [5 x i8], [5 x i8]* %leapname, i64 0, i64 0, !dbg !1416
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %0) #14, !dbg !1416
  call void @llvm.dbg.declare(metadata [5 x i8]* %leapname, metadata !1407, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8* %reslib, metadata !285, metadata !DIExpression()) #14, !dbg !1418
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !290, metadata !DIExpression()) #14, !dbg !1418
  %rlp.05.i = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1421, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.05.i, metadata !290, metadata !DIExpression()) #14, !dbg !1418
  %tobool.not6.i = icmp eq %struct.reslib_t* %rlp.05.i, null, !dbg !1422
  br i1 %tobool.not6.i, label %if.then, label %for.body.i, !dbg !1422

for.body.i:                                       ; preds = %entry, %for.inc.i
  %rlp.07.i = phi %struct.reslib_t* [ %rlp.0.i, %for.inc.i ], [ %rlp.05.i, %entry ]
  %rl_name.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.07.i, i64 0, i32 1, !dbg !1423
  %1 = load i8*, i8** %rl_name.i, align 8, !dbg !1423, !tbaa !305
  %call.i = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %reslib) #15, !dbg !1424
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !1425
  br i1 %cmp.i, label %if.end4, label %for.inc.i, !dbg !1426

for.inc.i:                                        ; preds = %for.body.i
  %rl_next.i = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.07.i, i64 0, i32 0, !dbg !1427
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !290, metadata !DIExpression()) #14, !dbg !1418
  %rlp.0.i = load %struct.reslib_t*, %struct.reslib_t** %rl_next.i, align 8, !dbg !1421, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0.i, metadata !290, metadata !DIExpression()) #14, !dbg !1418
  %tobool.not.i = icmp eq %struct.reslib_t* %rlp.0.i, null, !dbg !1422
  br i1 %tobool.not.i, label %if.then, label %for.body.i, !dbg !1422, !llvm.loop !1428

if.then:                                          ; preds = %for.inc.i, %entry
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !1411, metadata !DIExpression()), !dbg !1414
  %call1 = tail call fastcc %struct.reslib_t* @read_reslib(i8* noundef %reslib), !dbg !1430
  call void @llvm.dbg.value(metadata %struct.reslib_t* %call1, metadata !1411, metadata !DIExpression()), !dbg !1414
  %cmp2 = icmp eq %struct.reslib_t* %call1, null, !dbg !1433
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1434

if.then3:                                         ; preds = %if.then
  tail call void @exit(i32 noundef 1) #17, !dbg !1435
  unreachable, !dbg !1435

if.end4:                                          ; preds = %for.body.i, %if.then
  %rlp.0 = phi %struct.reslib_t* [ %call1, %if.then ], [ %rlp.07.i, %for.body.i ], !dbg !1437
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp.0, metadata !1411, metadata !DIExpression()), !dbg !1414
  %call5 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(1) %rname) #14, !dbg !1438
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.0, i64 0, i32 2, !dbg !1439
  %2 = load i32, i32* %rl_r_kind, align 8, !dbg !1439, !tbaa !327
  switch i32 %2, label %if.end65 [
    i32 1, label %if.then7
    i32 2, label %if.then36
  ], !dbg !1441

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 3) #15, !dbg !1442
  %tobool.not = icmp eq i32 %call8, 0, !dbg !1442
  br i1 %tobool.not, label %if.then9, label %if.else, !dbg !1445

if.then9:                                         ; preds = %if.then7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1446
  br label %if.end65, !dbg !1446

if.else:                                          ; preds = %if.then7
  %call12 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 noundef 3) #15, !dbg !1447
  %tobool13.not = icmp eq i32 %call12, 0, !dbg !1447
  br i1 %tobool13.not, label %if.then14, label %if.else17, !dbg !1449

if.then14:                                        ; preds = %if.else
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1450
  br label %if.end65, !dbg !1450

if.else17:                                        ; preds = %if.else
  %call18 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 noundef 3) #15, !dbg !1451
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !1451
  br i1 %tobool19.not, label %if.then20, label %if.else23, !dbg !1453

if.then20:                                        ; preds = %if.else17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1454
  br label %if.end65, !dbg !1454

if.else23:                                        ; preds = %if.else17
  %call24 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 noundef 3) #15, !dbg !1455
  %tobool25.not = icmp eq i32 %call24, 0, !dbg !1455
  br i1 %tobool25.not, label %if.then26, label %if.end65, !dbg !1457

if.then26:                                        ; preds = %if.else23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1458
  br label %if.end65, !dbg !1458

if.then36:                                        ; preds = %if.end4
  %call37 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 3) #15, !dbg !1459
  %tobool38.not = icmp eq i32 %call37, 0, !dbg !1459
  br i1 %tobool38.not, label %if.then39, label %if.else42, !dbg !1463

if.then39:                                        ; preds = %if.then36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1464
  br label %if.end65, !dbg !1464

if.else42:                                        ; preds = %if.then36
  %call43 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 noundef 3) #15, !dbg !1465
  %tobool44.not = icmp eq i32 %call43, 0, !dbg !1465
  br i1 %tobool44.not, label %if.then45, label %if.else48, !dbg !1467

if.then45:                                        ; preds = %if.else42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1468
  br label %if.end65, !dbg !1468

if.else48:                                        ; preds = %if.else42
  %call49 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef 3) #15, !dbg !1469
  %tobool50.not = icmp eq i32 %call49, 0, !dbg !1469
  br i1 %tobool50.not, label %if.then51, label %if.else54, !dbg !1471

if.then51:                                        ; preds = %if.else48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1472
  br label %if.end65, !dbg !1472

if.else54:                                        ; preds = %if.else48
  %call55 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %rname, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 noundef 3) #15, !dbg !1473
  %tobool56.not = icmp eq i32 %call55, 0, !dbg !1473
  br i1 %tobool56.not, label %if.then57, label %if.end65, !dbg !1475

if.then57:                                        ; preds = %if.else54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 3, i1 false) #14, !dbg !1476
  br label %if.end65, !dbg !1476

if.end65:                                         ; preds = %if.end4, %if.then45, %if.else54, %if.then57, %if.then51, %if.then39, %if.then9, %if.then20, %if.then26, %if.else23, %if.then14
  %strchr = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %rname, i32 51), !dbg !1477
  %cmp67.not = icmp eq i8* %strchr, null, !dbg !1479
  br i1 %cmp67.not, label %if.else71, label %if.end78.sink.split, !dbg !1480

if.else71:                                        ; preds = %if.end65
  %strchr123 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %rname, i32 53), !dbg !1481
  %cmp73.not = icmp eq i8* %strchr123, null, !dbg !1483
  br i1 %cmp73.not, label %if.end78, label %if.end78.sink.split, !dbg !1484

if.end78.sink.split:                              ; preds = %if.else71, %if.end65
  %.sink = phi i16 [ 51, %if.end65 ], [ 53, %if.else71 ]
  %strlen = call i64 @strlen(i8* nonnull %0), !dbg !1485
  %endptr = getelementptr [5 x i8], [5 x i8]* %leapname, i64 0, i64 %strlen, !dbg !1485
  %3 = bitcast i8* %endptr to i16*, !dbg !1485
  store i16 %.sink, i16* %3, align 1, !dbg !1485
  br label %if.end78, !dbg !1486

if.end78:                                         ; preds = %if.end78.sink.split, %if.else71
  %rl_rlist = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp.0, i64 0, i32 4, !dbg !1486
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1412, metadata !DIExpression()), !dbg !1414
  %res.0130 = load %struct.residue_t*, %struct.residue_t** %rl_rlist, align 8, !dbg !1488, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0130, metadata !1412, metadata !DIExpression()), !dbg !1414
  %cond131 = icmp eq %struct.residue_t* %res.0130, null, !dbg !1489
  br i1 %cond131, label %if.then89, label %for.body, !dbg !1489

for.body:                                         ; preds = %if.end78, %for.inc
  %res.0132 = phi %struct.residue_t* [ %res.0, %for.inc ], [ %res.0130, %if.end78 ]
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0132, i64 0, i32 4, !dbg !1490
  %4 = load i8*, i8** %r_resname, align 8, !dbg !1490, !tbaa !1220
  %call80 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(1) %rname) #15, !dbg !1494
  %cmp81 = icmp eq i32 %call80, 0, !dbg !1495
  br i1 %cmp81, label %if.end92, label %lor.lhs.false, !dbg !1496

lor.lhs.false:                                    ; preds = %for.body
  %call84 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull %0) #15, !dbg !1497
  %cmp85 = icmp eq i32 %call84, 0, !dbg !1498
  br i1 %cmp85, label %if.end92, label %for.inc, !dbg !1499

for.inc:                                          ; preds = %lor.lhs.false
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0132, i64 0, i32 0, !dbg !1500
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1412, metadata !DIExpression()), !dbg !1414
  %res.0 = load %struct.residue_t*, %struct.residue_t** %r_next, align 8, !dbg !1488, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0, metadata !1412, metadata !DIExpression()), !dbg !1414
  %cond = icmp eq %struct.residue_t* %res.0, null, !dbg !1489
  br i1 %cond, label %if.then89, label %for.body, !dbg !1489, !llvm.loop !1501

if.then89:                                        ; preds = %for.inc, %if.end78
  %call90 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* noundef %rname, i8* noundef %reslib) #14, !dbg !1503
  %call91 = call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1506
  br label %cleanup, !dbg !1507

if.end92:                                         ; preds = %lor.lhs.false, %for.body
  %call93 = call %struct.residue_t* @copyresidue(%struct.residue_t* noundef nonnull %res.0132), !dbg !1508
  call void @llvm.dbg.value(metadata %struct.residue_t* %call93, metadata !1413, metadata !DIExpression()), !dbg !1414
  br label %cleanup, !dbg !1509

cleanup:                                          ; preds = %if.end92, %if.then89
  %retval.0 = phi %struct.residue_t* [ null, %if.then89 ], [ %call93, %if.end92 ], !dbg !1414
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %0) #14, !dbg !1510
  ret %struct.residue_t* %retval.0, !dbg !1510
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare dso_local i8* @strcpy(i8* noalias noundef returned writeonly, i8* noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

declare !dbg !1511 dso_local i32 @rt_errormsg_s(i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* noundef %res) local_unnamed_addr #0 !dbg !1516 {
entry:
  call void @llvm.dbg.value(metadata %struct.residue_t* %res, metadata !1520, metadata !DIExpression()), !dbg !1532
  %call = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 noundef 128) #14, !dbg !1533
  %0 = bitcast i8* %call to %struct.residue_t*, !dbg !1535
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !1526, metadata !DIExpression()), !dbg !1532
  %cmp = icmp eq i8* %call, null, !dbg !1536
  br i1 %cmp, label %if.then, label %if.end, !dbg !1537

if.then:                                          ; preds = %entry
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1538
  %1 = load i8*, i8** %r_resname, align 8, !dbg !1538, !tbaa !1220
  %call1 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* noundef %1) #14, !dbg !1540
  %call2 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1541
  br label %cleanup, !dbg !1542

if.end:                                           ; preds = %entry
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 15, !dbg !1543
  %2 = load i32, i32* %r_natoms, align 8, !dbg !1543, !tbaa !1247
  %conv = sext i32 %2 to i64, !dbg !1545
  %mul = mul nsw i64 %conv, 176, !dbg !1546
  %call3 = tail call noalias i8* @malloc(i64 noundef %mul) #14, !dbg !1547
  %3 = bitcast i8* %call3 to %struct.atom_t*, !dbg !1548
  call void @llvm.dbg.value(metadata %struct.atom_t* %3, metadata !1527, metadata !DIExpression()), !dbg !1532
  %cmp4 = icmp eq i8* %call3, null, !dbg !1549
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !1550

if.then6:                                         ; preds = %if.end
  %r_resname7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1551
  %4 = load i8*, i8** %r_resname7, align 8, !dbg !1551, !tbaa !1220
  %call8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* noundef %4) #14, !dbg !1553
  %call9 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1554
  br label %cleanup, !dbg !1555

if.end10:                                         ; preds = %if.end
  %mul13 = shl nsw i64 %conv, 2, !dbg !1556
  %call14 = tail call noalias i8* @malloc(i64 noundef %mul13) #14, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %call14, metadata !1525, metadata !DIExpression()), !dbg !1532
  %cmp15 = icmp eq i8* %call14, null, !dbg !1559
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !1560

if.then17:                                        ; preds = %if.end10
  %r_resname18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1561
  %5 = load i8*, i8** %r_resname18, align 8, !dbg !1561, !tbaa !1220
  %call19 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* noundef %5) #14, !dbg !1563
  %call20 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1564
  br label %cleanup, !dbg !1565

if.end21:                                         ; preds = %if.end10
  %r_nintbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 11, !dbg !1566
  %6 = load i32, i32* %r_nintbonds, align 8, !dbg !1566, !tbaa !1568
  %cmp22 = icmp sgt i32 %6, 0, !dbg !1569
  br i1 %cmp22, label %if.then24, label %if.end36, !dbg !1570

if.then24:                                        ; preds = %if.end21
  %conv26506 = zext i32 %6 to i64, !dbg !1571
  %mul27 = shl nuw nsw i64 %conv26506, 3, !dbg !1574
  %call28 = tail call noalias i8* @malloc(i64 noundef %mul27) #14, !dbg !1575
  %7 = bitcast i8* %call28 to [2 x i32]*, !dbg !1576
  call void @llvm.dbg.value(metadata [2 x i32]* %7, metadata !1530, metadata !DIExpression()), !dbg !1532
  %cmp29 = icmp eq i8* %call28, null, !dbg !1577
  br i1 %cmp29, label %if.then31, label %if.end36, !dbg !1578

if.then31:                                        ; preds = %if.then24
  %r_resname32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1579
  %8 = load i8*, i8** %r_resname32, align 8, !dbg !1579, !tbaa !1220
  %call33 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* noundef %8) #14, !dbg !1581
  %call34 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1582
  br label %cleanup, !dbg !1583

if.end36:                                         ; preds = %if.end21, %if.then24
  %bp.0 = phi [2 x i32]* [ %7, %if.then24 ], [ null, %if.end21 ], !dbg !1584
  call void @llvm.dbg.value(metadata [2 x i32]* %bp.0, metadata !1530, metadata !DIExpression()), !dbg !1532
  %r_nchiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 13, !dbg !1585
  %9 = load i32, i32* %r_nchiral, align 8, !dbg !1585, !tbaa !1587
  %cmp37 = icmp sgt i32 %9, 0, !dbg !1588
  br i1 %cmp37, label %if.then39, label %if.end52, !dbg !1589

if.then39:                                        ; preds = %if.end36
  %conv41507 = zext i32 %9 to i64, !dbg !1590
  %mul42 = mul nuw nsw i64 %conv41507, 24, !dbg !1593
  %call43 = tail call noalias i8* @malloc(i64 noundef %mul42) #14, !dbg !1594
  %10 = bitcast i8* %call43 to %struct.chiral_t*, !dbg !1595
  call void @llvm.dbg.value(metadata %struct.chiral_t* %10, metadata !1531, metadata !DIExpression()), !dbg !1532
  %cmp44 = icmp eq i8* %call43, null, !dbg !1596
  br i1 %cmp44, label %if.then46, label %if.end52, !dbg !1597

if.then46:                                        ; preds = %if.then39
  %r_resname47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1598
  %11 = load i8*, i8** %r_resname47, align 8, !dbg !1598, !tbaa !1220
  %call48 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* noundef %11) #14, !dbg !1600
  %call49 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1601
  br label %cleanup, !dbg !1602

if.end52:                                         ; preds = %if.end36, %if.then39
  %cp.0 = phi %struct.chiral_t* [ %10, %if.then39 ], [ null, %if.end36 ], !dbg !1603
  call void @llvm.dbg.value(metadata %struct.chiral_t* %cp.0, metadata !1531, metadata !DIExpression()), !dbg !1532
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 0, !dbg !1604
  store %struct.residue_t* null, %struct.residue_t** %r_next, align 8, !dbg !1605, !tbaa !1606
  %r_resname53 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 4, !dbg !1607
  %12 = load i8*, i8** %r_resname53, align 8, !dbg !1607, !tbaa !1220
  %call54 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #15, !dbg !1608
  %add = add i64 %call54, 1, !dbg !1609
  %call55 = tail call noalias i8* @malloc(i64 noundef %add) #14, !dbg !1610
  call void @llvm.dbg.value(metadata i8* %call55, metadata !1529, metadata !DIExpression()), !dbg !1532
  %cmp56 = icmp eq i8* %call55, null, !dbg !1611
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !1613

if.then58:                                        ; preds = %if.end52
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1614, !tbaa !296
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %13) #16, !dbg !1616
  tail call void @exit(i32 noundef 1) #17, !dbg !1617
  unreachable, !dbg !1617

if.end60:                                         ; preds = %if.end52
  %call62 = tail call i8* @strcpy(i8* noundef nonnull %call55, i8* noundef nonnull dereferenceable(1) %12) #14, !dbg !1618
  %r_resname63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1619
  store i8* %call55, i8** %r_resname63, align 8, !dbg !1620, !tbaa !1220
  %r_resid = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 5, !dbg !1621
  %15 = load i8*, i8** %r_resid, align 8, !dbg !1621, !tbaa !1622
  %call64 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %15) #15, !dbg !1623
  %add65 = add i64 %call64, 1, !dbg !1624
  %call66 = tail call noalias i8* @malloc(i64 noundef %add65) #14, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %call66, metadata !1529, metadata !DIExpression()), !dbg !1532
  %cmp67 = icmp eq i8* %call66, null, !dbg !1626
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !1628

if.then69:                                        ; preds = %if.end60
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1629, !tbaa !296
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %16) #16, !dbg !1631
  tail call void @exit(i32 noundef 1) #17, !dbg !1632
  unreachable, !dbg !1632

if.end71:                                         ; preds = %if.end60
  %call73 = tail call i8* @strcpy(i8* noundef nonnull %call66, i8* noundef nonnull dereferenceable(1) %15) #14, !dbg !1633
  %r_resid74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !1634
  store i8* %call66, i8** %r_resid74, align 8, !dbg !1635, !tbaa !1622
  %r_num = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 1, !dbg !1636
  %18 = load i32, i32* %r_num, align 8, !dbg !1636, !tbaa !1637
  %r_num75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 1, !dbg !1638
  store i32 %18, i32* %r_num75, align 8, !dbg !1639, !tbaa !1637
  %r_tresnum = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 2, !dbg !1640
  store i32 0, i32* %r_tresnum, align 4, !dbg !1641, !tbaa !1642
  %r_resnum = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 3, !dbg !1643
  store i32 0, i32* %r_resnum, align 8, !dbg !1644, !tbaa !1645
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 6, !dbg !1646
  %19 = load i32, i32* %r_attr, align 8, !dbg !1646, !tbaa !1647
  %r_attr76 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 6, !dbg !1648
  store i32 %19, i32* %r_attr76, align 8, !dbg !1649, !tbaa !1647
  %r_strand = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 9, !dbg !1650
  store %struct.strand_t* null, %struct.strand_t** %r_strand, align 8, !dbg !1651, !tbaa !1652
  %call77 = tail call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* noundef nonnull %res) #14, !dbg !1653
  %r_extbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 10, !dbg !1654
  store %struct.extbond_t* %call77, %struct.extbond_t** %r_extbonds, align 8, !dbg !1655, !tbaa !1656
  %20 = load i32, i32* %r_nintbonds, align 8, !dbg !1657, !tbaa !1568
  %r_nintbonds79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !1658
  store i32 %20, i32* %r_nintbonds79, align 8, !dbg !1659, !tbaa !1568
  %r_intbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !1660
  store [2 x i32]* %bp.0, [2 x i32]** %r_intbonds, align 8, !dbg !1661, !tbaa !1662
  call void @llvm.dbg.value(metadata i32 0, metadata !1522, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 0, metadata !1522, metadata !DIExpression()), !dbg !1532
  %cmp81509 = icmp sgt i32 %20, 0, !dbg !1663
  br i1 %cmp81509, label %for.body.lr.ph, label %for.end, !dbg !1666

for.body.lr.ph:                                   ; preds = %if.end71
  %r_intbonds83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 12
  %21 = load [2 x i32]*, [2 x i32]** %r_intbonds83, align 8, !tbaa !1662
  %wide.trip.count = zext i32 %20 to i64, !dbg !1663
  %min.iters.check = icmp ult i32 %20, 4, !dbg !1666
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck, !dbg !1666

vector.memcheck:                                  ; preds = %for.body.lr.ph
  %scevgep = getelementptr [2 x i32], [2 x i32]* %bp.0, i64 %wide.trip.count, i64 0, !dbg !1666
  %scevgep558 = getelementptr [2 x i32], [2 x i32]* %21, i64 %wide.trip.count, i64 0, !dbg !1666
  %22 = bitcast i32* %scevgep558 to [2 x i32]*, !dbg !1666
  %bound0 = icmp ult [2 x i32]* %bp.0, %22, !dbg !1666
  %23 = bitcast i32* %scevgep to [2 x i32]*, !dbg !1666
  %bound1 = icmp ult [2 x i32]* %21, %23, !dbg !1666
  %found.conflict = and i1 %bound0, %bound1, !dbg !1666
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph, !dbg !1666

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292, !dbg !1666
  %24 = add nsw i64 %n.vec, -4, !dbg !1666
  %25 = lshr exact i64 %24, 2, !dbg !1666
  %26 = add nuw nsw i64 %25, 1, !dbg !1666
  %xtraiter = and i64 %26, 3, !dbg !1666
  %27 = icmp ult i64 %24, 12, !dbg !1666
  br i1 %27, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !1666

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %26, 9223372036854775804, !dbg !1666
  br label %vector.body, !dbg !1666

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ], !dbg !1667
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %28 = or i64 %index, 2, !dbg !1667
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %index, i64 0, !dbg !1667
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %28, i64 0, !dbg !1667
  %31 = bitcast i32* %29 to <4 x i32>*, !dbg !1667
  %32 = bitcast i32* %30 to <4 x i32>*, !dbg !1667
  %wide.vec = load <4 x i32>, <4 x i32>* %31, align 4, !dbg !1668, !tbaa !794
  %wide.vec560 = load <4 x i32>, <4 x i32>* %32, align 4, !dbg !1668, !tbaa !794
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %index, i64 0, !dbg !1667
  %34 = bitcast i32* %33 to <4 x i32>*, !dbg !1667
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %28, i64 0, !dbg !1667
  %36 = bitcast i32* %35 to <4 x i32>*, !dbg !1667
  store <4 x i32> %wide.vec, <4 x i32>* %34, align 4, !dbg !1670, !tbaa !794
  store <4 x i32> %wide.vec560, <4 x i32>* %36, align 4, !dbg !1670, !tbaa !794
  %index.next = or i64 %index, 4, !dbg !1667
  %37 = or i64 %index, 6, !dbg !1667
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %index.next, i64 0, !dbg !1667
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %37, i64 0, !dbg !1667
  %40 = bitcast i32* %38 to <4 x i32>*, !dbg !1667
  %41 = bitcast i32* %39 to <4 x i32>*, !dbg !1667
  %wide.vec.1 = load <4 x i32>, <4 x i32>* %40, align 4, !dbg !1668, !tbaa !794
  %wide.vec560.1 = load <4 x i32>, <4 x i32>* %41, align 4, !dbg !1668, !tbaa !794
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %index.next, i64 0, !dbg !1667
  %43 = bitcast i32* %42 to <4 x i32>*, !dbg !1667
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %37, i64 0, !dbg !1667
  %45 = bitcast i32* %44 to <4 x i32>*, !dbg !1667
  store <4 x i32> %wide.vec.1, <4 x i32>* %43, align 4, !dbg !1670, !tbaa !794
  store <4 x i32> %wide.vec560.1, <4 x i32>* %45, align 4, !dbg !1670, !tbaa !794
  %index.next.1 = or i64 %index, 8, !dbg !1667
  %46 = or i64 %index, 10, !dbg !1667
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %index.next.1, i64 0, !dbg !1667
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %46, i64 0, !dbg !1667
  %49 = bitcast i32* %47 to <4 x i32>*, !dbg !1667
  %50 = bitcast i32* %48 to <4 x i32>*, !dbg !1667
  %wide.vec.2 = load <4 x i32>, <4 x i32>* %49, align 4, !dbg !1668, !tbaa !794
  %wide.vec560.2 = load <4 x i32>, <4 x i32>* %50, align 4, !dbg !1668, !tbaa !794
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %index.next.1, i64 0, !dbg !1667
  %52 = bitcast i32* %51 to <4 x i32>*, !dbg !1667
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %46, i64 0, !dbg !1667
  %54 = bitcast i32* %53 to <4 x i32>*, !dbg !1667
  store <4 x i32> %wide.vec.2, <4 x i32>* %52, align 4, !dbg !1670, !tbaa !794
  store <4 x i32> %wide.vec560.2, <4 x i32>* %54, align 4, !dbg !1670, !tbaa !794
  %index.next.2 = or i64 %index, 12, !dbg !1667
  %55 = or i64 %index, 14, !dbg !1667
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %index.next.2, i64 0, !dbg !1667
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %55, i64 0, !dbg !1667
  %58 = bitcast i32* %56 to <4 x i32>*, !dbg !1667
  %59 = bitcast i32* %57 to <4 x i32>*, !dbg !1667
  %wide.vec.3 = load <4 x i32>, <4 x i32>* %58, align 4, !dbg !1668, !tbaa !794
  %wide.vec560.3 = load <4 x i32>, <4 x i32>* %59, align 4, !dbg !1668, !tbaa !794
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %index.next.2, i64 0, !dbg !1667
  %61 = bitcast i32* %60 to <4 x i32>*, !dbg !1667
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %55, i64 0, !dbg !1667
  %63 = bitcast i32* %62 to <4 x i32>*, !dbg !1667
  store <4 x i32> %wide.vec.3, <4 x i32>* %61, align 4, !dbg !1670, !tbaa !794
  store <4 x i32> %wide.vec560.3, <4 x i32>* %63, align 4, !dbg !1670, !tbaa !794
  %index.next.3 = add nuw i64 %index, 16, !dbg !1667
  %niter.next.3 = add nuw i64 %niter, 4, !dbg !1667
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !1667
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !dbg !1667, !llvm.loop !1671

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1667
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil, !dbg !1667

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ], !dbg !1667
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %64 = or i64 %index.epil, 2, !dbg !1667
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %index.epil, i64 0, !dbg !1667
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %64, i64 0, !dbg !1667
  %67 = bitcast i32* %65 to <4 x i32>*, !dbg !1667
  %68 = bitcast i32* %66 to <4 x i32>*, !dbg !1667
  %wide.vec.epil = load <4 x i32>, <4 x i32>* %67, align 4, !dbg !1668, !tbaa !794
  %wide.vec560.epil = load <4 x i32>, <4 x i32>* %68, align 4, !dbg !1668, !tbaa !794
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %index.epil, i64 0, !dbg !1667
  %70 = bitcast i32* %69 to <4 x i32>*, !dbg !1667
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %64, i64 0, !dbg !1667
  %72 = bitcast i32* %71 to <4 x i32>*, !dbg !1667
  store <4 x i32> %wide.vec.epil, <4 x i32>* %70, align 4, !dbg !1670, !tbaa !794
  store <4 x i32> %wide.vec560.epil, <4 x i32>* %72, align 4, !dbg !1670, !tbaa !794
  %index.next.epil = add nuw i64 %index.epil, 4, !dbg !1667
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !1667
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !1667
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !dbg !1667, !llvm.loop !1673

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count, !dbg !1666
  br i1 %cmp.n, label %for.end, label %for.body.preheader, !dbg !1666

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %73 = xor i64 %indvars.iv.ph, -1, !dbg !1666
  %xtraiter601 = and i64 %wide.trip.count, 1, !dbg !1666
  %lcmp.mod602.not = icmp eq i64 %xtraiter601, 0, !dbg !1666
  br i1 %lcmp.mod602.not, label %for.body.prol.loopexit, label %for.body.prol, !dbg !1666

for.body.prol:                                    ; preds = %for.body.preheader
  call void @llvm.dbg.value(metadata i64 undef, metadata !1522, metadata !DIExpression()), !dbg !1532
  %arrayidx84.prol = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %indvars.iv.ph, i64 0, !dbg !1668
  %74 = load i32, i32* %arrayidx84.prol, align 4, !dbg !1668, !tbaa !794
  %arrayidx88.prol = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %indvars.iv.ph, i64 0, !dbg !1675
  store i32 %74, i32* %arrayidx88.prol, align 4, !dbg !1676, !tbaa !794
  %arrayidx92.prol = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %indvars.iv.ph, i64 1, !dbg !1677
  %75 = load i32, i32* %arrayidx92.prol, align 4, !dbg !1677, !tbaa !794
  %arrayidx96.prol = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %indvars.iv.ph, i64 1, !dbg !1678
  store i32 %75, i32* %arrayidx96.prol, align 4, !dbg !1670, !tbaa !794
  %indvars.iv.next.prol = or i64 %indvars.iv.ph, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.prol, metadata !1522, metadata !DIExpression()), !dbg !1532
  br label %for.body.prol.loopexit, !dbg !1666

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %76 = sub nsw i64 0, %wide.trip.count, !dbg !1666
  %77 = icmp eq i64 %73, %76, !dbg !1666
  br i1 %77, label %for.end, label %for.body, !dbg !1666

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1522, metadata !DIExpression()), !dbg !1532
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %indvars.iv, i64 0, !dbg !1668
  %78 = load i32, i32* %arrayidx84, align 4, !dbg !1668, !tbaa !794
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %indvars.iv, i64 0, !dbg !1675
  store i32 %78, i32* %arrayidx88, align 4, !dbg !1676, !tbaa !794
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %indvars.iv, i64 1, !dbg !1677
  %79 = load i32, i32* %arrayidx92, align 4, !dbg !1677, !tbaa !794
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %indvars.iv, i64 1, !dbg !1678
  store i32 %79, i32* %arrayidx96, align 4, !dbg !1670, !tbaa !794
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1522, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1522, metadata !DIExpression()), !dbg !1532
  %arrayidx84.1 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %indvars.iv.next, i64 0, !dbg !1668
  %80 = load i32, i32* %arrayidx84.1, align 4, !dbg !1668, !tbaa !794
  %arrayidx88.1 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %indvars.iv.next, i64 0, !dbg !1675
  store i32 %80, i32* %arrayidx88.1, align 4, !dbg !1676, !tbaa !794
  %arrayidx92.1 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %indvars.iv.next, i64 1, !dbg !1677
  %81 = load i32, i32* %arrayidx92.1, align 4, !dbg !1677, !tbaa !794
  %arrayidx96.1 = getelementptr inbounds [2 x i32], [2 x i32]* %bp.0, i64 %indvars.iv.next, i64 1, !dbg !1678
  store i32 %81, i32* %arrayidx96.1, align 4, !dbg !1670, !tbaa !794
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !1522, metadata !DIExpression()), !dbg !1532
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count, !dbg !1663
  br i1 %exitcond.not.1, label %for.end, label %for.body, !dbg !1666, !llvm.loop !1679

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %if.end71
  %82 = load i32, i32* %r_nchiral, align 8, !dbg !1680, !tbaa !1587
  %r_nchiral98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !1681
  store i32 %82, i32* %r_nchiral98, align 8, !dbg !1682, !tbaa !1587
  %r_chiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !1683
  store %struct.chiral_t* %cp.0, %struct.chiral_t** %r_chiral, align 8, !dbg !1684, !tbaa !1685
  call void @llvm.dbg.value(metadata %struct.chiral_t* %cp.0, metadata !1531, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 0, metadata !1523, metadata !DIExpression()), !dbg !1532
  %cmp102512 = icmp sgt i32 %82, 0, !dbg !1686
  br i1 %cmp102512, label %for.cond105.preheader.lr.ph, label %for.end126, !dbg !1689

for.cond105.preheader.lr.ph:                      ; preds = %for.end
  %r_chiral109 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 14
  %83 = load %struct.chiral_t*, %struct.chiral_t** %r_chiral109, align 8, !tbaa !1685
  %wide.trip.count533 = zext i32 %82 to i64, !dbg !1686
  br label %for.cond105.preheader, !dbg !1689

for.cond105.preheader:                            ; preds = %for.cond105.preheader.lr.ph, %for.cond105.preheader
  %indvars.iv530 = phi i64 [ 0, %for.cond105.preheader.lr.ph ], [ %indvars.iv.next531, %for.cond105.preheader ]
  %cp.1514 = phi %struct.chiral_t* [ %cp.0, %for.cond105.preheader.lr.ph ], [ %incdec.ptr, %for.cond105.preheader ]
  call void @llvm.dbg.value(metadata %struct.chiral_t* %cp.1514, metadata !1531, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %indvars.iv530, metadata !1523, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 0, metadata !1521, metadata !DIExpression()), !dbg !1532
  %arrayidx113 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %83, i64 %indvars.iv530, i32 0, i64 0, !dbg !1690
  %84 = load i32, i32* %arrayidx113, align 4, !dbg !1690, !tbaa !794
  %arrayidx116 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.1514, i64 0, i32 0, i64 0, !dbg !1694
  store i32 %84, i32* %arrayidx116, align 4, !dbg !1695, !tbaa !794
  call void @llvm.dbg.value(metadata i64 1, metadata !1521, metadata !DIExpression()), !dbg !1532
  %arrayidx113.1 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %83, i64 %indvars.iv530, i32 0, i64 1, !dbg !1690
  %85 = load i32, i32* %arrayidx113.1, align 4, !dbg !1690, !tbaa !794
  %arrayidx116.1 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.1514, i64 0, i32 0, i64 1, !dbg !1694
  store i32 %85, i32* %arrayidx116.1, align 4, !dbg !1695, !tbaa !794
  call void @llvm.dbg.value(metadata i64 2, metadata !1521, metadata !DIExpression()), !dbg !1532
  %arrayidx113.2 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %83, i64 %indvars.iv530, i32 0, i64 2, !dbg !1690
  %86 = load i32, i32* %arrayidx113.2, align 4, !dbg !1690, !tbaa !794
  %arrayidx116.2 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.1514, i64 0, i32 0, i64 2, !dbg !1694
  store i32 %86, i32* %arrayidx116.2, align 4, !dbg !1695, !tbaa !794
  call void @llvm.dbg.value(metadata i64 3, metadata !1521, metadata !DIExpression()), !dbg !1532
  %arrayidx113.3 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %83, i64 %indvars.iv530, i32 0, i64 3, !dbg !1690
  %87 = load i32, i32* %arrayidx113.3, align 4, !dbg !1690, !tbaa !794
  %arrayidx116.3 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.1514, i64 0, i32 0, i64 3, !dbg !1694
  store i32 %87, i32* %arrayidx116.3, align 4, !dbg !1695, !tbaa !794
  call void @llvm.dbg.value(metadata i64 4, metadata !1521, metadata !DIExpression()), !dbg !1532
  %c_dist = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %83, i64 %indvars.iv530, i32 1, !dbg !1696
  %88 = load double, double* %c_dist, align 8, !dbg !1696, !tbaa !1332
  %c_dist123 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.1514, i64 0, i32 1, !dbg !1697
  store double %88, double* %c_dist123, align 8, !dbg !1698, !tbaa !1332
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next531, metadata !1523, metadata !DIExpression()), !dbg !1532
  %incdec.ptr = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.1514, i64 1, !dbg !1700
  call void @llvm.dbg.value(metadata %struct.chiral_t* %incdec.ptr, metadata !1531, metadata !DIExpression()), !dbg !1532
  %exitcond534.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count533, !dbg !1686
  br i1 %exitcond534.not, label %for.end126, label %for.cond105.preheader, !dbg !1689, !llvm.loop !1701

for.end126:                                       ; preds = %for.cond105.preheader, %for.end
  %r_kind = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 7, !dbg !1703
  %89 = load i32, i32* %r_kind, align 4, !dbg !1703, !tbaa !1704
  %r_kind127 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 7, !dbg !1705
  store i32 %89, i32* %r_kind127, align 4, !dbg !1706, !tbaa !1704
  %r_atomkind = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 8, !dbg !1707
  %90 = load i32, i32* %r_atomkind, align 8, !dbg !1707, !tbaa !1708
  %r_atomkind128 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !1709
  store i32 %90, i32* %r_atomkind128, align 8, !dbg !1710, !tbaa !1708
  %91 = load i32, i32* %r_natoms, align 8, !dbg !1711, !tbaa !1247
  %r_natoms130 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !1712
  store i32 %91, i32* %r_natoms130, align 8, !dbg !1713, !tbaa !1247
  %r_aindex = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !1714
  %92 = bitcast i32** %r_aindex to i8**, !dbg !1715
  store i8* %call14, i8** %92, align 8, !dbg !1715, !tbaa !1716
  %r_aindex131 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 16, !dbg !1717
  %93 = load i32*, i32** %r_aindex131, align 8, !dbg !1717, !tbaa !1716
  %94 = bitcast i32* %93 to i8*, !dbg !1719
  %tobool.not = icmp eq i32* %93, null, !dbg !1719
  %95 = bitcast i8* %call14 to i32*, !dbg !1720
  call void @llvm.dbg.value(metadata i32 0, metadata !1521, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 0, metadata !1521, metadata !DIExpression()), !dbg !1532
  %cmp150517 = icmp sgt i32 %91, 0, !dbg !1721
  br i1 %tobool.not, label %for.cond148.preheader, label %for.cond133.preheader, !dbg !1720

for.cond133.preheader:                            ; preds = %for.end126
  br i1 %cmp150517, label %for.body137.lr.ph, label %if.end159.thread, !dbg !1722

for.body137.lr.ph:                                ; preds = %for.cond133.preheader
  %96 = sext i32 %91 to i64
  %min.iters.check575 = icmp ult i32 %91, 8, !dbg !1722
  br i1 %min.iters.check575, label %for.body137.preheader, label %vector.memcheck565, !dbg !1722

vector.memcheck565:                               ; preds = %for.body137.lr.ph
  %97 = shl nsw i64 %96, 2, !dbg !1722
  %scevgep566 = getelementptr i8, i8* %call14, i64 %97, !dbg !1722
  %scevgep567 = getelementptr i32, i32* %93, i64 %96, !dbg !1722
  %scevgep567568 = bitcast i32* %scevgep567 to i8*, !dbg !1722
  %bound0569 = icmp ult i8* %call14, %scevgep567568, !dbg !1722
  %bound1570 = icmp ugt i8* %scevgep566, %94, !dbg !1722
  %found.conflict571 = and i1 %bound0569, %bound1570, !dbg !1722
  br i1 %found.conflict571, label %for.body137.preheader, label %vector.ph576, !dbg !1722

vector.ph576:                                     ; preds = %vector.memcheck565
  %n.vec578 = and i64 %96, -8, !dbg !1722
  %98 = add nsw i64 %n.vec578, -8, !dbg !1722
  %99 = lshr exact i64 %98, 3, !dbg !1722
  %100 = add nuw nsw i64 %99, 1, !dbg !1722
  %xtraiter603 = and i64 %100, 3, !dbg !1722
  %101 = icmp ult i64 %98, 24, !dbg !1722
  br i1 %101, label %middle.block572.unr-lcssa, label %vector.ph576.new, !dbg !1722

vector.ph576.new:                                 ; preds = %vector.ph576
  %unroll_iter606 = and i64 %100, 4611686018427387900, !dbg !1722
  br label %vector.body574, !dbg !1722

vector.body574:                                   ; preds = %vector.body574, %vector.ph576.new
  %index581 = phi i64 [ 0, %vector.ph576.new ], [ %index.next583.3, %vector.body574 ], !dbg !1725
  %niter607 = phi i64 [ 0, %vector.ph576.new ], [ %niter607.next.3, %vector.body574 ]
  %102 = getelementptr inbounds i32, i32* %93, i64 %index581, !dbg !1725
  %103 = bitcast i32* %102 to <4 x i32>*, !dbg !1727
  %wide.load = load <4 x i32>, <4 x i32>* %103, align 4, !dbg !1727, !tbaa !794, !alias.scope !1728
  %104 = getelementptr inbounds i32, i32* %102, i64 4, !dbg !1727
  %105 = bitcast i32* %104 to <4 x i32>*, !dbg !1727
  %wide.load582 = load <4 x i32>, <4 x i32>* %105, align 4, !dbg !1727, !tbaa !794, !alias.scope !1728
  %106 = getelementptr inbounds i32, i32* %95, i64 %index581, !dbg !1725
  %107 = bitcast i32* %106 to <4 x i32>*, !dbg !1731
  store <4 x i32> %wide.load, <4 x i32>* %107, align 4, !dbg !1731, !tbaa !794, !alias.scope !1732, !noalias !1728
  %108 = getelementptr inbounds i32, i32* %106, i64 4, !dbg !1731
  %109 = bitcast i32* %108 to <4 x i32>*, !dbg !1731
  store <4 x i32> %wide.load582, <4 x i32>* %109, align 4, !dbg !1731, !tbaa !794, !alias.scope !1732, !noalias !1728
  %index.next583 = or i64 %index581, 8, !dbg !1725
  %110 = getelementptr inbounds i32, i32* %93, i64 %index.next583, !dbg !1725
  %111 = bitcast i32* %110 to <4 x i32>*, !dbg !1727
  %wide.load.1 = load <4 x i32>, <4 x i32>* %111, align 4, !dbg !1727, !tbaa !794, !alias.scope !1728
  %112 = getelementptr inbounds i32, i32* %110, i64 4, !dbg !1727
  %113 = bitcast i32* %112 to <4 x i32>*, !dbg !1727
  %wide.load582.1 = load <4 x i32>, <4 x i32>* %113, align 4, !dbg !1727, !tbaa !794, !alias.scope !1728
  %114 = getelementptr inbounds i32, i32* %95, i64 %index.next583, !dbg !1725
  %115 = bitcast i32* %114 to <4 x i32>*, !dbg !1731
  store <4 x i32> %wide.load.1, <4 x i32>* %115, align 4, !dbg !1731, !tbaa !794, !alias.scope !1732, !noalias !1728
  %116 = getelementptr inbounds i32, i32* %114, i64 4, !dbg !1731
  %117 = bitcast i32* %116 to <4 x i32>*, !dbg !1731
  store <4 x i32> %wide.load582.1, <4 x i32>* %117, align 4, !dbg !1731, !tbaa !794, !alias.scope !1732, !noalias !1728
  %index.next583.1 = or i64 %index581, 16, !dbg !1725
  %118 = getelementptr inbounds i32, i32* %93, i64 %index.next583.1, !dbg !1725
  %119 = bitcast i32* %118 to <4 x i32>*, !dbg !1727
  %wide.load.2 = load <4 x i32>, <4 x i32>* %119, align 4, !dbg !1727, !tbaa !794, !alias.scope !1728
  %120 = getelementptr inbounds i32, i32* %118, i64 4, !dbg !1727
  %121 = bitcast i32* %120 to <4 x i32>*, !dbg !1727
  %wide.load582.2 = load <4 x i32>, <4 x i32>* %121, align 4, !dbg !1727, !tbaa !794, !alias.scope !1728
  %122 = getelementptr inbounds i32, i32* %95, i64 %index.next583.1, !dbg !1725
  %123 = bitcast i32* %122 to <4 x i32>*, !dbg !1731
  store <4 x i32> %wide.load.2, <4 x i32>* %123, align 4, !dbg !1731, !tbaa !794, !alias.scope !1732, !noalias !1728
  %124 = getelementptr inbounds i32, i32* %122, i64 4, !dbg !1731
  %125 = bitcast i32* %124 to <4 x i32>*, !dbg !1731
  store <4 x i32> %wide.load582.2, <4 x i32>* %125, align 4, !dbg !1731, !tbaa !794, !alias.scope !1732, !noalias !1728
  %index.next583.2 = or i64 %index581, 24, !dbg !1725
  %126 = getelementptr inbounds i32, i32* %93, i64 %index.next583.2, !dbg !1725
  %127 = bitcast i32* %126 to <4 x i32>*, !dbg !1727
  %wide.load.3 = load <4 x i32>, <4 x i32>* %127, align 4, !dbg !1727, !tbaa !794, !alias.scope !1728
  %128 = getelementptr inbounds i32, i32* %126, i64 4, !dbg !1727
  %129 = bitcast i32* %128 to <4 x i32>*, !dbg !1727
  %wide.load582.3 = load <4 x i32>, <4 x i32>* %129, align 4, !dbg !1727, !tbaa !794, !alias.scope !1728
  %130 = getelementptr inbounds i32, i32* %95, i64 %index.next583.2, !dbg !1725
  %131 = bitcast i32* %130 to <4 x i32>*, !dbg !1731
  store <4 x i32> %wide.load.3, <4 x i32>* %131, align 4, !dbg !1731, !tbaa !794, !alias.scope !1732, !noalias !1728
  %132 = getelementptr inbounds i32, i32* %130, i64 4, !dbg !1731
  %133 = bitcast i32* %132 to <4 x i32>*, !dbg !1731
  store <4 x i32> %wide.load582.3, <4 x i32>* %133, align 4, !dbg !1731, !tbaa !794, !alias.scope !1732, !noalias !1728
  %index.next583.3 = add nuw i64 %index581, 32, !dbg !1725
  %niter607.next.3 = add i64 %niter607, 4, !dbg !1725
  %niter607.ncmp.3 = icmp eq i64 %niter607.next.3, %unroll_iter606, !dbg !1725
  br i1 %niter607.ncmp.3, label %middle.block572.unr-lcssa, label %vector.body574, !dbg !1725, !llvm.loop !1734

middle.block572.unr-lcssa:                        ; preds = %vector.body574, %vector.ph576
  %index581.unr = phi i64 [ 0, %vector.ph576 ], [ %index.next583.3, %vector.body574 ]
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0, !dbg !1725
  br i1 %lcmp.mod605.not, label %middle.block572, label %vector.body574.epil, !dbg !1725

vector.body574.epil:                              ; preds = %middle.block572.unr-lcssa, %vector.body574.epil
  %index581.epil = phi i64 [ %index.next583.epil, %vector.body574.epil ], [ %index581.unr, %middle.block572.unr-lcssa ], !dbg !1725
  %epil.iter604 = phi i64 [ %epil.iter604.next, %vector.body574.epil ], [ 0, %middle.block572.unr-lcssa ]
  %134 = getelementptr inbounds i32, i32* %93, i64 %index581.epil, !dbg !1725
  %135 = bitcast i32* %134 to <4 x i32>*, !dbg !1727
  %wide.load.epil = load <4 x i32>, <4 x i32>* %135, align 4, !dbg !1727, !tbaa !794, !alias.scope !1728
  %136 = getelementptr inbounds i32, i32* %134, i64 4, !dbg !1727
  %137 = bitcast i32* %136 to <4 x i32>*, !dbg !1727
  %wide.load582.epil = load <4 x i32>, <4 x i32>* %137, align 4, !dbg !1727, !tbaa !794, !alias.scope !1728
  %138 = getelementptr inbounds i32, i32* %95, i64 %index581.epil, !dbg !1725
  %139 = bitcast i32* %138 to <4 x i32>*, !dbg !1731
  store <4 x i32> %wide.load.epil, <4 x i32>* %139, align 4, !dbg !1731, !tbaa !794, !alias.scope !1732, !noalias !1728
  %140 = getelementptr inbounds i32, i32* %138, i64 4, !dbg !1731
  %141 = bitcast i32* %140 to <4 x i32>*, !dbg !1731
  store <4 x i32> %wide.load582.epil, <4 x i32>* %141, align 4, !dbg !1731, !tbaa !794, !alias.scope !1732, !noalias !1728
  %index.next583.epil = add nuw i64 %index581.epil, 8, !dbg !1725
  %epil.iter604.next = add i64 %epil.iter604, 1, !dbg !1725
  %epil.iter604.cmp.not = icmp eq i64 %epil.iter604.next, %xtraiter603, !dbg !1725
  br i1 %epil.iter604.cmp.not, label %middle.block572, label %vector.body574.epil, !dbg !1725, !llvm.loop !1736

middle.block572:                                  ; preds = %vector.body574.epil, %middle.block572.unr-lcssa
  %cmp.n580 = icmp eq i64 %n.vec578, %96, !dbg !1722
  br i1 %cmp.n580, label %if.end159, label %for.body137.preheader, !dbg !1722

for.body137.preheader:                            ; preds = %vector.memcheck565, %for.body137.lr.ph, %middle.block572
  %indvars.iv535.ph = phi i64 [ 0, %vector.memcheck565 ], [ 0, %for.body137.lr.ph ], [ %n.vec578, %middle.block572 ]
  br label %for.body137, !dbg !1722

for.cond148.preheader:                            ; preds = %for.end126
  br i1 %cmp150517, label %for.body152.lr.ph, label %if.end159.thread, !dbg !1737

for.body152.lr.ph:                                ; preds = %for.cond148.preheader
  %142 = sext i32 %91 to i64
  %min.iters.check587 = icmp ult i32 %91, 8, !dbg !1737
  br i1 %min.iters.check587, label %for.body152.preheader, label %vector.ph588, !dbg !1737

vector.ph588:                                     ; preds = %for.body152.lr.ph
  %n.vec590 = and i64 %142, -8, !dbg !1737
  %143 = add nsw i64 %n.vec590, -8, !dbg !1737
  %144 = lshr exact i64 %143, 3, !dbg !1737
  %145 = add nuw nsw i64 %144, 1, !dbg !1737
  %xtraiter608 = and i64 %145, 3, !dbg !1737
  %146 = icmp ult i64 %143, 24, !dbg !1737
  br i1 %146, label %middle.block584.unr-lcssa, label %vector.ph588.new, !dbg !1737

vector.ph588.new:                                 ; preds = %vector.ph588
  %unroll_iter611 = and i64 %145, 4611686018427387900, !dbg !1737
  br label %vector.body586, !dbg !1737

vector.body586:                                   ; preds = %vector.body586, %vector.ph588.new
  %index593 = phi i64 [ 0, %vector.ph588.new ], [ %index.next599.3, %vector.body586 ], !dbg !1740
  %vec.ind595 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph588.new ], [ %vec.ind.next598.3, %vector.body586 ], !dbg !1742
  %niter612 = phi i64 [ 0, %vector.ph588.new ], [ %niter612.next.3, %vector.body586 ]
  %step.add596 = add <4 x i32> %vec.ind595, <i32 4, i32 4, i32 4, i32 4>, !dbg !1742
  %147 = getelementptr inbounds i32, i32* %95, i64 %index593, !dbg !1740
  %148 = bitcast i32* %147 to <4 x i32>*, !dbg !1742
  store <4 x i32> %vec.ind595, <4 x i32>* %148, align 4, !dbg !1742, !tbaa !794
  %149 = getelementptr inbounds i32, i32* %147, i64 4, !dbg !1742
  %150 = bitcast i32* %149 to <4 x i32>*, !dbg !1742
  store <4 x i32> %step.add596, <4 x i32>* %150, align 4, !dbg !1742, !tbaa !794
  %index.next599 = or i64 %index593, 8, !dbg !1740
  %vec.ind.next598 = add <4 x i32> %vec.ind595, <i32 8, i32 8, i32 8, i32 8>, !dbg !1742
  %step.add596.1 = add <4 x i32> %vec.ind595, <i32 12, i32 12, i32 12, i32 12>, !dbg !1742
  %151 = getelementptr inbounds i32, i32* %95, i64 %index.next599, !dbg !1740
  %152 = bitcast i32* %151 to <4 x i32>*, !dbg !1742
  store <4 x i32> %vec.ind.next598, <4 x i32>* %152, align 4, !dbg !1742, !tbaa !794
  %153 = getelementptr inbounds i32, i32* %151, i64 4, !dbg !1742
  %154 = bitcast i32* %153 to <4 x i32>*, !dbg !1742
  store <4 x i32> %step.add596.1, <4 x i32>* %154, align 4, !dbg !1742, !tbaa !794
  %index.next599.1 = or i64 %index593, 16, !dbg !1740
  %vec.ind.next598.1 = add <4 x i32> %vec.ind595, <i32 16, i32 16, i32 16, i32 16>, !dbg !1742
  %step.add596.2 = add <4 x i32> %vec.ind595, <i32 20, i32 20, i32 20, i32 20>, !dbg !1742
  %155 = getelementptr inbounds i32, i32* %95, i64 %index.next599.1, !dbg !1740
  %156 = bitcast i32* %155 to <4 x i32>*, !dbg !1742
  store <4 x i32> %vec.ind.next598.1, <4 x i32>* %156, align 4, !dbg !1742, !tbaa !794
  %157 = getelementptr inbounds i32, i32* %155, i64 4, !dbg !1742
  %158 = bitcast i32* %157 to <4 x i32>*, !dbg !1742
  store <4 x i32> %step.add596.2, <4 x i32>* %158, align 4, !dbg !1742, !tbaa !794
  %index.next599.2 = or i64 %index593, 24, !dbg !1740
  %vec.ind.next598.2 = add <4 x i32> %vec.ind595, <i32 24, i32 24, i32 24, i32 24>, !dbg !1742
  %step.add596.3 = add <4 x i32> %vec.ind595, <i32 28, i32 28, i32 28, i32 28>, !dbg !1742
  %159 = getelementptr inbounds i32, i32* %95, i64 %index.next599.2, !dbg !1740
  %160 = bitcast i32* %159 to <4 x i32>*, !dbg !1742
  store <4 x i32> %vec.ind.next598.2, <4 x i32>* %160, align 4, !dbg !1742, !tbaa !794
  %161 = getelementptr inbounds i32, i32* %159, i64 4, !dbg !1742
  %162 = bitcast i32* %161 to <4 x i32>*, !dbg !1742
  store <4 x i32> %step.add596.3, <4 x i32>* %162, align 4, !dbg !1742, !tbaa !794
  %index.next599.3 = add nuw i64 %index593, 32, !dbg !1740
  %vec.ind.next598.3 = add <4 x i32> %vec.ind595, <i32 32, i32 32, i32 32, i32 32>, !dbg !1742
  %niter612.next.3 = add i64 %niter612, 4, !dbg !1740
  %niter612.ncmp.3 = icmp eq i64 %niter612.next.3, %unroll_iter611, !dbg !1740
  br i1 %niter612.ncmp.3, label %middle.block584.unr-lcssa, label %vector.body586, !dbg !1740, !llvm.loop !1743

middle.block584.unr-lcssa:                        ; preds = %vector.body586, %vector.ph588
  %index593.unr = phi i64 [ 0, %vector.ph588 ], [ %index.next599.3, %vector.body586 ]
  %vec.ind595.unr = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph588 ], [ %vec.ind.next598.3, %vector.body586 ]
  %lcmp.mod610.not = icmp eq i64 %xtraiter608, 0, !dbg !1740
  br i1 %lcmp.mod610.not, label %middle.block584, label %vector.body586.epil, !dbg !1740

vector.body586.epil:                              ; preds = %middle.block584.unr-lcssa, %vector.body586.epil
  %index593.epil = phi i64 [ %index.next599.epil, %vector.body586.epil ], [ %index593.unr, %middle.block584.unr-lcssa ], !dbg !1740
  %vec.ind595.epil = phi <4 x i32> [ %vec.ind.next598.epil, %vector.body586.epil ], [ %vec.ind595.unr, %middle.block584.unr-lcssa ], !dbg !1742
  %epil.iter609 = phi i64 [ %epil.iter609.next, %vector.body586.epil ], [ 0, %middle.block584.unr-lcssa ]
  %step.add596.epil = add <4 x i32> %vec.ind595.epil, <i32 4, i32 4, i32 4, i32 4>, !dbg !1742
  %163 = getelementptr inbounds i32, i32* %95, i64 %index593.epil, !dbg !1740
  %164 = bitcast i32* %163 to <4 x i32>*, !dbg !1742
  store <4 x i32> %vec.ind595.epil, <4 x i32>* %164, align 4, !dbg !1742, !tbaa !794
  %165 = getelementptr inbounds i32, i32* %163, i64 4, !dbg !1742
  %166 = bitcast i32* %165 to <4 x i32>*, !dbg !1742
  store <4 x i32> %step.add596.epil, <4 x i32>* %166, align 4, !dbg !1742, !tbaa !794
  %index.next599.epil = add nuw i64 %index593.epil, 8, !dbg !1740
  %vec.ind.next598.epil = add <4 x i32> %vec.ind595.epil, <i32 8, i32 8, i32 8, i32 8>, !dbg !1742
  %epil.iter609.next = add i64 %epil.iter609, 1, !dbg !1740
  %epil.iter609.cmp.not = icmp eq i64 %epil.iter609.next, %xtraiter608, !dbg !1740
  br i1 %epil.iter609.cmp.not, label %middle.block584, label %vector.body586.epil, !dbg !1740, !llvm.loop !1745

middle.block584:                                  ; preds = %vector.body586.epil, %middle.block584.unr-lcssa
  %cmp.n592 = icmp eq i64 %n.vec590, %142, !dbg !1737
  br i1 %cmp.n592, label %if.end159, label %for.body152.preheader, !dbg !1737

for.body152.preheader:                            ; preds = %for.body152.lr.ph, %middle.block584
  %indvars.iv538.ph = phi i64 [ 0, %for.body152.lr.ph ], [ %n.vec590, %middle.block584 ]
  br label %for.body152, !dbg !1737

for.body137:                                      ; preds = %for.body137.preheader, %for.body137
  %indvars.iv535 = phi i64 [ %indvars.iv.next536, %for.body137 ], [ %indvars.iv535.ph, %for.body137.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv535, metadata !1521, metadata !DIExpression()), !dbg !1532
  %arrayidx140 = getelementptr inbounds i32, i32* %93, i64 %indvars.iv535, !dbg !1727
  %167 = load i32, i32* %arrayidx140, align 4, !dbg !1727, !tbaa !794
  %arrayidx143 = getelementptr inbounds i32, i32* %95, i64 %indvars.iv535, !dbg !1746
  store i32 %167, i32* %arrayidx143, align 4, !dbg !1731, !tbaa !794
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next536, metadata !1521, metadata !DIExpression()), !dbg !1532
  %cmp135 = icmp slt i64 %indvars.iv.next536, %96, !dbg !1747
  br i1 %cmp135, label %for.body137, label %if.end159, !dbg !1722, !llvm.loop !1748

for.body152:                                      ; preds = %for.body152.preheader, %for.body152
  %indvars.iv538 = phi i64 [ %indvars.iv.next539, %for.body152 ], [ %indvars.iv538.ph, %for.body152.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv538, metadata !1521, metadata !DIExpression()), !dbg !1532
  %arrayidx155 = getelementptr inbounds i32, i32* %95, i64 %indvars.iv538, !dbg !1749
  %168 = trunc i64 %indvars.iv538 to i32, !dbg !1742
  store i32 %168, i32* %arrayidx155, align 4, !dbg !1742, !tbaa !794
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next539, metadata !1521, metadata !DIExpression()), !dbg !1532
  %cmp150 = icmp slt i64 %indvars.iv.next539, %142, !dbg !1750
  br i1 %cmp150, label %for.body152, label %if.end159, !dbg !1737, !llvm.loop !1751

if.end159.thread:                                 ; preds = %for.cond133.preheader, %for.cond148.preheader
  %r_atoms552 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1752
  %169 = bitcast %struct.atom_t** %r_atoms552 to i8**, !dbg !1753
  store i8* %call3, i8** %169, align 8, !dbg !1753, !tbaa !1255
  call void @llvm.dbg.value(metadata i32 0, metadata !1521, metadata !DIExpression()), !dbg !1532
  br label %cleanup, !dbg !1754

if.end159:                                        ; preds = %for.body137, %for.body152, %middle.block572, %middle.block584
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1752
  %170 = bitcast %struct.atom_t** %r_atoms to i8**, !dbg !1753
  store i8* %call3, i8** %170, align 8, !dbg !1753, !tbaa !1255
  call void @llvm.dbg.value(metadata i32 0, metadata !1521, metadata !DIExpression()), !dbg !1532
  %cmp162520 = icmp sgt i32 %91, 0, !dbg !1756
  br i1 %cmp162520, label %for.body164.lr.ph, label %cleanup, !dbg !1754

for.body164.lr.ph:                                ; preds = %if.end159
  %r_atoms165 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res, i64 0, i32 17
  %171 = load %struct.atom_t*, %struct.atom_t** %r_atoms165, align 8, !tbaa !1255
  %wide.trip.count550 = zext i32 %91 to i64, !dbg !1756
  br label %for.body164, !dbg !1754

for.body164:                                      ; preds = %for.body164.lr.ph, %if.end175
  %indvars.iv547 = phi i64 [ 0, %for.body164.lr.ph ], [ %indvars.iv.next548, %if.end175 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv547, metadata !1521, metadata !DIExpression()), !dbg !1532
  %a_atomname = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 0, !dbg !1758
  %172 = load i8*, i8** %a_atomname, align 8, !dbg !1758, !tbaa !691
  %call168 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %172) #15, !dbg !1760
  %add169 = add i64 %call168, 1, !dbg !1761
  %call170 = tail call noalias i8* @malloc(i64 noundef %add169) #14, !dbg !1762
  call void @llvm.dbg.value(metadata i8* %call170, metadata !1528, metadata !DIExpression()), !dbg !1532
  %cmp171 = icmp eq i8* %call170, null, !dbg !1763
  br i1 %cmp171, label %if.then173, label %if.end175, !dbg !1765

if.then173:                                       ; preds = %for.body164
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1766, !tbaa !296
  %174 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %173) #16, !dbg !1768
  tail call void @exit(i32 noundef 1) #17, !dbg !1769
  unreachable, !dbg !1769

if.end175:                                        ; preds = %for.body164
  %call180 = tail call i8* @strcpy(i8* noundef nonnull %call170, i8* noundef nonnull dereferenceable(1) %172) #14, !dbg !1770
  %a_atomname183 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 0, !dbg !1771
  store i8* %call170, i8** %a_atomname183, align 8, !dbg !1772, !tbaa !691
  %a_atomtype = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 1, !dbg !1773
  store i8* null, i8** %a_atomtype, align 8, !dbg !1774, !tbaa !1775
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 2, !dbg !1776
  %175 = load i32, i32* %a_attr, align 8, !dbg !1776, !tbaa !1777
  %a_attr191 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 2, !dbg !1778
  store i32 %175, i32* %a_attr191, align 8, !dbg !1779, !tbaa !1777
  %a_nconnect = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 3, !dbg !1780
  %176 = load i32, i32* %a_nconnect, align 4, !dbg !1780, !tbaa !1781
  %a_nconnect197 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 3, !dbg !1782
  store i32 %176, i32* %a_nconnect197, align 4, !dbg !1783, !tbaa !1781
  call void @llvm.dbg.value(metadata i64 0, metadata !1524, metadata !DIExpression()), !dbg !1532
  %arrayidx206 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 4, i64 0, !dbg !1784
  %177 = load i32, i32* %arrayidx206, align 4, !dbg !1784, !tbaa !794
  %arrayidx211 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 4, i64 0, !dbg !1787
  store i32 %177, i32* %arrayidx211, align 4, !dbg !1788, !tbaa !794
  call void @llvm.dbg.value(metadata i64 1, metadata !1524, metadata !DIExpression()), !dbg !1532
  %arrayidx206.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 4, i64 1, !dbg !1784
  %178 = load i32, i32* %arrayidx206.1, align 4, !dbg !1784, !tbaa !794
  %arrayidx211.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 4, i64 1, !dbg !1787
  store i32 %178, i32* %arrayidx211.1, align 4, !dbg !1788, !tbaa !794
  call void @llvm.dbg.value(metadata i64 2, metadata !1524, metadata !DIExpression()), !dbg !1532
  %arrayidx206.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 4, i64 2, !dbg !1784
  %179 = load i32, i32* %arrayidx206.2, align 4, !dbg !1784, !tbaa !794
  %arrayidx211.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 4, i64 2, !dbg !1787
  store i32 %179, i32* %arrayidx211.2, align 4, !dbg !1788, !tbaa !794
  call void @llvm.dbg.value(metadata i64 3, metadata !1524, metadata !DIExpression()), !dbg !1532
  %arrayidx206.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 4, i64 3, !dbg !1784
  %180 = load i32, i32* %arrayidx206.3, align 4, !dbg !1784, !tbaa !794
  %arrayidx211.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 4, i64 3, !dbg !1787
  store i32 %180, i32* %arrayidx211.3, align 4, !dbg !1788, !tbaa !794
  call void @llvm.dbg.value(metadata i64 4, metadata !1524, metadata !DIExpression()), !dbg !1532
  %arrayidx206.4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 4, i64 4, !dbg !1784
  %181 = load i32, i32* %arrayidx206.4, align 4, !dbg !1784, !tbaa !794
  %arrayidx211.4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 4, i64 4, !dbg !1787
  store i32 %181, i32* %arrayidx211.4, align 4, !dbg !1788, !tbaa !794
  call void @llvm.dbg.value(metadata i64 5, metadata !1524, metadata !DIExpression()), !dbg !1532
  %arrayidx206.5 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 4, i64 5, !dbg !1784
  %182 = load i32, i32* %arrayidx206.5, align 4, !dbg !1784, !tbaa !794
  %arrayidx211.5 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 4, i64 5, !dbg !1787
  store i32 %182, i32* %arrayidx211.5, align 4, !dbg !1788, !tbaa !794
  call void @llvm.dbg.value(metadata i64 6, metadata !1524, metadata !DIExpression()), !dbg !1532
  %arrayidx206.6 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 4, i64 6, !dbg !1784
  %183 = load i32, i32* %arrayidx206.6, align 4, !dbg !1784, !tbaa !794
  %arrayidx211.6 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 4, i64 6, !dbg !1787
  store i32 %183, i32* %arrayidx211.6, align 4, !dbg !1788, !tbaa !794
  call void @llvm.dbg.value(metadata i64 7, metadata !1524, metadata !DIExpression()), !dbg !1532
  %arrayidx206.7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 4, i64 7, !dbg !1784
  %184 = load i32, i32* %arrayidx206.7, align 4, !dbg !1784, !tbaa !794
  %arrayidx211.7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 4, i64 7, !dbg !1787
  store i32 %184, i32* %arrayidx211.7, align 4, !dbg !1788, !tbaa !794
  call void @llvm.dbg.value(metadata i64 8, metadata !1524, metadata !DIExpression()), !dbg !1532
  %a_residue = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 5, !dbg !1789
  %185 = bitcast %struct.residue_t** %a_residue to i8**, !dbg !1790
  store i8* %call, i8** %185, align 8, !dbg !1790, !tbaa !1791
  %a_charge = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 6, !dbg !1792
  %a_charge222 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 6, !dbg !1793
  %186 = bitcast double* %a_charge to <2 x double>*, !dbg !1792
  %187 = load <2 x double>, <2 x double>* %186, align 8, !dbg !1792, !tbaa !823
  %188 = bitcast double* %a_charge222 to <2 x double>*, !dbg !1794
  store <2 x double> %187, <2 x double>* %188, align 8, !dbg !1794, !tbaa !823
  %a_bfact = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 8, !dbg !1795
  %a_bfact234 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 8, !dbg !1796
  %189 = bitcast double* %a_bfact to <2 x double>*, !dbg !1795
  %190 = load <2 x double>, <2 x double>* %189, align 8, !dbg !1795, !tbaa !823
  %191 = bitcast double* %a_bfact234 to <2 x double>*, !dbg !1797
  store <2 x double> %190, <2 x double>* %191, align 8, !dbg !1797, !tbaa !823
  %a_element = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 10, !dbg !1798
  store i8* null, i8** %a_element, align 8, !dbg !1799, !tbaa !1800
  %a_int1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 11, !dbg !1801
  %192 = load i32, i32* %a_int1, align 8, !dbg !1801, !tbaa !1802
  %a_int1248 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 11, !dbg !1803
  store i32 %192, i32* %a_int1248, align 8, !dbg !1804, !tbaa !1802
  %a_float1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 12, !dbg !1805
  %a_float1254 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 12, !dbg !1806
  %193 = bitcast double* %a_float1 to <2 x double>*, !dbg !1805
  %194 = load <2 x double>, <2 x double>* %193, align 8, !dbg !1805, !tbaa !823
  %195 = bitcast double* %a_float1254 to <2 x double>*, !dbg !1807
  store <2 x double> %194, <2 x double>* %195, align 8, !dbg !1807, !tbaa !823
  %a_tatomnum = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 14, !dbg !1808
  %196 = load i32, i32* %a_tatomnum, align 8, !dbg !1808, !tbaa !1809
  %a_tatomnum266 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 14, !dbg !1810
  store i32 %196, i32* %a_tatomnum266, align 8, !dbg !1811, !tbaa !1809
  %a_atomnum = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 15, !dbg !1812
  %197 = load i32, i32* %a_atomnum, align 4, !dbg !1812, !tbaa !1813
  %a_atomnum272 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 15, !dbg !1814
  store i32 %197, i32* %a_atomnum272, align 4, !dbg !1815, !tbaa !1813
  %a_fullname = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 16, !dbg !1816
  store i8* null, i8** %a_fullname, align 8, !dbg !1817, !tbaa !1818
  %arrayidx278 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 17, i64 0, !dbg !1819
  %198 = load double, double* %arrayidx278, align 8, !dbg !1819, !tbaa !823
  %arrayidx282 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 17, i64 0, !dbg !1820
  store double %198, double* %arrayidx282, align 8, !dbg !1821, !tbaa !823
  %arrayidx287 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 17, i64 1, !dbg !1822
  %199 = load double, double* %arrayidx287, align 8, !dbg !1822, !tbaa !823
  %arrayidx291 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 17, i64 1, !dbg !1823
  store double %199, double* %arrayidx291, align 8, !dbg !1824, !tbaa !823
  %arrayidx296 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 17, i64 2, !dbg !1825
  %200 = load double, double* %arrayidx296, align 8, !dbg !1825, !tbaa !823
  %arrayidx300 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 17, i64 2, !dbg !1826
  store double %200, double* %arrayidx300, align 8, !dbg !1827, !tbaa !823
  %a_w = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv547, i32 18, !dbg !1828
  %201 = load double, double* %a_w, align 8, !dbg !1828, !tbaa !1829
  %a_w306 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv547, i32 18, !dbg !1830
  store double %201, double* %a_w306, align 8, !dbg !1831, !tbaa !1829
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next548, metadata !1521, metadata !DIExpression()), !dbg !1532
  %exitcond551.not = icmp eq i64 %indvars.iv.next548, %wide.trip.count550, !dbg !1756
  br i1 %exitcond551.not, label %cleanup, label %for.body164, !dbg !1754, !llvm.loop !1833

cleanup:                                          ; preds = %if.end175, %if.end159.thread, %if.end159, %if.then46, %if.then31, %if.then17, %if.then6, %if.then
  %retval.0 = phi %struct.residue_t* [ null, %if.then ], [ null, %if.then6 ], [ null, %if.then17 ], [ null, %if.then31 ], [ null, %if.then46 ], [ %0, %if.end159 ], [ %0, %if.end159.thread ], [ %0, %if.end175 ], !dbg !1532
  ret %struct.residue_t* %retval.0, !dbg !1835
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) local_unnamed_addr #5

declare dso_local %struct.extbond_t* @copyextbonds(...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* nocapture noundef readonly %str) local_unnamed_addr #0 !dbg !1836 {
entry:
  call void @llvm.dbg.value(metadata %struct.strand_t* %str, metadata !1840, metadata !DIExpression()), !dbg !1844
  %call = tail call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #14, !dbg !1845
  %0 = bitcast i8* %call to %struct.strand_t*, !dbg !1847
  call void @llvm.dbg.value(metadata %struct.strand_t* %0, metadata !1841, metadata !DIExpression()), !dbg !1844
  %cmp = icmp eq i8* %call, null, !dbg !1848
  br i1 %cmp, label %if.then, label %if.end, !dbg !1849

if.then:                                          ; preds = %entry
  %s_strandname = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 0, !dbg !1850
  %1 = load i8*, i8** %s_strandname, align 8, !dbg !1850, !tbaa !1852
  %call1 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* noundef %1) #14, !dbg !1854
  br label %cleanup.sink.split, !dbg !1855

if.end:                                           ; preds = %entry
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 5, !dbg !1856
  %2 = load i32, i32* %s_nresidues, align 8, !dbg !1856, !tbaa !1858
  %conv = sext i32 %2 to i64, !dbg !1859
  %mul = shl nsw i64 %conv, 3, !dbg !1860
  %call3 = tail call noalias i8* @malloc(i64 noundef %mul) #14, !dbg !1861
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 7, !dbg !1862
  %3 = bitcast %struct.residue_t*** %s_residues to i8**, !dbg !1863
  store i8* %call3, i8** %3, align 8, !dbg !1863, !tbaa !1864
  %cmp4 = icmp eq i8* %call3, null, !dbg !1865
  %4 = bitcast i8* %call3 to %struct.residue_t**, !dbg !1866
  br i1 %cmp4, label %cleanup.sink.split, label %if.end8, !dbg !1866

if.end8:                                          ; preds = %if.end
  %s_strandname9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 0, !dbg !1867
  %5 = load i8*, i8** %s_strandname9, align 8, !dbg !1867, !tbaa !1852
  %call10 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %5) #15, !dbg !1869
  %add = add i64 %call10, 1, !dbg !1870
  %call12 = tail call noalias i8* @malloc(i64 noundef %add) #14, !dbg !1871
  call void @llvm.dbg.value(metadata i8* %call12, metadata !1842, metadata !DIExpression()), !dbg !1844
  %cmp13 = icmp eq i8* %call12, null, !dbg !1872
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !1873

if.then15:                                        ; preds = %if.end8
  %call17 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* noundef %5) #14, !dbg !1874
  br label %cleanup.sink.split, !dbg !1876

if.end19:                                         ; preds = %if.end8
  %s_strandname20 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1877
  store i8* %call12, i8** %s_strandname20, align 8, !dbg !1878, !tbaa !1852
  %call23 = tail call i8* @strcpy(i8* noundef nonnull %call12, i8* noundef nonnull dereferenceable(1) %5) #14, !dbg !1879
  %s_strandnum = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 1, !dbg !1880
  %6 = load i32, i32* %s_strandnum, align 8, !dbg !1880, !tbaa !1881
  %s_strandnum24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 1, !dbg !1882
  store i32 %6, i32* %s_strandnum24, align 8, !dbg !1883, !tbaa !1881
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 2, !dbg !1884
  %7 = load i32, i32* %s_attr, align 4, !dbg !1884, !tbaa !1885
  %s_attr25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 2, !dbg !1886
  store i32 %7, i32* %s_attr25, align 4, !dbg !1887, !tbaa !1885
  %s_molecule = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 3, !dbg !1888
  %s_nresidues27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 5, !dbg !1889
  %8 = bitcast %struct.molecule_t** %s_molecule to i8*, !dbg !1890
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !dbg !1891
  store i32 %2, i32* %s_nresidues27, align 8, !dbg !1890, !tbaa !1858
  %s_res_size = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 6, !dbg !1892
  store i32 %2, i32* %s_res_size, align 4, !dbg !1893, !tbaa !1894
  call void @llvm.dbg.value(metadata i32 0, metadata !1843, metadata !DIExpression()), !dbg !1844
  %s_residues32 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %str, i64 0, i32 7
  call void @llvm.dbg.value(metadata i32 0, metadata !1843, metadata !DIExpression()), !dbg !1844
  %cmp3086 = icmp sgt i32 %2, 0, !dbg !1895
  br i1 %cmp3086, label %for.inc.peel, label %cleanup, !dbg !1898

for.inc.peel:                                     ; preds = %if.end19
  call void @llvm.dbg.value(metadata i64 0, metadata !1843, metadata !DIExpression()), !dbg !1844
  %9 = load %struct.residue_t**, %struct.residue_t*** %s_residues32, align 8, !dbg !1899, !tbaa !1864
  %10 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !1901, !tbaa !296
  %call33.peel = tail call %struct.residue_t* @copyresidue(%struct.residue_t* noundef %10), !dbg !1902
  store %struct.residue_t* %call33.peel, %struct.residue_t** %4, align 8, !dbg !1903, !tbaa !296
  %r_strand.peel = getelementptr inbounds %struct.residue_t, %struct.residue_t* %call33.peel, i64 0, i32 9, !dbg !1904
  %11 = bitcast %struct.strand_t** %r_strand.peel to i8**, !dbg !1905
  store i8* %call, i8** %11, align 8, !dbg !1905, !tbaa !1652
  call void @llvm.dbg.value(metadata i64 1, metadata !1843, metadata !DIExpression()), !dbg !1844
  %12 = load i32, i32* %s_nresidues, align 8, !dbg !1906, !tbaa !1858
  %cmp30.peel = icmp sgt i32 %12, 1, !dbg !1895
  br i1 %cmp30.peel, label %for.inc, label %cleanup, !dbg !1898

for.inc:                                          ; preds = %for.inc.peel, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.inc.peel ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1843, metadata !DIExpression()), !dbg !1844
  %13 = load %struct.residue_t**, %struct.residue_t*** %s_residues32, align 8, !dbg !1899, !tbaa !1864
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %13, i64 %indvars.iv, !dbg !1901
  %14 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !1901, !tbaa !296
  %call33 = tail call %struct.residue_t* @copyresidue(%struct.residue_t* noundef %14), !dbg !1902
  %15 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !dbg !1907, !tbaa !1864
  %arrayidx36 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv, !dbg !1908
  store %struct.residue_t* %call33, %struct.residue_t** %arrayidx36, align 8, !dbg !1903, !tbaa !296
  %16 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !dbg !1909, !tbaa !1864
  %arrayidx39 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %16, i64 %indvars.iv, !dbg !1910
  %17 = load %struct.residue_t*, %struct.residue_t** %arrayidx39, align 8, !dbg !1910, !tbaa !296
  %r_strand = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 9, !dbg !1904
  %18 = bitcast %struct.strand_t** %r_strand to i8**, !dbg !1905
  store i8* %call, i8** %18, align 8, !dbg !1905, !tbaa !1652
  %19 = load %struct.residue_t*, %struct.residue_t** %arrayidx39, align 8, !dbg !1911, !tbaa !296
  %20 = add nuw i64 %indvars.iv, 4294967295
  %21 = and i64 %20, 4294967295
  %arrayidx48 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %16, i64 %21, !dbg !1913
  %22 = load %struct.residue_t*, %struct.residue_t** %arrayidx48, align 8, !dbg !1913, !tbaa !296
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i64 0, i32 0, !dbg !1914
  store %struct.residue_t* %19, %struct.residue_t** %r_next, align 8, !dbg !1915, !tbaa !1606
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1843, metadata !DIExpression()), !dbg !1844
  %23 = load i32, i32* %s_nresidues, align 8, !dbg !1906, !tbaa !1858
  %24 = sext i32 %23 to i64, !dbg !1895
  %cmp30 = icmp slt i64 %indvars.iv.next, %24, !dbg !1895
  br i1 %cmp30, label %for.inc, label %cleanup, !dbg !1898, !llvm.loop !1917

cleanup.sink.split:                               ; preds = %if.end, %if.then, %if.then15
  %.sink = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), %if.then15 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), %if.end ]
  %call18 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef %.sink) #14, !dbg !1844
  br label %cleanup, !dbg !1920

cleanup:                                          ; preds = %for.inc, %cleanup.sink.split, %for.inc.peel, %if.end19
  %retval.0 = phi %struct.strand_t* [ %0, %if.end19 ], [ %0, %for.inc.peel ], [ null, %cleanup.sink.split ], [ %0, %for.inc ], !dbg !1844
  ret %struct.strand_t* %retval.0, !dbg !1920
}

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* noundef %mol) local_unnamed_addr #0 !dbg !1921 {
entry:
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1925, metadata !DIExpression()), !dbg !1932
  %mol96 = bitcast %struct.molecule_t* %mol to i8*, !dbg !1933
  tail call void @upd_molnumbers(%struct.molecule_t* noundef %mol) #14, !dbg !1933
  %call = tail call noalias dereferenceable_or_null(136) i8* @malloc(i64 noundef 136) #14, !dbg !1934
  %0 = bitcast i8* %call to %struct.molecule_t*, !dbg !1936
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1931, metadata !DIExpression()), !dbg !1932
  %cmp = icmp eq i8* %call, null, !dbg !1937
  br i1 %cmp, label %if.then, label %if.end, !dbg !1938

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(13) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 13, i1 false), !dbg !1939
  %call2 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1941
  br label %cleanup, !dbg !1942

if.end:                                           ; preds = %entry
  %m_nstrands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 1, !dbg !1943
  %1 = load i32, i32* %m_nstrands, align 8, !dbg !1943, !tbaa !1944
  %m_nstrands3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !1946
  store i32 %1, i32* %m_nstrands3, align 8, !dbg !1947, !tbaa !1944
  %m_nresidues = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 3, !dbg !1948
  %2 = load i32, i32* %m_nresidues, align 8, !dbg !1948, !tbaa !1949
  %m_nresidues4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 3, !dbg !1950
  store i32 %2, i32* %m_nresidues4, align 8, !dbg !1951, !tbaa !1949
  %m_natoms = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 4, !dbg !1952
  %3 = load i32, i32* %m_natoms, align 4, !dbg !1952, !tbaa !1953
  %m_natoms5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 4, !dbg !1954
  store i32 %3, i32* %m_natoms5, align 4, !dbg !1955, !tbaa !1953
  %m_nvalid = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 5, !dbg !1956
  %4 = load i32, i32* %m_nvalid, align 8, !dbg !1956, !tbaa !1957
  %m_nvalid6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !1958
  store i32 %4, i32* %m_nvalid6, align 8, !dbg !1959, !tbaa !1957
  %m_prm = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 6, !dbg !1960
  %5 = load %struct.parm*, %struct.parm** %m_prm, align 8, !dbg !1960, !tbaa !1962
  %cmp7.not = icmp eq %struct.parm* %5, null, !dbg !1963
  br i1 %cmp7.not, label %if.end13, label %if.then8, !dbg !1964

if.then8:                                         ; preds = %if.end
  %call10 = tail call %struct.parm* @copyparm(%struct.parm* noundef nonnull %5) #14, !dbg !1965
  br label %if.end13, !dbg !1967

if.end13:                                         ; preds = %if.end, %if.then8
  %call10.sink = phi %struct.parm* [ %call10, %if.then8 ], [ null, %if.end ], !dbg !1968
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !1969
  store %struct.parm* %call10.sink, %struct.parm** %6, align 8, !dbg !1970
  call void @llvm.dbg.value(metadata i32 0, metadata !1926, metadata !DIExpression()), !dbg !1932
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %call, i8* noundef nonnull align 8 dereferenceable(96) %mol96, i64 96, i1 false), !dbg !1971, !tbaa !823
  call void @llvm.dbg.value(metadata i32 undef, metadata !1927, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1932
  call void @llvm.dbg.value(metadata i32 undef, metadata !1926, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1932
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1978
  %7 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !1978, !tbaa !1979
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !1928, metadata !DIExpression()), !dbg !1932
  %cmp28.not = icmp eq %struct.strand_t* %7, null, !dbg !1980
  br i1 %cmp28.not, label %while.end, label %if.end32, !dbg !1982

if.end32:                                         ; preds = %if.end13
  %call30 = tail call %struct.strand_t* @copystrand(%struct.strand_t* noundef nonnull %7), !dbg !1983
  call void @llvm.dbg.value(metadata %struct.strand_t* %call30, metadata !1929, metadata !DIExpression()), !dbg !1932
  %s_molecule = getelementptr inbounds %struct.strand_t, %struct.strand_t* %call30, i64 0, i32 3, !dbg !1985
  %8 = bitcast %struct.molecule_t** %s_molecule to i8**, !dbg !1986
  store i8* %call, i8** %8, align 8, !dbg !1986, !tbaa !1987
  %m_strands31 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1988
  store %struct.strand_t* %call30, %struct.strand_t** %m_strands31, align 8, !dbg !1989, !tbaa !1979
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i64 0, i32 4, !dbg !1990
  %9 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !1990, !tbaa !1991
  call void @llvm.dbg.value(metadata %struct.strand_t* %9, metadata !1928, metadata !DIExpression()), !dbg !1932
  %cmp33.not90 = icmp eq %struct.strand_t* %9, null, !dbg !1992
  br i1 %cmp33.not90, label %while.end, label %if.end37, !dbg !1993

if.end37:                                         ; preds = %if.end32, %if.end37
  %newstr.192 = phi %struct.strand_t* [ %call34, %if.end37 ], [ %call30, %if.end32 ]
  %strptr.191 = phi %struct.strand_t* [ %11, %if.end37 ], [ %9, %if.end32 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %newstr.192, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata %struct.strand_t* %strptr.191, metadata !1928, metadata !DIExpression()), !dbg !1932
  %call34 = tail call %struct.strand_t* @copystrand(%struct.strand_t* noundef nonnull %strptr.191), !dbg !1994
  call void @llvm.dbg.value(metadata %struct.strand_t* %call34, metadata !1930, metadata !DIExpression()), !dbg !1932
  %s_next36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %newstr.192, i64 0, i32 4, !dbg !1996
  store %struct.strand_t* %call34, %struct.strand_t** %s_next36, align 8, !dbg !1998, !tbaa !1991
  %s_molecule38 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %call34, i64 0, i32 3, !dbg !1999
  %10 = bitcast %struct.molecule_t** %s_molecule38 to i8**, !dbg !2000
  store i8* %call, i8** %10, align 8, !dbg !2000, !tbaa !1987
  call void @llvm.dbg.value(metadata %struct.strand_t* %call34, metadata !1929, metadata !DIExpression()), !dbg !1932
  %s_next39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %strptr.191, i64 0, i32 4, !dbg !2001
  %11 = load %struct.strand_t*, %struct.strand_t** %s_next39, align 8, !dbg !2001, !tbaa !1991
  call void @llvm.dbg.value(metadata %struct.strand_t* %11, metadata !1928, metadata !DIExpression()), !dbg !1932
  %cmp33.not = icmp eq %struct.strand_t* %11, null, !dbg !1992
  br i1 %cmp33.not, label %while.end, label %if.end37, !dbg !1993, !llvm.loop !2002

while.end:                                        ; preds = %if.end37, %if.end13, %if.end32
  tail call void @upd_molnumbers(%struct.molecule_t* noundef nonnull %0) #14, !dbg !2004
  br label %cleanup, !dbg !2005

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi %struct.molecule_t* [ null, %if.then ], [ %0, %while.end ], !dbg !1932
  ret %struct.molecule_t* %retval.0, !dbg !2006
}

declare !dbg !2007 dso_local void @upd_molnumbers(%struct.molecule_t* noundef) local_unnamed_addr #7

declare !dbg !2010 dso_local %struct.parm* @copyparm(%struct.parm* noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !2013 dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !2017 dso_local noundef i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @__isoc99_sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !2022 dso_local void @NAB_initatom(%struct.atom_t* noundef, i32 noundef) local_unnamed_addr #7

declare dso_local %struct.DATABASEt* @dbDBRndOpen(...) local_unnamed_addr #7

declare dso_local signext i8 @bDBGetValue(...) local_unnamed_addr #7

declare dso_local void @DBZeroPrefix(...) local_unnamed_addr #7

declare dso_local void @DBPushPrefix(...) local_unnamed_addr #7

declare dso_local signext i8 @bDBGetTable(...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @addres2reslib(%struct.reslib_t* nocapture noundef %rlp) unnamed_addr #0 !dbg !2025 {
entry:
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp, metadata !2029, metadata !DIExpression()), !dbg !2036
  %call = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 noundef 128) #14, !dbg !2037
  %0 = bitcast i8* %call to %struct.residue_t*, !dbg !2039
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2030, metadata !DIExpression()), !dbg !2036
  %cmp = icmp eq i8* %call, null, !dbg !2040
  br i1 %cmp, label %cleanup.sink.split, label %if.end, !dbg !2041

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @n_atoms, align 4, !dbg !2042, !tbaa !794
  %conv = sext i32 %1 to i64, !dbg !2042
  %mul = mul nsw i64 %conv, 176, !dbg !2044
  %call3 = tail call noalias i8* @malloc(i64 noundef %mul) #14, !dbg !2045
  call void @llvm.dbg.value(metadata i8* %call3, metadata !2031, metadata !DIExpression()), !dbg !2036
  %cmp4 = icmp eq i8* %call3, null, !dbg !2046
  br i1 %cmp4, label %cleanup.sink.split, label %if.end10, !dbg !2047

if.end10:                                         ; preds = %if.end
  %rl_rlist = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 4, !dbg !2048
  %2 = load %struct.residue_t*, %struct.residue_t** %rl_rlist, align 8, !dbg !2048, !tbaa !2049
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 0, !dbg !2050
  store %struct.residue_t* %2, %struct.residue_t** %r_next, align 8, !dbg !2051, !tbaa !1606
  %3 = bitcast %struct.residue_t** %rl_rlist to i8**, !dbg !2052
  store i8* %call, i8** %3, align 8, !dbg !2052, !tbaa !2049
  %call12 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #15, !dbg !2053
  %add = add i64 %call12, 1, !dbg !2054
  %call13 = tail call noalias i8* @malloc(i64 noundef %add) #14, !dbg !2055
  call void @llvm.dbg.value(metadata i8* %call13, metadata !2033, metadata !DIExpression()), !dbg !2036
  %cmp14 = icmp eq i8* %call13, null, !dbg !2056
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !2058

if.then16:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2059, !tbaa !296
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %4) #16, !dbg !2061
  tail call void @exit(i32 noundef 1) #17, !dbg !2062
  unreachable, !dbg !2062

if.end18:                                         ; preds = %if.end10
  %call19 = tail call i8* @strcpy(i8* noundef nonnull %call13, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #14, !dbg !2063
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !2064
  store i8* %call13, i8** %r_resname, align 8, !dbg !2065, !tbaa !1220
  %call20 = tail call noalias dereferenceable_or_null(1) i8* @malloc(i64 noundef 1) #14, !dbg !2066
  call void @llvm.dbg.value(metadata i8* %call20, metadata !2033, metadata !DIExpression()), !dbg !2036
  %cmp21 = icmp eq i8* %call20, null, !dbg !2067
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !2069

if.then23:                                        ; preds = %if.end18
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2070, !tbaa !296
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %6) #16, !dbg !2072
  tail call void @exit(i32 noundef 1) #17, !dbg !2073
  unreachable, !dbg !2073

if.end25:                                         ; preds = %if.end18
  store i8 0, i8* %call20, align 1, !dbg !2074
  %r_resid = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !2075
  store i8* %call20, i8** %r_resid, align 8, !dbg !2076, !tbaa !1622
  %r_num = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 1, !dbg !2077
  store i32 0, i32* %r_num, align 8, !dbg !2078, !tbaa !1637
  %r_tresnum = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 2, !dbg !2079
  store i32 0, i32* %r_tresnum, align 4, !dbg !2080, !tbaa !1642
  %r_resnum = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 3, !dbg !2081
  store i32 0, i32* %r_resnum, align 8, !dbg !2082, !tbaa !1645
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 6, !dbg !2083
  store i32 0, i32* %r_attr, align 8, !dbg !2084, !tbaa !1647
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 2, !dbg !2085
  %8 = load i32, i32* %rl_r_kind, align 8, !dbg !2085, !tbaa !327
  %r_kind = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 7, !dbg !2086
  store i32 %8, i32* %r_kind, align 4, !dbg !2087, !tbaa !1704
  %rl_r_atomkind = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 3, !dbg !2088
  %9 = load i32, i32* %rl_r_atomkind, align 4, !dbg !2088, !tbaa !569
  %r_atomkind = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !2089
  store i32 %9, i32* %r_atomkind, align 8, !dbg !2090, !tbaa !1708
  %r_strand = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 9, !dbg !2091
  %r_intbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !2092
  store [2 x i32]* null, [2 x i32]** %r_intbonds, align 8, !dbg !2093, !tbaa !1662
  %r_nchiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !2094
  store i32 0, i32* %r_nchiral, align 8, !dbg !2095, !tbaa !1587
  %r_chiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !2096
  store %struct.chiral_t* null, %struct.chiral_t** %r_chiral, align 8, !dbg !2097, !tbaa !1685
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !2098
  %10 = bitcast %struct.strand_t** %r_strand to i8*, !dbg !2099
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) %10, i8 0, i64 20, i1 false), !dbg !2100
  store i32 %1, i32* %r_natoms, align 8, !dbg !2099, !tbaa !1247
  %r_aindex = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !2101
  store i32* null, i32** %r_aindex, align 8, !dbg !2102, !tbaa !1716
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2103
  %11 = bitcast %struct.atom_t** %r_atoms to i8**, !dbg !2104
  store i8* %call3, i8** %11, align 8, !dbg !2104, !tbaa !1255
  call void @llvm.dbg.value(metadata i32 0, metadata !2034, metadata !DIExpression()), !dbg !2036
  %cmp27232 = icmp sgt i32 %1, 0, !dbg !2105
  %12 = bitcast i8* %call3 to %struct.atom_t*, !dbg !2108
  br i1 %cmp27232, label %for.body, label %cleanup, !dbg !2108

for.body:                                         ; preds = %if.end25, %if.end36
  %indvar = phi i64 [ %indvar.next, %if.end36 ], [ 0, %if.end25 ]
  call void @llvm.dbg.value(metadata i64 %indvar, metadata !2034, metadata !DIExpression()), !dbg !2036
  %a_atomname = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 0, !dbg !2109
  %13 = load i8*, i8** %a_atomname, align 16, !dbg !2109, !tbaa !691
  %call29 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %13) #15, !dbg !2111
  %add30 = add i64 %call29, 1, !dbg !2112
  %call31 = tail call noalias i8* @malloc(i64 noundef %add30) #14, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %call31, metadata !2032, metadata !DIExpression()), !dbg !2036
  %cmp32 = icmp eq i8* %call31, null, !dbg !2114
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !2116

if.then34:                                        ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2117, !tbaa !296
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %14) #16, !dbg !2119
  tail call void @exit(i32 noundef 1) #17, !dbg !2120
  unreachable, !dbg !2120

if.end36:                                         ; preds = %for.body
  %call40 = tail call i8* @strcpy(i8* noundef nonnull %call31, i8* noundef nonnull dereferenceable(1) %13) #14, !dbg !2121
  %a_atomname44 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 0, !dbg !2122
  store i8* %call31, i8** %a_atomname44, align 8, !dbg !2123, !tbaa !691
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 2, !dbg !2124
  store i32 0, i32* %a_attr, align 8, !dbg !2125, !tbaa !1777
  %a_nconnect = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 3, !dbg !2126
  store i32 0, i32* %a_nconnect, align 4, !dbg !2127, !tbaa !1781
  call void @llvm.dbg.value(metadata i32 0, metadata !2035, metadata !DIExpression()), !dbg !2036
  %scevgep = getelementptr %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 4, i64 0, !dbg !2128
  %scevgep234 = bitcast i32* %scevgep to i8*, !dbg !2128
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(32) %scevgep234, i8 -1, i64 32, i1 false), !dbg !2130, !tbaa !794
  call void @llvm.dbg.value(metadata i32 undef, metadata !2035, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 undef, metadata !2035, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2036
  %a_residue = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 5, !dbg !2132
  %16 = bitcast %struct.residue_t** %a_residue to i8**, !dbg !2133
  store i8* %call, i8** %16, align 8, !dbg !2133, !tbaa !1791
  %a_charge = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 6, !dbg !2134
  %a_charge68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 6, !dbg !2135
  %17 = bitcast double* %a_charge to <2 x double>*, !dbg !2134
  %18 = load <2 x double>, <2 x double>* %17, align 16, !dbg !2134, !tbaa !823
  %19 = bitcast double* %a_charge68 to <2 x double>*, !dbg !2136
  store <2 x double> %18, <2 x double>* %19, align 8, !dbg !2136, !tbaa !823
  %a_bfact = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 8, !dbg !2137
  %a_bfact80 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 8, !dbg !2138
  %20 = bitcast double* %a_bfact to <2 x double>*, !dbg !2137
  %21 = load <2 x double>, <2 x double>* %20, align 16, !dbg !2137, !tbaa !823
  %22 = bitcast double* %a_bfact80 to <2 x double>*, !dbg !2139
  store <2 x double> %21, <2 x double>* %22, align 8, !dbg !2139, !tbaa !823
  %a_int1 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 11, !dbg !2140
  %23 = load i32, i32* %a_int1, align 8, !dbg !2140, !tbaa !1802
  %a_int192 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 11, !dbg !2141
  store i32 %23, i32* %a_int192, align 8, !dbg !2142, !tbaa !1802
  %a_float1 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 12, !dbg !2143
  %a_float198 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 12, !dbg !2144
  %24 = bitcast double* %a_float1 to <2 x double>*, !dbg !2143
  %25 = load <2 x double>, <2 x double>* %24, align 16, !dbg !2143, !tbaa !823
  %26 = bitcast double* %a_float198 to <2 x double>*, !dbg !2145
  store <2 x double> %25, <2 x double>* %26, align 8, !dbg !2145, !tbaa !823
  %a_atomnum = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 15, !dbg !2146
  store i32 0, i32* %a_atomnum, align 4, !dbg !2147, !tbaa !1813
  %a_fullname = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 16, !dbg !2148
  store i8* null, i8** %a_fullname, align 8, !dbg !2149, !tbaa !1818
  call void @llvm.dbg.value(metadata i32 0, metadata !2035, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 0, metadata !2035, metadata !DIExpression()), !dbg !2036
  %arrayidx118 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 17, i64 0, !dbg !2150
  %arrayidx124 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 17, i64 0, !dbg !2153
  call void @llvm.dbg.value(metadata i64 1, metadata !2035, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 1, metadata !2035, metadata !DIExpression()), !dbg !2036
  %27 = bitcast double* %arrayidx118 to <2 x double>*, !dbg !2150
  %28 = load <2 x double>, <2 x double>* %27, align 16, !dbg !2150, !tbaa !823
  %29 = bitcast double* %arrayidx124 to <2 x double>*, !dbg !2154
  store <2 x double> %28, <2 x double>* %29, align 8, !dbg !2154, !tbaa !823
  call void @llvm.dbg.value(metadata i64 2, metadata !2035, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 2, metadata !2035, metadata !DIExpression()), !dbg !2036
  %arrayidx118.2 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvar, i32 17, i64 2, !dbg !2150
  %arrayidx124.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i64 %indvar, i32 17, i64 2, !dbg !2153
  call void @llvm.dbg.value(metadata i64 3, metadata !2035, metadata !DIExpression()), !dbg !2036
  %30 = bitcast double* %arrayidx118.2 to <2 x double>*, !dbg !2150
  %31 = load <2 x double>, <2 x double>* %30, align 16, !dbg !2150, !tbaa !823
  %32 = bitcast double* %arrayidx124.2 to <2 x double>*, !dbg !2154
  store <2 x double> %31, <2 x double>* %32, align 8, !dbg !2154, !tbaa !823
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %indvar.next, metadata !2034, metadata !DIExpression()), !dbg !2036
  %cmp27 = icmp slt i64 %indvar.next, %conv, !dbg !2105
  br i1 %cmp27, label %for.body, label %cleanup, !dbg !2108, !llvm.loop !2156

cleanup.sink.split:                               ; preds = %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), %entry ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), %if.end ]
  %rl_name7 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 1, !dbg !2036
  %33 = load i8*, i8** %rl_name7, align 8, !dbg !2036, !tbaa !305
  %call8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %.sink, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef %33) #14, !dbg !2036
  %call9 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2036
  br label %cleanup, !dbg !2158

cleanup:                                          ; preds = %if.end36, %cleanup.sink.split, %if.end25
  ret void, !dbg !2158
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addbonds2reslib(%struct.reslib_t* nocapture noundef readonly %rlp) unnamed_addr #0 !dbg !2159 {
entry:
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp, metadata !2161, metadata !DIExpression()), !dbg !2170
  %rl_rlist = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 4, !dbg !2171
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2162, metadata !DIExpression()), !dbg !2170
  %res.0137 = load %struct.residue_t*, %struct.residue_t** %rl_rlist, align 8, !dbg !2173, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0137, metadata !2162, metadata !DIExpression()), !dbg !2170
  %tobool.not138 = icmp eq %struct.residue_t* %res.0137, null, !dbg !2174
  br i1 %tobool.not138, label %for.end80, label %for.body, !dbg !2174

for.body:                                         ; preds = %entry, %for.inc79
  %res.0139 = phi %struct.residue_t* [ %res.0, %for.inc79 ], [ %res.0137, %entry ]
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0139, i64 0, i32 4, !dbg !2175
  %0 = load i8*, i8** %r_resname, align 8, !dbg !2175, !tbaa !1220
  %call = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #15, !dbg !2179
  %cmp = icmp eq i32 %call, 0, !dbg !2180
  br i1 %cmp, label %if.then, label %for.inc79, !dbg !2181

if.then:                                          ; preds = %for.body
  %1 = load i32, i32* @n_bonds, align 4, !dbg !2182, !tbaa !794
  %conv = sext i32 %1 to i64, !dbg !2182
  %mul = shl nsw i64 %conv, 3, !dbg !2185
  %call1 = tail call noalias i8* @malloc(i64 noundef %mul) #14, !dbg !2186
  %2 = bitcast i8* %call1 to [2 x i32]*, !dbg !2187
  call void @llvm.dbg.value(metadata [2 x i32]* %2, metadata !2163, metadata !DIExpression()), !dbg !2170
  %cmp2 = icmp eq i8* %call1, null, !dbg !2188
  br i1 %cmp2, label %if.then4, label %for.cond7.preheader, !dbg !2189

for.cond7.preheader:                              ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !2164, metadata !DIExpression()), !dbg !2170
  %cmp8142 = icmp sgt i32 %1, 0, !dbg !2190
  br i1 %cmp8142, label %for.body10.lr.ph, label %for.end77, !dbg !2193

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0139, i64 0, i32 17
  %3 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !tbaa !1255
  br label %for.body10, !dbg !2193

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #14, !dbg !2194
  %call6 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2196
  br label %cleanup, !dbg !2197

for.body10:                                       ; preds = %for.body10.lr.ph, %for.inc75
  %indvars.iv = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next, %for.inc75 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2164, metadata !DIExpression()), !dbg !2170
  %arrayidx11 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv, i64 0, !dbg !2198
  %4 = load i32, i32* %arrayidx11, align 8, !dbg !2198, !tbaa !794
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 %indvars.iv, i64 0, !dbg !2200
  store i32 %4, i32* %arrayidx14, align 4, !dbg !2201, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %4, metadata !2166, metadata !DIExpression()), !dbg !2170
  %arrayidx17 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv, i64 1, !dbg !2202
  %5 = load i32, i32* %arrayidx17, align 4, !dbg !2202, !tbaa !794
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 %indvars.iv, i64 1, !dbg !2203
  store i32 %5, i32* %arrayidx20, align 4, !dbg !2204, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %5, metadata !2167, metadata !DIExpression()), !dbg !2170
  %dec = add nsw i32 %4, -1, !dbg !2205
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2166, metadata !DIExpression()), !dbg !2170
  %dec21 = add nsw i32 %5, -1, !dbg !2206
  call void @llvm.dbg.value(metadata i32 %dec21, metadata !2167, metadata !DIExpression()), !dbg !2170
  %idxprom22 = sext i32 %dec to i64, !dbg !2207
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %3, i64 %idxprom22), metadata !2168, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2170
  call void @llvm.dbg.value(metadata i32 0, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 4, i64 0, !dbg !2208
  %6 = load i32, i32* %arrayidx29, align 4, !dbg !2208, !tbaa !794
  %cmp30 = icmp eq i32 %6, %dec21, !dbg !2213
  br i1 %cmp30, label %for.end, label %if.else, !dbg !2214

for.cond24:                                       ; preds = %if.else
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 undef, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx29.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 4, i64 1, !dbg !2208
  %7 = load i32, i32* %arrayidx29.1, align 4, !dbg !2208, !tbaa !794
  %cmp30.1 = icmp eq i32 %7, %dec21, !dbg !2213
  br i1 %cmp30.1, label %for.end, label %if.else.1, !dbg !2214

if.else.1:                                        ; preds = %for.cond24
  %cmp36.1 = icmp eq i32 %7, -1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp36.1, label %if.then38, label %for.cond24.1, !dbg !2217

for.cond24.1:                                     ; preds = %if.else.1
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 undef, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx29.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 4, i64 2, !dbg !2208
  %8 = load i32, i32* %arrayidx29.2, align 4, !dbg !2208, !tbaa !794
  %cmp30.2 = icmp eq i32 %8, %dec21, !dbg !2213
  br i1 %cmp30.2, label %for.end, label %if.else.2, !dbg !2214

if.else.2:                                        ; preds = %for.cond24.1
  %cmp36.2 = icmp eq i32 %8, -1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp36.2, label %if.then38, label %for.cond24.2, !dbg !2217

for.cond24.2:                                     ; preds = %if.else.2
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 undef, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx29.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 4, i64 3, !dbg !2208
  %9 = load i32, i32* %arrayidx29.3, align 4, !dbg !2208, !tbaa !794
  %cmp30.3 = icmp eq i32 %9, %dec21, !dbg !2213
  br i1 %cmp30.3, label %for.end, label %if.else.3, !dbg !2214

if.else.3:                                        ; preds = %for.cond24.2
  %cmp36.3 = icmp eq i32 %9, -1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp36.3, label %if.then38, label %for.cond24.3, !dbg !2217

for.cond24.3:                                     ; preds = %if.else.3
  call void @llvm.dbg.value(metadata i64 4, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 undef, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 4, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx29.4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 4, i64 4, !dbg !2208
  %10 = load i32, i32* %arrayidx29.4, align 4, !dbg !2208, !tbaa !794
  %cmp30.4 = icmp eq i32 %10, %dec21, !dbg !2213
  br i1 %cmp30.4, label %for.end, label %if.else.4, !dbg !2214

if.else.4:                                        ; preds = %for.cond24.3
  %cmp36.4 = icmp eq i32 %10, -1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 4, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp36.4, label %if.then38, label %for.cond24.4, !dbg !2217

for.cond24.4:                                     ; preds = %if.else.4
  call void @llvm.dbg.value(metadata i64 5, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 undef, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 5, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx29.5 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 4, i64 5, !dbg !2208
  %11 = load i32, i32* %arrayidx29.5, align 4, !dbg !2208, !tbaa !794
  %cmp30.5 = icmp eq i32 %11, %dec21, !dbg !2213
  br i1 %cmp30.5, label %for.end, label %if.else.5, !dbg !2214

if.else.5:                                        ; preds = %for.cond24.4
  %cmp36.5 = icmp eq i32 %11, -1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 5, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp36.5, label %if.then38, label %for.cond24.5, !dbg !2217

for.cond24.5:                                     ; preds = %if.else.5
  call void @llvm.dbg.value(metadata i64 6, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 undef, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 6, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx29.6 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 4, i64 6, !dbg !2208
  %12 = load i32, i32* %arrayidx29.6, align 4, !dbg !2208, !tbaa !794
  %cmp30.6 = icmp eq i32 %12, %dec21, !dbg !2213
  br i1 %cmp30.6, label %for.end, label %if.else.6, !dbg !2214

if.else.6:                                        ; preds = %for.cond24.5
  %cmp36.6 = icmp eq i32 %12, -1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 6, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp36.6, label %if.then38, label %for.cond24.6, !dbg !2217

for.cond24.6:                                     ; preds = %if.else.6
  call void @llvm.dbg.value(metadata i64 7, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 undef, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 7, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx29.7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 4, i64 7, !dbg !2208
  %13 = load i32, i32* %arrayidx29.7, align 4, !dbg !2208, !tbaa !794
  %cmp36.7 = icmp eq i32 %13, -1
  %14 = icmp ne i32 %5, 0, !dbg !2214
  %15 = and i1 %cmp36.7, %14, !dbg !2214
  call void @llvm.dbg.value(metadata i64 7, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %15, label %if.then38, label %for.end, !dbg !2214

if.else:                                          ; preds = %for.body10
  %cmp36 = icmp eq i32 %6, -1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp36, label %if.then38, label %for.cond24, !dbg !2217

if.then38:                                        ; preds = %for.cond24.6, %if.else.6, %if.else.5, %if.else.4, %if.else.3, %if.else.2, %if.else.1, %if.else
  %arrayidx29.lcssa144 = phi i32* [ %arrayidx29, %if.else ], [ %arrayidx29.1, %if.else.1 ], [ %arrayidx29.2, %if.else.2 ], [ %arrayidx29.3, %if.else.3 ], [ %arrayidx29.4, %if.else.4 ], [ %arrayidx29.5, %if.else.5 ], [ %arrayidx29.6, %if.else.6 ], [ %arrayidx29.7, %for.cond24.6 ], !dbg !2208
  store i32 %dec21, i32* %arrayidx29.lcssa144, align 4, !dbg !2218, !tbaa !794
  %a_nconnect = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom22, i32 3, !dbg !2220
  %16 = load i32, i32* %a_nconnect, align 4, !dbg !2221, !tbaa !1781
  %inc = add nsw i32 %16, 1, !dbg !2221
  store i32 %inc, i32* %a_nconnect, align 4, !dbg !2221, !tbaa !1781
  br label %for.end, !dbg !2222

for.end:                                          ; preds = %for.body10, %for.cond24, %for.cond24.1, %for.cond24.2, %for.cond24.3, %for.cond24.4, %for.cond24.5, %for.cond24.6, %if.then38
  %idxprom46 = sext i32 %dec21 to i64, !dbg !2223
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %3, i64 %idxprom46), metadata !2169, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2170
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 4, i64 0, !dbg !2224
  %17 = load i32, i32* %arrayidx54, align 4, !dbg !2224, !tbaa !794
  %cmp55 = icmp eq i32 %17, %dec, !dbg !2229
  br i1 %cmp55, label %for.inc75, label %if.else58, !dbg !2230

for.cond48:                                       ; preds = %if.else58
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx54.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 4, i64 1, !dbg !2224
  %18 = load i32, i32* %arrayidx54.1, align 4, !dbg !2224, !tbaa !794
  %cmp55.1 = icmp eq i32 %18, %dec, !dbg !2229
  br i1 %cmp55.1, label %for.inc75, label %if.else58.1, !dbg !2230

if.else58.1:                                      ; preds = %for.cond48
  %cmp62.1 = icmp eq i32 %18, -1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 1, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp62.1, label %if.then64, label %for.cond48.1, !dbg !2233

for.cond48.1:                                     ; preds = %if.else58.1
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx54.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 4, i64 2, !dbg !2224
  %19 = load i32, i32* %arrayidx54.2, align 4, !dbg !2224, !tbaa !794
  %cmp55.2 = icmp eq i32 %19, %dec, !dbg !2229
  br i1 %cmp55.2, label %for.inc75, label %if.else58.2, !dbg !2230

if.else58.2:                                      ; preds = %for.cond48.1
  %cmp62.2 = icmp eq i32 %19, -1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 2, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp62.2, label %if.then64, label %for.cond48.2, !dbg !2233

for.cond48.2:                                     ; preds = %if.else58.2
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx54.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 4, i64 3, !dbg !2224
  %20 = load i32, i32* %arrayidx54.3, align 4, !dbg !2224, !tbaa !794
  %cmp55.3 = icmp eq i32 %20, %dec, !dbg !2229
  br i1 %cmp55.3, label %for.inc75, label %if.else58.3, !dbg !2230

if.else58.3:                                      ; preds = %for.cond48.2
  %cmp62.3 = icmp eq i32 %20, -1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 3, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp62.3, label %if.then64, label %for.cond48.3, !dbg !2233

for.cond48.3:                                     ; preds = %if.else58.3
  call void @llvm.dbg.value(metadata i64 4, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx54.4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 4, i64 4, !dbg !2224
  %21 = load i32, i32* %arrayidx54.4, align 4, !dbg !2224, !tbaa !794
  %cmp55.4 = icmp eq i32 %21, %dec, !dbg !2229
  br i1 %cmp55.4, label %for.inc75, label %if.else58.4, !dbg !2230

if.else58.4:                                      ; preds = %for.cond48.3
  %cmp62.4 = icmp eq i32 %21, -1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 4, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp62.4, label %if.then64, label %for.cond48.4, !dbg !2233

for.cond48.4:                                     ; preds = %if.else58.4
  call void @llvm.dbg.value(metadata i64 5, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx54.5 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 4, i64 5, !dbg !2224
  %22 = load i32, i32* %arrayidx54.5, align 4, !dbg !2224, !tbaa !794
  %cmp55.5 = icmp eq i32 %22, %dec, !dbg !2229
  br i1 %cmp55.5, label %for.inc75, label %if.else58.5, !dbg !2230

if.else58.5:                                      ; preds = %for.cond48.4
  %cmp62.5 = icmp eq i32 %22, -1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 5, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp62.5, label %if.then64, label %for.cond48.5, !dbg !2233

for.cond48.5:                                     ; preds = %if.else58.5
  call void @llvm.dbg.value(metadata i64 6, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx54.6 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 4, i64 6, !dbg !2224
  %23 = load i32, i32* %arrayidx54.6, align 4, !dbg !2224, !tbaa !794
  %cmp55.6 = icmp eq i32 %23, %dec, !dbg !2229
  br i1 %cmp55.6, label %for.inc75, label %if.else58.6, !dbg !2230

if.else58.6:                                      ; preds = %for.cond48.5
  %cmp62.6 = icmp eq i32 %23, -1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 6, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp62.6, label %if.then64, label %for.cond48.6, !dbg !2233

for.cond48.6:                                     ; preds = %if.else58.6
  call void @llvm.dbg.value(metadata i64 7, metadata !2165, metadata !DIExpression()), !dbg !2170
  %arrayidx54.7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 4, i64 7, !dbg !2224
  %24 = load i32, i32* %arrayidx54.7, align 4, !dbg !2224, !tbaa !794
  %cmp62.7 = icmp eq i32 %24, -1
  %25 = icmp ne i32 %4, 0, !dbg !2230
  %26 = and i1 %cmp62.7, %25, !dbg !2230
  call void @llvm.dbg.value(metadata i64 7, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %26, label %if.then64, label %for.inc75, !dbg !2230

if.else58:                                        ; preds = %for.end
  %cmp62 = icmp eq i32 %17, -1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2170
  br i1 %cmp62, label %if.then64, label %for.cond48, !dbg !2233

if.then64:                                        ; preds = %for.cond48.6, %if.else58.6, %if.else58.5, %if.else58.4, %if.else58.3, %if.else58.2, %if.else58.1, %if.else58
  %arrayidx54.lcssa145 = phi i32* [ %arrayidx54, %if.else58 ], [ %arrayidx54.1, %if.else58.1 ], [ %arrayidx54.2, %if.else58.2 ], [ %arrayidx54.3, %if.else58.3 ], [ %arrayidx54.4, %if.else58.4 ], [ %arrayidx54.5, %if.else58.5 ], [ %arrayidx54.6, %if.else58.6 ], [ %arrayidx54.7, %for.cond48.6 ], !dbg !2224
  store i32 %dec, i32* %arrayidx54.lcssa145, align 4, !dbg !2234, !tbaa !794
  %a_nconnect68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %idxprom46, i32 3, !dbg !2236
  %27 = load i32, i32* %a_nconnect68, align 4, !dbg !2237, !tbaa !1781
  %inc69 = add nsw i32 %27, 1, !dbg !2237
  store i32 %inc69, i32* %a_nconnect68, align 4, !dbg !2237, !tbaa !1781
  br label %for.inc75, !dbg !2238

for.inc75:                                        ; preds = %for.end, %for.cond48, %for.cond48.1, %for.cond48.2, %for.cond48.3, %for.cond48.4, %for.cond48.5, %for.cond48.6, %if.then64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2164, metadata !DIExpression()), !dbg !2170
  %28 = load i32, i32* @n_bonds, align 4, !dbg !2240, !tbaa !794
  %29 = sext i32 %28 to i64, !dbg !2190
  %cmp8 = icmp slt i64 %indvars.iv.next, %29, !dbg !2190
  br i1 %cmp8, label %for.body10, label %for.end77, !dbg !2193, !llvm.loop !2241

for.end77:                                        ; preds = %for.inc75, %for.cond7.preheader
  %.lcssa = phi i32 [ %1, %for.cond7.preheader ], [ %28, %for.inc75 ], !dbg !2240
  %r_nintbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0139, i64 0, i32 11, !dbg !2243
  store i32 %.lcssa, i32* %r_nintbonds, align 8, !dbg !2244, !tbaa !1568
  %r_intbonds = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0139, i64 0, i32 12, !dbg !2245
  %30 = bitcast [2 x i32]** %r_intbonds to i8**, !dbg !2246
  store i8* %call1, i8** %30, align 8, !dbg !2246, !tbaa !1662
  br label %cleanup, !dbg !2247

for.inc79:                                        ; preds = %for.body
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.0139, i64 0, i32 0, !dbg !2248
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2162, metadata !DIExpression()), !dbg !2170
  %res.0 = load %struct.residue_t*, %struct.residue_t** %r_next, align 8, !dbg !2173, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0, metadata !2162, metadata !DIExpression()), !dbg !2170
  %tobool.not = icmp eq %struct.residue_t* %res.0, null, !dbg !2174
  br i1 %tobool.not, label %for.end80, label %for.body, !dbg !2174, !llvm.loop !2249

for.end80:                                        ; preds = %for.inc79, %entry
  %rl_name = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 1, !dbg !2251
  %31 = load i8*, i8** %rl_name, align 8, !dbg !2251, !tbaa !305
  %call81 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef %31) #14, !dbg !2252
  %call82 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2253
  br label %cleanup, !dbg !2254

cleanup:                                          ; preds = %for.end80, %for.end77, %if.then4
  ret void, !dbg !2255
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addqr2reslib(%struct.reslib_t* nocapture noundef readonly %rlp) unnamed_addr #0 !dbg !2256 {
entry:
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp, metadata !2258, metadata !DIExpression()), !dbg !2263
  %rl_rlist = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 4, !dbg !2264
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2259, metadata !DIExpression()), !dbg !2263
  %res.049 = load %struct.residue_t*, %struct.residue_t** %rl_rlist, align 8, !dbg !2266, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.049, metadata !2259, metadata !DIExpression()), !dbg !2263
  %tobool.not50 = icmp eq %struct.residue_t* %res.049, null, !dbg !2267
  br i1 %tobool.not50, label %for.end16, label %for.body, !dbg !2267

for.body:                                         ; preds = %entry, %for.inc15
  %res.051 = phi %struct.residue_t* [ %res.0, %for.inc15 ], [ %res.049, %entry ]
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.051, i64 0, i32 4, !dbg !2268
  %0 = load i8*, i8** %r_resname, align 8, !dbg !2268, !tbaa !1220
  %call = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #15, !dbg !2272
  %cmp = icmp eq i32 %call, 0, !dbg !2273
  br i1 %cmp, label %for.cond1.preheader, label %for.inc15, !dbg !2274

for.cond1.preheader:                              ; preds = %for.body
  %r_atoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.051, i64 0, i32 17
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 0, metadata !2260, metadata !DIExpression()), !dbg !2263
  %1 = load i32, i32* @n_atoms, align 4, !dbg !2275, !tbaa !794
  %cmp252 = icmp sgt i32 %1, 0, !dbg !2279
  br i1 %cmp252, label %for.body3.lr.ph, label %cleanup, !dbg !2280

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %r_natoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.051, i64 0, i32 15
  %2 = load i32, i32* %r_natoms.i, align 8, !tbaa !1247
  %cmp10.i = icmp sgt i32 %2, 0
  %wide.trip.count.i = zext i32 %2 to i64
  br i1 %cmp10.i, label %for.body3.lr.ph.split.us, label %cleanup, !dbg !2281

for.body3.lr.ph.split.us:                         ; preds = %for.body3.lr.ph
  %3 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i, align 8, !tbaa !1255
  br label %for.body3.us, !dbg !2280

for.body3.us:                                     ; preds = %for.inc.us, %for.body3.lr.ph.split.us
  %4 = phi i32 [ %1, %for.body3.lr.ph.split.us ], [ %17, %for.inc.us ]
  %ap.054.us = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %for.body3.lr.ph.split.us ], [ %incdec.ptr.us, %for.inc.us ]
  %a.053.us = phi i32 [ 0, %for.body3.lr.ph.split.us ], [ %inc.us, %for.inc.us ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap.054.us, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %a.053.us, metadata !2260, metadata !DIExpression()), !dbg !2263
  %a_atomname.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 0, !dbg !2285
  %5 = load i8*, i8** %a_atomname.us, align 8, !dbg !2285, !tbaa !691
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.051, metadata !1237, metadata !DIExpression()) #14, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %5, metadata !1242, metadata !DIExpression()) #14, !dbg !2286
  call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()) #14, !dbg !2286
  call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()) #14, !dbg !2286
  br label %for.body.i.us, !dbg !2281

for.body.i.us:                                    ; preds = %for.cond.i.us, %for.body3.us
  %indvars.iv.i.us = phi i64 [ 0, %for.body3.us ], [ %indvars.iv.next.i.us, %for.cond.i.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.us, metadata !1243, metadata !DIExpression()) #14, !dbg !2286
  %a_atomname.i.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 0, !dbg !2287
  %6 = load i8*, i8** %a_atomname.i.us, align 8, !dbg !2287, !tbaa !691
  %call.i.us = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %5) #15, !dbg !2288
  %tobool.not.i.us = icmp eq i32 %call.i.us, 0, !dbg !2288
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.us, metadata !1243, metadata !DIExpression()) #14, !dbg !2286
  br i1 %tobool.not.i.us, label %if.then6.us, label %for.cond.i.us, !dbg !2290

for.cond.i.us:                                    ; preds = %for.body.i.us
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.us, metadata !1243, metadata !DIExpression()) #14, !dbg !2286
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i, !dbg !2291
  br i1 %exitcond.not.i.us, label %for.inc.us, label %for.body.i.us, !dbg !2281, !llvm.loop !2292

if.then6.us:                                      ; preds = %for.body.i.us
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %3, i64 %indvars.iv.i.us), metadata !2262, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2263
  %a_charge.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 6, !dbg !2294
  %a_charge7.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 6, !dbg !2296
  %7 = bitcast double* %a_charge.us to <2 x double>*, !dbg !2294
  %8 = load <2 x double>, <2 x double>* %7, align 8, !dbg !2294, !tbaa !823
  %9 = bitcast double* %a_charge7.us to <2 x double>*, !dbg !2297
  store <2 x double> %8, <2 x double>* %9, align 8, !dbg !2297, !tbaa !823
  %a_bfact.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 8, !dbg !2298
  %a_bfact9.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 8, !dbg !2299
  %10 = bitcast double* %a_bfact.us to <2 x double>*, !dbg !2298
  %11 = load <2 x double>, <2 x double>* %10, align 8, !dbg !2298, !tbaa !823
  %12 = bitcast double* %a_bfact9.us to <2 x double>*, !dbg !2300
  store <2 x double> %11, <2 x double>* %12, align 8, !dbg !2300, !tbaa !823
  %a_int1.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 11, !dbg !2301
  %13 = load i32, i32* %a_int1.us, align 8, !dbg !2301, !tbaa !1802
  %a_int111.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 11, !dbg !2302
  store i32 %13, i32* %a_int111.us, align 8, !dbg !2303, !tbaa !1802
  %a_float1.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 0, i32 12, !dbg !2304
  %a_float112.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %3, i64 %indvars.iv.i.us, i32 12, !dbg !2305
  %14 = bitcast double* %a_float1.us to <2 x double>*, !dbg !2304
  %15 = load <2 x double>, <2 x double>* %14, align 8, !dbg !2304, !tbaa !823
  %16 = bitcast double* %a_float112.us to <2 x double>*, !dbg !2306
  store <2 x double> %15, <2 x double>* %16, align 8, !dbg !2306, !tbaa !823
  %.pre = load i32, i32* @n_atoms, align 4, !dbg !2275, !tbaa !794
  br label %for.inc.us, !dbg !2307

for.inc.us:                                       ; preds = %for.cond.i.us, %if.then6.us
  %17 = phi i32 [ %.pre, %if.then6.us ], [ %4, %for.cond.i.us ], !dbg !2275
  %inc.us = add nuw nsw i32 %a.053.us, 1, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !2260, metadata !DIExpression()), !dbg !2263
  %incdec.ptr.us = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap.054.us, i64 1, !dbg !2309
  call void @llvm.dbg.value(metadata %struct.atom_t* %incdec.ptr.us, metadata !2261, metadata !DIExpression()), !dbg !2263
  %cmp2.us = icmp slt i32 %inc.us, %17, !dbg !2279
  br i1 %cmp2.us, label %for.body3.us, label %cleanup, !dbg !2280, !llvm.loop !2310

for.inc15:                                        ; preds = %for.body
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.051, i64 0, i32 0, !dbg !2312
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2259, metadata !DIExpression()), !dbg !2263
  %res.0 = load %struct.residue_t*, %struct.residue_t** %r_next, align 8, !dbg !2266, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0, metadata !2259, metadata !DIExpression()), !dbg !2263
  %tobool.not = icmp eq %struct.residue_t* %res.0, null, !dbg !2267
  br i1 %tobool.not, label %for.end16, label %for.body, !dbg !2267, !llvm.loop !2313

for.end16:                                        ; preds = %for.inc15, %entry
  %rl_name = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 1, !dbg !2315
  %18 = load i8*, i8** %rl_name, align 8, !dbg !2315, !tbaa !305
  %call17 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef %18) #14, !dbg !2316
  %call18 = tail call i32 @rt_errormsg_s(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2317
  br label %cleanup, !dbg !2318

cleanup:                                          ; preds = %for.inc.us, %for.body3.lr.ph, %for.cond1.preheader, %for.end16
  ret void, !dbg !2319
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addchi2reslib(%struct.reslib_t* nocapture noundef readonly %rlp) unnamed_addr #0 !dbg !2320 {
entry:
  %pos = alloca [4 x [3 x double]], align 16
  %dvol = alloca [4 x [3 x double]], align 16
  %vol = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.reslib_t* %rlp, metadata !2322, metadata !DIExpression()), !dbg !2332
  %0 = bitcast [4 x [3 x double]]* %pos to i8*, !dbg !2333
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #14, !dbg !2333
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %pos, metadata !2328, metadata !DIExpression()), !dbg !2334
  %1 = bitcast [4 x [3 x double]]* %dvol to i8*, !dbg !2335
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #14, !dbg !2335
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %dvol, metadata !2330, metadata !DIExpression()), !dbg !2336
  %2 = bitcast double* %vol to i8*, !dbg !2337
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14, !dbg !2337
  %rl_rlist = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 4, !dbg !2338
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2323, metadata !DIExpression()), !dbg !2332
  %res.087 = load %struct.residue_t*, %struct.residue_t** %rl_rlist, align 8, !dbg !2340, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.087, metadata !2323, metadata !DIExpression()), !dbg !2332
  %tobool.not88 = icmp eq %struct.residue_t* %res.087, null, !dbg !2341
  br i1 %tobool.not88, label %for.end48, label %for.body, !dbg !2341

for.body:                                         ; preds = %entry, %for.inc47
  %res.089 = phi %struct.residue_t* [ %res.0, %for.inc47 ], [ %res.087, %entry ]
  %r_resname = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.089, i64 0, i32 4, !dbg !2342
  %3 = load i8*, i8** %r_resname, align 8, !dbg !2342, !tbaa !1220
  %call = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #15, !dbg !2346
  %tobool1.not = icmp eq i32 %call, 0, !dbg !2346
  br i1 %tobool1.not, label %if.then, label %for.inc47, !dbg !2347

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* @n_chi, align 4, !dbg !2348, !tbaa !794
  %conv = sext i32 %4 to i64, !dbg !2348
  %mul = mul nsw i64 %conv, 24, !dbg !2351
  %call2 = tail call noalias i8* @malloc(i64 noundef %mul) #14, !dbg !2352
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2324, metadata !DIExpression()), !dbg !2332
  %cmp = icmp eq i8* %call2, null, !dbg !2353
  br i1 %cmp, label %if.then4, label %if.end, !dbg !2354

if.then4:                                         ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2355, !tbaa !296
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* noundef %3) #16, !dbg !2357
  br label %cleanup, !dbg !2358

if.end:                                           ; preds = %if.then
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2324, metadata !DIExpression()), !dbg !2332
  %r_nchiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.089, i64 0, i32 13, !dbg !2359
  store i32 %4, i32* %r_nchiral, align 8, !dbg !2360, !tbaa !1587
  %r_chiral = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.089, i64 0, i32 14, !dbg !2361
  %6 = bitcast %struct.chiral_t** %r_chiral to i8**, !dbg !2362
  store i8* %call2, i8** %6, align 8, !dbg !2362, !tbaa !1685
  call void @llvm.dbg.value(metadata i32 0, metadata !2326, metadata !DIExpression()), !dbg !2332
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.089, i64 0, i32 17
  %7 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 0, i64 0
  %8 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %dvol, i64 0, i64 0, i64 0
  call void @llvm.dbg.value(metadata i32 0, metadata !2326, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2324, metadata !DIExpression()), !dbg !2332
  %cmp891 = icmp sgt i32 %4, 0, !dbg !2363
  br i1 %cmp891, label %for.cond11.preheader.preheader, label %cleanup, !dbg !2366

for.cond11.preheader.preheader:                   ; preds = %if.end
  %9 = bitcast i8* %call2 to %struct.chiral_t*, !dbg !2367
  call void @llvm.dbg.value(metadata %struct.chiral_t* %9, metadata !2324, metadata !DIExpression()), !dbg !2332
  %arrayidx33 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 0, i64 1
  %arrayidx41 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 0, i64 2
  %arrayidx25.1 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 1, i64 0
  %arrayidx33.1 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 1, i64 1
  %arrayidx41.1 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 1, i64 2
  %arrayidx25.2 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 2, i64 0
  %arrayidx33.2 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 2, i64 1
  %arrayidx41.2 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 2, i64 2
  %arrayidx25.3 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 3, i64 0
  %arrayidx33.3 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 3, i64 1
  %arrayidx41.3 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %pos, i64 0, i64 3, i64 2
  br label %for.cond11.preheader, !dbg !2366

for.cond11.preheader:                             ; preds = %for.cond11.preheader.preheader, %for.cond11.preheader
  %indvars.iv = phi i64 [ 0, %for.cond11.preheader.preheader ], [ %indvars.iv.next, %for.cond11.preheader ]
  %cp.092 = phi %struct.chiral_t* [ %9, %for.cond11.preheader.preheader ], [ %incdec.ptr, %for.cond11.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2326, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata %struct.chiral_t* %cp.092, metadata !2324, metadata !DIExpression()), !dbg !2332
  %10 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !tbaa !1255
  call void @llvm.dbg.value(metadata i32 0, metadata !2325, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 0, metadata !2325, metadata !DIExpression()), !dbg !2332
  %arrayidx16 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %indvars.iv, i32 0, i64 0, !dbg !2368
  %11 = load i32, i32* %arrayidx16, align 8, !dbg !2368, !tbaa !794
  %arrayidx19 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.092, i64 0, i32 0, i64 0, !dbg !2373
  store i32 %11, i32* %arrayidx19, align 4, !dbg !2374, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %11, metadata !2327, metadata !DIExpression()), !dbg !2332
  %idxprom20 = sext i32 %11 to i64, !dbg !2375
  %arrayidx22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20, i32 17, i64 0, !dbg !2375
  %12 = load double, double* %arrayidx22, align 8, !dbg !2375, !tbaa !823
  store double %12, double* %7, align 16, !dbg !2376, !tbaa !823
  %arrayidx30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20, i32 17, i64 1, !dbg !2377
  %13 = load double, double* %arrayidx30, align 8, !dbg !2377, !tbaa !823
  store double %13, double* %arrayidx33, align 8, !dbg !2378, !tbaa !823
  %arrayidx38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20, i32 17, i64 2, !dbg !2379
  %14 = load double, double* %arrayidx38, align 8, !dbg !2379, !tbaa !823
  store double %14, double* %arrayidx41, align 16, !dbg !2380, !tbaa !823
  call void @llvm.dbg.value(metadata i64 1, metadata !2325, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 1, metadata !2325, metadata !DIExpression()), !dbg !2332
  %arrayidx16.1 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %indvars.iv, i32 0, i64 1, !dbg !2368
  %15 = load i32, i32* %arrayidx16.1, align 4, !dbg !2368, !tbaa !794
  %arrayidx19.1 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.092, i64 0, i32 0, i64 1, !dbg !2373
  store i32 %15, i32* %arrayidx19.1, align 4, !dbg !2374, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %15, metadata !2327, metadata !DIExpression()), !dbg !2332
  %idxprom20.1 = sext i32 %15 to i64, !dbg !2375
  %arrayidx22.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20.1, i32 17, i64 0, !dbg !2375
  %16 = load double, double* %arrayidx22.1, align 8, !dbg !2375, !tbaa !823
  store double %16, double* %arrayidx25.1, align 8, !dbg !2376, !tbaa !823
  %arrayidx30.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20.1, i32 17, i64 1, !dbg !2377
  %17 = load double, double* %arrayidx30.1, align 8, !dbg !2377, !tbaa !823
  store double %17, double* %arrayidx33.1, align 16, !dbg !2378, !tbaa !823
  %arrayidx38.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20.1, i32 17, i64 2, !dbg !2379
  %18 = load double, double* %arrayidx38.1, align 8, !dbg !2379, !tbaa !823
  store double %18, double* %arrayidx41.1, align 8, !dbg !2380, !tbaa !823
  call void @llvm.dbg.value(metadata i64 2, metadata !2325, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 2, metadata !2325, metadata !DIExpression()), !dbg !2332
  %arrayidx16.2 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %indvars.iv, i32 0, i64 2, !dbg !2368
  %19 = load i32, i32* %arrayidx16.2, align 8, !dbg !2368, !tbaa !794
  %arrayidx19.2 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.092, i64 0, i32 0, i64 2, !dbg !2373
  store i32 %19, i32* %arrayidx19.2, align 4, !dbg !2374, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %19, metadata !2327, metadata !DIExpression()), !dbg !2332
  %idxprom20.2 = sext i32 %19 to i64, !dbg !2375
  %arrayidx22.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20.2, i32 17, i64 0, !dbg !2375
  %20 = load double, double* %arrayidx22.2, align 8, !dbg !2375, !tbaa !823
  store double %20, double* %arrayidx25.2, align 16, !dbg !2376, !tbaa !823
  %arrayidx30.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20.2, i32 17, i64 1, !dbg !2377
  %21 = load double, double* %arrayidx30.2, align 8, !dbg !2377, !tbaa !823
  store double %21, double* %arrayidx33.2, align 8, !dbg !2378, !tbaa !823
  %arrayidx38.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20.2, i32 17, i64 2, !dbg !2379
  %22 = load double, double* %arrayidx38.2, align 8, !dbg !2379, !tbaa !823
  store double %22, double* %arrayidx41.2, align 16, !dbg !2380, !tbaa !823
  call void @llvm.dbg.value(metadata i64 3, metadata !2325, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 3, metadata !2325, metadata !DIExpression()), !dbg !2332
  %arrayidx16.3 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %indvars.iv, i32 0, i64 3, !dbg !2368
  %23 = load i32, i32* %arrayidx16.3, align 4, !dbg !2368, !tbaa !794
  %arrayidx19.3 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.092, i64 0, i32 0, i64 3, !dbg !2373
  store i32 %23, i32* %arrayidx19.3, align 4, !dbg !2374, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %23, metadata !2327, metadata !DIExpression()), !dbg !2332
  %idxprom20.3 = sext i32 %23 to i64, !dbg !2375
  %arrayidx22.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20.3, i32 17, i64 0, !dbg !2375
  %24 = load double, double* %arrayidx22.3, align 8, !dbg !2375, !tbaa !823
  store double %24, double* %arrayidx25.3, align 8, !dbg !2376, !tbaa !823
  %arrayidx30.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20.3, i32 17, i64 1, !dbg !2377
  %25 = load double, double* %arrayidx30.3, align 8, !dbg !2377, !tbaa !823
  store double %25, double* %arrayidx33.3, align 16, !dbg !2378, !tbaa !823
  %arrayidx38.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i64 %idxprom20.3, i32 17, i64 2, !dbg !2379
  %26 = load double, double* %arrayidx38.3, align 8, !dbg !2379, !tbaa !823
  store double %26, double* %arrayidx41.3, align 8, !dbg !2380, !tbaa !823
  call void @llvm.dbg.value(metadata i64 4, metadata !2325, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata double* %vol, metadata !2331, metadata !DIExpression(DW_OP_deref)), !dbg !2332
  call void @chirvol(i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, double* noundef nonnull %7, double* noundef nonnull %8, double* noundef nonnull %vol) #14, !dbg !2381
  %27 = load double, double* %vol, align 8, !dbg !2382, !tbaa !823
  call void @llvm.dbg.value(metadata double %27, metadata !2331, metadata !DIExpression()), !dbg !2332
  %c_dist = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.092, i64 0, i32 1, !dbg !2383
  store double %27, double* %c_dist, align 8, !dbg !2384, !tbaa !1332
  %incdec.ptr = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %cp.092, i64 1, !dbg !2385
  call void @llvm.dbg.value(metadata %struct.chiral_t* %incdec.ptr, metadata !2324, metadata !DIExpression()), !dbg !2332
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2326, metadata !DIExpression()), !dbg !2332
  %28 = load i32, i32* @n_chi, align 4, !dbg !2387, !tbaa !794
  %29 = sext i32 %28 to i64, !dbg !2363
  %cmp8 = icmp slt i64 %indvars.iv.next, %29, !dbg !2363
  br i1 %cmp8, label %for.cond11.preheader, label %cleanup, !dbg !2366, !llvm.loop !2388

for.inc47:                                        ; preds = %for.body
  %r_next = getelementptr inbounds %struct.residue_t, %struct.residue_t* %res.089, i64 0, i32 0, !dbg !2390
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2323, metadata !DIExpression()), !dbg !2332
  %res.0 = load %struct.residue_t*, %struct.residue_t** %r_next, align 8, !dbg !2340, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.residue_t* %res.0, metadata !2323, metadata !DIExpression()), !dbg !2332
  %tobool.not = icmp eq %struct.residue_t* %res.0, null, !dbg !2341
  br i1 %tobool.not, label %for.end48, label %for.body, !dbg !2341, !llvm.loop !2391

for.end48:                                        ; preds = %for.inc47, %entry
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2393, !tbaa !296
  %31 = load i8*, i8** inttoptr (i64 24 to i8**), align 8, !dbg !2394, !tbaa !1220
  %rl_name = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %rlp, i64 0, i32 1, !dbg !2395
  %32 = load i8*, i8** %rl_name, align 8, !dbg !2395, !tbaa !305
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* noundef %31, i8* noundef %32) #16, !dbg !2396
  br label %cleanup, !dbg !2397

cleanup:                                          ; preds = %for.cond11.preheader, %if.end, %for.end48, %if.then4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14, !dbg !2397
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #14, !dbg !2397
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #14, !dbg !2397
  ret void, !dbg !2397
}

declare !dbg !2398 dso_local void @chirvol(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double* noundef, double* noundef, double* noundef) local_unnamed_addr #7

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
!312 = distinct !{!312, !300, !313, !314}
!313 = !DILocation(line: 430, column: 2, scope: !295, inlinedAt: !292)
!314 = !{!"llvm.loop.mustprogress"}
!315 = !DILocation(line: 84, column: 15, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !225, line: 84, column: 7)
!317 = distinct !DILexicalBlock(scope: !293, file: !225, line: 83, column: 48)
!318 = !DILocation(line: 84, column: 39, scope: !316)
!319 = !DILocation(line: 84, column: 7, scope: !317)
!320 = !DILocation(line: 85, column: 13, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !225, line: 84, column: 48)
!322 = !DILocation(line: 85, column: 4, scope: !321)
!323 = !DILocation(line: 87, column: 4, scope: !321)
!324 = !DILocation(line: 0, scope: !293)
!325 = !DILocation(line: 90, column: 11, scope: !326)
!326 = distinct !DILexicalBlock(scope: !276, file: !225, line: 90, column: 6)
!327 = !{!306, !307, i64 16}
!328 = !DILocation(line: 90, column: 6, scope: !276)
!329 = !DILocation(line: 0, scope: !326)
!330 = !DILocation(line: 101, column: 1, scope: !276)
!331 = distinct !DISubprogram(name: "read_reslib", scope: !225, file: !225, line: 434, type: !287, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !332)
!332 = !{!333, !334, !394, !395, !396, !397, !398}
!333 = !DILocalVariable(name: "reslib", arg: 1, scope: !331, file: !225, line: 434, type: !220)
!334 = !DILocalVariable(name: "pfp", scope: !331, file: !225, line: 436, type: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !337, line: 7, baseType: !338)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !339, line: 49, size: 1728, elements: !340)
!339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !356, !358, !359, !360, !364, !366, !368, !372, !375, !377, !380, !383, !384, !385, !389, !390}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !338, file: !339, line: 51, baseType: !15, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !338, file: !339, line: 54, baseType: !220, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !338, file: !339, line: 55, baseType: !220, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !338, file: !339, line: 56, baseType: !220, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !338, file: !339, line: 57, baseType: !220, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !338, file: !339, line: 58, baseType: !220, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !338, file: !339, line: 59, baseType: !220, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !338, file: !339, line: 60, baseType: !220, size: 64, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !338, file: !339, line: 61, baseType: !220, size: 64, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !338, file: !339, line: 64, baseType: !220, size: 64, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !338, file: !339, line: 65, baseType: !220, size: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !338, file: !339, line: 66, baseType: !220, size: 64, offset: 704)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !338, file: !339, line: 68, baseType: !354, size: 64, offset: 768)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !339, line: 36, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !338, file: !339, line: 70, baseType: !357, size: 64, offset: 832)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !338, file: !339, line: 72, baseType: !15, size: 32, offset: 896)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !338, file: !339, line: 73, baseType: !15, size: 32, offset: 928)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !338, file: !339, line: 74, baseType: !361, size: 64, offset: 960)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !362, line: 152, baseType: !363)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!363 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !338, file: !339, line: 77, baseType: !365, size: 16, offset: 1024)
!365 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !338, file: !339, line: 78, baseType: !367, size: 8, offset: 1040)
!367 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !338, file: !339, line: 79, baseType: !369, size: 8, offset: 1048)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 1)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !338, file: !339, line: 81, baseType: !373, size: 64, offset: 1088)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !339, line: 43, baseType: null)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !338, file: !339, line: 89, baseType: !376, size: 64, offset: 1152)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !362, line: 153, baseType: !363)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !338, file: !339, line: 91, baseType: !378, size: 64, offset: 1216)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !339, line: 37, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !338, file: !339, line: 92, baseType: !381, size: 64, offset: 1280)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !339, line: 38, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !338, file: !339, line: 93, baseType: !357, size: 64, offset: 1344)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !338, file: !339, line: 94, baseType: !5, size: 64, offset: 1408)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !338, file: !339, line: 95, baseType: !386, size: 64, offset: 1472)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !387, line: 46, baseType: !388)
!387 = !DIFile(filename: "llvm-project/build/lib/clang/14.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/Research/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!388 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !338, file: !339, line: 96, baseType: !15, size: 32, offset: 1536)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !338, file: !339, line: 98, baseType: !391, size: 160, offset: 1568)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 20)
!394 = !DILocalVariable(name: "bfp", scope: !331, file: !225, line: 437, type: !335)
!395 = !DILocalVariable(name: "qfp", scope: !331, file: !225, line: 438, type: !335)
!396 = !DILocalVariable(name: "cfp", scope: !331, file: !225, line: 439, type: !335)
!397 = !DILocalVariable(name: "rlp", scope: !331, file: !225, line: 440, type: !223)
!398 = !DILocalVariable(name: "offname", scope: !331, file: !225, line: 441, type: !267)
!399 = !DILocation(line: 0, scope: !331)
!400 = !DILocation(line: 441, column: 2, scope: !331)
!401 = !DILocation(line: 441, column: 7, scope: !331)
!402 = !DILocalVariable(name: "reslib", arg: 1, scope: !403, file: !225, line: 492, type: !220)
!403 = distinct !DISubprogram(name: "read_reslib_header", scope: !225, file: !225, line: 492, type: !404, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!404 = !DISubroutineType(types: !405)
!405 = !{!223, !220, !406, !406, !406, !406, !220}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!407 = !{!402, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !422, !423, !427, !428, !429}
!408 = !DILocalVariable(name: "pfp", arg: 2, scope: !403, file: !225, line: 493, type: !406)
!409 = !DILocalVariable(name: "bfp", arg: 3, scope: !403, file: !225, line: 493, type: !406)
!410 = !DILocalVariable(name: "qfp", arg: 4, scope: !403, file: !225, line: 493, type: !406)
!411 = !DILocalVariable(name: "cfp", arg: 5, scope: !403, file: !225, line: 493, type: !406)
!412 = !DILocalVariable(name: "offname", arg: 6, scope: !403, file: !225, line: 493, type: !220)
!413 = !DILocalVariable(name: "rfp", scope: !403, file: !225, line: 495, type: !335)
!414 = !DILocalVariable(name: "rlp", scope: !403, file: !225, line: 496, type: !223)
!415 = !DILocalVariable(name: "nw", scope: !403, file: !225, line: 497, type: !15)
!416 = !DILocalVariable(name: "nsize", scope: !403, file: !225, line: 497, type: !15)
!417 = !DILocalVariable(name: "np", scope: !403, file: !225, line: 498, type: !220)
!418 = !DILocalVariable(name: "line", scope: !403, file: !225, line: 499, type: !419)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 128)
!422 = !DILocalVariable(name: "keyword", scope: !403, file: !225, line: 499, type: !391)
!423 = !DILocalVariable(name: "value", scope: !403, file: !225, line: 499, type: !424)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 800, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 100)
!427 = !DILocalVariable(name: "newname", scope: !403, file: !225, line: 499, type: !424)
!428 = !DILocalVariable(name: "fname", scope: !403, file: !225, line: 500, type: !267)
!429 = !DILabel(scope: !403, name: "clean_up", file: !225, line: 621)
!430 = !DILocation(line: 0, scope: !403, inlinedAt: !431)
!431 = distinct !DILocation(line: 443, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !331, file: !225, line: 443, column: 6)
!433 = !DILocation(line: 499, column: 2, scope: !403, inlinedAt: !431)
!434 = !DILocation(line: 499, column: 7, scope: !403, inlinedAt: !431)
!435 = !DILocation(line: 499, column: 20, scope: !403, inlinedAt: !431)
!436 = !DILocation(line: 499, column: 35, scope: !403, inlinedAt: !431)
!437 = !DILocation(line: 499, column: 49, scope: !403, inlinedAt: !431)
!438 = !DILocation(line: 500, column: 2, scope: !403, inlinedAt: !431)
!439 = !DILocation(line: 500, column: 7, scope: !403, inlinedAt: !431)
!440 = !DILocation(line: 502, column: 6, scope: !441, inlinedAt: !431)
!441 = distinct !DILexicalBlock(scope: !403, file: !225, line: 502, column: 6)
!442 = !DILocation(line: 502, column: 31, scope: !441, inlinedAt: !431)
!443 = !DILocation(line: 502, column: 6, scope: !403, inlinedAt: !431)
!444 = !DILocation(line: 503, column: 3, scope: !445, inlinedAt: !431)
!445 = distinct !DILexicalBlock(scope: !441, file: !225, line: 502, column: 40)
!446 = !DILocalVariable(name: "sname", arg: 1, scope: !447, file: !225, line: 637, type: !220)
!447 = distinct !DISubprogram(name: "mk_fname", scope: !225, file: !225, line: 637, type: !448, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !220, !220}
!450 = !{!446, !451}
!451 = !DILocalVariable(name: "fname", arg: 2, scope: !447, file: !225, line: 637, type: !220)
!452 = !DILocation(line: 0, scope: !447, inlinedAt: !453)
!453 = distinct !DILocation(line: 504, column: 3, scope: !445, inlinedAt: !431)
!454 = !DILocation(line: 640, column: 6, scope: !455, inlinedAt: !453)
!455 = distinct !DILexicalBlock(scope: !447, file: !225, line: 640, column: 6)
!456 = !{!298, !298, i64 0}
!457 = !DILocation(line: 640, column: 13, scope: !455, inlinedAt: !453)
!458 = !DILocation(line: 640, column: 20, scope: !455, inlinedAt: !453)
!459 = !DILocation(line: 642, column: 3, scope: !455, inlinedAt: !453)
!460 = !DILocation(line: 644, column: 3, scope: !455, inlinedAt: !453)
!461 = !DILocation(line: 505, column: 15, scope: !462, inlinedAt: !431)
!462 = distinct !DILexicalBlock(scope: !445, file: !225, line: 505, column: 7)
!463 = !DILocation(line: 505, column: 37, scope: !462, inlinedAt: !431)
!464 = !DILocation(line: 505, column: 7, scope: !445, inlinedAt: !431)
!465 = !DILocation(line: 506, column: 4, scope: !466, inlinedAt: !431)
!466 = distinct !DILexicalBlock(scope: !462, file: !225, line: 505, column: 46)
!467 = !DILocation(line: 507, column: 4, scope: !466, inlinedAt: !431)
!468 = !DILocation(line: 0, scope: !447, inlinedAt: !469)
!469 = distinct !DILocation(line: 510, column: 3, scope: !470, inlinedAt: !431)
!470 = distinct !DILexicalBlock(scope: !441, file: !225, line: 509, column: 7)
!471 = !DILocation(line: 640, column: 6, scope: !455, inlinedAt: !469)
!472 = !DILocation(line: 640, column: 13, scope: !455, inlinedAt: !469)
!473 = !DILocation(line: 640, column: 20, scope: !455, inlinedAt: !469)
!474 = !DILocation(line: 641, column: 4, scope: !455, inlinedAt: !469)
!475 = !DILocation(line: 640, column: 6, scope: !447, inlinedAt: !469)
!476 = !DILocation(line: 642, column: 3, scope: !455, inlinedAt: !469)
!477 = !DILocation(line: 644, column: 3, scope: !455, inlinedAt: !469)
!478 = !DILocation(line: 511, column: 15, scope: !479, inlinedAt: !431)
!479 = distinct !DILexicalBlock(scope: !470, file: !225, line: 511, column: 7)
!480 = !DILocation(line: 511, column: 37, scope: !479, inlinedAt: !431)
!481 = !DILocation(line: 511, column: 7, scope: !470, inlinedAt: !431)
!482 = !DILocation(line: 512, column: 4, scope: !483, inlinedAt: !431)
!483 = distinct !DILexicalBlock(scope: !479, file: !225, line: 511, column: 46)
!484 = !DILocation(line: 513, column: 4, scope: !483, inlinedAt: !431)
!485 = !DILocation(line: 0, scope: !441, inlinedAt: !431)
!486 = !DILocation(line: 517, column: 28, scope: !487, inlinedAt: !431)
!487 = distinct !DILexicalBlock(scope: !403, file: !225, line: 517, column: 6)
!488 = !DILocation(line: 517, column: 14, scope: !487, inlinedAt: !431)
!489 = !DILocation(line: 517, column: 59, scope: !487, inlinedAt: !431)
!490 = !DILocation(line: 517, column: 6, scope: !403, inlinedAt: !431)
!491 = !DILocation(line: 518, column: 3, scope: !492, inlinedAt: !431)
!492 = distinct !DILexicalBlock(scope: !487, file: !225, line: 517, column: 68)
!493 = !DILocation(line: 519, column: 3, scope: !492, inlinedAt: !431)
!494 = !DILocation(line: 520, column: 3, scope: !492, inlinedAt: !431)
!495 = !DILocation(line: 523, column: 10, scope: !403, inlinedAt: !431)
!496 = !DILocation(line: 524, column: 31, scope: !497, inlinedAt: !431)
!497 = distinct !DILexicalBlock(scope: !403, file: !225, line: 524, column: 6)
!498 = !DILocation(line: 524, column: 23, scope: !497, inlinedAt: !431)
!499 = !DILocation(line: 524, column: 58, scope: !497, inlinedAt: !431)
!500 = !DILocation(line: 524, column: 6, scope: !403, inlinedAt: !431)
!501 = !DILocation(line: 525, column: 3, scope: !502, inlinedAt: !431)
!502 = distinct !DILexicalBlock(scope: !497, file: !225, line: 524, column: 67)
!503 = !DILocation(line: 526, column: 3, scope: !502, inlinedAt: !431)
!504 = !DILocation(line: 527, column: 3, scope: !502, inlinedAt: !431)
!505 = !DILocation(line: 529, column: 2, scope: !403, inlinedAt: !431)
!506 = !DILocation(line: 530, column: 17, scope: !403, inlinedAt: !431)
!507 = !DILocation(line: 530, column: 7, scope: !403, inlinedAt: !431)
!508 = !DILocation(line: 530, column: 15, scope: !403, inlinedAt: !431)
!509 = !{!306, !297, i64 0}
!510 = !DILocation(line: 531, column: 10, scope: !403, inlinedAt: !431)
!511 = !DILocation(line: 532, column: 7, scope: !403, inlinedAt: !431)
!512 = !DILocation(line: 532, column: 15, scope: !403, inlinedAt: !431)
!513 = !DILocation(line: 533, column: 7, scope: !403, inlinedAt: !431)
!514 = !DILocation(line: 534, column: 7, scope: !403, inlinedAt: !431)
!515 = !DILocation(line: 537, column: 7, scope: !403, inlinedAt: !431)
!516 = !DILocation(line: 534, column: 21, scope: !403, inlinedAt: !431)
!517 = !DILocation(line: 541, column: 11, scope: !403, inlinedAt: !431)
!518 = !DILocation(line: 543, column: 7, scope: !519, inlinedAt: !431)
!519 = distinct !DILexicalBlock(scope: !403, file: !225, line: 543, column: 7)
!520 = !DILocation(line: 543, column: 32, scope: !519, inlinedAt: !431)
!521 = !DILocation(line: 543, column: 7, scope: !403, inlinedAt: !431)
!522 = !DILocation(line: 544, column: 10, scope: !523, inlinedAt: !431)
!523 = distinct !DILexicalBlock(scope: !519, file: !225, line: 543, column: 41)
!524 = !DILocation(line: 544, column: 3, scope: !523, inlinedAt: !431)
!525 = !DILocation(line: 621, column: 1, scope: !403, inlinedAt: !431)
!526 = !DILocation(line: 622, column: 2, scope: !403, inlinedAt: !431)
!527 = !DILocation(line: 635, column: 1, scope: !403, inlinedAt: !431)
!528 = !DILocation(line: 443, column: 6, scope: !331)
!529 = !DILocation(line: 538, column: 7, scope: !403, inlinedAt: !431)
!530 = !DILocation(line: 539, column: 7, scope: !403, inlinedAt: !431)
!531 = !DILocation(line: 540, column: 7, scope: !403, inlinedAt: !431)
!532 = !DILocation(line: 545, column: 8, scope: !533, inlinedAt: !431)
!533 = distinct !DILexicalBlock(scope: !534, file: !225, line: 545, column: 8)
!534 = distinct !DILexicalBlock(scope: !523, file: !225, line: 544, column: 46)
!535 = !DILocation(line: 545, column: 14, scope: !533, inlinedAt: !431)
!536 = !DILocation(line: 545, column: 8, scope: !534, inlinedAt: !431)
!537 = !DILocation(line: 547, column: 15, scope: !538, inlinedAt: !431)
!538 = distinct !DILexicalBlock(scope: !534, file: !225, line: 547, column: 8)
!539 = !DILocation(line: 547, column: 8, scope: !534, inlinedAt: !431)
!540 = !DILocation(line: 554, column: 14, scope: !541, inlinedAt: !431)
!541 = distinct !DILexicalBlock(scope: !542, file: !225, line: 554, column: 14)
!542 = distinct !DILexicalBlock(scope: !538, file: !225, line: 551, column: 14)
!543 = !DILocation(line: 554, column: 40, scope: !541, inlinedAt: !431)
!544 = !DILocation(line: 554, column: 14, scope: !542, inlinedAt: !431)
!545 = !DILocation(line: 555, column: 9, scope: !546, inlinedAt: !431)
!546 = distinct !DILexicalBlock(scope: !547, file: !225, line: 555, column: 9)
!547 = distinct !DILexicalBlock(scope: !541, file: !225, line: 554, column: 46)
!548 = !DILocation(line: 555, column: 9, scope: !547, inlinedAt: !431)
!549 = !DILocation(line: 556, column: 21, scope: !546, inlinedAt: !431)
!550 = !DILocation(line: 556, column: 6, scope: !546, inlinedAt: !431)
!551 = !DILocation(line: 558, column: 21, scope: !552, inlinedAt: !431)
!552 = distinct !DILexicalBlock(scope: !546, file: !225, line: 557, column: 14)
!553 = !DILocation(line: 558, column: 6, scope: !552, inlinedAt: !431)
!554 = !DILocation(line: 559, column: 14, scope: !555, inlinedAt: !431)
!555 = distinct !DILexicalBlock(scope: !552, file: !225, line: 559, column: 14)
!556 = !DILocation(line: 559, column: 36, scope: !555, inlinedAt: !431)
!557 = !DILocation(line: 559, column: 14, scope: !552, inlinedAt: !431)
!558 = !DILocation(line: 560, column: 21, scope: !555, inlinedAt: !431)
!559 = !DILocation(line: 565, column: 14, scope: !560, inlinedAt: !431)
!560 = distinct !DILexicalBlock(scope: !541, file: !225, line: 565, column: 14)
!561 = !DILocation(line: 565, column: 44, scope: !560, inlinedAt: !431)
!562 = !DILocation(line: 565, column: 14, scope: !541, inlinedAt: !431)
!563 = !DILocation(line: 566, column: 9, scope: !564, inlinedAt: !431)
!564 = distinct !DILexicalBlock(scope: !565, file: !225, line: 566, column: 9)
!565 = distinct !DILexicalBlock(scope: !560, file: !225, line: 565, column: 50)
!566 = !DILocation(line: 566, column: 35, scope: !564, inlinedAt: !431)
!567 = !DILocation(line: 566, column: 9, scope: !565, inlinedAt: !431)
!568 = !DILocation(line: 567, column: 25, scope: !564, inlinedAt: !431)
!569 = !{!306, !307, i64 20}
!570 = !DILocation(line: 567, column: 6, scope: !564, inlinedAt: !431)
!571 = !DILocation(line: 568, column: 14, scope: !572, inlinedAt: !431)
!572 = distinct !DILexicalBlock(scope: !564, file: !225, line: 568, column: 14)
!573 = !DILocation(line: 568, column: 14, scope: !564, inlinedAt: !431)
!574 = !DILocation(line: 569, column: 25, scope: !572, inlinedAt: !431)
!575 = !DILocation(line: 574, column: 14, scope: !576, inlinedAt: !431)
!576 = distinct !DILexicalBlock(scope: !560, file: !225, line: 574, column: 14)
!577 = !DILocation(line: 574, column: 14, scope: !560, inlinedAt: !431)
!578 = !DILocation(line: 0, scope: !447, inlinedAt: !579)
!579 = distinct !DILocation(line: 575, column: 5, scope: !580, inlinedAt: !431)
!580 = distinct !DILexicalBlock(scope: !576, file: !225, line: 574, column: 45)
!581 = !DILocation(line: 640, column: 6, scope: !455, inlinedAt: !579)
!582 = !DILocation(line: 640, column: 13, scope: !455, inlinedAt: !579)
!583 = !DILocation(line: 640, column: 20, scope: !455, inlinedAt: !579)
!584 = !DILocation(line: 642, column: 3, scope: !455, inlinedAt: !579)
!585 = !DILocation(line: 644, column: 3, scope: !455, inlinedAt: !579)
!586 = !DILocation(line: 0, scope: !447, inlinedAt: !587)
!587 = distinct !DILocation(line: 577, column: 5, scope: !588, inlinedAt: !431)
!588 = distinct !DILexicalBlock(scope: !589, file: !225, line: 576, column: 45)
!589 = distinct !DILexicalBlock(scope: !576, file: !225, line: 576, column: 14)
!590 = !DILocation(line: 640, column: 6, scope: !455, inlinedAt: !587)
!591 = !DILocation(line: 640, column: 13, scope: !455, inlinedAt: !587)
!592 = !DILocation(line: 640, column: 20, scope: !455, inlinedAt: !587)
!593 = !DILocation(line: 642, column: 3, scope: !455, inlinedAt: !587)
!594 = !DILocation(line: 644, column: 3, scope: !455, inlinedAt: !587)
!595 = !DILocation(line: 578, column: 18, scope: !596, inlinedAt: !431)
!596 = distinct !DILexicalBlock(scope: !588, file: !225, line: 578, column: 9)
!597 = !DILocation(line: 578, column: 40, scope: !596, inlinedAt: !431)
!598 = !DILocation(line: 578, column: 9, scope: !588, inlinedAt: !431)
!599 = !DILocation(line: 0, scope: !447, inlinedAt: !600)
!600 = distinct !DILocation(line: 586, column: 5, scope: !601, inlinedAt: !431)
!601 = distinct !DILexicalBlock(scope: !602, file: !225, line: 585, column: 45)
!602 = distinct !DILexicalBlock(scope: !589, file: !225, line: 585, column: 14)
!603 = !DILocation(line: 640, column: 6, scope: !455, inlinedAt: !600)
!604 = !DILocation(line: 640, column: 13, scope: !455, inlinedAt: !600)
!605 = !DILocation(line: 640, column: 20, scope: !455, inlinedAt: !600)
!606 = !DILocation(line: 642, column: 3, scope: !455, inlinedAt: !600)
!607 = !DILocation(line: 644, column: 3, scope: !455, inlinedAt: !600)
!608 = !DILocation(line: 587, column: 18, scope: !609, inlinedAt: !431)
!609 = distinct !DILexicalBlock(scope: !601, file: !225, line: 587, column: 9)
!610 = !DILocation(line: 587, column: 40, scope: !609, inlinedAt: !431)
!611 = !DILocation(line: 587, column: 9, scope: !601, inlinedAt: !431)
!612 = !DILocation(line: 594, column: 14, scope: !613, inlinedAt: !431)
!613 = distinct !DILexicalBlock(scope: !602, file: !225, line: 594, column: 14)
!614 = !DILocation(line: 594, column: 38, scope: !613, inlinedAt: !431)
!615 = !DILocation(line: 594, column: 14, scope: !602, inlinedAt: !431)
!616 = !DILocation(line: 0, scope: !447, inlinedAt: !617)
!617 = distinct !DILocation(line: 595, column: 5, scope: !618, inlinedAt: !431)
!618 = distinct !DILexicalBlock(scope: !613, file: !225, line: 594, column: 44)
!619 = !DILocation(line: 640, column: 6, scope: !455, inlinedAt: !617)
!620 = !DILocation(line: 640, column: 13, scope: !455, inlinedAt: !617)
!621 = !DILocation(line: 640, column: 20, scope: !455, inlinedAt: !617)
!622 = !DILocation(line: 642, column: 3, scope: !455, inlinedAt: !617)
!623 = !DILocation(line: 644, column: 3, scope: !455, inlinedAt: !617)
!624 = !DILocation(line: 596, column: 18, scope: !625, inlinedAt: !431)
!625 = distinct !DILexicalBlock(scope: !618, file: !225, line: 596, column: 9)
!626 = !DILocation(line: 596, column: 40, scope: !625, inlinedAt: !431)
!627 = !DILocation(line: 596, column: 9, scope: !618, inlinedAt: !431)
!628 = !DILocation(line: 603, column: 14, scope: !629, inlinedAt: !431)
!629 = distinct !DILexicalBlock(scope: !613, file: !225, line: 603, column: 14)
!630 = !DILocation(line: 603, column: 14, scope: !613, inlinedAt: !431)
!631 = !DILocation(line: 0, scope: !447, inlinedAt: !632)
!632 = distinct !DILocation(line: 604, column: 5, scope: !633, inlinedAt: !431)
!633 = distinct !DILexicalBlock(scope: !629, file: !225, line: 603, column: 45)
!634 = !DILocation(line: 640, column: 6, scope: !455, inlinedAt: !632)
!635 = !DILocation(line: 640, column: 13, scope: !455, inlinedAt: !632)
!636 = !DILocation(line: 640, column: 20, scope: !455, inlinedAt: !632)
!637 = !DILocation(line: 642, column: 3, scope: !455, inlinedAt: !632)
!638 = !DILocation(line: 644, column: 3, scope: !455, inlinedAt: !632)
!639 = !DILocation(line: 605, column: 18, scope: !640, inlinedAt: !431)
!640 = distinct !DILexicalBlock(scope: !633, file: !225, line: 605, column: 9)
!641 = !DILocation(line: 605, column: 40, scope: !640, inlinedAt: !431)
!642 = !DILocation(line: 605, column: 9, scope: !633, inlinedAt: !431)
!643 = distinct !{!643, !524, !644, !314}
!644 = !DILocation(line: 616, column: 3, scope: !523, inlinedAt: !431)
!645 = !DILocation(line: 0, scope: !447, inlinedAt: !646)
!646 = distinct !DILocation(line: 618, column: 3, scope: !647, inlinedAt: !431)
!647 = distinct !DILexicalBlock(scope: !519, file: !225, line: 617, column: 7)
!648 = !DILocation(line: 640, column: 6, scope: !455, inlinedAt: !646)
!649 = !DILocation(line: 640, column: 13, scope: !455, inlinedAt: !646)
!650 = !DILocation(line: 640, column: 20, scope: !455, inlinedAt: !646)
!651 = !DILocation(line: 642, column: 3, scope: !455, inlinedAt: !646)
!652 = !DILocation(line: 644, column: 3, scope: !455, inlinedAt: !646)
!653 = !DILocation(line: 0, scope: !589, inlinedAt: !431)
!654 = !DILocation(line: 624, column: 7, scope: !655, inlinedAt: !431)
!655 = distinct !DILexicalBlock(scope: !656, file: !225, line: 624, column: 7)
!656 = distinct !DILexicalBlock(scope: !657, file: !225, line: 623, column: 19)
!657 = distinct !DILexicalBlock(scope: !403, file: !225, line: 623, column: 6)
!658 = !DILocation(line: 624, column: 7, scope: !656, inlinedAt: !431)
!659 = !DILocation(line: 624, column: 14, scope: !655, inlinedAt: !431)
!660 = !DILocation(line: 625, column: 7, scope: !661, inlinedAt: !431)
!661 = distinct !DILexicalBlock(scope: !656, file: !225, line: 625, column: 7)
!662 = !DILocation(line: 625, column: 7, scope: !656, inlinedAt: !431)
!663 = !DILocation(line: 625, column: 14, scope: !661, inlinedAt: !431)
!664 = !DILocation(line: 626, column: 7, scope: !665, inlinedAt: !431)
!665 = distinct !DILexicalBlock(scope: !656, file: !225, line: 626, column: 7)
!666 = !DILocation(line: 626, column: 7, scope: !656, inlinedAt: !431)
!667 = !DILocation(line: 626, column: 14, scope: !665, inlinedAt: !431)
!668 = !DILocation(line: 627, column: 7, scope: !669, inlinedAt: !431)
!669 = distinct !DILexicalBlock(scope: !656, file: !225, line: 627, column: 7)
!670 = !DILocation(line: 627, column: 7, scope: !656, inlinedAt: !431)
!671 = !DILocation(line: 627, column: 14, scope: !669, inlinedAt: !431)
!672 = !DILocation(line: 628, column: 11, scope: !656, inlinedAt: !431)
!673 = !DILocation(line: 629, column: 11, scope: !656, inlinedAt: !431)
!674 = !DILocation(line: 630, column: 3, scope: !656, inlinedAt: !431)
!675 = !DILocation(line: 631, column: 3, scope: !656, inlinedAt: !431)
!676 = !DILocation(line: 632, column: 2, scope: !656, inlinedAt: !431)
!677 = !DILocation(line: 478, column: 7, scope: !678, inlinedAt: !679)
!678 = distinct !DILexicalBlock(scope: !239, file: !225, line: 478, column: 6)
!679 = distinct !DILocation(line: 449, column: 2, scope: !331)
!680 = !DILocation(line: 478, column: 6, scope: !239, inlinedAt: !679)
!681 = !DILocation(line: 480, column: 7, scope: !239, inlinedAt: !679)
!682 = !DILocation(line: 0, scope: !239, inlinedAt: !679)
!683 = !DILocation(line: 481, column: 2, scope: !684, inlinedAt: !679)
!684 = distinct !DILexicalBlock(scope: !239, file: !225, line: 481, column: 2)
!685 = !DILocation(line: 482, column: 3, scope: !686, inlinedAt: !679)
!686 = distinct !DILexicalBlock(scope: !687, file: !225, line: 481, column: 51)
!687 = distinct !DILexicalBlock(scope: !684, file: !225, line: 481, column: 2)
!688 = !DILocation(line: 483, column: 30, scope: !686, inlinedAt: !679)
!689 = !DILocation(line: 483, column: 7, scope: !686, inlinedAt: !679)
!690 = !DILocation(line: 483, column: 18, scope: !686, inlinedAt: !679)
!691 = !{!692, !297, i64 0}
!692 = !{!"atom_t", !297, i64 0, !297, i64 8, !307, i64 16, !307, i64 20, !298, i64 24, !297, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !297, i64 96, !307, i64 104, !693, i64 112, !693, i64 120, !307, i64 128, !307, i64 132, !297, i64 136, !298, i64 144, !693, i64 168}
!693 = !{!"double", !298, i64 0}
!694 = !DILocation(line: 484, column: 22, scope: !695, inlinedAt: !679)
!695 = distinct !DILexicalBlock(scope: !686, file: !225, line: 484, column: 7)
!696 = !DILocation(line: 484, column: 7, scope: !686, inlinedAt: !679)
!697 = !DILocation(line: 485, column: 13, scope: !698, inlinedAt: !679)
!698 = distinct !DILexicalBlock(scope: !695, file: !225, line: 484, column: 31)
!699 = !DILocation(line: 485, column: 4, scope: !698, inlinedAt: !679)
!700 = !DILocation(line: 487, column: 4, scope: !698, inlinedAt: !679)
!701 = !DILocation(line: 481, column: 41, scope: !687, inlinedAt: !679)
!702 = !DILocation(line: 481, column: 47, scope: !687, inlinedAt: !679)
!703 = !DILocation(line: 481, column: 28, scope: !687, inlinedAt: !679)
!704 = distinct !{!704, !683, !705, !314}
!705 = !DILocation(line: 489, column: 2, scope: !684, inlinedAt: !679)
!706 = !DILocation(line: 450, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !331, file: !225, line: 450, column: 7)
!708 = !DILocation(line: 450, column: 7, scope: !331)
!709 = !DILocalVariable(name: "offname", arg: 1, scope: !710, file: !225, line: 647, type: !220)
!710 = distinct !DISubprogram(name: "off2reslib", scope: !225, file: !225, line: 647, type: !711, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !220, !223}
!713 = !{!709, !714, !715, !716, !717, !718, !719, !720, !746, !747, !749, !750, !751, !752, !753, !754, !755, !757, !758, !759, !760, !763, !764, !765}
!714 = !DILocalVariable(name: "rlp", arg: 2, scope: !710, file: !225, line: 647, type: !223)
!715 = !DILocalVariable(name: "ap", scope: !710, file: !225, line: 649, type: !192)
!716 = !DILocalVariable(name: "n_names", scope: !710, file: !225, line: 650, type: !15)
!717 = !DILocalVariable(name: "n_resnames", scope: !710, file: !225, line: 650, type: !15)
!718 = !DILocalVariable(name: "i", scope: !710, file: !225, line: 650, type: !15)
!719 = !DILocalVariable(name: "ires", scope: !710, file: !225, line: 650, type: !15)
!720 = !DILocalVariable(name: "db", scope: !710, file: !225, line: 651, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASE", file: !722, line: 84, baseType: !723)
!722 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/database.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "d8cc1ae4cf951fbe7cfd9585ec1cbb55")
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASEt", file: !722, line: 82, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !722, line: 65, size: 33024, elements: !726)
!726 = !{!727, !728, !729, !731, !732, !733, !737, !739, !740, !741, !743, !744, !745}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "iAccessMode", scope: !725, file: !722, line: 66, baseType: !15, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fDataBase", scope: !725, file: !722, line: 67, baseType: !335, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sFileName", scope: !725, file: !722, line: 68, baseType: !730, size: 2048, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "String", file: !722, line: 48, baseType: !267)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "iOpenMode", scope: !725, file: !722, line: 69, baseType: !15, size: 32, offset: 2176)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefix", scope: !725, file: !722, line: 70, baseType: !15, size: 32, offset: 2208)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "saPrefixStack", scope: !725, file: !722, line: 71, baseType: !734, size: 20480, offset: 2240)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 20480, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 10)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "bCompactFileAtClose", scope: !725, file: !722, line: 72, baseType: !738, size: 8, offset: 22720)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !722, line: 47, baseType: !21)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "dEntries", scope: !725, file: !722, line: 73, baseType: !5, size: 64, offset: 22784)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "iCurrentLine", scope: !725, file: !722, line: 74, baseType: !15, size: 32, offset: 22848)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "sLookAhead", scope: !725, file: !722, line: 75, baseType: !742, size: 8000, offset: 22880)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8000, elements: !248)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "iLastSequentialOperation", scope: !725, file: !722, line: 76, baseType: !15, size: 32, offset: 30880)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sLoopPrefix", scope: !725, file: !722, line: 79, baseType: !730, size: 2048, offset: 30912)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dlEntryLoop", scope: !725, file: !722, line: 80, baseType: !15, size: 32, offset: 32960)
!746 = !DILocalVariable(name: "bresult", scope: !710, file: !225, line: 652, type: !738)
!747 = !DILocalVariable(name: "typex", scope: !710, file: !225, line: 653, type: !748)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 3200, elements: !425)
!749 = !DILocalVariable(name: "resx", scope: !710, file: !225, line: 653, type: !748)
!750 = !DILocalVariable(name: "flags", scope: !710, file: !225, line: 653, type: !748)
!751 = !DILocalVariable(name: "seq", scope: !710, file: !225, line: 654, type: !748)
!752 = !DILocalVariable(name: "elmnt", scope: !710, file: !225, line: 654, type: !748)
!753 = !DILocalVariable(name: "atom1x", scope: !710, file: !225, line: 655, type: !748)
!754 = !DILocalVariable(name: "atom2x", scope: !710, file: !225, line: 655, type: !748)
!755 = !DILocalVariable(name: "chg", scope: !710, file: !225, line: 656, type: !756)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 6400, elements: !425)
!757 = !DILocalVariable(name: "x", scope: !710, file: !225, line: 656, type: !756)
!758 = !DILocalVariable(name: "y", scope: !710, file: !225, line: 656, type: !756)
!759 = !DILocalVariable(name: "z", scope: !710, file: !225, line: 656, type: !756)
!760 = !DILocalVariable(name: "a_name", scope: !710, file: !225, line: 657, type: !761)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8000, elements: !762)
!762 = !{!426, !736}
!763 = !DILocalVariable(name: "type", scope: !710, file: !225, line: 657, type: !761)
!764 = !DILocalVariable(name: "res_name", scope: !710, file: !225, line: 657, type: !761)
!765 = !DILocalVariable(name: "prefix", scope: !710, file: !225, line: 658, type: !766)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2040, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 255)
!769 = !DILocation(line: 0, scope: !710, inlinedAt: !770)
!770 = distinct !DILocation(line: 451, column: 3, scope: !771)
!771 = distinct !DILexicalBlock(scope: !707, file: !225, line: 450, column: 17)
!772 = !DILocation(line: 650, column: 2, scope: !710, inlinedAt: !770)
!773 = !DILocation(line: 653, column: 2, scope: !710, inlinedAt: !770)
!774 = !DILocation(line: 653, column: 6, scope: !710, inlinedAt: !770)
!775 = !DILocation(line: 653, column: 20, scope: !710, inlinedAt: !770)
!776 = !DILocation(line: 653, column: 33, scope: !710, inlinedAt: !770)
!777 = !DILocation(line: 654, column: 3, scope: !710, inlinedAt: !770)
!778 = !DILocation(line: 654, column: 15, scope: !710, inlinedAt: !770)
!779 = !DILocation(line: 655, column: 2, scope: !710, inlinedAt: !770)
!780 = !DILocation(line: 655, column: 6, scope: !710, inlinedAt: !770)
!781 = !DILocation(line: 655, column: 21, scope: !710, inlinedAt: !770)
!782 = !DILocation(line: 656, column: 2, scope: !710, inlinedAt: !770)
!783 = !DILocation(line: 656, column: 9, scope: !710, inlinedAt: !770)
!784 = !DILocation(line: 656, column: 21, scope: !710, inlinedAt: !770)
!785 = !DILocation(line: 656, column: 31, scope: !710, inlinedAt: !770)
!786 = !DILocation(line: 656, column: 41, scope: !710, inlinedAt: !770)
!787 = !DILocation(line: 657, column: 2, scope: !710, inlinedAt: !770)
!788 = !DILocation(line: 657, column: 7, scope: !710, inlinedAt: !770)
!789 = !DILocation(line: 657, column: 28, scope: !710, inlinedAt: !770)
!790 = !DILocation(line: 657, column: 47, scope: !710, inlinedAt: !770)
!791 = !DILocation(line: 658, column: 2, scope: !710, inlinedAt: !770)
!792 = !DILocation(line: 658, column: 7, scope: !710, inlinedAt: !770)
!793 = !DILocation(line: 660, column: 10, scope: !710, inlinedAt: !770)
!794 = !{!307, !307, i64 0}
!795 = !DILocation(line: 661, column: 7, scope: !710, inlinedAt: !770)
!796 = !DILocation(line: 665, column: 52, scope: !710, inlinedAt: !770)
!797 = !DILocation(line: 665, column: 12, scope: !710, inlinedAt: !770)
!798 = !DILocation(line: 667, column: 23, scope: !799, inlinedAt: !770)
!799 = distinct !DILexicalBlock(scope: !800, file: !225, line: 667, column: 2)
!800 = distinct !DILexicalBlock(scope: !710, file: !225, line: 667, column: 2)
!801 = !DILocation(line: 667, column: 21, scope: !799, inlinedAt: !770)
!802 = !DILocation(line: 667, column: 2, scope: !800, inlinedAt: !770)
!803 = !DILocation(line: 671, column: 33, scope: !804, inlinedAt: !770)
!804 = distinct !DILexicalBlock(scope: !799, file: !225, line: 667, column: 43)
!805 = !DILocation(line: 671, column: 3, scope: !804, inlinedAt: !770)
!806 = !DILocation(line: 672, column: 3, scope: !804, inlinedAt: !770)
!807 = !DILocation(line: 673, column: 3, scope: !804, inlinedAt: !770)
!808 = !DILocation(line: 674, column: 13, scope: !804, inlinedAt: !770)
!809 = !DILocation(line: 678, column: 13, scope: !804, inlinedAt: !770)
!810 = !DILocation(line: 699, column: 13, scope: !804, inlinedAt: !770)
!811 = !DILocation(line: 718, column: 18, scope: !812, inlinedAt: !770)
!812 = distinct !DILexicalBlock(scope: !813, file: !225, line: 718, column: 3)
!813 = distinct !DILexicalBlock(scope: !804, file: !225, line: 718, column: 3)
!814 = !DILocation(line: 718, column: 16, scope: !812, inlinedAt: !770)
!815 = !DILocation(line: 718, column: 3, scope: !813, inlinedAt: !770)
!816 = !DILocation(line: 719, column: 10, scope: !817, inlinedAt: !770)
!817 = distinct !DILexicalBlock(scope: !812, file: !225, line: 718, column: 32)
!818 = !DILocation(line: 720, column: 4, scope: !817, inlinedAt: !770)
!819 = !DILocation(line: 721, column: 16, scope: !817, inlinedAt: !770)
!820 = !DILocation(line: 721, column: 28, scope: !817, inlinedAt: !770)
!821 = !DILocation(line: 721, column: 4, scope: !817, inlinedAt: !770)
!822 = !DILocation(line: 722, column: 21, scope: !817, inlinedAt: !770)
!823 = !{!693, !693, i64 0}
!824 = !DILocation(line: 722, column: 8, scope: !817, inlinedAt: !770)
!825 = !DILocation(line: 722, column: 19, scope: !817, inlinedAt: !770)
!826 = !{!692, !693, i64 64}
!827 = !DILocation(line: 723, column: 21, scope: !817, inlinedAt: !770)
!828 = !DILocation(line: 723, column: 4, scope: !817, inlinedAt: !770)
!829 = !DILocation(line: 723, column: 19, scope: !817, inlinedAt: !770)
!830 = !DILocation(line: 724, column: 21, scope: !817, inlinedAt: !770)
!831 = !DILocation(line: 724, column: 4, scope: !817, inlinedAt: !770)
!832 = !DILocation(line: 724, column: 19, scope: !817, inlinedAt: !770)
!833 = !DILocation(line: 725, column: 21, scope: !817, inlinedAt: !770)
!834 = !DILocation(line: 725, column: 4, scope: !817, inlinedAt: !770)
!835 = !DILocation(line: 725, column: 19, scope: !817, inlinedAt: !770)
!836 = !DILocation(line: 718, column: 28, scope: !812, inlinedAt: !770)
!837 = distinct !{!837, !815, !838, !314}
!838 = !DILocation(line: 726, column: 3, scope: !813, inlinedAt: !770)
!839 = !DILocation(line: 728, column: 15, scope: !840, inlinedAt: !770)
!840 = distinct !DILexicalBlock(scope: !804, file: !225, line: 728, column: 7)
!841 = !DILocation(line: 728, column: 7, scope: !804, inlinedAt: !770)
!842 = !DILocation(line: 729, column: 4, scope: !840, inlinedAt: !770)
!843 = !DILocation(line: 733, column: 13, scope: !804, inlinedAt: !770)
!844 = !DILocation(line: 752, column: 16, scope: !845, inlinedAt: !770)
!845 = distinct !DILexicalBlock(scope: !846, file: !225, line: 752, column: 3)
!846 = distinct !DILexicalBlock(scope: !804, file: !225, line: 752, column: 3)
!847 = !DILocation(line: 752, column: 3, scope: !846, inlinedAt: !770)
!848 = !DILocation(line: 752, column: 28, scope: !845, inlinedAt: !770)
!849 = !DILocation(line: 753, column: 22, scope: !850, inlinedAt: !770)
!850 = distinct !DILexicalBlock(scope: !845, file: !225, line: 752, column: 32)
!851 = !DILocation(line: 754, column: 22, scope: !850, inlinedAt: !770)
!852 = !DILocation(line: 754, column: 20, scope: !850, inlinedAt: !770)
!853 = distinct !{!853, !847, !854, !314, !855}
!854 = !DILocation(line: 755, column: 3, scope: !846, inlinedAt: !770)
!855 = !{!"llvm.loop.isvectorized", i32 1}
!856 = !DILocation(line: 753, column: 4, scope: !850, inlinedAt: !770)
!857 = !DILocation(line: 753, column: 20, scope: !850, inlinedAt: !770)
!858 = !DILocation(line: 754, column: 4, scope: !850, inlinedAt: !770)
!859 = distinct !{!859, !847, !854, !314, !860, !855}
!860 = !{!"llvm.loop.unroll.runtime.disable"}
!861 = !DILocation(line: 758, column: 10, scope: !862, inlinedAt: !770)
!862 = distinct !DILexicalBlock(scope: !804, file: !225, line: 757, column: 10)
!863 = !DILocation(line: 667, column: 39, scope: !799, inlinedAt: !770)
!864 = distinct !{!864, !802, !865, !314}
!865 = !DILocation(line: 759, column: 2, scope: !800, inlinedAt: !770)
!866 = !DILocation(line: 760, column: 1, scope: !710, inlinedAt: !770)
!867 = !DILocation(line: 452, column: 2, scope: !771)
!868 = !DILocalVariable(name: "rfp", arg: 1, scope: !869, file: !225, line: 762, type: !335)
!869 = distinct !DISubprogram(name: "pdb2reslib", scope: !225, file: !225, line: 762, type: !870, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !872)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !335, !223}
!872 = !{!868, !873, !874, !875, !877, !878, !879, !880, !881, !882, !883, !884}
!873 = !DILocalVariable(name: "rlp", arg: 2, scope: !869, file: !225, line: 762, type: !223)
!874 = !DILocalVariable(name: "line", scope: !869, file: !225, line: 764, type: !267)
!875 = !DILocalVariable(name: "ltype", scope: !869, file: !225, line: 765, type: !876)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 80, elements: !735)
!877 = !DILocalVariable(name: "a_name", scope: !869, file: !225, line: 765, type: !876)
!878 = !DILocalVariable(name: "r_name", scope: !869, file: !225, line: 765, type: !876)
!879 = !DILocalVariable(name: "a_num", scope: !869, file: !225, line: 766, type: !15)
!880 = !DILocalVariable(name: "r_num", scope: !869, file: !225, line: 766, type: !15)
!881 = !DILocalVariable(name: "x", scope: !869, file: !225, line: 767, type: !40)
!882 = !DILocalVariable(name: "y", scope: !869, file: !225, line: 767, type: !40)
!883 = !DILocalVariable(name: "z", scope: !869, file: !225, line: 767, type: !40)
!884 = !DILocalVariable(name: "ap", scope: !869, file: !225, line: 768, type: !192)
!885 = !DILocation(line: 0, scope: !869, inlinedAt: !886)
!886 = distinct !DILocation(line: 453, column: 3, scope: !887)
!887 = distinct !DILexicalBlock(scope: !707, file: !225, line: 452, column: 7)
!888 = !DILocation(line: 764, column: 2, scope: !869, inlinedAt: !886)
!889 = !DILocation(line: 764, column: 7, scope: !869, inlinedAt: !886)
!890 = !DILocation(line: 765, column: 2, scope: !869, inlinedAt: !886)
!891 = !DILocation(line: 765, column: 7, scope: !869, inlinedAt: !886)
!892 = !DILocation(line: 765, column: 20, scope: !869, inlinedAt: !886)
!893 = !DILocation(line: 765, column: 34, scope: !869, inlinedAt: !886)
!894 = !DILocation(line: 766, column: 2, scope: !869, inlinedAt: !886)
!895 = !DILocation(line: 767, column: 2, scope: !869, inlinedAt: !886)
!896 = !DILocation(line: 770, column: 10, scope: !869, inlinedAt: !886)
!897 = !DILocation(line: 771, column: 11, scope: !869, inlinedAt: !886)
!898 = !DILocation(line: 772, column: 9, scope: !869, inlinedAt: !886)
!899 = !DILocation(line: 772, column: 2, scope: !869, inlinedAt: !886)
!900 = !DILocation(line: 773, column: 7, scope: !901, inlinedAt: !886)
!901 = distinct !DILexicalBlock(scope: !902, file: !225, line: 773, column: 7)
!902 = distinct !DILexicalBlock(scope: !869, file: !225, line: 772, column: 45)
!903 = !DILocation(line: 773, column: 36, scope: !901, inlinedAt: !886)
!904 = !DILocation(line: 773, column: 7, scope: !902, inlinedAt: !886)
!905 = !DILocalVariable(name: "rlp", arg: 1, scope: !906, file: !225, line: 978, type: !223)
!906 = distinct !DISubprogram(name: "setrlibattrs", scope: !225, file: !225, line: 978, type: !907, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !223, !220}
!909 = !{!905, !910, !911, !912}
!910 = !DILocalVariable(name: "line", arg: 2, scope: !906, file: !225, line: 978, type: !220)
!911 = !DILocalVariable(name: "rkind", scope: !906, file: !225, line: 980, type: !424)
!912 = !DILocalVariable(name: "rakind", scope: !906, file: !225, line: 980, type: !424)
!913 = !DILocation(line: 0, scope: !906, inlinedAt: !914)
!914 = distinct !DILocation(line: 774, column: 4, scope: !915, inlinedAt: !886)
!915 = distinct !DILexicalBlock(scope: !901, file: !225, line: 773, column: 42)
!916 = !DILocation(line: 980, column: 2, scope: !906, inlinedAt: !914)
!917 = !DILocation(line: 980, column: 7, scope: !906, inlinedAt: !914)
!918 = !DILocation(line: 980, column: 21, scope: !906, inlinedAt: !914)
!919 = !DILocation(line: 982, column: 6, scope: !920, inlinedAt: !914)
!920 = distinct !DILexicalBlock(scope: !906, file: !225, line: 982, column: 6)
!921 = !DILocation(line: 982, column: 59, scope: !920, inlinedAt: !914)
!922 = !DILocation(line: 982, column: 6, scope: !906, inlinedAt: !914)
!923 = !DILocation(line: 984, column: 6, scope: !924, inlinedAt: !914)
!924 = distinct !DILexicalBlock(scope: !906, file: !225, line: 984, column: 6)
!925 = !DILocation(line: 984, column: 6, scope: !906, inlinedAt: !914)
!926 = !DILocation(line: 987, column: 3, scope: !927, inlinedAt: !914)
!927 = distinct !DILexicalBlock(scope: !924, file: !225, line: 986, column: 11)
!928 = !DILocation(line: 988, column: 11, scope: !929, inlinedAt: !914)
!929 = distinct !DILexicalBlock(scope: !927, file: !225, line: 988, column: 11)
!930 = !DILocation(line: 988, column: 33, scope: !929, inlinedAt: !914)
!931 = !DILocation(line: 988, column: 11, scope: !927, inlinedAt: !914)
!932 = !DILocation(line: 0, scope: !924, inlinedAt: !914)
!933 = !DILocation(line: 990, column: 6, scope: !934, inlinedAt: !914)
!934 = distinct !DILexicalBlock(scope: !906, file: !225, line: 990, column: 6)
!935 = !DILocation(line: 990, column: 33, scope: !934, inlinedAt: !914)
!936 = !DILocation(line: 990, column: 6, scope: !906, inlinedAt: !914)
!937 = !DILocation(line: 992, column: 11, scope: !938, inlinedAt: !914)
!938 = distinct !DILexicalBlock(scope: !934, file: !225, line: 992, column: 11)
!939 = !DILocation(line: 992, column: 11, scope: !934, inlinedAt: !914)
!940 = !DILocation(line: 0, scope: !934, inlinedAt: !914)
!941 = !DILocation(line: 994, column: 1, scope: !906, inlinedAt: !914)
!942 = !DILocation(line: 775, column: 3, scope: !915, inlinedAt: !886)
!943 = !DILocation(line: 775, column: 13, scope: !944, inlinedAt: !886)
!944 = distinct !DILexicalBlock(scope: !901, file: !225, line: 775, column: 13)
!945 = !DILocation(line: 775, column: 45, scope: !944, inlinedAt: !886)
!946 = !DILocation(line: 776, column: 4, scope: !944, inlinedAt: !886)
!947 = !DILocation(line: 776, column: 33, scope: !944, inlinedAt: !886)
!948 = !DILocation(line: 775, column: 13, scope: !901, inlinedAt: !886)
!949 = !DILocation(line: 778, column: 4, scope: !950, inlinedAt: !886)
!950 = distinct !DILexicalBlock(scope: !944, file: !225, line: 776, column: 39)
!951 = !DILocation(line: 785, column: 8, scope: !952, inlinedAt: !886)
!952 = distinct !DILexicalBlock(scope: !950, file: !225, line: 785, column: 8)
!953 = !DILocation(line: 785, column: 34, scope: !952, inlinedAt: !886)
!954 = !DILocation(line: 0, scope: !950, inlinedAt: !886)
!955 = !DILocation(line: 785, column: 8, scope: !950, inlinedAt: !886)
!956 = !DILocation(line: 786, column: 17, scope: !957, inlinedAt: !886)
!957 = distinct !DILexicalBlock(scope: !958, file: !225, line: 786, column: 9)
!958 = distinct !DILexicalBlock(scope: !952, file: !225, line: 785, column: 40)
!959 = !DILocation(line: 786, column: 9, scope: !958, inlinedAt: !886)
!960 = !DILocation(line: 787, column: 6, scope: !961, inlinedAt: !886)
!961 = distinct !DILexicalBlock(scope: !957, file: !225, line: 786, column: 22)
!962 = !DILocation(line: 788, column: 14, scope: !961, inlinedAt: !886)
!963 = !DILocation(line: 789, column: 5, scope: !961, inlinedAt: !886)
!964 = !DILocation(line: 790, column: 5, scope: !958, inlinedAt: !886)
!965 = !DILocation(line: 791, column: 4, scope: !958, inlinedAt: !886)
!966 = !DILocation(line: 792, column: 17, scope: !950, inlinedAt: !886)
!967 = !DILocation(line: 792, column: 10, scope: !950, inlinedAt: !886)
!968 = !DILocation(line: 793, column: 4, scope: !950, inlinedAt: !886)
!969 = !DILocation(line: 794, column: 16, scope: !950, inlinedAt: !886)
!970 = !DILocation(line: 794, column: 4, scope: !950, inlinedAt: !886)
!971 = !DILocation(line: 795, column: 21, scope: !950, inlinedAt: !886)
!972 = !DILocation(line: 795, column: 4, scope: !950, inlinedAt: !886)
!973 = !DILocation(line: 795, column: 19, scope: !950, inlinedAt: !886)
!974 = !DILocation(line: 796, column: 21, scope: !950, inlinedAt: !886)
!975 = !DILocation(line: 796, column: 4, scope: !950, inlinedAt: !886)
!976 = !DILocation(line: 796, column: 19, scope: !950, inlinedAt: !886)
!977 = !DILocation(line: 797, column: 21, scope: !950, inlinedAt: !886)
!978 = !DILocation(line: 797, column: 4, scope: !950, inlinedAt: !886)
!979 = !DILocation(line: 797, column: 19, scope: !950, inlinedAt: !886)
!980 = !DILocation(line: 798, column: 11, scope: !950, inlinedAt: !886)
!981 = !DILocation(line: 799, column: 3, scope: !950, inlinedAt: !886)
!982 = distinct !{!982, !899, !983, !314}
!983 = !DILocation(line: 800, column: 2, scope: !869, inlinedAt: !886)
!984 = !DILocation(line: 801, column: 6, scope: !985, inlinedAt: !886)
!985 = distinct !DILexicalBlock(scope: !869, file: !225, line: 801, column: 6)
!986 = !DILocation(line: 801, column: 14, scope: !985, inlinedAt: !886)
!987 = !DILocation(line: 801, column: 6, scope: !869, inlinedAt: !886)
!988 = !DILocation(line: 802, column: 3, scope: !985, inlinedAt: !886)
!989 = !DILocation(line: 803, column: 1, scope: !869, inlinedAt: !886)
!990 = !DILocalVariable(name: "bfp", arg: 1, scope: !991, file: !225, line: 805, type: !335)
!991 = distinct !DISubprogram(name: "bnd2reslib", scope: !225, file: !225, line: 805, type: !870, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !992)
!992 = !{!990, !993, !994, !995, !996, !997, !998}
!993 = !DILocalVariable(name: "rlp", arg: 2, scope: !991, file: !225, line: 805, type: !223)
!994 = !DILocalVariable(name: "line", scope: !991, file: !225, line: 807, type: !267)
!995 = !DILocalVariable(name: "r_name", scope: !991, file: !225, line: 808, type: !391)
!996 = !DILocalVariable(name: "llen", scope: !991, file: !225, line: 809, type: !15)
!997 = !DILocalVariable(name: "bi", scope: !991, file: !225, line: 810, type: !15)
!998 = !DILocalVariable(name: "bj", scope: !991, file: !225, line: 810, type: !15)
!999 = !DILocation(line: 0, scope: !991, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 454, column: 3, scope: !887)
!1001 = !DILocation(line: 807, column: 2, scope: !991, inlinedAt: !1000)
!1002 = !DILocation(line: 807, column: 7, scope: !991, inlinedAt: !1000)
!1003 = !DILocation(line: 808, column: 2, scope: !991, inlinedAt: !1000)
!1004 = !DILocation(line: 808, column: 7, scope: !991, inlinedAt: !1000)
!1005 = !DILocation(line: 810, column: 2, scope: !991, inlinedAt: !1000)
!1006 = !DILocation(line: 812, column: 10, scope: !991, inlinedAt: !1000)
!1007 = !DILocation(line: 813, column: 10, scope: !991, inlinedAt: !1000)
!1008 = !DILocation(line: 814, column: 9, scope: !991, inlinedAt: !1000)
!1009 = !DILocation(line: 814, column: 2, scope: !991, inlinedAt: !1000)
!1010 = !DILocation(line: 815, column: 7, scope: !1011, inlinedAt: !1000)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !225, line: 815, column: 7)
!1012 = distinct !DILexicalBlock(scope: !991, file: !225, line: 814, column: 45)
!1013 = !DILocation(line: 815, column: 13, scope: !1011, inlinedAt: !1000)
!1014 = !DILocation(line: 815, column: 7, scope: !1012, inlinedAt: !1000)
!1015 = !DILocation(line: 816, column: 8, scope: !1016, inlinedAt: !1000)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !225, line: 816, column: 8)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !225, line: 815, column: 21)
!1018 = !DILocation(line: 816, column: 39, scope: !1016, inlinedAt: !1000)
!1019 = !DILocation(line: 816, column: 8, scope: !1017, inlinedAt: !1000)
!1020 = !DILocation(line: 817, column: 12, scope: !1021, inlinedAt: !1000)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !225, line: 816, column: 45)
!1022 = !DILocation(line: 818, column: 12, scope: !1021, inlinedAt: !1000)
!1023 = !DILocation(line: 819, column: 5, scope: !1021, inlinedAt: !1000)
!1024 = !DILocation(line: 820, column: 5, scope: !1021, inlinedAt: !1000)
!1025 = !DILocation(line: 822, column: 5, scope: !1021, inlinedAt: !1000)
!1026 = !DILocation(line: 823, column: 14, scope: !1027, inlinedAt: !1000)
!1027 = distinct !DILexicalBlock(scope: !1016, file: !225, line: 823, column: 14)
!1028 = !DILocation(line: 823, column: 22, scope: !1027, inlinedAt: !1000)
!1029 = !DILocation(line: 823, column: 14, scope: !1016, inlinedAt: !1000)
!1030 = !DILocation(line: 824, column: 5, scope: !1031, inlinedAt: !1000)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !225, line: 823, column: 27)
!1032 = !DILocation(line: 825, column: 5, scope: !1031, inlinedAt: !1000)
!1033 = !DILocation(line: 826, column: 13, scope: !1031, inlinedAt: !1000)
!1034 = !DILocation(line: 827, column: 4, scope: !1031, inlinedAt: !1000)
!1035 = !DILocation(line: 828, column: 5, scope: !1027, inlinedAt: !1000)
!1036 = !DILocation(line: 830, column: 8, scope: !1037, inlinedAt: !1000)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !225, line: 830, column: 8)
!1038 = distinct !DILexicalBlock(scope: !1011, file: !225, line: 829, column: 8)
!1039 = !DILocation(line: 830, column: 42, scope: !1037, inlinedAt: !1000)
!1040 = !DILocation(line: 830, column: 8, scope: !1038, inlinedAt: !1000)
!1041 = !DILocation(line: 831, column: 12, scope: !1042, inlinedAt: !1000)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !225, line: 830, column: 48)
!1043 = !DILocation(line: 832, column: 12, scope: !1042, inlinedAt: !1000)
!1044 = !DILocation(line: 833, column: 5, scope: !1042, inlinedAt: !1000)
!1045 = !DILocation(line: 834, column: 5, scope: !1042, inlinedAt: !1000)
!1046 = !DILocation(line: 836, column: 5, scope: !1042, inlinedAt: !1000)
!1047 = !DILocation(line: 838, column: 29, scope: !1048, inlinedAt: !1000)
!1048 = distinct !DILexicalBlock(scope: !1037, file: !225, line: 837, column: 9)
!1049 = !DILocation(line: 838, column: 12, scope: !1048, inlinedAt: !1000)
!1050 = !DILocation(line: 838, column: 5, scope: !1048, inlinedAt: !1000)
!1051 = !DILocation(line: 838, column: 27, scope: !1048, inlinedAt: !1000)
!1052 = !DILocation(line: 839, column: 29, scope: !1048, inlinedAt: !1000)
!1053 = !DILocation(line: 839, column: 5, scope: !1048, inlinedAt: !1000)
!1054 = !DILocation(line: 839, column: 27, scope: !1048, inlinedAt: !1000)
!1055 = !DILocation(line: 840, column: 12, scope: !1048, inlinedAt: !1000)
!1056 = distinct !{!1056, !1009, !1057, !314}
!1057 = !DILocation(line: 843, column: 2, scope: !991, inlinedAt: !1000)
!1058 = !DILocation(line: 844, column: 6, scope: !1059, inlinedAt: !1000)
!1059 = distinct !DILexicalBlock(scope: !991, file: !225, line: 844, column: 6)
!1060 = !DILocation(line: 844, column: 14, scope: !1059, inlinedAt: !1000)
!1061 = !DILocation(line: 844, column: 6, scope: !991, inlinedAt: !1000)
!1062 = !DILocation(line: 845, column: 3, scope: !1059, inlinedAt: !1000)
!1063 = !DILocation(line: 846, column: 1, scope: !991, inlinedAt: !1000)
!1064 = !DILocation(line: 455, column: 3, scope: !887)
!1065 = !DILocation(line: 456, column: 3, scope: !887)
!1066 = !DILocation(line: 459, column: 6, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !331, file: !225, line: 459, column: 6)
!1068 = !DILocation(line: 459, column: 6, scope: !331)
!1069 = !DILocalVariable(name: "qfp", arg: 1, scope: !1070, file: !225, line: 937, type: !335)
!1070 = distinct !DISubprogram(name: "qr2reslib", scope: !225, file: !225, line: 937, type: !870, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1071 = !{!1069, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1072 = !DILocalVariable(name: "rlp", arg: 2, scope: !1070, file: !225, line: 937, type: !223)
!1073 = !DILocalVariable(name: "line", scope: !1070, file: !225, line: 939, type: !267)
!1074 = !DILocalVariable(name: "ltype", scope: !1070, file: !225, line: 940, type: !876)
!1075 = !DILocalVariable(name: "a_name", scope: !1070, file: !225, line: 940, type: !876)
!1076 = !DILocalVariable(name: "r_name", scope: !1070, file: !225, line: 940, type: !876)
!1077 = !DILocalVariable(name: "a_num", scope: !1070, file: !225, line: 941, type: !15)
!1078 = !DILocalVariable(name: "r_num", scope: !1070, file: !225, line: 941, type: !15)
!1079 = !DILocalVariable(name: "q", scope: !1070, file: !225, line: 942, type: !40)
!1080 = !DILocalVariable(name: "r", scope: !1070, file: !225, line: 942, type: !40)
!1081 = !DILocalVariable(name: "ap", scope: !1070, file: !225, line: 943, type: !192)
!1082 = !DILocation(line: 0, scope: !1070, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 460, column: 3, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1067, file: !225, line: 459, column: 11)
!1085 = !DILocation(line: 939, column: 2, scope: !1070, inlinedAt: !1083)
!1086 = !DILocation(line: 939, column: 7, scope: !1070, inlinedAt: !1083)
!1087 = !DILocation(line: 940, column: 2, scope: !1070, inlinedAt: !1083)
!1088 = !DILocation(line: 940, column: 7, scope: !1070, inlinedAt: !1083)
!1089 = !DILocation(line: 940, column: 20, scope: !1070, inlinedAt: !1083)
!1090 = !DILocation(line: 940, column: 34, scope: !1070, inlinedAt: !1083)
!1091 = !DILocation(line: 941, column: 2, scope: !1070, inlinedAt: !1083)
!1092 = !DILocation(line: 942, column: 2, scope: !1070, inlinedAt: !1083)
!1093 = !DILocation(line: 945, column: 10, scope: !1070, inlinedAt: !1083)
!1094 = !DILocation(line: 946, column: 11, scope: !1070, inlinedAt: !1083)
!1095 = !DILocation(line: 947, column: 9, scope: !1070, inlinedAt: !1083)
!1096 = !DILocation(line: 947, column: 2, scope: !1070, inlinedAt: !1083)
!1097 = !DILocation(line: 948, column: 7, scope: !1098, inlinedAt: !1083)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !225, line: 948, column: 7)
!1099 = distinct !DILexicalBlock(scope: !1070, file: !225, line: 947, column: 45)
!1100 = !DILocation(line: 948, column: 33, scope: !1098, inlinedAt: !1083)
!1101 = !DILocation(line: 948, column: 7, scope: !1099, inlinedAt: !1083)
!1102 = !DILocation(line: 950, column: 13, scope: !1103, inlinedAt: !1083)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !225, line: 950, column: 13)
!1104 = !DILocation(line: 950, column: 45, scope: !1103, inlinedAt: !1083)
!1105 = !DILocation(line: 951, column: 4, scope: !1103, inlinedAt: !1083)
!1106 = !DILocation(line: 951, column: 33, scope: !1103, inlinedAt: !1083)
!1107 = !DILocation(line: 950, column: 13, scope: !1098, inlinedAt: !1083)
!1108 = !DILocation(line: 953, column: 4, scope: !1109, inlinedAt: !1083)
!1109 = distinct !DILexicalBlock(scope: !1103, file: !225, line: 951, column: 39)
!1110 = !DILocation(line: 959, column: 8, scope: !1111, inlinedAt: !1083)
!1111 = distinct !DILexicalBlock(scope: !1109, file: !225, line: 959, column: 8)
!1112 = !DILocation(line: 959, column: 34, scope: !1111, inlinedAt: !1083)
!1113 = !DILocation(line: 0, scope: !1109, inlinedAt: !1083)
!1114 = !DILocation(line: 959, column: 8, scope: !1109, inlinedAt: !1083)
!1115 = !DILocation(line: 960, column: 17, scope: !1116, inlinedAt: !1083)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !225, line: 960, column: 9)
!1117 = distinct !DILexicalBlock(scope: !1111, file: !225, line: 959, column: 40)
!1118 = !DILocation(line: 960, column: 9, scope: !1117, inlinedAt: !1083)
!1119 = !DILocation(line: 961, column: 6, scope: !1120, inlinedAt: !1083)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !225, line: 960, column: 22)
!1121 = !DILocation(line: 962, column: 14, scope: !1120, inlinedAt: !1083)
!1122 = !DILocation(line: 963, column: 5, scope: !1120, inlinedAt: !1083)
!1123 = !DILocation(line: 964, column: 5, scope: !1117, inlinedAt: !1083)
!1124 = !DILocation(line: 965, column: 4, scope: !1117, inlinedAt: !1083)
!1125 = !DILocation(line: 966, column: 17, scope: !1109, inlinedAt: !1083)
!1126 = !DILocation(line: 966, column: 10, scope: !1109, inlinedAt: !1083)
!1127 = !DILocation(line: 967, column: 4, scope: !1109, inlinedAt: !1083)
!1128 = !DILocation(line: 968, column: 16, scope: !1109, inlinedAt: !1083)
!1129 = !DILocation(line: 968, column: 4, scope: !1109, inlinedAt: !1083)
!1130 = !DILocation(line: 969, column: 19, scope: !1109, inlinedAt: !1083)
!1131 = !DILocation(line: 969, column: 8, scope: !1109, inlinedAt: !1083)
!1132 = !DILocation(line: 969, column: 17, scope: !1109, inlinedAt: !1083)
!1133 = !DILocation(line: 970, column: 19, scope: !1109, inlinedAt: !1083)
!1134 = !DILocation(line: 970, column: 8, scope: !1109, inlinedAt: !1083)
!1135 = !DILocation(line: 970, column: 17, scope: !1109, inlinedAt: !1083)
!1136 = !{!692, !693, i64 72}
!1137 = !DILocation(line: 971, column: 11, scope: !1109, inlinedAt: !1083)
!1138 = !DILocation(line: 972, column: 3, scope: !1109, inlinedAt: !1083)
!1139 = distinct !{!1139, !1096, !1140, !314}
!1140 = !DILocation(line: 973, column: 2, scope: !1070, inlinedAt: !1083)
!1141 = !DILocation(line: 974, column: 6, scope: !1142, inlinedAt: !1083)
!1142 = distinct !DILexicalBlock(scope: !1070, file: !225, line: 974, column: 6)
!1143 = !DILocation(line: 974, column: 14, scope: !1142, inlinedAt: !1083)
!1144 = !DILocation(line: 974, column: 6, scope: !1070, inlinedAt: !1083)
!1145 = !DILocation(line: 975, column: 3, scope: !1142, inlinedAt: !1083)
!1146 = !DILocation(line: 976, column: 1, scope: !1070, inlinedAt: !1083)
!1147 = !DILocation(line: 461, column: 3, scope: !1084)
!1148 = !DILocation(line: 462, column: 2, scope: !1084)
!1149 = !DILocation(line: 464, column: 6, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !331, file: !225, line: 464, column: 6)
!1151 = !DILocation(line: 464, column: 6, scope: !331)
!1152 = !DILocalVariable(name: "cfp", arg: 1, scope: !1153, file: !225, line: 848, type: !335)
!1153 = distinct !DISubprogram(name: "chi2reslib", scope: !225, file: !225, line: 848, type: !870, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1154)
!1154 = !{!1152, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1155 = !DILocalVariable(name: "rlp", arg: 2, scope: !1153, file: !225, line: 848, type: !223)
!1156 = !DILocalVariable(name: "line", scope: !1153, file: !225, line: 850, type: !267)
!1157 = !DILocalVariable(name: "r_name", scope: !1153, file: !225, line: 851, type: !391)
!1158 = !DILocalVariable(name: "llen", scope: !1153, file: !225, line: 852, type: !15)
!1159 = !DILocalVariable(name: "res", scope: !1153, file: !225, line: 853, type: !6)
!1160 = !DILocalVariable(name: "res1", scope: !1153, file: !225, line: 853, type: !6)
!1161 = !DILocalVariable(name: "anm1", scope: !1153, file: !225, line: 854, type: !254)
!1162 = !DILocalVariable(name: "anm2", scope: !1153, file: !225, line: 854, type: !254)
!1163 = !DILocalVariable(name: "anm3", scope: !1153, file: !225, line: 854, type: !254)
!1164 = !DILocalVariable(name: "anm4", scope: !1153, file: !225, line: 854, type: !254)
!1165 = !DILocalVariable(name: "a1", scope: !1153, file: !225, line: 855, type: !15)
!1166 = !DILocalVariable(name: "a2", scope: !1153, file: !225, line: 855, type: !15)
!1167 = !DILocalVariable(name: "a3", scope: !1153, file: !225, line: 855, type: !15)
!1168 = !DILocalVariable(name: "a4", scope: !1153, file: !225, line: 855, type: !15)
!1169 = !DILocalVariable(name: "ap", scope: !1153, file: !225, line: 856, type: !192)
!1170 = !DILocalVariable(name: "cp", scope: !1153, file: !225, line: 857, type: !181)
!1171 = !DILocation(line: 0, scope: !1153, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 465, column: 3, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1150, file: !225, line: 464, column: 11)
!1174 = !DILocation(line: 850, column: 2, scope: !1153, inlinedAt: !1172)
!1175 = !DILocation(line: 850, column: 7, scope: !1153, inlinedAt: !1172)
!1176 = !DILocation(line: 851, column: 2, scope: !1153, inlinedAt: !1172)
!1177 = !DILocation(line: 851, column: 7, scope: !1153, inlinedAt: !1172)
!1178 = !DILocation(line: 854, column: 2, scope: !1153, inlinedAt: !1172)
!1179 = !DILocation(line: 854, column: 7, scope: !1153, inlinedAt: !1172)
!1180 = !DILocation(line: 854, column: 18, scope: !1153, inlinedAt: !1172)
!1181 = !DILocation(line: 854, column: 29, scope: !1153, inlinedAt: !1172)
!1182 = !DILocation(line: 854, column: 40, scope: !1153, inlinedAt: !1172)
!1183 = !DILocation(line: 859, column: 8, scope: !1153, inlinedAt: !1172)
!1184 = !DILocation(line: 860, column: 10, scope: !1153, inlinedAt: !1172)
!1185 = !DILocation(line: 861, column: 9, scope: !1153, inlinedAt: !1172)
!1186 = !DILocation(line: 861, column: 2, scope: !1153, inlinedAt: !1172)
!1187 = !DILocation(line: 862, column: 7, scope: !1188, inlinedAt: !1172)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !225, line: 862, column: 7)
!1189 = distinct !DILexicalBlock(scope: !1153, file: !225, line: 861, column: 45)
!1190 = !DILocation(line: 862, column: 13, scope: !1188, inlinedAt: !1172)
!1191 = !DILocation(line: 862, column: 7, scope: !1189, inlinedAt: !1172)
!1192 = !DILocation(line: 863, column: 8, scope: !1193, inlinedAt: !1172)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !225, line: 863, column: 8)
!1194 = distinct !DILexicalBlock(scope: !1188, file: !225, line: 862, column: 21)
!1195 = !DILocation(line: 863, column: 39, scope: !1193, inlinedAt: !1172)
!1196 = !DILocation(line: 863, column: 8, scope: !1194, inlinedAt: !1172)
!1197 = !DILocation(line: 864, column: 12, scope: !1198, inlinedAt: !1172)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !225, line: 863, column: 45)
!1199 = !DILocation(line: 865, column: 12, scope: !1198, inlinedAt: !1172)
!1200 = !DILocation(line: 866, column: 5, scope: !1198, inlinedAt: !1172)
!1201 = !DILocation(line: 867, column: 14, scope: !1198, inlinedAt: !1172)
!1202 = !DILocation(line: 867, column: 5, scope: !1198, inlinedAt: !1172)
!1203 = !DILocation(line: 870, column: 5, scope: !1198, inlinedAt: !1172)
!1204 = !DILocation(line: 872, column: 9, scope: !1205, inlinedAt: !1172)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !225, line: 872, column: 9)
!1206 = distinct !DILexicalBlock(scope: !1193, file: !225, line: 871, column: 9)
!1207 = !DILocation(line: 872, column: 15, scope: !1205, inlinedAt: !1172)
!1208 = !DILocation(line: 872, column: 9, scope: !1206, inlinedAt: !1172)
!1209 = !DILocation(line: 873, column: 6, scope: !1210, inlinedAt: !1172)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !225, line: 872, column: 20)
!1211 = !DILocation(line: 874, column: 12, scope: !1210, inlinedAt: !1172)
!1212 = !DILocation(line: 875, column: 5, scope: !1210, inlinedAt: !1172)
!1213 = !DILocation(line: 0, scope: !1214, inlinedAt: !1172)
!1214 = distinct !DILexicalBlock(scope: !1206, file: !225, line: 877, column: 5)
!1215 = !DILocation(line: 877, column: 5, scope: !1214, inlinedAt: !1172)
!1216 = !DILocation(line: 879, column: 24, scope: !1217, inlinedAt: !1172)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !225, line: 879, column: 10)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !225, line: 878, column: 25)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !225, line: 877, column: 5)
!1220 = !{!1221, !297, i64 24}
!1221 = !{!"residue_t", !297, i64 0, !307, i64 8, !307, i64 12, !307, i64 16, !297, i64 24, !297, i64 32, !307, i64 40, !307, i64 44, !307, i64 48, !297, i64 56, !297, i64 64, !307, i64 72, !297, i64 80, !307, i64 88, !297, i64 96, !307, i64 104, !297, i64 112, !297, i64 120}
!1222 = !DILocation(line: 879, column: 11, scope: !1217, inlinedAt: !1172)
!1223 = !DILocation(line: 879, column: 10, scope: !1218, inlinedAt: !1172)
!1224 = !DILocation(line: 878, column: 17, scope: !1219, inlinedAt: !1172)
!1225 = distinct !{!1225, !1215, !1226, !314}
!1226 = !DILocation(line: 883, column: 5, scope: !1214, inlinedAt: !1172)
!1227 = !DILocation(line: 885, column: 15, scope: !1228, inlinedAt: !1172)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !225, line: 884, column: 16)
!1229 = distinct !DILexicalBlock(scope: !1206, file: !225, line: 884, column: 9)
!1230 = !DILocation(line: 887, column: 20, scope: !1228, inlinedAt: !1172)
!1231 = !DILocation(line: 885, column: 6, scope: !1228, inlinedAt: !1172)
!1232 = !DILocation(line: 888, column: 6, scope: !1228, inlinedAt: !1172)
!1233 = !DILocation(line: 890, column: 5, scope: !1206, inlinedAt: !1172)
!1234 = !DILocation(line: 892, column: 3, scope: !1194, inlinedAt: !1172)
!1235 = !DILocation(line: 893, column: 4, scope: !1236, inlinedAt: !1172)
!1236 = distinct !DILexicalBlock(scope: !1188, file: !225, line: 892, column: 8)
!1237 = !DILocalVariable(name: "res", arg: 1, scope: !1238, file: !225, line: 1202, type: !6)
!1238 = distinct !DISubprogram(name: "findatom", scope: !225, file: !225, line: 1202, type: !1239, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!192, !6, !220}
!1241 = !{!1237, !1242, !1243}
!1242 = !DILocalVariable(name: "aname", arg: 2, scope: !1238, file: !225, line: 1202, type: !220)
!1243 = !DILocalVariable(name: "a", scope: !1238, file: !225, line: 1204, type: !15)
!1244 = !DILocation(line: 0, scope: !1238, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 894, column: 16, scope: !1246, inlinedAt: !1172)
!1246 = distinct !DILexicalBlock(scope: !1236, file: !225, line: 894, column: 8)
!1247 = !{!1221, !307, i64 104}
!1248 = !DILocation(line: 1206, column: 16, scope: !1249, inlinedAt: !1245)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !225, line: 1206, column: 2)
!1250 = distinct !DILexicalBlock(scope: !1238, file: !225, line: 1206, column: 2)
!1251 = !DILocation(line: 1206, column: 2, scope: !1250, inlinedAt: !1245)
!1252 = !DILocation(line: 1207, column: 21, scope: !1253, inlinedAt: !1245)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !225, line: 1207, column: 7)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !225, line: 1206, column: 38)
!1255 = !{!1221, !297, i64 120}
!1256 = distinct !{!1256, !1251, !1257, !314}
!1257 = !DILocation(line: 1209, column: 2, scope: !1250, inlinedAt: !1245)
!1258 = !DILocation(line: 1207, column: 34, scope: !1253, inlinedAt: !1245)
!1259 = !DILocation(line: 1207, column: 8, scope: !1253, inlinedAt: !1245)
!1260 = !DILocation(line: 1206, column: 34, scope: !1249, inlinedAt: !1245)
!1261 = !DILocation(line: 1207, column: 7, scope: !1254, inlinedAt: !1245)
!1262 = !DILocation(line: 895, column: 14, scope: !1263, inlinedAt: !1172)
!1263 = distinct !DILexicalBlock(scope: !1246, file: !225, line: 894, column: 41)
!1264 = !DILocation(line: 897, column: 17, scope: !1263, inlinedAt: !1172)
!1265 = !DILocation(line: 895, column: 5, scope: !1263, inlinedAt: !1172)
!1266 = !DILocation(line: 898, column: 5, scope: !1263, inlinedAt: !1172)
!1267 = !DILocation(line: 900, column: 10, scope: !1246, inlinedAt: !1172)
!1268 = !DILocation(line: 0, scope: !1238, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 901, column: 16, scope: !1270, inlinedAt: !1172)
!1270 = distinct !DILexicalBlock(scope: !1236, file: !225, line: 901, column: 8)
!1271 = !DILocation(line: 1206, column: 2, scope: !1250, inlinedAt: !1269)
!1272 = !DILocation(line: 1206, column: 16, scope: !1249, inlinedAt: !1269)
!1273 = distinct !{!1273, !1271, !1274, !314}
!1274 = !DILocation(line: 1209, column: 2, scope: !1250, inlinedAt: !1269)
!1275 = !DILocation(line: 1207, column: 34, scope: !1253, inlinedAt: !1269)
!1276 = !DILocation(line: 1207, column: 8, scope: !1253, inlinedAt: !1269)
!1277 = !DILocation(line: 1206, column: 34, scope: !1249, inlinedAt: !1269)
!1278 = !DILocation(line: 1207, column: 7, scope: !1254, inlinedAt: !1269)
!1279 = !DILocation(line: 902, column: 14, scope: !1280, inlinedAt: !1172)
!1280 = distinct !DILexicalBlock(scope: !1270, file: !225, line: 901, column: 41)
!1281 = !DILocation(line: 904, column: 17, scope: !1280, inlinedAt: !1172)
!1282 = !DILocation(line: 902, column: 5, scope: !1280, inlinedAt: !1172)
!1283 = !DILocation(line: 905, column: 5, scope: !1280, inlinedAt: !1172)
!1284 = !DILocation(line: 907, column: 10, scope: !1270, inlinedAt: !1172)
!1285 = !DILocation(line: 0, scope: !1238, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 908, column: 16, scope: !1287, inlinedAt: !1172)
!1287 = distinct !DILexicalBlock(scope: !1236, file: !225, line: 908, column: 8)
!1288 = !DILocation(line: 1206, column: 2, scope: !1250, inlinedAt: !1286)
!1289 = !DILocation(line: 1206, column: 16, scope: !1249, inlinedAt: !1286)
!1290 = distinct !{!1290, !1288, !1291, !314}
!1291 = !DILocation(line: 1209, column: 2, scope: !1250, inlinedAt: !1286)
!1292 = !DILocation(line: 1207, column: 34, scope: !1253, inlinedAt: !1286)
!1293 = !DILocation(line: 1207, column: 8, scope: !1253, inlinedAt: !1286)
!1294 = !DILocation(line: 1206, column: 34, scope: !1249, inlinedAt: !1286)
!1295 = !DILocation(line: 1207, column: 7, scope: !1254, inlinedAt: !1286)
!1296 = !DILocation(line: 909, column: 14, scope: !1297, inlinedAt: !1172)
!1297 = distinct !DILexicalBlock(scope: !1287, file: !225, line: 908, column: 41)
!1298 = !DILocation(line: 911, column: 17, scope: !1297, inlinedAt: !1172)
!1299 = !DILocation(line: 909, column: 5, scope: !1297, inlinedAt: !1172)
!1300 = !DILocation(line: 912, column: 5, scope: !1297, inlinedAt: !1172)
!1301 = !DILocation(line: 0, scope: !1238, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 915, column: 16, scope: !1303, inlinedAt: !1172)
!1303 = distinct !DILexicalBlock(scope: !1236, file: !225, line: 915, column: 8)
!1304 = !DILocation(line: 1206, column: 16, scope: !1249, inlinedAt: !1302)
!1305 = !DILocation(line: 1206, column: 2, scope: !1250, inlinedAt: !1302)
!1306 = distinct !{!1306, !1305, !1307, !314}
!1307 = !DILocation(line: 1209, column: 2, scope: !1250, inlinedAt: !1302)
!1308 = !DILocation(line: 1207, column: 34, scope: !1253, inlinedAt: !1302)
!1309 = !DILocation(line: 1207, column: 8, scope: !1253, inlinedAt: !1302)
!1310 = !DILocation(line: 1206, column: 34, scope: !1249, inlinedAt: !1302)
!1311 = !DILocation(line: 1207, column: 7, scope: !1254, inlinedAt: !1302)
!1312 = !DILocation(line: 916, column: 14, scope: !1313, inlinedAt: !1172)
!1313 = distinct !DILexicalBlock(scope: !1303, file: !225, line: 915, column: 41)
!1314 = !DILocation(line: 918, column: 17, scope: !1313, inlinedAt: !1172)
!1315 = !DILocation(line: 916, column: 5, scope: !1313, inlinedAt: !1172)
!1316 = !DILocation(line: 919, column: 5, scope: !1313, inlinedAt: !1172)
!1317 = !DILocation(line: 914, column: 10, scope: !1287, inlinedAt: !1172)
!1318 = !DILocation(line: 921, column: 10, scope: !1303, inlinedAt: !1172)
!1319 = !DILocation(line: 922, column: 15, scope: !1236, inlinedAt: !1172)
!1320 = !DILocation(line: 922, column: 10, scope: !1236, inlinedAt: !1172)
!1321 = !DILocation(line: 923, column: 9, scope: !1236, inlinedAt: !1172)
!1322 = !DILocation(line: 924, column: 4, scope: !1236, inlinedAt: !1172)
!1323 = !DILocation(line: 924, column: 20, scope: !1236, inlinedAt: !1172)
!1324 = !DILocation(line: 925, column: 4, scope: !1236, inlinedAt: !1172)
!1325 = !DILocation(line: 925, column: 20, scope: !1236, inlinedAt: !1172)
!1326 = !DILocation(line: 926, column: 4, scope: !1236, inlinedAt: !1172)
!1327 = !DILocation(line: 926, column: 20, scope: !1236, inlinedAt: !1172)
!1328 = !DILocation(line: 927, column: 4, scope: !1236, inlinedAt: !1172)
!1329 = !DILocation(line: 927, column: 20, scope: !1236, inlinedAt: !1172)
!1330 = !DILocation(line: 928, column: 8, scope: !1236, inlinedAt: !1172)
!1331 = !DILocation(line: 928, column: 15, scope: !1236, inlinedAt: !1172)
!1332 = !{!1333, !693, i64 16}
!1333 = !{!"chiral_t", !298, i64 0, !693, i64 16}
!1334 = distinct !{!1334, !1186, !1335, !314}
!1335 = !DILocation(line: 930, column: 2, scope: !1153, inlinedAt: !1172)
!1336 = !DILocation(line: 931, column: 6, scope: !1337, inlinedAt: !1172)
!1337 = distinct !DILexicalBlock(scope: !1153, file: !225, line: 931, column: 6)
!1338 = !DILocation(line: 931, column: 12, scope: !1337, inlinedAt: !1172)
!1339 = !DILocation(line: 931, column: 6, scope: !1153, inlinedAt: !1172)
!1340 = !DILocation(line: 932, column: 3, scope: !1341, inlinedAt: !1172)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !225, line: 931, column: 17)
!1342 = !DILocation(line: 933, column: 9, scope: !1341, inlinedAt: !1172)
!1343 = !DILocation(line: 934, column: 2, scope: !1341, inlinedAt: !1172)
!1344 = !DILocation(line: 935, column: 1, scope: !1153, inlinedAt: !1172)
!1345 = !DILocation(line: 466, column: 3, scope: !1173)
!1346 = !DILocation(line: 467, column: 2, scope: !1173)
!1347 = !DILocation(line: 470, column: 1, scope: !331)
!1348 = distinct !DISubprogram(name: "setreslibkind", scope: !225, file: !225, line: 103, type: !1349, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!15, !220, !220}
!1351 = !{!1352, !1353, !1354, !1355}
!1352 = !DILocalVariable(name: "reslib", arg: 1, scope: !1348, file: !225, line: 103, type: !220)
!1353 = !DILocalVariable(name: "kind", arg: 2, scope: !1348, file: !225, line: 103, type: !220)
!1354 = !DILocalVariable(name: "nhp", scope: !1348, file: !225, line: 105, type: !220)
!1355 = !DILocalVariable(name: "rlp", scope: !1348, file: !225, line: 106, type: !223)
!1356 = !DILocation(line: 0, scope: !1348)
!1357 = !DILocation(line: 105, column: 8, scope: !1348)
!1358 = !DILocation(line: 0, scope: !286, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 108, column: 14, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1348, file: !225, line: 108, column: 6)
!1361 = !DILocation(line: 0, scope: !295, inlinedAt: !1359)
!1362 = !DILocation(line: 426, column: 2, scope: !295, inlinedAt: !1359)
!1363 = !DILocation(line: 427, column: 20, scope: !302, inlinedAt: !1359)
!1364 = !DILocation(line: 427, column: 7, scope: !302, inlinedAt: !1359)
!1365 = !DILocation(line: 427, column: 38, scope: !302, inlinedAt: !1359)
!1366 = !DILocation(line: 427, column: 7, scope: !303, inlinedAt: !1359)
!1367 = !DILocation(line: 426, column: 38, scope: !304, inlinedAt: !1359)
!1368 = distinct !{!1368, !1362, !1369, !314}
!1369 = !DILocation(line: 430, column: 2, scope: !295, inlinedAt: !1359)
!1370 = !DILocation(line: 109, column: 16, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !225, line: 109, column: 8)
!1372 = distinct !DILexicalBlock(scope: !1360, file: !225, line: 108, column: 48)
!1373 = !DILocation(line: 109, column: 40, scope: !1371)
!1374 = !DILocation(line: 109, column: 8, scope: !1372)
!1375 = !DILocation(line: 110, column: 15, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !225, line: 109, column: 49)
!1377 = !DILocation(line: 110, column: 6, scope: !1376)
!1378 = !DILocation(line: 112, column: 6, scope: !1376)
!1379 = !DILocation(line: 0, scope: !1360)
!1380 = !DILocation(line: 115, column: 7, scope: !1348)
!1381 = !DILocation(line: 115, column: 17, scope: !1348)
!1382 = !DILocation(line: 116, column: 8, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1348, file: !225, line: 116, column: 7)
!1384 = !DILocation(line: 116, column: 30, scope: !1383)
!1385 = !DILocation(line: 116, column: 34, scope: !1383)
!1386 = !DILocation(line: 116, column: 7, scope: !1348)
!1387 = !DILocation(line: 118, column: 13, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1383, file: !225, line: 118, column: 12)
!1389 = !DILocation(line: 118, column: 35, scope: !1388)
!1390 = !DILocation(line: 118, column: 39, scope: !1388)
!1391 = !DILocation(line: 118, column: 12, scope: !1383)
!1392 = !DILocation(line: 120, column: 13, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !225, line: 120, column: 12)
!1394 = !DILocation(line: 120, column: 34, scope: !1393)
!1395 = !DILocation(line: 120, column: 38, scope: !1393)
!1396 = !DILocation(line: 120, column: 12, scope: !1388)
!1397 = !DILocation(line: 0, scope: !1383)
!1398 = !DILocation(line: 123, column: 9, scope: !1348)
!1399 = !DILocation(line: 123, column: 22, scope: !1348)
!1400 = distinct !DISubprogram(name: "getresidue", scope: !225, file: !225, line: 126, type: !1401, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!6, !220, !220}
!1403 = !{!1404, !1405, !1406, !1407, !1411, !1412, !1413}
!1404 = !DILocalVariable(name: "rname", arg: 1, scope: !1400, file: !225, line: 126, type: !220)
!1405 = !DILocalVariable(name: "reslib", arg: 2, scope: !1400, file: !225, line: 126, type: !220)
!1406 = !DILocalVariable(name: "nhp", scope: !1400, file: !225, line: 128, type: !220)
!1407 = !DILocalVariable(name: "leapname", scope: !1400, file: !225, line: 128, type: !1408)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 40, elements: !1409)
!1409 = !{!1410}
!1410 = !DISubrange(count: 5)
!1411 = !DILocalVariable(name: "rlp", scope: !1400, file: !225, line: 129, type: !223)
!1412 = !DILocalVariable(name: "res", scope: !1400, file: !225, line: 130, type: !6)
!1413 = !DILocalVariable(name: "nres", scope: !1400, file: !225, line: 130, type: !6)
!1414 = !DILocation(line: 0, scope: !1400)
!1415 = !DILocation(line: 128, column: 8, scope: !1400)
!1416 = !DILocation(line: 128, column: 2, scope: !1400)
!1417 = !DILocation(line: 128, column: 13, scope: !1400)
!1418 = !DILocation(line: 0, scope: !286, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 132, column: 14, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1400, file: !225, line: 132, column: 6)
!1421 = !DILocation(line: 0, scope: !295, inlinedAt: !1419)
!1422 = !DILocation(line: 426, column: 2, scope: !295, inlinedAt: !1419)
!1423 = !DILocation(line: 427, column: 20, scope: !302, inlinedAt: !1419)
!1424 = !DILocation(line: 427, column: 7, scope: !302, inlinedAt: !1419)
!1425 = !DILocation(line: 427, column: 38, scope: !302, inlinedAt: !1419)
!1426 = !DILocation(line: 427, column: 7, scope: !303, inlinedAt: !1419)
!1427 = !DILocation(line: 426, column: 38, scope: !304, inlinedAt: !1419)
!1428 = distinct !{!1428, !1422, !1429, !314}
!1429 = !DILocation(line: 430, column: 2, scope: !295, inlinedAt: !1419)
!1430 = !DILocation(line: 133, column: 15, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !225, line: 133, column: 7)
!1432 = distinct !DILexicalBlock(scope: !1420, file: !225, line: 132, column: 48)
!1433 = !DILocation(line: 133, column: 39, scope: !1431)
!1434 = !DILocation(line: 133, column: 7, scope: !1432)
!1435 = !DILocation(line: 134, column: 4, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !225, line: 133, column: 48)
!1437 = !DILocation(line: 0, scope: !1420)
!1438 = !DILocation(line: 138, column: 2, scope: !1400)
!1439 = !DILocation(line: 139, column: 12, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1400, file: !225, line: 139, column: 7)
!1441 = !DILocation(line: 139, column: 7, scope: !1400)
!1442 = !DILocation(line: 140, column: 14, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !225, line: 140, column: 13)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !225, line: 139, column: 33)
!1445 = !DILocation(line: 140, column: 13, scope: !1444)
!1446 = !DILocation(line: 141, column: 4, scope: !1443)
!1447 = !DILocation(line: 142, column: 14, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !225, line: 142, column: 13)
!1449 = !DILocation(line: 142, column: 13, scope: !1443)
!1450 = !DILocation(line: 143, column: 4, scope: !1448)
!1451 = !DILocation(line: 144, column: 14, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !225, line: 144, column: 13)
!1453 = !DILocation(line: 144, column: 13, scope: !1448)
!1454 = !DILocation(line: 145, column: 4, scope: !1452)
!1455 = !DILocation(line: 146, column: 14, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !225, line: 146, column: 13)
!1457 = !DILocation(line: 146, column: 13, scope: !1452)
!1458 = !DILocation(line: 147, column: 4, scope: !1456)
!1459 = !DILocation(line: 150, column: 14, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !225, line: 150, column: 13)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !225, line: 149, column: 38)
!1462 = distinct !DILexicalBlock(scope: !1440, file: !225, line: 149, column: 12)
!1463 = !DILocation(line: 150, column: 13, scope: !1461)
!1464 = !DILocation(line: 151, column: 4, scope: !1460)
!1465 = !DILocation(line: 152, column: 14, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !225, line: 152, column: 13)
!1467 = !DILocation(line: 152, column: 13, scope: !1460)
!1468 = !DILocation(line: 153, column: 4, scope: !1466)
!1469 = !DILocation(line: 154, column: 14, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !225, line: 154, column: 13)
!1471 = !DILocation(line: 154, column: 13, scope: !1466)
!1472 = !DILocation(line: 155, column: 4, scope: !1470)
!1473 = !DILocation(line: 156, column: 14, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !225, line: 156, column: 13)
!1475 = !DILocation(line: 156, column: 13, scope: !1470)
!1476 = !DILocation(line: 157, column: 4, scope: !1474)
!1477 = !DILocation(line: 159, column: 7, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1400, file: !225, line: 159, column: 7)
!1479 = !DILocation(line: 159, column: 28, scope: !1478)
!1480 = !DILocation(line: 159, column: 7, scope: !1400)
!1481 = !DILocation(line: 161, column: 12, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !225, line: 161, column: 12)
!1483 = !DILocation(line: 161, column: 33, scope: !1482)
!1484 = !DILocation(line: 161, column: 12, scope: !1478)
!1485 = !DILocation(line: 0, scope: !1478)
!1486 = !DILocation(line: 163, column: 18, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1400, file: !225, line: 163, column: 2)
!1488 = !DILocation(line: 0, scope: !1487)
!1489 = !DILocation(line: 163, column: 2, scope: !1487)
!1490 = !DILocation(line: 164, column: 21, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !225, line: 164, column: 6)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !225, line: 163, column: 53)
!1493 = distinct !DILexicalBlock(scope: !1487, file: !225, line: 163, column: 2)
!1494 = !DILocation(line: 164, column: 8, scope: !1491)
!1495 = !DILocation(line: 164, column: 40, scope: !1491)
!1496 = !DILocation(line: 164, column: 47, scope: !1491)
!1497 = !DILocation(line: 165, column: 6, scope: !1491)
!1498 = !DILocation(line: 165, column: 41, scope: !1491)
!1499 = !DILocation(line: 164, column: 6, scope: !1492)
!1500 = !DILocation(line: 163, column: 45, scope: !1493)
!1501 = distinct !{!1501, !1489, !1502, !314}
!1502 = !DILocation(line: 167, column: 2, scope: !1487)
!1503 = !DILocation(line: 170, column: 3, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !225, line: 169, column: 19)
!1505 = distinct !DILexicalBlock(scope: !1400, file: !225, line: 169, column: 6)
!1506 = !DILocation(line: 171, column: 3, scope: !1504)
!1507 = !DILocation(line: 172, column: 3, scope: !1504)
!1508 = !DILocation(line: 175, column: 9, scope: !1400)
!1509 = !DILocation(line: 177, column: 2, scope: !1400)
!1510 = !DILocation(line: 178, column: 1, scope: !1400)
!1511 = !DISubprogram(name: "rt_errormsg_s", scope: !1512, file: !1512, line: 2, type: !1513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1515)
!1512 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/traceback.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "c13cba1549ebc0c91a943a70f996ba00")
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!15, !15, !220, !220}
!1515 = !{}
!1516 = distinct !DISubprogram(name: "copyresidue", scope: !225, file: !225, line: 180, type: !1517, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!6, !6}
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531}
!1520 = !DILocalVariable(name: "res", arg: 1, scope: !1516, file: !225, line: 180, type: !6)
!1521 = !DILocalVariable(name: "a", scope: !1516, file: !225, line: 182, type: !15)
!1522 = !DILocalVariable(name: "b", scope: !1516, file: !225, line: 182, type: !15)
!1523 = !DILocalVariable(name: "c", scope: !1516, file: !225, line: 182, type: !15)
!1524 = !DILocalVariable(name: "i", scope: !1516, file: !225, line: 182, type: !15)
!1525 = !DILocalVariable(name: "aip", scope: !1516, file: !225, line: 183, type: !219)
!1526 = !DILocalVariable(name: "nres", scope: !1516, file: !225, line: 184, type: !6)
!1527 = !DILocalVariable(name: "ap", scope: !1516, file: !225, line: 185, type: !192)
!1528 = !DILocalVariable(name: "anp", scope: !1516, file: !225, line: 186, type: !220)
!1529 = !DILocalVariable(name: "rnp", scope: !1516, file: !225, line: 186, type: !220)
!1530 = !DILocalVariable(name: "bp", scope: !1516, file: !225, line: 187, type: !174)
!1531 = !DILocalVariable(name: "cp", scope: !1516, file: !225, line: 188, type: !181)
!1532 = !DILocation(line: 0, scope: !1516)
!1533 = !DILocation(line: 190, column: 26, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 190, column: 5)
!1535 = !DILocation(line: 190, column: 13, scope: !1534)
!1536 = !DILocation(line: 191, column: 3, scope: !1534)
!1537 = !DILocation(line: 190, column: 5, scope: !1516)
!1538 = !DILocation(line: 193, column: 42, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1534, file: !225, line: 192, column: 2)
!1540 = !DILocation(line: 193, column: 3, scope: !1539)
!1541 = !DILocation(line: 194, column: 3, scope: !1539)
!1542 = !DILocation(line: 195, column: 3, scope: !1539)
!1543 = !DILocation(line: 198, column: 37, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 198, column: 6)
!1545 = !DILocation(line: 198, column: 32, scope: !1544)
!1546 = !DILocation(line: 198, column: 45, scope: !1544)
!1547 = !DILocation(line: 198, column: 25, scope: !1544)
!1548 = !DILocation(line: 198, column: 13, scope: !1544)
!1549 = !DILocation(line: 199, column: 3, scope: !1544)
!1550 = !DILocation(line: 198, column: 6, scope: !1516)
!1551 = !DILocation(line: 201, column: 51, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1544, file: !225, line: 200, column: 2)
!1553 = !DILocation(line: 201, column: 3, scope: !1552)
!1554 = !DILocation(line: 202, column: 3, scope: !1552)
!1555 = !DILocation(line: 203, column: 3, scope: !1552)
!1556 = !DILocation(line: 206, column: 43, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 206, column: 6)
!1558 = !DILocation(line: 206, column: 23, scope: !1557)
!1559 = !DILocation(line: 206, column: 58, scope: !1557)
!1560 = !DILocation(line: 206, column: 6, scope: !1516)
!1561 = !DILocation(line: 209, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !225, line: 207, column: 2)
!1563 = !DILocation(line: 208, column: 3, scope: !1562)
!1564 = !DILocation(line: 210, column: 3, scope: !1562)
!1565 = !DILocation(line: 211, column: 3, scope: !1562)
!1566 = !DILocation(line: 214, column: 11, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 214, column: 6)
!1568 = !{!1221, !307, i64 72}
!1569 = !DILocation(line: 214, column: 23, scope: !1567)
!1570 = !DILocation(line: 214, column: 6, scope: !1516)
!1571 = !DILocation(line: 216, column: 11, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !225, line: 215, column: 7)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !225, line: 214, column: 28)
!1574 = !DILocation(line: 216, column: 27, scope: !1572)
!1575 = !DILocation(line: 216, column: 4, scope: !1572)
!1576 = !DILocation(line: 215, column: 14, scope: !1572)
!1577 = !DILocation(line: 217, column: 4, scope: !1572)
!1578 = !DILocation(line: 215, column: 7, scope: !1573)
!1579 = !DILocation(line: 220, column: 37, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1572, file: !225, line: 218, column: 3)
!1581 = !DILocation(line: 219, column: 4, scope: !1580)
!1582 = !DILocation(line: 221, column: 4, scope: !1580)
!1583 = !DILocation(line: 222, column: 4, scope: !1580)
!1584 = !DILocation(line: 0, scope: !1567)
!1585 = !DILocation(line: 227, column: 11, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 227, column: 6)
!1587 = !{!1221, !307, i64 88}
!1588 = !DILocation(line: 227, column: 21, scope: !1586)
!1589 = !DILocation(line: 227, column: 6, scope: !1516)
!1590 = !DILocation(line: 229, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !225, line: 228, column: 7)
!1592 = distinct !DILexicalBlock(scope: !1586, file: !225, line: 227, column: 26)
!1593 = !DILocation(line: 229, column: 25, scope: !1591)
!1594 = !DILocation(line: 229, column: 4, scope: !1591)
!1595 = !DILocation(line: 228, column: 14, scope: !1591)
!1596 = !DILocation(line: 230, column: 4, scope: !1591)
!1597 = !DILocation(line: 228, column: 7, scope: !1592)
!1598 = !DILocation(line: 233, column: 37, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1591, file: !225, line: 231, column: 3)
!1600 = !DILocation(line: 232, column: 4, scope: !1599)
!1601 = !DILocation(line: 234, column: 4, scope: !1599)
!1602 = !DILocation(line: 235, column: 4, scope: !1599)
!1603 = !DILocation(line: 0, scope: !1586)
!1604 = !DILocation(line: 240, column: 8, scope: !1516)
!1605 = !DILocation(line: 240, column: 15, scope: !1516)
!1606 = !{!1221, !297, i64 0}
!1607 = !DILocation(line: 242, column: 37, scope: !1516)
!1608 = !DILocation(line: 242, column: 25, scope: !1516)
!1609 = !DILocation(line: 242, column: 47, scope: !1516)
!1610 = !DILocation(line: 242, column: 18, scope: !1516)
!1611 = !DILocation(line: 243, column: 10, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 243, column: 6)
!1613 = !DILocation(line: 243, column: 6, scope: !1516)
!1614 = !DILocation(line: 244, column: 12, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !225, line: 243, column: 19)
!1616 = !DILocation(line: 244, column: 3, scope: !1615)
!1617 = !DILocation(line: 246, column: 3, scope: !1615)
!1618 = !DILocation(line: 248, column: 2, scope: !1516)
!1619 = !DILocation(line: 249, column: 8, scope: !1516)
!1620 = !DILocation(line: 249, column: 18, scope: !1516)
!1621 = !DILocation(line: 251, column: 37, scope: !1516)
!1622 = !{!1221, !297, i64 32}
!1623 = !DILocation(line: 251, column: 25, scope: !1516)
!1624 = !DILocation(line: 251, column: 45, scope: !1516)
!1625 = !DILocation(line: 251, column: 18, scope: !1516)
!1626 = !DILocation(line: 252, column: 10, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 252, column: 6)
!1628 = !DILocation(line: 252, column: 6, scope: !1516)
!1629 = !DILocation(line: 253, column: 12, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !225, line: 252, column: 19)
!1631 = !DILocation(line: 253, column: 3, scope: !1630)
!1632 = !DILocation(line: 254, column: 3, scope: !1630)
!1633 = !DILocation(line: 256, column: 2, scope: !1516)
!1634 = !DILocation(line: 257, column: 8, scope: !1516)
!1635 = !DILocation(line: 257, column: 16, scope: !1516)
!1636 = !DILocation(line: 259, column: 21, scope: !1516)
!1637 = !{!1221, !307, i64 8}
!1638 = !DILocation(line: 259, column: 8, scope: !1516)
!1639 = !DILocation(line: 259, column: 14, scope: !1516)
!1640 = !DILocation(line: 260, column: 8, scope: !1516)
!1641 = !DILocation(line: 260, column: 18, scope: !1516)
!1642 = !{!1221, !307, i64 12}
!1643 = !DILocation(line: 261, column: 8, scope: !1516)
!1644 = !DILocation(line: 261, column: 17, scope: !1516)
!1645 = !{!1221, !307, i64 16}
!1646 = !DILocation(line: 262, column: 22, scope: !1516)
!1647 = !{!1221, !307, i64 40}
!1648 = !DILocation(line: 262, column: 8, scope: !1516)
!1649 = !DILocation(line: 262, column: 15, scope: !1516)
!1650 = !DILocation(line: 263, column: 8, scope: !1516)
!1651 = !DILocation(line: 263, column: 17, scope: !1516)
!1652 = !{!1221, !297, i64 56}
!1653 = !DILocation(line: 264, column: 21, scope: !1516)
!1654 = !DILocation(line: 264, column: 8, scope: !1516)
!1655 = !DILocation(line: 264, column: 19, scope: !1516)
!1656 = !{!1221, !297, i64 64}
!1657 = !DILocation(line: 265, column: 27, scope: !1516)
!1658 = !DILocation(line: 265, column: 8, scope: !1516)
!1659 = !DILocation(line: 265, column: 20, scope: !1516)
!1660 = !DILocation(line: 266, column: 8, scope: !1516)
!1661 = !DILocation(line: 266, column: 19, scope: !1516)
!1662 = !{!1221, !297, i64 80}
!1663 = !DILocation(line: 267, column: 16, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !225, line: 267, column: 2)
!1665 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 267, column: 2)
!1666 = !DILocation(line: 267, column: 2, scope: !1665)
!1667 = !DILocation(line: 267, column: 37, scope: !1664)
!1668 = !DILocation(line: 268, column: 32, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !225, line: 267, column: 41)
!1670 = !DILocation(line: 269, column: 30, scope: !1669)
!1671 = distinct !{!1671, !1666, !1672, !314, !855}
!1672 = !DILocation(line: 270, column: 2, scope: !1665)
!1673 = distinct !{!1673, !1674}
!1674 = !{!"llvm.loop.unroll.disable"}
!1675 = !DILocation(line: 268, column: 3, scope: !1669)
!1676 = !DILocation(line: 268, column: 30, scope: !1669)
!1677 = !DILocation(line: 269, column: 32, scope: !1669)
!1678 = !DILocation(line: 269, column: 3, scope: !1669)
!1679 = distinct !{!1679, !1666, !1672, !314, !855}
!1680 = !DILocation(line: 271, column: 25, scope: !1516)
!1681 = !DILocation(line: 271, column: 8, scope: !1516)
!1682 = !DILocation(line: 271, column: 18, scope: !1516)
!1683 = !DILocation(line: 272, column: 8, scope: !1516)
!1684 = !DILocation(line: 272, column: 17, scope: !1516)
!1685 = !{!1221, !297, i64 96}
!1686 = !DILocation(line: 273, column: 37, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !225, line: 273, column: 2)
!1688 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 273, column: 2)
!1689 = !DILocation(line: 273, column: 2, scope: !1688)
!1690 = !DILocation(line: 275, column: 22, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !225, line: 274, column: 3)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !225, line: 274, column: 3)
!1693 = distinct !DILexicalBlock(scope: !1687, file: !225, line: 273, column: 66)
!1694 = !DILocation(line: 275, column: 4, scope: !1691)
!1695 = !DILocation(line: 275, column: 20, scope: !1691)
!1696 = !DILocation(line: 276, column: 35, scope: !1693)
!1697 = !DILocation(line: 276, column: 7, scope: !1693)
!1698 = !DILocation(line: 276, column: 14, scope: !1693)
!1699 = !DILocation(line: 273, column: 56, scope: !1687)
!1700 = !DILocation(line: 273, column: 62, scope: !1687)
!1701 = distinct !{!1701, !1689, !1702, !314}
!1702 = !DILocation(line: 277, column: 2, scope: !1688)
!1703 = !DILocation(line: 278, column: 22, scope: !1516)
!1704 = !{!1221, !307, i64 44}
!1705 = !DILocation(line: 278, column: 8, scope: !1516)
!1706 = !DILocation(line: 278, column: 15, scope: !1516)
!1707 = !DILocation(line: 279, column: 26, scope: !1516)
!1708 = !{!1221, !307, i64 48}
!1709 = !DILocation(line: 279, column: 8, scope: !1516)
!1710 = !DILocation(line: 279, column: 19, scope: !1516)
!1711 = !DILocation(line: 280, column: 24, scope: !1516)
!1712 = !DILocation(line: 280, column: 8, scope: !1516)
!1713 = !DILocation(line: 280, column: 17, scope: !1516)
!1714 = !DILocation(line: 281, column: 8, scope: !1516)
!1715 = !DILocation(line: 281, column: 17, scope: !1516)
!1716 = !{!1221, !297, i64 112}
!1717 = !DILocation(line: 282, column: 11, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 282, column: 6)
!1719 = !DILocation(line: 282, column: 6, scope: !1718)
!1720 = !DILocation(line: 282, column: 6, scope: !1516)
!1721 = !DILocation(line: 0, scope: !1718)
!1722 = !DILocation(line: 283, column: 3, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !225, line: 283, column: 3)
!1724 = distinct !DILexicalBlock(scope: !1718, file: !225, line: 282, column: 21)
!1725 = !DILocation(line: 283, column: 35, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !225, line: 283, column: 3)
!1727 = !DILocation(line: 284, column: 26, scope: !1726)
!1728 = !{!1729}
!1729 = distinct !{!1729, !1730}
!1730 = distinct !{!1730, !"LVerDomain"}
!1731 = !DILocation(line: 284, column: 24, scope: !1726)
!1732 = !{!1733}
!1733 = distinct !{!1733, !1730}
!1734 = distinct !{!1734, !1722, !1735, !314, !855}
!1735 = !DILocation(line: 284, column: 43, scope: !1723)
!1736 = distinct !{!1736, !1674}
!1737 = !DILocation(line: 286, column: 3, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !225, line: 286, column: 3)
!1739 = distinct !DILexicalBlock(scope: !1718, file: !225, line: 285, column: 7)
!1740 = !DILocation(line: 286, column: 35, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !225, line: 286, column: 3)
!1742 = !DILocation(line: 287, column: 24, scope: !1741)
!1743 = distinct !{!1743, !1737, !1744, !314, !855}
!1744 = !DILocation(line: 287, column: 26, scope: !1738)
!1745 = distinct !{!1745, !1674}
!1746 = !DILocation(line: 284, column: 4, scope: !1726)
!1747 = !DILocation(line: 283, column: 17, scope: !1726)
!1748 = distinct !{!1748, !1722, !1735, !314, !855}
!1749 = !DILocation(line: 287, column: 4, scope: !1741)
!1750 = !DILocation(line: 286, column: 17, scope: !1741)
!1751 = distinct !{!1751, !1737, !1744, !314, !860, !855}
!1752 = !DILocation(line: 289, column: 8, scope: !1516)
!1753 = !DILocation(line: 289, column: 16, scope: !1516)
!1754 = !DILocation(line: 290, column: 2, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1516, file: !225, line: 290, column: 2)
!1756 = !DILocation(line: 290, column: 16, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1755, file: !225, line: 290, column: 2)
!1758 = !DILocation(line: 292, column: 48, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1757, file: !225, line: 290, column: 38)
!1760 = !DILocation(line: 292, column: 24, scope: !1759)
!1761 = !DILocation(line: 292, column: 60, scope: !1759)
!1762 = !DILocation(line: 292, column: 17, scope: !1759)
!1763 = !DILocation(line: 293, column: 11, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1759, file: !225, line: 293, column: 7)
!1765 = !DILocation(line: 293, column: 7, scope: !1759)
!1766 = !DILocation(line: 294, column: 13, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !225, line: 293, column: 20)
!1768 = !DILocation(line: 294, column: 4, scope: !1767)
!1769 = !DILocation(line: 295, column: 4, scope: !1767)
!1770 = !DILocation(line: 297, column: 3, scope: !1759)
!1771 = !DILocation(line: 298, column: 11, scope: !1759)
!1772 = !DILocation(line: 298, column: 22, scope: !1759)
!1773 = !DILocation(line: 299, column: 11, scope: !1759)
!1774 = !DILocation(line: 299, column: 22, scope: !1759)
!1775 = !{!692, !297, i64 8}
!1776 = !DILocation(line: 300, column: 38, scope: !1759)
!1777 = !{!692, !307, i64 16}
!1778 = !DILocation(line: 300, column: 11, scope: !1759)
!1779 = !DILocation(line: 300, column: 18, scope: !1759)
!1780 = !DILocation(line: 301, column: 42, scope: !1759)
!1781 = !{!692, !307, i64 20}
!1782 = !DILocation(line: 301, column: 11, scope: !1759)
!1783 = !DILocation(line: 301, column: 22, scope: !1759)
!1784 = !DILocation(line: 303, column: 25, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !225, line: 302, column: 3)
!1786 = distinct !DILexicalBlock(scope: !1759, file: !225, line: 302, column: 3)
!1787 = !DILocation(line: 303, column: 4, scope: !1785)
!1788 = !DILocation(line: 303, column: 23, scope: !1785)
!1789 = !DILocation(line: 304, column: 11, scope: !1759)
!1790 = !DILocation(line: 304, column: 22, scope: !1759)
!1791 = !{!692, !297, i64 56}
!1792 = !DILocation(line: 305, column: 42, scope: !1759)
!1793 = !DILocation(line: 305, column: 11, scope: !1759)
!1794 = !DILocation(line: 305, column: 22, scope: !1759)
!1795 = !DILocation(line: 307, column: 42, scope: !1759)
!1796 = !DILocation(line: 307, column: 11, scope: !1759)
!1797 = !DILocation(line: 307, column: 22, scope: !1759)
!1798 = !DILocation(line: 309, column: 11, scope: !1759)
!1799 = !DILocation(line: 309, column: 22, scope: !1759)
!1800 = !{!692, !297, i64 96}
!1801 = !DILocation(line: 310, column: 42, scope: !1759)
!1802 = !{!692, !307, i64 104}
!1803 = !DILocation(line: 310, column: 11, scope: !1759)
!1804 = !DILocation(line: 310, column: 22, scope: !1759)
!1805 = !DILocation(line: 311, column: 42, scope: !1759)
!1806 = !DILocation(line: 311, column: 11, scope: !1759)
!1807 = !DILocation(line: 311, column: 22, scope: !1759)
!1808 = !DILocation(line: 313, column: 42, scope: !1759)
!1809 = !{!692, !307, i64 128}
!1810 = !DILocation(line: 313, column: 11, scope: !1759)
!1811 = !DILocation(line: 313, column: 22, scope: !1759)
!1812 = !DILocation(line: 314, column: 42, scope: !1759)
!1813 = !{!692, !307, i64 132}
!1814 = !DILocation(line: 314, column: 11, scope: !1759)
!1815 = !DILocation(line: 314, column: 22, scope: !1759)
!1816 = !DILocation(line: 315, column: 11, scope: !1759)
!1817 = !DILocation(line: 315, column: 22, scope: !1759)
!1818 = !{!692, !297, i64 136}
!1819 = !DILocation(line: 316, column: 24, scope: !1759)
!1820 = !DILocation(line: 316, column: 3, scope: !1759)
!1821 = !DILocation(line: 316, column: 22, scope: !1759)
!1822 = !DILocation(line: 317, column: 24, scope: !1759)
!1823 = !DILocation(line: 317, column: 3, scope: !1759)
!1824 = !DILocation(line: 317, column: 22, scope: !1759)
!1825 = !DILocation(line: 318, column: 24, scope: !1759)
!1826 = !DILocation(line: 318, column: 3, scope: !1759)
!1827 = !DILocation(line: 318, column: 22, scope: !1759)
!1828 = !DILocation(line: 319, column: 42, scope: !1759)
!1829 = !{!692, !693, i64 168}
!1830 = !DILocation(line: 319, column: 11, scope: !1759)
!1831 = !DILocation(line: 319, column: 22, scope: !1759)
!1832 = !DILocation(line: 290, column: 34, scope: !1757)
!1833 = distinct !{!1833, !1754, !1834, !314}
!1834 = !DILocation(line: 320, column: 2, scope: !1755)
!1835 = !DILocation(line: 323, column: 1, scope: !1516)
!1836 = distinct !DISubprogram(name: "copystrand", scope: !225, file: !225, line: 325, type: !1837, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!46, !46}
!1839 = !{!1840, !1841, !1842, !1843}
!1840 = !DILocalVariable(name: "str", arg: 1, scope: !1836, file: !225, line: 325, type: !46)
!1841 = !DILocalVariable(name: "newstrand", scope: !1836, file: !225, line: 327, type: !46)
!1842 = !DILocalVariable(name: "namebuf", scope: !1836, file: !225, line: 328, type: !220)
!1843 = !DILocalVariable(name: "resctr", scope: !1836, file: !225, line: 329, type: !15)
!1844 = !DILocation(line: 0, scope: !1836)
!1845 = !DILocation(line: 331, column: 33, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1836, file: !225, line: 331, column: 5)
!1847 = !DILocation(line: 331, column: 19, scope: !1846)
!1848 = !DILocation(line: 331, column: 64, scope: !1846)
!1849 = !DILocation(line: 331, column: 5, scope: !1836)
!1850 = !DILocation(line: 332, column: 41, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !225, line: 331, column: 72)
!1852 = !{!1853, !297, i64 0}
!1853 = !{!"strand_t", !297, i64 0, !307, i64 8, !307, i64 12, !297, i64 16, !297, i64 24, !307, i64 32, !307, i64 36, !297, i64 40}
!1854 = !DILocation(line: 332, column: 3, scope: !1851)
!1855 = !DILocation(line: 334, column: 3, scope: !1851)
!1856 = !DILocation(line: 338, column: 16, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1836, file: !225, line: 337, column: 13)
!1858 = !{!1853, !307, i64 32}
!1859 = !DILocation(line: 338, column: 11, scope: !1857)
!1860 = !DILocation(line: 338, column: 28, scope: !1857)
!1861 = !DILocation(line: 338, column: 3, scope: !1857)
!1862 = !DILocation(line: 337, column: 26, scope: !1857)
!1863 = !DILocation(line: 337, column: 37, scope: !1857)
!1864 = !{!1853, !297, i64 40}
!1865 = !DILocation(line: 338, column: 56, scope: !1857)
!1866 = !DILocation(line: 337, column: 13, scope: !1836)
!1867 = !DILocation(line: 344, column: 51, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1836, file: !225, line: 344, column: 6)
!1869 = !DILocation(line: 344, column: 38, scope: !1868)
!1870 = !DILocation(line: 344, column: 66, scope: !1868)
!1871 = !DILocation(line: 344, column: 28, scope: !1868)
!1872 = !DILocation(line: 345, column: 24, scope: !1868)
!1873 = !DILocation(line: 344, column: 6, scope: !1836)
!1874 = !DILocation(line: 347, column: 3, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1868, file: !225, line: 346, column: 2)
!1876 = !DILocation(line: 349, column: 3, scope: !1875)
!1877 = !DILocation(line: 351, column: 13, scope: !1836)
!1878 = !DILocation(line: 351, column: 26, scope: !1836)
!1879 = !DILocation(line: 352, column: 2, scope: !1836)
!1880 = !DILocation(line: 353, column: 32, scope: !1836)
!1881 = !{!1853, !307, i64 8}
!1882 = !DILocation(line: 353, column: 13, scope: !1836)
!1883 = !DILocation(line: 353, column: 25, scope: !1836)
!1884 = !DILocation(line: 354, column: 27, scope: !1836)
!1885 = !{!1853, !307, i64 12}
!1886 = !DILocation(line: 354, column: 13, scope: !1836)
!1887 = !DILocation(line: 354, column: 20, scope: !1836)
!1888 = !DILocation(line: 355, column: 13, scope: !1836)
!1889 = !DILocation(line: 357, column: 13, scope: !1836)
!1890 = !DILocation(line: 357, column: 25, scope: !1836)
!1891 = !DILocation(line: 356, column: 20, scope: !1836)
!1892 = !DILocation(line: 358, column: 13, scope: !1836)
!1893 = !DILocation(line: 358, column: 24, scope: !1836)
!1894 = !{!1853, !307, i64 36}
!1895 = !DILocation(line: 359, column: 34, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !225, line: 359, column: 9)
!1897 = distinct !DILexicalBlock(scope: !1836, file: !225, line: 359, column: 9)
!1898 = !DILocation(line: 359, column: 9, scope: !1897)
!1899 = !DILocation(line: 361, column: 22, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !225, line: 359, column: 65)
!1901 = !DILocation(line: 361, column: 17, scope: !1900)
!1902 = !DILocation(line: 361, column: 4, scope: !1900)
!1903 = !DILocation(line: 360, column: 49, scope: !1900)
!1904 = !DILocation(line: 362, column: 50, scope: !1900)
!1905 = !DILocation(line: 362, column: 59, scope: !1900)
!1906 = !DILocation(line: 359, column: 41, scope: !1896)
!1907 = !DILocation(line: 360, column: 28, scope: !1900)
!1908 = !DILocation(line: 360, column: 17, scope: !1900)
!1909 = !DILocation(line: 362, column: 28, scope: !1900)
!1910 = !DILocation(line: 362, column: 17, scope: !1900)
!1911 = !DILocation(line: 365, column: 5, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1900, file: !225, line: 363, column: 22)
!1913 = !DILocation(line: 364, column: 25, scope: !1912)
!1914 = !DILocation(line: 364, column: 62, scope: !1912)
!1915 = !DILocation(line: 364, column: 69, scope: !1912)
!1916 = !DILocation(line: 359, column: 60, scope: !1896)
!1917 = distinct !{!1917, !1898, !1918, !314, !1919}
!1918 = !DILocation(line: 366, column: 9, scope: !1897)
!1919 = !{!"llvm.loop.peeled.count", i32 1}
!1920 = !DILocation(line: 368, column: 1, scope: !1836)
!1921 = distinct !DISubprogram(name: "copymolecule", scope: !225, file: !225, line: 370, type: !1922, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!221, !221}
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931}
!1925 = !DILocalVariable(name: "mol", arg: 1, scope: !1921, file: !225, line: 370, type: !221)
!1926 = !DILocalVariable(name: "row", scope: !1921, file: !225, line: 372, type: !15)
!1927 = !DILocalVariable(name: "col", scope: !1921, file: !225, line: 372, type: !15)
!1928 = !DILocalVariable(name: "strptr", scope: !1921, file: !225, line: 373, type: !46)
!1929 = !DILocalVariable(name: "newstr", scope: !1921, file: !225, line: 373, type: !46)
!1930 = !DILocalVariable(name: "nextstr", scope: !1921, file: !225, line: 373, type: !46)
!1931 = !DILocalVariable(name: "newmol", scope: !1921, file: !225, line: 374, type: !221)
!1932 = !DILocation(line: 0, scope: !1921)
!1933 = !DILocation(line: 376, column: 9, scope: !1921)
!1934 = !DILocation(line: 378, column: 39, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1921, file: !225, line: 378, column: 12)
!1936 = !DILocation(line: 378, column: 23, scope: !1935)
!1937 = !DILocation(line: 378, column: 72, scope: !1935)
!1938 = !DILocation(line: 378, column: 12, scope: !1921)
!1939 = !DILocation(line: 379, column: 17, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1935, file: !225, line: 378, column: 80)
!1941 = !DILocation(line: 380, column: 17, scope: !1940)
!1942 = !DILocation(line: 381, column: 17, scope: !1940)
!1943 = !DILocation(line: 384, column: 35, scope: !1921)
!1944 = !{!1945, !307, i64 96}
!1945 = !{!"molecule_t", !298, i64 0, !307, i64 96, !297, i64 104, !307, i64 112, !307, i64 116, !307, i64 120, !297, i64 128}
!1946 = !DILocation(line: 384, column: 17, scope: !1921)
!1947 = !DILocation(line: 384, column: 28, scope: !1921)
!1948 = !DILocation(line: 385, column: 36, scope: !1921)
!1949 = !{!1945, !307, i64 112}
!1950 = !DILocation(line: 385, column: 17, scope: !1921)
!1951 = !DILocation(line: 385, column: 29, scope: !1921)
!1952 = !DILocation(line: 386, column: 33, scope: !1921)
!1953 = !{!1945, !307, i64 116}
!1954 = !DILocation(line: 386, column: 17, scope: !1921)
!1955 = !DILocation(line: 386, column: 26, scope: !1921)
!1956 = !DILocation(line: 387, column: 33, scope: !1921)
!1957 = !{!1945, !307, i64 120}
!1958 = !DILocation(line: 387, column: 17, scope: !1921)
!1959 = !DILocation(line: 387, column: 26, scope: !1921)
!1960 = !DILocation(line: 389, column: 19, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1921, file: !225, line: 389, column: 14)
!1962 = !{!1945, !297, i64 128}
!1963 = !DILocation(line: 389, column: 25, scope: !1961)
!1964 = !DILocation(line: 389, column: 14, scope: !1921)
!1965 = !DILocation(line: 390, column: 33, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1961, file: !225, line: 389, column: 35)
!1967 = !DILocation(line: 391, column: 9, scope: !1966)
!1968 = !DILocation(line: 0, scope: !1961)
!1969 = !DILocation(line: 393, column: 25, scope: !1961)
!1970 = !DILocation(line: 393, column: 31, scope: !1961)
!1971 = !DILocation(line: 397, column: 51, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !225, line: 396, column: 50)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !225, line: 396, column: 17)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !225, line: 396, column: 17)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !225, line: 395, column: 42)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !225, line: 395, column: 9)
!1977 = distinct !DILexicalBlock(scope: !1921, file: !225, line: 395, column: 9)
!1978 = !DILocation(line: 401, column: 23, scope: !1921)
!1979 = !{!1945, !297, i64 104}
!1980 = !DILocation(line: 402, column: 21, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1921, file: !225, line: 402, column: 14)
!1982 = !DILocation(line: 402, column: 14, scope: !1921)
!1983 = !DILocation(line: 403, column: 26, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !225, line: 402, column: 30)
!1985 = !DILocation(line: 404, column: 25, scope: !1984)
!1986 = !DILocation(line: 404, column: 36, scope: !1984)
!1987 = !{!1853, !297, i64 16}
!1988 = !DILocation(line: 405, column: 25, scope: !1984)
!1989 = !DILocation(line: 405, column: 35, scope: !1984)
!1990 = !DILocation(line: 406, column: 34, scope: !1984)
!1991 = !{!1853, !297, i64 24}
!1992 = !DILocation(line: 409, column: 24, scope: !1921)
!1993 = !DILocation(line: 409, column: 9, scope: !1921)
!1994 = !DILocation(line: 410, column: 27, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1921, file: !225, line: 409, column: 34)
!1996 = !DILocation(line: 412, column: 33, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1995, file: !225, line: 411, column: 22)
!1998 = !DILocation(line: 412, column: 40, scope: !1997)
!1999 = !DILocation(line: 413, column: 26, scope: !1995)
!2000 = !DILocation(line: 413, column: 37, scope: !1995)
!2001 = !DILocation(line: 415, column: 34, scope: !1995)
!2002 = distinct !{!2002, !1993, !2003, !314}
!2003 = !DILocation(line: 416, column: 9, scope: !1921)
!2004 = !DILocation(line: 418, column: 9, scope: !1921)
!2005 = !DILocation(line: 419, column: 9, scope: !1921)
!2006 = !DILocation(line: 420, column: 1, scope: !1921)
!2007 = !DISubprogram(name: "upd_molnumbers", scope: !225, file: !225, line: 16, type: !2008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1515)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !221}
!2010 = !DISubprogram(name: "copyparm", scope: !225, file: !225, line: 53, type: !2011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1515)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!52, !52}
!2013 = !DISubprogram(name: "fclose", scope: !2014, file: !2014, line: 213, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1515)
!2014 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!15, !335}
!2017 = !DISubprogram(name: "fgets", scope: !2014, file: !2014, line: 564, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1515)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!220, !2020, !15, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !220)
!2021 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !335)
!2022 = !DISubprogram(name: "NAB_initatom", scope: !225, file: !225, line: 48, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1515)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !192, !15}
!2025 = distinct !DISubprogram(name: "addres2reslib", scope: !225, file: !225, line: 996, type: !2026, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !223}
!2028 = !{!2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2029 = !DILocalVariable(name: "rlp", arg: 1, scope: !2025, file: !225, line: 996, type: !223)
!2030 = !DILocalVariable(name: "res", scope: !2025, file: !225, line: 998, type: !6)
!2031 = !DILocalVariable(name: "ap", scope: !2025, file: !225, line: 999, type: !192)
!2032 = !DILocalVariable(name: "anp", scope: !2025, file: !225, line: 1000, type: !220)
!2033 = !DILocalVariable(name: "rnp", scope: !2025, file: !225, line: 1000, type: !220)
!2034 = !DILocalVariable(name: "a", scope: !2025, file: !225, line: 1001, type: !15)
!2035 = !DILocalVariable(name: "i", scope: !2025, file: !225, line: 1001, type: !15)
!2036 = !DILocation(line: 0, scope: !2025)
!2037 = !DILocation(line: 1003, column: 29, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2025, file: !225, line: 1003, column: 6)
!2039 = !DILocation(line: 1003, column: 14, scope: !2038)
!2040 = !DILocation(line: 1003, column: 61, scope: !2038)
!2041 = !DILocation(line: 1003, column: 6, scope: !2025)
!2042 = !DILocation(line: 1009, column: 33, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2025, file: !225, line: 1009, column: 6)
!2044 = !DILocation(line: 1009, column: 41, scope: !2043)
!2045 = !DILocation(line: 1009, column: 25, scope: !2043)
!2046 = !DILocation(line: 1009, column: 64, scope: !2043)
!2047 = !DILocation(line: 1009, column: 6, scope: !2025)
!2048 = !DILocation(line: 1015, column: 21, scope: !2025)
!2049 = !{!306, !297, i64 24}
!2050 = !DILocation(line: 1015, column: 7, scope: !2025)
!2051 = !DILocation(line: 1015, column: 14, scope: !2025)
!2052 = !DILocation(line: 1016, column: 16, scope: !2025)
!2053 = !DILocation(line: 1018, column: 26, scope: !2025)
!2054 = !DILocation(line: 1018, column: 44, scope: !2025)
!2055 = !DILocation(line: 1018, column: 18, scope: !2025)
!2056 = !DILocation(line: 1019, column: 10, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2025, file: !225, line: 1019, column: 6)
!2058 = !DILocation(line: 1019, column: 6, scope: !2025)
!2059 = !DILocation(line: 1020, column: 12, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !225, line: 1019, column: 19)
!2061 = !DILocation(line: 1020, column: 3, scope: !2060)
!2062 = !DILocation(line: 1022, column: 3, scope: !2060)
!2063 = !DILocation(line: 1024, column: 2, scope: !2025)
!2064 = !DILocation(line: 1025, column: 7, scope: !2025)
!2065 = !DILocation(line: 1025, column: 17, scope: !2025)
!2066 = !DILocation(line: 1027, column: 18, scope: !2025)
!2067 = !DILocation(line: 1028, column: 10, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2025, file: !225, line: 1028, column: 6)
!2069 = !DILocation(line: 1028, column: 6, scope: !2025)
!2070 = !DILocation(line: 1029, column: 12, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2068, file: !225, line: 1028, column: 19)
!2072 = !DILocation(line: 1029, column: 3, scope: !2071)
!2073 = !DILocation(line: 1031, column: 3, scope: !2071)
!2074 = !DILocation(line: 1033, column: 2, scope: !2025)
!2075 = !DILocation(line: 1034, column: 7, scope: !2025)
!2076 = !DILocation(line: 1034, column: 15, scope: !2025)
!2077 = !DILocation(line: 1036, column: 7, scope: !2025)
!2078 = !DILocation(line: 1036, column: 13, scope: !2025)
!2079 = !DILocation(line: 1037, column: 7, scope: !2025)
!2080 = !DILocation(line: 1037, column: 17, scope: !2025)
!2081 = !DILocation(line: 1038, column: 7, scope: !2025)
!2082 = !DILocation(line: 1038, column: 16, scope: !2025)
!2083 = !DILocation(line: 1039, column: 7, scope: !2025)
!2084 = !DILocation(line: 1039, column: 14, scope: !2025)
!2085 = !DILocation(line: 1040, column: 21, scope: !2025)
!2086 = !DILocation(line: 1040, column: 7, scope: !2025)
!2087 = !DILocation(line: 1040, column: 14, scope: !2025)
!2088 = !DILocation(line: 1041, column: 25, scope: !2025)
!2089 = !DILocation(line: 1041, column: 7, scope: !2025)
!2090 = !DILocation(line: 1041, column: 18, scope: !2025)
!2091 = !DILocation(line: 1042, column: 7, scope: !2025)
!2092 = !DILocation(line: 1045, column: 7, scope: !2025)
!2093 = !DILocation(line: 1045, column: 18, scope: !2025)
!2094 = !DILocation(line: 1046, column: 7, scope: !2025)
!2095 = !DILocation(line: 1046, column: 17, scope: !2025)
!2096 = !DILocation(line: 1047, column: 7, scope: !2025)
!2097 = !DILocation(line: 1047, column: 16, scope: !2025)
!2098 = !DILocation(line: 1048, column: 7, scope: !2025)
!2099 = !DILocation(line: 1048, column: 16, scope: !2025)
!2100 = !DILocation(line: 1043, column: 18, scope: !2025)
!2101 = !DILocation(line: 1049, column: 7, scope: !2025)
!2102 = !DILocation(line: 1049, column: 16, scope: !2025)
!2103 = !DILocation(line: 1050, column: 7, scope: !2025)
!2104 = !DILocation(line: 1050, column: 15, scope: !2025)
!2105 = !DILocation(line: 1051, column: 16, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !225, line: 1051, column: 2)
!2107 = distinct !DILexicalBlock(scope: !2025, file: !225, line: 1051, column: 2)
!2108 = !DILocation(line: 1051, column: 2, scope: !2107)
!2109 = !DILocation(line: 1052, column: 46, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !225, line: 1051, column: 32)
!2111 = !DILocation(line: 1052, column: 27, scope: !2110)
!2112 = !DILocation(line: 1052, column: 59, scope: !2110)
!2113 = !DILocation(line: 1052, column: 19, scope: !2110)
!2114 = !DILocation(line: 1053, column: 11, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !225, line: 1053, column: 7)
!2116 = !DILocation(line: 1053, column: 7, scope: !2110)
!2117 = !DILocation(line: 1054, column: 13, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !225, line: 1053, column: 20)
!2119 = !DILocation(line: 1054, column: 4, scope: !2118)
!2120 = !DILocation(line: 1056, column: 4, scope: !2118)
!2121 = !DILocation(line: 1059, column: 3, scope: !2110)
!2122 = !DILocation(line: 1060, column: 21, scope: !2110)
!2123 = !DILocation(line: 1060, column: 32, scope: !2110)
!2124 = !DILocation(line: 1061, column: 21, scope: !2110)
!2125 = !DILocation(line: 1061, column: 32, scope: !2110)
!2126 = !DILocation(line: 1062, column: 21, scope: !2110)
!2127 = !DILocation(line: 1062, column: 32, scope: !2110)
!2128 = !DILocation(line: 1063, column: 3, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2110, file: !225, line: 1063, column: 3)
!2130 = !DILocation(line: 1064, column: 37, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2129, file: !225, line: 1063, column: 3)
!2132 = !DILocation(line: 1065, column: 21, scope: !2110)
!2133 = !DILocation(line: 1065, column: 32, scope: !2110)
!2134 = !DILocation(line: 1066, column: 45, scope: !2110)
!2135 = !DILocation(line: 1066, column: 21, scope: !2110)
!2136 = !DILocation(line: 1066, column: 32, scope: !2110)
!2137 = !DILocation(line: 1068, column: 45, scope: !2110)
!2138 = !DILocation(line: 1068, column: 21, scope: !2110)
!2139 = !DILocation(line: 1068, column: 32, scope: !2110)
!2140 = !DILocation(line: 1070, column: 45, scope: !2110)
!2141 = !DILocation(line: 1070, column: 21, scope: !2110)
!2142 = !DILocation(line: 1070, column: 32, scope: !2110)
!2143 = !DILocation(line: 1071, column: 45, scope: !2110)
!2144 = !DILocation(line: 1071, column: 21, scope: !2110)
!2145 = !DILocation(line: 1071, column: 32, scope: !2110)
!2146 = !DILocation(line: 1073, column: 21, scope: !2110)
!2147 = !DILocation(line: 1073, column: 32, scope: !2110)
!2148 = !DILocation(line: 1074, column: 21, scope: !2110)
!2149 = !DILocation(line: 1074, column: 32, scope: !2110)
!2150 = !DILocation(line: 1076, column: 35, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !225, line: 1075, column: 3)
!2152 = distinct !DILexicalBlock(scope: !2110, file: !225, line: 1075, column: 3)
!2153 = !DILocation(line: 1076, column: 4, scope: !2151)
!2154 = !DILocation(line: 1076, column: 33, scope: !2151)
!2155 = !DILocation(line: 1051, column: 28, scope: !2106)
!2156 = distinct !{!2156, !2108, !2157, !314}
!2157 = !DILocation(line: 1078, column: 2, scope: !2107)
!2158 = !DILocation(line: 1079, column: 1, scope: !2025)
!2159 = distinct !DISubprogram(name: "addbonds2reslib", scope: !225, file: !225, line: 1081, type: !2026, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2160)
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2161 = !DILocalVariable(name: "rlp", arg: 1, scope: !2159, file: !225, line: 1081, type: !223)
!2162 = !DILocalVariable(name: "res", scope: !2159, file: !225, line: 1083, type: !6)
!2163 = !DILocalVariable(name: "bp", scope: !2159, file: !225, line: 1084, type: !174)
!2164 = !DILocalVariable(name: "b", scope: !2159, file: !225, line: 1085, type: !15)
!2165 = !DILocalVariable(name: "a", scope: !2159, file: !225, line: 1086, type: !15)
!2166 = !DILocalVariable(name: "ai", scope: !2159, file: !225, line: 1086, type: !15)
!2167 = !DILocalVariable(name: "aj", scope: !2159, file: !225, line: 1086, type: !15)
!2168 = !DILocalVariable(name: "api", scope: !2159, file: !225, line: 1087, type: !192)
!2169 = !DILocalVariable(name: "apj", scope: !2159, file: !225, line: 1087, type: !192)
!2170 = !DILocation(line: 0, scope: !2159)
!2171 = !DILocation(line: 1089, column: 18, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2159, file: !225, line: 1089, column: 2)
!2173 = !DILocation(line: 0, scope: !2172)
!2174 = !DILocation(line: 1089, column: 2, scope: !2172)
!2175 = !DILocation(line: 1090, column: 20, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !225, line: 1090, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !225, line: 1089, column: 52)
!2178 = distinct !DILexicalBlock(scope: !2172, file: !225, line: 1089, column: 2)
!2179 = !DILocation(line: 1090, column: 7, scope: !2176)
!2180 = !DILocation(line: 1090, column: 41, scope: !2176)
!2181 = !DILocation(line: 1090, column: 7, scope: !2177)
!2182 = !DILocation(line: 1092, column: 13, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !225, line: 1091, column: 8)
!2184 = distinct !DILexicalBlock(scope: !2176, file: !225, line: 1090, column: 47)
!2185 = !DILocation(line: 1092, column: 21, scope: !2183)
!2186 = !DILocation(line: 1092, column: 5, scope: !2183)
!2187 = !DILocation(line: 1091, column: 15, scope: !2183)
!2188 = !DILocation(line: 1093, column: 5, scope: !2183)
!2189 = !DILocation(line: 1091, column: 8, scope: !2184)
!2190 = !DILocation(line: 1099, column: 18, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !225, line: 1099, column: 4)
!2192 = distinct !DILexicalBlock(scope: !2184, file: !225, line: 1099, column: 4)
!2193 = !DILocation(line: 1099, column: 4, scope: !2192)
!2194 = !DILocation(line: 1094, column: 5, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2183, file: !225, line: 1093, column: 14)
!2196 = !DILocation(line: 1096, column: 5, scope: !2195)
!2197 = !DILocation(line: 1097, column: 5, scope: !2195)
!2198 = !DILocation(line: 1100, column: 25, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2191, file: !225, line: 1099, column: 34)
!2200 = !DILocation(line: 1100, column: 10, scope: !2199)
!2201 = !DILocation(line: 1100, column: 23, scope: !2199)
!2202 = !DILocation(line: 1101, column: 25, scope: !2199)
!2203 = !DILocation(line: 1101, column: 10, scope: !2199)
!2204 = !DILocation(line: 1101, column: 23, scope: !2199)
!2205 = !DILocation(line: 1102, column: 7, scope: !2199)
!2206 = !DILocation(line: 1103, column: 7, scope: !2199)
!2207 = !DILocation(line: 1104, column: 12, scope: !2199)
!2208 = !DILocation(line: 1106, column: 10, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !225, line: 1106, column: 10)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !225, line: 1105, column: 42)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !225, line: 1105, column: 5)
!2212 = distinct !DILexicalBlock(scope: !2199, file: !225, line: 1105, column: 5)
!2213 = !DILocation(line: 1106, column: 30, scope: !2209)
!2214 = !DILocation(line: 1106, column: 10, scope: !2210)
!2215 = !DILocation(line: 1108, column: 35, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2209, file: !225, line: 1108, column: 15)
!2217 = !DILocation(line: 1108, column: 15, scope: !2209)
!2218 = !DILocation(line: 1109, column: 27, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !225, line: 1108, column: 45)
!2220 = !DILocation(line: 1110, column: 12, scope: !2219)
!2221 = !DILocation(line: 1110, column: 22, scope: !2219)
!2222 = !DILocation(line: 1111, column: 7, scope: !2219)
!2223 = !DILocation(line: 1114, column: 12, scope: !2199)
!2224 = !DILocation(line: 1116, column: 10, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !225, line: 1116, column: 10)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !225, line: 1115, column: 42)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !225, line: 1115, column: 5)
!2228 = distinct !DILexicalBlock(scope: !2199, file: !225, line: 1115, column: 5)
!2229 = !DILocation(line: 1116, column: 30, scope: !2225)
!2230 = !DILocation(line: 1116, column: 10, scope: !2226)
!2231 = !DILocation(line: 1118, column: 35, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2225, file: !225, line: 1118, column: 15)
!2233 = !DILocation(line: 1118, column: 15, scope: !2225)
!2234 = !DILocation(line: 1119, column: 27, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !225, line: 1118, column: 45)
!2236 = !DILocation(line: 1120, column: 12, scope: !2235)
!2237 = !DILocation(line: 1120, column: 22, scope: !2235)
!2238 = !DILocation(line: 1121, column: 7, scope: !2235)
!2239 = !DILocation(line: 1099, column: 30, scope: !2191)
!2240 = !DILocation(line: 1099, column: 20, scope: !2191)
!2241 = distinct !{!2241, !2193, !2242, !314}
!2242 = !DILocation(line: 1124, column: 4, scope: !2192)
!2243 = !DILocation(line: 1125, column: 9, scope: !2184)
!2244 = !DILocation(line: 1125, column: 21, scope: !2184)
!2245 = !DILocation(line: 1126, column: 9, scope: !2184)
!2246 = !DILocation(line: 1126, column: 20, scope: !2184)
!2247 = !DILocation(line: 1127, column: 4, scope: !2184)
!2248 = !DILocation(line: 1089, column: 44, scope: !2178)
!2249 = distinct !{!2249, !2174, !2250, !314}
!2250 = !DILocation(line: 1129, column: 2, scope: !2172)
!2251 = !DILocation(line: 1130, column: 57, scope: !2159)
!2252 = !DILocation(line: 1130, column: 2, scope: !2159)
!2253 = !DILocation(line: 1131, column: 2, scope: !2159)
!2254 = !DILocation(line: 1132, column: 2, scope: !2159)
!2255 = !DILocation(line: 1133, column: 1, scope: !2159)
!2256 = distinct !DISubprogram(name: "addqr2reslib", scope: !225, file: !225, line: 1135, type: !2026, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262}
!2258 = !DILocalVariable(name: "rlp", arg: 1, scope: !2256, file: !225, line: 1135, type: !223)
!2259 = !DILocalVariable(name: "res", scope: !2256, file: !225, line: 1137, type: !6)
!2260 = !DILocalVariable(name: "a", scope: !2256, file: !225, line: 1138, type: !15)
!2261 = !DILocalVariable(name: "ap", scope: !2256, file: !225, line: 1139, type: !192)
!2262 = !DILocalVariable(name: "apr", scope: !2256, file: !225, line: 1139, type: !192)
!2263 = !DILocation(line: 0, scope: !2256)
!2264 = !DILocation(line: 1141, column: 18, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2256, file: !225, line: 1141, column: 2)
!2266 = !DILocation(line: 0, scope: !2265)
!2267 = !DILocation(line: 1141, column: 2, scope: !2265)
!2268 = !DILocation(line: 1142, column: 20, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !225, line: 1142, column: 7)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !225, line: 1141, column: 52)
!2271 = distinct !DILexicalBlock(scope: !2265, file: !225, line: 1141, column: 2)
!2272 = !DILocation(line: 1142, column: 7, scope: !2269)
!2273 = !DILocation(line: 1142, column: 41, scope: !2269)
!2274 = !DILocation(line: 1142, column: 7, scope: !2270)
!2275 = !DILocation(line: 1143, column: 32, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !225, line: 1143, column: 4)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !225, line: 1143, column: 4)
!2278 = distinct !DILexicalBlock(scope: !2269, file: !225, line: 1142, column: 47)
!2279 = !DILocation(line: 1143, column: 30, scope: !2276)
!2280 = !DILocation(line: 1143, column: 4, scope: !2277)
!2281 = !DILocation(line: 1206, column: 2, scope: !1250, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 1144, column: 16, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !225, line: 1144, column: 9)
!2284 = distinct !DILexicalBlock(scope: !2276, file: !225, line: 1143, column: 52)
!2285 = !DILocation(line: 1144, column: 35, scope: !2283)
!2286 = !DILocation(line: 0, scope: !1238, inlinedAt: !2282)
!2287 = !DILocation(line: 1207, column: 34, scope: !1253, inlinedAt: !2282)
!2288 = !DILocation(line: 1207, column: 8, scope: !1253, inlinedAt: !2282)
!2289 = !DILocation(line: 1206, column: 34, scope: !1249, inlinedAt: !2282)
!2290 = !DILocation(line: 1207, column: 7, scope: !1254, inlinedAt: !2282)
!2291 = !DILocation(line: 1206, column: 16, scope: !1249, inlinedAt: !2282)
!2292 = distinct !{!2292, !2281, !2293, !314}
!2293 = !DILocation(line: 1209, column: 2, scope: !1250, inlinedAt: !2282)
!2294 = !DILocation(line: 1146, column: 26, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2283, file: !225, line: 1144, column: 50)
!2296 = !DILocation(line: 1146, column: 11, scope: !2295)
!2297 = !DILocation(line: 1146, column: 20, scope: !2295)
!2298 = !DILocation(line: 1148, column: 26, scope: !2295)
!2299 = !DILocation(line: 1148, column: 11, scope: !2295)
!2300 = !DILocation(line: 1148, column: 20, scope: !2295)
!2301 = !DILocation(line: 1150, column: 26, scope: !2295)
!2302 = !DILocation(line: 1150, column: 11, scope: !2295)
!2303 = !DILocation(line: 1150, column: 20, scope: !2295)
!2304 = !DILocation(line: 1151, column: 26, scope: !2295)
!2305 = !DILocation(line: 1151, column: 11, scope: !2295)
!2306 = !DILocation(line: 1151, column: 20, scope: !2295)
!2307 = !DILocation(line: 1153, column: 5, scope: !2295)
!2308 = !DILocation(line: 1143, column: 42, scope: !2276)
!2309 = !DILocation(line: 1143, column: 48, scope: !2276)
!2310 = distinct !{!2310, !2280, !2311, !314}
!2311 = !DILocation(line: 1154, column: 4, scope: !2277)
!2312 = !DILocation(line: 1141, column: 44, scope: !2271)
!2313 = distinct !{!2313, !2267, !2314, !314}
!2314 = !DILocation(line: 1157, column: 2, scope: !2265)
!2315 = !DILocation(line: 1158, column: 57, scope: !2256)
!2316 = !DILocation(line: 1158, column: 2, scope: !2256)
!2317 = !DILocation(line: 1159, column: 2, scope: !2256)
!2318 = !DILocation(line: 1160, column: 2, scope: !2256)
!2319 = !DILocation(line: 1161, column: 1, scope: !2256)
!2320 = distinct !DISubprogram(name: "addchi2reslib", scope: !225, file: !225, line: 1163, type: !2026, scopeLine: 1164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2321)
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328, !2330, !2331}
!2322 = !DILocalVariable(name: "rlp", arg: 1, scope: !2320, file: !225, line: 1163, type: !223)
!2323 = !DILocalVariable(name: "res", scope: !2320, file: !225, line: 1165, type: !6)
!2324 = !DILocalVariable(name: "cp", scope: !2320, file: !225, line: 1166, type: !181)
!2325 = !DILocalVariable(name: "a", scope: !2320, file: !225, line: 1167, type: !15)
!2326 = !DILocalVariable(name: "c", scope: !2320, file: !225, line: 1167, type: !15)
!2327 = !DILocalVariable(name: "ca", scope: !2320, file: !225, line: 1167, type: !15)
!2328 = !DILocalVariable(name: "pos", scope: !2320, file: !225, line: 1168, type: !2329)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 768, elements: !187)
!2330 = !DILocalVariable(name: "dvol", scope: !2320, file: !225, line: 1169, type: !2329)
!2331 = !DILocalVariable(name: "vol", scope: !2320, file: !225, line: 1170, type: !40)
!2332 = !DILocation(line: 0, scope: !2320)
!2333 = !DILocation(line: 1168, column: 2, scope: !2320)
!2334 = !DILocation(line: 1168, column: 11, scope: !2320)
!2335 = !DILocation(line: 1169, column: 2, scope: !2320)
!2336 = !DILocation(line: 1169, column: 11, scope: !2320)
!2337 = !DILocation(line: 1170, column: 2, scope: !2320)
!2338 = !DILocation(line: 1172, column: 18, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2320, file: !225, line: 1172, column: 2)
!2340 = !DILocation(line: 0, scope: !2339)
!2341 = !DILocation(line: 1172, column: 2, scope: !2339)
!2342 = !DILocation(line: 1173, column: 21, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !225, line: 1173, column: 7)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !225, line: 1172, column: 52)
!2345 = distinct !DILexicalBlock(scope: !2339, file: !225, line: 1172, column: 2)
!2346 = !DILocation(line: 1173, column: 8, scope: !2343)
!2347 = !DILocation(line: 1173, column: 7, scope: !2344)
!2348 = !DILocation(line: 1175, column: 13, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !225, line: 1174, column: 8)
!2350 = distinct !DILexicalBlock(scope: !2343, file: !225, line: 1173, column: 43)
!2351 = !DILocation(line: 1175, column: 19, scope: !2349)
!2352 = !DILocation(line: 1175, column: 5, scope: !2349)
!2353 = !DILocation(line: 1176, column: 5, scope: !2349)
!2354 = !DILocation(line: 1174, column: 8, scope: !2350)
!2355 = !DILocation(line: 1177, column: 14, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2349, file: !225, line: 1176, column: 14)
!2357 = !DILocation(line: 1177, column: 5, scope: !2356)
!2358 = !DILocation(line: 1180, column: 5, scope: !2356)
!2359 = !DILocation(line: 1182, column: 9, scope: !2350)
!2360 = !DILocation(line: 1182, column: 19, scope: !2350)
!2361 = !DILocation(line: 1183, column: 9, scope: !2350)
!2362 = !DILocation(line: 1183, column: 18, scope: !2350)
!2363 = !DILocation(line: 1184, column: 18, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !225, line: 1184, column: 4)
!2365 = distinct !DILexicalBlock(scope: !2350, file: !225, line: 1184, column: 4)
!2366 = !DILocation(line: 1184, column: 4, scope: !2365)
!2367 = !DILocation(line: 1174, column: 15, scope: !2349)
!2368 = !DILocation(line: 1186, column: 27, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !225, line: 1185, column: 29)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !225, line: 1185, column: 5)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !225, line: 1185, column: 5)
!2372 = distinct !DILexicalBlock(scope: !2364, file: !225, line: 1184, column: 32)
!2373 = !DILocation(line: 1186, column: 11, scope: !2369)
!2374 = !DILocation(line: 1186, column: 25, scope: !2369)
!2375 = !DILocation(line: 1187, column: 18, scope: !2369)
!2376 = !DILocation(line: 1187, column: 16, scope: !2369)
!2377 = !DILocation(line: 1188, column: 18, scope: !2369)
!2378 = !DILocation(line: 1188, column: 16, scope: !2369)
!2379 = !DILocation(line: 1189, column: 18, scope: !2369)
!2380 = !DILocation(line: 1189, column: 16, scope: !2369)
!2381 = !DILocation(line: 1191, column: 5, scope: !2372)
!2382 = !DILocation(line: 1192, column: 18, scope: !2372)
!2383 = !DILocation(line: 1192, column: 9, scope: !2372)
!2384 = !DILocation(line: 1192, column: 16, scope: !2372)
!2385 = !DILocation(line: 1193, column: 7, scope: !2372)
!2386 = !DILocation(line: 1184, column: 28, scope: !2364)
!2387 = !DILocation(line: 1184, column: 20, scope: !2364)
!2388 = distinct !{!2388, !2366, !2389, !314}
!2389 = !DILocation(line: 1194, column: 4, scope: !2365)
!2390 = !DILocation(line: 1172, column: 44, scope: !2345)
!2391 = distinct !{!2391, !2341, !2392, !314}
!2392 = !DILocation(line: 1197, column: 2, scope: !2339)
!2393 = !DILocation(line: 1198, column: 11, scope: !2320)
!2394 = !DILocation(line: 1199, column: 8, scope: !2320)
!2395 = !DILocation(line: 1199, column: 24, scope: !2320)
!2396 = !DILocation(line: 1198, column: 2, scope: !2320)
!2397 = !DILocation(line: 1200, column: 1, scope: !2320)
!2398 = !DISubprogram(name: "chirvol", scope: !2399, file: !2399, line: 1, type: !2400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1515)
!2399 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/chirvol.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "02115784aa5f2605efe296b0108dfa0f")
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !15, !15, !15, !15, !15, !97, !97, !97}
