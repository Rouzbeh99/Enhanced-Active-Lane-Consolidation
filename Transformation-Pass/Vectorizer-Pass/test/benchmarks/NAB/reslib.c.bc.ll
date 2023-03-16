; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r/llvm-ir/544.nab_r_bc/src/reslib.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/reslib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_t = type { ptr, ptr, i32, i32, [8 x i32], ptr, double, double, double, double, ptr, i32, double, double, i32, i32, ptr, [3 x double], double }
%struct.chiral_t = type { [4 x i32], double }
%struct.reslib_t = type { ptr, ptr, i32, i32, ptr }
%struct.residue_t = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.strand_t = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
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
@reslibs = internal unnamed_addr global ptr null, align 8, !dbg !235
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
@reltable.getreslibkind = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.getreslibkind to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.getreslibkind to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.getreslibkind to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @getreslibkind(ptr noundef %reslib) local_unnamed_addr #0 !dbg !278 {
entry:
  call void @llvm.dbg.value(metadata ptr %reslib, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata ptr undef, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata ptr %reslib, metadata !287, metadata !DIExpression()) #14, !dbg !293
  call void @llvm.dbg.value(metadata ptr undef, metadata !292, metadata !DIExpression()) #14, !dbg !293
  br label %for.cond.i, !dbg !296

for.cond.i:                                       ; preds = %for.body.i, %entry
  %rlp.0.in.i = phi ptr [ @reslibs, %entry ], [ %rlp.0.i, %for.body.i ]
  %rlp.0.i = load ptr, ptr %rlp.0.in.i, align 8, !dbg !298, !tbaa !299
  call void @llvm.dbg.value(metadata ptr %rlp.0.i, metadata !292, metadata !DIExpression()) #14, !dbg !293
  %tobool.not.i = icmp eq ptr %rlp.0.i, null, !dbg !303
  br i1 %tobool.not.i, label %if.then, label %for.body.i, !dbg !303

for.body.i:                                       ; preds = %for.cond.i
  %rl_name.i = getelementptr inbounds %struct.reslib_t, ptr %rlp.0.i, i64 0, i32 1, !dbg !304
  %0 = load ptr, ptr %rl_name.i, align 8, !dbg !304, !tbaa !308
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %reslib) #15, !dbg !311
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !312
  br i1 %cmp.i, label %if.end5, label %for.cond.i, !dbg !313, !llvm.loop !314

if.then:                                          ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !284, metadata !DIExpression()), !dbg !285
  %call1 = tail call fastcc ptr @read_reslib(ptr noundef %reslib), !dbg !318
  call void @llvm.dbg.value(metadata ptr %call1, metadata !284, metadata !DIExpression()), !dbg !285
  %cmp2 = icmp eq ptr %call1, null, !dbg !321
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !322

if.then3:                                         ; preds = %if.then
  %1 = load ptr, ptr @stderr, align 8, !dbg !323, !tbaa !299
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %reslib) #16, !dbg !325
  tail call void @exit(i32 noundef 1) #17, !dbg !326
  unreachable, !dbg !326

if.end5:                                          ; preds = %for.body.i, %if.then
  %rlp.0 = phi ptr [ %call1, %if.then ], [ %rlp.0.i, %for.body.i ], !dbg !327
  call void @llvm.dbg.value(metadata ptr %rlp.0, metadata !284, metadata !DIExpression()), !dbg !285
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, ptr %rlp.0, i64 0, i32 2, !dbg !328
  %2 = load i32, ptr %rl_r_kind, align 8, !dbg !328, !tbaa !330
  %switch.tableidx = add i32 %2, -1, !dbg !331
  %3 = icmp ult i32 %switch.tableidx, 3, !dbg !331
  br i1 %3, label %switch.lookup, label %cleanup, !dbg !331

switch.lookup:                                    ; preds = %if.end5
  %4 = sext i32 %switch.tableidx to i64, !dbg !331
  %reltable.shift = shl i64 %4, 2, !dbg !331
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @reltable.getreslibkind, i64 %reltable.shift), !dbg !331
  br label %cleanup, !dbg !331

cleanup:                                          ; preds = %switch.lookup, %if.end5
  %retval.0 = phi ptr [ @.str.1, %if.end5 ], [ %reltable.intrinsic, %switch.lookup ], !dbg !332
  ret ptr %retval.0, !dbg !333
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @read_reslib(ptr noundef %reslib) unnamed_addr #0 !dbg !334 {
entry:
  %line.i106 = alloca [256 x i8], align 16
  %r_name.i107 = alloca [20 x i8], align 16
  %anm1.i = alloca [8 x i8], align 1
  %anm2.i = alloca [8 x i8], align 1
  %anm3.i = alloca [8 x i8], align 1
  %anm4.i = alloca [8 x i8], align 1
  %line.i77 = alloca [256 x i8], align 16
  %ltype.i78 = alloca [10 x i8], align 1
  %a_name.i79 = alloca [10 x i8], align 1
  %r_name.i80 = alloca [10 x i8], align 1
  %a_num.i81 = alloca i32, align 4
  %r_num.i82 = alloca i32, align 4
  %q.i = alloca double, align 8
  %r.i = alloca double, align 8
  %line.i58 = alloca [256 x i8], align 16
  %r_name.i59 = alloca [20 x i8], align 16
  %bi.i = alloca i32, align 4
  %bj.i = alloca i32, align 4
  %rkind.i.i = alloca [100 x i8], align 16
  %rakind.i.i = alloca [100 x i8], align 16
  %line.i34 = alloca [256 x i8], align 16
  %ltype.i = alloca [10 x i8], align 1
  %a_name.i35 = alloca [10 x i8], align 1
  %r_name.i = alloca [10 x i8], align 1
  %a_num.i = alloca i32, align 4
  %r_num.i = alloca i32, align 4
  %x.i36 = alloca double, align 8
  %y.i37 = alloca double, align 8
  %z.i38 = alloca double, align 8
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
  call void @llvm.dbg.value(metadata ptr %reslib, metadata !336, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %offname) #14, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %offname, metadata !401, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata ptr %reslib, metadata !405, metadata !DIExpression()) #14, !dbg !433
  call void @llvm.dbg.value(metadata ptr undef, metadata !411, metadata !DIExpression()) #14, !dbg !433
  call void @llvm.dbg.value(metadata ptr undef, metadata !412, metadata !DIExpression()) #14, !dbg !433
  call void @llvm.dbg.value(metadata ptr undef, metadata !413, metadata !DIExpression()) #14, !dbg !433
  call void @llvm.dbg.value(metadata ptr undef, metadata !414, metadata !DIExpression()) #14, !dbg !433
  call void @llvm.dbg.value(metadata ptr %offname, metadata !415, metadata !DIExpression()) #14, !dbg !433
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %line.i) #14, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %line.i, metadata !421, metadata !DIExpression()) #14, !dbg !437
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %keyword.i) #14, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %keyword.i, metadata !425, metadata !DIExpression()) #14, !dbg !438
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %value.i) #14, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %value.i, metadata !426, metadata !DIExpression()) #14, !dbg !439
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %newname.i) #14, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %newname.i, metadata !430, metadata !DIExpression()) #14, !dbg !440
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %fname.i) #14, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %fname.i, metadata !431, metadata !DIExpression()) #14, !dbg !442
  %call.i = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %reslib, ptr noundef nonnull @.str.38) #15, !dbg !443
  %cmp.not.i = icmp eq ptr %call.i, null, !dbg !445
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i, !dbg !446

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %newname.i, ptr noundef nonnull @.str.39, ptr noundef %reslib) #14, !dbg !447
  call void @llvm.dbg.value(metadata ptr %newname.i, metadata !449, metadata !DIExpression()) #14, !dbg !455
  call void @llvm.dbg.value(metadata ptr %fname.i, metadata !454, metadata !DIExpression()) #14, !dbg !455
  %0 = load i8, ptr %newname.i, align 16, !dbg !457, !tbaa !459
  %cmp.i.i = icmp eq i8 %0, 47, !dbg !460
  %rhsv.i = load i16, ptr %newname.i, align 16
  %.not.i = icmp eq i16 %rhsv.i, 12078
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %.not.i, !dbg !461
  br i1 %or.cond.i, label %if.then.i.i, label %if.else.i.i, !dbg !461

if.then.i.i:                                      ; preds = %if.then.i
  %call2.i.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull %newname.i) #14, !dbg !462
  br label %mk_fname.exit.i, !dbg !462

if.else.i.i:                                      ; preds = %if.then.i
  %call3.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %newname.i) #14, !dbg !463
  br label %mk_fname.exit.i

mk_fname.exit.i:                                  ; preds = %if.else.i.i, %if.then.i.i
  %call5.i = call ptr @fopen(ptr noundef nonnull %fname.i, ptr noundef nonnull @.str.40) #14, !dbg !464
  call void @llvm.dbg.value(metadata ptr %call5.i, metadata !416, metadata !DIExpression()) #14, !dbg !433
  %cmp6.i = icmp eq ptr %call5.i, null, !dbg !466
  br i1 %cmp6.i, label %if.then7.i, label %if.end18.i, !dbg !467

if.then7.i:                                       ; preds = %mk_fname.exit.i
  %call9.i = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull %fname.i) #14, !dbg !468
  br label %read_reslib_header.exit.thread, !dbg !470

if.else.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %reslib, metadata !449, metadata !DIExpression()) #14, !dbg !471
  call void @llvm.dbg.value(metadata ptr %fname.i, metadata !454, metadata !DIExpression()) #14, !dbg !471
  %1 = load i8, ptr %reslib, align 1, !dbg !474, !tbaa !459
  %cmp.i301.i = icmp eq i8 %1, 47, !dbg !475
  br i1 %cmp.i301.i, label %if.then.i306.i, label %lor.lhs.false.i304.i, !dbg !476

lor.lhs.false.i304.i:                             ; preds = %if.else.i
  %call.i302.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(3) @.str.61, ptr noundef nonnull %reslib, i64 noundef 2) #15, !dbg !477
  %tobool.not.i303.i = icmp eq i32 %call.i302.i, 0, !dbg !477
  br i1 %tobool.not.i303.i, label %if.then.i306.i, label %if.else.i308.i, !dbg !478

if.then.i306.i:                                   ; preds = %lor.lhs.false.i304.i, %if.else.i
  %call2.i305.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull %reslib) #14, !dbg !479
  br label %mk_fname.exit309.i, !dbg !479

if.else.i308.i:                                   ; preds = %lor.lhs.false.i304.i
  %call3.i307.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %reslib) #14, !dbg !480
  br label %mk_fname.exit309.i

mk_fname.exit309.i:                               ; preds = %if.else.i308.i, %if.then.i306.i
  %call12.i = call ptr @fopen(ptr noundef nonnull %fname.i, ptr noundef nonnull @.str.40) #14, !dbg !481
  call void @llvm.dbg.value(metadata ptr %call12.i, metadata !416, metadata !DIExpression()) #14, !dbg !433
  %cmp13.i = icmp eq ptr %call12.i, null, !dbg !483
  br i1 %cmp13.i, label %if.then14.i, label %if.end18.i, !dbg !484

if.then14.i:                                      ; preds = %mk_fname.exit309.i
  %call16.i = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull %fname.i) #14, !dbg !485
  br label %read_reslib_header.exit.thread, !dbg !487

if.end18.i:                                       ; preds = %mk_fname.exit309.i, %mk_fname.exit.i
  %rfp.0.i = phi ptr [ %call5.i, %mk_fname.exit.i ], [ %call12.i, %mk_fname.exit309.i ], !dbg !488
  call void @llvm.dbg.value(metadata ptr %rfp.0.i, metadata !416, metadata !DIExpression()) #14, !dbg !433
  %call19.i = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #18, !dbg !489
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !417, metadata !DIExpression()) #14, !dbg !433
  %cmp20.i = icmp eq ptr %call19.i, null, !dbg !491
  br i1 %cmp20.i, label %if.then21.i, label %if.end24.i, !dbg !492

if.then21.i:                                      ; preds = %if.end18.i
  %call22.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.42, ptr noundef %reslib) #14, !dbg !493
  %call23.i = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #14, !dbg !495
  br label %read_reslib_header.exit.thread, !dbg !496

if.end24.i:                                       ; preds = %if.end18.i
  %call25.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %reslib) #15, !dbg !497
  call void @llvm.dbg.value(metadata i64 %call25.i, metadata !419, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !433
  %conv.i = shl i64 %call25.i, 32, !dbg !498
  %sext.i = add i64 %conv.i, 4294967296, !dbg !498
  %conv26.i = ashr exact i64 %sext.i, 32, !dbg !498
  %call27.i = call noalias ptr @malloc(i64 noundef %conv26.i) #18, !dbg !500
  call void @llvm.dbg.value(metadata ptr %call27.i, metadata !420, metadata !DIExpression()) #14, !dbg !433
  %cmp28.i = icmp eq ptr %call27.i, null, !dbg !501
  br i1 %cmp28.i, label %if.then30.i, label %if.end33.i, !dbg !502

if.then30.i:                                      ; preds = %if.end24.i
  %call31.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.43, ptr noundef %reslib) #14, !dbg !503
  %call32.i = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #14, !dbg !505
  br label %read_reslib_header.exit.thread, !dbg !506

if.end33.i:                                       ; preds = %if.end24.i
  %call34.i = call ptr @strcpy(ptr noundef nonnull %call27.i, ptr noundef nonnull dereferenceable(1) %reslib) #14, !dbg !507
  %2 = load ptr, ptr @reslibs, align 8, !dbg !508, !tbaa !299
  store ptr %2, ptr %call19.i, align 8, !dbg !509, !tbaa !510
  store ptr %call19.i, ptr @reslibs, align 8, !dbg !511, !tbaa !299
  %rl_name.i = getelementptr inbounds %struct.reslib_t, ptr %call19.i, i64 0, i32 1, !dbg !512
  store ptr %call27.i, ptr %rl_name.i, align 8, !dbg !513, !tbaa !308
  %rl_r_kind.i = getelementptr inbounds %struct.reslib_t, ptr %call19.i, i64 0, i32 2, !dbg !514
  %rl_r_atomkind.i = getelementptr inbounds %struct.reslib_t, ptr %call19.i, i64 0, i32 3, !dbg !515
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %rl_r_kind.i, i8 0, i64 16, i1 false) #14, !dbg !516
  store i8 0, ptr %offname, align 16, !dbg !517, !tbaa !459
  %call35.i = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %reslib, ptr noundef nonnull @.str.38) #15, !dbg !518
  %cmp36.i = icmp eq ptr %call35.i, null, !dbg !520
  br i1 %cmp36.i, label %while.cond.preheader.i, label %if.else195.i, !dbg !521

while.cond.preheader.i:                           ; preds = %if.end33.i
  %call40372.i = call ptr @fgets(ptr noundef nonnull %line.i, i32 noundef 128, ptr noundef nonnull %rfp.0.i) #14, !dbg !522
  %tobool.not373.i = icmp eq ptr %call40372.i, null, !dbg !524
  br i1 %tobool.not373.i, label %read_reslib_header.exit.thread192, label %while.body.i, !dbg !524

read_reslib_header.exit.thread192:                ; preds = %while.cond.preheader.i
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !417, metadata !DIExpression()) #14, !dbg !433
  call void @llvm.dbg.label(metadata !432) #14, !dbg !525
  %call198.i197 = call i32 @fclose(ptr noundef nonnull %rfp.0.i) #14, !dbg !526
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fname.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %newname.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %value.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %keyword.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line.i) #14, !dbg !527
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !400, metadata !DIExpression()), !dbg !402
  br label %if.end, !dbg !528

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.cond.backedge.i
  %pfp.0 = phi ptr [ %pfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !529
  %bfp.0 = phi ptr [ %bfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !530
  %qfp.0 = phi ptr [ %qfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !531
  %cfp.0 = phi ptr [ %cfp.1, %while.cond.backedge.i ], [ null, %while.cond.preheader.i ], !dbg !532
  %3 = load i8, ptr %line.i, align 16, !dbg !533, !tbaa !459
  %cmp43.i = icmp eq i8 %3, 35, !dbg !536
  br i1 %cmp43.i, label %while.cond.backedge.i, label %if.end46.i, !dbg !537

if.end46.i:                                       ; preds = %while.body.i
  %call50.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line.i, ptr noundef nonnull @.str.44, ptr noundef nonnull %keyword.i, ptr noundef nonnull %value.i) #14, !dbg !538
  call void @llvm.dbg.value(metadata i32 %call50.i, metadata !418, metadata !DIExpression()) #14, !dbg !433
  switch i32 %call50.i, label %clean_up.thread.i [
    i32 -1, label %while.cond.backedge.i
    i32 2, label %if.else58.i
  ], !dbg !540

if.else58.i:                                      ; preds = %if.end46.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %keyword.i, ptr noundef nonnull dereferenceable(5) @.str.45, i64 5) #14, !dbg !541
  %cmp61.i = icmp eq i32 %bcmp.i, 0, !dbg !544
  br i1 %cmp61.i, label %if.then63.i, label %if.else88.i, !dbg !545

if.then63.i:                                      ; preds = %if.else58.i
  %lhsv294.i = load i32, ptr %value.i, align 16, !dbg !546
  switch i32 %lhsv294.i, label %if.else77.i [
    i32 6385252, label %if.then68.i
    i32 6385266, label %if.then75.i
  ], !dbg !549

if.then68.i:                                      ; preds = %if.then63.i
  store i32 1, ptr %rl_r_kind.i, align 8, !dbg !550, !tbaa !330
  br label %while.cond.backedge.i, !dbg !551

if.then75.i:                                      ; preds = %if.then63.i
  store i32 2, ptr %rl_r_kind.i, align 8, !dbg !552, !tbaa !330
  br label %while.cond.backedge.i, !dbg !554

if.else77.i:                                      ; preds = %if.then63.i
  %bcmp300.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %value.i, ptr noundef nonnull dereferenceable(3) @.str.4, i64 3) #14, !dbg !555
  %cmp80.i = icmp eq i32 %bcmp300.i, 0, !dbg !557
  br i1 %cmp80.i, label %if.then82.i, label %clean_up.thread.i, !dbg !558

if.then82.i:                                      ; preds = %if.else77.i
  store i32 3, ptr %rl_r_kind.i, align 8, !dbg !559, !tbaa !330
  br label %while.cond.backedge.i

if.else88.i:                                      ; preds = %if.else58.i
  %bcmp278.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %keyword.i, ptr noundef nonnull dereferenceable(9) @.str.46, i64 9) #14, !dbg !560
  %cmp91.i = icmp eq i32 %bcmp278.i, 0, !dbg !562
  br i1 %cmp91.i, label %if.then93.i, label %if.else110.i, !dbg !563

if.then93.i:                                      ; preds = %if.else88.i
  %bcmp290.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %value.i, ptr noundef nonnull dereferenceable(7) @.str.47, i64 7) #14, !dbg !564
  %cmp96.i = icmp eq i32 %bcmp290.i, 0, !dbg !567
  br i1 %cmp96.i, label %if.then98.i, label %if.else100.i, !dbg !568

if.then98.i:                                      ; preds = %if.then93.i
  store i32 1, ptr %rl_r_atomkind.i, align 4, !dbg !569, !tbaa !570
  br label %while.cond.backedge.i, !dbg !571

if.else100.i:                                     ; preds = %if.then93.i
  %lhsv291.i = load i32, ptr %value.i, align 16, !dbg !572
  %.not293.i = icmp eq i32 %lhsv291.i, 7105633, !dbg !572
  br i1 %.not293.i, label %if.then105.i, label %clean_up.thread.i, !dbg !574

if.then105.i:                                     ; preds = %if.else100.i
  store i32 2, ptr %rl_r_atomkind.i, align 4, !dbg !575, !tbaa !570
  br label %while.cond.backedge.i

if.else110.i:                                     ; preds = %if.else88.i
  %lhsv.i = load i32, ptr %keyword.i, align 16, !dbg !576
  switch i32 %lhsv.i, label %if.else151.i [
    i32 6710895, label %if.then115.i
    i32 6448240, label %if.then122.i
    i32 6581858, label %if.then139.i
  ], !dbg !578

if.then115.i:                                     ; preds = %if.else110.i
  call void @llvm.dbg.value(metadata ptr %value.i, metadata !449, metadata !DIExpression()) #14, !dbg !579
  call void @llvm.dbg.value(metadata ptr %offname, metadata !454, metadata !DIExpression()) #14, !dbg !579
  %4 = load i8, ptr %value.i, align 16, !dbg !582, !tbaa !459
  %cmp.i310.i = icmp eq i8 %4, 47, !dbg !583
  %rhsv365.i = load i16, ptr %value.i, align 16
  %.not367.i = icmp eq i16 %rhsv365.i, 12078
  %or.cond368.i = select i1 %cmp.i310.i, i1 true, i1 %.not367.i, !dbg !584
  br i1 %or.cond368.i, label %if.then.i315.i, label %if.else.i317.i, !dbg !584

if.then.i315.i:                                   ; preds = %if.then115.i
  %call2.i314.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %offname, ptr noundef nonnull %value.i) #14, !dbg !585
  br label %while.cond.backedge.i, !dbg !585

if.else.i317.i:                                   ; preds = %if.then115.i
  %call3.i316.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %offname, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %value.i) #14, !dbg !586
  br label %while.cond.backedge.i

if.then122.i:                                     ; preds = %if.else110.i
  call void @llvm.dbg.value(metadata ptr %value.i, metadata !449, metadata !DIExpression()) #14, !dbg !587
  call void @llvm.dbg.value(metadata ptr %fname.i, metadata !454, metadata !DIExpression()) #14, !dbg !587
  %5 = load i8, ptr %value.i, align 16, !dbg !591, !tbaa !459
  %cmp.i319.i = icmp eq i8 %5, 47, !dbg !592
  %rhsv362.i = load i16, ptr %value.i, align 16
  %.not364.i = icmp eq i16 %rhsv362.i, 12078
  %or.cond369.i = select i1 %cmp.i319.i, i1 true, i1 %.not364.i, !dbg !593
  br i1 %or.cond369.i, label %if.then.i324.i, label %if.else.i326.i, !dbg !593

if.then.i324.i:                                   ; preds = %if.then122.i
  %call2.i323.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull %value.i) #14, !dbg !594
  br label %mk_fname.exit327.i, !dbg !594

if.else.i326.i:                                   ; preds = %if.then122.i
  %call3.i325.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %value.i) #14, !dbg !595
  br label %mk_fname.exit327.i

mk_fname.exit327.i:                               ; preds = %if.else.i326.i, %if.then.i324.i
  %call126.i = call ptr @fopen(ptr noundef nonnull %fname.i, ptr noundef nonnull @.str.40) #14, !dbg !596
  %cmp127.i = icmp eq ptr %call126.i, null, !dbg !598
  br i1 %cmp127.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !599

if.then139.i:                                     ; preds = %if.else110.i
  call void @llvm.dbg.value(metadata ptr %value.i, metadata !449, metadata !DIExpression()) #14, !dbg !600
  call void @llvm.dbg.value(metadata ptr %fname.i, metadata !454, metadata !DIExpression()) #14, !dbg !600
  %6 = load i8, ptr %value.i, align 16, !dbg !604, !tbaa !459
  %cmp.i328.i = icmp eq i8 %6, 47, !dbg !605
  %rhsv359.i = load i16, ptr %value.i, align 16
  %.not361.i = icmp eq i16 %rhsv359.i, 12078
  %or.cond370.i = select i1 %cmp.i328.i, i1 true, i1 %.not361.i, !dbg !606
  br i1 %or.cond370.i, label %if.then.i333.i, label %if.else.i335.i, !dbg !606

if.then.i333.i:                                   ; preds = %if.then139.i
  %call2.i332.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull %value.i) #14, !dbg !607
  br label %mk_fname.exit336.i, !dbg !607

if.else.i335.i:                                   ; preds = %if.then139.i
  %call3.i334.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %value.i) #14, !dbg !608
  br label %mk_fname.exit336.i

mk_fname.exit336.i:                               ; preds = %if.else.i335.i, %if.then.i333.i
  %call143.i = call ptr @fopen(ptr noundef nonnull %fname.i, ptr noundef nonnull @.str.40) #14, !dbg !609
  %cmp144.i = icmp eq ptr %call143.i, null, !dbg !611
  br i1 %cmp144.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !612

if.else151.i:                                     ; preds = %if.else110.i
  %bcmp286.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %keyword.i, ptr noundef nonnull dereferenceable(3) @.str.55, i64 3) #14, !dbg !613
  %cmp154.i = icmp eq i32 %bcmp286.i, 0, !dbg !615
  br i1 %cmp154.i, label %if.then156.i, label %if.else168.i, !dbg !616

if.then156.i:                                     ; preds = %if.else151.i
  call void @llvm.dbg.value(metadata ptr %value.i, metadata !449, metadata !DIExpression()) #14, !dbg !617
  call void @llvm.dbg.value(metadata ptr %fname.i, metadata !454, metadata !DIExpression()) #14, !dbg !617
  %7 = load i8, ptr %value.i, align 16, !dbg !620, !tbaa !459
  %cmp.i141 = icmp eq i8 %7, 47, !dbg !621
  %rhsv200 = load i16, ptr %value.i, align 16
  %.not202 = icmp eq i16 %rhsv200, 12078
  %or.cond = select i1 %cmp.i141, i1 true, i1 %.not202, !dbg !622
  br i1 %or.cond, label %if.then.i146, label %if.else.i148, !dbg !622

if.then.i146:                                     ; preds = %if.then156.i
  %call2.i145 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull %value.i) #14, !dbg !623
  br label %mk_fname.exit150, !dbg !623

if.else.i148:                                     ; preds = %if.then156.i
  %call3.i147 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %value.i) #14, !dbg !624
  br label %mk_fname.exit150

mk_fname.exit150:                                 ; preds = %if.then.i146, %if.else.i148
  %call160.i = call ptr @fopen(ptr noundef nonnull %fname.i, ptr noundef nonnull @.str.40) #14, !dbg !625
  %cmp161.i = icmp eq ptr %call160.i, null, !dbg !627
  br i1 %cmp161.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !628

if.else168.i:                                     ; preds = %if.else151.i
  %.not289.i = icmp eq i32 %lhsv.i, 6908003, !dbg !629
  br i1 %.not289.i, label %if.then173.i, label %clean_up.thread.i, !dbg !631

if.then173.i:                                     ; preds = %if.else168.i
  call void @llvm.dbg.value(metadata ptr %value.i, metadata !449, metadata !DIExpression()) #14, !dbg !632
  call void @llvm.dbg.value(metadata ptr %fname.i, metadata !454, metadata !DIExpression()) #14, !dbg !632
  %8 = load i8, ptr %value.i, align 16, !dbg !635, !tbaa !459
  %cmp.i134 = icmp eq i8 %8, 47, !dbg !636
  %rhsv = load i16, ptr %value.i, align 16
  %.not = icmp eq i16 %rhsv, 12078
  %or.cond203 = select i1 %cmp.i134, i1 true, i1 %.not, !dbg !637
  br i1 %or.cond203, label %if.then.i138, label %if.else.i139, !dbg !637

if.then.i138:                                     ; preds = %if.then173.i
  %call2.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull %value.i) #14, !dbg !638
  br label %mk_fname.exit, !dbg !638

if.else.i139:                                     ; preds = %if.then173.i
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %fname.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %value.i) #14, !dbg !639
  br label %mk_fname.exit

mk_fname.exit:                                    ; preds = %if.then.i138, %if.else.i139
  %call177.i = call ptr @fopen(ptr noundef nonnull %fname.i, ptr noundef nonnull @.str.40) #14, !dbg !640
  %cmp178.i = icmp eq ptr %call177.i, null, !dbg !642
  br i1 %cmp178.i, label %clean_up.thread.sink.split.i, label %while.cond.backedge.i, !dbg !643

while.cond.backedge.i:                            ; preds = %mk_fname.exit, %mk_fname.exit150, %mk_fname.exit336.i, %mk_fname.exit327.i, %if.else.i317.i, %if.then.i315.i, %if.then105.i, %if.then98.i, %if.then82.i, %if.then75.i, %if.then68.i, %if.end46.i, %while.body.i
  %pfp.1 = phi ptr [ %pfp.0, %while.body.i ], [ %pfp.0, %if.then82.i ], [ %pfp.0, %if.then75.i ], [ %pfp.0, %if.then68.i ], [ %pfp.0, %if.then98.i ], [ %pfp.0, %if.then105.i ], [ %pfp.0, %mk_fname.exit150 ], [ %pfp.0, %mk_fname.exit ], [ %pfp.0, %mk_fname.exit336.i ], [ %call126.i, %mk_fname.exit327.i ], [ %pfp.0, %if.then.i315.i ], [ %pfp.0, %if.else.i317.i ], [ %pfp.0, %if.end46.i ], !dbg !433
  %bfp.1 = phi ptr [ %bfp.0, %while.body.i ], [ %bfp.0, %if.then82.i ], [ %bfp.0, %if.then75.i ], [ %bfp.0, %if.then68.i ], [ %bfp.0, %if.then98.i ], [ %bfp.0, %if.then105.i ], [ %bfp.0, %mk_fname.exit150 ], [ %bfp.0, %mk_fname.exit ], [ %call143.i, %mk_fname.exit336.i ], [ %bfp.0, %mk_fname.exit327.i ], [ %bfp.0, %if.then.i315.i ], [ %bfp.0, %if.else.i317.i ], [ %bfp.0, %if.end46.i ], !dbg !433
  %qfp.1 = phi ptr [ %qfp.0, %while.body.i ], [ %qfp.0, %if.then82.i ], [ %qfp.0, %if.then75.i ], [ %qfp.0, %if.then68.i ], [ %qfp.0, %if.then98.i ], [ %qfp.0, %if.then105.i ], [ %call160.i, %mk_fname.exit150 ], [ %qfp.0, %mk_fname.exit ], [ %qfp.0, %mk_fname.exit336.i ], [ %qfp.0, %mk_fname.exit327.i ], [ %qfp.0, %if.then.i315.i ], [ %qfp.0, %if.else.i317.i ], [ %qfp.0, %if.end46.i ], !dbg !433
  %cfp.1 = phi ptr [ %cfp.0, %while.body.i ], [ %cfp.0, %if.then82.i ], [ %cfp.0, %if.then75.i ], [ %cfp.0, %if.then68.i ], [ %cfp.0, %if.then98.i ], [ %cfp.0, %if.then105.i ], [ %cfp.0, %mk_fname.exit150 ], [ %call177.i, %mk_fname.exit ], [ %cfp.0, %mk_fname.exit336.i ], [ %cfp.0, %mk_fname.exit327.i ], [ %cfp.0, %if.then.i315.i ], [ %cfp.0, %if.else.i317.i ], [ %cfp.0, %if.end46.i ], !dbg !433
  %call40.i = call ptr @fgets(ptr noundef nonnull %line.i, i32 noundef 128, ptr noundef %rfp.0.i) #14, !dbg !522
  %tobool.not.i = icmp eq ptr %call40.i, null, !dbg !524
  br i1 %tobool.not.i, label %read_reslib_header.exit, label %while.body.i, !dbg !524, !llvm.loop !644

if.else195.i:                                     ; preds = %if.end33.i
  call void @llvm.dbg.value(metadata ptr %newname.i, metadata !449, metadata !DIExpression()) #14, !dbg !646
  call void @llvm.dbg.value(metadata ptr %offname, metadata !454, metadata !DIExpression()) #14, !dbg !646
  %9 = load i8, ptr %newname.i, align 16, !dbg !649, !tbaa !459
  %cmp.i337.i = icmp eq i8 %9, 47, !dbg !650
  %rhsv356.i = load i16, ptr %newname.i, align 16
  %.not358.i = icmp eq i16 %rhsv356.i, 12078
  %or.cond371.i = select i1 %cmp.i337.i, i1 true, i1 %.not358.i, !dbg !651
  br i1 %or.cond371.i, label %if.then.i342.i, label %if.else.i344.i, !dbg !651

if.then.i342.i:                                   ; preds = %if.else195.i
  %call2.i341.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %offname, ptr noundef nonnull %newname.i) #14, !dbg !652
  br label %read_reslib_header.exit.thread180, !dbg !652

if.else.i344.i:                                   ; preds = %if.else195.i
  %call3.i343.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %offname, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %newname.i) #14, !dbg !653
  br label %read_reslib_header.exit.thread180

clean_up.thread.sink.split.i:                     ; preds = %mk_fname.exit, %mk_fname.exit150, %mk_fname.exit336.i, %mk_fname.exit327.i
  %pfp.2 = phi ptr [ %pfp.0, %mk_fname.exit150 ], [ %pfp.0, %mk_fname.exit ], [ %pfp.0, %mk_fname.exit336.i ], [ null, %mk_fname.exit327.i ], !dbg !433
  %bfp.2 = phi ptr [ %bfp.0, %mk_fname.exit150 ], [ %bfp.0, %mk_fname.exit ], [ null, %mk_fname.exit336.i ], [ %bfp.0, %mk_fname.exit327.i ], !dbg !433
  %qfp.2 = phi ptr [ null, %mk_fname.exit150 ], [ %qfp.0, %mk_fname.exit ], [ %qfp.0, %mk_fname.exit336.i ], [ %qfp.0, %mk_fname.exit327.i ], !dbg !433
  %cfp.2 = phi ptr [ %cfp.0, %mk_fname.exit150 ], [ null, %mk_fname.exit ], [ %cfp.0, %mk_fname.exit336.i ], [ %cfp.0, %mk_fname.exit327.i ], !dbg !433
  %.str.51.sink.i = phi ptr [ @.str.56, %mk_fname.exit150 ], [ @.str.58, %mk_fname.exit ], [ @.str.54, %mk_fname.exit336.i ], [ @.str.51, %mk_fname.exit327.i ]
  %call131.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull %.str.51.sink.i, ptr noundef nonnull %value.i) #14, !dbg !654
  %call132.i = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @e_msg) #14, !dbg !654
  br label %clean_up.thread.i, !dbg !526

clean_up.thread.i:                                ; preds = %if.else168.i, %if.else100.i, %if.else77.i, %if.end46.i, %clean_up.thread.sink.split.i
  %pfp.3 = phi ptr [ %pfp.2, %clean_up.thread.sink.split.i ], [ %pfp.0, %if.end46.i ], [ %pfp.0, %if.else77.i ], [ %pfp.0, %if.else100.i ], [ %pfp.0, %if.else168.i ], !dbg !529
  %bfp.3 = phi ptr [ %bfp.2, %clean_up.thread.sink.split.i ], [ %bfp.0, %if.end46.i ], [ %bfp.0, %if.else77.i ], [ %bfp.0, %if.else100.i ], [ %bfp.0, %if.else168.i ], !dbg !530
  %qfp.3 = phi ptr [ %qfp.2, %clean_up.thread.sink.split.i ], [ %qfp.0, %if.end46.i ], [ %qfp.0, %if.else77.i ], [ %qfp.0, %if.else100.i ], [ %qfp.0, %if.else168.i ], !dbg !433
  %cfp.3 = phi ptr [ %cfp.2, %clean_up.thread.sink.split.i ], [ %cfp.0, %if.end46.i ], [ %cfp.0, %if.else77.i ], [ %cfp.0, %if.else100.i ], [ %cfp.0, %if.else168.i ], !dbg !532
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !417, metadata !DIExpression()) #14, !dbg !433
  call void @llvm.dbg.label(metadata !432) #14, !dbg !525
  %call198347.i = call i32 @fclose(ptr noundef %rfp.0.i) #14, !dbg !526
  %tobool202.not.i = icmp eq ptr %pfp.3, null, !dbg !655
  br i1 %tobool202.not.i, label %if.end205.i, label %if.then203.i, !dbg !659

read_reslib_header.exit.thread180:                ; preds = %if.then.i342.i, %if.else.i344.i
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !417, metadata !DIExpression()) #14, !dbg !433
  call void @llvm.dbg.label(metadata !432) #14, !dbg !525
  %call198353.i = call i32 @fclose(ptr noundef nonnull %rfp.0.i) #14, !dbg !526
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fname.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %newname.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %value.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %keyword.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line.i) #14, !dbg !527
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !400, metadata !DIExpression()), !dbg !402
  br label %if.end, !dbg !528

if.then203.i:                                     ; preds = %clean_up.thread.i
  %call204.i = call i32 @fclose(ptr noundef nonnull %pfp.3) #14, !dbg !660
  br label %if.end205.i, !dbg !660

if.end205.i:                                      ; preds = %if.then203.i, %clean_up.thread.i
  %tobool206.not.i = icmp eq ptr %bfp.3, null, !dbg !661
  br i1 %tobool206.not.i, label %if.end209.i, label %if.then207.i, !dbg !663

if.then207.i:                                     ; preds = %if.end205.i
  %call208.i = call i32 @fclose(ptr noundef nonnull %bfp.3) #14, !dbg !664
  br label %if.end209.i, !dbg !664

if.end209.i:                                      ; preds = %if.then207.i, %if.end205.i
  %tobool210.not.i = icmp eq ptr %qfp.3, null, !dbg !665
  br i1 %tobool210.not.i, label %if.end213.i, label %if.then211.i, !dbg !667

if.then211.i:                                     ; preds = %if.end209.i
  %call212.i = call i32 @fclose(ptr noundef nonnull %qfp.3) #14, !dbg !668
  br label %if.end213.i, !dbg !668

if.end213.i:                                      ; preds = %if.then211.i, %if.end209.i
  %tobool214.not.i = icmp eq ptr %cfp.3, null, !dbg !669
  br i1 %tobool214.not.i, label %if.end217.i, label %if.then215.i, !dbg !671

if.then215.i:                                     ; preds = %if.end213.i
  %call216.i = call i32 @fclose(ptr noundef nonnull %cfp.3) #14, !dbg !672
  br label %if.end217.i, !dbg !672

if.end217.i:                                      ; preds = %if.then215.i, %if.end213.i
  %call219.i = call i64 @strlen(ptr noundef nonnull %line.i) #15, !dbg !673
  %10 = trunc i64 %call219.i to i32, !dbg !673
  %conv220.i = add i32 %10, -1, !dbg !673
  call void @llvm.dbg.value(metadata i32 %conv220.i, metadata !419, metadata !DIExpression()) #14, !dbg !433
  %11 = call i32 @llvm.smin.i32(i32 %conv220.i, i32 20) #14, !dbg !674
  call void @llvm.dbg.value(metadata i32 %11, metadata !419, metadata !DIExpression()) #14, !dbg !433
  %call224.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.59, i32 noundef %11, i32 noundef %11, ptr noundef nonnull %line.i) #14, !dbg !675
  %call225.i = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef nonnull @e_msg) #14, !dbg !676
  br label %read_reslib_header.exit.thread, !dbg !677

read_reslib_header.exit.thread:                   ; preds = %if.then7.i, %if.then21.i, %if.then30.i, %if.then14.i, %if.end217.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fname.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %newname.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %value.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %keyword.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line.i) #14, !dbg !527
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !400, metadata !DIExpression()), !dbg !402
  br label %cleanup, !dbg !528

read_reslib_header.exit:                          ; preds = %while.cond.backedge.i
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !417, metadata !DIExpression()) #14, !dbg !433
  call void @llvm.dbg.label(metadata !432) #14, !dbg !525
  %call198.i = call i32 @fclose(ptr noundef %rfp.0.i) #14, !dbg !526
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fname.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %newname.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %value.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %keyword.i) #14, !dbg !527
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line.i) #14, !dbg !527
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !400, metadata !DIExpression()), !dbg !402
  br label %if.end, !dbg !528

if.end:                                           ; preds = %read_reslib_header.exit, %read_reslib_header.exit.thread192, %read_reslib_header.exit.thread180
  %cfp.5190 = phi ptr [ null, %read_reslib_header.exit.thread180 ], [ %cfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread192 ]
  %qfp.5189 = phi ptr [ null, %read_reslib_header.exit.thread180 ], [ %qfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread192 ]
  %bfp.5188 = phi ptr [ null, %read_reslib_header.exit.thread180 ], [ %bfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread192 ]
  %pfp.5187 = phi ptr [ null, %read_reslib_header.exit.thread180 ], [ %pfp.1, %read_reslib_header.exit ], [ null, %read_reslib_header.exit.thread192 ]
  %.b.i = load i1, ptr @initatoms.init, align 4, !dbg !678
  br i1 %.b.i, label %initatoms.exit, label %if.end.i, !dbg !681

if.end.i:                                         ; preds = %if.end
  store i1 true, ptr @initatoms.init, align 4, !dbg !682
  call void @llvm.dbg.value(metadata ptr @atoms, metadata !244, metadata !DIExpression()) #14, !dbg !683
  call void @llvm.dbg.value(metadata i32 0, metadata !243, metadata !DIExpression()) #14, !dbg !683
  br label %for.body.i, !dbg !684

for.body.i:                                       ; preds = %for.inc.i, %if.end.i
  %ap.012.i = phi ptr [ @atoms, %if.end.i ], [ %incdec.ptr.i, %for.inc.i ]
  %i.011.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata ptr %ap.012.i, metadata !244, metadata !DIExpression()) #14, !dbg !683
  call void @llvm.dbg.value(metadata i32 %i.011.i, metadata !243, metadata !DIExpression()) #14, !dbg !683
  call void @NAB_initatom(ptr noundef nonnull %ap.012.i, i32 noundef 1) #14, !dbg !686
  %call.i26 = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #18, !dbg !689
  store ptr %call.i26, ptr %ap.012.i, align 8, !dbg !690, !tbaa !691
  %cmp2.i = icmp eq ptr %call.i26, null, !dbg !694
  br i1 %cmp2.i, label %if.then3.i, label %for.inc.i, !dbg !696

if.then3.i:                                       ; preds = %for.body.i
  %12 = load ptr, ptr @stderr, align 8, !dbg !697, !tbaa !299
  %13 = call i64 @fwrite(ptr nonnull @.str.64, i64 38, i64 1, ptr %12) #19, !dbg !699
  call void @exit(i32 noundef 1) #17, !dbg !700
  unreachable, !dbg !700

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1, !dbg !701
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !243, metadata !DIExpression()) #14, !dbg !683
  %incdec.ptr.i = getelementptr inbounds %struct.atom_t, ptr %ap.012.i, i64 1, !dbg !702
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !244, metadata !DIExpression()) #14, !dbg !683
  %exitcond.not.i = icmp eq i32 %inc.i, 1000, !dbg !703
  br i1 %exitcond.not.i, label %initatoms.exit, label %for.body.i, !dbg !684, !llvm.loop !704

initatoms.exit:                                   ; preds = %for.inc.i, %if.end
  %14 = load i8, ptr %offname, align 16, !dbg !706, !tbaa !459
  %tobool.not = icmp eq i8 %14, 0, !dbg !706
  br i1 %tobool.not, label %if.else, label %if.then2, !dbg !708

if.then2:                                         ; preds = %initatoms.exit
  call void @llvm.dbg.value(metadata ptr %offname, metadata !709, metadata !DIExpression()) #14, !dbg !769
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !714, metadata !DIExpression()) #14, !dbg !769
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_names.i) #14, !dbg !772
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_resnames.i) #14, !dbg !772
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %typex.i) #14, !dbg !773
  call void @llvm.dbg.declare(metadata ptr %typex.i, metadata !747, metadata !DIExpression()) #14, !dbg !774
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %resx.i) #14, !dbg !773
  call void @llvm.dbg.declare(metadata ptr %resx.i, metadata !749, metadata !DIExpression()) #14, !dbg !775
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %flags.i) #14, !dbg !773
  call void @llvm.dbg.declare(metadata ptr %flags.i, metadata !750, metadata !DIExpression()) #14, !dbg !776
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %seq.i) #14, !dbg !773
  call void @llvm.dbg.declare(metadata ptr %seq.i, metadata !751, metadata !DIExpression()) #14, !dbg !777
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %elmnt.i) #14, !dbg !773
  call void @llvm.dbg.declare(metadata ptr %elmnt.i, metadata !752, metadata !DIExpression()) #14, !dbg !778
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %atom1x.i) #14, !dbg !779
  call void @llvm.dbg.declare(metadata ptr %atom1x.i, metadata !753, metadata !DIExpression()) #14, !dbg !780
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %atom2x.i) #14, !dbg !779
  call void @llvm.dbg.declare(metadata ptr %atom2x.i, metadata !754, metadata !DIExpression()) #14, !dbg !781
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %chg.i) #14, !dbg !782
  call void @llvm.dbg.declare(metadata ptr %chg.i, metadata !755, metadata !DIExpression()) #14, !dbg !783
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %x.i) #14, !dbg !782
  call void @llvm.dbg.declare(metadata ptr %x.i, metadata !757, metadata !DIExpression()) #14, !dbg !784
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %y.i) #14, !dbg !782
  call void @llvm.dbg.declare(metadata ptr %y.i, metadata !758, metadata !DIExpression()) #14, !dbg !785
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %z.i) #14, !dbg !782
  call void @llvm.dbg.declare(metadata ptr %z.i, metadata !759, metadata !DIExpression()) #14, !dbg !786
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %a_name.i) #14, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %a_name.i, metadata !760, metadata !DIExpression()) #14, !dbg !788
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %type.i) #14, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %type.i, metadata !763, metadata !DIExpression()) #14, !dbg !789
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %res_name.i) #14, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %res_name.i, metadata !764, metadata !DIExpression()) #14, !dbg !790
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %prefix.i) #14, !dbg !791
  call void @llvm.dbg.declare(metadata ptr %prefix.i, metadata !765, metadata !DIExpression()) #14, !dbg !792
  store i32 0, ptr @n_atoms, align 4, !dbg !793, !tbaa !794
  %call.i27 = call ptr (ptr, i32, ...) @dbDBRndOpen(ptr noundef nonnull %offname, i32 noundef 1) #14, !dbg !795
  call void @llvm.dbg.value(metadata ptr %call.i27, metadata !720, metadata !DIExpression()) #14, !dbg !769
  call void @llvm.dbg.value(metadata ptr %n_resnames.i, metadata !717, metadata !DIExpression(DW_OP_deref)) #14, !dbg !769
  %call1.i28 = call signext i8 (ptr, ptr, ptr, ptr, i32, ...) @bDBGetValue(ptr noundef %call.i27, ptr noundef nonnull @.str.65, ptr noundef nonnull %n_resnames.i, ptr noundef nonnull %res_name.i, i32 noundef 10) #14, !dbg !796
  call void @llvm.dbg.value(metadata i8 %call1.i28, metadata !746, metadata !DIExpression()) #14, !dbg !769
  call void @llvm.dbg.value(metadata i32 0, metadata !719, metadata !DIExpression()) #14, !dbg !769
  %15 = load i32, ptr %n_resnames.i, align 4, !dbg !797, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %15, metadata !717, metadata !DIExpression()) #14, !dbg !769
  %cmp103.i = icmp sgt i32 %15, 0, !dbg !800
  br i1 %cmp103.i, label %for.body.i30, label %off2reslib.exit, !dbg !801

for.body.i30:                                     ; preds = %if.then2, %for.inc66.i
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %for.inc66.i ], [ 0, %if.then2 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv110.i, metadata !719, metadata !DIExpression()) #14, !dbg !769
  %arrayidx.i = getelementptr inbounds [100 x [10 x i8]], ptr %res_name.i, i64 0, i64 %indvars.iv110.i, !dbg !802
  %call4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %prefix.i, ptr noundef nonnull @.str.66, ptr noundef nonnull %arrayidx.i) #14, !dbg !804
  call void (ptr, ...) @DBZeroPrefix(ptr noundef %call.i27) #14, !dbg !805
  call void (ptr, ptr, ...) @DBPushPrefix(ptr noundef %call.i27, ptr noundef nonnull %prefix.i) #14, !dbg !806
  call void @llvm.dbg.value(metadata ptr %n_names.i, metadata !716, metadata !DIExpression(DW_OP_deref)) #14, !dbg !769
  %call6.i = call signext i8 (ptr, ptr, ptr, ptr, i32, ...) @bDBGetValue(ptr noundef %call.i27, ptr noundef nonnull @.str.67, ptr noundef nonnull %n_names.i, ptr noundef nonnull @lr_name, i32 noundef 1) #14, !dbg !807
  call void @llvm.dbg.value(metadata i8 %call6.i, metadata !746, metadata !DIExpression()) #14, !dbg !769
  %call15.i = call signext i8 (ptr, ptr, ptr, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, ...) @bDBGetTable(ptr noundef %call.i27, ptr noundef nonnull @.str.68, ptr noundef nonnull @n_atoms, i32 noundef 3, ptr noundef nonnull %typex.i, i64 noundef 4, i32 noundef 4, ptr noundef nonnull %resx.i, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %flags.i, i64 noundef 4, i32 noundef 6, ptr noundef nonnull %seq.i, i64 noundef 4, i32 noundef 7, ptr noundef nonnull %elmnt.i, i64 noundef 4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %chg.i, i64 noundef 8, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %a_name.i, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %type.i, i32 noundef 10, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !808
  call void @llvm.dbg.value(metadata i8 %call15.i, metadata !746, metadata !DIExpression()) #14, !dbg !769
  %call19.i29 = call signext i8 (ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, ...) @bDBGetTable(ptr noundef %call.i27, ptr noundef nonnull @.str.69, ptr noundef nonnull @n_atoms, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %x.i, i64 noundef 8, i32 noundef 2, ptr noundef nonnull %y.i, i64 noundef 8, i32 noundef 3, ptr noundef nonnull %z.i, i64 noundef 8, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !809
  call void @llvm.dbg.value(metadata i8 %call19.i29, metadata !746, metadata !DIExpression()) #14, !dbg !769
  call void @llvm.dbg.value(metadata i32 0, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %16 = load i32, ptr @n_atoms, align 4, !dbg !810, !tbaa !794
  %cmp2198.i = icmp sgt i32 %16, 0, !dbg !813
  br i1 %cmp2198.i, label %for.body22.i, label %if.end.i32, !dbg !814

for.body22.i:                                     ; preds = %for.body.i30, %for.body22.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body22.i ], [ 0, %for.body.i30 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %arrayidx24.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvars.iv.i, !dbg !815
  call void @llvm.dbg.value(metadata ptr %arrayidx24.i, metadata !715, metadata !DIExpression()) #14, !dbg !769
  call void @NAB_initatom(ptr noundef nonnull %arrayidx24.i, i32 noundef 0) #14, !dbg !817
  %17 = load ptr, ptr %arrayidx24.i, align 16, !dbg !818, !tbaa !691
  %arrayidx26.i = getelementptr inbounds [100 x [10 x i8]], ptr %a_name.i, i64 0, i64 %indvars.iv.i, !dbg !819
  %call28.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull %arrayidx26.i) #14, !dbg !820
  %arrayidx30.i = getelementptr inbounds [100 x double], ptr %chg.i, i64 0, i64 %indvars.iv.i, !dbg !821
  %18 = load double, ptr %arrayidx30.i, align 8, !dbg !821, !tbaa !822
  %a_charge.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvars.iv.i, i32 6, !dbg !823
  store double %18, ptr %a_charge.i, align 16, !dbg !824, !tbaa !825
  %arrayidx32.i = getelementptr inbounds [100 x double], ptr %x.i, i64 0, i64 %indvars.iv.i, !dbg !826
  %19 = load double, ptr %arrayidx32.i, align 8, !dbg !826, !tbaa !822
  %a_pos.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvars.iv.i, i32 17, !dbg !827
  store double %19, ptr %a_pos.i, align 16, !dbg !828, !tbaa !822
  %arrayidx35.i = getelementptr inbounds [100 x double], ptr %y.i, i64 0, i64 %indvars.iv.i, !dbg !829
  %20 = load double, ptr %arrayidx35.i, align 8, !dbg !829, !tbaa !822
  %arrayidx37.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvars.iv.i, i32 17, i64 1, !dbg !830
  store double %20, ptr %arrayidx37.i, align 8, !dbg !831, !tbaa !822
  %arrayidx39.i = getelementptr inbounds [100 x double], ptr %z.i, i64 0, i64 %indvars.iv.i, !dbg !832
  %21 = load double, ptr %arrayidx39.i, align 8, !dbg !832, !tbaa !822
  %arrayidx41.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvars.iv.i, i32 17, i64 2, !dbg !833
  store double %21, ptr %arrayidx41.i, align 16, !dbg !834, !tbaa !822
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !835
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %22 = load i32, ptr @n_atoms, align 4, !dbg !810, !tbaa !794
  %23 = sext i32 %22 to i64, !dbg !813
  %cmp21.i = icmp slt i64 %indvars.iv.next.i, %23, !dbg !813
  br i1 %cmp21.i, label %for.body22.i, label %for.end.i, !dbg !814, !llvm.loop !836

for.end.i:                                        ; preds = %for.body22.i
  %cmp42.i = icmp sgt i32 %22, 0, !dbg !838
  br i1 %cmp42.i, label %if.then.i31, label %if.end.i32, !dbg !840

if.then.i31:                                      ; preds = %for.end.i
  call fastcc void @addres2reslib(ptr noundef nonnull %call19.i) #14, !dbg !841
  br label %if.end.i32, !dbg !841

if.end.i32:                                       ; preds = %if.then.i31, %for.end.i, %for.body.i30
  %call46.i = call signext i8 (ptr, ptr, ptr, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, ...) @bDBGetTable(ptr noundef %call.i27, ptr noundef nonnull @.str.70, ptr noundef nonnull @n_bonds, i32 noundef 1, ptr noundef nonnull %atom1x.i, i64 noundef 4, i32 noundef 2, ptr noundef nonnull %atom2x.i, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %flags.i, i64 noundef 4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14, !dbg !842
  call void @llvm.dbg.value(metadata i8 %call46.i, metadata !746, metadata !DIExpression()) #14, !dbg !769
  call void @llvm.dbg.value(metadata i32 0, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %24 = load i32, ptr @n_bonds, align 4, !tbaa !794
  %cmp48100.i = icmp sgt i32 %24, 0, !dbg !843
  br i1 %cmp48100.i, label %for.body49.preheader.i, label %for.inc66.i, !dbg !846

for.body49.preheader.i:                           ; preds = %if.end.i32
  %wide.trip.count.i = zext i32 %24 to i64, !dbg !843
  br label %for.body49.i, !dbg !846

for.body49.i:                                     ; preds = %for.body49.i, %for.body49.preheader.i
  %indvars.iv107.i = phi i64 [ 0, %for.body49.preheader.i ], [ %indvars.iv.next108.i, %for.body49.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv107.i, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %arrayidx51.i = getelementptr inbounds [100 x i32], ptr %atom1x.i, i64 0, i64 %indvars.iv107.i, !dbg !847
  %25 = load i32, ptr %arrayidx51.i, align 4, !dbg !847, !tbaa !794
  %arrayidx53.i = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %indvars.iv107.i, !dbg !849
  store i32 %25, ptr %arrayidx53.i, align 8, !dbg !850, !tbaa !794
  %arrayidx56.i = getelementptr inbounds [100 x i32], ptr %atom2x.i, i64 0, i64 %indvars.iv107.i, !dbg !851
  %26 = load i32, ptr %arrayidx56.i, align 4, !dbg !851, !tbaa !794
  %arrayidx59.i = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %indvars.iv107.i, i64 1, !dbg !852
  store i32 %26, ptr %arrayidx59.i, align 4, !dbg !853, !tbaa !794
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1, !dbg !854
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next108.i, metadata !718, metadata !DIExpression()) #14, !dbg !769
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count.i, !dbg !843
  br i1 %exitcond.not.i33, label %if.then64.i, label %for.body49.i, !dbg !846, !llvm.loop !855

if.then64.i:                                      ; preds = %for.body49.i
  call fastcc void @addbonds2reslib(ptr noundef nonnull %call19.i) #14, !dbg !857
  br label %for.inc66.i, !dbg !857

for.inc66.i:                                      ; preds = %if.then64.i, %if.end.i32
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1, !dbg !859
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next111.i, metadata !719, metadata !DIExpression()) #14, !dbg !769
  %27 = load i32, ptr %n_resnames.i, align 4, !dbg !797, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %27, metadata !717, metadata !DIExpression()) #14, !dbg !769
  %28 = sext i32 %27 to i64, !dbg !800
  %cmp.i = icmp slt i64 %indvars.iv.next111.i, %28, !dbg !800
  br i1 %cmp.i, label %for.body.i30, label %off2reslib.exit, !dbg !801, !llvm.loop !860

off2reslib.exit:                                  ; preds = %for.inc66.i, %if.then2
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %prefix.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %res_name.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %type.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %a_name.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %z.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %y.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %x.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %chg.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %atom2x.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %atom1x.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %elmnt.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %seq.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %flags.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %resx.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %typex.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_resnames.i) #14, !dbg !862
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_names.i) #14, !dbg !862
  br label %if.end6, !dbg !863

if.else:                                          ; preds = %initatoms.exit
  call void @llvm.dbg.value(metadata ptr %pfp.1, metadata !337, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata ptr %pfp.1, metadata !864, metadata !DIExpression()) #14, !dbg !881
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !869, metadata !DIExpression()) #14, !dbg !881
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %line.i34) #14, !dbg !884
  call void @llvm.dbg.declare(metadata ptr %line.i34, metadata !870, metadata !DIExpression()) #14, !dbg !885
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %ltype.i) #14, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %ltype.i, metadata !871, metadata !DIExpression()) #14, !dbg !887
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %a_name.i35) #14, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %a_name.i35, metadata !873, metadata !DIExpression()) #14, !dbg !888
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %r_name.i) #14, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %r_name.i, metadata !874, metadata !DIExpression()) #14, !dbg !889
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a_num.i) #14, !dbg !890
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_num.i) #14, !dbg !890
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x.i36) #14, !dbg !891
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %y.i37) #14, !dbg !891
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %z.i38) #14, !dbg !891
  store i32 0, ptr @n_atoms, align 4, !dbg !892, !tbaa !794
  store i8 0, ptr @lr_name, align 1, !dbg !893, !tbaa !459
  %call45.i = call ptr @fgets(ptr noundef nonnull %line.i34, i32 noundef 256, ptr noundef %pfp.5187) #14, !dbg !894
  %tobool.not46.i = icmp eq ptr %call45.i, null, !dbg !895
  br i1 %tobool.not46.i, label %while.end.i, label %while.body.i41, !dbg !895

while.body.i41:                                   ; preds = %if.else, %if.end33.i57
  %bcmp.i39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.79, ptr noundef nonnull dereferenceable(6) %line.i34, i64 6) #14, !dbg !896
  %cmp.i40 = icmp eq i32 %bcmp.i39, 0, !dbg !899
  br i1 %cmp.i40, label %if.then.i42, label %if.else.i45, !dbg !900

if.then.i42:                                      ; preds = %while.body.i41
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !901, metadata !DIExpression()) #14, !dbg !909
  call void @llvm.dbg.value(metadata ptr %line.i34, metadata !906, metadata !DIExpression()) #14, !dbg !909
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %rkind.i.i) #14, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %rkind.i.i, metadata !907, metadata !DIExpression()) #14, !dbg !913
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %rakind.i.i) #14, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %rakind.i.i, metadata !908, metadata !DIExpression()) #14, !dbg !914
  %call.i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line.i34, ptr noundef nonnull @.str.83, ptr noundef nonnull %rkind.i.i, ptr noundef nonnull %rakind.i.i) #14, !dbg !915
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2, !dbg !917
  br i1 %cmp.not.i.i, label %if.end.i.i, label %setrlibattrs.exit.i, !dbg !918

if.end.i.i:                                       ; preds = %if.then.i42
  %lhsv.i.i = load i32, ptr %rkind.i.i, align 16, !dbg !919
  switch i32 %lhsv.i.i, label %if.else11.i.i [
    i32 4279876, label %if.end19.sink.split.i.i
    i32 4279890, label %if.then9.i.i
  ], !dbg !921

if.then9.i.i:                                     ; preds = %if.end.i.i
  br label %if.end19.sink.split.i.i, !dbg !922

if.else11.i.i:                                    ; preds = %if.end.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %rkind.i.i, ptr noundef nonnull dereferenceable(3) @.str.7, i64 3) #14, !dbg !924
  %cmp14.i.i = icmp eq i32 %bcmp.i.i, 0, !dbg !926
  br i1 %cmp14.i.i, label %if.end19.sink.split.i.i, label %if.end19.i.i, !dbg !927

if.end19.sink.split.i.i:                          ; preds = %if.else11.i.i, %if.then9.i.i, %if.end.i.i
  %.sink.i.i = phi i32 [ 2, %if.then9.i.i ], [ 1, %if.end.i.i ], [ 3, %if.else11.i.i ]
  store i32 %.sink.i.i, ptr %rl_r_kind.i, align 8, !dbg !928, !tbaa !330
  br label %if.end19.i.i, !dbg !929

if.end19.i.i:                                     ; preds = %if.end19.sink.split.i.i, %if.else11.i.i
  %bcmp41.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %rakind.i.i, ptr noundef nonnull dereferenceable(7) @.str.84, i64 7) #14, !dbg !929
  %cmp22.i.i = icmp eq i32 %bcmp41.i.i, 0, !dbg !931
  br i1 %cmp22.i.i, label %cleanup.sink.split.i.i, label %if.else24.i.i, !dbg !932

if.else24.i.i:                                    ; preds = %if.end19.i.i
  %lhsv42.i.i = load i64, ptr %rakind.i.i, align 16, !dbg !933
  %.not44.i.i = icmp eq i64 %lhsv42.i.i, 21760796498086977, !dbg !933
  br i1 %.not44.i.i, label %cleanup.sink.split.i.i, label %setrlibattrs.exit.i, !dbg !935

cleanup.sink.split.i.i:                           ; preds = %if.else24.i.i, %if.end19.i.i
  %.sink45.i.i = phi i32 [ 1, %if.end19.i.i ], [ 2, %if.else24.i.i ]
  store i32 %.sink45.i.i, ptr %rl_r_atomkind.i, align 4, !dbg !936, !tbaa !570
  br label %setrlibattrs.exit.i, !dbg !937

setrlibattrs.exit.i:                              ; preds = %cleanup.sink.split.i.i, %if.else24.i.i, %if.then.i42
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %rakind.i.i) #14, !dbg !937
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %rkind.i.i) #14, !dbg !937
  br label %if.end33.i57, !dbg !938

if.else.i45:                                      ; preds = %while.body.i41
  %rhsv.i43 = load i32, ptr %line.i34, align 16, !dbg !939
  %.not.i44 = icmp eq i32 %rhsv.i43, 1297044545, !dbg !939
  br i1 %.not.i44, label %if.then10.i, label %lor.lhs.false.i, !dbg !941

lor.lhs.false.i:                                  ; preds = %if.else.i45
  %bcmp44.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.81, ptr noundef nonnull dereferenceable(6) %line.i34, i64 6) #14, !dbg !942
  %cmp9.i = icmp eq i32 %bcmp44.i, 0, !dbg !943
  br i1 %cmp9.i, label %if.then10.i, label %if.end33.i57, !dbg !944

if.then10.i:                                      ; preds = %lor.lhs.false.i, %if.else.i45
  call void @llvm.dbg.value(metadata ptr %a_num.i, metadata !875, metadata !DIExpression(DW_OP_deref)) #14, !dbg !881
  call void @llvm.dbg.value(metadata ptr %r_num.i, metadata !876, metadata !DIExpression(DW_OP_deref)) #14, !dbg !881
  call void @llvm.dbg.value(metadata ptr %x.i36, metadata !877, metadata !DIExpression(DW_OP_deref)) #14, !dbg !881
  call void @llvm.dbg.value(metadata ptr %y.i37, metadata !878, metadata !DIExpression(DW_OP_deref)) #14, !dbg !881
  call void @llvm.dbg.value(metadata ptr %z.i38, metadata !879, metadata !DIExpression(DW_OP_deref)) #14, !dbg !881
  %call15.i46 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line.i34, ptr noundef nonnull @.str.82, ptr noundef nonnull %ltype.i, ptr noundef nonnull %a_num.i, ptr noundef nonnull %a_name.i35, ptr noundef nonnull %r_name.i, ptr noundef nonnull %r_num.i, ptr noundef nonnull %x.i36, ptr noundef nonnull %y.i37, ptr noundef nonnull %z.i38) #14, !dbg !945
  %call17.i = call i32 @strcmp(ptr noundef nonnull @lr_name, ptr noundef nonnull %r_name.i) #15, !dbg !947
  %cmp18.not.i = icmp eq i32 %call17.i, 0, !dbg !949
  %.pre.i = load i32, ptr @n_atoms, align 4, !dbg !950, !tbaa !794
  br i1 %cmp18.not.i, label %if.end24.i54, label %if.then19.i, !dbg !951

if.then19.i:                                      ; preds = %if.then10.i
  %cmp20.i47 = icmp sgt i32 %.pre.i, 0, !dbg !952
  br i1 %cmp20.i47, label %if.then21.i48, label %if.end.i50, !dbg !955

if.then21.i48:                                    ; preds = %if.then19.i
  call fastcc void @addres2reslib(ptr noundef nonnull %call19.i) #14, !dbg !956
  store i32 0, ptr @n_atoms, align 4, !dbg !958, !tbaa !794
  br label %if.end.i50, !dbg !959

if.end.i50:                                       ; preds = %if.then21.i48, %if.then19.i
  %29 = phi i32 [ 0, %if.then21.i48 ], [ %.pre.i, %if.then19.i ]
  %call23.i49 = call ptr @strcpy(ptr noundef nonnull @lr_name, ptr noundef nonnull %r_name.i) #14, !dbg !960
  br label %if.end24.i54, !dbg !961

if.end24.i54:                                     ; preds = %if.end.i50, %if.then10.i
  %30 = phi i32 [ %29, %if.end.i50 ], [ %.pre.i, %if.then10.i ], !dbg !962
  %idxprom.i = sext i32 %30 to i64, !dbg !963
  %arrayidx.i51 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %idxprom.i, !dbg !963
  call void @llvm.dbg.value(metadata ptr %arrayidx.i51, metadata !880, metadata !DIExpression()) #14, !dbg !881
  call void @NAB_initatom(ptr noundef nonnull %arrayidx.i51, i32 noundef 0) #14, !dbg !964
  %31 = load ptr, ptr %arrayidx.i51, align 16, !dbg !965, !tbaa !691
  %call26.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull %a_name.i35) #14, !dbg !966
  %32 = load double, ptr %x.i36, align 8, !dbg !967, !tbaa !822
  call void @llvm.dbg.value(metadata double %32, metadata !877, metadata !DIExpression()) #14, !dbg !881
  %a_pos.i52 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %idxprom.i, i32 17, !dbg !968
  store double %32, ptr %a_pos.i52, align 16, !dbg !969, !tbaa !822
  %33 = load double, ptr %y.i37, align 8, !dbg !970, !tbaa !822
  call void @llvm.dbg.value(metadata double %33, metadata !878, metadata !DIExpression()) #14, !dbg !881
  %arrayidx29.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %idxprom.i, i32 17, i64 1, !dbg !971
  store double %33, ptr %arrayidx29.i, align 8, !dbg !972, !tbaa !822
  %34 = load double, ptr %z.i38, align 8, !dbg !973, !tbaa !822
  call void @llvm.dbg.value(metadata double %34, metadata !879, metadata !DIExpression()) #14, !dbg !881
  %arrayidx31.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %idxprom.i, i32 17, i64 2, !dbg !974
  store double %34, ptr %arrayidx31.i, align 16, !dbg !975, !tbaa !822
  %35 = load i32, ptr @n_atoms, align 4, !dbg !976, !tbaa !794
  %inc.i53 = add nsw i32 %35, 1, !dbg !976
  store i32 %inc.i53, ptr @n_atoms, align 4, !dbg !976, !tbaa !794
  br label %if.end33.i57, !dbg !977

if.end33.i57:                                     ; preds = %if.end24.i54, %lor.lhs.false.i, %setrlibattrs.exit.i
  %call.i55 = call ptr @fgets(ptr noundef nonnull %line.i34, i32 noundef 256, ptr noundef %pfp.5187) #14, !dbg !894
  %tobool.not.i56 = icmp eq ptr %call.i55, null, !dbg !895
  br i1 %tobool.not.i56, label %while.end.i, label %while.body.i41, !dbg !895, !llvm.loop !978

while.end.i:                                      ; preds = %if.end33.i57, %if.else
  %36 = load i32, ptr @n_atoms, align 4, !dbg !980, !tbaa !794
  %cmp34.i = icmp sgt i32 %36, 0, !dbg !982
  br i1 %cmp34.i, label %if.then35.i, label %pdb2reslib.exit, !dbg !983

if.then35.i:                                      ; preds = %while.end.i
  call fastcc void @addres2reslib(ptr noundef nonnull %call19.i) #14, !dbg !984
  br label %pdb2reslib.exit, !dbg !984

pdb2reslib.exit:                                  ; preds = %while.end.i, %if.then35.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %z.i38) #14, !dbg !985
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %y.i37) #14, !dbg !985
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x.i36) #14, !dbg !985
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_num.i) #14, !dbg !985
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a_num.i) #14, !dbg !985
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %r_name.i) #14, !dbg !985
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %a_name.i35) #14, !dbg !985
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %ltype.i) #14, !dbg !985
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %line.i34) #14, !dbg !985
  call void @llvm.dbg.value(metadata ptr %bfp.1, metadata !397, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata ptr %bfp.1, metadata !986, metadata !DIExpression()) #14, !dbg !995
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !989, metadata !DIExpression()) #14, !dbg !995
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %line.i58) #14, !dbg !997
  call void @llvm.dbg.declare(metadata ptr %line.i58, metadata !990, metadata !DIExpression()) #14, !dbg !998
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %r_name.i59) #14, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %r_name.i59, metadata !991, metadata !DIExpression()) #14, !dbg !1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bi.i) #14, !dbg !1001
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bj.i) #14, !dbg !1001
  store i32 0, ptr @n_bonds, align 4, !dbg !1002, !tbaa !794
  store i8 0, ptr %r_name.i59, align 16, !dbg !1003, !tbaa !459
  %call70.i = call ptr @fgets(ptr noundef nonnull %line.i58, i32 noundef 256, ptr noundef %bfp.5188) #14, !dbg !1004
  %tobool.not71.i = icmp eq ptr %call70.i, null, !dbg !1005
  br i1 %tobool.not71.i, label %while.end.i76, label %while.body.i61, !dbg !1005

while.body.i61:                                   ; preds = %pdb2reslib.exit, %if.end52.i
  %37 = load i8, ptr %line.i58, align 16, !dbg !1006, !tbaa !459
  %cmp.i60 = icmp eq i8 %37, 35, !dbg !1009
  br i1 %cmp.i60, label %if.then.i63, label %if.else27.i, !dbg !1010

if.then.i63:                                      ; preds = %while.body.i61
  %call6.i62 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line.i58, ptr noundef nonnull @.str.86, ptr noundef nonnull %r_name.i59) #14, !dbg !1011
  %cmp7.not.i = icmp eq i32 %call6.i62, 1, !dbg !1014
  br i1 %cmp7.not.i, label %if.else.i66, label %if.then9.i, !dbg !1015

if.then9.i:                                       ; preds = %if.then.i63
  %call11.i = call i64 @strlen(ptr noundef nonnull %line.i58) #15, !dbg !1016
  %38 = trunc i64 %call11.i to i32, !dbg !1016
  %conv12.i = add i32 %38, -1, !dbg !1016
  call void @llvm.dbg.value(metadata i32 %conv12.i, metadata !992, metadata !DIExpression()) #14, !dbg !995
  %39 = call i32 @llvm.smin.i32(i32 %conv12.i, i32 20) #14, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %39, metadata !992, metadata !DIExpression()) #14, !dbg !995
  %call16.i64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.59, i32 noundef %39, i32 noundef %39, ptr noundef nonnull %line.i58) #14, !dbg !1019
  %call17.i65 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.87, ptr noundef nonnull @e_msg) #14, !dbg !1020
  br label %bnd2reslib.exit, !dbg !1021

if.else.i66:                                      ; preds = %if.then.i63
  %40 = load i32, ptr @n_bonds, align 4, !dbg !1022, !tbaa !794
  %cmp18.i = icmp sgt i32 %40, 0, !dbg !1024
  br i1 %cmp18.i, label %if.then20.i, label %if.else23.i, !dbg !1025

if.then20.i:                                      ; preds = %if.else.i66
  call fastcc void @addbonds2reslib(ptr noundef nonnull %call19.i) #14, !dbg !1026
  %call22.i67 = call ptr @strcpy(ptr noundef nonnull @lr_name, ptr noundef nonnull %r_name.i59) #14, !dbg !1028
  store i32 0, ptr @n_bonds, align 4, !dbg !1029, !tbaa !794
  br label %if.end52.i, !dbg !1030

if.else23.i:                                      ; preds = %if.else.i66
  %call25.i68 = call ptr @strcpy(ptr noundef nonnull @lr_name, ptr noundef nonnull %r_name.i59) #14, !dbg !1031
  br label %if.end52.i

if.else27.i:                                      ; preds = %while.body.i61
  call void @llvm.dbg.value(metadata ptr %bi.i, metadata !993, metadata !DIExpression(DW_OP_deref)) #14, !dbg !995
  call void @llvm.dbg.value(metadata ptr %bj.i, metadata !994, metadata !DIExpression(DW_OP_deref)) #14, !dbg !995
  %call29.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line.i58, ptr noundef nonnull @.str.88, ptr noundef nonnull %bi.i, ptr noundef nonnull %bj.i) #14, !dbg !1032
  %cmp30.not.i = icmp eq i32 %call29.i, 2, !dbg !1035
  br i1 %cmp30.not.i, label %if.else46.i, label %if.then32.i, !dbg !1036

if.then32.i:                                      ; preds = %if.else27.i
  %call34.i69 = call i64 @strlen(ptr noundef nonnull %line.i58) #15, !dbg !1037
  %41 = trunc i64 %call34.i69 to i32, !dbg !1037
  %conv36.i = add i32 %41, -1, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %conv36.i, metadata !992, metadata !DIExpression()) #14, !dbg !995
  %42 = call i32 @llvm.smin.i32(i32 %conv36.i, i32 20) #14, !dbg !1039
  call void @llvm.dbg.value(metadata i32 %42, metadata !992, metadata !DIExpression()) #14, !dbg !995
  %call44.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.59, i32 noundef %42, i32 noundef %42, ptr noundef nonnull %line.i58) #14, !dbg !1040
  %call45.i70 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.89, ptr noundef nonnull @e_msg) #14, !dbg !1041
  br label %bnd2reslib.exit, !dbg !1042

if.else46.i:                                      ; preds = %if.else27.i
  %43 = load i32, ptr %bi.i, align 4, !dbg !1043, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %43, metadata !993, metadata !DIExpression()) #14, !dbg !995
  %44 = load i32, ptr @n_bonds, align 4, !dbg !1045, !tbaa !794
  %idxprom.i71 = sext i32 %44 to i64, !dbg !1046
  %arrayidx.i72 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %idxprom.i71, !dbg !1046
  store i32 %43, ptr %arrayidx.i72, align 8, !dbg !1047, !tbaa !794
  %45 = load i32, ptr %bj.i, align 4, !dbg !1048, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %45, metadata !994, metadata !DIExpression()) #14, !dbg !995
  %arrayidx50.i = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %idxprom.i71, i64 1, !dbg !1049
  store i32 %45, ptr %arrayidx50.i, align 4, !dbg !1050, !tbaa !794
  %inc.i73 = add nsw i32 %44, 1, !dbg !1051
  store i32 %inc.i73, ptr @n_bonds, align 4, !dbg !1051, !tbaa !794
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else46.i, %if.else23.i, %if.then20.i
  %call.i74 = call ptr @fgets(ptr noundef nonnull %line.i58, i32 noundef 256, ptr noundef %bfp.5188) #14, !dbg !1004
  %tobool.not.i75 = icmp eq ptr %call.i74, null, !dbg !1005
  br i1 %tobool.not.i75, label %while.end.i76, label %while.body.i61, !dbg !1005, !llvm.loop !1052

while.end.i76:                                    ; preds = %if.end52.i, %pdb2reslib.exit
  %46 = load i32, ptr @n_bonds, align 4, !dbg !1054, !tbaa !794
  %cmp53.i = icmp sgt i32 %46, 0, !dbg !1056
  br i1 %cmp53.i, label %if.then55.i, label %bnd2reslib.exit, !dbg !1057

if.then55.i:                                      ; preds = %while.end.i76
  call fastcc void @addbonds2reslib(ptr noundef nonnull %call19.i) #14, !dbg !1058
  br label %bnd2reslib.exit, !dbg !1058

bnd2reslib.exit:                                  ; preds = %if.then9.i, %if.then32.i, %while.end.i76, %if.then55.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bj.i) #14, !dbg !1059
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bi.i) #14, !dbg !1059
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %r_name.i59) #14, !dbg !1059
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %line.i58) #14, !dbg !1059
  call void @llvm.dbg.value(metadata ptr %pfp.1, metadata !337, metadata !DIExpression()), !dbg !402
  %call4 = call i32 @fclose(ptr noundef %pfp.5187), !dbg !1060
  call void @llvm.dbg.value(metadata ptr %bfp.1, metadata !397, metadata !DIExpression()), !dbg !402
  %call5 = call i32 @fclose(ptr noundef %bfp.5188), !dbg !1061
  br label %if.end6

if.end6:                                          ; preds = %bnd2reslib.exit, %off2reslib.exit
  call void @llvm.dbg.value(metadata ptr %qfp.1, metadata !398, metadata !DIExpression()), !dbg !402
  %tobool7.not = icmp eq ptr %qfp.5189, null, !dbg !1062
  br i1 %tobool7.not, label %if.end10, label %if.then8, !dbg !1064

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata ptr %qfp.1, metadata !1065, metadata !DIExpression()) #14, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !1068, metadata !DIExpression()) #14, !dbg !1078
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %line.i77) #14, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %line.i77, metadata !1069, metadata !DIExpression()) #14, !dbg !1082
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %ltype.i78) #14, !dbg !1083
  call void @llvm.dbg.declare(metadata ptr %ltype.i78, metadata !1070, metadata !DIExpression()) #14, !dbg !1084
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %a_name.i79) #14, !dbg !1083
  call void @llvm.dbg.declare(metadata ptr %a_name.i79, metadata !1071, metadata !DIExpression()) #14, !dbg !1085
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %r_name.i80) #14, !dbg !1083
  call void @llvm.dbg.declare(metadata ptr %r_name.i80, metadata !1072, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a_num.i81) #14, !dbg !1087
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_num.i82) #14, !dbg !1087
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i) #14, !dbg !1088
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r.i) #14, !dbg !1088
  store i32 0, ptr @n_atoms, align 4, !dbg !1089, !tbaa !794
  store i8 0, ptr @lr_name, align 1, !dbg !1090, !tbaa !459
  %call37.i = call ptr @fgets(ptr noundef nonnull %line.i77, i32 noundef 256, ptr noundef nonnull %qfp.5189) #14, !dbg !1091
  %tobool.not38.i = icmp eq ptr %call37.i, null, !dbg !1092
  br i1 %tobool.not38.i, label %while.end.i105, label %while.body.i85, !dbg !1092

while.body.i85:                                   ; preds = %if.then8, %while.cond.backedge.i103
  %bcmp.i83 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.90, ptr noundef nonnull dereferenceable(3) %line.i77, i64 3) #14, !dbg !1093
  %cmp.i84 = icmp eq i32 %bcmp.i83, 0, !dbg !1096
  br i1 %cmp.i84, label %while.cond.backedge.i103, label %if.else.i88, !dbg !1097

if.else.i88:                                      ; preds = %while.body.i85
  %rhsv.i86 = load i32, ptr %line.i77, align 16, !dbg !1098
  %.not.i87 = icmp eq i32 %rhsv.i86, 1297044545, !dbg !1098
  br i1 %.not.i87, label %if.then9.i92, label %lor.lhs.false.i89, !dbg !1100

lor.lhs.false.i89:                                ; preds = %if.else.i88
  %bcmp36.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.81, ptr noundef nonnull dereferenceable(6) %line.i77, i64 6) #14, !dbg !1101
  %cmp8.i = icmp eq i32 %bcmp36.i, 0, !dbg !1102
  br i1 %cmp8.i, label %if.then9.i92, label %while.cond.backedge.i103, !dbg !1103

if.then9.i92:                                     ; preds = %lor.lhs.false.i89, %if.else.i88
  call void @llvm.dbg.value(metadata ptr %a_num.i81, metadata !1073, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %r_num.i82, metadata !1074, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %q.i, metadata !1075, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %r.i, metadata !1076, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1078
  %call14.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line.i77, ptr noundef nonnull @.str.91, ptr noundef nonnull %ltype.i78, ptr noundef nonnull %a_num.i81, ptr noundef nonnull %a_name.i79, ptr noundef nonnull %r_name.i80, ptr noundef nonnull %r_num.i82, ptr noundef nonnull %q.i, ptr noundef nonnull %r.i) #14, !dbg !1104
  %call16.i90 = call i32 @strcmp(ptr noundef nonnull @lr_name, ptr noundef nonnull %r_name.i80) #15, !dbg !1106
  %cmp17.not.i = icmp eq i32 %call16.i90, 0, !dbg !1108
  %.pre.i91 = load i32, ptr @n_atoms, align 4, !dbg !1109, !tbaa !794
  br i1 %cmp17.not.i, label %if.end23.i, label %if.then18.i, !dbg !1110

if.then18.i:                                      ; preds = %if.then9.i92
  %cmp19.i = icmp sgt i32 %.pre.i91, 0, !dbg !1111
  br i1 %cmp19.i, label %if.then20.i93, label %if.end.i95, !dbg !1114

if.then20.i93:                                    ; preds = %if.then18.i
  call fastcc void @addqr2reslib(ptr noundef nonnull %call19.i) #14, !dbg !1115
  store i32 0, ptr @n_atoms, align 4, !dbg !1117, !tbaa !794
  br label %if.end.i95, !dbg !1118

if.end.i95:                                       ; preds = %if.then20.i93, %if.then18.i
  %47 = phi i32 [ 0, %if.then20.i93 ], [ %.pre.i91, %if.then18.i ]
  %call22.i94 = call ptr @strcpy(ptr noundef nonnull @lr_name, ptr noundef nonnull %r_name.i80) #14, !dbg !1119
  br label %if.end23.i, !dbg !1120

if.end23.i:                                       ; preds = %if.end.i95, %if.then9.i92
  %48 = phi i32 [ %47, %if.end.i95 ], [ %.pre.i91, %if.then9.i92 ], !dbg !1121
  %idxprom.i96 = sext i32 %48 to i64, !dbg !1122
  %arrayidx.i97 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %idxprom.i96, !dbg !1122
  call void @llvm.dbg.value(metadata ptr %arrayidx.i97, metadata !1077, metadata !DIExpression()) #14, !dbg !1078
  call void @NAB_initatom(ptr noundef nonnull %arrayidx.i97, i32 noundef 0) #14, !dbg !1123
  %49 = load ptr, ptr %arrayidx.i97, align 16, !dbg !1124, !tbaa !691
  %call25.i98 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull %a_name.i79) #14, !dbg !1125
  %50 = load double, ptr %q.i, align 8, !dbg !1126, !tbaa !822
  call void @llvm.dbg.value(metadata double %50, metadata !1075, metadata !DIExpression()) #14, !dbg !1078
  %a_charge.i99 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %idxprom.i96, i32 6, !dbg !1127
  store double %50, ptr %a_charge.i99, align 16, !dbg !1128, !tbaa !825
  %51 = load double, ptr %r.i, align 8, !dbg !1129, !tbaa !822
  call void @llvm.dbg.value(metadata double %51, metadata !1076, metadata !DIExpression()) #14, !dbg !1078
  %a_radius.i = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %idxprom.i96, i32 7, !dbg !1130
  store double %51, ptr %a_radius.i, align 8, !dbg !1131, !tbaa !1132
  %52 = load i32, ptr @n_atoms, align 4, !dbg !1133, !tbaa !794
  %inc.i100 = add nsw i32 %52, 1, !dbg !1133
  store i32 %inc.i100, ptr @n_atoms, align 4, !dbg !1133, !tbaa !794
  br label %while.cond.backedge.i103, !dbg !1134

while.cond.backedge.i103:                         ; preds = %if.end23.i, %lor.lhs.false.i89, %while.body.i85
  %call.i101 = call ptr @fgets(ptr noundef nonnull %line.i77, i32 noundef 256, ptr noundef nonnull %qfp.5189) #14, !dbg !1091
  %tobool.not.i102 = icmp eq ptr %call.i101, null, !dbg !1092
  br i1 %tobool.not.i102, label %while.end.i105, label %while.body.i85, !dbg !1092, !llvm.loop !1135

while.end.i105:                                   ; preds = %while.cond.backedge.i103, %if.then8
  %53 = load i32, ptr @n_atoms, align 4, !dbg !1137, !tbaa !794
  %cmp28.i104 = icmp sgt i32 %53, 0, !dbg !1139
  br i1 %cmp28.i104, label %if.then29.i, label %qr2reslib.exit, !dbg !1140

if.then29.i:                                      ; preds = %while.end.i105
  call fastcc void @addqr2reslib(ptr noundef nonnull %call19.i) #14, !dbg !1141
  br label %qr2reslib.exit, !dbg !1141

qr2reslib.exit:                                   ; preds = %while.end.i105, %if.then29.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r.i) #14, !dbg !1142
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i) #14, !dbg !1142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_num.i82) #14, !dbg !1142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a_num.i81) #14, !dbg !1142
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %r_name.i80) #14, !dbg !1142
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %a_name.i79) #14, !dbg !1142
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %ltype.i78) #14, !dbg !1142
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %line.i77) #14, !dbg !1142
  call void @llvm.dbg.value(metadata ptr %qfp.1, metadata !398, metadata !DIExpression()), !dbg !402
  %call9 = call i32 @fclose(ptr noundef nonnull %qfp.5189), !dbg !1143
  br label %if.end10, !dbg !1144

if.end10:                                         ; preds = %qr2reslib.exit, %if.end6
  call void @llvm.dbg.value(metadata ptr %cfp.1, metadata !399, metadata !DIExpression()), !dbg !402
  %tobool11.not = icmp eq ptr %cfp.5190, null, !dbg !1145
  br i1 %tobool11.not, label %cleanup, label %if.then12, !dbg !1147

if.then12:                                        ; preds = %if.end10
  call void @llvm.dbg.value(metadata ptr %cfp.1, metadata !1148, metadata !DIExpression()) #14, !dbg !1167
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !1151, metadata !DIExpression()) #14, !dbg !1167
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %line.i106) #14, !dbg !1170
  call void @llvm.dbg.declare(metadata ptr %line.i106, metadata !1152, metadata !DIExpression()) #14, !dbg !1171
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %r_name.i107) #14, !dbg !1172
  call void @llvm.dbg.declare(metadata ptr %r_name.i107, metadata !1153, metadata !DIExpression()) #14, !dbg !1173
  call void @llvm.dbg.value(metadata ptr null, metadata !1155, metadata !DIExpression()) #14, !dbg !1167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %anm1.i) #14, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %anm1.i, metadata !1157, metadata !DIExpression()) #14, !dbg !1175
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %anm2.i) #14, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %anm2.i, metadata !1158, metadata !DIExpression()) #14, !dbg !1176
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %anm3.i) #14, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %anm3.i, metadata !1159, metadata !DIExpression()) #14, !dbg !1177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %anm4.i) #14, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %anm4.i, metadata !1160, metadata !DIExpression()) #14, !dbg !1178
  store i32 0, ptr @n_chi, align 4, !dbg !1179, !tbaa !794
  store i8 0, ptr %r_name.i107, align 16, !dbg !1180, !tbaa !459
  %call229.i = call ptr @fgets(ptr noundef nonnull %line.i106, i32 noundef 256, ptr noundef nonnull %cfp.5190) #14, !dbg !1181
  %tobool.not230.i = icmp eq ptr %call229.i, null, !dbg !1182
  br i1 %tobool.not230.i, label %while.end.i133, label %while.body.lr.ph.i108, !dbg !1182

while.body.lr.ph.i108:                            ; preds = %if.then12
  %rl_rlist.i = getelementptr inbounds %struct.reslib_t, ptr %call19.i, i64 0, i32 4
  br label %while.body.i110, !dbg !1182

while.body.i110:                                  ; preds = %if.end104.i, %while.body.lr.ph.i108
  %res.0231.i = phi ptr [ null, %while.body.lr.ph.i108 ], [ %res.2.i, %if.end104.i ]
  call void @llvm.dbg.value(metadata ptr %res.0231.i, metadata !1155, metadata !DIExpression()) #14, !dbg !1167
  %54 = load i8, ptr %line.i106, align 16, !dbg !1183, !tbaa !459
  %cmp.i109 = icmp eq i8 %54, 35, !dbg !1186
  br i1 %cmp.i109, label %if.then.i113, label %if.else35.i, !dbg !1187

if.then.i113:                                     ; preds = %while.body.i110
  %call6.i111 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line.i106, ptr noundef nonnull @.str.86, ptr noundef nonnull %r_name.i107) #14, !dbg !1188
  %cmp7.not.i112 = icmp eq i32 %call6.i111, 1, !dbg !1191
  br i1 %cmp7.not.i112, label %if.else.i120, label %if.then9.i118, !dbg !1192

if.then9.i118:                                    ; preds = %if.then.i113
  %call11.i114 = call i64 @strlen(ptr noundef nonnull %line.i106) #15, !dbg !1193
  %55 = trunc i64 %call11.i114 to i32, !dbg !1193
  %conv12.i115 = add i32 %55, -1, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %conv12.i115, metadata !1154, metadata !DIExpression()) #14, !dbg !1167
  %56 = call i32 @llvm.smin.i32(i32 %conv12.i115, i32 20) #14, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %56, metadata !1154, metadata !DIExpression()) #14, !dbg !1167
  %call16.i116 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.59, i32 noundef %56, i32 noundef %56, ptr noundef nonnull %line.i106) #14, !dbg !1196
  %57 = load ptr, ptr @stderr, align 8, !dbg !1197, !tbaa !299
  %call17.i117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.92, ptr noundef nonnull @e_msg) #19, !dbg !1198
  br label %chi2reslib.exit, !dbg !1199

if.else.i120:                                     ; preds = %if.then.i113
  %58 = load i32, ptr @n_chi, align 4, !dbg !1200, !tbaa !794
  %cmp18.i119 = icmp sgt i32 %58, 0, !dbg !1203
  br i1 %cmp18.i119, label %if.then20.i121, label %for.cond.i.preheader, !dbg !1204

if.then20.i121:                                   ; preds = %if.else.i120
  call fastcc void @addchi2reslib(ptr noundef nonnull %call19.i) #14, !dbg !1205
  store i32 0, ptr @n_chi, align 4, !dbg !1207, !tbaa !794
  br label %for.cond.i.preheader, !dbg !1208

for.cond.i.preheader:                             ; preds = %if.then20.i121, %if.else.i120
  br label %for.cond.i, !dbg !1209

for.cond.i:                                       ; preds = %for.cond.i.preheader, %for.body.i124
  %res.1.in.i = phi ptr [ %res.1.i, %for.body.i124 ], [ %rl_rlist.i, %for.cond.i.preheader ]
  %res.1.i = load ptr, ptr %res.1.in.i, align 8, !dbg !1211, !tbaa !299
  call void @llvm.dbg.value(metadata ptr %res.1.i, metadata !1155, metadata !DIExpression()) #14, !dbg !1167
  %tobool21.not.i = icmp eq ptr %res.1.i, null, !dbg !1209
  br i1 %tobool21.not.i, label %if.then28.i, label %for.body.i124, !dbg !1209

for.body.i124:                                    ; preds = %for.cond.i
  %r_resname.i = getelementptr inbounds %struct.residue_t, ptr %res.1.i, i64 0, i32 4, !dbg !1212
  %59 = load ptr, ptr %r_resname.i, align 8, !dbg !1212, !tbaa !1216
  %call23.i123 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull %r_name.i107) #15, !dbg !1218
  %tobool24.not.i = icmp eq i32 %call23.i123, 0, !dbg !1218
  br i1 %tobool24.not.i, label %if.end31.i, label %for.cond.i, !dbg !1219, !llvm.loop !1220

if.then28.i:                                      ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1156, metadata !DIExpression()) #14, !dbg !1167
  %60 = load ptr, ptr @stderr, align 8, !dbg !1222, !tbaa !299
  %61 = load ptr, ptr %rl_name.i, align 8, !dbg !1225, !tbaa !308
  %call30.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.93, ptr noundef nonnull %r_name.i107, ptr noundef %61) #19, !dbg !1226
  br label %chi2reslib.exit, !dbg !1227

if.end31.i:                                       ; preds = %for.body.i124
  call void @llvm.dbg.value(metadata ptr %res.1.i, metadata !1156, metadata !DIExpression()) #14, !dbg !1167
  %call33.i = call ptr @strcpy(ptr noundef nonnull @lr_name, ptr noundef nonnull %r_name.i107) #14, !dbg !1228
  br label %if.end104.i, !dbg !1229

if.else35.i:                                      ; preds = %while.body.i110
  %call41.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %line.i106, ptr noundef nonnull @.str.94, ptr noundef nonnull %anm1.i, ptr noundef nonnull %anm2.i, ptr noundef nonnull %anm3.i, ptr noundef nonnull %anm4.i) #14, !dbg !1230
  call void @llvm.dbg.value(metadata ptr %res.0231.i, metadata !1232, metadata !DIExpression()) #14, !dbg !1239
  call void @llvm.dbg.value(metadata ptr %anm1.i, metadata !1237, metadata !DIExpression()) #14, !dbg !1239
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()) #14, !dbg !1239
  %r_natoms.i.i = getelementptr inbounds %struct.residue_t, ptr %res.0231.i, i64 0, i32 15
  %62 = load i32, ptr %r_natoms.i.i, align 8, !tbaa !1242
  %cmp9.i.i = icmp sgt i32 %62, 0, !dbg !1243
  br i1 %cmp9.i.i, label %for.body.lr.ph.i.i, label %if.then45.i, !dbg !1246

for.body.lr.ph.i.i:                               ; preds = %if.else35.i
  %r_atoms.i.i = getelementptr inbounds %struct.residue_t, ptr %res.0231.i, i64 0, i32 17, !dbg !1247
  %63 = load ptr, ptr %r_atoms.i.i, align 8, !tbaa !1250
  %wide.trip.count.i.i = zext i32 %62 to i64, !dbg !1243
  br label %for.body.i.i, !dbg !1246

for.cond.i.i:                                     ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1251
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !1238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1239
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1243
  br i1 %exitcond.not.i.i, label %if.then45.i, label %for.body.i.i, !dbg !1246, !llvm.loop !1252

for.body.i.i:                                     ; preds = %for.cond.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !1238, metadata !DIExpression()) #14, !dbg !1239
  %arrayidx.i.i = getelementptr inbounds %struct.atom_t, ptr %63, i64 %indvars.iv.i.i, !dbg !1254
  %64 = load ptr, ptr %arrayidx.i.i, align 8, !dbg !1255, !tbaa !691
  %call.i.i126 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(1) %anm1.i) #15, !dbg !1256
  %tobool.not.i.i = icmp eq i32 %call.i.i126, 0, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !1238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1239
  br i1 %tobool.not.i.i, label %for.body.lr.ph.i155.i, label %for.cond.i.i, !dbg !1257

if.then45.i:                                      ; preds = %if.else35.i, %for.cond.i.i
  %65 = load ptr, ptr @stderr, align 8, !dbg !1258, !tbaa !299
  %r_resname47.i = getelementptr inbounds %struct.residue_t, ptr %res.0231.i, i64 0, i32 4, !dbg !1260
  %66 = load ptr, ptr %r_resname47.i, align 8, !dbg !1260, !tbaa !1216
  %call48.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.95, ptr noundef nonnull %anm1.i, ptr noundef %66) #19, !dbg !1261
  call void @exit(i32 noundef 1) #17, !dbg !1262
  unreachable, !dbg !1262

for.body.lr.ph.i155.i:                            ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata ptr %arrayidx.i.i, metadata !1165, metadata !DIExpression()) #14, !dbg !1167
  %conv50.i = trunc i64 %indvars.iv.i.i to i32, !dbg !1263
  call void @llvm.dbg.value(metadata i32 %conv50.i, metadata !1161, metadata !DIExpression()) #14, !dbg !1167
  call void @llvm.dbg.value(metadata ptr %res.0231.i, metadata !1232, metadata !DIExpression()) #14, !dbg !1264
  call void @llvm.dbg.value(metadata ptr %anm2.i, metadata !1237, metadata !DIExpression()) #14, !dbg !1264
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()) #14, !dbg !1264
  br label %for.body.i163.i, !dbg !1267

for.cond.i158.i:                                  ; preds = %for.body.i163.i
  %indvars.iv.next.i156.i = add nuw nsw i64 %indvars.iv.i159.i, 1, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i159.i, metadata !1238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1264
  %exitcond.not.i157.i = icmp eq i64 %indvars.iv.next.i156.i, %wide.trip.count.i.i, !dbg !1269
  br i1 %exitcond.not.i157.i, label %if.then55.i127, label %for.body.i163.i, !dbg !1267, !llvm.loop !1270

for.body.i163.i:                                  ; preds = %for.cond.i158.i, %for.body.lr.ph.i155.i
  %indvars.iv.i159.i = phi i64 [ 0, %for.body.lr.ph.i155.i ], [ %indvars.iv.next.i156.i, %for.cond.i158.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i159.i, metadata !1238, metadata !DIExpression()) #14, !dbg !1264
  %arrayidx.i160.i = getelementptr inbounds %struct.atom_t, ptr %63, i64 %indvars.iv.i159.i, !dbg !1272
  %67 = load ptr, ptr %arrayidx.i160.i, align 8, !dbg !1273, !tbaa !691
  %call.i161.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %67, ptr noundef nonnull dereferenceable(1) %anm2.i) #15, !dbg !1274
  %tobool.not.i162.i = icmp eq i32 %call.i161.i, 0, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i159.i, metadata !1238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1264
  br i1 %tobool.not.i162.i, label %for.body.lr.ph.i170.i, label %for.cond.i158.i, !dbg !1275

if.then55.i127:                                   ; preds = %for.cond.i158.i
  call void @llvm.dbg.value(metadata ptr %arrayidx.i160.i, metadata !1165, metadata !DIExpression()) #14, !dbg !1167
  %68 = load ptr, ptr @stderr, align 8, !dbg !1276, !tbaa !299
  %r_resname57.i = getelementptr inbounds %struct.residue_t, ptr %res.0231.i, i64 0, i32 4, !dbg !1278
  %69 = load ptr, ptr %r_resname57.i, align 8, !dbg !1278, !tbaa !1216
  %call58.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.95, ptr noundef nonnull %anm2.i, ptr noundef %69) #19, !dbg !1279
  call void @exit(i32 noundef 1) #17, !dbg !1280
  unreachable, !dbg !1280

for.body.lr.ph.i170.i:                            ; preds = %for.body.i163.i
  call void @llvm.dbg.value(metadata ptr %arrayidx.i160.i, metadata !1165, metadata !DIExpression()) #14, !dbg !1167
  %conv65.i = trunc i64 %indvars.iv.i159.i to i32, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %conv65.i, metadata !1162, metadata !DIExpression()) #14, !dbg !1167
  call void @llvm.dbg.value(metadata ptr %res.0231.i, metadata !1232, metadata !DIExpression()) #14, !dbg !1282
  call void @llvm.dbg.value(metadata ptr %anm3.i, metadata !1237, metadata !DIExpression()) #14, !dbg !1282
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()) #14, !dbg !1282
  br label %for.body.i178.i, !dbg !1285

for.cond.i173.i:                                  ; preds = %for.body.i178.i
  %indvars.iv.next.i171.i = add nuw nsw i64 %indvars.iv.i174.i, 1, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i174.i, metadata !1238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1282
  %exitcond.not.i172.i = icmp eq i64 %indvars.iv.next.i171.i, %wide.trip.count.i.i, !dbg !1287
  br i1 %exitcond.not.i172.i, label %if.then70.i, label %for.body.i178.i, !dbg !1285, !llvm.loop !1288

for.body.i178.i:                                  ; preds = %for.cond.i173.i, %for.body.lr.ph.i170.i
  %indvars.iv.i174.i = phi i64 [ 0, %for.body.lr.ph.i170.i ], [ %indvars.iv.next.i171.i, %for.cond.i173.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i174.i, metadata !1238, metadata !DIExpression()) #14, !dbg !1282
  %arrayidx.i175.i = getelementptr inbounds %struct.atom_t, ptr %63, i64 %indvars.iv.i174.i, !dbg !1290
  %70 = load ptr, ptr %arrayidx.i175.i, align 8, !dbg !1291, !tbaa !691
  %call.i176.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(1) %anm3.i) #15, !dbg !1292
  %tobool.not.i177.i = icmp eq i32 %call.i176.i, 0, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i174.i, metadata !1238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1282
  br i1 %tobool.not.i177.i, label %for.body.i193.i, label %for.cond.i173.i, !dbg !1293

if.then70.i:                                      ; preds = %for.cond.i173.i
  call void @llvm.dbg.value(metadata ptr %arrayidx.i175.i, metadata !1165, metadata !DIExpression()) #14, !dbg !1167
  %71 = load ptr, ptr @stderr, align 8, !dbg !1294, !tbaa !299
  %r_resname72.i = getelementptr inbounds %struct.residue_t, ptr %res.0231.i, i64 0, i32 4, !dbg !1296
  %72 = load ptr, ptr %r_resname72.i, align 8, !dbg !1296, !tbaa !1216
  %call73.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.95, ptr noundef nonnull %anm3.i, ptr noundef %72) #19, !dbg !1297
  call void @exit(i32 noundef 1) #17, !dbg !1298
  unreachable, !dbg !1298

for.cond.i188.i:                                  ; preds = %for.body.i193.i
  %indvars.iv.next.i186.i = add nuw nsw i64 %indvars.iv.i189.i, 1, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i189.i, metadata !1238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1302
  %exitcond.not.i187.i = icmp eq i64 %indvars.iv.next.i186.i, %wide.trip.count.i.i, !dbg !1303
  br i1 %exitcond.not.i187.i, label %if.then85.i, label %for.body.i193.i, !dbg !1304, !llvm.loop !1305

for.body.i193.i:                                  ; preds = %for.body.i178.i, %for.cond.i188.i
  %indvars.iv.i189.i = phi i64 [ %indvars.iv.next.i186.i, %for.cond.i188.i ], [ 0, %for.body.i178.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i189.i, metadata !1238, metadata !DIExpression()) #14, !dbg !1302
  %arrayidx.i190.i = getelementptr inbounds %struct.atom_t, ptr %63, i64 %indvars.iv.i189.i, !dbg !1307
  %73 = load ptr, ptr %arrayidx.i190.i, align 8, !dbg !1308, !tbaa !691
  %call.i191.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(1) %anm4.i) #15, !dbg !1309
  %tobool.not.i192.i = icmp eq i32 %call.i191.i, 0, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i189.i, metadata !1238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1302
  br i1 %tobool.not.i192.i, label %if.else89.i, label %for.cond.i188.i, !dbg !1310

if.then85.i:                                      ; preds = %for.cond.i188.i
  call void @llvm.dbg.value(metadata ptr %arrayidx.i190.i, metadata !1165, metadata !DIExpression()) #14, !dbg !1167
  %74 = load ptr, ptr @stderr, align 8, !dbg !1311, !tbaa !299
  %r_resname87.i = getelementptr inbounds %struct.residue_t, ptr %res.0231.i, i64 0, i32 4, !dbg !1313
  %75 = load ptr, ptr %r_resname87.i, align 8, !dbg !1313, !tbaa !1216
  %call88.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.95, ptr noundef nonnull %anm4.i, ptr noundef %75) #19, !dbg !1314
  call void @exit(i32 noundef 1) #17, !dbg !1315
  unreachable, !dbg !1315

if.else89.i:                                      ; preds = %for.body.i193.i
  call void @llvm.dbg.value(metadata ptr %arrayidx.i190.i, metadata !1165, metadata !DIExpression()) #14, !dbg !1167
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i174.i, metadata !1163, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #14, !dbg !1167
  %conv80.i = trunc i64 %indvars.iv.i174.i to i32, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %conv80.i, metadata !1163, metadata !DIExpression()) #14, !dbg !1167
  %conv95.i = trunc i64 %indvars.iv.i189.i to i32, !dbg !1317
  call void @llvm.dbg.value(metadata i32 %conv95.i, metadata !1164, metadata !DIExpression()) #14, !dbg !1167
  %76 = load i32, ptr @n_chi, align 4, !dbg !1318, !tbaa !794
  %idxprom.i128 = sext i32 %76 to i64, !dbg !1319
  %arrayidx.i129 = getelementptr inbounds [500 x %struct.chiral_t], ptr @chi, i64 0, i64 %idxprom.i128, !dbg !1319
  call void @llvm.dbg.value(metadata ptr %arrayidx.i129, metadata !1166, metadata !DIExpression()) #14, !dbg !1167
  %inc.i130 = add nsw i32 %76, 1, !dbg !1320
  store i32 %inc.i130, ptr @n_chi, align 4, !dbg !1320, !tbaa !794
  store i32 %conv50.i, ptr %arrayidx.i129, align 8, !dbg !1321, !tbaa !794
  %arrayidx99.i = getelementptr inbounds [4 x i32], ptr %arrayidx.i129, i64 0, i64 1, !dbg !1322
  store i32 %conv65.i, ptr %arrayidx99.i, align 4, !dbg !1323, !tbaa !794
  %arrayidx101.i = getelementptr inbounds [4 x i32], ptr %arrayidx.i129, i64 0, i64 2, !dbg !1324
  store i32 %conv80.i, ptr %arrayidx101.i, align 8, !dbg !1325, !tbaa !794
  %arrayidx103.i = getelementptr inbounds [4 x i32], ptr %arrayidx.i129, i64 0, i64 3, !dbg !1326
  store i32 %conv95.i, ptr %arrayidx103.i, align 4, !dbg !1327, !tbaa !794
  %c_dist.i = getelementptr inbounds [500 x %struct.chiral_t], ptr @chi, i64 0, i64 %idxprom.i128, i32 1, !dbg !1328
  store double 0.000000e+00, ptr %c_dist.i, align 8, !dbg !1329, !tbaa !1330
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else89.i, %if.end31.i
  %res.2.i = phi ptr [ %res.1.i, %if.end31.i ], [ %res.0231.i, %if.else89.i ], !dbg !1167
  call void @llvm.dbg.value(metadata ptr %res.2.i, metadata !1155, metadata !DIExpression()) #14, !dbg !1167
  %call.i131 = call ptr @fgets(ptr noundef nonnull %line.i106, i32 noundef 256, ptr noundef nonnull %cfp.5190) #14, !dbg !1181
  %tobool.not.i132 = icmp eq ptr %call.i131, null, !dbg !1182
  br i1 %tobool.not.i132, label %while.end.i133, label %while.body.i110, !dbg !1182, !llvm.loop !1332

while.end.i133:                                   ; preds = %if.end104.i, %if.then12
  %77 = load i32, ptr @n_chi, align 4, !dbg !1334, !tbaa !794
  %cmp105.i = icmp sgt i32 %77, 0, !dbg !1336
  br i1 %cmp105.i, label %if.then107.i, label %chi2reslib.exit, !dbg !1337

if.then107.i:                                     ; preds = %while.end.i133
  call fastcc void @addchi2reslib(ptr noundef nonnull %call19.i) #14, !dbg !1338
  store i32 0, ptr @n_chi, align 4, !dbg !1340, !tbaa !794
  br label %chi2reslib.exit, !dbg !1341

chi2reslib.exit:                                  ; preds = %if.then9.i118, %if.then28.i, %while.end.i133, %if.then107.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %anm4.i) #14, !dbg !1342
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %anm3.i) #14, !dbg !1342
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %anm2.i) #14, !dbg !1342
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %anm1.i) #14, !dbg !1342
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %r_name.i107) #14, !dbg !1342
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %line.i106) #14, !dbg !1342
  call void @llvm.dbg.value(metadata ptr %cfp.1, metadata !399, metadata !DIExpression()), !dbg !402
  %call13 = call i32 @fclose(ptr noundef nonnull %cfp.5190), !dbg !1343
  br label %cleanup, !dbg !1344

cleanup:                                          ; preds = %read_reslib_header.exit.thread, %if.end10, %chi2reslib.exit
  %retval.0 = phi ptr [ %call19.i, %chi2reslib.exit ], [ %call19.i, %if.end10 ], [ null, %read_reslib_header.exit.thread ], !dbg !402
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %offname) #14, !dbg !1345
  ret ptr %retval.0, !dbg !1345
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @setreslibkind(ptr noundef %reslib, ptr nocapture noundef readonly %kind) local_unnamed_addr #0 !dbg !1346 {
entry:
  call void @llvm.dbg.value(metadata ptr %reslib, metadata !1350, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata ptr %kind, metadata !1351, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1352, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %reslib, metadata !287, metadata !DIExpression()) #14, !dbg !1356
  call void @llvm.dbg.value(metadata ptr undef, metadata !292, metadata !DIExpression()) #14, !dbg !1356
  br label %for.cond.i, !dbg !1359

for.cond.i:                                       ; preds = %for.body.i, %entry
  %rlp.0.in.i = phi ptr [ @reslibs, %entry ], [ %rlp.0.i, %for.body.i ]
  %rlp.0.i = load ptr, ptr %rlp.0.in.i, align 8, !dbg !1360, !tbaa !299
  call void @llvm.dbg.value(metadata ptr %rlp.0.i, metadata !292, metadata !DIExpression()) #14, !dbg !1356
  %tobool.not.i = icmp eq ptr %rlp.0.i, null, !dbg !1361
  br i1 %tobool.not.i, label %if.then, label %for.body.i, !dbg !1361

for.body.i:                                       ; preds = %for.cond.i
  %rl_name.i = getelementptr inbounds %struct.reslib_t, ptr %rlp.0.i, i64 0, i32 1, !dbg !1362
  %0 = load ptr, ptr %rl_name.i, align 8, !dbg !1362, !tbaa !308
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %reslib) #15, !dbg !1363
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !1364
  br i1 %cmp.i, label %if.end5, label %for.cond.i, !dbg !1365, !llvm.loop !1366

if.then:                                          ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1353, metadata !DIExpression()), !dbg !1354
  %call1 = tail call fastcc ptr @read_reslib(ptr noundef %reslib), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1353, metadata !DIExpression()), !dbg !1354
  %cmp2 = icmp eq ptr %call1, null, !dbg !1371
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !1372

if.then3:                                         ; preds = %if.then
  %1 = load ptr, ptr @stderr, align 8, !dbg !1373, !tbaa !299
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %reslib) #16, !dbg !1375
  tail call void @exit(i32 noundef 1) #17, !dbg !1376
  unreachable, !dbg !1376

if.end5:                                          ; preds = %for.body.i, %if.then
  %rlp.0 = phi ptr [ %call1, %if.then ], [ %rlp.0.i, %for.body.i ], !dbg !1377
  call void @llvm.dbg.value(metadata ptr %rlp.0, metadata !1353, metadata !DIExpression()), !dbg !1354
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, ptr %rlp.0, i64 0, i32 2, !dbg !1378
  store i32 0, ptr %rl_r_kind, align 8, !dbg !1379, !tbaa !330
  %call6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %kind, ptr noundef nonnull dereferenceable(4) @.str.2) #15, !dbg !1380
  %tobool.not = icmp eq i32 %call6, 0, !dbg !1380
  br i1 %tobool.not, label %if.end28.sink.split, label %lor.lhs.false, !dbg !1382

lor.lhs.false:                                    ; preds = %if.end5
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %kind, ptr noundef nonnull dereferenceable(4) @.str.5) #15, !dbg !1383
  %tobool8.not = icmp eq i32 %call7, 0, !dbg !1383
  br i1 %tobool8.not, label %if.end28.sink.split, label %if.else, !dbg !1384

if.else:                                          ; preds = %lor.lhs.false
  %call11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %kind, ptr noundef nonnull dereferenceable(4) @.str.3) #15, !dbg !1385
  %tobool12.not = icmp eq i32 %call11, 0, !dbg !1385
  br i1 %tobool12.not, label %if.end28.sink.split, label %lor.lhs.false13, !dbg !1387

lor.lhs.false13:                                  ; preds = %if.else
  %call14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %kind, ptr noundef nonnull dereferenceable(4) @.str.6) #15, !dbg !1388
  %tobool15.not = icmp eq i32 %call14, 0, !dbg !1388
  br i1 %tobool15.not, label %if.end28.sink.split, label %if.else18, !dbg !1389

if.else18:                                        ; preds = %lor.lhs.false13
  %call19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %kind, ptr noundef nonnull dereferenceable(3) @.str.4) #15, !dbg !1390
  %tobool20.not = icmp eq i32 %call19, 0, !dbg !1390
  br i1 %tobool20.not, label %if.end28.sink.split, label %lor.lhs.false21, !dbg !1392

lor.lhs.false21:                                  ; preds = %if.else18
  %call22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %kind, ptr noundef nonnull dereferenceable(3) @.str.7) #15, !dbg !1393
  %tobool23.not = icmp eq i32 %call22, 0, !dbg !1393
  br i1 %tobool23.not, label %if.end28.sink.split, label %if.end28, !dbg !1394

if.end28.sink.split:                              ; preds = %if.else18, %lor.lhs.false21, %if.else, %lor.lhs.false13, %if.end5, %lor.lhs.false
  %.sink = phi i32 [ 1, %lor.lhs.false ], [ 1, %if.end5 ], [ 2, %lor.lhs.false13 ], [ 2, %if.else ], [ 3, %lor.lhs.false21 ], [ 3, %if.else18 ]
  store i32 %.sink, ptr %rl_r_kind, align 8, !dbg !1395, !tbaa !330
  br label %if.end28, !dbg !1396

if.end28:                                         ; preds = %if.end28.sink.split, %lor.lhs.false21
  %2 = phi i32 [ 0, %lor.lhs.false21 ], [ %.sink, %if.end28.sink.split ], !dbg !1397
  ret i32 %2, !dbg !1396
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @getresidue(ptr noundef %rname, ptr noundef %reslib) local_unnamed_addr #0 !dbg !1398 {
entry:
  %leapname = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %rname, metadata !1402, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata ptr %reslib, metadata !1403, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1404, metadata !DIExpression()), !dbg !1413
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %leapname) #14, !dbg !1414
  call void @llvm.dbg.declare(metadata ptr %leapname, metadata !1405, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata ptr %reslib, metadata !287, metadata !DIExpression()) #14, !dbg !1416
  call void @llvm.dbg.value(metadata ptr undef, metadata !292, metadata !DIExpression()) #14, !dbg !1416
  br label %for.cond.i, !dbg !1419

for.cond.i:                                       ; preds = %for.body.i, %entry
  %rlp.0.in.i = phi ptr [ @reslibs, %entry ], [ %rlp.0.i, %for.body.i ]
  %rlp.0.i = load ptr, ptr %rlp.0.in.i, align 8, !dbg !1420, !tbaa !299
  call void @llvm.dbg.value(metadata ptr %rlp.0.i, metadata !292, metadata !DIExpression()) #14, !dbg !1416
  %tobool.not.i = icmp eq ptr %rlp.0.i, null, !dbg !1421
  br i1 %tobool.not.i, label %if.then, label %for.body.i, !dbg !1421

for.body.i:                                       ; preds = %for.cond.i
  %rl_name.i = getelementptr inbounds %struct.reslib_t, ptr %rlp.0.i, i64 0, i32 1, !dbg !1422
  %0 = load ptr, ptr %rl_name.i, align 8, !dbg !1422, !tbaa !308
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %reslib) #15, !dbg !1423
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !1424
  br i1 %cmp.i, label %if.end4, label %for.cond.i, !dbg !1425, !llvm.loop !1426

if.then:                                          ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1409, metadata !DIExpression()), !dbg !1412
  %call1 = tail call fastcc ptr @read_reslib(ptr noundef %reslib), !dbg !1428
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1409, metadata !DIExpression()), !dbg !1412
  %cmp2 = icmp eq ptr %call1, null, !dbg !1431
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1432

if.then3:                                         ; preds = %if.then
  tail call void @exit(i32 noundef 1) #17, !dbg !1433
  unreachable, !dbg !1433

if.end4:                                          ; preds = %for.body.i, %if.then
  %rlp.0 = phi ptr [ %call1, %if.then ], [ %rlp.0.i, %for.body.i ], !dbg !1435
  call void @llvm.dbg.value(metadata ptr %rlp.0, metadata !1409, metadata !DIExpression()), !dbg !1412
  %call5 = call ptr @strcpy(ptr noundef nonnull %leapname, ptr noundef nonnull dereferenceable(1) %rname) #14, !dbg !1436
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, ptr %rlp.0, i64 0, i32 2, !dbg !1437
  %1 = load i32, ptr %rl_r_kind, align 8, !dbg !1437, !tbaa !330
  switch i32 %1, label %if.end65 [
    i32 1, label %if.then7
    i32 2, label %if.then36
  ], !dbg !1439

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %rname, ptr noundef nonnull dereferenceable(4) @.str.8, i64 noundef 3) #15, !dbg !1440
  %tobool.not = icmp eq i32 %call8, 0, !dbg !1440
  br i1 %tobool.not, label %if.then9, label %if.else, !dbg !1443

if.then9:                                         ; preds = %if.then7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %leapname, ptr noundef nonnull align 1 dereferenceable(3) @.str.9, i64 3, i1 false) #14, !dbg !1444
  br label %if.end65, !dbg !1444

if.else:                                          ; preds = %if.then7
  %call12 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %rname, ptr noundef nonnull dereferenceable(4) @.str.10, i64 noundef 3) #15, !dbg !1445
  %tobool13.not = icmp eq i32 %call12, 0, !dbg !1445
  br i1 %tobool13.not, label %if.then14, label %if.else17, !dbg !1447

if.then14:                                        ; preds = %if.else
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %leapname, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false) #14, !dbg !1448
  br label %if.end65, !dbg !1448

if.else17:                                        ; preds = %if.else
  %call18 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %rname, ptr noundef nonnull dereferenceable(4) @.str.12, i64 noundef 3) #15, !dbg !1449
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !1449
  br i1 %tobool19.not, label %if.then20, label %if.else23, !dbg !1451

if.then20:                                        ; preds = %if.else17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %leapname, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false) #14, !dbg !1452
  br label %if.end65, !dbg !1452

if.else23:                                        ; preds = %if.else17
  %call24 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %rname, ptr noundef nonnull dereferenceable(4) @.str.14, i64 noundef 3) #15, !dbg !1453
  %tobool25.not = icmp eq i32 %call24, 0, !dbg !1453
  br i1 %tobool25.not, label %if.then26, label %if.end65, !dbg !1455

if.then26:                                        ; preds = %if.else23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %leapname, ptr noundef nonnull align 1 dereferenceable(3) @.str.15, i64 3, i1 false) #14, !dbg !1456
  br label %if.end65, !dbg !1456

if.then36:                                        ; preds = %if.end4
  %call37 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %rname, ptr noundef nonnull dereferenceable(4) @.str.8, i64 noundef 3) #15, !dbg !1457
  %tobool38.not = icmp eq i32 %call37, 0, !dbg !1457
  br i1 %tobool38.not, label %if.then39, label %if.else42, !dbg !1461

if.then39:                                        ; preds = %if.then36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %leapname, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false) #14, !dbg !1462
  br label %if.end65, !dbg !1462

if.else42:                                        ; preds = %if.then36
  %call43 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %rname, ptr noundef nonnull dereferenceable(4) @.str.10, i64 noundef 3) #15, !dbg !1463
  %tobool44.not = icmp eq i32 %call43, 0, !dbg !1463
  br i1 %tobool44.not, label %if.then45, label %if.else48, !dbg !1465

if.then45:                                        ; preds = %if.else42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %leapname, ptr noundef nonnull align 1 dereferenceable(3) @.str.17, i64 3, i1 false) #14, !dbg !1466
  br label %if.end65, !dbg !1466

if.else48:                                        ; preds = %if.else42
  %call49 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %rname, ptr noundef nonnull dereferenceable(4) @.str.18, i64 noundef 3) #15, !dbg !1467
  %tobool50.not = icmp eq i32 %call49, 0, !dbg !1467
  br i1 %tobool50.not, label %if.then51, label %if.else54, !dbg !1469

if.then51:                                        ; preds = %if.else48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %leapname, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false) #14, !dbg !1470
  br label %if.end65, !dbg !1470

if.else54:                                        ; preds = %if.else48
  %call55 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %rname, ptr noundef nonnull dereferenceable(4) @.str.14, i64 noundef 3) #15, !dbg !1471
  %tobool56.not = icmp eq i32 %call55, 0, !dbg !1471
  br i1 %tobool56.not, label %if.then57, label %if.end65, !dbg !1473

if.then57:                                        ; preds = %if.else54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %leapname, ptr noundef nonnull align 1 dereferenceable(3) @.str.20, i64 3, i1 false) #14, !dbg !1474
  br label %if.end65, !dbg !1474

if.end65:                                         ; preds = %if.end4, %if.then45, %if.else54, %if.then57, %if.then51, %if.then39, %if.then9, %if.then20, %if.then26, %if.else23, %if.then14
  %strchr = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %rname, i32 51), !dbg !1475
  %cmp67.not = icmp eq ptr %strchr, null, !dbg !1477
  br i1 %cmp67.not, label %if.else71, label %if.end78.sink.split, !dbg !1478

if.else71:                                        ; preds = %if.end65
  %strchr119 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %rname, i32 53), !dbg !1479
  %cmp73.not = icmp eq ptr %strchr119, null, !dbg !1481
  br i1 %cmp73.not, label %if.end78, label %if.end78.sink.split, !dbg !1482

if.end78.sink.split:                              ; preds = %if.else71, %if.end65
  %.sink = phi i16 [ 51, %if.end65 ], [ 53, %if.else71 ]
  %strlen = call i64 @strlen(ptr nonnull %leapname), !dbg !1483
  %endptr = getelementptr i8, ptr %leapname, i64 %strlen, !dbg !1483
  store i16 %.sink, ptr %endptr, align 1, !dbg !1483
  br label %if.end78, !dbg !1484

if.end78:                                         ; preds = %if.end78.sink.split, %if.else71
  %rl_rlist = getelementptr inbounds %struct.reslib_t, ptr %rlp.0, i64 0, i32 4, !dbg !1484
  call void @llvm.dbg.value(metadata ptr undef, metadata !1410, metadata !DIExpression()), !dbg !1412
  br label %for.cond, !dbg !1486

for.cond:                                         ; preds = %lor.lhs.false, %if.end78
  %res.0.in = phi ptr [ %rl_rlist, %if.end78 ], [ %res.0, %lor.lhs.false ]
  %res.0 = load ptr, ptr %res.0.in, align 8, !dbg !1487, !tbaa !299
  call void @llvm.dbg.value(metadata ptr %res.0, metadata !1410, metadata !DIExpression()), !dbg !1412
  %cond = icmp eq ptr %res.0, null, !dbg !1488
  br i1 %cond, label %if.then89, label %for.body, !dbg !1488

for.body:                                         ; preds = %for.cond
  %r_resname = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 4, !dbg !1489
  %2 = load ptr, ptr %r_resname, align 8, !dbg !1489, !tbaa !1216
  %call80 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %rname) #15, !dbg !1493
  %cmp81 = icmp eq i32 %call80, 0, !dbg !1494
  br i1 %cmp81, label %if.end92, label %lor.lhs.false, !dbg !1495

lor.lhs.false:                                    ; preds = %for.body
  %call84 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull %leapname) #15, !dbg !1496
  %cmp85 = icmp eq i32 %call84, 0, !dbg !1497
  br i1 %cmp85, label %if.end92, label %for.cond, !dbg !1498, !llvm.loop !1499

if.then89:                                        ; preds = %for.cond
  %call90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.23, ptr noundef %rname, ptr noundef %reslib) #14, !dbg !1501
  %call91 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @e_msg) #14, !dbg !1504
  br label %cleanup, !dbg !1505

if.end92:                                         ; preds = %lor.lhs.false, %for.body
  %call93 = call ptr @copyresidue(ptr noundef nonnull %res.0), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %call93, metadata !1411, metadata !DIExpression()), !dbg !1412
  br label %cleanup, !dbg !1507

cleanup:                                          ; preds = %if.end92, %if.then89
  %retval.0 = phi ptr [ null, %if.then89 ], [ %call93, %if.end92 ], !dbg !1412
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %leapname) #14, !dbg !1508
  ret ptr %retval.0, !dbg !1508
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare !dbg !1509 i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @copyresidue(ptr noundef %res) local_unnamed_addr #0 !dbg !1514 {
entry:
  call void @llvm.dbg.value(metadata ptr %res, metadata !1518, metadata !DIExpression()), !dbg !1530
  %call = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #18, !dbg !1531
  call void @llvm.dbg.value(metadata ptr %call, metadata !1524, metadata !DIExpression()), !dbg !1530
  %cmp = icmp eq ptr %call, null, !dbg !1533
  br i1 %cmp, label %if.then, label %if.end, !dbg !1534

if.then:                                          ; preds = %entry
  %r_resname = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 4, !dbg !1535
  %0 = load ptr, ptr %r_resname, align 8, !dbg !1535, !tbaa !1216
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.25, ptr noundef %0) #14, !dbg !1537
  %call2 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #14, !dbg !1538
  br label %cleanup, !dbg !1539

if.end:                                           ; preds = %entry
  %r_natoms = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 15, !dbg !1540
  %1 = load i32, ptr %r_natoms, align 8, !dbg !1540, !tbaa !1242
  %conv = sext i32 %1 to i64, !dbg !1542
  %mul = mul nsw i64 %conv, 176, !dbg !1543
  %call3 = tail call noalias ptr @malloc(i64 noundef %mul) #18, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1525, metadata !DIExpression()), !dbg !1530
  %cmp4 = icmp eq ptr %call3, null, !dbg !1545
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !1546

if.then6:                                         ; preds = %if.end
  %r_resname7 = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 4, !dbg !1547
  %2 = load ptr, ptr %r_resname7, align 8, !dbg !1547, !tbaa !1216
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.27, ptr noundef %2) #14, !dbg !1549
  %call9 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #14, !dbg !1550
  br label %cleanup, !dbg !1551

if.end10:                                         ; preds = %if.end
  %mul13 = shl nsw i64 %conv, 2, !dbg !1552
  %call14 = tail call noalias ptr @malloc(i64 noundef %mul13) #18, !dbg !1554
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1523, metadata !DIExpression()), !dbg !1530
  %cmp15 = icmp eq ptr %call14, null, !dbg !1555
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !1556

if.then17:                                        ; preds = %if.end10
  %r_resname18 = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 4, !dbg !1557
  %3 = load ptr, ptr %r_resname18, align 8, !dbg !1557, !tbaa !1216
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.28, ptr noundef %3) #14, !dbg !1559
  %call20 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #14, !dbg !1560
  br label %cleanup, !dbg !1561

if.end21:                                         ; preds = %if.end10
  %r_nintbonds = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 11, !dbg !1562
  %4 = load i32, ptr %r_nintbonds, align 8, !dbg !1562, !tbaa !1564
  %cmp22 = icmp sgt i32 %4, 0, !dbg !1565
  br i1 %cmp22, label %if.then24, label %if.end36, !dbg !1566

if.then24:                                        ; preds = %if.end21
  %conv26490 = zext i32 %4 to i64, !dbg !1567
  %mul27 = shl nuw nsw i64 %conv26490, 3, !dbg !1570
  %call28 = tail call noalias ptr @malloc(i64 noundef %mul27) #18, !dbg !1571
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1528, metadata !DIExpression()), !dbg !1530
  %cmp29 = icmp eq ptr %call28, null, !dbg !1572
  br i1 %cmp29, label %if.then31, label %if.end36, !dbg !1573

if.then31:                                        ; preds = %if.then24
  %r_resname32 = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 4, !dbg !1574
  %5 = load ptr, ptr %r_resname32, align 8, !dbg !1574, !tbaa !1216
  %call33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.29, ptr noundef %5) #14, !dbg !1576
  %call34 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #14, !dbg !1577
  br label %cleanup, !dbg !1578

if.end36:                                         ; preds = %if.end21, %if.then24
  %bp.0 = phi ptr [ %call28, %if.then24 ], [ null, %if.end21 ], !dbg !1579
  call void @llvm.dbg.value(metadata ptr %bp.0, metadata !1528, metadata !DIExpression()), !dbg !1530
  %r_nchiral = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 13, !dbg !1580
  %6 = load i32, ptr %r_nchiral, align 8, !dbg !1580, !tbaa !1582
  %cmp37 = icmp sgt i32 %6, 0, !dbg !1583
  br i1 %cmp37, label %if.then39, label %if.end52, !dbg !1584

if.then39:                                        ; preds = %if.end36
  %conv41491 = zext i32 %6 to i64, !dbg !1585
  %mul42 = mul nuw nsw i64 %conv41491, 24, !dbg !1588
  %call43 = tail call noalias ptr @malloc(i64 noundef %mul42) #18, !dbg !1589
  call void @llvm.dbg.value(metadata ptr %call43, metadata !1529, metadata !DIExpression()), !dbg !1530
  %cmp44 = icmp eq ptr %call43, null, !dbg !1590
  br i1 %cmp44, label %if.then46, label %if.end52, !dbg !1591

if.then46:                                        ; preds = %if.then39
  %r_resname47 = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 4, !dbg !1592
  %7 = load ptr, ptr %r_resname47, align 8, !dbg !1592, !tbaa !1216
  %call48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.30, ptr noundef %7) #14, !dbg !1594
  %call49 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #14, !dbg !1595
  br label %cleanup, !dbg !1596

if.end52:                                         ; preds = %if.end36, %if.then39
  %cp.0 = phi ptr [ %call43, %if.then39 ], [ null, %if.end36 ], !dbg !1597
  call void @llvm.dbg.value(metadata ptr %cp.0, metadata !1529, metadata !DIExpression()), !dbg !1530
  store ptr null, ptr %call, align 8, !dbg !1598, !tbaa !1599
  %r_resname53 = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 4, !dbg !1600
  %8 = load ptr, ptr %r_resname53, align 8, !dbg !1600, !tbaa !1216
  %call54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #15, !dbg !1601
  %add = add i64 %call54, 1, !dbg !1602
  %call55 = tail call noalias ptr @malloc(i64 noundef %add) #18, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %call55, metadata !1527, metadata !DIExpression()), !dbg !1530
  %cmp56 = icmp eq ptr %call55, null, !dbg !1604
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !1606

if.then58:                                        ; preds = %if.end52
  %9 = load ptr, ptr @stderr, align 8, !dbg !1607, !tbaa !299
  %10 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 43, i64 1, ptr %9) #16, !dbg !1609
  tail call void @exit(i32 noundef 1) #17, !dbg !1610
  unreachable, !dbg !1610

if.end60:                                         ; preds = %if.end52
  %call62 = tail call ptr @strcpy(ptr noundef nonnull %call55, ptr noundef nonnull dereferenceable(1) %8) #14, !dbg !1611
  %r_resname63 = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 4, !dbg !1612
  store ptr %call55, ptr %r_resname63, align 8, !dbg !1613, !tbaa !1216
  %r_resid = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 5, !dbg !1614
  %11 = load ptr, ptr %r_resid, align 8, !dbg !1614, !tbaa !1615
  %call64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #15, !dbg !1616
  %add65 = add i64 %call64, 1, !dbg !1617
  %call66 = tail call noalias ptr @malloc(i64 noundef %add65) #18, !dbg !1618
  call void @llvm.dbg.value(metadata ptr %call66, metadata !1527, metadata !DIExpression()), !dbg !1530
  %cmp67 = icmp eq ptr %call66, null, !dbg !1619
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !1621

if.then69:                                        ; preds = %if.end60
  %12 = load ptr, ptr @stderr, align 8, !dbg !1622, !tbaa !299
  %13 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 41, i64 1, ptr %12) #16, !dbg !1624
  tail call void @exit(i32 noundef 1) #17, !dbg !1625
  unreachable, !dbg !1625

if.end71:                                         ; preds = %if.end60
  %call73 = tail call ptr @strcpy(ptr noundef nonnull %call66, ptr noundef nonnull dereferenceable(1) %11) #14, !dbg !1626
  %r_resid74 = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 5, !dbg !1627
  store ptr %call66, ptr %r_resid74, align 8, !dbg !1628, !tbaa !1615
  %r_num = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 1, !dbg !1629
  %14 = load i32, ptr %r_num, align 8, !dbg !1629, !tbaa !1630
  %r_num75 = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 1, !dbg !1631
  store i32 %14, ptr %r_num75, align 8, !dbg !1632, !tbaa !1630
  %r_tresnum = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 2, !dbg !1633
  store i32 0, ptr %r_tresnum, align 4, !dbg !1634, !tbaa !1635
  %r_resnum = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 3, !dbg !1636
  store i32 0, ptr %r_resnum, align 8, !dbg !1637, !tbaa !1638
  %r_attr = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 6, !dbg !1639
  %15 = load i32, ptr %r_attr, align 8, !dbg !1639, !tbaa !1640
  %r_attr76 = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 6, !dbg !1641
  store i32 %15, ptr %r_attr76, align 8, !dbg !1642, !tbaa !1640
  %r_strand = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 9, !dbg !1643
  store ptr null, ptr %r_strand, align 8, !dbg !1644, !tbaa !1645
  %call77 = tail call ptr (ptr, ...) @copyextbonds(ptr noundef nonnull %res) #14, !dbg !1646
  %r_extbonds = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 10, !dbg !1647
  store ptr %call77, ptr %r_extbonds, align 8, !dbg !1648, !tbaa !1649
  %16 = load i32, ptr %r_nintbonds, align 8, !dbg !1650, !tbaa !1564
  %r_nintbonds79 = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 11, !dbg !1651
  store i32 %16, ptr %r_nintbonds79, align 8, !dbg !1652, !tbaa !1564
  %r_intbonds = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 12, !dbg !1653
  store ptr %bp.0, ptr %r_intbonds, align 8, !dbg !1654, !tbaa !1655
  call void @llvm.dbg.value(metadata i32 0, metadata !1520, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 0, metadata !1520, metadata !DIExpression()), !dbg !1530
  %cmp81493 = icmp sgt i32 %16, 0, !dbg !1656
  br i1 %cmp81493, label %for.body.lr.ph, label %for.end, !dbg !1659

for.body.lr.ph:                                   ; preds = %if.end71
  %r_intbonds83 = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 12
  %17 = load ptr, ptr %r_intbonds83, align 8, !tbaa !1655
  %wide.trip.count = zext i32 %16 to i64, !dbg !1656
  br label %for.body, !dbg !1659

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1520, metadata !DIExpression()), !dbg !1530
  %arrayidx = getelementptr inbounds [2 x i32], ptr %17, i64 %indvars.iv, !dbg !1660
  %18 = load i32, ptr %arrayidx, align 4, !dbg !1660, !tbaa !794
  %arrayidx87 = getelementptr inbounds [2 x i32], ptr %bp.0, i64 %indvars.iv, !dbg !1662
  store i32 %18, ptr %arrayidx87, align 4, !dbg !1663, !tbaa !794
  %arrayidx92 = getelementptr inbounds [2 x i32], ptr %17, i64 %indvars.iv, i64 1, !dbg !1664
  %19 = load i32, ptr %arrayidx92, align 4, !dbg !1664, !tbaa !794
  %arrayidx96 = getelementptr inbounds [2 x i32], ptr %bp.0, i64 %indvars.iv, i64 1, !dbg !1665
  store i32 %19, ptr %arrayidx96, align 4, !dbg !1666, !tbaa !794
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1520, metadata !DIExpression()), !dbg !1530
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1656
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1659, !llvm.loop !1668

for.end:                                          ; preds = %for.body, %if.end71
  %20 = load i32, ptr %r_nchiral, align 8, !dbg !1670, !tbaa !1582
  %r_nchiral98 = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 13, !dbg !1671
  store i32 %20, ptr %r_nchiral98, align 8, !dbg !1672, !tbaa !1582
  %r_chiral = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 14, !dbg !1673
  store ptr %cp.0, ptr %r_chiral, align 8, !dbg !1674, !tbaa !1675
  call void @llvm.dbg.value(metadata ptr %cp.0, metadata !1529, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 0, metadata !1521, metadata !DIExpression()), !dbg !1530
  %cmp102496 = icmp sgt i32 %20, 0, !dbg !1676
  br i1 %cmp102496, label %for.cond105.preheader.lr.ph, label %for.end126, !dbg !1679

for.cond105.preheader.lr.ph:                      ; preds = %for.end
  %r_chiral109 = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 14
  %21 = load ptr, ptr %r_chiral109, align 8, !tbaa !1675
  %wide.trip.count515 = zext i32 %20 to i64, !dbg !1676
  br label %for.cond105.preheader, !dbg !1679

for.cond105.preheader:                            ; preds = %for.cond105.preheader.lr.ph, %for.end119
  %indvars.iv512 = phi i64 [ 0, %for.cond105.preheader.lr.ph ], [ %indvars.iv.next513, %for.end119 ]
  %cp.1498 = phi ptr [ %cp.0, %for.cond105.preheader.lr.ph ], [ %incdec.ptr, %for.end119 ]
  call void @llvm.dbg.value(metadata ptr %cp.1498, metadata !1529, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i64 %indvars.iv512, metadata !1521, metadata !DIExpression()), !dbg !1530
  %arrayidx111 = getelementptr inbounds %struct.chiral_t, ptr %21, i64 %indvars.iv512
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1530
  br label %for.body108, !dbg !1680

for.body108:                                      ; preds = %for.cond105.preheader, %for.body108
  %indvars.iv508 = phi i64 [ 0, %for.cond105.preheader ], [ %indvars.iv.next509, %for.body108 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv508, metadata !1519, metadata !DIExpression()), !dbg !1530
  %arrayidx113 = getelementptr inbounds [4 x i32], ptr %arrayidx111, i64 0, i64 %indvars.iv508, !dbg !1683
  %22 = load i32, ptr %arrayidx113, align 4, !dbg !1683, !tbaa !794
  %arrayidx116 = getelementptr inbounds [4 x i32], ptr %cp.1498, i64 0, i64 %indvars.iv508, !dbg !1685
  store i32 %22, ptr %arrayidx116, align 4, !dbg !1686, !tbaa !794
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next509, metadata !1519, metadata !DIExpression()), !dbg !1530
  %exitcond511.not = icmp eq i64 %indvars.iv.next509, 4, !dbg !1688
  br i1 %exitcond511.not, label %for.end119, label %for.body108, !dbg !1680, !llvm.loop !1689

for.end119:                                       ; preds = %for.body108
  %c_dist = getelementptr inbounds %struct.chiral_t, ptr %21, i64 %indvars.iv512, i32 1, !dbg !1691
  %23 = load double, ptr %c_dist, align 8, !dbg !1691, !tbaa !1330
  %c_dist123 = getelementptr inbounds %struct.chiral_t, ptr %cp.1498, i64 0, i32 1, !dbg !1692
  store double %23, ptr %c_dist123, align 8, !dbg !1693, !tbaa !1330
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next513, metadata !1521, metadata !DIExpression()), !dbg !1530
  %incdec.ptr = getelementptr inbounds %struct.chiral_t, ptr %cp.1498, i64 1, !dbg !1695
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1529, metadata !DIExpression()), !dbg !1530
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count515, !dbg !1676
  br i1 %exitcond516.not, label %for.end126, label %for.cond105.preheader, !dbg !1679, !llvm.loop !1696

for.end126:                                       ; preds = %for.end119, %for.end
  %r_kind = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 7, !dbg !1698
  %24 = load i32, ptr %r_kind, align 4, !dbg !1698, !tbaa !1699
  %r_kind127 = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 7, !dbg !1700
  store i32 %24, ptr %r_kind127, align 4, !dbg !1701, !tbaa !1699
  %r_atomkind = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 8, !dbg !1702
  %25 = load i32, ptr %r_atomkind, align 8, !dbg !1702, !tbaa !1703
  %r_atomkind128 = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 8, !dbg !1704
  store i32 %25, ptr %r_atomkind128, align 8, !dbg !1705, !tbaa !1703
  %26 = load i32, ptr %r_natoms, align 8, !dbg !1706, !tbaa !1242
  %r_natoms130 = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 15, !dbg !1707
  store i32 %26, ptr %r_natoms130, align 8, !dbg !1708, !tbaa !1242
  %r_aindex = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 16, !dbg !1709
  store ptr %call14, ptr %r_aindex, align 8, !dbg !1710, !tbaa !1711
  %r_aindex131 = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 16, !dbg !1712
  %27 = load ptr, ptr %r_aindex131, align 8, !dbg !1712, !tbaa !1711
  %tobool.not = icmp eq ptr %27, null, !dbg !1714
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1530
  %cmp150501 = icmp sgt i32 %26, 0, !dbg !1715
  br i1 %tobool.not, label %for.cond148.preheader, label %for.cond133.preheader, !dbg !1716

for.cond133.preheader:                            ; preds = %for.end126
  br i1 %cmp150501, label %for.body137.preheader, label %if.end159.thread, !dbg !1717

for.body137.preheader:                            ; preds = %for.cond133.preheader
  %wide.trip.count520 = zext i32 %26 to i64, !dbg !1720
  br label %for.body137, !dbg !1717

for.cond148.preheader:                            ; preds = %for.end126
  br i1 %cmp150501, label %for.body152.preheader, label %if.end159.thread, !dbg !1722

for.body152.preheader:                            ; preds = %for.cond148.preheader
  %wide.trip.count525 = zext i32 %26 to i64, !dbg !1725
  br label %for.body152, !dbg !1722

for.body137:                                      ; preds = %for.body137.preheader, %for.body137
  %indvars.iv517 = phi i64 [ 0, %for.body137.preheader ], [ %indvars.iv.next518, %for.body137 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv517, metadata !1519, metadata !DIExpression()), !dbg !1530
  %arrayidx140 = getelementptr inbounds i32, ptr %27, i64 %indvars.iv517, !dbg !1727
  %28 = load i32, ptr %arrayidx140, align 4, !dbg !1727, !tbaa !794
  %arrayidx143 = getelementptr inbounds i32, ptr %call14, i64 %indvars.iv517, !dbg !1728
  store i32 %28, ptr %arrayidx143, align 4, !dbg !1729, !tbaa !794
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next518, metadata !1519, metadata !DIExpression()), !dbg !1530
  %exitcond521.not = icmp eq i64 %indvars.iv.next518, %wide.trip.count520, !dbg !1720
  br i1 %exitcond521.not, label %if.end159, label %for.body137, !dbg !1717, !llvm.loop !1731

for.body152:                                      ; preds = %for.body152.preheader, %for.body152
  %indvars.iv522 = phi i64 [ 0, %for.body152.preheader ], [ %indvars.iv.next523, %for.body152 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv522, metadata !1519, metadata !DIExpression()), !dbg !1530
  %arrayidx155 = getelementptr inbounds i32, ptr %call14, i64 %indvars.iv522, !dbg !1733
  %29 = trunc i64 %indvars.iv522 to i32, !dbg !1734
  store i32 %29, ptr %arrayidx155, align 4, !dbg !1734, !tbaa !794
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next523, metadata !1519, metadata !DIExpression()), !dbg !1530
  %exitcond526.not = icmp eq i64 %indvars.iv.next523, %wide.trip.count525, !dbg !1725
  br i1 %exitcond526.not, label %if.end159, label %for.body152, !dbg !1722, !llvm.loop !1736

if.end159.thread:                                 ; preds = %for.cond133.preheader, %for.cond148.preheader
  %r_atoms537 = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 17, !dbg !1738
  store ptr %call3, ptr %r_atoms537, align 8, !dbg !1739, !tbaa !1250
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1530
  br label %cleanup, !dbg !1740

if.end159:                                        ; preds = %for.body137, %for.body152
  %r_atoms = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 17, !dbg !1738
  store ptr %call3, ptr %r_atoms, align 8, !dbg !1739, !tbaa !1250
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1530
  %cmp162504 = icmp sgt i32 %26, 0, !dbg !1742
  br i1 %cmp162504, label %for.body164.lr.ph, label %cleanup, !dbg !1740

for.body164.lr.ph:                                ; preds = %if.end159
  %r_atoms165 = getelementptr inbounds %struct.residue_t, ptr %res, i64 0, i32 17
  %30 = load ptr, ptr %r_atoms165, align 8, !tbaa !1250
  %wide.trip.count535 = zext i32 %26 to i64, !dbg !1742
  br label %for.body164, !dbg !1740

for.body164:                                      ; preds = %for.body164.lr.ph, %for.end214
  %indvars.iv532 = phi i64 [ 0, %for.body164.lr.ph ], [ %indvars.iv.next533, %for.end214 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv532, metadata !1519, metadata !DIExpression()), !dbg !1530
  %arrayidx167 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, !dbg !1744
  %31 = load ptr, ptr %arrayidx167, align 8, !dbg !1746, !tbaa !691
  %call168 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #15, !dbg !1747
  %add169 = add i64 %call168, 1, !dbg !1748
  %call170 = tail call noalias ptr @malloc(i64 noundef %add169) #18, !dbg !1749
  call void @llvm.dbg.value(metadata ptr %call170, metadata !1526, metadata !DIExpression()), !dbg !1530
  %cmp171 = icmp eq ptr %call170, null, !dbg !1750
  br i1 %cmp171, label %if.then173, label %if.end175, !dbg !1752

if.then173:                                       ; preds = %for.body164
  %32 = load ptr, ptr @stderr, align 8, !dbg !1753, !tbaa !299
  %33 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 33, i64 1, ptr %32) #16, !dbg !1755
  tail call void @exit(i32 noundef 1) #17, !dbg !1756
  unreachable, !dbg !1756

if.end175:                                        ; preds = %for.body164
  %call180 = tail call ptr @strcpy(ptr noundef nonnull %call170, ptr noundef nonnull dereferenceable(1) %31) #14, !dbg !1757
  %arrayidx182 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, !dbg !1758
  store ptr %call170, ptr %arrayidx182, align 8, !dbg !1759, !tbaa !691
  %a_atomtype = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 1, !dbg !1760
  store ptr null, ptr %a_atomtype, align 8, !dbg !1761, !tbaa !1762
  %a_attr = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 2, !dbg !1763
  %34 = load i32, ptr %a_attr, align 8, !dbg !1763, !tbaa !1764
  %a_attr191 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 2, !dbg !1765
  store i32 %34, ptr %a_attr191, align 8, !dbg !1766, !tbaa !1764
  %a_nconnect = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 3, !dbg !1767
  %35 = load i32, ptr %a_nconnect, align 4, !dbg !1767, !tbaa !1768
  %a_nconnect197 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 3, !dbg !1769
  store i32 %35, ptr %a_nconnect197, align 4, !dbg !1770, !tbaa !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1522, metadata !DIExpression()), !dbg !1530
  br label %for.body201, !dbg !1771

for.body201:                                      ; preds = %if.end175, %for.body201
  %indvars.iv528 = phi i64 [ 0, %if.end175 ], [ %indvars.iv.next529, %for.body201 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv528, metadata !1522, metadata !DIExpression()), !dbg !1530
  %arrayidx206 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 4, i64 %indvars.iv528, !dbg !1773
  %36 = load i32, ptr %arrayidx206, align 4, !dbg !1773, !tbaa !794
  %arrayidx211 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 4, i64 %indvars.iv528, !dbg !1775
  store i32 %36, ptr %arrayidx211, align 4, !dbg !1776, !tbaa !794
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next529, metadata !1522, metadata !DIExpression()), !dbg !1530
  %exitcond531.not = icmp eq i64 %indvars.iv.next529, 8, !dbg !1778
  br i1 %exitcond531.not, label %for.end214, label %for.body201, !dbg !1771, !llvm.loop !1779

for.end214:                                       ; preds = %for.body201
  %a_residue = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 5, !dbg !1781
  store ptr %call, ptr %a_residue, align 8, !dbg !1782, !tbaa !1783
  %a_charge = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 6, !dbg !1784
  %37 = load double, ptr %a_charge, align 8, !dbg !1784, !tbaa !825
  %a_charge222 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 6, !dbg !1785
  store double %37, ptr %a_charge222, align 8, !dbg !1786, !tbaa !825
  %a_radius = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 7, !dbg !1787
  %38 = load double, ptr %a_radius, align 8, !dbg !1787, !tbaa !1132
  %a_radius228 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 7, !dbg !1788
  store double %38, ptr %a_radius228, align 8, !dbg !1789, !tbaa !1132
  %a_bfact = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 8, !dbg !1790
  %39 = load double, ptr %a_bfact, align 8, !dbg !1790, !tbaa !1791
  %a_bfact234 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 8, !dbg !1792
  store double %39, ptr %a_bfact234, align 8, !dbg !1793, !tbaa !1791
  %a_occ = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 9, !dbg !1794
  %40 = load double, ptr %a_occ, align 8, !dbg !1794, !tbaa !1795
  %a_occ240 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 9, !dbg !1796
  store double %40, ptr %a_occ240, align 8, !dbg !1797, !tbaa !1795
  %a_element = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 10, !dbg !1798
  store ptr null, ptr %a_element, align 8, !dbg !1799, !tbaa !1800
  %a_int1 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 11, !dbg !1801
  %41 = load i32, ptr %a_int1, align 8, !dbg !1801, !tbaa !1802
  %a_int1248 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 11, !dbg !1803
  store i32 %41, ptr %a_int1248, align 8, !dbg !1804, !tbaa !1802
  %a_float1 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 12, !dbg !1805
  %42 = load double, ptr %a_float1, align 8, !dbg !1805, !tbaa !1806
  %a_float1254 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 12, !dbg !1807
  store double %42, ptr %a_float1254, align 8, !dbg !1808, !tbaa !1806
  %a_float2 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 13, !dbg !1809
  %43 = load double, ptr %a_float2, align 8, !dbg !1809, !tbaa !1810
  %a_float2260 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 13, !dbg !1811
  store double %43, ptr %a_float2260, align 8, !dbg !1812, !tbaa !1810
  %a_tatomnum = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 14, !dbg !1813
  %44 = load i32, ptr %a_tatomnum, align 8, !dbg !1813, !tbaa !1814
  %a_tatomnum266 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 14, !dbg !1815
  store i32 %44, ptr %a_tatomnum266, align 8, !dbg !1816, !tbaa !1814
  %a_atomnum = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 15, !dbg !1817
  %45 = load i32, ptr %a_atomnum, align 4, !dbg !1817, !tbaa !1818
  %a_atomnum272 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 15, !dbg !1819
  store i32 %45, ptr %a_atomnum272, align 4, !dbg !1820, !tbaa !1818
  %a_fullname = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 16, !dbg !1821
  store ptr null, ptr %a_fullname, align 8, !dbg !1822, !tbaa !1823
  %a_pos = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 17, !dbg !1824
  %46 = load double, ptr %a_pos, align 8, !dbg !1825, !tbaa !822
  %a_pos281 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 17, !dbg !1826
  store double %46, ptr %a_pos281, align 8, !dbg !1827, !tbaa !822
  %arrayidx287 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 17, i64 1, !dbg !1828
  %47 = load double, ptr %arrayidx287, align 8, !dbg !1828, !tbaa !822
  %arrayidx291 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 17, i64 1, !dbg !1829
  store double %47, ptr %arrayidx291, align 8, !dbg !1830, !tbaa !822
  %arrayidx296 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 17, i64 2, !dbg !1831
  %48 = load double, ptr %arrayidx296, align 8, !dbg !1831, !tbaa !822
  %arrayidx300 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 17, i64 2, !dbg !1832
  store double %48, ptr %arrayidx300, align 8, !dbg !1833, !tbaa !822
  %a_w = getelementptr inbounds %struct.atom_t, ptr %30, i64 %indvars.iv532, i32 18, !dbg !1834
  %49 = load double, ptr %a_w, align 8, !dbg !1834, !tbaa !1835
  %a_w306 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvars.iv532, i32 18, !dbg !1836
  store double %49, ptr %a_w306, align 8, !dbg !1837, !tbaa !1835
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next533, metadata !1519, metadata !DIExpression()), !dbg !1530
  %exitcond536.not = icmp eq i64 %indvars.iv.next533, %wide.trip.count535, !dbg !1742
  br i1 %exitcond536.not, label %cleanup, label %for.body164, !dbg !1740, !llvm.loop !1839

cleanup:                                          ; preds = %for.end214, %if.end159.thread, %if.end159, %if.then46, %if.then31, %if.then17, %if.then6, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then6 ], [ null, %if.then17 ], [ null, %if.then31 ], [ null, %if.then46 ], [ %call, %if.end159 ], [ %call, %if.end159.thread ], [ %call, %for.end214 ], !dbg !1530
  ret ptr %retval.0, !dbg !1841
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare ptr @copyextbonds(...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @copystrand(ptr nocapture noundef readonly %str) local_unnamed_addr #0 !dbg !1842 {
entry:
  call void @llvm.dbg.value(metadata ptr %str, metadata !1846, metadata !DIExpression()), !dbg !1850
  %call = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18, !dbg !1851
  call void @llvm.dbg.value(metadata ptr %call, metadata !1847, metadata !DIExpression()), !dbg !1850
  %cmp = icmp eq ptr %call, null, !dbg !1853
  br i1 %cmp, label %if.then, label %if.end, !dbg !1854

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %str, align 8, !dbg !1855, !tbaa !1857
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.34, ptr noundef %0) #14, !dbg !1859
  br label %cleanup.sink.split, !dbg !1860

if.end:                                           ; preds = %entry
  %s_nresidues = getelementptr inbounds %struct.strand_t, ptr %str, i64 0, i32 5, !dbg !1861
  %1 = load i32, ptr %s_nresidues, align 8, !dbg !1861, !tbaa !1863
  %conv = sext i32 %1 to i64, !dbg !1864
  %mul = shl nsw i64 %conv, 3, !dbg !1865
  %call3 = tail call noalias ptr @malloc(i64 noundef %mul) #18, !dbg !1866
  %s_residues = getelementptr inbounds %struct.strand_t, ptr %call, i64 0, i32 7, !dbg !1867
  store ptr %call3, ptr %s_residues, align 8, !dbg !1868, !tbaa !1869
  %cmp4 = icmp eq ptr %call3, null, !dbg !1870
  br i1 %cmp4, label %cleanup.sink.split, label %if.end8, !dbg !1871

if.end8:                                          ; preds = %if.end
  %2 = load ptr, ptr %str, align 8, !dbg !1872, !tbaa !1857
  %call10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15, !dbg !1874
  %add = add i64 %call10, 1, !dbg !1875
  %call12 = tail call noalias ptr @malloc(i64 noundef %add) #18, !dbg !1876
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1848, metadata !DIExpression()), !dbg !1850
  %cmp13 = icmp eq ptr %call12, null, !dbg !1877
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !1878

if.then15:                                        ; preds = %if.end8
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.36, ptr noundef %2) #14, !dbg !1879
  br label %cleanup.sink.split, !dbg !1881

if.end19:                                         ; preds = %if.end8
  store ptr %call12, ptr %call, align 8, !dbg !1882, !tbaa !1857
  %call23 = tail call ptr @strcpy(ptr noundef nonnull %call12, ptr noundef nonnull dereferenceable(1) %2) #14, !dbg !1883
  %s_strandnum = getelementptr inbounds %struct.strand_t, ptr %str, i64 0, i32 1, !dbg !1884
  %3 = load i32, ptr %s_strandnum, align 8, !dbg !1884, !tbaa !1885
  %s_strandnum24 = getelementptr inbounds %struct.strand_t, ptr %call, i64 0, i32 1, !dbg !1886
  store i32 %3, ptr %s_strandnum24, align 8, !dbg !1887, !tbaa !1885
  %s_attr = getelementptr inbounds %struct.strand_t, ptr %str, i64 0, i32 2, !dbg !1888
  %4 = load i32, ptr %s_attr, align 4, !dbg !1888, !tbaa !1889
  %s_attr25 = getelementptr inbounds %struct.strand_t, ptr %call, i64 0, i32 2, !dbg !1890
  store i32 %4, ptr %s_attr25, align 4, !dbg !1891, !tbaa !1889
  %s_molecule = getelementptr inbounds %struct.strand_t, ptr %call, i64 0, i32 3, !dbg !1892
  %s_nresidues27 = getelementptr inbounds %struct.strand_t, ptr %call, i64 0, i32 5, !dbg !1893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %s_molecule, i8 0, i64 16, i1 false), !dbg !1894
  store i32 %1, ptr %s_nresidues27, align 8, !dbg !1895, !tbaa !1863
  %s_res_size = getelementptr inbounds %struct.strand_t, ptr %call, i64 0, i32 6, !dbg !1896
  store i32 %1, ptr %s_res_size, align 4, !dbg !1897, !tbaa !1898
  call void @llvm.dbg.value(metadata i32 0, metadata !1849, metadata !DIExpression()), !dbg !1850
  %cmp3083 = icmp sgt i32 %1, 0, !dbg !1899
  br i1 %cmp3083, label %for.body.lr.ph, label %cleanup, !dbg !1902

for.body.lr.ph:                                   ; preds = %if.end19
  %s_residues32 = getelementptr inbounds %struct.strand_t, ptr %str, i64 0, i32 7
  br label %for.body, !dbg !1902

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1849, metadata !DIExpression()), !dbg !1850
  %5 = load ptr, ptr %s_residues32, align 8, !dbg !1903, !tbaa !1869
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv, !dbg !1905
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1905, !tbaa !299
  %call33 = tail call ptr @copyresidue(ptr noundef %6), !dbg !1906
  %7 = load ptr, ptr %s_residues, align 8, !dbg !1907, !tbaa !1869
  %arrayidx36 = getelementptr inbounds ptr, ptr %7, i64 %indvars.iv, !dbg !1908
  store ptr %call33, ptr %arrayidx36, align 8, !dbg !1909, !tbaa !299
  %8 = load ptr, ptr %s_residues, align 8, !dbg !1910, !tbaa !1869
  %arrayidx39 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv, !dbg !1911
  %9 = load ptr, ptr %arrayidx39, align 8, !dbg !1911, !tbaa !299
  %r_strand = getelementptr inbounds %struct.residue_t, ptr %9, i64 0, i32 9, !dbg !1912
  store ptr %call, ptr %r_strand, align 8, !dbg !1913, !tbaa !1645
  %cmp40.not = icmp eq i64 %indvars.iv, 0, !dbg !1914
  br i1 %cmp40.not, label %for.inc, label %if.then42, !dbg !1916

if.then42:                                        ; preds = %for.body
  %10 = load ptr, ptr %arrayidx39, align 8, !dbg !1917, !tbaa !299
  %11 = add nuw i64 %indvars.iv, 4294967295
  %12 = and i64 %11, 4294967295
  %arrayidx48 = getelementptr inbounds ptr, ptr %8, i64 %12, !dbg !1918
  %13 = load ptr, ptr %arrayidx48, align 8, !dbg !1918, !tbaa !299
  store ptr %10, ptr %13, align 8, !dbg !1919, !tbaa !1599
  br label %for.inc, !dbg !1918

for.inc:                                          ; preds = %for.body, %if.then42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1849, metadata !DIExpression()), !dbg !1850
  %14 = load i32, ptr %s_nresidues, align 8, !dbg !1921, !tbaa !1863
  %15 = sext i32 %14 to i64, !dbg !1899
  %cmp30 = icmp slt i64 %indvars.iv.next, %15, !dbg !1899
  br i1 %cmp30, label %for.body, label %cleanup, !dbg !1902, !llvm.loop !1922

cleanup.sink.split:                               ; preds = %if.end, %if.then, %if.then15
  %e_msg.sink = phi ptr [ @e_msg, %if.then15 ], [ @e_msg, %if.then ], [ @.str.35, %if.end ]
  %call18 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull %e_msg.sink) #14, !dbg !1850
  br label %cleanup, !dbg !1924

cleanup:                                          ; preds = %for.inc, %cleanup.sink.split, %if.end19
  %retval.0 = phi ptr [ %call, %if.end19 ], [ null, %cleanup.sink.split ], [ %call, %for.inc ], !dbg !1850
  ret ptr %retval.0, !dbg !1924
}

; Function Attrs: nounwind uwtable
define dso_local ptr @copymolecule(ptr noundef %mol) local_unnamed_addr #0 !dbg !1925 {
entry:
  call void @llvm.dbg.value(metadata ptr %mol, metadata !1929, metadata !DIExpression()), !dbg !1936
  tail call void @upd_molnumbers(ptr noundef %mol) #14, !dbg !1937
  %call = tail call noalias dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #18, !dbg !1938
  call void @llvm.dbg.value(metadata ptr %call, metadata !1935, metadata !DIExpression()), !dbg !1936
  %cmp = icmp eq ptr %call, null, !dbg !1940
  br i1 %cmp, label %if.then, label %if.end, !dbg !1941

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) @e_msg, ptr noundef nonnull align 1 dereferenceable(13) @.str.37, i64 13, i1 false), !dbg !1942
  %call2 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #14, !dbg !1944
  br label %cleanup, !dbg !1945

if.end:                                           ; preds = %entry
  %m_nstrands = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 1, !dbg !1946
  %0 = load i32, ptr %m_nstrands, align 8, !dbg !1946, !tbaa !1947
  %m_nstrands3 = getelementptr inbounds %struct.molecule_t, ptr %call, i64 0, i32 1, !dbg !1949
  store i32 %0, ptr %m_nstrands3, align 8, !dbg !1950, !tbaa !1947
  %m_nresidues = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 3, !dbg !1951
  %1 = load i32, ptr %m_nresidues, align 8, !dbg !1951, !tbaa !1952
  %m_nresidues4 = getelementptr inbounds %struct.molecule_t, ptr %call, i64 0, i32 3, !dbg !1953
  store i32 %1, ptr %m_nresidues4, align 8, !dbg !1954, !tbaa !1952
  %m_natoms = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 4, !dbg !1955
  %2 = load i32, ptr %m_natoms, align 4, !dbg !1955, !tbaa !1956
  %m_natoms5 = getelementptr inbounds %struct.molecule_t, ptr %call, i64 0, i32 4, !dbg !1957
  store i32 %2, ptr %m_natoms5, align 4, !dbg !1958, !tbaa !1956
  %m_nvalid = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 5, !dbg !1959
  %3 = load i32, ptr %m_nvalid, align 8, !dbg !1959, !tbaa !1960
  %m_nvalid6 = getelementptr inbounds %struct.molecule_t, ptr %call, i64 0, i32 5, !dbg !1961
  store i32 %3, ptr %m_nvalid6, align 8, !dbg !1962, !tbaa !1960
  %m_prm = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 6, !dbg !1963
  %4 = load ptr, ptr %m_prm, align 8, !dbg !1963, !tbaa !1965
  %cmp7.not = icmp eq ptr %4, null, !dbg !1966
  br i1 %cmp7.not, label %if.end13, label %if.then8, !dbg !1967

if.then8:                                         ; preds = %if.end
  %call10 = tail call ptr @copyparm(ptr noundef nonnull %4) #14, !dbg !1968
  br label %if.end13, !dbg !1970

if.end13:                                         ; preds = %if.end, %if.then8
  %call10.sink = phi ptr [ %call10, %if.then8 ], [ null, %if.end ], !dbg !1971
  %5 = getelementptr inbounds %struct.molecule_t, ptr %call, i64 0, i32 6, !dbg !1972
  store ptr %call10.sink, ptr %5, align 8, !dbg !1973
  call void @llvm.dbg.value(metadata i32 0, metadata !1930, metadata !DIExpression()), !dbg !1936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %call, ptr noundef nonnull align 8 dereferenceable(96) %mol, i64 96, i1 false), !dbg !1974, !tbaa !822
  call void @llvm.dbg.value(metadata i32 undef, metadata !1931, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1936
  call void @llvm.dbg.value(metadata i32 undef, metadata !1930, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1936
  %m_strands = getelementptr inbounds %struct.molecule_t, ptr %mol, i64 0, i32 2, !dbg !1981
  %6 = load ptr, ptr %m_strands, align 8, !dbg !1981, !tbaa !1982
  call void @llvm.dbg.value(metadata ptr %6, metadata !1932, metadata !DIExpression()), !dbg !1936
  %cmp28.not = icmp eq ptr %6, null, !dbg !1983
  br i1 %cmp28.not, label %while.end, label %if.end32, !dbg !1985

if.end32:                                         ; preds = %if.end13
  %call30 = tail call ptr @copystrand(ptr noundef nonnull %6), !dbg !1986
  call void @llvm.dbg.value(metadata ptr %call30, metadata !1933, metadata !DIExpression()), !dbg !1936
  %s_molecule = getelementptr inbounds %struct.strand_t, ptr %call30, i64 0, i32 3, !dbg !1988
  store ptr %call, ptr %s_molecule, align 8, !dbg !1989, !tbaa !1990
  %m_strands31 = getelementptr inbounds %struct.molecule_t, ptr %call, i64 0, i32 2, !dbg !1991
  store ptr %call30, ptr %m_strands31, align 8, !dbg !1992, !tbaa !1982
  %s_next = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 4, !dbg !1993
  %7 = load ptr, ptr %s_next, align 8, !dbg !1993, !tbaa !1994
  call void @llvm.dbg.value(metadata ptr %7, metadata !1932, metadata !DIExpression()), !dbg !1936
  %cmp33.not83 = icmp eq ptr %7, null, !dbg !1995
  br i1 %cmp33.not83, label %while.end, label %if.end37, !dbg !1996

if.end37:                                         ; preds = %if.end32, %if.end37
  %newstr.185 = phi ptr [ %call34, %if.end37 ], [ %call30, %if.end32 ]
  %strptr.184 = phi ptr [ %8, %if.end37 ], [ %7, %if.end32 ]
  call void @llvm.dbg.value(metadata ptr %newstr.185, metadata !1933, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata ptr %strptr.184, metadata !1932, metadata !DIExpression()), !dbg !1936
  %call34 = tail call ptr @copystrand(ptr noundef nonnull %strptr.184), !dbg !1997
  call void @llvm.dbg.value(metadata ptr %call34, metadata !1934, metadata !DIExpression()), !dbg !1936
  %s_next36 = getelementptr inbounds %struct.strand_t, ptr %newstr.185, i64 0, i32 4, !dbg !1999
  store ptr %call34, ptr %s_next36, align 8, !dbg !2001, !tbaa !1994
  %s_molecule38 = getelementptr inbounds %struct.strand_t, ptr %call34, i64 0, i32 3, !dbg !2002
  store ptr %call, ptr %s_molecule38, align 8, !dbg !2003, !tbaa !1990
  call void @llvm.dbg.value(metadata ptr %call34, metadata !1933, metadata !DIExpression()), !dbg !1936
  %s_next39 = getelementptr inbounds %struct.strand_t, ptr %strptr.184, i64 0, i32 4, !dbg !2004
  %8 = load ptr, ptr %s_next39, align 8, !dbg !2004, !tbaa !1994
  call void @llvm.dbg.value(metadata ptr %8, metadata !1932, metadata !DIExpression()), !dbg !1936
  %cmp33.not = icmp eq ptr %8, null, !dbg !1995
  br i1 %cmp33.not, label %while.end, label %if.end37, !dbg !1996, !llvm.loop !2005

while.end:                                        ; preds = %if.end37, %if.end13, %if.end32
  tail call void @upd_molnumbers(ptr noundef nonnull %call) #14, !dbg !2007
  br label %cleanup, !dbg !2008

cleanup:                                          ; preds = %while.end, %if.then
  ret ptr %call, !dbg !2009
}

declare !dbg !2010 void @upd_molnumbers(ptr noundef) local_unnamed_addr #7

declare !dbg !2013 ptr @copyparm(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !2016 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !2020 noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !2025 void @NAB_initatom(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @dbDBRndOpen(...) local_unnamed_addr #7

declare signext i8 @bDBGetValue(...) local_unnamed_addr #7

declare void @DBZeroPrefix(...) local_unnamed_addr #7

declare void @DBPushPrefix(...) local_unnamed_addr #7

declare signext i8 @bDBGetTable(...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @addres2reslib(ptr nocapture noundef %rlp) unnamed_addr #0 !dbg !2028 {
entry:
  call void @llvm.dbg.value(metadata ptr %rlp, metadata !2032, metadata !DIExpression()), !dbg !2039
  %call = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #18, !dbg !2040
  call void @llvm.dbg.value(metadata ptr %call, metadata !2033, metadata !DIExpression()), !dbg !2039
  %cmp = icmp eq ptr %call, null, !dbg !2042
  br i1 %cmp, label %cleanup.sink.split, label %if.end, !dbg !2043

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @n_atoms, align 4, !dbg !2044, !tbaa !794
  %conv = sext i32 %0 to i64, !dbg !2044
  %mul = mul nsw i64 %conv, 176, !dbg !2046
  %call3 = tail call noalias ptr @malloc(i64 noundef %mul) #18, !dbg !2047
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2034, metadata !DIExpression()), !dbg !2039
  %cmp4 = icmp eq ptr %call3, null, !dbg !2048
  br i1 %cmp4, label %cleanup.sink.split, label %if.end10, !dbg !2049

if.end10:                                         ; preds = %if.end
  %rl_rlist = getelementptr inbounds %struct.reslib_t, ptr %rlp, i64 0, i32 4, !dbg !2050
  %1 = load ptr, ptr %rl_rlist, align 8, !dbg !2050, !tbaa !2051
  store ptr %1, ptr %call, align 8, !dbg !2052, !tbaa !1599
  store ptr %call, ptr %rl_rlist, align 8, !dbg !2053, !tbaa !2051
  %call12 = tail call i64 @strlen(ptr noundef nonnull @lr_name) #15, !dbg !2054
  %add = add i64 %call12, 1, !dbg !2055
  %call13 = tail call noalias ptr @malloc(i64 noundef %add) #18, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2036, metadata !DIExpression()), !dbg !2039
  %cmp14 = icmp eq ptr %call13, null, !dbg !2057
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !2059

if.then16:                                        ; preds = %if.end10
  %2 = load ptr, ptr @stderr, align 8, !dbg !2060, !tbaa !299
  %3 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 45, i64 1, ptr %2) #16, !dbg !2062
  tail call void @exit(i32 noundef 1) #17, !dbg !2063
  unreachable, !dbg !2063

if.end18:                                         ; preds = %if.end10
  %call19 = tail call ptr @strcpy(ptr noundef nonnull %call13, ptr noundef nonnull @lr_name) #14, !dbg !2064
  %r_resname = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 4, !dbg !2065
  store ptr %call13, ptr %r_resname, align 8, !dbg !2066, !tbaa !1216
  %call20 = tail call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #18, !dbg !2067
  call void @llvm.dbg.value(metadata ptr %call20, metadata !2036, metadata !DIExpression()), !dbg !2039
  %cmp21 = icmp eq ptr %call20, null, !dbg !2068
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !2070

if.then23:                                        ; preds = %if.end18
  %4 = load ptr, ptr @stderr, align 8, !dbg !2071, !tbaa !299
  %5 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 43, i64 1, ptr %4) #16, !dbg !2073
  tail call void @exit(i32 noundef 1) #17, !dbg !2074
  unreachable, !dbg !2074

if.end25:                                         ; preds = %if.end18
  store i8 0, ptr %call20, align 1, !dbg !2075
  %r_resid = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 5, !dbg !2076
  store ptr %call20, ptr %r_resid, align 8, !dbg !2077, !tbaa !1615
  %r_num = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 1, !dbg !2078
  store i32 0, ptr %r_num, align 8, !dbg !2079, !tbaa !1630
  %r_tresnum = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 2, !dbg !2080
  store i32 0, ptr %r_tresnum, align 4, !dbg !2081, !tbaa !1635
  %r_resnum = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 3, !dbg !2082
  store i32 0, ptr %r_resnum, align 8, !dbg !2083, !tbaa !1638
  %r_attr = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 6, !dbg !2084
  store i32 0, ptr %r_attr, align 8, !dbg !2085, !tbaa !1640
  %rl_r_kind = getelementptr inbounds %struct.reslib_t, ptr %rlp, i64 0, i32 2, !dbg !2086
  %6 = load i32, ptr %rl_r_kind, align 8, !dbg !2086, !tbaa !330
  %r_kind = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 7, !dbg !2087
  store i32 %6, ptr %r_kind, align 4, !dbg !2088, !tbaa !1699
  %rl_r_atomkind = getelementptr inbounds %struct.reslib_t, ptr %rlp, i64 0, i32 3, !dbg !2089
  %7 = load i32, ptr %rl_r_atomkind, align 4, !dbg !2089, !tbaa !570
  %r_atomkind = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 8, !dbg !2090
  store i32 %7, ptr %r_atomkind, align 8, !dbg !2091, !tbaa !1703
  %r_strand = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 9, !dbg !2092
  %r_intbonds = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 12, !dbg !2093
  store ptr null, ptr %r_intbonds, align 8, !dbg !2094, !tbaa !1655
  %r_nchiral = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 13, !dbg !2095
  store i32 0, ptr %r_nchiral, align 8, !dbg !2096, !tbaa !1582
  %r_chiral = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 14, !dbg !2097
  store ptr null, ptr %r_chiral, align 8, !dbg !2098, !tbaa !1675
  %r_natoms = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 15, !dbg !2099
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %r_strand, i8 0, i64 20, i1 false), !dbg !2100
  store i32 %0, ptr %r_natoms, align 8, !dbg !2101, !tbaa !1242
  %r_aindex = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 16, !dbg !2102
  store ptr null, ptr %r_aindex, align 8, !dbg !2103, !tbaa !1711
  %r_atoms = getelementptr inbounds %struct.residue_t, ptr %call, i64 0, i32 17, !dbg !2104
  store ptr %call3, ptr %r_atoms, align 8, !dbg !2105, !tbaa !1250
  call void @llvm.dbg.value(metadata i32 0, metadata !2037, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 0, metadata !2037, metadata !DIExpression()), !dbg !2039
  %cmp27225 = icmp sgt i32 %0, 0, !dbg !2106
  br i1 %cmp27225, label %for.body.preheader, label %cleanup, !dbg !2109

for.body.preheader:                               ; preds = %if.end25
  %wide.trip.count = zext i32 %0 to i64, !dbg !2106
  br label %for.body, !dbg !2109

for.body:                                         ; preds = %for.body.preheader, %if.end36
  %indvar = phi i64 [ 0, %for.body.preheader ], [ %indvar.next, %if.end36 ]
  call void @llvm.dbg.value(metadata i64 %indvar, metadata !2037, metadata !DIExpression()), !dbg !2039
  %arrayidx = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvar, !dbg !2110
  %8 = load ptr, ptr %arrayidx, align 16, !dbg !2112, !tbaa !691
  %call29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #15, !dbg !2113
  %add30 = add i64 %call29, 1, !dbg !2114
  %call31 = tail call noalias ptr @malloc(i64 noundef %add30) #18, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %call31, metadata !2035, metadata !DIExpression()), !dbg !2039
  %cmp32 = icmp eq ptr %call31, null, !dbg !2116
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !2118

if.then34:                                        ; preds = %for.body
  %9 = load ptr, ptr @stderr, align 8, !dbg !2119, !tbaa !299
  %10 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 35, i64 1, ptr %9) #16, !dbg !2121
  tail call void @exit(i32 noundef 1) #17, !dbg !2122
  unreachable, !dbg !2122

if.end36:                                         ; preds = %for.body
  %11 = mul nuw nsw i64 %indvar, 176, !dbg !2110
  %12 = add nuw nsw i64 %11, 24, !dbg !2110
  %uglygep = getelementptr i8, ptr %call3, i64 %12, !dbg !2110
  %13 = add nuw nsw i64 %11, 144, !dbg !2110
  %uglygep229 = getelementptr i8, ptr @atoms, i64 %13, !dbg !2110
  %uglygep228 = getelementptr i8, ptr %call3, i64 %13, !dbg !2110
  %call40 = tail call ptr @strcpy(ptr noundef nonnull %call31, ptr noundef nonnull dereferenceable(1) %8) #14, !dbg !2123
  %arrayidx43 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, !dbg !2124
  store ptr %call31, ptr %arrayidx43, align 8, !dbg !2125, !tbaa !691
  %a_attr = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 2, !dbg !2126
  store i32 0, ptr %a_attr, align 8, !dbg !2127, !tbaa !1764
  %a_nconnect = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 3, !dbg !2128
  store i32 0, ptr %a_nconnect, align 4, !dbg !2129, !tbaa !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression()), !dbg !2039
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %uglygep, i8 -1, i64 32, i1 false), !dbg !2130, !tbaa !794
  call void @llvm.dbg.value(metadata i32 undef, metadata !2038, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 undef, metadata !2038, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2039
  %a_residue = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 5, !dbg !2133
  store ptr %call, ptr %a_residue, align 8, !dbg !2134, !tbaa !1783
  %a_charge = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvar, i32 6, !dbg !2135
  %14 = load double, ptr %a_charge, align 16, !dbg !2135, !tbaa !825
  %a_charge68 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 6, !dbg !2136
  store double %14, ptr %a_charge68, align 8, !dbg !2137, !tbaa !825
  %a_radius = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvar, i32 7, !dbg !2138
  %15 = load double, ptr %a_radius, align 8, !dbg !2138, !tbaa !1132
  %a_radius74 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 7, !dbg !2139
  store double %15, ptr %a_radius74, align 8, !dbg !2140, !tbaa !1132
  %a_bfact = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvar, i32 8, !dbg !2141
  %16 = load double, ptr %a_bfact, align 16, !dbg !2141, !tbaa !1791
  %a_bfact80 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 8, !dbg !2142
  store double %16, ptr %a_bfact80, align 8, !dbg !2143, !tbaa !1791
  %a_occ = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvar, i32 9, !dbg !2144
  %17 = load double, ptr %a_occ, align 8, !dbg !2144, !tbaa !1795
  %a_occ86 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 9, !dbg !2145
  store double %17, ptr %a_occ86, align 8, !dbg !2146, !tbaa !1795
  %a_int1 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvar, i32 11, !dbg !2147
  %18 = load i32, ptr %a_int1, align 8, !dbg !2147, !tbaa !1802
  %a_int192 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 11, !dbg !2148
  store i32 %18, ptr %a_int192, align 8, !dbg !2149, !tbaa !1802
  %a_float1 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvar, i32 12, !dbg !2150
  %19 = load double, ptr %a_float1, align 16, !dbg !2150, !tbaa !1806
  %a_float198 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 12, !dbg !2151
  store double %19, ptr %a_float198, align 8, !dbg !2152, !tbaa !1806
  %a_float2 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvar, i32 13, !dbg !2153
  %20 = load double, ptr %a_float2, align 8, !dbg !2153, !tbaa !1810
  %a_float2104 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 13, !dbg !2154
  store double %20, ptr %a_float2104, align 8, !dbg !2155, !tbaa !1810
  %a_atomnum = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 15, !dbg !2156
  store i32 0, ptr %a_atomnum, align 4, !dbg !2157, !tbaa !1818
  %a_fullname = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 16, !dbg !2158
  store ptr null, ptr %a_fullname, align 8, !dbg !2159, !tbaa !1823
  call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression()), !dbg !2039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %uglygep228, ptr noundef nonnull align 16 dereferenceable(24) %uglygep229, i64 24, i1 false), !dbg !2160, !tbaa !822
  call void @llvm.dbg.value(metadata i32 undef, metadata !2038, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 undef, metadata !2038, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2039
  %a_w = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %indvar, i32 18, !dbg !2163
  %21 = load double, ptr %a_w, align 8, !dbg !2163, !tbaa !1835
  %a_w133 = getelementptr inbounds %struct.atom_t, ptr %call3, i64 %indvar, i32 18, !dbg !2164
  store double %21, ptr %a_w133, align 8, !dbg !2165, !tbaa !1835
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %indvar.next, metadata !2037, metadata !DIExpression()), !dbg !2039
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count, !dbg !2106
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !2109, !llvm.loop !2167

cleanup.sink.split:                               ; preds = %if.end, %entry
  %.str.72.sink = phi ptr [ @.str.71, %entry ], [ @.str.72, %if.end ]
  %rl_name7 = getelementptr inbounds %struct.reslib_t, ptr %rlp, i64 0, i32 1, !dbg !2039
  %22 = load ptr, ptr %rl_name7, align 8, !dbg !2039, !tbaa !308
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull %.str.72.sink, ptr noundef nonnull @lr_name, ptr noundef %22) #14, !dbg !2039
  %call9 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #14, !dbg !2039
  br label %cleanup, !dbg !2169

cleanup:                                          ; preds = %if.end36, %cleanup.sink.split, %if.end25
  ret void, !dbg !2169
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addbonds2reslib(ptr nocapture noundef readonly %rlp) unnamed_addr #0 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata ptr %rlp, metadata !2172, metadata !DIExpression()), !dbg !2181
  %rl_rlist = getelementptr inbounds %struct.reslib_t, ptr %rlp, i64 0, i32 4, !dbg !2182
  call void @llvm.dbg.value(metadata ptr undef, metadata !2173, metadata !DIExpression()), !dbg !2181
  br label %for.cond, !dbg !2184

for.cond:                                         ; preds = %for.body, %entry
  %res.0.in = phi ptr [ %rl_rlist, %entry ], [ %res.0, %for.body ]
  %res.0 = load ptr, ptr %res.0.in, align 8, !dbg !2185, !tbaa !299
  call void @llvm.dbg.value(metadata ptr %res.0, metadata !2173, metadata !DIExpression()), !dbg !2181
  %tobool.not = icmp eq ptr %res.0, null, !dbg !2186
  br i1 %tobool.not, label %for.end80, label %for.body, !dbg !2186

for.body:                                         ; preds = %for.cond
  %r_resname = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 4, !dbg !2187
  %0 = load ptr, ptr %r_resname, align 8, !dbg !2187, !tbaa !1216
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull @lr_name) #15, !dbg !2191
  %cmp = icmp eq i32 %call, 0, !dbg !2192
  br i1 %cmp, label %if.then, label %for.cond, !dbg !2193, !llvm.loop !2194

if.then:                                          ; preds = %for.body
  %1 = load i32, ptr @n_bonds, align 4, !dbg !2196, !tbaa !794
  %conv = sext i32 %1 to i64, !dbg !2196
  %mul = shl nsw i64 %conv, 3, !dbg !2199
  %call1 = tail call noalias ptr @malloc(i64 noundef %mul) #18, !dbg !2200
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2174, metadata !DIExpression()), !dbg !2181
  %cmp2 = icmp eq ptr %call1, null, !dbg !2201
  br i1 %cmp2, label %if.then4, label %for.cond7.preheader, !dbg !2202

for.cond7.preheader:                              ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !2175, metadata !DIExpression()), !dbg !2181
  %cmp8130 = icmp sgt i32 %1, 0, !dbg !2203
  br i1 %cmp8130, label %for.body10.lr.ph, label %for.end77, !dbg !2206

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %r_atoms = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 17
  %2 = load ptr, ptr %r_atoms, align 8, !tbaa !1250
  br label %for.body10, !dbg !2206

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.77, ptr noundef nonnull @lr_name) #14, !dbg !2207
  %call6 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #14, !dbg !2209
  br label %cleanup, !dbg !2210

for.body10:                                       ; preds = %for.body10.lr.ph, %for.inc75
  %indvars.iv141 = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next142, %for.inc75 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv141, metadata !2175, metadata !DIExpression()), !dbg !2181
  %arrayidx = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %indvars.iv141, !dbg !2211
  %3 = load i32, ptr %arrayidx, align 8, !dbg !2211, !tbaa !794
  %arrayidx13 = getelementptr inbounds [2 x i32], ptr %call1, i64 %indvars.iv141, !dbg !2213
  store i32 %3, ptr %arrayidx13, align 4, !dbg !2214, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %3, metadata !2177, metadata !DIExpression()), !dbg !2181
  %arrayidx17 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %indvars.iv141, i64 1, !dbg !2215
  %4 = load i32, ptr %arrayidx17, align 4, !dbg !2215, !tbaa !794
  %arrayidx20 = getelementptr inbounds [2 x i32], ptr %call1, i64 %indvars.iv141, i64 1, !dbg !2216
  store i32 %4, ptr %arrayidx20, align 4, !dbg !2217, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %4, metadata !2178, metadata !DIExpression()), !dbg !2181
  %dec = add nsw i32 %3, -1, !dbg !2218
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2177, metadata !DIExpression()), !dbg !2181
  %dec21 = add nsw i32 %4, -1, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %dec21, metadata !2178, metadata !DIExpression()), !dbg !2181
  %idxprom22 = sext i32 %dec to i64, !dbg !2220
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %idxprom22), metadata !2179, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2181
  call void @llvm.dbg.value(metadata i32 0, metadata !2176, metadata !DIExpression()), !dbg !2181
  br label %for.body27, !dbg !2221

for.cond24:                                       ; preds = %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2176, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i32 undef, metadata !2176, metadata !DIExpression()), !dbg !2181
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !2225
  br i1 %exitcond.not, label %for.end, label %for.body27, !dbg !2221, !llvm.loop !2226

for.body27:                                       ; preds = %for.body10, %for.cond24
  %indvars.iv = phi i64 [ 0, %for.body10 ], [ %indvars.iv.next, %for.cond24 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2176, metadata !DIExpression()), !dbg !2181
  %arrayidx29 = getelementptr inbounds %struct.atom_t, ptr %2, i64 %idxprom22, i32 4, i64 %indvars.iv, !dbg !2228
  %5 = load i32, ptr %arrayidx29, align 4, !dbg !2228, !tbaa !794
  %cmp30 = icmp eq i32 %5, %dec21, !dbg !2231
  br i1 %cmp30, label %for.end, label %if.else, !dbg !2232

if.else:                                          ; preds = %for.body27
  %cmp36 = icmp eq i32 %5, -1, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2176, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2181
  br i1 %cmp36, label %if.then38, label %for.cond24, !dbg !2235

if.then38:                                        ; preds = %if.else
  store i32 %dec21, ptr %arrayidx29, align 4, !dbg !2236, !tbaa !794
  %a_nconnect = getelementptr inbounds %struct.atom_t, ptr %2, i64 %idxprom22, i32 3, !dbg !2238
  %6 = load i32, ptr %a_nconnect, align 4, !dbg !2239, !tbaa !1768
  %inc = add nsw i32 %6, 1, !dbg !2239
  store i32 %inc, ptr %a_nconnect, align 4, !dbg !2239, !tbaa !1768
  br label %for.end, !dbg !2240

for.end:                                          ; preds = %for.body27, %for.cond24, %if.then38
  %idxprom46 = sext i32 %dec21 to i64, !dbg !2241
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %idxprom46), metadata !2180, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2181
  call void @llvm.dbg.value(metadata i32 0, metadata !2176, metadata !DIExpression()), !dbg !2181
  br label %for.body51, !dbg !2242

for.cond48:                                       ; preds = %if.else58
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i32 undef, metadata !2176, metadata !DIExpression()), !dbg !2181
  %exitcond140.not = icmp eq i64 %indvars.iv.next138, 8, !dbg !2246
  br i1 %exitcond140.not, label %for.inc75, label %for.body51, !dbg !2242, !llvm.loop !2247

for.body51:                                       ; preds = %for.end, %for.cond48
  %indvars.iv137 = phi i64 [ 0, %for.end ], [ %indvars.iv.next138, %for.cond48 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv137, metadata !2176, metadata !DIExpression()), !dbg !2181
  %arrayidx54 = getelementptr inbounds %struct.atom_t, ptr %2, i64 %idxprom46, i32 4, i64 %indvars.iv137, !dbg !2249
  %7 = load i32, ptr %arrayidx54, align 4, !dbg !2249, !tbaa !794
  %cmp55 = icmp eq i32 %7, %dec, !dbg !2252
  br i1 %cmp55, label %for.inc75, label %if.else58, !dbg !2253

if.else58:                                        ; preds = %for.body51
  %cmp62 = icmp eq i32 %7, -1, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %indvars.iv137, metadata !2176, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2181
  br i1 %cmp62, label %if.then64, label %for.cond48, !dbg !2256

if.then64:                                        ; preds = %if.else58
  store i32 %dec, ptr %arrayidx54, align 4, !dbg !2257, !tbaa !794
  %a_nconnect68 = getelementptr inbounds %struct.atom_t, ptr %2, i64 %idxprom46, i32 3, !dbg !2259
  %8 = load i32, ptr %a_nconnect68, align 4, !dbg !2260, !tbaa !1768
  %inc69 = add nsw i32 %8, 1, !dbg !2260
  store i32 %inc69, ptr %a_nconnect68, align 4, !dbg !2260, !tbaa !1768
  br label %for.inc75, !dbg !2261

for.inc75:                                        ; preds = %for.cond48, %for.body51, %if.then64
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next142, metadata !2175, metadata !DIExpression()), !dbg !2181
  %9 = load i32, ptr @n_bonds, align 4, !dbg !2263, !tbaa !794
  %10 = sext i32 %9 to i64, !dbg !2203
  %cmp8 = icmp slt i64 %indvars.iv.next142, %10, !dbg !2203
  br i1 %cmp8, label %for.body10, label %for.end77, !dbg !2206, !llvm.loop !2264

for.end77:                                        ; preds = %for.inc75, %for.cond7.preheader
  %.lcssa = phi i32 [ %1, %for.cond7.preheader ], [ %9, %for.inc75 ], !dbg !2263
  %r_nintbonds = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 11, !dbg !2266
  store i32 %.lcssa, ptr %r_nintbonds, align 8, !dbg !2267, !tbaa !1564
  %r_intbonds = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 12, !dbg !2268
  store ptr %call1, ptr %r_intbonds, align 8, !dbg !2269, !tbaa !1655
  br label %cleanup, !dbg !2270

for.end80:                                        ; preds = %for.cond
  %rl_name = getelementptr inbounds %struct.reslib_t, ptr %rlp, i64 0, i32 1, !dbg !2271
  %11 = load ptr, ptr %rl_name, align 8, !dbg !2271, !tbaa !308
  %call81 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.78, ptr noundef nonnull @lr_name, ptr noundef %11) #14, !dbg !2272
  %call82 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @e_msg) #14, !dbg !2273
  br label %cleanup, !dbg !2274

cleanup:                                          ; preds = %for.end80, %for.end77, %if.then4
  ret void, !dbg !2275
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addqr2reslib(ptr nocapture noundef readonly %rlp) unnamed_addr #0 !dbg !2276 {
entry:
  call void @llvm.dbg.value(metadata ptr %rlp, metadata !2278, metadata !DIExpression()), !dbg !2283
  %rl_rlist = getelementptr inbounds %struct.reslib_t, ptr %rlp, i64 0, i32 4, !dbg !2284
  call void @llvm.dbg.value(metadata ptr undef, metadata !2279, metadata !DIExpression()), !dbg !2283
  br label %for.cond, !dbg !2286

for.cond:                                         ; preds = %for.body, %entry
  %res.0.in = phi ptr [ %rl_rlist, %entry ], [ %res.0, %for.body ]
  %res.0 = load ptr, ptr %res.0.in, align 8, !dbg !2287, !tbaa !299
  call void @llvm.dbg.value(metadata ptr %res.0, metadata !2279, metadata !DIExpression()), !dbg !2283
  %tobool.not = icmp eq ptr %res.0, null, !dbg !2288
  br i1 %tobool.not, label %for.end16, label %for.body, !dbg !2288

for.body:                                         ; preds = %for.cond
  %r_resname = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 4, !dbg !2289
  %0 = load ptr, ptr %r_resname, align 8, !dbg !2289, !tbaa !1216
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull @lr_name) #15, !dbg !2293
  %cmp = icmp eq i32 %call, 0, !dbg !2294
  br i1 %cmp, label %for.cond1.preheader, label %for.cond, !dbg !2295, !llvm.loop !2296

for.cond1.preheader:                              ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr @atoms, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 0, metadata !2280, metadata !DIExpression()), !dbg !2283
  %1 = load i32, ptr @n_atoms, align 4, !dbg !2298, !tbaa !794
  %cmp245 = icmp sgt i32 %1, 0, !dbg !2302
  br i1 %cmp245, label %for.body3.lr.ph, label %cleanup, !dbg !2303

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %r_natoms.i = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 15
  %2 = load i32, ptr %r_natoms.i, align 8, !tbaa !1242
  %cmp9.i = icmp sgt i32 %2, 0
  %wide.trip.count.i = zext i32 %2 to i64
  br i1 %cmp9.i, label %for.body3.lr.ph.split.us, label %cleanup, !dbg !2304

for.body3.lr.ph.split.us:                         ; preds = %for.body3.lr.ph
  %r_atoms.i = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 17
  %3 = load ptr, ptr %r_atoms.i, align 8, !tbaa !1250
  br label %for.body3.us, !dbg !2303

for.body3.us:                                     ; preds = %for.inc.us, %for.body3.lr.ph.split.us
  %4 = phi i32 [ %1, %for.body3.lr.ph.split.us ], [ %14, %for.inc.us ]
  %ap.047.us = phi ptr [ @atoms, %for.body3.lr.ph.split.us ], [ %incdec.ptr.us, %for.inc.us ]
  %a.046.us = phi i32 [ 0, %for.body3.lr.ph.split.us ], [ %inc.us, %for.inc.us ]
  call void @llvm.dbg.value(metadata ptr %ap.047.us, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 %a.046.us, metadata !2280, metadata !DIExpression()), !dbg !2283
  %5 = load ptr, ptr %ap.047.us, align 8, !dbg !2308, !tbaa !691
  call void @llvm.dbg.value(metadata ptr %res.0, metadata !1232, metadata !DIExpression()) #14, !dbg !2309
  call void @llvm.dbg.value(metadata ptr %5, metadata !1237, metadata !DIExpression()) #14, !dbg !2309
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()) #14, !dbg !2309
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()) #14, !dbg !2309
  br label %for.body.i.us, !dbg !2304

for.body.i.us:                                    ; preds = %for.cond.i.us, %for.body3.us
  %indvars.iv.i.us = phi i64 [ 0, %for.body3.us ], [ %indvars.iv.next.i.us, %for.cond.i.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.us, metadata !1238, metadata !DIExpression()) #14, !dbg !2309
  %arrayidx.i.us = getelementptr inbounds %struct.atom_t, ptr %3, i64 %indvars.iv.i.us, !dbg !2310
  %6 = load ptr, ptr %arrayidx.i.us, align 8, !dbg !2311, !tbaa !691
  %call.i.us = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %5) #15, !dbg !2312
  %tobool.not.i.us = icmp eq i32 %call.i.us, 0, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.us, metadata !1238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !2309
  br i1 %tobool.not.i.us, label %if.then6.us, label %for.cond.i.us, !dbg !2313

for.cond.i.us:                                    ; preds = %for.body.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.us, metadata !1238, metadata !DIExpression()) #14, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.us, metadata !1238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !2309
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i, !dbg !2315
  br i1 %exitcond.not.i.us, label %for.inc.us, label %for.body.i.us, !dbg !2304, !llvm.loop !2316

if.then6.us:                                      ; preds = %for.body.i.us
  call void @llvm.dbg.value(metadata ptr %arrayidx.i.us, metadata !2282, metadata !DIExpression()), !dbg !2283
  %a_charge.us = getelementptr inbounds %struct.atom_t, ptr %ap.047.us, i64 0, i32 6, !dbg !2318
  %7 = load double, ptr %a_charge.us, align 8, !dbg !2318, !tbaa !825
  %a_charge7.us = getelementptr inbounds %struct.atom_t, ptr %3, i64 %indvars.iv.i.us, i32 6, !dbg !2320
  store double %7, ptr %a_charge7.us, align 8, !dbg !2321, !tbaa !825
  %a_radius.us = getelementptr inbounds %struct.atom_t, ptr %ap.047.us, i64 0, i32 7, !dbg !2322
  %8 = load double, ptr %a_radius.us, align 8, !dbg !2322, !tbaa !1132
  %a_radius8.us = getelementptr inbounds %struct.atom_t, ptr %3, i64 %indvars.iv.i.us, i32 7, !dbg !2323
  store double %8, ptr %a_radius8.us, align 8, !dbg !2324, !tbaa !1132
  %a_bfact.us = getelementptr inbounds %struct.atom_t, ptr %ap.047.us, i64 0, i32 8, !dbg !2325
  %9 = load double, ptr %a_bfact.us, align 8, !dbg !2325, !tbaa !1791
  %a_bfact9.us = getelementptr inbounds %struct.atom_t, ptr %3, i64 %indvars.iv.i.us, i32 8, !dbg !2326
  store double %9, ptr %a_bfact9.us, align 8, !dbg !2327, !tbaa !1791
  %a_occ.us = getelementptr inbounds %struct.atom_t, ptr %ap.047.us, i64 0, i32 9, !dbg !2328
  %10 = load double, ptr %a_occ.us, align 8, !dbg !2328, !tbaa !1795
  %a_occ10.us = getelementptr inbounds %struct.atom_t, ptr %3, i64 %indvars.iv.i.us, i32 9, !dbg !2329
  store double %10, ptr %a_occ10.us, align 8, !dbg !2330, !tbaa !1795
  %a_int1.us = getelementptr inbounds %struct.atom_t, ptr %ap.047.us, i64 0, i32 11, !dbg !2331
  %11 = load i32, ptr %a_int1.us, align 8, !dbg !2331, !tbaa !1802
  %a_int111.us = getelementptr inbounds %struct.atom_t, ptr %3, i64 %indvars.iv.i.us, i32 11, !dbg !2332
  store i32 %11, ptr %a_int111.us, align 8, !dbg !2333, !tbaa !1802
  %a_float1.us = getelementptr inbounds %struct.atom_t, ptr %ap.047.us, i64 0, i32 12, !dbg !2334
  %12 = load double, ptr %a_float1.us, align 8, !dbg !2334, !tbaa !1806
  %a_float112.us = getelementptr inbounds %struct.atom_t, ptr %3, i64 %indvars.iv.i.us, i32 12, !dbg !2335
  store double %12, ptr %a_float112.us, align 8, !dbg !2336, !tbaa !1806
  %a_float2.us = getelementptr inbounds %struct.atom_t, ptr %ap.047.us, i64 0, i32 13, !dbg !2337
  %13 = load double, ptr %a_float2.us, align 8, !dbg !2337, !tbaa !1810
  %a_float213.us = getelementptr inbounds %struct.atom_t, ptr %3, i64 %indvars.iv.i.us, i32 13, !dbg !2338
  store double %13, ptr %a_float213.us, align 8, !dbg !2339, !tbaa !1810
  %.pre = load i32, ptr @n_atoms, align 4, !dbg !2298, !tbaa !794
  br label %for.inc.us, !dbg !2340

for.inc.us:                                       ; preds = %for.cond.i.us, %if.then6.us
  %14 = phi i32 [ %.pre, %if.then6.us ], [ %4, %for.cond.i.us ], !dbg !2298
  %inc.us = add nuw nsw i32 %a.046.us, 1, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !2280, metadata !DIExpression()), !dbg !2283
  %incdec.ptr.us = getelementptr inbounds %struct.atom_t, ptr %ap.047.us, i64 1, !dbg !2342
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !2281, metadata !DIExpression()), !dbg !2283
  %cmp2.us = icmp slt i32 %inc.us, %14, !dbg !2302
  br i1 %cmp2.us, label %for.body3.us, label %cleanup, !dbg !2303, !llvm.loop !2343

for.end16:                                        ; preds = %for.cond
  %rl_name = getelementptr inbounds %struct.reslib_t, ptr %rlp, i64 0, i32 1, !dbg !2345
  %15 = load ptr, ptr %rl_name, align 8, !dbg !2345, !tbaa !308
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @e_msg, ptr noundef nonnull @.str.78, ptr noundef nonnull @lr_name, ptr noundef %15) #14, !dbg !2346
  %call18 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @e_msg) #14, !dbg !2347
  br label %cleanup, !dbg !2348

cleanup:                                          ; preds = %for.inc.us, %for.body3.lr.ph, %for.cond1.preheader, %for.end16
  ret void, !dbg !2349
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addchi2reslib(ptr nocapture noundef readonly %rlp) unnamed_addr #0 !dbg !2350 {
entry:
  %pos = alloca [4 x [3 x double]], align 16
  %dvol = alloca [4 x [3 x double]], align 16
  %vol = alloca double, align 8
  call void @llvm.dbg.value(metadata ptr %rlp, metadata !2352, metadata !DIExpression()), !dbg !2362
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %pos) #14, !dbg !2363
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !2358, metadata !DIExpression()), !dbg !2364
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %dvol) #14, !dbg !2365
  call void @llvm.dbg.declare(metadata ptr %dvol, metadata !2360, metadata !DIExpression()), !dbg !2366
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vol) #14, !dbg !2367
  %rl_rlist = getelementptr inbounds %struct.reslib_t, ptr %rlp, i64 0, i32 4, !dbg !2368
  call void @llvm.dbg.value(metadata ptr undef, metadata !2353, metadata !DIExpression()), !dbg !2362
  br label %for.cond, !dbg !2370

for.cond:                                         ; preds = %for.body, %entry
  %res.0.in = phi ptr [ %rl_rlist, %entry ], [ %res.0, %for.body ]
  %res.0 = load ptr, ptr %res.0.in, align 8, !dbg !2371, !tbaa !299
  call void @llvm.dbg.value(metadata ptr %res.0, metadata !2353, metadata !DIExpression()), !dbg !2362
  %tobool.not = icmp eq ptr %res.0, null, !dbg !2372
  br i1 %tobool.not, label %for.end48, label %for.body, !dbg !2372

for.body:                                         ; preds = %for.cond
  %r_resname = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 4, !dbg !2373
  %0 = load ptr, ptr %r_resname, align 8, !dbg !2373, !tbaa !1216
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull @lr_name) #15, !dbg !2377
  %tobool1.not = icmp eq i32 %call, 0, !dbg !2377
  br i1 %tobool1.not, label %if.then, label %for.cond, !dbg !2378, !llvm.loop !2379

if.then:                                          ; preds = %for.body
  %1 = load i32, ptr @n_chi, align 4, !dbg !2381, !tbaa !794
  %conv = sext i32 %1 to i64, !dbg !2381
  %mul = mul nsw i64 %conv, 24, !dbg !2384
  %call2 = tail call noalias ptr @malloc(i64 noundef %mul) #18, !dbg !2385
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2354, metadata !DIExpression()), !dbg !2362
  %cmp = icmp eq ptr %call2, null, !dbg !2386
  br i1 %cmp, label %if.then4, label %if.end, !dbg !2387

if.then4:                                         ; preds = %if.then
  %2 = load ptr, ptr @stderr, align 8, !dbg !2388, !tbaa !299
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.96, ptr noundef %0) #16, !dbg !2390
  br label %cleanup, !dbg !2391

if.end:                                           ; preds = %if.then
  %r_nchiral = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 13, !dbg !2392
  store i32 %1, ptr %r_nchiral, align 8, !dbg !2393, !tbaa !1582
  %r_chiral = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 14, !dbg !2394
  store ptr %call2, ptr %r_chiral, align 8, !dbg !2395, !tbaa !1675
  call void @llvm.dbg.value(metadata i32 0, metadata !2356, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2354, metadata !DIExpression()), !dbg !2362
  %cmp883 = icmp sgt i32 %1, 0, !dbg !2396
  br i1 %cmp883, label %for.cond11.preheader.lr.ph, label %cleanup, !dbg !2399

for.cond11.preheader.lr.ph:                       ; preds = %if.end
  %r_atoms = getelementptr inbounds %struct.residue_t, ptr %res.0, i64 0, i32 17
  br label %for.cond11.preheader, !dbg !2399

for.cond11.preheader:                             ; preds = %for.cond11.preheader.lr.ph, %for.end
  %indvars.iv88 = phi i64 [ 0, %for.cond11.preheader.lr.ph ], [ %indvars.iv.next89, %for.end ]
  %cp.084 = phi ptr [ %call2, %for.cond11.preheader.lr.ph ], [ %incdec.ptr, %for.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv88, metadata !2356, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata ptr %cp.084, metadata !2354, metadata !DIExpression()), !dbg !2362
  %arrayidx = getelementptr inbounds [500 x %struct.chiral_t], ptr @chi, i64 0, i64 %indvars.iv88
  %3 = load ptr, ptr %r_atoms, align 8, !tbaa !1250
  call void @llvm.dbg.value(metadata i32 0, metadata !2355, metadata !DIExpression()), !dbg !2362
  br label %for.body14, !dbg !2400

for.body14:                                       ; preds = %for.cond11.preheader, %for.body14
  %indvars.iv = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next, %for.body14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2355, metadata !DIExpression()), !dbg !2362
  %arrayidx16 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 %indvars.iv, !dbg !2403
  %4 = load i32, ptr %arrayidx16, align 4, !dbg !2403, !tbaa !794
  %arrayidx19 = getelementptr inbounds [4 x i32], ptr %cp.084, i64 0, i64 %indvars.iv, !dbg !2406
  store i32 %4, ptr %arrayidx19, align 4, !dbg !2407, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %4, metadata !2357, metadata !DIExpression()), !dbg !2362
  %idxprom20 = sext i32 %4 to i64, !dbg !2408
  %a_pos = getelementptr inbounds %struct.atom_t, ptr %3, i64 %idxprom20, i32 17, !dbg !2409
  %5 = load double, ptr %a_pos, align 8, !dbg !2408, !tbaa !822
  %arrayidx24 = getelementptr inbounds [4 x [3 x double]], ptr %pos, i64 0, i64 %indvars.iv, !dbg !2410
  store double %5, ptr %arrayidx24, align 8, !dbg !2411, !tbaa !822
  %arrayidx30 = getelementptr inbounds %struct.atom_t, ptr %3, i64 %idxprom20, i32 17, i64 1, !dbg !2412
  %6 = load double, ptr %arrayidx30, align 8, !dbg !2412, !tbaa !822
  %arrayidx33 = getelementptr inbounds [4 x [3 x double]], ptr %pos, i64 0, i64 %indvars.iv, i64 1, !dbg !2413
  store double %6, ptr %arrayidx33, align 8, !dbg !2414, !tbaa !822
  %arrayidx38 = getelementptr inbounds %struct.atom_t, ptr %3, i64 %idxprom20, i32 17, i64 2, !dbg !2415
  %7 = load double, ptr %arrayidx38, align 8, !dbg !2415, !tbaa !822
  %arrayidx41 = getelementptr inbounds [4 x [3 x double]], ptr %pos, i64 0, i64 %indvars.iv, i64 2, !dbg !2416
  store double %7, ptr %arrayidx41, align 8, !dbg !2417, !tbaa !822
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2355, metadata !DIExpression()), !dbg !2362
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2419
  br i1 %exitcond.not, label %for.end, label %for.body14, !dbg !2400, !llvm.loop !2420

for.end:                                          ; preds = %for.body14
  call void @llvm.dbg.value(metadata ptr %vol, metadata !2361, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call void @chirvol(i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef nonnull %pos, ptr noundef nonnull %dvol, ptr noundef nonnull %vol) #14, !dbg !2422
  %8 = load double, ptr %vol, align 8, !dbg !2423, !tbaa !822
  call void @llvm.dbg.value(metadata double %8, metadata !2361, metadata !DIExpression()), !dbg !2362
  %c_dist = getelementptr inbounds %struct.chiral_t, ptr %cp.084, i64 0, i32 1, !dbg !2424
  store double %8, ptr %c_dist, align 8, !dbg !2425, !tbaa !1330
  %incdec.ptr = getelementptr inbounds %struct.chiral_t, ptr %cp.084, i64 1, !dbg !2426
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2354, metadata !DIExpression()), !dbg !2362
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next89, metadata !2356, metadata !DIExpression()), !dbg !2362
  %9 = load i32, ptr @n_chi, align 4, !dbg !2428, !tbaa !794
  %10 = sext i32 %9 to i64, !dbg !2396
  %cmp8 = icmp slt i64 %indvars.iv.next89, %10, !dbg !2396
  br i1 %cmp8, label %for.cond11.preheader, label %cleanup, !dbg !2399, !llvm.loop !2429

for.end48:                                        ; preds = %for.cond
  %11 = load ptr, ptr @stderr, align 8, !dbg !2431, !tbaa !299
  %12 = load ptr, ptr inttoptr (i64 24 to ptr), align 8, !dbg !2432, !tbaa !1216
  %rl_name = getelementptr inbounds %struct.reslib_t, ptr %rlp, i64 0, i32 1, !dbg !2433
  %13 = load ptr, ptr %rl_name, align 8, !dbg !2433, !tbaa !308
  %call50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.97, ptr noundef %12, ptr noundef %13) #16, !dbg !2434
  br label %cleanup, !dbg !2435

cleanup:                                          ; preds = %for.end, %if.end, %for.end48, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vol) #14, !dbg !2435
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %dvol) #14, !dbg !2435
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pos) #14, !dbg !2435
  ret void, !dbg !2435
}

declare !dbg !2436 void @chirvol(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @strchr(ptr, i32) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare ptr @llvm.load.relative.i64(ptr, i64) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276}
!llvm.ident = !{!277}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "e_msg", scope: !2, file: !225, line: 46, type: !267, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !234, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/reslib.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r", checksumkind: CSK_MD5, checksum: "6864938ec9772f963babcd4caaf1fcf9")
!4 = !{!5, !6, !192, !219, !174, !181, !220, !46, !161, !221, !223, !97}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !8, line: 82, baseType: !9)
!8 = !DIFile(filename: "apps/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e6947e1b068a9350a45ab4ee56d7a2de")
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
!225 = !DIFile(filename: "apps/544.nab_r/src/reslib.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6864938ec9772f963babcd4caaf1fcf9")
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
!274 = !{i32 7, !"PIC Level", i32 2}
!275 = !{i32 7, !"PIE Level", i32 2}
!276 = !{i32 7, !"uwtable", i32 2}
!277 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!278 = distinct !DISubprogram(name: "getreslibkind", scope: !225, file: !225, line: 78, type: !279, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{!220, !220}
!281 = !{!282, !283, !284}
!282 = !DILocalVariable(name: "reslib", arg: 1, scope: !278, file: !225, line: 78, type: !220)
!283 = !DILocalVariable(name: "nhp", scope: !278, file: !225, line: 80, type: !220)
!284 = !DILocalVariable(name: "rlp", scope: !278, file: !225, line: 81, type: !223)
!285 = !DILocation(line: 0, scope: !278)
!286 = !DILocation(line: 80, column: 8, scope: !278)
!287 = !DILocalVariable(name: "reslib", arg: 1, scope: !288, file: !225, line: 422, type: !220)
!288 = distinct !DISubprogram(name: "known_reslib", scope: !225, file: !225, line: 422, type: !289, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{!223, !220}
!291 = !{!287, !292}
!292 = !DILocalVariable(name: "rlp", scope: !288, file: !225, line: 424, type: !223)
!293 = !DILocation(line: 0, scope: !288, inlinedAt: !294)
!294 = distinct !DILocation(line: 83, column: 14, scope: !295)
!295 = distinct !DILexicalBlock(scope: !278, file: !225, line: 83, column: 6)
!296 = !DILocation(line: 426, column: 7, scope: !297, inlinedAt: !294)
!297 = distinct !DILexicalBlock(scope: !288, file: !225, line: 426, column: 2)
!298 = !DILocation(line: 0, scope: !297, inlinedAt: !294)
!299 = !{!300, !300, i64 0}
!300 = !{!"any pointer", !301, i64 0}
!301 = !{!"omnipotent char", !302, i64 0}
!302 = !{!"Simple C/C++ TBAA"}
!303 = !DILocation(line: 426, column: 2, scope: !297, inlinedAt: !294)
!304 = !DILocation(line: 427, column: 20, scope: !305, inlinedAt: !294)
!305 = distinct !DILexicalBlock(scope: !306, file: !225, line: 427, column: 7)
!306 = distinct !DILexicalBlock(scope: !307, file: !225, line: 426, column: 47)
!307 = distinct !DILexicalBlock(scope: !297, file: !225, line: 426, column: 2)
!308 = !{!309, !300, i64 8}
!309 = !{!"reslib_t", !300, i64 0, !300, i64 8, !310, i64 16, !310, i64 20, !300, i64 24}
!310 = !{!"int", !301, i64 0}
!311 = !DILocation(line: 427, column: 7, scope: !305, inlinedAt: !294)
!312 = !DILocation(line: 427, column: 38, scope: !305, inlinedAt: !294)
!313 = !DILocation(line: 427, column: 7, scope: !306, inlinedAt: !294)
!314 = distinct !{!314, !303, !315, !316, !317}
!315 = !DILocation(line: 430, column: 2, scope: !297, inlinedAt: !294)
!316 = !{!"llvm.loop.mustprogress"}
!317 = !{!"llvm.loop.unroll.disable"}
!318 = !DILocation(line: 84, column: 15, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !225, line: 84, column: 7)
!320 = distinct !DILexicalBlock(scope: !295, file: !225, line: 83, column: 48)
!321 = !DILocation(line: 84, column: 39, scope: !319)
!322 = !DILocation(line: 84, column: 7, scope: !320)
!323 = !DILocation(line: 85, column: 13, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !225, line: 84, column: 48)
!325 = !DILocation(line: 85, column: 4, scope: !324)
!326 = !DILocation(line: 87, column: 4, scope: !324)
!327 = !DILocation(line: 0, scope: !295)
!328 = !DILocation(line: 90, column: 11, scope: !329)
!329 = distinct !DILexicalBlock(scope: !278, file: !225, line: 90, column: 6)
!330 = !{!309, !310, i64 16}
!331 = !DILocation(line: 90, column: 6, scope: !278)
!332 = !DILocation(line: 0, scope: !329)
!333 = !DILocation(line: 101, column: 1, scope: !278)
!334 = distinct !DISubprogram(name: "read_reslib", scope: !225, file: !225, line: 434, type: !289, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!335 = !{!336, !337, !397, !398, !399, !400, !401}
!336 = !DILocalVariable(name: "reslib", arg: 1, scope: !334, file: !225, line: 434, type: !220)
!337 = !DILocalVariable(name: "pfp", scope: !334, file: !225, line: 436, type: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !340, line: 7, baseType: !341)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !342, line: 49, size: 1728, elements: !343)
!342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !359, !361, !362, !363, !367, !369, !371, !375, !378, !380, !383, !386, !387, !388, !392, !393}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !341, file: !342, line: 51, baseType: !15, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !341, file: !342, line: 54, baseType: !220, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !341, file: !342, line: 55, baseType: !220, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !341, file: !342, line: 56, baseType: !220, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !341, file: !342, line: 57, baseType: !220, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !341, file: !342, line: 58, baseType: !220, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !341, file: !342, line: 59, baseType: !220, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !341, file: !342, line: 60, baseType: !220, size: 64, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !341, file: !342, line: 61, baseType: !220, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !341, file: !342, line: 64, baseType: !220, size: 64, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !341, file: !342, line: 65, baseType: !220, size: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !341, file: !342, line: 66, baseType: !220, size: 64, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !341, file: !342, line: 68, baseType: !357, size: 64, offset: 768)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !342, line: 36, flags: DIFlagFwdDecl)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !341, file: !342, line: 70, baseType: !360, size: 64, offset: 832)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !341, file: !342, line: 72, baseType: !15, size: 32, offset: 896)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !341, file: !342, line: 73, baseType: !15, size: 32, offset: 928)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !341, file: !342, line: 74, baseType: !364, size: 64, offset: 960)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !365, line: 152, baseType: !366)
!365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!366 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !341, file: !342, line: 77, baseType: !368, size: 16, offset: 1024)
!368 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !341, file: !342, line: 78, baseType: !370, size: 8, offset: 1040)
!370 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !341, file: !342, line: 79, baseType: !372, size: 8, offset: 1048)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 1)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !341, file: !342, line: 81, baseType: !376, size: 64, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !342, line: 43, baseType: null)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !341, file: !342, line: 89, baseType: !379, size: 64, offset: 1152)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !365, line: 153, baseType: !366)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !341, file: !342, line: 91, baseType: !381, size: 64, offset: 1216)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !342, line: 37, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !341, file: !342, line: 92, baseType: !384, size: 64, offset: 1280)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !342, line: 38, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !341, file: !342, line: 93, baseType: !360, size: 64, offset: 1344)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !341, file: !342, line: 94, baseType: !5, size: 64, offset: 1408)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !341, file: !342, line: 95, baseType: !389, size: 64, offset: 1472)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !390, line: 46, baseType: !391)
!390 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!391 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !341, file: !342, line: 96, baseType: !15, size: 32, offset: 1536)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !341, file: !342, line: 98, baseType: !394, size: 160, offset: 1568)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 20)
!397 = !DILocalVariable(name: "bfp", scope: !334, file: !225, line: 437, type: !338)
!398 = !DILocalVariable(name: "qfp", scope: !334, file: !225, line: 438, type: !338)
!399 = !DILocalVariable(name: "cfp", scope: !334, file: !225, line: 439, type: !338)
!400 = !DILocalVariable(name: "rlp", scope: !334, file: !225, line: 440, type: !223)
!401 = !DILocalVariable(name: "offname", scope: !334, file: !225, line: 441, type: !267)
!402 = !DILocation(line: 0, scope: !334)
!403 = !DILocation(line: 441, column: 2, scope: !334)
!404 = !DILocation(line: 441, column: 7, scope: !334)
!405 = !DILocalVariable(name: "reslib", arg: 1, scope: !406, file: !225, line: 492, type: !220)
!406 = distinct !DISubprogram(name: "read_reslib_header", scope: !225, file: !225, line: 492, type: !407, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !410)
!407 = !DISubroutineType(types: !408)
!408 = !{!223, !220, !409, !409, !409, !409, !220}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!410 = !{!405, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !425, !426, !430, !431, !432}
!411 = !DILocalVariable(name: "pfp", arg: 2, scope: !406, file: !225, line: 493, type: !409)
!412 = !DILocalVariable(name: "bfp", arg: 3, scope: !406, file: !225, line: 493, type: !409)
!413 = !DILocalVariable(name: "qfp", arg: 4, scope: !406, file: !225, line: 493, type: !409)
!414 = !DILocalVariable(name: "cfp", arg: 5, scope: !406, file: !225, line: 493, type: !409)
!415 = !DILocalVariable(name: "offname", arg: 6, scope: !406, file: !225, line: 493, type: !220)
!416 = !DILocalVariable(name: "rfp", scope: !406, file: !225, line: 495, type: !338)
!417 = !DILocalVariable(name: "rlp", scope: !406, file: !225, line: 496, type: !223)
!418 = !DILocalVariable(name: "nw", scope: !406, file: !225, line: 497, type: !15)
!419 = !DILocalVariable(name: "nsize", scope: !406, file: !225, line: 497, type: !15)
!420 = !DILocalVariable(name: "np", scope: !406, file: !225, line: 498, type: !220)
!421 = !DILocalVariable(name: "line", scope: !406, file: !225, line: 499, type: !422)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 128)
!425 = !DILocalVariable(name: "keyword", scope: !406, file: !225, line: 499, type: !394)
!426 = !DILocalVariable(name: "value", scope: !406, file: !225, line: 499, type: !427)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 800, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 100)
!430 = !DILocalVariable(name: "newname", scope: !406, file: !225, line: 499, type: !427)
!431 = !DILocalVariable(name: "fname", scope: !406, file: !225, line: 500, type: !267)
!432 = !DILabel(scope: !406, name: "clean_up", file: !225, line: 621)
!433 = !DILocation(line: 0, scope: !406, inlinedAt: !434)
!434 = distinct !DILocation(line: 443, column: 14, scope: !435)
!435 = distinct !DILexicalBlock(scope: !334, file: !225, line: 443, column: 6)
!436 = !DILocation(line: 499, column: 2, scope: !406, inlinedAt: !434)
!437 = !DILocation(line: 499, column: 7, scope: !406, inlinedAt: !434)
!438 = !DILocation(line: 499, column: 20, scope: !406, inlinedAt: !434)
!439 = !DILocation(line: 499, column: 35, scope: !406, inlinedAt: !434)
!440 = !DILocation(line: 499, column: 49, scope: !406, inlinedAt: !434)
!441 = !DILocation(line: 500, column: 2, scope: !406, inlinedAt: !434)
!442 = !DILocation(line: 500, column: 7, scope: !406, inlinedAt: !434)
!443 = !DILocation(line: 502, column: 6, scope: !444, inlinedAt: !434)
!444 = distinct !DILexicalBlock(scope: !406, file: !225, line: 502, column: 6)
!445 = !DILocation(line: 502, column: 31, scope: !444, inlinedAt: !434)
!446 = !DILocation(line: 502, column: 6, scope: !406, inlinedAt: !434)
!447 = !DILocation(line: 503, column: 3, scope: !448, inlinedAt: !434)
!448 = distinct !DILexicalBlock(scope: !444, file: !225, line: 502, column: 40)
!449 = !DILocalVariable(name: "sname", arg: 1, scope: !450, file: !225, line: 637, type: !220)
!450 = distinct !DISubprogram(name: "mk_fname", scope: !225, file: !225, line: 637, type: !451, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !220, !220}
!453 = !{!449, !454}
!454 = !DILocalVariable(name: "fname", arg: 2, scope: !450, file: !225, line: 637, type: !220)
!455 = !DILocation(line: 0, scope: !450, inlinedAt: !456)
!456 = distinct !DILocation(line: 504, column: 3, scope: !448, inlinedAt: !434)
!457 = !DILocation(line: 640, column: 6, scope: !458, inlinedAt: !456)
!458 = distinct !DILexicalBlock(scope: !450, file: !225, line: 640, column: 6)
!459 = !{!301, !301, i64 0}
!460 = !DILocation(line: 640, column: 13, scope: !458, inlinedAt: !456)
!461 = !DILocation(line: 640, column: 20, scope: !458, inlinedAt: !456)
!462 = !DILocation(line: 642, column: 3, scope: !458, inlinedAt: !456)
!463 = !DILocation(line: 644, column: 3, scope: !458, inlinedAt: !456)
!464 = !DILocation(line: 505, column: 15, scope: !465, inlinedAt: !434)
!465 = distinct !DILexicalBlock(scope: !448, file: !225, line: 505, column: 7)
!466 = !DILocation(line: 505, column: 37, scope: !465, inlinedAt: !434)
!467 = !DILocation(line: 505, column: 7, scope: !448, inlinedAt: !434)
!468 = !DILocation(line: 506, column: 4, scope: !469, inlinedAt: !434)
!469 = distinct !DILexicalBlock(scope: !465, file: !225, line: 505, column: 46)
!470 = !DILocation(line: 507, column: 4, scope: !469, inlinedAt: !434)
!471 = !DILocation(line: 0, scope: !450, inlinedAt: !472)
!472 = distinct !DILocation(line: 510, column: 3, scope: !473, inlinedAt: !434)
!473 = distinct !DILexicalBlock(scope: !444, file: !225, line: 509, column: 7)
!474 = !DILocation(line: 640, column: 6, scope: !458, inlinedAt: !472)
!475 = !DILocation(line: 640, column: 13, scope: !458, inlinedAt: !472)
!476 = !DILocation(line: 640, column: 20, scope: !458, inlinedAt: !472)
!477 = !DILocation(line: 641, column: 4, scope: !458, inlinedAt: !472)
!478 = !DILocation(line: 640, column: 6, scope: !450, inlinedAt: !472)
!479 = !DILocation(line: 642, column: 3, scope: !458, inlinedAt: !472)
!480 = !DILocation(line: 644, column: 3, scope: !458, inlinedAt: !472)
!481 = !DILocation(line: 511, column: 15, scope: !482, inlinedAt: !434)
!482 = distinct !DILexicalBlock(scope: !473, file: !225, line: 511, column: 7)
!483 = !DILocation(line: 511, column: 37, scope: !482, inlinedAt: !434)
!484 = !DILocation(line: 511, column: 7, scope: !473, inlinedAt: !434)
!485 = !DILocation(line: 512, column: 4, scope: !486, inlinedAt: !434)
!486 = distinct !DILexicalBlock(scope: !482, file: !225, line: 511, column: 46)
!487 = !DILocation(line: 513, column: 4, scope: !486, inlinedAt: !434)
!488 = !DILocation(line: 0, scope: !444, inlinedAt: !434)
!489 = !DILocation(line: 517, column: 28, scope: !490, inlinedAt: !434)
!490 = distinct !DILexicalBlock(scope: !406, file: !225, line: 517, column: 6)
!491 = !DILocation(line: 517, column: 59, scope: !490, inlinedAt: !434)
!492 = !DILocation(line: 517, column: 6, scope: !406, inlinedAt: !434)
!493 = !DILocation(line: 518, column: 3, scope: !494, inlinedAt: !434)
!494 = distinct !DILexicalBlock(scope: !490, file: !225, line: 517, column: 68)
!495 = !DILocation(line: 519, column: 3, scope: !494, inlinedAt: !434)
!496 = !DILocation(line: 520, column: 3, scope: !494, inlinedAt: !434)
!497 = !DILocation(line: 523, column: 10, scope: !406, inlinedAt: !434)
!498 = !DILocation(line: 524, column: 31, scope: !499, inlinedAt: !434)
!499 = distinct !DILexicalBlock(scope: !406, file: !225, line: 524, column: 6)
!500 = !DILocation(line: 524, column: 23, scope: !499, inlinedAt: !434)
!501 = !DILocation(line: 524, column: 58, scope: !499, inlinedAt: !434)
!502 = !DILocation(line: 524, column: 6, scope: !406, inlinedAt: !434)
!503 = !DILocation(line: 525, column: 3, scope: !504, inlinedAt: !434)
!504 = distinct !DILexicalBlock(scope: !499, file: !225, line: 524, column: 67)
!505 = !DILocation(line: 526, column: 3, scope: !504, inlinedAt: !434)
!506 = !DILocation(line: 527, column: 3, scope: !504, inlinedAt: !434)
!507 = !DILocation(line: 529, column: 2, scope: !406, inlinedAt: !434)
!508 = !DILocation(line: 530, column: 17, scope: !406, inlinedAt: !434)
!509 = !DILocation(line: 530, column: 15, scope: !406, inlinedAt: !434)
!510 = !{!309, !300, i64 0}
!511 = !DILocation(line: 531, column: 10, scope: !406, inlinedAt: !434)
!512 = !DILocation(line: 532, column: 7, scope: !406, inlinedAt: !434)
!513 = !DILocation(line: 532, column: 15, scope: !406, inlinedAt: !434)
!514 = !DILocation(line: 533, column: 7, scope: !406, inlinedAt: !434)
!515 = !DILocation(line: 534, column: 7, scope: !406, inlinedAt: !434)
!516 = !DILocation(line: 534, column: 21, scope: !406, inlinedAt: !434)
!517 = !DILocation(line: 541, column: 11, scope: !406, inlinedAt: !434)
!518 = !DILocation(line: 543, column: 7, scope: !519, inlinedAt: !434)
!519 = distinct !DILexicalBlock(scope: !406, file: !225, line: 543, column: 7)
!520 = !DILocation(line: 543, column: 32, scope: !519, inlinedAt: !434)
!521 = !DILocation(line: 543, column: 7, scope: !406, inlinedAt: !434)
!522 = !DILocation(line: 544, column: 10, scope: !523, inlinedAt: !434)
!523 = distinct !DILexicalBlock(scope: !519, file: !225, line: 543, column: 41)
!524 = !DILocation(line: 544, column: 3, scope: !523, inlinedAt: !434)
!525 = !DILocation(line: 621, column: 1, scope: !406, inlinedAt: !434)
!526 = !DILocation(line: 622, column: 2, scope: !406, inlinedAt: !434)
!527 = !DILocation(line: 635, column: 1, scope: !406, inlinedAt: !434)
!528 = !DILocation(line: 443, column: 6, scope: !334)
!529 = !DILocation(line: 537, column: 7, scope: !406, inlinedAt: !434)
!530 = !DILocation(line: 538, column: 7, scope: !406, inlinedAt: !434)
!531 = !DILocation(line: 539, column: 7, scope: !406, inlinedAt: !434)
!532 = !DILocation(line: 540, column: 7, scope: !406, inlinedAt: !434)
!533 = !DILocation(line: 545, column: 8, scope: !534, inlinedAt: !434)
!534 = distinct !DILexicalBlock(scope: !535, file: !225, line: 545, column: 8)
!535 = distinct !DILexicalBlock(scope: !523, file: !225, line: 544, column: 46)
!536 = !DILocation(line: 545, column: 14, scope: !534, inlinedAt: !434)
!537 = !DILocation(line: 545, column: 8, scope: !535, inlinedAt: !434)
!538 = !DILocation(line: 547, column: 15, scope: !539, inlinedAt: !434)
!539 = distinct !DILexicalBlock(scope: !535, file: !225, line: 547, column: 8)
!540 = !DILocation(line: 547, column: 8, scope: !535, inlinedAt: !434)
!541 = !DILocation(line: 554, column: 14, scope: !542, inlinedAt: !434)
!542 = distinct !DILexicalBlock(scope: !543, file: !225, line: 554, column: 14)
!543 = distinct !DILexicalBlock(scope: !539, file: !225, line: 551, column: 14)
!544 = !DILocation(line: 554, column: 40, scope: !542, inlinedAt: !434)
!545 = !DILocation(line: 554, column: 14, scope: !543, inlinedAt: !434)
!546 = !DILocation(line: 555, column: 9, scope: !547, inlinedAt: !434)
!547 = distinct !DILexicalBlock(scope: !548, file: !225, line: 555, column: 9)
!548 = distinct !DILexicalBlock(scope: !542, file: !225, line: 554, column: 46)
!549 = !DILocation(line: 555, column: 9, scope: !548, inlinedAt: !434)
!550 = !DILocation(line: 556, column: 21, scope: !547, inlinedAt: !434)
!551 = !DILocation(line: 556, column: 6, scope: !547, inlinedAt: !434)
!552 = !DILocation(line: 558, column: 21, scope: !553, inlinedAt: !434)
!553 = distinct !DILexicalBlock(scope: !547, file: !225, line: 557, column: 14)
!554 = !DILocation(line: 558, column: 6, scope: !553, inlinedAt: !434)
!555 = !DILocation(line: 559, column: 14, scope: !556, inlinedAt: !434)
!556 = distinct !DILexicalBlock(scope: !553, file: !225, line: 559, column: 14)
!557 = !DILocation(line: 559, column: 36, scope: !556, inlinedAt: !434)
!558 = !DILocation(line: 559, column: 14, scope: !553, inlinedAt: !434)
!559 = !DILocation(line: 560, column: 21, scope: !556, inlinedAt: !434)
!560 = !DILocation(line: 565, column: 14, scope: !561, inlinedAt: !434)
!561 = distinct !DILexicalBlock(scope: !542, file: !225, line: 565, column: 14)
!562 = !DILocation(line: 565, column: 44, scope: !561, inlinedAt: !434)
!563 = !DILocation(line: 565, column: 14, scope: !542, inlinedAt: !434)
!564 = !DILocation(line: 566, column: 9, scope: !565, inlinedAt: !434)
!565 = distinct !DILexicalBlock(scope: !566, file: !225, line: 566, column: 9)
!566 = distinct !DILexicalBlock(scope: !561, file: !225, line: 565, column: 50)
!567 = !DILocation(line: 566, column: 35, scope: !565, inlinedAt: !434)
!568 = !DILocation(line: 566, column: 9, scope: !566, inlinedAt: !434)
!569 = !DILocation(line: 567, column: 25, scope: !565, inlinedAt: !434)
!570 = !{!309, !310, i64 20}
!571 = !DILocation(line: 567, column: 6, scope: !565, inlinedAt: !434)
!572 = !DILocation(line: 568, column: 14, scope: !573, inlinedAt: !434)
!573 = distinct !DILexicalBlock(scope: !565, file: !225, line: 568, column: 14)
!574 = !DILocation(line: 568, column: 14, scope: !565, inlinedAt: !434)
!575 = !DILocation(line: 569, column: 25, scope: !573, inlinedAt: !434)
!576 = !DILocation(line: 574, column: 14, scope: !577, inlinedAt: !434)
!577 = distinct !DILexicalBlock(scope: !561, file: !225, line: 574, column: 14)
!578 = !DILocation(line: 574, column: 14, scope: !561, inlinedAt: !434)
!579 = !DILocation(line: 0, scope: !450, inlinedAt: !580)
!580 = distinct !DILocation(line: 575, column: 5, scope: !581, inlinedAt: !434)
!581 = distinct !DILexicalBlock(scope: !577, file: !225, line: 574, column: 45)
!582 = !DILocation(line: 640, column: 6, scope: !458, inlinedAt: !580)
!583 = !DILocation(line: 640, column: 13, scope: !458, inlinedAt: !580)
!584 = !DILocation(line: 640, column: 20, scope: !458, inlinedAt: !580)
!585 = !DILocation(line: 642, column: 3, scope: !458, inlinedAt: !580)
!586 = !DILocation(line: 644, column: 3, scope: !458, inlinedAt: !580)
!587 = !DILocation(line: 0, scope: !450, inlinedAt: !588)
!588 = distinct !DILocation(line: 577, column: 5, scope: !589, inlinedAt: !434)
!589 = distinct !DILexicalBlock(scope: !590, file: !225, line: 576, column: 45)
!590 = distinct !DILexicalBlock(scope: !577, file: !225, line: 576, column: 14)
!591 = !DILocation(line: 640, column: 6, scope: !458, inlinedAt: !588)
!592 = !DILocation(line: 640, column: 13, scope: !458, inlinedAt: !588)
!593 = !DILocation(line: 640, column: 20, scope: !458, inlinedAt: !588)
!594 = !DILocation(line: 642, column: 3, scope: !458, inlinedAt: !588)
!595 = !DILocation(line: 644, column: 3, scope: !458, inlinedAt: !588)
!596 = !DILocation(line: 578, column: 18, scope: !597, inlinedAt: !434)
!597 = distinct !DILexicalBlock(scope: !589, file: !225, line: 578, column: 9)
!598 = !DILocation(line: 578, column: 40, scope: !597, inlinedAt: !434)
!599 = !DILocation(line: 578, column: 9, scope: !589, inlinedAt: !434)
!600 = !DILocation(line: 0, scope: !450, inlinedAt: !601)
!601 = distinct !DILocation(line: 586, column: 5, scope: !602, inlinedAt: !434)
!602 = distinct !DILexicalBlock(scope: !603, file: !225, line: 585, column: 45)
!603 = distinct !DILexicalBlock(scope: !590, file: !225, line: 585, column: 14)
!604 = !DILocation(line: 640, column: 6, scope: !458, inlinedAt: !601)
!605 = !DILocation(line: 640, column: 13, scope: !458, inlinedAt: !601)
!606 = !DILocation(line: 640, column: 20, scope: !458, inlinedAt: !601)
!607 = !DILocation(line: 642, column: 3, scope: !458, inlinedAt: !601)
!608 = !DILocation(line: 644, column: 3, scope: !458, inlinedAt: !601)
!609 = !DILocation(line: 587, column: 18, scope: !610, inlinedAt: !434)
!610 = distinct !DILexicalBlock(scope: !602, file: !225, line: 587, column: 9)
!611 = !DILocation(line: 587, column: 40, scope: !610, inlinedAt: !434)
!612 = !DILocation(line: 587, column: 9, scope: !602, inlinedAt: !434)
!613 = !DILocation(line: 594, column: 14, scope: !614, inlinedAt: !434)
!614 = distinct !DILexicalBlock(scope: !603, file: !225, line: 594, column: 14)
!615 = !DILocation(line: 594, column: 38, scope: !614, inlinedAt: !434)
!616 = !DILocation(line: 594, column: 14, scope: !603, inlinedAt: !434)
!617 = !DILocation(line: 0, scope: !450, inlinedAt: !618)
!618 = distinct !DILocation(line: 595, column: 5, scope: !619, inlinedAt: !434)
!619 = distinct !DILexicalBlock(scope: !614, file: !225, line: 594, column: 44)
!620 = !DILocation(line: 640, column: 6, scope: !458, inlinedAt: !618)
!621 = !DILocation(line: 640, column: 13, scope: !458, inlinedAt: !618)
!622 = !DILocation(line: 640, column: 20, scope: !458, inlinedAt: !618)
!623 = !DILocation(line: 642, column: 3, scope: !458, inlinedAt: !618)
!624 = !DILocation(line: 644, column: 3, scope: !458, inlinedAt: !618)
!625 = !DILocation(line: 596, column: 18, scope: !626, inlinedAt: !434)
!626 = distinct !DILexicalBlock(scope: !619, file: !225, line: 596, column: 9)
!627 = !DILocation(line: 596, column: 40, scope: !626, inlinedAt: !434)
!628 = !DILocation(line: 596, column: 9, scope: !619, inlinedAt: !434)
!629 = !DILocation(line: 603, column: 14, scope: !630, inlinedAt: !434)
!630 = distinct !DILexicalBlock(scope: !614, file: !225, line: 603, column: 14)
!631 = !DILocation(line: 603, column: 14, scope: !614, inlinedAt: !434)
!632 = !DILocation(line: 0, scope: !450, inlinedAt: !633)
!633 = distinct !DILocation(line: 604, column: 5, scope: !634, inlinedAt: !434)
!634 = distinct !DILexicalBlock(scope: !630, file: !225, line: 603, column: 45)
!635 = !DILocation(line: 640, column: 6, scope: !458, inlinedAt: !633)
!636 = !DILocation(line: 640, column: 13, scope: !458, inlinedAt: !633)
!637 = !DILocation(line: 640, column: 20, scope: !458, inlinedAt: !633)
!638 = !DILocation(line: 642, column: 3, scope: !458, inlinedAt: !633)
!639 = !DILocation(line: 644, column: 3, scope: !458, inlinedAt: !633)
!640 = !DILocation(line: 605, column: 18, scope: !641, inlinedAt: !434)
!641 = distinct !DILexicalBlock(scope: !634, file: !225, line: 605, column: 9)
!642 = !DILocation(line: 605, column: 40, scope: !641, inlinedAt: !434)
!643 = !DILocation(line: 605, column: 9, scope: !634, inlinedAt: !434)
!644 = distinct !{!644, !524, !645, !316, !317}
!645 = !DILocation(line: 616, column: 3, scope: !523, inlinedAt: !434)
!646 = !DILocation(line: 0, scope: !450, inlinedAt: !647)
!647 = distinct !DILocation(line: 618, column: 3, scope: !648, inlinedAt: !434)
!648 = distinct !DILexicalBlock(scope: !519, file: !225, line: 617, column: 7)
!649 = !DILocation(line: 640, column: 6, scope: !458, inlinedAt: !647)
!650 = !DILocation(line: 640, column: 13, scope: !458, inlinedAt: !647)
!651 = !DILocation(line: 640, column: 20, scope: !458, inlinedAt: !647)
!652 = !DILocation(line: 642, column: 3, scope: !458, inlinedAt: !647)
!653 = !DILocation(line: 644, column: 3, scope: !458, inlinedAt: !647)
!654 = !DILocation(line: 0, scope: !590, inlinedAt: !434)
!655 = !DILocation(line: 624, column: 7, scope: !656, inlinedAt: !434)
!656 = distinct !DILexicalBlock(scope: !657, file: !225, line: 624, column: 7)
!657 = distinct !DILexicalBlock(scope: !658, file: !225, line: 623, column: 19)
!658 = distinct !DILexicalBlock(scope: !406, file: !225, line: 623, column: 6)
!659 = !DILocation(line: 624, column: 7, scope: !657, inlinedAt: !434)
!660 = !DILocation(line: 624, column: 14, scope: !656, inlinedAt: !434)
!661 = !DILocation(line: 625, column: 7, scope: !662, inlinedAt: !434)
!662 = distinct !DILexicalBlock(scope: !657, file: !225, line: 625, column: 7)
!663 = !DILocation(line: 625, column: 7, scope: !657, inlinedAt: !434)
!664 = !DILocation(line: 625, column: 14, scope: !662, inlinedAt: !434)
!665 = !DILocation(line: 626, column: 7, scope: !666, inlinedAt: !434)
!666 = distinct !DILexicalBlock(scope: !657, file: !225, line: 626, column: 7)
!667 = !DILocation(line: 626, column: 7, scope: !657, inlinedAt: !434)
!668 = !DILocation(line: 626, column: 14, scope: !666, inlinedAt: !434)
!669 = !DILocation(line: 627, column: 7, scope: !670, inlinedAt: !434)
!670 = distinct !DILexicalBlock(scope: !657, file: !225, line: 627, column: 7)
!671 = !DILocation(line: 627, column: 7, scope: !657, inlinedAt: !434)
!672 = !DILocation(line: 627, column: 14, scope: !670, inlinedAt: !434)
!673 = !DILocation(line: 628, column: 11, scope: !657, inlinedAt: !434)
!674 = !DILocation(line: 629, column: 11, scope: !657, inlinedAt: !434)
!675 = !DILocation(line: 630, column: 3, scope: !657, inlinedAt: !434)
!676 = !DILocation(line: 631, column: 3, scope: !657, inlinedAt: !434)
!677 = !DILocation(line: 632, column: 2, scope: !657, inlinedAt: !434)
!678 = !DILocation(line: 478, column: 7, scope: !679, inlinedAt: !680)
!679 = distinct !DILexicalBlock(scope: !239, file: !225, line: 478, column: 6)
!680 = distinct !DILocation(line: 449, column: 2, scope: !334)
!681 = !DILocation(line: 478, column: 6, scope: !239, inlinedAt: !680)
!682 = !DILocation(line: 480, column: 7, scope: !239, inlinedAt: !680)
!683 = !DILocation(line: 0, scope: !239, inlinedAt: !680)
!684 = !DILocation(line: 481, column: 2, scope: !685, inlinedAt: !680)
!685 = distinct !DILexicalBlock(scope: !239, file: !225, line: 481, column: 2)
!686 = !DILocation(line: 482, column: 3, scope: !687, inlinedAt: !680)
!687 = distinct !DILexicalBlock(scope: !688, file: !225, line: 481, column: 51)
!688 = distinct !DILexicalBlock(scope: !685, file: !225, line: 481, column: 2)
!689 = !DILocation(line: 483, column: 30, scope: !687, inlinedAt: !680)
!690 = !DILocation(line: 483, column: 18, scope: !687, inlinedAt: !680)
!691 = !{!692, !300, i64 0}
!692 = !{!"atom_t", !300, i64 0, !300, i64 8, !310, i64 16, !310, i64 20, !301, i64 24, !300, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !300, i64 96, !310, i64 104, !693, i64 112, !693, i64 120, !310, i64 128, !310, i64 132, !300, i64 136, !301, i64 144, !693, i64 168}
!693 = !{!"double", !301, i64 0}
!694 = !DILocation(line: 484, column: 22, scope: !695, inlinedAt: !680)
!695 = distinct !DILexicalBlock(scope: !687, file: !225, line: 484, column: 7)
!696 = !DILocation(line: 484, column: 7, scope: !687, inlinedAt: !680)
!697 = !DILocation(line: 485, column: 13, scope: !698, inlinedAt: !680)
!698 = distinct !DILexicalBlock(scope: !695, file: !225, line: 484, column: 31)
!699 = !DILocation(line: 485, column: 4, scope: !698, inlinedAt: !680)
!700 = !DILocation(line: 487, column: 4, scope: !698, inlinedAt: !680)
!701 = !DILocation(line: 481, column: 41, scope: !688, inlinedAt: !680)
!702 = !DILocation(line: 481, column: 47, scope: !688, inlinedAt: !680)
!703 = !DILocation(line: 481, column: 28, scope: !688, inlinedAt: !680)
!704 = distinct !{!704, !684, !705, !316, !317}
!705 = !DILocation(line: 489, column: 2, scope: !685, inlinedAt: !680)
!706 = !DILocation(line: 450, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !334, file: !225, line: 450, column: 7)
!708 = !DILocation(line: 450, column: 7, scope: !334)
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
!722 = !DIFile(filename: "apps/544.nab_r/src/database.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d8cc1ae4cf951fbe7cfd9585ec1cbb55")
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASEt", file: !722, line: 82, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !722, line: 65, size: 33024, elements: !726)
!726 = !{!727, !728, !729, !731, !732, !733, !737, !739, !740, !741, !743, !744, !745}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "iAccessMode", scope: !725, file: !722, line: 66, baseType: !15, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fDataBase", scope: !725, file: !722, line: 67, baseType: !338, size: 64, offset: 64)
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
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 3200, elements: !428)
!749 = !DILocalVariable(name: "resx", scope: !710, file: !225, line: 653, type: !748)
!750 = !DILocalVariable(name: "flags", scope: !710, file: !225, line: 653, type: !748)
!751 = !DILocalVariable(name: "seq", scope: !710, file: !225, line: 654, type: !748)
!752 = !DILocalVariable(name: "elmnt", scope: !710, file: !225, line: 654, type: !748)
!753 = !DILocalVariable(name: "atom1x", scope: !710, file: !225, line: 655, type: !748)
!754 = !DILocalVariable(name: "atom2x", scope: !710, file: !225, line: 655, type: !748)
!755 = !DILocalVariable(name: "chg", scope: !710, file: !225, line: 656, type: !756)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 6400, elements: !428)
!757 = !DILocalVariable(name: "x", scope: !710, file: !225, line: 656, type: !756)
!758 = !DILocalVariable(name: "y", scope: !710, file: !225, line: 656, type: !756)
!759 = !DILocalVariable(name: "z", scope: !710, file: !225, line: 656, type: !756)
!760 = !DILocalVariable(name: "a_name", scope: !710, file: !225, line: 657, type: !761)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8000, elements: !762)
!762 = !{!429, !736}
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
!794 = !{!310, !310, i64 0}
!795 = !DILocation(line: 661, column: 7, scope: !710, inlinedAt: !770)
!796 = !DILocation(line: 665, column: 12, scope: !710, inlinedAt: !770)
!797 = !DILocation(line: 667, column: 23, scope: !798, inlinedAt: !770)
!798 = distinct !DILexicalBlock(scope: !799, file: !225, line: 667, column: 2)
!799 = distinct !DILexicalBlock(scope: !710, file: !225, line: 667, column: 2)
!800 = !DILocation(line: 667, column: 21, scope: !798, inlinedAt: !770)
!801 = !DILocation(line: 667, column: 2, scope: !799, inlinedAt: !770)
!802 = !DILocation(line: 671, column: 33, scope: !803, inlinedAt: !770)
!803 = distinct !DILexicalBlock(scope: !798, file: !225, line: 667, column: 43)
!804 = !DILocation(line: 671, column: 3, scope: !803, inlinedAt: !770)
!805 = !DILocation(line: 672, column: 3, scope: !803, inlinedAt: !770)
!806 = !DILocation(line: 673, column: 3, scope: !803, inlinedAt: !770)
!807 = !DILocation(line: 674, column: 13, scope: !803, inlinedAt: !770)
!808 = !DILocation(line: 678, column: 13, scope: !803, inlinedAt: !770)
!809 = !DILocation(line: 699, column: 13, scope: !803, inlinedAt: !770)
!810 = !DILocation(line: 718, column: 18, scope: !811, inlinedAt: !770)
!811 = distinct !DILexicalBlock(scope: !812, file: !225, line: 718, column: 3)
!812 = distinct !DILexicalBlock(scope: !803, file: !225, line: 718, column: 3)
!813 = !DILocation(line: 718, column: 16, scope: !811, inlinedAt: !770)
!814 = !DILocation(line: 718, column: 3, scope: !812, inlinedAt: !770)
!815 = !DILocation(line: 719, column: 10, scope: !816, inlinedAt: !770)
!816 = distinct !DILexicalBlock(scope: !811, file: !225, line: 718, column: 32)
!817 = !DILocation(line: 720, column: 4, scope: !816, inlinedAt: !770)
!818 = !DILocation(line: 721, column: 16, scope: !816, inlinedAt: !770)
!819 = !DILocation(line: 721, column: 28, scope: !816, inlinedAt: !770)
!820 = !DILocation(line: 721, column: 4, scope: !816, inlinedAt: !770)
!821 = !DILocation(line: 722, column: 21, scope: !816, inlinedAt: !770)
!822 = !{!693, !693, i64 0}
!823 = !DILocation(line: 722, column: 8, scope: !816, inlinedAt: !770)
!824 = !DILocation(line: 722, column: 19, scope: !816, inlinedAt: !770)
!825 = !{!692, !693, i64 64}
!826 = !DILocation(line: 723, column: 21, scope: !816, inlinedAt: !770)
!827 = !DILocation(line: 723, column: 8, scope: !816, inlinedAt: !770)
!828 = !DILocation(line: 723, column: 19, scope: !816, inlinedAt: !770)
!829 = !DILocation(line: 724, column: 21, scope: !816, inlinedAt: !770)
!830 = !DILocation(line: 724, column: 4, scope: !816, inlinedAt: !770)
!831 = !DILocation(line: 724, column: 19, scope: !816, inlinedAt: !770)
!832 = !DILocation(line: 725, column: 21, scope: !816, inlinedAt: !770)
!833 = !DILocation(line: 725, column: 4, scope: !816, inlinedAt: !770)
!834 = !DILocation(line: 725, column: 19, scope: !816, inlinedAt: !770)
!835 = !DILocation(line: 718, column: 28, scope: !811, inlinedAt: !770)
!836 = distinct !{!836, !814, !837, !316, !317}
!837 = !DILocation(line: 726, column: 3, scope: !812, inlinedAt: !770)
!838 = !DILocation(line: 728, column: 15, scope: !839, inlinedAt: !770)
!839 = distinct !DILexicalBlock(scope: !803, file: !225, line: 728, column: 7)
!840 = !DILocation(line: 728, column: 7, scope: !803, inlinedAt: !770)
!841 = !DILocation(line: 729, column: 4, scope: !839, inlinedAt: !770)
!842 = !DILocation(line: 733, column: 13, scope: !803, inlinedAt: !770)
!843 = !DILocation(line: 752, column: 16, scope: !844, inlinedAt: !770)
!844 = distinct !DILexicalBlock(scope: !845, file: !225, line: 752, column: 3)
!845 = distinct !DILexicalBlock(scope: !803, file: !225, line: 752, column: 3)
!846 = !DILocation(line: 752, column: 3, scope: !845, inlinedAt: !770)
!847 = !DILocation(line: 753, column: 22, scope: !848, inlinedAt: !770)
!848 = distinct !DILexicalBlock(scope: !844, file: !225, line: 752, column: 32)
!849 = !DILocation(line: 753, column: 4, scope: !848, inlinedAt: !770)
!850 = !DILocation(line: 753, column: 20, scope: !848, inlinedAt: !770)
!851 = !DILocation(line: 754, column: 22, scope: !848, inlinedAt: !770)
!852 = !DILocation(line: 754, column: 4, scope: !848, inlinedAt: !770)
!853 = !DILocation(line: 754, column: 20, scope: !848, inlinedAt: !770)
!854 = !DILocation(line: 752, column: 28, scope: !844, inlinedAt: !770)
!855 = distinct !{!855, !846, !856, !316, !317}
!856 = !DILocation(line: 755, column: 3, scope: !845, inlinedAt: !770)
!857 = !DILocation(line: 758, column: 10, scope: !858, inlinedAt: !770)
!858 = distinct !DILexicalBlock(scope: !803, file: !225, line: 757, column: 10)
!859 = !DILocation(line: 667, column: 39, scope: !798, inlinedAt: !770)
!860 = distinct !{!860, !801, !861, !316, !317}
!861 = !DILocation(line: 759, column: 2, scope: !799, inlinedAt: !770)
!862 = !DILocation(line: 760, column: 1, scope: !710, inlinedAt: !770)
!863 = !DILocation(line: 452, column: 2, scope: !771)
!864 = !DILocalVariable(name: "rfp", arg: 1, scope: !865, file: !225, line: 762, type: !338)
!865 = distinct !DISubprogram(name: "pdb2reslib", scope: !225, file: !225, line: 762, type: !866, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !338, !223}
!868 = !{!864, !869, !870, !871, !873, !874, !875, !876, !877, !878, !879, !880}
!869 = !DILocalVariable(name: "rlp", arg: 2, scope: !865, file: !225, line: 762, type: !223)
!870 = !DILocalVariable(name: "line", scope: !865, file: !225, line: 764, type: !267)
!871 = !DILocalVariable(name: "ltype", scope: !865, file: !225, line: 765, type: !872)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 80, elements: !735)
!873 = !DILocalVariable(name: "a_name", scope: !865, file: !225, line: 765, type: !872)
!874 = !DILocalVariable(name: "r_name", scope: !865, file: !225, line: 765, type: !872)
!875 = !DILocalVariable(name: "a_num", scope: !865, file: !225, line: 766, type: !15)
!876 = !DILocalVariable(name: "r_num", scope: !865, file: !225, line: 766, type: !15)
!877 = !DILocalVariable(name: "x", scope: !865, file: !225, line: 767, type: !40)
!878 = !DILocalVariable(name: "y", scope: !865, file: !225, line: 767, type: !40)
!879 = !DILocalVariable(name: "z", scope: !865, file: !225, line: 767, type: !40)
!880 = !DILocalVariable(name: "ap", scope: !865, file: !225, line: 768, type: !192)
!881 = !DILocation(line: 0, scope: !865, inlinedAt: !882)
!882 = distinct !DILocation(line: 453, column: 3, scope: !883)
!883 = distinct !DILexicalBlock(scope: !707, file: !225, line: 452, column: 7)
!884 = !DILocation(line: 764, column: 2, scope: !865, inlinedAt: !882)
!885 = !DILocation(line: 764, column: 7, scope: !865, inlinedAt: !882)
!886 = !DILocation(line: 765, column: 2, scope: !865, inlinedAt: !882)
!887 = !DILocation(line: 765, column: 7, scope: !865, inlinedAt: !882)
!888 = !DILocation(line: 765, column: 20, scope: !865, inlinedAt: !882)
!889 = !DILocation(line: 765, column: 34, scope: !865, inlinedAt: !882)
!890 = !DILocation(line: 766, column: 2, scope: !865, inlinedAt: !882)
!891 = !DILocation(line: 767, column: 2, scope: !865, inlinedAt: !882)
!892 = !DILocation(line: 770, column: 10, scope: !865, inlinedAt: !882)
!893 = !DILocation(line: 771, column: 11, scope: !865, inlinedAt: !882)
!894 = !DILocation(line: 772, column: 9, scope: !865, inlinedAt: !882)
!895 = !DILocation(line: 772, column: 2, scope: !865, inlinedAt: !882)
!896 = !DILocation(line: 773, column: 7, scope: !897, inlinedAt: !882)
!897 = distinct !DILexicalBlock(scope: !898, file: !225, line: 773, column: 7)
!898 = distinct !DILexicalBlock(scope: !865, file: !225, line: 772, column: 45)
!899 = !DILocation(line: 773, column: 36, scope: !897, inlinedAt: !882)
!900 = !DILocation(line: 773, column: 7, scope: !898, inlinedAt: !882)
!901 = !DILocalVariable(name: "rlp", arg: 1, scope: !902, file: !225, line: 978, type: !223)
!902 = distinct !DISubprogram(name: "setrlibattrs", scope: !225, file: !225, line: 978, type: !903, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !223, !220}
!905 = !{!901, !906, !907, !908}
!906 = !DILocalVariable(name: "line", arg: 2, scope: !902, file: !225, line: 978, type: !220)
!907 = !DILocalVariable(name: "rkind", scope: !902, file: !225, line: 980, type: !427)
!908 = !DILocalVariable(name: "rakind", scope: !902, file: !225, line: 980, type: !427)
!909 = !DILocation(line: 0, scope: !902, inlinedAt: !910)
!910 = distinct !DILocation(line: 774, column: 4, scope: !911, inlinedAt: !882)
!911 = distinct !DILexicalBlock(scope: !897, file: !225, line: 773, column: 42)
!912 = !DILocation(line: 980, column: 2, scope: !902, inlinedAt: !910)
!913 = !DILocation(line: 980, column: 7, scope: !902, inlinedAt: !910)
!914 = !DILocation(line: 980, column: 21, scope: !902, inlinedAt: !910)
!915 = !DILocation(line: 982, column: 6, scope: !916, inlinedAt: !910)
!916 = distinct !DILexicalBlock(scope: !902, file: !225, line: 982, column: 6)
!917 = !DILocation(line: 982, column: 59, scope: !916, inlinedAt: !910)
!918 = !DILocation(line: 982, column: 6, scope: !902, inlinedAt: !910)
!919 = !DILocation(line: 984, column: 6, scope: !920, inlinedAt: !910)
!920 = distinct !DILexicalBlock(scope: !902, file: !225, line: 984, column: 6)
!921 = !DILocation(line: 984, column: 6, scope: !902, inlinedAt: !910)
!922 = !DILocation(line: 987, column: 3, scope: !923, inlinedAt: !910)
!923 = distinct !DILexicalBlock(scope: !920, file: !225, line: 986, column: 11)
!924 = !DILocation(line: 988, column: 11, scope: !925, inlinedAt: !910)
!925 = distinct !DILexicalBlock(scope: !923, file: !225, line: 988, column: 11)
!926 = !DILocation(line: 988, column: 33, scope: !925, inlinedAt: !910)
!927 = !DILocation(line: 988, column: 11, scope: !923, inlinedAt: !910)
!928 = !DILocation(line: 0, scope: !920, inlinedAt: !910)
!929 = !DILocation(line: 990, column: 6, scope: !930, inlinedAt: !910)
!930 = distinct !DILexicalBlock(scope: !902, file: !225, line: 990, column: 6)
!931 = !DILocation(line: 990, column: 33, scope: !930, inlinedAt: !910)
!932 = !DILocation(line: 990, column: 6, scope: !902, inlinedAt: !910)
!933 = !DILocation(line: 992, column: 11, scope: !934, inlinedAt: !910)
!934 = distinct !DILexicalBlock(scope: !930, file: !225, line: 992, column: 11)
!935 = !DILocation(line: 992, column: 11, scope: !930, inlinedAt: !910)
!936 = !DILocation(line: 0, scope: !930, inlinedAt: !910)
!937 = !DILocation(line: 994, column: 1, scope: !902, inlinedAt: !910)
!938 = !DILocation(line: 775, column: 3, scope: !911, inlinedAt: !882)
!939 = !DILocation(line: 775, column: 13, scope: !940, inlinedAt: !882)
!940 = distinct !DILexicalBlock(scope: !897, file: !225, line: 775, column: 13)
!941 = !DILocation(line: 775, column: 45, scope: !940, inlinedAt: !882)
!942 = !DILocation(line: 776, column: 4, scope: !940, inlinedAt: !882)
!943 = !DILocation(line: 776, column: 33, scope: !940, inlinedAt: !882)
!944 = !DILocation(line: 775, column: 13, scope: !897, inlinedAt: !882)
!945 = !DILocation(line: 778, column: 4, scope: !946, inlinedAt: !882)
!946 = distinct !DILexicalBlock(scope: !940, file: !225, line: 776, column: 39)
!947 = !DILocation(line: 785, column: 8, scope: !948, inlinedAt: !882)
!948 = distinct !DILexicalBlock(scope: !946, file: !225, line: 785, column: 8)
!949 = !DILocation(line: 785, column: 34, scope: !948, inlinedAt: !882)
!950 = !DILocation(line: 0, scope: !946, inlinedAt: !882)
!951 = !DILocation(line: 785, column: 8, scope: !946, inlinedAt: !882)
!952 = !DILocation(line: 786, column: 17, scope: !953, inlinedAt: !882)
!953 = distinct !DILexicalBlock(scope: !954, file: !225, line: 786, column: 9)
!954 = distinct !DILexicalBlock(scope: !948, file: !225, line: 785, column: 40)
!955 = !DILocation(line: 786, column: 9, scope: !954, inlinedAt: !882)
!956 = !DILocation(line: 787, column: 6, scope: !957, inlinedAt: !882)
!957 = distinct !DILexicalBlock(scope: !953, file: !225, line: 786, column: 22)
!958 = !DILocation(line: 788, column: 14, scope: !957, inlinedAt: !882)
!959 = !DILocation(line: 789, column: 5, scope: !957, inlinedAt: !882)
!960 = !DILocation(line: 790, column: 5, scope: !954, inlinedAt: !882)
!961 = !DILocation(line: 791, column: 4, scope: !954, inlinedAt: !882)
!962 = !DILocation(line: 792, column: 17, scope: !946, inlinedAt: !882)
!963 = !DILocation(line: 792, column: 10, scope: !946, inlinedAt: !882)
!964 = !DILocation(line: 793, column: 4, scope: !946, inlinedAt: !882)
!965 = !DILocation(line: 794, column: 16, scope: !946, inlinedAt: !882)
!966 = !DILocation(line: 794, column: 4, scope: !946, inlinedAt: !882)
!967 = !DILocation(line: 795, column: 21, scope: !946, inlinedAt: !882)
!968 = !DILocation(line: 795, column: 8, scope: !946, inlinedAt: !882)
!969 = !DILocation(line: 795, column: 19, scope: !946, inlinedAt: !882)
!970 = !DILocation(line: 796, column: 21, scope: !946, inlinedAt: !882)
!971 = !DILocation(line: 796, column: 4, scope: !946, inlinedAt: !882)
!972 = !DILocation(line: 796, column: 19, scope: !946, inlinedAt: !882)
!973 = !DILocation(line: 797, column: 21, scope: !946, inlinedAt: !882)
!974 = !DILocation(line: 797, column: 4, scope: !946, inlinedAt: !882)
!975 = !DILocation(line: 797, column: 19, scope: !946, inlinedAt: !882)
!976 = !DILocation(line: 798, column: 11, scope: !946, inlinedAt: !882)
!977 = !DILocation(line: 799, column: 3, scope: !946, inlinedAt: !882)
!978 = distinct !{!978, !895, !979, !316, !317}
!979 = !DILocation(line: 800, column: 2, scope: !865, inlinedAt: !882)
!980 = !DILocation(line: 801, column: 6, scope: !981, inlinedAt: !882)
!981 = distinct !DILexicalBlock(scope: !865, file: !225, line: 801, column: 6)
!982 = !DILocation(line: 801, column: 14, scope: !981, inlinedAt: !882)
!983 = !DILocation(line: 801, column: 6, scope: !865, inlinedAt: !882)
!984 = !DILocation(line: 802, column: 3, scope: !981, inlinedAt: !882)
!985 = !DILocation(line: 803, column: 1, scope: !865, inlinedAt: !882)
!986 = !DILocalVariable(name: "bfp", arg: 1, scope: !987, file: !225, line: 805, type: !338)
!987 = distinct !DISubprogram(name: "bnd2reslib", scope: !225, file: !225, line: 805, type: !866, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !988)
!988 = !{!986, !989, !990, !991, !992, !993, !994}
!989 = !DILocalVariable(name: "rlp", arg: 2, scope: !987, file: !225, line: 805, type: !223)
!990 = !DILocalVariable(name: "line", scope: !987, file: !225, line: 807, type: !267)
!991 = !DILocalVariable(name: "r_name", scope: !987, file: !225, line: 808, type: !394)
!992 = !DILocalVariable(name: "llen", scope: !987, file: !225, line: 809, type: !15)
!993 = !DILocalVariable(name: "bi", scope: !987, file: !225, line: 810, type: !15)
!994 = !DILocalVariable(name: "bj", scope: !987, file: !225, line: 810, type: !15)
!995 = !DILocation(line: 0, scope: !987, inlinedAt: !996)
!996 = distinct !DILocation(line: 454, column: 3, scope: !883)
!997 = !DILocation(line: 807, column: 2, scope: !987, inlinedAt: !996)
!998 = !DILocation(line: 807, column: 7, scope: !987, inlinedAt: !996)
!999 = !DILocation(line: 808, column: 2, scope: !987, inlinedAt: !996)
!1000 = !DILocation(line: 808, column: 7, scope: !987, inlinedAt: !996)
!1001 = !DILocation(line: 810, column: 2, scope: !987, inlinedAt: !996)
!1002 = !DILocation(line: 812, column: 10, scope: !987, inlinedAt: !996)
!1003 = !DILocation(line: 813, column: 10, scope: !987, inlinedAt: !996)
!1004 = !DILocation(line: 814, column: 9, scope: !987, inlinedAt: !996)
!1005 = !DILocation(line: 814, column: 2, scope: !987, inlinedAt: !996)
!1006 = !DILocation(line: 815, column: 7, scope: !1007, inlinedAt: !996)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !225, line: 815, column: 7)
!1008 = distinct !DILexicalBlock(scope: !987, file: !225, line: 814, column: 45)
!1009 = !DILocation(line: 815, column: 13, scope: !1007, inlinedAt: !996)
!1010 = !DILocation(line: 815, column: 7, scope: !1008, inlinedAt: !996)
!1011 = !DILocation(line: 816, column: 8, scope: !1012, inlinedAt: !996)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !225, line: 816, column: 8)
!1013 = distinct !DILexicalBlock(scope: !1007, file: !225, line: 815, column: 21)
!1014 = !DILocation(line: 816, column: 39, scope: !1012, inlinedAt: !996)
!1015 = !DILocation(line: 816, column: 8, scope: !1013, inlinedAt: !996)
!1016 = !DILocation(line: 817, column: 12, scope: !1017, inlinedAt: !996)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !225, line: 816, column: 45)
!1018 = !DILocation(line: 818, column: 12, scope: !1017, inlinedAt: !996)
!1019 = !DILocation(line: 819, column: 5, scope: !1017, inlinedAt: !996)
!1020 = !DILocation(line: 820, column: 5, scope: !1017, inlinedAt: !996)
!1021 = !DILocation(line: 822, column: 5, scope: !1017, inlinedAt: !996)
!1022 = !DILocation(line: 823, column: 14, scope: !1023, inlinedAt: !996)
!1023 = distinct !DILexicalBlock(scope: !1012, file: !225, line: 823, column: 14)
!1024 = !DILocation(line: 823, column: 22, scope: !1023, inlinedAt: !996)
!1025 = !DILocation(line: 823, column: 14, scope: !1012, inlinedAt: !996)
!1026 = !DILocation(line: 824, column: 5, scope: !1027, inlinedAt: !996)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !225, line: 823, column: 27)
!1028 = !DILocation(line: 825, column: 5, scope: !1027, inlinedAt: !996)
!1029 = !DILocation(line: 826, column: 13, scope: !1027, inlinedAt: !996)
!1030 = !DILocation(line: 827, column: 4, scope: !1027, inlinedAt: !996)
!1031 = !DILocation(line: 828, column: 5, scope: !1023, inlinedAt: !996)
!1032 = !DILocation(line: 830, column: 8, scope: !1033, inlinedAt: !996)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !225, line: 830, column: 8)
!1034 = distinct !DILexicalBlock(scope: !1007, file: !225, line: 829, column: 8)
!1035 = !DILocation(line: 830, column: 42, scope: !1033, inlinedAt: !996)
!1036 = !DILocation(line: 830, column: 8, scope: !1034, inlinedAt: !996)
!1037 = !DILocation(line: 831, column: 12, scope: !1038, inlinedAt: !996)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !225, line: 830, column: 48)
!1039 = !DILocation(line: 832, column: 12, scope: !1038, inlinedAt: !996)
!1040 = !DILocation(line: 833, column: 5, scope: !1038, inlinedAt: !996)
!1041 = !DILocation(line: 834, column: 5, scope: !1038, inlinedAt: !996)
!1042 = !DILocation(line: 836, column: 5, scope: !1038, inlinedAt: !996)
!1043 = !DILocation(line: 838, column: 29, scope: !1044, inlinedAt: !996)
!1044 = distinct !DILexicalBlock(scope: !1033, file: !225, line: 837, column: 9)
!1045 = !DILocation(line: 838, column: 12, scope: !1044, inlinedAt: !996)
!1046 = !DILocation(line: 838, column: 5, scope: !1044, inlinedAt: !996)
!1047 = !DILocation(line: 838, column: 27, scope: !1044, inlinedAt: !996)
!1048 = !DILocation(line: 839, column: 29, scope: !1044, inlinedAt: !996)
!1049 = !DILocation(line: 839, column: 5, scope: !1044, inlinedAt: !996)
!1050 = !DILocation(line: 839, column: 27, scope: !1044, inlinedAt: !996)
!1051 = !DILocation(line: 840, column: 12, scope: !1044, inlinedAt: !996)
!1052 = distinct !{!1052, !1005, !1053, !316, !317}
!1053 = !DILocation(line: 843, column: 2, scope: !987, inlinedAt: !996)
!1054 = !DILocation(line: 844, column: 6, scope: !1055, inlinedAt: !996)
!1055 = distinct !DILexicalBlock(scope: !987, file: !225, line: 844, column: 6)
!1056 = !DILocation(line: 844, column: 14, scope: !1055, inlinedAt: !996)
!1057 = !DILocation(line: 844, column: 6, scope: !987, inlinedAt: !996)
!1058 = !DILocation(line: 845, column: 3, scope: !1055, inlinedAt: !996)
!1059 = !DILocation(line: 846, column: 1, scope: !987, inlinedAt: !996)
!1060 = !DILocation(line: 455, column: 3, scope: !883)
!1061 = !DILocation(line: 456, column: 3, scope: !883)
!1062 = !DILocation(line: 459, column: 6, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !334, file: !225, line: 459, column: 6)
!1064 = !DILocation(line: 459, column: 6, scope: !334)
!1065 = !DILocalVariable(name: "qfp", arg: 1, scope: !1066, file: !225, line: 937, type: !338)
!1066 = distinct !DISubprogram(name: "qr2reslib", scope: !225, file: !225, line: 937, type: !866, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1067 = !{!1065, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1068 = !DILocalVariable(name: "rlp", arg: 2, scope: !1066, file: !225, line: 937, type: !223)
!1069 = !DILocalVariable(name: "line", scope: !1066, file: !225, line: 939, type: !267)
!1070 = !DILocalVariable(name: "ltype", scope: !1066, file: !225, line: 940, type: !872)
!1071 = !DILocalVariable(name: "a_name", scope: !1066, file: !225, line: 940, type: !872)
!1072 = !DILocalVariable(name: "r_name", scope: !1066, file: !225, line: 940, type: !872)
!1073 = !DILocalVariable(name: "a_num", scope: !1066, file: !225, line: 941, type: !15)
!1074 = !DILocalVariable(name: "r_num", scope: !1066, file: !225, line: 941, type: !15)
!1075 = !DILocalVariable(name: "q", scope: !1066, file: !225, line: 942, type: !40)
!1076 = !DILocalVariable(name: "r", scope: !1066, file: !225, line: 942, type: !40)
!1077 = !DILocalVariable(name: "ap", scope: !1066, file: !225, line: 943, type: !192)
!1078 = !DILocation(line: 0, scope: !1066, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 460, column: 3, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1063, file: !225, line: 459, column: 11)
!1081 = !DILocation(line: 939, column: 2, scope: !1066, inlinedAt: !1079)
!1082 = !DILocation(line: 939, column: 7, scope: !1066, inlinedAt: !1079)
!1083 = !DILocation(line: 940, column: 2, scope: !1066, inlinedAt: !1079)
!1084 = !DILocation(line: 940, column: 7, scope: !1066, inlinedAt: !1079)
!1085 = !DILocation(line: 940, column: 20, scope: !1066, inlinedAt: !1079)
!1086 = !DILocation(line: 940, column: 34, scope: !1066, inlinedAt: !1079)
!1087 = !DILocation(line: 941, column: 2, scope: !1066, inlinedAt: !1079)
!1088 = !DILocation(line: 942, column: 2, scope: !1066, inlinedAt: !1079)
!1089 = !DILocation(line: 945, column: 10, scope: !1066, inlinedAt: !1079)
!1090 = !DILocation(line: 946, column: 11, scope: !1066, inlinedAt: !1079)
!1091 = !DILocation(line: 947, column: 9, scope: !1066, inlinedAt: !1079)
!1092 = !DILocation(line: 947, column: 2, scope: !1066, inlinedAt: !1079)
!1093 = !DILocation(line: 948, column: 7, scope: !1094, inlinedAt: !1079)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !225, line: 948, column: 7)
!1095 = distinct !DILexicalBlock(scope: !1066, file: !225, line: 947, column: 45)
!1096 = !DILocation(line: 948, column: 33, scope: !1094, inlinedAt: !1079)
!1097 = !DILocation(line: 948, column: 7, scope: !1095, inlinedAt: !1079)
!1098 = !DILocation(line: 950, column: 13, scope: !1099, inlinedAt: !1079)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !225, line: 950, column: 13)
!1100 = !DILocation(line: 950, column: 45, scope: !1099, inlinedAt: !1079)
!1101 = !DILocation(line: 951, column: 4, scope: !1099, inlinedAt: !1079)
!1102 = !DILocation(line: 951, column: 33, scope: !1099, inlinedAt: !1079)
!1103 = !DILocation(line: 950, column: 13, scope: !1094, inlinedAt: !1079)
!1104 = !DILocation(line: 953, column: 4, scope: !1105, inlinedAt: !1079)
!1105 = distinct !DILexicalBlock(scope: !1099, file: !225, line: 951, column: 39)
!1106 = !DILocation(line: 959, column: 8, scope: !1107, inlinedAt: !1079)
!1107 = distinct !DILexicalBlock(scope: !1105, file: !225, line: 959, column: 8)
!1108 = !DILocation(line: 959, column: 34, scope: !1107, inlinedAt: !1079)
!1109 = !DILocation(line: 0, scope: !1105, inlinedAt: !1079)
!1110 = !DILocation(line: 959, column: 8, scope: !1105, inlinedAt: !1079)
!1111 = !DILocation(line: 960, column: 17, scope: !1112, inlinedAt: !1079)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !225, line: 960, column: 9)
!1113 = distinct !DILexicalBlock(scope: !1107, file: !225, line: 959, column: 40)
!1114 = !DILocation(line: 960, column: 9, scope: !1113, inlinedAt: !1079)
!1115 = !DILocation(line: 961, column: 6, scope: !1116, inlinedAt: !1079)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !225, line: 960, column: 22)
!1117 = !DILocation(line: 962, column: 14, scope: !1116, inlinedAt: !1079)
!1118 = !DILocation(line: 963, column: 5, scope: !1116, inlinedAt: !1079)
!1119 = !DILocation(line: 964, column: 5, scope: !1113, inlinedAt: !1079)
!1120 = !DILocation(line: 965, column: 4, scope: !1113, inlinedAt: !1079)
!1121 = !DILocation(line: 966, column: 17, scope: !1105, inlinedAt: !1079)
!1122 = !DILocation(line: 966, column: 10, scope: !1105, inlinedAt: !1079)
!1123 = !DILocation(line: 967, column: 4, scope: !1105, inlinedAt: !1079)
!1124 = !DILocation(line: 968, column: 16, scope: !1105, inlinedAt: !1079)
!1125 = !DILocation(line: 968, column: 4, scope: !1105, inlinedAt: !1079)
!1126 = !DILocation(line: 969, column: 19, scope: !1105, inlinedAt: !1079)
!1127 = !DILocation(line: 969, column: 8, scope: !1105, inlinedAt: !1079)
!1128 = !DILocation(line: 969, column: 17, scope: !1105, inlinedAt: !1079)
!1129 = !DILocation(line: 970, column: 19, scope: !1105, inlinedAt: !1079)
!1130 = !DILocation(line: 970, column: 8, scope: !1105, inlinedAt: !1079)
!1131 = !DILocation(line: 970, column: 17, scope: !1105, inlinedAt: !1079)
!1132 = !{!692, !693, i64 72}
!1133 = !DILocation(line: 971, column: 11, scope: !1105, inlinedAt: !1079)
!1134 = !DILocation(line: 972, column: 3, scope: !1105, inlinedAt: !1079)
!1135 = distinct !{!1135, !1092, !1136, !316, !317}
!1136 = !DILocation(line: 973, column: 2, scope: !1066, inlinedAt: !1079)
!1137 = !DILocation(line: 974, column: 6, scope: !1138, inlinedAt: !1079)
!1138 = distinct !DILexicalBlock(scope: !1066, file: !225, line: 974, column: 6)
!1139 = !DILocation(line: 974, column: 14, scope: !1138, inlinedAt: !1079)
!1140 = !DILocation(line: 974, column: 6, scope: !1066, inlinedAt: !1079)
!1141 = !DILocation(line: 975, column: 3, scope: !1138, inlinedAt: !1079)
!1142 = !DILocation(line: 976, column: 1, scope: !1066, inlinedAt: !1079)
!1143 = !DILocation(line: 461, column: 3, scope: !1080)
!1144 = !DILocation(line: 462, column: 2, scope: !1080)
!1145 = !DILocation(line: 464, column: 6, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !334, file: !225, line: 464, column: 6)
!1147 = !DILocation(line: 464, column: 6, scope: !334)
!1148 = !DILocalVariable(name: "cfp", arg: 1, scope: !1149, file: !225, line: 848, type: !338)
!1149 = distinct !DISubprogram(name: "chi2reslib", scope: !225, file: !225, line: 848, type: !866, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1150)
!1150 = !{!1148, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166}
!1151 = !DILocalVariable(name: "rlp", arg: 2, scope: !1149, file: !225, line: 848, type: !223)
!1152 = !DILocalVariable(name: "line", scope: !1149, file: !225, line: 850, type: !267)
!1153 = !DILocalVariable(name: "r_name", scope: !1149, file: !225, line: 851, type: !394)
!1154 = !DILocalVariable(name: "llen", scope: !1149, file: !225, line: 852, type: !15)
!1155 = !DILocalVariable(name: "res", scope: !1149, file: !225, line: 853, type: !6)
!1156 = !DILocalVariable(name: "res1", scope: !1149, file: !225, line: 853, type: !6)
!1157 = !DILocalVariable(name: "anm1", scope: !1149, file: !225, line: 854, type: !254)
!1158 = !DILocalVariable(name: "anm2", scope: !1149, file: !225, line: 854, type: !254)
!1159 = !DILocalVariable(name: "anm3", scope: !1149, file: !225, line: 854, type: !254)
!1160 = !DILocalVariable(name: "anm4", scope: !1149, file: !225, line: 854, type: !254)
!1161 = !DILocalVariable(name: "a1", scope: !1149, file: !225, line: 855, type: !15)
!1162 = !DILocalVariable(name: "a2", scope: !1149, file: !225, line: 855, type: !15)
!1163 = !DILocalVariable(name: "a3", scope: !1149, file: !225, line: 855, type: !15)
!1164 = !DILocalVariable(name: "a4", scope: !1149, file: !225, line: 855, type: !15)
!1165 = !DILocalVariable(name: "ap", scope: !1149, file: !225, line: 856, type: !192)
!1166 = !DILocalVariable(name: "cp", scope: !1149, file: !225, line: 857, type: !181)
!1167 = !DILocation(line: 0, scope: !1149, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 465, column: 3, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1146, file: !225, line: 464, column: 11)
!1170 = !DILocation(line: 850, column: 2, scope: !1149, inlinedAt: !1168)
!1171 = !DILocation(line: 850, column: 7, scope: !1149, inlinedAt: !1168)
!1172 = !DILocation(line: 851, column: 2, scope: !1149, inlinedAt: !1168)
!1173 = !DILocation(line: 851, column: 7, scope: !1149, inlinedAt: !1168)
!1174 = !DILocation(line: 854, column: 2, scope: !1149, inlinedAt: !1168)
!1175 = !DILocation(line: 854, column: 7, scope: !1149, inlinedAt: !1168)
!1176 = !DILocation(line: 854, column: 18, scope: !1149, inlinedAt: !1168)
!1177 = !DILocation(line: 854, column: 29, scope: !1149, inlinedAt: !1168)
!1178 = !DILocation(line: 854, column: 40, scope: !1149, inlinedAt: !1168)
!1179 = !DILocation(line: 859, column: 8, scope: !1149, inlinedAt: !1168)
!1180 = !DILocation(line: 860, column: 10, scope: !1149, inlinedAt: !1168)
!1181 = !DILocation(line: 861, column: 9, scope: !1149, inlinedAt: !1168)
!1182 = !DILocation(line: 861, column: 2, scope: !1149, inlinedAt: !1168)
!1183 = !DILocation(line: 862, column: 7, scope: !1184, inlinedAt: !1168)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !225, line: 862, column: 7)
!1185 = distinct !DILexicalBlock(scope: !1149, file: !225, line: 861, column: 45)
!1186 = !DILocation(line: 862, column: 13, scope: !1184, inlinedAt: !1168)
!1187 = !DILocation(line: 862, column: 7, scope: !1185, inlinedAt: !1168)
!1188 = !DILocation(line: 863, column: 8, scope: !1189, inlinedAt: !1168)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !225, line: 863, column: 8)
!1190 = distinct !DILexicalBlock(scope: !1184, file: !225, line: 862, column: 21)
!1191 = !DILocation(line: 863, column: 39, scope: !1189, inlinedAt: !1168)
!1192 = !DILocation(line: 863, column: 8, scope: !1190, inlinedAt: !1168)
!1193 = !DILocation(line: 864, column: 12, scope: !1194, inlinedAt: !1168)
!1194 = distinct !DILexicalBlock(scope: !1189, file: !225, line: 863, column: 45)
!1195 = !DILocation(line: 865, column: 12, scope: !1194, inlinedAt: !1168)
!1196 = !DILocation(line: 866, column: 5, scope: !1194, inlinedAt: !1168)
!1197 = !DILocation(line: 867, column: 14, scope: !1194, inlinedAt: !1168)
!1198 = !DILocation(line: 867, column: 5, scope: !1194, inlinedAt: !1168)
!1199 = !DILocation(line: 870, column: 5, scope: !1194, inlinedAt: !1168)
!1200 = !DILocation(line: 872, column: 9, scope: !1201, inlinedAt: !1168)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !225, line: 872, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1189, file: !225, line: 871, column: 9)
!1203 = !DILocation(line: 872, column: 15, scope: !1201, inlinedAt: !1168)
!1204 = !DILocation(line: 872, column: 9, scope: !1202, inlinedAt: !1168)
!1205 = !DILocation(line: 873, column: 6, scope: !1206, inlinedAt: !1168)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !225, line: 872, column: 20)
!1207 = !DILocation(line: 874, column: 12, scope: !1206, inlinedAt: !1168)
!1208 = !DILocation(line: 875, column: 5, scope: !1206, inlinedAt: !1168)
!1209 = !DILocation(line: 877, column: 5, scope: !1210, inlinedAt: !1168)
!1210 = distinct !DILexicalBlock(scope: !1202, file: !225, line: 877, column: 5)
!1211 = !DILocation(line: 0, scope: !1210, inlinedAt: !1168)
!1212 = !DILocation(line: 879, column: 24, scope: !1213, inlinedAt: !1168)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !225, line: 879, column: 10)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !225, line: 878, column: 25)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !225, line: 877, column: 5)
!1216 = !{!1217, !300, i64 24}
!1217 = !{!"residue_t", !300, i64 0, !310, i64 8, !310, i64 12, !310, i64 16, !300, i64 24, !300, i64 32, !310, i64 40, !310, i64 44, !310, i64 48, !300, i64 56, !300, i64 64, !310, i64 72, !300, i64 80, !310, i64 88, !300, i64 96, !310, i64 104, !300, i64 112, !300, i64 120}
!1218 = !DILocation(line: 879, column: 11, scope: !1213, inlinedAt: !1168)
!1219 = !DILocation(line: 879, column: 10, scope: !1214, inlinedAt: !1168)
!1220 = distinct !{!1220, !1209, !1221, !316, !317}
!1221 = !DILocation(line: 883, column: 5, scope: !1210, inlinedAt: !1168)
!1222 = !DILocation(line: 885, column: 15, scope: !1223, inlinedAt: !1168)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !225, line: 884, column: 16)
!1224 = distinct !DILexicalBlock(scope: !1202, file: !225, line: 884, column: 9)
!1225 = !DILocation(line: 887, column: 20, scope: !1223, inlinedAt: !1168)
!1226 = !DILocation(line: 885, column: 6, scope: !1223, inlinedAt: !1168)
!1227 = !DILocation(line: 888, column: 6, scope: !1223, inlinedAt: !1168)
!1228 = !DILocation(line: 890, column: 5, scope: !1202, inlinedAt: !1168)
!1229 = !DILocation(line: 892, column: 3, scope: !1190, inlinedAt: !1168)
!1230 = !DILocation(line: 893, column: 4, scope: !1231, inlinedAt: !1168)
!1231 = distinct !DILexicalBlock(scope: !1184, file: !225, line: 892, column: 8)
!1232 = !DILocalVariable(name: "res", arg: 1, scope: !1233, file: !225, line: 1202, type: !6)
!1233 = distinct !DISubprogram(name: "findatom", scope: !225, file: !225, line: 1202, type: !1234, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!192, !6, !220}
!1236 = !{!1232, !1237, !1238}
!1237 = !DILocalVariable(name: "aname", arg: 2, scope: !1233, file: !225, line: 1202, type: !220)
!1238 = !DILocalVariable(name: "a", scope: !1233, file: !225, line: 1204, type: !15)
!1239 = !DILocation(line: 0, scope: !1233, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 894, column: 16, scope: !1241, inlinedAt: !1168)
!1241 = distinct !DILexicalBlock(scope: !1231, file: !225, line: 894, column: 8)
!1242 = !{!1217, !310, i64 104}
!1243 = !DILocation(line: 1206, column: 16, scope: !1244, inlinedAt: !1240)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !225, line: 1206, column: 2)
!1245 = distinct !DILexicalBlock(scope: !1233, file: !225, line: 1206, column: 2)
!1246 = !DILocation(line: 1206, column: 2, scope: !1245, inlinedAt: !1240)
!1247 = !DILocation(line: 1207, column: 21, scope: !1248, inlinedAt: !1240)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !225, line: 1207, column: 7)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !225, line: 1206, column: 38)
!1250 = !{!1217, !300, i64 120}
!1251 = !DILocation(line: 1206, column: 34, scope: !1244, inlinedAt: !1240)
!1252 = distinct !{!1252, !1246, !1253, !316, !317}
!1253 = !DILocation(line: 1209, column: 2, scope: !1245, inlinedAt: !1240)
!1254 = !DILocation(line: 1207, column: 16, scope: !1248, inlinedAt: !1240)
!1255 = !DILocation(line: 1207, column: 34, scope: !1248, inlinedAt: !1240)
!1256 = !DILocation(line: 1207, column: 8, scope: !1248, inlinedAt: !1240)
!1257 = !DILocation(line: 1207, column: 7, scope: !1249, inlinedAt: !1240)
!1258 = !DILocation(line: 895, column: 14, scope: !1259, inlinedAt: !1168)
!1259 = distinct !DILexicalBlock(scope: !1241, file: !225, line: 894, column: 41)
!1260 = !DILocation(line: 897, column: 17, scope: !1259, inlinedAt: !1168)
!1261 = !DILocation(line: 895, column: 5, scope: !1259, inlinedAt: !1168)
!1262 = !DILocation(line: 898, column: 5, scope: !1259, inlinedAt: !1168)
!1263 = !DILocation(line: 900, column: 10, scope: !1241, inlinedAt: !1168)
!1264 = !DILocation(line: 0, scope: !1233, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 901, column: 16, scope: !1266, inlinedAt: !1168)
!1266 = distinct !DILexicalBlock(scope: !1231, file: !225, line: 901, column: 8)
!1267 = !DILocation(line: 1206, column: 2, scope: !1245, inlinedAt: !1265)
!1268 = !DILocation(line: 1206, column: 34, scope: !1244, inlinedAt: !1265)
!1269 = !DILocation(line: 1206, column: 16, scope: !1244, inlinedAt: !1265)
!1270 = distinct !{!1270, !1267, !1271, !316, !317}
!1271 = !DILocation(line: 1209, column: 2, scope: !1245, inlinedAt: !1265)
!1272 = !DILocation(line: 1207, column: 16, scope: !1248, inlinedAt: !1265)
!1273 = !DILocation(line: 1207, column: 34, scope: !1248, inlinedAt: !1265)
!1274 = !DILocation(line: 1207, column: 8, scope: !1248, inlinedAt: !1265)
!1275 = !DILocation(line: 1207, column: 7, scope: !1249, inlinedAt: !1265)
!1276 = !DILocation(line: 902, column: 14, scope: !1277, inlinedAt: !1168)
!1277 = distinct !DILexicalBlock(scope: !1266, file: !225, line: 901, column: 41)
!1278 = !DILocation(line: 904, column: 17, scope: !1277, inlinedAt: !1168)
!1279 = !DILocation(line: 902, column: 5, scope: !1277, inlinedAt: !1168)
!1280 = !DILocation(line: 905, column: 5, scope: !1277, inlinedAt: !1168)
!1281 = !DILocation(line: 907, column: 10, scope: !1266, inlinedAt: !1168)
!1282 = !DILocation(line: 0, scope: !1233, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 908, column: 16, scope: !1284, inlinedAt: !1168)
!1284 = distinct !DILexicalBlock(scope: !1231, file: !225, line: 908, column: 8)
!1285 = !DILocation(line: 1206, column: 2, scope: !1245, inlinedAt: !1283)
!1286 = !DILocation(line: 1206, column: 34, scope: !1244, inlinedAt: !1283)
!1287 = !DILocation(line: 1206, column: 16, scope: !1244, inlinedAt: !1283)
!1288 = distinct !{!1288, !1285, !1289, !316, !317}
!1289 = !DILocation(line: 1209, column: 2, scope: !1245, inlinedAt: !1283)
!1290 = !DILocation(line: 1207, column: 16, scope: !1248, inlinedAt: !1283)
!1291 = !DILocation(line: 1207, column: 34, scope: !1248, inlinedAt: !1283)
!1292 = !DILocation(line: 1207, column: 8, scope: !1248, inlinedAt: !1283)
!1293 = !DILocation(line: 1207, column: 7, scope: !1249, inlinedAt: !1283)
!1294 = !DILocation(line: 909, column: 14, scope: !1295, inlinedAt: !1168)
!1295 = distinct !DILexicalBlock(scope: !1284, file: !225, line: 908, column: 41)
!1296 = !DILocation(line: 911, column: 17, scope: !1295, inlinedAt: !1168)
!1297 = !DILocation(line: 909, column: 5, scope: !1295, inlinedAt: !1168)
!1298 = !DILocation(line: 912, column: 5, scope: !1295, inlinedAt: !1168)
!1299 = !DILocation(line: 1206, column: 34, scope: !1244, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 915, column: 16, scope: !1301, inlinedAt: !1168)
!1301 = distinct !DILexicalBlock(scope: !1231, file: !225, line: 915, column: 8)
!1302 = !DILocation(line: 0, scope: !1233, inlinedAt: !1300)
!1303 = !DILocation(line: 1206, column: 16, scope: !1244, inlinedAt: !1300)
!1304 = !DILocation(line: 1206, column: 2, scope: !1245, inlinedAt: !1300)
!1305 = distinct !{!1305, !1304, !1306, !316, !317}
!1306 = !DILocation(line: 1209, column: 2, scope: !1245, inlinedAt: !1300)
!1307 = !DILocation(line: 1207, column: 16, scope: !1248, inlinedAt: !1300)
!1308 = !DILocation(line: 1207, column: 34, scope: !1248, inlinedAt: !1300)
!1309 = !DILocation(line: 1207, column: 8, scope: !1248, inlinedAt: !1300)
!1310 = !DILocation(line: 1207, column: 7, scope: !1249, inlinedAt: !1300)
!1311 = !DILocation(line: 916, column: 14, scope: !1312, inlinedAt: !1168)
!1312 = distinct !DILexicalBlock(scope: !1301, file: !225, line: 915, column: 41)
!1313 = !DILocation(line: 918, column: 17, scope: !1312, inlinedAt: !1168)
!1314 = !DILocation(line: 916, column: 5, scope: !1312, inlinedAt: !1168)
!1315 = !DILocation(line: 919, column: 5, scope: !1312, inlinedAt: !1168)
!1316 = !DILocation(line: 914, column: 10, scope: !1284, inlinedAt: !1168)
!1317 = !DILocation(line: 921, column: 10, scope: !1301, inlinedAt: !1168)
!1318 = !DILocation(line: 922, column: 15, scope: !1231, inlinedAt: !1168)
!1319 = !DILocation(line: 922, column: 10, scope: !1231, inlinedAt: !1168)
!1320 = !DILocation(line: 923, column: 9, scope: !1231, inlinedAt: !1168)
!1321 = !DILocation(line: 924, column: 20, scope: !1231, inlinedAt: !1168)
!1322 = !DILocation(line: 925, column: 4, scope: !1231, inlinedAt: !1168)
!1323 = !DILocation(line: 925, column: 20, scope: !1231, inlinedAt: !1168)
!1324 = !DILocation(line: 926, column: 4, scope: !1231, inlinedAt: !1168)
!1325 = !DILocation(line: 926, column: 20, scope: !1231, inlinedAt: !1168)
!1326 = !DILocation(line: 927, column: 4, scope: !1231, inlinedAt: !1168)
!1327 = !DILocation(line: 927, column: 20, scope: !1231, inlinedAt: !1168)
!1328 = !DILocation(line: 928, column: 8, scope: !1231, inlinedAt: !1168)
!1329 = !DILocation(line: 928, column: 15, scope: !1231, inlinedAt: !1168)
!1330 = !{!1331, !693, i64 16}
!1331 = !{!"chiral_t", !301, i64 0, !693, i64 16}
!1332 = distinct !{!1332, !1182, !1333, !316, !317}
!1333 = !DILocation(line: 930, column: 2, scope: !1149, inlinedAt: !1168)
!1334 = !DILocation(line: 931, column: 6, scope: !1335, inlinedAt: !1168)
!1335 = distinct !DILexicalBlock(scope: !1149, file: !225, line: 931, column: 6)
!1336 = !DILocation(line: 931, column: 12, scope: !1335, inlinedAt: !1168)
!1337 = !DILocation(line: 931, column: 6, scope: !1149, inlinedAt: !1168)
!1338 = !DILocation(line: 932, column: 3, scope: !1339, inlinedAt: !1168)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !225, line: 931, column: 17)
!1340 = !DILocation(line: 933, column: 9, scope: !1339, inlinedAt: !1168)
!1341 = !DILocation(line: 934, column: 2, scope: !1339, inlinedAt: !1168)
!1342 = !DILocation(line: 935, column: 1, scope: !1149, inlinedAt: !1168)
!1343 = !DILocation(line: 466, column: 3, scope: !1169)
!1344 = !DILocation(line: 467, column: 2, scope: !1169)
!1345 = !DILocation(line: 470, column: 1, scope: !334)
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
!1356 = !DILocation(line: 0, scope: !288, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 108, column: 14, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1346, file: !225, line: 108, column: 6)
!1359 = !DILocation(line: 426, column: 7, scope: !297, inlinedAt: !1357)
!1360 = !DILocation(line: 0, scope: !297, inlinedAt: !1357)
!1361 = !DILocation(line: 426, column: 2, scope: !297, inlinedAt: !1357)
!1362 = !DILocation(line: 427, column: 20, scope: !305, inlinedAt: !1357)
!1363 = !DILocation(line: 427, column: 7, scope: !305, inlinedAt: !1357)
!1364 = !DILocation(line: 427, column: 38, scope: !305, inlinedAt: !1357)
!1365 = !DILocation(line: 427, column: 7, scope: !306, inlinedAt: !1357)
!1366 = distinct !{!1366, !1361, !1367, !316, !317}
!1367 = !DILocation(line: 430, column: 2, scope: !297, inlinedAt: !1357)
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
!1416 = !DILocation(line: 0, scope: !288, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 132, column: 14, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1398, file: !225, line: 132, column: 6)
!1419 = !DILocation(line: 426, column: 7, scope: !297, inlinedAt: !1417)
!1420 = !DILocation(line: 0, scope: !297, inlinedAt: !1417)
!1421 = !DILocation(line: 426, column: 2, scope: !297, inlinedAt: !1417)
!1422 = !DILocation(line: 427, column: 20, scope: !305, inlinedAt: !1417)
!1423 = !DILocation(line: 427, column: 7, scope: !305, inlinedAt: !1417)
!1424 = !DILocation(line: 427, column: 38, scope: !305, inlinedAt: !1417)
!1425 = !DILocation(line: 427, column: 7, scope: !306, inlinedAt: !1417)
!1426 = distinct !{!1426, !1421, !1427, !316, !317}
!1427 = !DILocation(line: 430, column: 2, scope: !297, inlinedAt: !1417)
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
!1486 = !DILocation(line: 163, column: 7, scope: !1485)
!1487 = !DILocation(line: 0, scope: !1485)
!1488 = !DILocation(line: 163, column: 2, scope: !1485)
!1489 = !DILocation(line: 164, column: 21, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !225, line: 164, column: 6)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !225, line: 163, column: 53)
!1492 = distinct !DILexicalBlock(scope: !1485, file: !225, line: 163, column: 2)
!1493 = !DILocation(line: 164, column: 8, scope: !1490)
!1494 = !DILocation(line: 164, column: 40, scope: !1490)
!1495 = !DILocation(line: 164, column: 47, scope: !1490)
!1496 = !DILocation(line: 165, column: 6, scope: !1490)
!1497 = !DILocation(line: 165, column: 41, scope: !1490)
!1498 = !DILocation(line: 164, column: 6, scope: !1491)
!1499 = distinct !{!1499, !1488, !1500, !316, !317}
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
!1510 = !DIFile(filename: "apps/544.nab_r/src/traceback.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c13cba1549ebc0c91a943a70f996ba00")
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
!1533 = !DILocation(line: 191, column: 3, scope: !1532)
!1534 = !DILocation(line: 190, column: 5, scope: !1514)
!1535 = !DILocation(line: 193, column: 42, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !225, line: 192, column: 2)
!1537 = !DILocation(line: 193, column: 3, scope: !1536)
!1538 = !DILocation(line: 194, column: 3, scope: !1536)
!1539 = !DILocation(line: 195, column: 3, scope: !1536)
!1540 = !DILocation(line: 198, column: 37, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 198, column: 6)
!1542 = !DILocation(line: 198, column: 32, scope: !1541)
!1543 = !DILocation(line: 198, column: 45, scope: !1541)
!1544 = !DILocation(line: 198, column: 25, scope: !1541)
!1545 = !DILocation(line: 199, column: 3, scope: !1541)
!1546 = !DILocation(line: 198, column: 6, scope: !1514)
!1547 = !DILocation(line: 201, column: 51, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1541, file: !225, line: 200, column: 2)
!1549 = !DILocation(line: 201, column: 3, scope: !1548)
!1550 = !DILocation(line: 202, column: 3, scope: !1548)
!1551 = !DILocation(line: 203, column: 3, scope: !1548)
!1552 = !DILocation(line: 206, column: 43, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 206, column: 6)
!1554 = !DILocation(line: 206, column: 23, scope: !1553)
!1555 = !DILocation(line: 206, column: 58, scope: !1553)
!1556 = !DILocation(line: 206, column: 6, scope: !1514)
!1557 = !DILocation(line: 209, column: 9, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !225, line: 207, column: 2)
!1559 = !DILocation(line: 208, column: 3, scope: !1558)
!1560 = !DILocation(line: 210, column: 3, scope: !1558)
!1561 = !DILocation(line: 211, column: 3, scope: !1558)
!1562 = !DILocation(line: 214, column: 11, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 214, column: 6)
!1564 = !{!1217, !310, i64 72}
!1565 = !DILocation(line: 214, column: 23, scope: !1563)
!1566 = !DILocation(line: 214, column: 6, scope: !1514)
!1567 = !DILocation(line: 216, column: 11, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !225, line: 215, column: 7)
!1569 = distinct !DILexicalBlock(scope: !1563, file: !225, line: 214, column: 28)
!1570 = !DILocation(line: 216, column: 27, scope: !1568)
!1571 = !DILocation(line: 216, column: 4, scope: !1568)
!1572 = !DILocation(line: 217, column: 4, scope: !1568)
!1573 = !DILocation(line: 215, column: 7, scope: !1569)
!1574 = !DILocation(line: 220, column: 37, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1568, file: !225, line: 218, column: 3)
!1576 = !DILocation(line: 219, column: 4, scope: !1575)
!1577 = !DILocation(line: 221, column: 4, scope: !1575)
!1578 = !DILocation(line: 222, column: 4, scope: !1575)
!1579 = !DILocation(line: 0, scope: !1563)
!1580 = !DILocation(line: 227, column: 11, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 227, column: 6)
!1582 = !{!1217, !310, i64 88}
!1583 = !DILocation(line: 227, column: 21, scope: !1581)
!1584 = !DILocation(line: 227, column: 6, scope: !1514)
!1585 = !DILocation(line: 229, column: 11, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !225, line: 228, column: 7)
!1587 = distinct !DILexicalBlock(scope: !1581, file: !225, line: 227, column: 26)
!1588 = !DILocation(line: 229, column: 25, scope: !1586)
!1589 = !DILocation(line: 229, column: 4, scope: !1586)
!1590 = !DILocation(line: 230, column: 4, scope: !1586)
!1591 = !DILocation(line: 228, column: 7, scope: !1587)
!1592 = !DILocation(line: 233, column: 37, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1586, file: !225, line: 231, column: 3)
!1594 = !DILocation(line: 232, column: 4, scope: !1593)
!1595 = !DILocation(line: 234, column: 4, scope: !1593)
!1596 = !DILocation(line: 235, column: 4, scope: !1593)
!1597 = !DILocation(line: 0, scope: !1581)
!1598 = !DILocation(line: 240, column: 15, scope: !1514)
!1599 = !{!1217, !300, i64 0}
!1600 = !DILocation(line: 242, column: 37, scope: !1514)
!1601 = !DILocation(line: 242, column: 25, scope: !1514)
!1602 = !DILocation(line: 242, column: 47, scope: !1514)
!1603 = !DILocation(line: 242, column: 18, scope: !1514)
!1604 = !DILocation(line: 243, column: 10, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 243, column: 6)
!1606 = !DILocation(line: 243, column: 6, scope: !1514)
!1607 = !DILocation(line: 244, column: 12, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !225, line: 243, column: 19)
!1609 = !DILocation(line: 244, column: 3, scope: !1608)
!1610 = !DILocation(line: 246, column: 3, scope: !1608)
!1611 = !DILocation(line: 248, column: 2, scope: !1514)
!1612 = !DILocation(line: 249, column: 8, scope: !1514)
!1613 = !DILocation(line: 249, column: 18, scope: !1514)
!1614 = !DILocation(line: 251, column: 37, scope: !1514)
!1615 = !{!1217, !300, i64 32}
!1616 = !DILocation(line: 251, column: 25, scope: !1514)
!1617 = !DILocation(line: 251, column: 45, scope: !1514)
!1618 = !DILocation(line: 251, column: 18, scope: !1514)
!1619 = !DILocation(line: 252, column: 10, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 252, column: 6)
!1621 = !DILocation(line: 252, column: 6, scope: !1514)
!1622 = !DILocation(line: 253, column: 12, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !225, line: 252, column: 19)
!1624 = !DILocation(line: 253, column: 3, scope: !1623)
!1625 = !DILocation(line: 254, column: 3, scope: !1623)
!1626 = !DILocation(line: 256, column: 2, scope: !1514)
!1627 = !DILocation(line: 257, column: 8, scope: !1514)
!1628 = !DILocation(line: 257, column: 16, scope: !1514)
!1629 = !DILocation(line: 259, column: 21, scope: !1514)
!1630 = !{!1217, !310, i64 8}
!1631 = !DILocation(line: 259, column: 8, scope: !1514)
!1632 = !DILocation(line: 259, column: 14, scope: !1514)
!1633 = !DILocation(line: 260, column: 8, scope: !1514)
!1634 = !DILocation(line: 260, column: 18, scope: !1514)
!1635 = !{!1217, !310, i64 12}
!1636 = !DILocation(line: 261, column: 8, scope: !1514)
!1637 = !DILocation(line: 261, column: 17, scope: !1514)
!1638 = !{!1217, !310, i64 16}
!1639 = !DILocation(line: 262, column: 22, scope: !1514)
!1640 = !{!1217, !310, i64 40}
!1641 = !DILocation(line: 262, column: 8, scope: !1514)
!1642 = !DILocation(line: 262, column: 15, scope: !1514)
!1643 = !DILocation(line: 263, column: 8, scope: !1514)
!1644 = !DILocation(line: 263, column: 17, scope: !1514)
!1645 = !{!1217, !300, i64 56}
!1646 = !DILocation(line: 264, column: 21, scope: !1514)
!1647 = !DILocation(line: 264, column: 8, scope: !1514)
!1648 = !DILocation(line: 264, column: 19, scope: !1514)
!1649 = !{!1217, !300, i64 64}
!1650 = !DILocation(line: 265, column: 27, scope: !1514)
!1651 = !DILocation(line: 265, column: 8, scope: !1514)
!1652 = !DILocation(line: 265, column: 20, scope: !1514)
!1653 = !DILocation(line: 266, column: 8, scope: !1514)
!1654 = !DILocation(line: 266, column: 19, scope: !1514)
!1655 = !{!1217, !300, i64 80}
!1656 = !DILocation(line: 267, column: 16, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !225, line: 267, column: 2)
!1658 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 267, column: 2)
!1659 = !DILocation(line: 267, column: 2, scope: !1658)
!1660 = !DILocation(line: 268, column: 32, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !225, line: 267, column: 41)
!1662 = !DILocation(line: 268, column: 3, scope: !1661)
!1663 = !DILocation(line: 268, column: 30, scope: !1661)
!1664 = !DILocation(line: 269, column: 32, scope: !1661)
!1665 = !DILocation(line: 269, column: 3, scope: !1661)
!1666 = !DILocation(line: 269, column: 30, scope: !1661)
!1667 = !DILocation(line: 267, column: 37, scope: !1657)
!1668 = distinct !{!1668, !1659, !1669, !316, !317}
!1669 = !DILocation(line: 270, column: 2, scope: !1658)
!1670 = !DILocation(line: 271, column: 25, scope: !1514)
!1671 = !DILocation(line: 271, column: 8, scope: !1514)
!1672 = !DILocation(line: 271, column: 18, scope: !1514)
!1673 = !DILocation(line: 272, column: 8, scope: !1514)
!1674 = !DILocation(line: 272, column: 17, scope: !1514)
!1675 = !{!1217, !300, i64 96}
!1676 = !DILocation(line: 273, column: 37, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !225, line: 273, column: 2)
!1678 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 273, column: 2)
!1679 = !DILocation(line: 273, column: 2, scope: !1678)
!1680 = !DILocation(line: 274, column: 3, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !225, line: 274, column: 3)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !225, line: 273, column: 66)
!1683 = !DILocation(line: 275, column: 22, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !225, line: 274, column: 3)
!1685 = !DILocation(line: 275, column: 4, scope: !1684)
!1686 = !DILocation(line: 275, column: 20, scope: !1684)
!1687 = !DILocation(line: 274, column: 23, scope: !1684)
!1688 = !DILocation(line: 274, column: 17, scope: !1684)
!1689 = distinct !{!1689, !1680, !1690, !316, !317}
!1690 = !DILocation(line: 275, column: 51, scope: !1681)
!1691 = !DILocation(line: 276, column: 35, scope: !1682)
!1692 = !DILocation(line: 276, column: 7, scope: !1682)
!1693 = !DILocation(line: 276, column: 14, scope: !1682)
!1694 = !DILocation(line: 273, column: 56, scope: !1677)
!1695 = !DILocation(line: 273, column: 62, scope: !1677)
!1696 = distinct !{!1696, !1679, !1697, !316, !317}
!1697 = !DILocation(line: 277, column: 2, scope: !1678)
!1698 = !DILocation(line: 278, column: 22, scope: !1514)
!1699 = !{!1217, !310, i64 44}
!1700 = !DILocation(line: 278, column: 8, scope: !1514)
!1701 = !DILocation(line: 278, column: 15, scope: !1514)
!1702 = !DILocation(line: 279, column: 26, scope: !1514)
!1703 = !{!1217, !310, i64 48}
!1704 = !DILocation(line: 279, column: 8, scope: !1514)
!1705 = !DILocation(line: 279, column: 19, scope: !1514)
!1706 = !DILocation(line: 280, column: 24, scope: !1514)
!1707 = !DILocation(line: 280, column: 8, scope: !1514)
!1708 = !DILocation(line: 280, column: 17, scope: !1514)
!1709 = !DILocation(line: 281, column: 8, scope: !1514)
!1710 = !DILocation(line: 281, column: 17, scope: !1514)
!1711 = !{!1217, !300, i64 112}
!1712 = !DILocation(line: 282, column: 11, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 282, column: 6)
!1714 = !DILocation(line: 282, column: 6, scope: !1713)
!1715 = !DILocation(line: 0, scope: !1713)
!1716 = !DILocation(line: 282, column: 6, scope: !1514)
!1717 = !DILocation(line: 283, column: 3, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !225, line: 283, column: 3)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !225, line: 282, column: 21)
!1720 = !DILocation(line: 283, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !225, line: 283, column: 3)
!1722 = !DILocation(line: 286, column: 3, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !225, line: 286, column: 3)
!1724 = distinct !DILexicalBlock(scope: !1713, file: !225, line: 285, column: 7)
!1725 = !DILocation(line: 286, column: 17, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !225, line: 286, column: 3)
!1727 = !DILocation(line: 284, column: 26, scope: !1721)
!1728 = !DILocation(line: 284, column: 4, scope: !1721)
!1729 = !DILocation(line: 284, column: 24, scope: !1721)
!1730 = !DILocation(line: 283, column: 35, scope: !1721)
!1731 = distinct !{!1731, !1717, !1732, !316, !317}
!1732 = !DILocation(line: 284, column: 43, scope: !1718)
!1733 = !DILocation(line: 287, column: 4, scope: !1726)
!1734 = !DILocation(line: 287, column: 24, scope: !1726)
!1735 = !DILocation(line: 286, column: 35, scope: !1726)
!1736 = distinct !{!1736, !1722, !1737, !316, !317}
!1737 = !DILocation(line: 287, column: 26, scope: !1723)
!1738 = !DILocation(line: 289, column: 8, scope: !1514)
!1739 = !DILocation(line: 289, column: 16, scope: !1514)
!1740 = !DILocation(line: 290, column: 2, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1514, file: !225, line: 290, column: 2)
!1742 = !DILocation(line: 290, column: 16, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1741, file: !225, line: 290, column: 2)
!1744 = !DILocation(line: 292, column: 32, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1743, file: !225, line: 290, column: 38)
!1746 = !DILocation(line: 292, column: 48, scope: !1745)
!1747 = !DILocation(line: 292, column: 24, scope: !1745)
!1748 = !DILocation(line: 292, column: 60, scope: !1745)
!1749 = !DILocation(line: 292, column: 17, scope: !1745)
!1750 = !DILocation(line: 293, column: 11, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1745, file: !225, line: 293, column: 7)
!1752 = !DILocation(line: 293, column: 7, scope: !1745)
!1753 = !DILocation(line: 294, column: 13, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !225, line: 293, column: 20)
!1755 = !DILocation(line: 294, column: 4, scope: !1754)
!1756 = !DILocation(line: 295, column: 4, scope: !1754)
!1757 = !DILocation(line: 297, column: 3, scope: !1745)
!1758 = !DILocation(line: 298, column: 3, scope: !1745)
!1759 = !DILocation(line: 298, column: 22, scope: !1745)
!1760 = !DILocation(line: 299, column: 11, scope: !1745)
!1761 = !DILocation(line: 299, column: 22, scope: !1745)
!1762 = !{!692, !300, i64 8}
!1763 = !DILocation(line: 300, column: 38, scope: !1745)
!1764 = !{!692, !310, i64 16}
!1765 = !DILocation(line: 300, column: 11, scope: !1745)
!1766 = !DILocation(line: 300, column: 18, scope: !1745)
!1767 = !DILocation(line: 301, column: 42, scope: !1745)
!1768 = !{!692, !310, i64 20}
!1769 = !DILocation(line: 301, column: 11, scope: !1745)
!1770 = !DILocation(line: 301, column: 22, scope: !1745)
!1771 = !DILocation(line: 302, column: 3, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1745, file: !225, line: 302, column: 3)
!1773 = !DILocation(line: 303, column: 25, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1772, file: !225, line: 302, column: 3)
!1775 = !DILocation(line: 303, column: 4, scope: !1774)
!1776 = !DILocation(line: 303, column: 23, scope: !1774)
!1777 = !DILocation(line: 302, column: 38, scope: !1774)
!1778 = !DILocation(line: 302, column: 18, scope: !1774)
!1779 = distinct !{!1779, !1771, !1780, !316, !317}
!1780 = !DILocation(line: 303, column: 52, scope: !1772)
!1781 = !DILocation(line: 304, column: 11, scope: !1745)
!1782 = !DILocation(line: 304, column: 22, scope: !1745)
!1783 = !{!692, !300, i64 56}
!1784 = !DILocation(line: 305, column: 42, scope: !1745)
!1785 = !DILocation(line: 305, column: 11, scope: !1745)
!1786 = !DILocation(line: 305, column: 22, scope: !1745)
!1787 = !DILocation(line: 306, column: 42, scope: !1745)
!1788 = !DILocation(line: 306, column: 11, scope: !1745)
!1789 = !DILocation(line: 306, column: 22, scope: !1745)
!1790 = !DILocation(line: 307, column: 42, scope: !1745)
!1791 = !{!692, !693, i64 80}
!1792 = !DILocation(line: 307, column: 11, scope: !1745)
!1793 = !DILocation(line: 307, column: 22, scope: !1745)
!1794 = !DILocation(line: 308, column: 42, scope: !1745)
!1795 = !{!692, !693, i64 88}
!1796 = !DILocation(line: 308, column: 11, scope: !1745)
!1797 = !DILocation(line: 308, column: 22, scope: !1745)
!1798 = !DILocation(line: 309, column: 11, scope: !1745)
!1799 = !DILocation(line: 309, column: 22, scope: !1745)
!1800 = !{!692, !300, i64 96}
!1801 = !DILocation(line: 310, column: 42, scope: !1745)
!1802 = !{!692, !310, i64 104}
!1803 = !DILocation(line: 310, column: 11, scope: !1745)
!1804 = !DILocation(line: 310, column: 22, scope: !1745)
!1805 = !DILocation(line: 311, column: 42, scope: !1745)
!1806 = !{!692, !693, i64 112}
!1807 = !DILocation(line: 311, column: 11, scope: !1745)
!1808 = !DILocation(line: 311, column: 22, scope: !1745)
!1809 = !DILocation(line: 312, column: 42, scope: !1745)
!1810 = !{!692, !693, i64 120}
!1811 = !DILocation(line: 312, column: 11, scope: !1745)
!1812 = !DILocation(line: 312, column: 22, scope: !1745)
!1813 = !DILocation(line: 313, column: 42, scope: !1745)
!1814 = !{!692, !310, i64 128}
!1815 = !DILocation(line: 313, column: 11, scope: !1745)
!1816 = !DILocation(line: 313, column: 22, scope: !1745)
!1817 = !DILocation(line: 314, column: 42, scope: !1745)
!1818 = !{!692, !310, i64 132}
!1819 = !DILocation(line: 314, column: 11, scope: !1745)
!1820 = !DILocation(line: 314, column: 22, scope: !1745)
!1821 = !DILocation(line: 315, column: 11, scope: !1745)
!1822 = !DILocation(line: 315, column: 22, scope: !1745)
!1823 = !{!692, !300, i64 136}
!1824 = !DILocation(line: 316, column: 42, scope: !1745)
!1825 = !DILocation(line: 316, column: 24, scope: !1745)
!1826 = !DILocation(line: 316, column: 11, scope: !1745)
!1827 = !DILocation(line: 316, column: 22, scope: !1745)
!1828 = !DILocation(line: 317, column: 24, scope: !1745)
!1829 = !DILocation(line: 317, column: 3, scope: !1745)
!1830 = !DILocation(line: 317, column: 22, scope: !1745)
!1831 = !DILocation(line: 318, column: 24, scope: !1745)
!1832 = !DILocation(line: 318, column: 3, scope: !1745)
!1833 = !DILocation(line: 318, column: 22, scope: !1745)
!1834 = !DILocation(line: 319, column: 42, scope: !1745)
!1835 = !{!692, !693, i64 168}
!1836 = !DILocation(line: 319, column: 11, scope: !1745)
!1837 = !DILocation(line: 319, column: 22, scope: !1745)
!1838 = !DILocation(line: 290, column: 34, scope: !1743)
!1839 = distinct !{!1839, !1740, !1840, !316, !317}
!1840 = !DILocation(line: 320, column: 2, scope: !1741)
!1841 = !DILocation(line: 323, column: 1, scope: !1514)
!1842 = distinct !DISubprogram(name: "copystrand", scope: !225, file: !225, line: 325, type: !1843, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!46, !46}
!1845 = !{!1846, !1847, !1848, !1849}
!1846 = !DILocalVariable(name: "str", arg: 1, scope: !1842, file: !225, line: 325, type: !46)
!1847 = !DILocalVariable(name: "newstrand", scope: !1842, file: !225, line: 327, type: !46)
!1848 = !DILocalVariable(name: "namebuf", scope: !1842, file: !225, line: 328, type: !220)
!1849 = !DILocalVariable(name: "resctr", scope: !1842, file: !225, line: 329, type: !15)
!1850 = !DILocation(line: 0, scope: !1842)
!1851 = !DILocation(line: 331, column: 33, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1842, file: !225, line: 331, column: 5)
!1853 = !DILocation(line: 331, column: 64, scope: !1852)
!1854 = !DILocation(line: 331, column: 5, scope: !1842)
!1855 = !DILocation(line: 332, column: 41, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1852, file: !225, line: 331, column: 72)
!1857 = !{!1858, !300, i64 0}
!1858 = !{!"strand_t", !300, i64 0, !310, i64 8, !310, i64 12, !300, i64 16, !300, i64 24, !310, i64 32, !310, i64 36, !300, i64 40}
!1859 = !DILocation(line: 332, column: 3, scope: !1856)
!1860 = !DILocation(line: 334, column: 3, scope: !1856)
!1861 = !DILocation(line: 338, column: 16, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1842, file: !225, line: 337, column: 13)
!1863 = !{!1858, !310, i64 32}
!1864 = !DILocation(line: 338, column: 11, scope: !1862)
!1865 = !DILocation(line: 338, column: 28, scope: !1862)
!1866 = !DILocation(line: 338, column: 3, scope: !1862)
!1867 = !DILocation(line: 337, column: 26, scope: !1862)
!1868 = !DILocation(line: 337, column: 37, scope: !1862)
!1869 = !{!1858, !300, i64 40}
!1870 = !DILocation(line: 338, column: 56, scope: !1862)
!1871 = !DILocation(line: 337, column: 13, scope: !1842)
!1872 = !DILocation(line: 344, column: 51, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1842, file: !225, line: 344, column: 6)
!1874 = !DILocation(line: 344, column: 38, scope: !1873)
!1875 = !DILocation(line: 344, column: 66, scope: !1873)
!1876 = !DILocation(line: 344, column: 28, scope: !1873)
!1877 = !DILocation(line: 345, column: 24, scope: !1873)
!1878 = !DILocation(line: 344, column: 6, scope: !1842)
!1879 = !DILocation(line: 347, column: 3, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1873, file: !225, line: 346, column: 2)
!1881 = !DILocation(line: 349, column: 3, scope: !1880)
!1882 = !DILocation(line: 351, column: 26, scope: !1842)
!1883 = !DILocation(line: 352, column: 2, scope: !1842)
!1884 = !DILocation(line: 353, column: 32, scope: !1842)
!1885 = !{!1858, !310, i64 8}
!1886 = !DILocation(line: 353, column: 13, scope: !1842)
!1887 = !DILocation(line: 353, column: 25, scope: !1842)
!1888 = !DILocation(line: 354, column: 27, scope: !1842)
!1889 = !{!1858, !310, i64 12}
!1890 = !DILocation(line: 354, column: 13, scope: !1842)
!1891 = !DILocation(line: 354, column: 20, scope: !1842)
!1892 = !DILocation(line: 355, column: 13, scope: !1842)
!1893 = !DILocation(line: 357, column: 13, scope: !1842)
!1894 = !DILocation(line: 356, column: 20, scope: !1842)
!1895 = !DILocation(line: 357, column: 25, scope: !1842)
!1896 = !DILocation(line: 358, column: 13, scope: !1842)
!1897 = !DILocation(line: 358, column: 24, scope: !1842)
!1898 = !{!1858, !310, i64 36}
!1899 = !DILocation(line: 359, column: 34, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !225, line: 359, column: 9)
!1901 = distinct !DILexicalBlock(scope: !1842, file: !225, line: 359, column: 9)
!1902 = !DILocation(line: 359, column: 9, scope: !1901)
!1903 = !DILocation(line: 361, column: 22, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1900, file: !225, line: 359, column: 65)
!1905 = !DILocation(line: 361, column: 17, scope: !1904)
!1906 = !DILocation(line: 361, column: 4, scope: !1904)
!1907 = !DILocation(line: 360, column: 28, scope: !1904)
!1908 = !DILocation(line: 360, column: 17, scope: !1904)
!1909 = !DILocation(line: 360, column: 49, scope: !1904)
!1910 = !DILocation(line: 362, column: 28, scope: !1904)
!1911 = !DILocation(line: 362, column: 17, scope: !1904)
!1912 = !DILocation(line: 362, column: 50, scope: !1904)
!1913 = !DILocation(line: 362, column: 59, scope: !1904)
!1914 = !DILocation(line: 363, column: 29, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1904, file: !225, line: 363, column: 22)
!1916 = !DILocation(line: 363, column: 22, scope: !1904)
!1917 = !DILocation(line: 365, column: 5, scope: !1915)
!1918 = !DILocation(line: 364, column: 25, scope: !1915)
!1919 = !DILocation(line: 364, column: 69, scope: !1915)
!1920 = !DILocation(line: 359, column: 60, scope: !1900)
!1921 = !DILocation(line: 359, column: 41, scope: !1900)
!1922 = distinct !{!1922, !1902, !1923, !316, !317}
!1923 = !DILocation(line: 366, column: 9, scope: !1901)
!1924 = !DILocation(line: 368, column: 1, scope: !1842)
!1925 = distinct !DISubprogram(name: "copymolecule", scope: !225, file: !225, line: 370, type: !1926, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!221, !221}
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934, !1935}
!1929 = !DILocalVariable(name: "mol", arg: 1, scope: !1925, file: !225, line: 370, type: !221)
!1930 = !DILocalVariable(name: "row", scope: !1925, file: !225, line: 372, type: !15)
!1931 = !DILocalVariable(name: "col", scope: !1925, file: !225, line: 372, type: !15)
!1932 = !DILocalVariable(name: "strptr", scope: !1925, file: !225, line: 373, type: !46)
!1933 = !DILocalVariable(name: "newstr", scope: !1925, file: !225, line: 373, type: !46)
!1934 = !DILocalVariable(name: "nextstr", scope: !1925, file: !225, line: 373, type: !46)
!1935 = !DILocalVariable(name: "newmol", scope: !1925, file: !225, line: 374, type: !221)
!1936 = !DILocation(line: 0, scope: !1925)
!1937 = !DILocation(line: 376, column: 9, scope: !1925)
!1938 = !DILocation(line: 378, column: 39, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1925, file: !225, line: 378, column: 12)
!1940 = !DILocation(line: 378, column: 72, scope: !1939)
!1941 = !DILocation(line: 378, column: 12, scope: !1925)
!1942 = !DILocation(line: 379, column: 17, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !225, line: 378, column: 80)
!1944 = !DILocation(line: 380, column: 17, scope: !1943)
!1945 = !DILocation(line: 381, column: 17, scope: !1943)
!1946 = !DILocation(line: 384, column: 35, scope: !1925)
!1947 = !{!1948, !310, i64 96}
!1948 = !{!"molecule_t", !301, i64 0, !310, i64 96, !300, i64 104, !310, i64 112, !310, i64 116, !310, i64 120, !300, i64 128}
!1949 = !DILocation(line: 384, column: 17, scope: !1925)
!1950 = !DILocation(line: 384, column: 28, scope: !1925)
!1951 = !DILocation(line: 385, column: 36, scope: !1925)
!1952 = !{!1948, !310, i64 112}
!1953 = !DILocation(line: 385, column: 17, scope: !1925)
!1954 = !DILocation(line: 385, column: 29, scope: !1925)
!1955 = !DILocation(line: 386, column: 33, scope: !1925)
!1956 = !{!1948, !310, i64 116}
!1957 = !DILocation(line: 386, column: 17, scope: !1925)
!1958 = !DILocation(line: 386, column: 26, scope: !1925)
!1959 = !DILocation(line: 387, column: 33, scope: !1925)
!1960 = !{!1948, !310, i64 120}
!1961 = !DILocation(line: 387, column: 17, scope: !1925)
!1962 = !DILocation(line: 387, column: 26, scope: !1925)
!1963 = !DILocation(line: 389, column: 19, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1925, file: !225, line: 389, column: 14)
!1965 = !{!1948, !300, i64 128}
!1966 = !DILocation(line: 389, column: 25, scope: !1964)
!1967 = !DILocation(line: 389, column: 14, scope: !1925)
!1968 = !DILocation(line: 390, column: 33, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !225, line: 389, column: 35)
!1970 = !DILocation(line: 391, column: 9, scope: !1969)
!1971 = !DILocation(line: 0, scope: !1964)
!1972 = !DILocation(line: 393, column: 25, scope: !1964)
!1973 = !DILocation(line: 393, column: 31, scope: !1964)
!1974 = !DILocation(line: 397, column: 51, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !225, line: 396, column: 50)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !225, line: 396, column: 17)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !225, line: 396, column: 17)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !225, line: 395, column: 42)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !225, line: 395, column: 9)
!1980 = distinct !DILexicalBlock(scope: !1925, file: !225, line: 395, column: 9)
!1981 = !DILocation(line: 401, column: 23, scope: !1925)
!1982 = !{!1948, !300, i64 104}
!1983 = !DILocation(line: 402, column: 21, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1925, file: !225, line: 402, column: 14)
!1985 = !DILocation(line: 402, column: 14, scope: !1925)
!1986 = !DILocation(line: 403, column: 26, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !225, line: 402, column: 30)
!1988 = !DILocation(line: 404, column: 25, scope: !1987)
!1989 = !DILocation(line: 404, column: 36, scope: !1987)
!1990 = !{!1858, !300, i64 16}
!1991 = !DILocation(line: 405, column: 25, scope: !1987)
!1992 = !DILocation(line: 405, column: 35, scope: !1987)
!1993 = !DILocation(line: 406, column: 34, scope: !1987)
!1994 = !{!1858, !300, i64 24}
!1995 = !DILocation(line: 409, column: 24, scope: !1925)
!1996 = !DILocation(line: 409, column: 9, scope: !1925)
!1997 = !DILocation(line: 410, column: 27, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1925, file: !225, line: 409, column: 34)
!1999 = !DILocation(line: 412, column: 33, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1998, file: !225, line: 411, column: 22)
!2001 = !DILocation(line: 412, column: 40, scope: !2000)
!2002 = !DILocation(line: 413, column: 26, scope: !1998)
!2003 = !DILocation(line: 413, column: 37, scope: !1998)
!2004 = !DILocation(line: 415, column: 34, scope: !1998)
!2005 = distinct !{!2005, !1996, !2006, !316, !317}
!2006 = !DILocation(line: 416, column: 9, scope: !1925)
!2007 = !DILocation(line: 418, column: 9, scope: !1925)
!2008 = !DILocation(line: 419, column: 9, scope: !1925)
!2009 = !DILocation(line: 420, column: 1, scope: !1925)
!2010 = !DISubprogram(name: "upd_molnumbers", scope: !225, file: !225, line: 16, type: !2011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !221}
!2013 = !DISubprogram(name: "copyparm", scope: !225, file: !225, line: 53, type: !2014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!52, !52}
!2016 = !DISubprogram(name: "fclose", scope: !2017, file: !2017, line: 213, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2017 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!15, !338}
!2020 = !DISubprogram(name: "fgets", scope: !2017, file: !2017, line: 564, type: !2021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!220, !2023, !15, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !220)
!2024 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !338)
!2025 = !DISubprogram(name: "NAB_initatom", scope: !225, file: !225, line: 48, type: !2026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !192, !15}
!2028 = distinct !DISubprogram(name: "addres2reslib", scope: !225, file: !225, line: 996, type: !2029, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !223}
!2031 = !{!2032, !2033, !2034, !2035, !2036, !2037, !2038}
!2032 = !DILocalVariable(name: "rlp", arg: 1, scope: !2028, file: !225, line: 996, type: !223)
!2033 = !DILocalVariable(name: "res", scope: !2028, file: !225, line: 998, type: !6)
!2034 = !DILocalVariable(name: "ap", scope: !2028, file: !225, line: 999, type: !192)
!2035 = !DILocalVariable(name: "anp", scope: !2028, file: !225, line: 1000, type: !220)
!2036 = !DILocalVariable(name: "rnp", scope: !2028, file: !225, line: 1000, type: !220)
!2037 = !DILocalVariable(name: "a", scope: !2028, file: !225, line: 1001, type: !15)
!2038 = !DILocalVariable(name: "i", scope: !2028, file: !225, line: 1001, type: !15)
!2039 = !DILocation(line: 0, scope: !2028)
!2040 = !DILocation(line: 1003, column: 29, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2028, file: !225, line: 1003, column: 6)
!2042 = !DILocation(line: 1003, column: 61, scope: !2041)
!2043 = !DILocation(line: 1003, column: 6, scope: !2028)
!2044 = !DILocation(line: 1009, column: 33, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2028, file: !225, line: 1009, column: 6)
!2046 = !DILocation(line: 1009, column: 41, scope: !2045)
!2047 = !DILocation(line: 1009, column: 25, scope: !2045)
!2048 = !DILocation(line: 1009, column: 64, scope: !2045)
!2049 = !DILocation(line: 1009, column: 6, scope: !2028)
!2050 = !DILocation(line: 1015, column: 21, scope: !2028)
!2051 = !{!309, !300, i64 24}
!2052 = !DILocation(line: 1015, column: 14, scope: !2028)
!2053 = !DILocation(line: 1016, column: 16, scope: !2028)
!2054 = !DILocation(line: 1018, column: 26, scope: !2028)
!2055 = !DILocation(line: 1018, column: 44, scope: !2028)
!2056 = !DILocation(line: 1018, column: 18, scope: !2028)
!2057 = !DILocation(line: 1019, column: 10, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2028, file: !225, line: 1019, column: 6)
!2059 = !DILocation(line: 1019, column: 6, scope: !2028)
!2060 = !DILocation(line: 1020, column: 12, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !225, line: 1019, column: 19)
!2062 = !DILocation(line: 1020, column: 3, scope: !2061)
!2063 = !DILocation(line: 1022, column: 3, scope: !2061)
!2064 = !DILocation(line: 1024, column: 2, scope: !2028)
!2065 = !DILocation(line: 1025, column: 7, scope: !2028)
!2066 = !DILocation(line: 1025, column: 17, scope: !2028)
!2067 = !DILocation(line: 1027, column: 18, scope: !2028)
!2068 = !DILocation(line: 1028, column: 10, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2028, file: !225, line: 1028, column: 6)
!2070 = !DILocation(line: 1028, column: 6, scope: !2028)
!2071 = !DILocation(line: 1029, column: 12, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !225, line: 1028, column: 19)
!2073 = !DILocation(line: 1029, column: 3, scope: !2072)
!2074 = !DILocation(line: 1031, column: 3, scope: !2072)
!2075 = !DILocation(line: 1033, column: 2, scope: !2028)
!2076 = !DILocation(line: 1034, column: 7, scope: !2028)
!2077 = !DILocation(line: 1034, column: 15, scope: !2028)
!2078 = !DILocation(line: 1036, column: 7, scope: !2028)
!2079 = !DILocation(line: 1036, column: 13, scope: !2028)
!2080 = !DILocation(line: 1037, column: 7, scope: !2028)
!2081 = !DILocation(line: 1037, column: 17, scope: !2028)
!2082 = !DILocation(line: 1038, column: 7, scope: !2028)
!2083 = !DILocation(line: 1038, column: 16, scope: !2028)
!2084 = !DILocation(line: 1039, column: 7, scope: !2028)
!2085 = !DILocation(line: 1039, column: 14, scope: !2028)
!2086 = !DILocation(line: 1040, column: 21, scope: !2028)
!2087 = !DILocation(line: 1040, column: 7, scope: !2028)
!2088 = !DILocation(line: 1040, column: 14, scope: !2028)
!2089 = !DILocation(line: 1041, column: 25, scope: !2028)
!2090 = !DILocation(line: 1041, column: 7, scope: !2028)
!2091 = !DILocation(line: 1041, column: 18, scope: !2028)
!2092 = !DILocation(line: 1042, column: 7, scope: !2028)
!2093 = !DILocation(line: 1045, column: 7, scope: !2028)
!2094 = !DILocation(line: 1045, column: 18, scope: !2028)
!2095 = !DILocation(line: 1046, column: 7, scope: !2028)
!2096 = !DILocation(line: 1046, column: 17, scope: !2028)
!2097 = !DILocation(line: 1047, column: 7, scope: !2028)
!2098 = !DILocation(line: 1047, column: 16, scope: !2028)
!2099 = !DILocation(line: 1048, column: 7, scope: !2028)
!2100 = !DILocation(line: 1043, column: 18, scope: !2028)
!2101 = !DILocation(line: 1048, column: 16, scope: !2028)
!2102 = !DILocation(line: 1049, column: 7, scope: !2028)
!2103 = !DILocation(line: 1049, column: 16, scope: !2028)
!2104 = !DILocation(line: 1050, column: 7, scope: !2028)
!2105 = !DILocation(line: 1050, column: 15, scope: !2028)
!2106 = !DILocation(line: 1051, column: 16, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !225, line: 1051, column: 2)
!2108 = distinct !DILexicalBlock(scope: !2028, file: !225, line: 1051, column: 2)
!2109 = !DILocation(line: 1051, column: 2, scope: !2108)
!2110 = !DILocation(line: 1052, column: 35, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !225, line: 1051, column: 32)
!2112 = !DILocation(line: 1052, column: 46, scope: !2111)
!2113 = !DILocation(line: 1052, column: 27, scope: !2111)
!2114 = !DILocation(line: 1052, column: 59, scope: !2111)
!2115 = !DILocation(line: 1052, column: 19, scope: !2111)
!2116 = !DILocation(line: 1053, column: 11, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2111, file: !225, line: 1053, column: 7)
!2118 = !DILocation(line: 1053, column: 7, scope: !2111)
!2119 = !DILocation(line: 1054, column: 13, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2117, file: !225, line: 1053, column: 20)
!2121 = !DILocation(line: 1054, column: 4, scope: !2120)
!2122 = !DILocation(line: 1056, column: 4, scope: !2120)
!2123 = !DILocation(line: 1059, column: 3, scope: !2111)
!2124 = !DILocation(line: 1060, column: 3, scope: !2111)
!2125 = !DILocation(line: 1060, column: 32, scope: !2111)
!2126 = !DILocation(line: 1061, column: 21, scope: !2111)
!2127 = !DILocation(line: 1061, column: 32, scope: !2111)
!2128 = !DILocation(line: 1062, column: 21, scope: !2111)
!2129 = !DILocation(line: 1062, column: 32, scope: !2111)
!2130 = !DILocation(line: 1064, column: 37, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !225, line: 1063, column: 3)
!2132 = distinct !DILexicalBlock(scope: !2111, file: !225, line: 1063, column: 3)
!2133 = !DILocation(line: 1065, column: 21, scope: !2111)
!2134 = !DILocation(line: 1065, column: 32, scope: !2111)
!2135 = !DILocation(line: 1066, column: 45, scope: !2111)
!2136 = !DILocation(line: 1066, column: 21, scope: !2111)
!2137 = !DILocation(line: 1066, column: 32, scope: !2111)
!2138 = !DILocation(line: 1067, column: 45, scope: !2111)
!2139 = !DILocation(line: 1067, column: 21, scope: !2111)
!2140 = !DILocation(line: 1067, column: 32, scope: !2111)
!2141 = !DILocation(line: 1068, column: 45, scope: !2111)
!2142 = !DILocation(line: 1068, column: 21, scope: !2111)
!2143 = !DILocation(line: 1068, column: 32, scope: !2111)
!2144 = !DILocation(line: 1069, column: 45, scope: !2111)
!2145 = !DILocation(line: 1069, column: 21, scope: !2111)
!2146 = !DILocation(line: 1069, column: 32, scope: !2111)
!2147 = !DILocation(line: 1070, column: 45, scope: !2111)
!2148 = !DILocation(line: 1070, column: 21, scope: !2111)
!2149 = !DILocation(line: 1070, column: 32, scope: !2111)
!2150 = !DILocation(line: 1071, column: 45, scope: !2111)
!2151 = !DILocation(line: 1071, column: 21, scope: !2111)
!2152 = !DILocation(line: 1071, column: 32, scope: !2111)
!2153 = !DILocation(line: 1072, column: 45, scope: !2111)
!2154 = !DILocation(line: 1072, column: 21, scope: !2111)
!2155 = !DILocation(line: 1072, column: 32, scope: !2111)
!2156 = !DILocation(line: 1073, column: 21, scope: !2111)
!2157 = !DILocation(line: 1073, column: 32, scope: !2111)
!2158 = !DILocation(line: 1074, column: 21, scope: !2111)
!2159 = !DILocation(line: 1074, column: 32, scope: !2111)
!2160 = !DILocation(line: 1076, column: 33, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !225, line: 1075, column: 3)
!2162 = distinct !DILexicalBlock(scope: !2111, file: !225, line: 1075, column: 3)
!2163 = !DILocation(line: 1077, column: 45, scope: !2111)
!2164 = !DILocation(line: 1077, column: 21, scope: !2111)
!2165 = !DILocation(line: 1077, column: 32, scope: !2111)
!2166 = !DILocation(line: 1051, column: 28, scope: !2107)
!2167 = distinct !{!2167, !2109, !2168, !316, !317}
!2168 = !DILocation(line: 1078, column: 2, scope: !2108)
!2169 = !DILocation(line: 1079, column: 1, scope: !2028)
!2170 = distinct !DISubprogram(name: "addbonds2reslib", scope: !225, file: !225, line: 1081, type: !2029, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2171 = !{!2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180}
!2172 = !DILocalVariable(name: "rlp", arg: 1, scope: !2170, file: !225, line: 1081, type: !223)
!2173 = !DILocalVariable(name: "res", scope: !2170, file: !225, line: 1083, type: !6)
!2174 = !DILocalVariable(name: "bp", scope: !2170, file: !225, line: 1084, type: !174)
!2175 = !DILocalVariable(name: "b", scope: !2170, file: !225, line: 1085, type: !15)
!2176 = !DILocalVariable(name: "a", scope: !2170, file: !225, line: 1086, type: !15)
!2177 = !DILocalVariable(name: "ai", scope: !2170, file: !225, line: 1086, type: !15)
!2178 = !DILocalVariable(name: "aj", scope: !2170, file: !225, line: 1086, type: !15)
!2179 = !DILocalVariable(name: "api", scope: !2170, file: !225, line: 1087, type: !192)
!2180 = !DILocalVariable(name: "apj", scope: !2170, file: !225, line: 1087, type: !192)
!2181 = !DILocation(line: 0, scope: !2170)
!2182 = !DILocation(line: 1089, column: 18, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2170, file: !225, line: 1089, column: 2)
!2184 = !DILocation(line: 1089, column: 7, scope: !2183)
!2185 = !DILocation(line: 0, scope: !2183)
!2186 = !DILocation(line: 1089, column: 2, scope: !2183)
!2187 = !DILocation(line: 1090, column: 20, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !225, line: 1090, column: 7)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !225, line: 1089, column: 52)
!2190 = distinct !DILexicalBlock(scope: !2183, file: !225, line: 1089, column: 2)
!2191 = !DILocation(line: 1090, column: 7, scope: !2188)
!2192 = !DILocation(line: 1090, column: 41, scope: !2188)
!2193 = !DILocation(line: 1090, column: 7, scope: !2189)
!2194 = distinct !{!2194, !2186, !2195, !316, !317}
!2195 = !DILocation(line: 1129, column: 2, scope: !2183)
!2196 = !DILocation(line: 1092, column: 13, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !225, line: 1091, column: 8)
!2198 = distinct !DILexicalBlock(scope: !2188, file: !225, line: 1090, column: 47)
!2199 = !DILocation(line: 1092, column: 21, scope: !2197)
!2200 = !DILocation(line: 1092, column: 5, scope: !2197)
!2201 = !DILocation(line: 1093, column: 5, scope: !2197)
!2202 = !DILocation(line: 1091, column: 8, scope: !2198)
!2203 = !DILocation(line: 1099, column: 18, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !225, line: 1099, column: 4)
!2205 = distinct !DILexicalBlock(scope: !2198, file: !225, line: 1099, column: 4)
!2206 = !DILocation(line: 1099, column: 4, scope: !2205)
!2207 = !DILocation(line: 1094, column: 5, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2197, file: !225, line: 1093, column: 14)
!2209 = !DILocation(line: 1096, column: 5, scope: !2208)
!2210 = !DILocation(line: 1097, column: 5, scope: !2208)
!2211 = !DILocation(line: 1100, column: 25, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2204, file: !225, line: 1099, column: 34)
!2213 = !DILocation(line: 1100, column: 10, scope: !2212)
!2214 = !DILocation(line: 1100, column: 23, scope: !2212)
!2215 = !DILocation(line: 1101, column: 25, scope: !2212)
!2216 = !DILocation(line: 1101, column: 10, scope: !2212)
!2217 = !DILocation(line: 1101, column: 23, scope: !2212)
!2218 = !DILocation(line: 1102, column: 7, scope: !2212)
!2219 = !DILocation(line: 1103, column: 7, scope: !2212)
!2220 = !DILocation(line: 1104, column: 12, scope: !2212)
!2221 = !DILocation(line: 1105, column: 5, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2212, file: !225, line: 1105, column: 5)
!2223 = !DILocation(line: 1105, column: 38, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2222, file: !225, line: 1105, column: 5)
!2225 = !DILocation(line: 1105, column: 19, scope: !2224)
!2226 = distinct !{!2226, !2221, !2227, !316, !317}
!2227 = !DILocation(line: 1113, column: 5, scope: !2222)
!2228 = !DILocation(line: 1106, column: 10, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !225, line: 1106, column: 10)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !225, line: 1105, column: 42)
!2231 = !DILocation(line: 1106, column: 30, scope: !2229)
!2232 = !DILocation(line: 1106, column: 10, scope: !2230)
!2233 = !DILocation(line: 1108, column: 35, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2229, file: !225, line: 1108, column: 15)
!2235 = !DILocation(line: 1108, column: 15, scope: !2229)
!2236 = !DILocation(line: 1109, column: 27, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !225, line: 1108, column: 45)
!2238 = !DILocation(line: 1110, column: 12, scope: !2237)
!2239 = !DILocation(line: 1110, column: 22, scope: !2237)
!2240 = !DILocation(line: 1111, column: 7, scope: !2237)
!2241 = !DILocation(line: 1114, column: 12, scope: !2212)
!2242 = !DILocation(line: 1115, column: 5, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2212, file: !225, line: 1115, column: 5)
!2244 = !DILocation(line: 1115, column: 38, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2243, file: !225, line: 1115, column: 5)
!2246 = !DILocation(line: 1115, column: 19, scope: !2245)
!2247 = distinct !{!2247, !2242, !2248, !316, !317}
!2248 = !DILocation(line: 1123, column: 5, scope: !2243)
!2249 = !DILocation(line: 1116, column: 10, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !225, line: 1116, column: 10)
!2251 = distinct !DILexicalBlock(scope: !2245, file: !225, line: 1115, column: 42)
!2252 = !DILocation(line: 1116, column: 30, scope: !2250)
!2253 = !DILocation(line: 1116, column: 10, scope: !2251)
!2254 = !DILocation(line: 1118, column: 35, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2250, file: !225, line: 1118, column: 15)
!2256 = !DILocation(line: 1118, column: 15, scope: !2250)
!2257 = !DILocation(line: 1119, column: 27, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2255, file: !225, line: 1118, column: 45)
!2259 = !DILocation(line: 1120, column: 12, scope: !2258)
!2260 = !DILocation(line: 1120, column: 22, scope: !2258)
!2261 = !DILocation(line: 1121, column: 7, scope: !2258)
!2262 = !DILocation(line: 1099, column: 30, scope: !2204)
!2263 = !DILocation(line: 1099, column: 20, scope: !2204)
!2264 = distinct !{!2264, !2206, !2265, !316, !317}
!2265 = !DILocation(line: 1124, column: 4, scope: !2205)
!2266 = !DILocation(line: 1125, column: 9, scope: !2198)
!2267 = !DILocation(line: 1125, column: 21, scope: !2198)
!2268 = !DILocation(line: 1126, column: 9, scope: !2198)
!2269 = !DILocation(line: 1126, column: 20, scope: !2198)
!2270 = !DILocation(line: 1127, column: 4, scope: !2198)
!2271 = !DILocation(line: 1130, column: 57, scope: !2170)
!2272 = !DILocation(line: 1130, column: 2, scope: !2170)
!2273 = !DILocation(line: 1131, column: 2, scope: !2170)
!2274 = !DILocation(line: 1132, column: 2, scope: !2170)
!2275 = !DILocation(line: 1133, column: 1, scope: !2170)
!2276 = distinct !DISubprogram(name: "addqr2reslib", scope: !225, file: !225, line: 1135, type: !2029, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2277)
!2277 = !{!2278, !2279, !2280, !2281, !2282}
!2278 = !DILocalVariable(name: "rlp", arg: 1, scope: !2276, file: !225, line: 1135, type: !223)
!2279 = !DILocalVariable(name: "res", scope: !2276, file: !225, line: 1137, type: !6)
!2280 = !DILocalVariable(name: "a", scope: !2276, file: !225, line: 1138, type: !15)
!2281 = !DILocalVariable(name: "ap", scope: !2276, file: !225, line: 1139, type: !192)
!2282 = !DILocalVariable(name: "apr", scope: !2276, file: !225, line: 1139, type: !192)
!2283 = !DILocation(line: 0, scope: !2276)
!2284 = !DILocation(line: 1141, column: 18, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2276, file: !225, line: 1141, column: 2)
!2286 = !DILocation(line: 1141, column: 7, scope: !2285)
!2287 = !DILocation(line: 0, scope: !2285)
!2288 = !DILocation(line: 1141, column: 2, scope: !2285)
!2289 = !DILocation(line: 1142, column: 20, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !225, line: 1142, column: 7)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !225, line: 1141, column: 52)
!2292 = distinct !DILexicalBlock(scope: !2285, file: !225, line: 1141, column: 2)
!2293 = !DILocation(line: 1142, column: 7, scope: !2290)
!2294 = !DILocation(line: 1142, column: 41, scope: !2290)
!2295 = !DILocation(line: 1142, column: 7, scope: !2291)
!2296 = distinct !{!2296, !2288, !2297, !316, !317}
!2297 = !DILocation(line: 1157, column: 2, scope: !2285)
!2298 = !DILocation(line: 1143, column: 32, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !225, line: 1143, column: 4)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !225, line: 1143, column: 4)
!2301 = distinct !DILexicalBlock(scope: !2290, file: !225, line: 1142, column: 47)
!2302 = !DILocation(line: 1143, column: 30, scope: !2299)
!2303 = !DILocation(line: 1143, column: 4, scope: !2300)
!2304 = !DILocation(line: 1206, column: 2, scope: !1245, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 1144, column: 16, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !225, line: 1144, column: 9)
!2307 = distinct !DILexicalBlock(scope: !2299, file: !225, line: 1143, column: 52)
!2308 = !DILocation(line: 1144, column: 35, scope: !2306)
!2309 = !DILocation(line: 0, scope: !1233, inlinedAt: !2305)
!2310 = !DILocation(line: 1207, column: 16, scope: !1248, inlinedAt: !2305)
!2311 = !DILocation(line: 1207, column: 34, scope: !1248, inlinedAt: !2305)
!2312 = !DILocation(line: 1207, column: 8, scope: !1248, inlinedAt: !2305)
!2313 = !DILocation(line: 1207, column: 7, scope: !1249, inlinedAt: !2305)
!2314 = !DILocation(line: 1206, column: 34, scope: !1244, inlinedAt: !2305)
!2315 = !DILocation(line: 1206, column: 16, scope: !1244, inlinedAt: !2305)
!2316 = distinct !{!2316, !2304, !2317, !316, !317}
!2317 = !DILocation(line: 1209, column: 2, scope: !1245, inlinedAt: !2305)
!2318 = !DILocation(line: 1146, column: 26, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2306, file: !225, line: 1144, column: 50)
!2320 = !DILocation(line: 1146, column: 11, scope: !2319)
!2321 = !DILocation(line: 1146, column: 20, scope: !2319)
!2322 = !DILocation(line: 1147, column: 26, scope: !2319)
!2323 = !DILocation(line: 1147, column: 11, scope: !2319)
!2324 = !DILocation(line: 1147, column: 20, scope: !2319)
!2325 = !DILocation(line: 1148, column: 26, scope: !2319)
!2326 = !DILocation(line: 1148, column: 11, scope: !2319)
!2327 = !DILocation(line: 1148, column: 20, scope: !2319)
!2328 = !DILocation(line: 1149, column: 26, scope: !2319)
!2329 = !DILocation(line: 1149, column: 11, scope: !2319)
!2330 = !DILocation(line: 1149, column: 20, scope: !2319)
!2331 = !DILocation(line: 1150, column: 26, scope: !2319)
!2332 = !DILocation(line: 1150, column: 11, scope: !2319)
!2333 = !DILocation(line: 1150, column: 20, scope: !2319)
!2334 = !DILocation(line: 1151, column: 26, scope: !2319)
!2335 = !DILocation(line: 1151, column: 11, scope: !2319)
!2336 = !DILocation(line: 1151, column: 20, scope: !2319)
!2337 = !DILocation(line: 1152, column: 26, scope: !2319)
!2338 = !DILocation(line: 1152, column: 11, scope: !2319)
!2339 = !DILocation(line: 1152, column: 20, scope: !2319)
!2340 = !DILocation(line: 1153, column: 5, scope: !2319)
!2341 = !DILocation(line: 1143, column: 42, scope: !2299)
!2342 = !DILocation(line: 1143, column: 48, scope: !2299)
!2343 = distinct !{!2343, !2303, !2344, !316, !317}
!2344 = !DILocation(line: 1154, column: 4, scope: !2300)
!2345 = !DILocation(line: 1158, column: 57, scope: !2276)
!2346 = !DILocation(line: 1158, column: 2, scope: !2276)
!2347 = !DILocation(line: 1159, column: 2, scope: !2276)
!2348 = !DILocation(line: 1160, column: 2, scope: !2276)
!2349 = !DILocation(line: 1161, column: 1, scope: !2276)
!2350 = distinct !DISubprogram(name: "addchi2reslib", scope: !225, file: !225, line: 1163, type: !2029, scopeLine: 1164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2351)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2357, !2358, !2360, !2361}
!2352 = !DILocalVariable(name: "rlp", arg: 1, scope: !2350, file: !225, line: 1163, type: !223)
!2353 = !DILocalVariable(name: "res", scope: !2350, file: !225, line: 1165, type: !6)
!2354 = !DILocalVariable(name: "cp", scope: !2350, file: !225, line: 1166, type: !181)
!2355 = !DILocalVariable(name: "a", scope: !2350, file: !225, line: 1167, type: !15)
!2356 = !DILocalVariable(name: "c", scope: !2350, file: !225, line: 1167, type: !15)
!2357 = !DILocalVariable(name: "ca", scope: !2350, file: !225, line: 1167, type: !15)
!2358 = !DILocalVariable(name: "pos", scope: !2350, file: !225, line: 1168, type: !2359)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 768, elements: !187)
!2360 = !DILocalVariable(name: "dvol", scope: !2350, file: !225, line: 1169, type: !2359)
!2361 = !DILocalVariable(name: "vol", scope: !2350, file: !225, line: 1170, type: !40)
!2362 = !DILocation(line: 0, scope: !2350)
!2363 = !DILocation(line: 1168, column: 2, scope: !2350)
!2364 = !DILocation(line: 1168, column: 11, scope: !2350)
!2365 = !DILocation(line: 1169, column: 2, scope: !2350)
!2366 = !DILocation(line: 1169, column: 11, scope: !2350)
!2367 = !DILocation(line: 1170, column: 2, scope: !2350)
!2368 = !DILocation(line: 1172, column: 18, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2350, file: !225, line: 1172, column: 2)
!2370 = !DILocation(line: 1172, column: 7, scope: !2369)
!2371 = !DILocation(line: 0, scope: !2369)
!2372 = !DILocation(line: 1172, column: 2, scope: !2369)
!2373 = !DILocation(line: 1173, column: 21, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !225, line: 1173, column: 7)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !225, line: 1172, column: 52)
!2376 = distinct !DILexicalBlock(scope: !2369, file: !225, line: 1172, column: 2)
!2377 = !DILocation(line: 1173, column: 8, scope: !2374)
!2378 = !DILocation(line: 1173, column: 7, scope: !2375)
!2379 = distinct !{!2379, !2372, !2380, !316, !317}
!2380 = !DILocation(line: 1197, column: 2, scope: !2369)
!2381 = !DILocation(line: 1175, column: 13, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !225, line: 1174, column: 8)
!2383 = distinct !DILexicalBlock(scope: !2374, file: !225, line: 1173, column: 43)
!2384 = !DILocation(line: 1175, column: 19, scope: !2382)
!2385 = !DILocation(line: 1175, column: 5, scope: !2382)
!2386 = !DILocation(line: 1176, column: 5, scope: !2382)
!2387 = !DILocation(line: 1174, column: 8, scope: !2383)
!2388 = !DILocation(line: 1177, column: 14, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2382, file: !225, line: 1176, column: 14)
!2390 = !DILocation(line: 1177, column: 5, scope: !2389)
!2391 = !DILocation(line: 1180, column: 5, scope: !2389)
!2392 = !DILocation(line: 1182, column: 9, scope: !2383)
!2393 = !DILocation(line: 1182, column: 19, scope: !2383)
!2394 = !DILocation(line: 1183, column: 9, scope: !2383)
!2395 = !DILocation(line: 1183, column: 18, scope: !2383)
!2396 = !DILocation(line: 1184, column: 18, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !225, line: 1184, column: 4)
!2398 = distinct !DILexicalBlock(scope: !2383, file: !225, line: 1184, column: 4)
!2399 = !DILocation(line: 1184, column: 4, scope: !2398)
!2400 = !DILocation(line: 1185, column: 5, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !225, line: 1185, column: 5)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !225, line: 1184, column: 32)
!2403 = !DILocation(line: 1186, column: 27, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !225, line: 1185, column: 29)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !225, line: 1185, column: 5)
!2406 = !DILocation(line: 1186, column: 11, scope: !2404)
!2407 = !DILocation(line: 1186, column: 25, scope: !2404)
!2408 = !DILocation(line: 1187, column: 18, scope: !2404)
!2409 = !DILocation(line: 1187, column: 35, scope: !2404)
!2410 = !DILocation(line: 1187, column: 6, scope: !2404)
!2411 = !DILocation(line: 1187, column: 16, scope: !2404)
!2412 = !DILocation(line: 1188, column: 18, scope: !2404)
!2413 = !DILocation(line: 1188, column: 6, scope: !2404)
!2414 = !DILocation(line: 1188, column: 16, scope: !2404)
!2415 = !DILocation(line: 1189, column: 18, scope: !2404)
!2416 = !DILocation(line: 1189, column: 6, scope: !2404)
!2417 = !DILocation(line: 1189, column: 16, scope: !2404)
!2418 = !DILocation(line: 1185, column: 25, scope: !2405)
!2419 = !DILocation(line: 1185, column: 19, scope: !2405)
!2420 = distinct !{!2420, !2400, !2421, !316, !317}
!2421 = !DILocation(line: 1190, column: 5, scope: !2401)
!2422 = !DILocation(line: 1191, column: 5, scope: !2402)
!2423 = !DILocation(line: 1192, column: 18, scope: !2402)
!2424 = !DILocation(line: 1192, column: 9, scope: !2402)
!2425 = !DILocation(line: 1192, column: 16, scope: !2402)
!2426 = !DILocation(line: 1193, column: 7, scope: !2402)
!2427 = !DILocation(line: 1184, column: 28, scope: !2397)
!2428 = !DILocation(line: 1184, column: 20, scope: !2397)
!2429 = distinct !{!2429, !2399, !2430, !316, !317}
!2430 = !DILocation(line: 1194, column: 4, scope: !2398)
!2431 = !DILocation(line: 1198, column: 11, scope: !2350)
!2432 = !DILocation(line: 1199, column: 8, scope: !2350)
!2433 = !DILocation(line: 1199, column: 24, scope: !2350)
!2434 = !DILocation(line: 1198, column: 2, scope: !2350)
!2435 = !DILocation(line: 1200, column: 1, scope: !2350)
!2436 = !DISubprogram(name: "chirvol", scope: !2437, file: !2437, line: 1, type: !2438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1513)
!2437 = !DIFile(filename: "apps/544.nab_r/src/chirvol.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "02115784aa5f2605efe296b0108dfa0f")
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !15, !15, !15, !15, !15, !97, !97, !97}
