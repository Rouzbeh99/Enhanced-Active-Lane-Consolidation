; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r/llvm-ir/544.nab_r_bc/src/nabmd.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/nabmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x double], double, double, double, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cg_emsg_lineno = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@cg_nfname = dso_local local_unnamed_addr global [256 x i8] zeroinitializer, align 16, !dbg !11
@stdout = external local_unnamed_addr global ptr, align 8
@nabout = dso_local local_unnamed_addr global ptr null, align 8, !dbg !250
@mytaskid = internal global i32 0, align 4, !dbg !234
@numtasks = internal global i32 0, align 4, !dbg !236
@.str = private unnamed_addr constant [51 x i8] c"Usage: %s <directory> <PRNG seed> <MD step count>\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"nabmd %s %d\0A\0A\00", align 1
@filename = internal global [256 x i8] zeroinitializer, align 16, !dbg !248
@.str.4 = private unnamed_addr constant [5 x i8] c".pdb\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Reading .pdb file (%s)\0A\00", align 1
@m = internal global ptr null, align 8, !dbg !17
@.str.6 = private unnamed_addr constant [5 x i8] c".prm\00", align 1
@m_xyz = internal unnamed_addr global ptr null, align 8, !dbg !238
@f_xyz = internal unnamed_addr global ptr null, align 8, !dbg !240
@v_xyz = internal unnamed_addr global ptr null, align 8, !dbg !242
@gb = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"::ZZZZ\00", align 1
@dummy = internal global [3 x double] zeroinitializer, align 16, !dbg !246
@zero = internal global i32 0, align 4, !dbg !311
@.str.8 = private unnamed_addr constant [23 x i8] c"Initial energy is %f0\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"\0A...Done, md returns %d\0A\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Starting molecular dynamics with in vaccuo non-bonded energy...\0A\00", align 1
@str.12 = private unnamed_addr constant [59 x i8] c"Starting molecular dynamics with Born solvation energy...\0A\00", align 1
@str.13 = private unnamed_addr constant [19 x i8] c"Error in mpierror!\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @CG_exit(i32 noundef %i) local_unnamed_addr #0 !dbg !320 {
entry:
  call void @llvm.dbg.value(metadata i32 %i, metadata !324, metadata !DIExpression()), !dbg !325
  tail call void @exit(i32 noundef 1) #12, !dbg !326
  unreachable, !dbg !326
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #2 !dbg !327 {
entry:
  %argc.addr = alloca i32, align 4
  %seed = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !331, metadata !DIExpression()), !dbg !335
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !336
  call void @llvm.dbg.value(metadata ptr %argv, metadata !332, metadata !DIExpression()), !dbg !335
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seed) #13, !dbg !340
  call void @llvm.dbg.value(metadata i32 0, metadata !333, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 1000, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load ptr, ptr @stdout, align 8, !dbg !341, !tbaa !342
  store ptr %0, ptr @nabout, align 8, !dbg !344, !tbaa !342
  call void @llvm.dbg.value(metadata ptr %argc.addr, metadata !331, metadata !DIExpression(DW_OP_deref)), !dbg !335
  %call = call i32 @mpiinit(ptr noundef nonnull %argc.addr, ptr noundef %argv, ptr noundef nonnull @mytaskid, ptr noundef nonnull @numtasks) #13, !dbg !345
  %1 = load i32, ptr %argc.addr, align 4, !dbg !346, !tbaa !336
  call void @llvm.dbg.value(metadata i32 %1, metadata !331, metadata !DIExpression()), !dbg !335
  %cmp = icmp slt i32 %1, 3, !dbg !348
  br i1 %cmp, label %if.then, label %if.end5, !dbg !349

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @mytaskid, align 4, !dbg !350, !tbaa !336
  %cmp1 = icmp eq i32 %2, 0, !dbg !353
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !354

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %argv, align 8, !dbg !355, !tbaa !342
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef %3), !dbg !357
  %4 = load ptr, ptr @stdout, align 8, !dbg !358, !tbaa !342
  %call4 = call i32 @fflush(ptr noundef %4), !dbg !359
  br label %if.end5, !dbg !360

if.end5:                                          ; preds = %entry, %if.then, %if.then2
  %storemerge = phi i32 [ -1, %if.then2 ], [ -1, %if.then ], [ 0, %entry ], !dbg !361
  %call6 = call i32 @mpierror(i32 noundef %storemerge) #13, !dbg !362
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !364
  br i1 %cmp7.not, label %if.end14, label %if.then8, !dbg !365

if.then8:                                         ; preds = %if.end5
  %5 = load i32, ptr @mytaskid, align 4, !dbg !366, !tbaa !336
  %cmp9 = icmp eq i32 %5, 0, !dbg !369
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !370

if.then10:                                        ; preds = %if.then8
  %puts133 = call i32 @puts(ptr nonnull @str.13), !dbg !371
  %6 = load ptr, ptr @stdout, align 8, !dbg !373, !tbaa !342
  %call12 = call i32 @fflush(ptr noundef %6), !dbg !374
  br label %if.end13, !dbg !375

if.end13:                                         ; preds = %if.then10, %if.then8
  call void @exit(i32 noundef 1) #12, !dbg !376
  unreachable, !dbg !376

if.end14:                                         ; preds = %if.end5
  %arrayidx15 = getelementptr inbounds ptr, ptr %argv, i64 2, !dbg !377
  %7 = load ptr, ptr %arrayidx15, align 8, !dbg !377, !tbaa !342
  call void @llvm.dbg.value(metadata ptr %7, metadata !378, metadata !DIExpression()) #13, !dbg !386
  %call.i = call i64 @strtol(ptr nocapture noundef nonnull %7, ptr noundef null, i32 noundef 10) #13, !dbg !388
  %conv.i = trunc i64 %call.i to i32, !dbg !389
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !333, metadata !DIExpression()), !dbg !335
  store i32 %conv.i, ptr %seed, align 4, !dbg !390, !tbaa !336
  call void @llvm.dbg.value(metadata ptr %seed, metadata !333, metadata !DIExpression(DW_OP_deref)), !dbg !335
  %call17 = call i32 @setseed(ptr noundef nonnull %seed) #13, !dbg !391
  %8 = load i32, ptr %argc.addr, align 4, !dbg !392, !tbaa !336
  call void @llvm.dbg.value(metadata i32 %8, metadata !331, metadata !DIExpression()), !dbg !335
  %cmp18 = icmp sgt i32 %8, 3, !dbg !394
  br i1 %cmp18, label %if.then19, label %if.end25, !dbg !395

if.then19:                                        ; preds = %if.end14
  %arrayidx20 = getelementptr inbounds ptr, ptr %argv, i64 3, !dbg !396
  %9 = load ptr, ptr %arrayidx20, align 8, !dbg !396, !tbaa !342
  call void @llvm.dbg.value(metadata ptr %9, metadata !378, metadata !DIExpression()) #13, !dbg !398
  %call.i134 = call i64 @strtol(ptr nocapture noundef nonnull %9, ptr noundef null, i32 noundef 10) #13, !dbg !400
  %conv.i135 = trunc i64 %call.i134 to i32, !dbg !401
  call void @llvm.dbg.value(metadata i32 %conv.i135, metadata !334, metadata !DIExpression()), !dbg !335
  %cmp22 = icmp slt i32 %conv.i135, 1, !dbg !402
  %spec.store.select = select i1 %cmp22, i32 1000, i32 %conv.i135, !dbg !404
  call void @llvm.dbg.value(metadata i32 %spec.store.select, metadata !334, metadata !DIExpression()), !dbg !335
  br label %if.end25, !dbg !405

if.end25:                                         ; preds = %if.then19, %if.end14
  %steps.0 = phi i32 [ %spec.store.select, %if.then19 ], [ 1000, %if.end14 ], !dbg !335
  call void @llvm.dbg.value(metadata i32 %steps.0, metadata !334, metadata !DIExpression()), !dbg !335
  %10 = load i32, ptr @mytaskid, align 4, !dbg !406, !tbaa !336
  %cmp26 = icmp eq i32 %10, 0, !dbg !408
  br i1 %cmp26, label %if.then27, label %if.end30, !dbg !409

if.then27:                                        ; preds = %if.end25
  %arrayidx28 = getelementptr inbounds ptr, ptr %argv, i64 1, !dbg !410
  %11 = load ptr, ptr %arrayidx28, align 8, !dbg !410, !tbaa !342
  %12 = load i32, ptr %seed, align 4, !dbg !412, !tbaa !336
  call void @llvm.dbg.value(metadata i32 %12, metadata !333, metadata !DIExpression()), !dbg !335
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %11, i32 noundef %12), !dbg !413
  %.pre = load i32, ptr @mytaskid, align 4, !dbg !414, !tbaa !336
  br label %if.end30, !dbg !416

if.end30:                                         ; preds = %if.then27, %if.end25
  %13 = phi i32 [ %.pre, %if.then27 ], [ %10, %if.end25 ], !dbg !414
  store i8 0, ptr @filename, align 16, !dbg !417, !tbaa !418
  %arrayidx31 = getelementptr inbounds ptr, ptr %argv, i64 1, !dbg !419
  %14 = load ptr, ptr %arrayidx31, align 8, !dbg !419, !tbaa !342
  %call32 = call ptr @strcat(ptr noundef nonnull @filename, ptr noundef nonnull dereferenceable(1) %14) #13, !dbg !420
  %strlen = call i64 @strlen(ptr noundef nonnull @filename), !dbg !421
  %endptr = getelementptr i8, ptr @filename, i64 %strlen, !dbg !421
  store i16 47, ptr %endptr, align 1, !dbg !421
  %15 = load ptr, ptr %arrayidx31, align 8, !dbg !422, !tbaa !342
  %call35 = call ptr @strcat(ptr noundef nonnull @filename, ptr noundef nonnull dereferenceable(1) %15) #13, !dbg !423
  %strlen126 = call i64 @strlen(ptr noundef nonnull @filename), !dbg !424
  %endptr127 = getelementptr i8, ptr @filename, i64 %strlen126, !dbg !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr127, ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false), !dbg !424
  %cmp37 = icmp eq i32 %13, 0, !dbg !425
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !426

if.then38:                                        ; preds = %if.end30
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, ptr noundef nonnull @filename), !dbg !427
  br label %if.end40, !dbg !427

if.end40:                                         ; preds = %if.then38, %if.end30
  %call41 = call ptr @getpdb(ptr noundef nonnull @filename, ptr noundef null) #13, !dbg !428
  store ptr %call41, ptr @m, align 8, !dbg !429, !tbaa !342
  store i8 0, ptr @filename, align 16, !dbg !430, !tbaa !418
  %16 = load ptr, ptr %arrayidx31, align 8, !dbg !431, !tbaa !342
  %call43 = call ptr @strcat(ptr noundef nonnull @filename, ptr noundef nonnull dereferenceable(1) %16) #13, !dbg !432
  %strlen128 = call i64 @strlen(ptr noundef nonnull @filename), !dbg !433
  %endptr129 = getelementptr i8, ptr @filename, i64 %strlen128, !dbg !433
  store i16 47, ptr %endptr129, align 1, !dbg !433
  %17 = load ptr, ptr %arrayidx31, align 8, !dbg !434, !tbaa !342
  %call46 = call ptr @strcat(ptr noundef nonnull @filename, ptr noundef nonnull dereferenceable(1) %17) #13, !dbg !435
  %strlen130 = call i64 @strlen(ptr noundef nonnull @filename), !dbg !436
  %endptr131 = getelementptr i8, ptr @filename, i64 %strlen130, !dbg !436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr131, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false), !dbg !436
  %call48 = call i32 @readparm(ptr noundef %call41, ptr noundef nonnull @filename) #13, !dbg !437
  %18 = load ptr, ptr @m, align 8, !dbg !438, !tbaa !342
  %m_prm = getelementptr inbounds %struct.molecule_t, ptr %18, i64 0, i32 6, !dbg !439
  %19 = load ptr, ptr %m_prm, align 8, !dbg !439, !tbaa !440
  %Natom = getelementptr inbounds %struct.parm, ptr %19, i64 0, i32 4, !dbg !442
  %20 = load i32, ptr %Natom, align 8, !dbg !442, !tbaa !443
  %mul = mul nsw i32 %20, 3, !dbg !446
  %conv = sext i32 %mul to i64, !dbg !447
  %call49 = call ptr @vector(i64 noundef 0, i64 noundef %conv) #13, !dbg !448
  store ptr %call49, ptr @m_xyz, align 8, !dbg !449, !tbaa !342
  %21 = load ptr, ptr @m, align 8, !dbg !450, !tbaa !342
  %m_prm50 = getelementptr inbounds %struct.molecule_t, ptr %21, i64 0, i32 6, !dbg !451
  %22 = load ptr, ptr %m_prm50, align 8, !dbg !451, !tbaa !440
  %Natom51 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 4, !dbg !452
  %23 = load i32, ptr %Natom51, align 8, !dbg !452, !tbaa !443
  %mul52 = mul nsw i32 %23, 3, !dbg !453
  %conv53 = sext i32 %mul52 to i64, !dbg !454
  %call54 = call ptr @vector(i64 noundef 0, i64 noundef %conv53) #13, !dbg !455
  store ptr %call54, ptr @f_xyz, align 8, !dbg !456, !tbaa !342
  %24 = load ptr, ptr @m, align 8, !dbg !457, !tbaa !342
  %m_prm55 = getelementptr inbounds %struct.molecule_t, ptr %24, i64 0, i32 6, !dbg !458
  %25 = load ptr, ptr %m_prm55, align 8, !dbg !458, !tbaa !440
  %Natom56 = getelementptr inbounds %struct.parm, ptr %25, i64 0, i32 4, !dbg !459
  %26 = load i32, ptr %Natom56, align 8, !dbg !459, !tbaa !443
  %mul57 = mul nsw i32 %26, 3, !dbg !460
  %conv58 = sext i32 %mul57 to i64, !dbg !461
  %call59 = call ptr @vector(i64 noundef 0, i64 noundef %conv58) #13, !dbg !462
  store ptr %call59, ptr @v_xyz, align 8, !dbg !463, !tbaa !342
  %27 = load ptr, ptr @m_xyz, align 8, !dbg !464, !tbaa !342
  %call60 = call i32 @setxyz_from_mol(ptr noundef nonnull @m, ptr noundef null, ptr noundef %27) #13, !dbg !465
  store i32 1, ptr @gb, align 4, !dbg !466, !tbaa !336
  %28 = load ptr, ptr @m, align 8, !dbg !467, !tbaa !342
  %call61 = call i32 @mme_init(ptr noundef %28, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @dummy, ptr noundef null) #13, !dbg !468
  %29 = load ptr, ptr @m_xyz, align 8, !dbg !469, !tbaa !342
  %30 = load ptr, ptr @f_xyz, align 8, !dbg !470, !tbaa !342
  %call62 = call double @mme(ptr noundef %29, ptr noundef %30, ptr noundef nonnull @zero) #13, !dbg !471
  %31 = load i32, ptr @mytaskid, align 4, !dbg !472, !tbaa !336
  %cmp63 = icmp eq i32 %31, 0, !dbg !474
  br i1 %cmp63, label %if.end67, label %if.end72, !dbg !475

if.end67:                                         ; preds = %if.end40
  %call66 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, double noundef %call62), !dbg !476
  %.pr = load i32, ptr @mytaskid, align 4, !dbg !477, !tbaa !336
  %cmp68 = icmp eq i32 %.pr, 0, !dbg !479
  br i1 %cmp68, label %if.then70, label %if.end72, !dbg !480

if.then70:                                        ; preds = %if.end67
  %puts132 = call i32 @puts(ptr nonnull @str.12), !dbg !481
  br label %if.end72, !dbg !481

if.end72:                                         ; preds = %if.end40, %if.then70, %if.end67
  %32 = load ptr, ptr @m, align 8, !dbg !482, !tbaa !342
  %m_prm73 = getelementptr inbounds %struct.molecule_t, ptr %32, i64 0, i32 6, !dbg !483
  %33 = load ptr, ptr %m_prm73, align 8, !dbg !483, !tbaa !440
  %Natom74 = getelementptr inbounds %struct.parm, ptr %33, i64 0, i32 4, !dbg !484
  %34 = load i32, ptr %Natom74, align 8, !dbg !484, !tbaa !443
  %mul75 = mul nsw i32 %34, 3, !dbg !485
  %35 = load ptr, ptr @m_xyz, align 8, !dbg !486, !tbaa !342
  %36 = load ptr, ptr @f_xyz, align 8, !dbg !487, !tbaa !342
  %37 = load ptr, ptr @v_xyz, align 8, !dbg !488, !tbaa !342
  %call76 = call i32 @md(i32 noundef %mul75, i32 noundef %steps.0, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef nonnull @mme) #13, !dbg !489
  %38 = load i32, ptr @mytaskid, align 4, !dbg !490, !tbaa !336
  %cmp77 = icmp eq i32 %38, 0, !dbg !492
  br i1 %cmp77, label %if.then79, label %if.end81, !dbg !493

if.then79:                                        ; preds = %if.end72
  %call80 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i32 noundef %call76), !dbg !494
  br label %if.end81, !dbg !494

if.end81:                                         ; preds = %if.then79, %if.end72
  store i32 0, ptr @gb, align 4, !dbg !495, !tbaa !336
  %39 = load ptr, ptr @m, align 8, !dbg !496, !tbaa !342
  %call82 = call i32 @mme_init(ptr noundef %39, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @dummy, ptr noundef null) #13, !dbg !497
  %40 = load ptr, ptr @m_xyz, align 8, !dbg !498, !tbaa !342
  %41 = load ptr, ptr @f_xyz, align 8, !dbg !499, !tbaa !342
  %call83 = call double @mme(ptr noundef %40, ptr noundef %41, ptr noundef nonnull @zero) #13, !dbg !500
  %42 = load i32, ptr @mytaskid, align 4, !dbg !501, !tbaa !336
  %cmp84 = icmp eq i32 %42, 0, !dbg !503
  br i1 %cmp84, label %if.end88, label %if.end93, !dbg !504

if.end88:                                         ; preds = %if.end81
  %call87 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, double noundef %call83), !dbg !505
  %.pr137 = load i32, ptr @mytaskid, align 4, !dbg !506, !tbaa !336
  %cmp89 = icmp eq i32 %.pr137, 0, !dbg !508
  br i1 %cmp89, label %if.then91, label %if.end93, !dbg !509

if.then91:                                        ; preds = %if.end88
  %puts = call i32 @puts(ptr nonnull @str), !dbg !510
  br label %if.end93, !dbg !510

if.end93:                                         ; preds = %if.end81, %if.then91, %if.end88
  %43 = load ptr, ptr @m, align 8, !dbg !511, !tbaa !342
  %m_prm94 = getelementptr inbounds %struct.molecule_t, ptr %43, i64 0, i32 6, !dbg !512
  %44 = load ptr, ptr %m_prm94, align 8, !dbg !512, !tbaa !440
  %Natom95 = getelementptr inbounds %struct.parm, ptr %44, i64 0, i32 4, !dbg !513
  %45 = load i32, ptr %Natom95, align 8, !dbg !513, !tbaa !443
  %mul96 = mul nsw i32 %45, 3, !dbg !514
  %46 = load ptr, ptr @m_xyz, align 8, !dbg !515, !tbaa !342
  %47 = load ptr, ptr @f_xyz, align 8, !dbg !516, !tbaa !342
  %48 = load ptr, ptr @v_xyz, align 8, !dbg !517, !tbaa !342
  %call97 = call i32 @md(i32 noundef %mul96, i32 noundef %steps.0, ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef nonnull @mme) #13, !dbg !518
  %49 = load i32, ptr @mytaskid, align 4, !dbg !519, !tbaa !336
  %cmp98 = icmp eq i32 %49, 0, !dbg !521
  br i1 %cmp98, label %if.then100, label %if.end102, !dbg !522

if.then100:                                       ; preds = %if.end93
  %call101 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i32 noundef %call97), !dbg !523
  br label %if.end102, !dbg !523

if.end102:                                        ; preds = %if.then100, %if.end93
  %50 = load ptr, ptr @m_xyz, align 8, !dbg !524, !tbaa !342
  %51 = load ptr, ptr @m, align 8, !dbg !525, !tbaa !342
  %m_prm103 = getelementptr inbounds %struct.molecule_t, ptr %51, i64 0, i32 6, !dbg !526
  %52 = load ptr, ptr %m_prm103, align 8, !dbg !526, !tbaa !440
  %Natom104 = getelementptr inbounds %struct.parm, ptr %52, i64 0, i32 4, !dbg !527
  %53 = load i32, ptr %Natom104, align 8, !dbg !527, !tbaa !443
  %mul105 = mul nsw i32 %53, 3, !dbg !528
  %conv106 = sext i32 %mul105 to i64, !dbg !529
  call void @free_vector(ptr noundef %50, i64 noundef 0, i64 noundef %conv106) #13, !dbg !530
  %54 = load ptr, ptr @f_xyz, align 8, !dbg !531, !tbaa !342
  %55 = load ptr, ptr @m, align 8, !dbg !532, !tbaa !342
  %m_prm107 = getelementptr inbounds %struct.molecule_t, ptr %55, i64 0, i32 6, !dbg !533
  %56 = load ptr, ptr %m_prm107, align 8, !dbg !533, !tbaa !440
  %Natom108 = getelementptr inbounds %struct.parm, ptr %56, i64 0, i32 4, !dbg !534
  %57 = load i32, ptr %Natom108, align 8, !dbg !534, !tbaa !443
  %mul109 = mul nsw i32 %57, 3, !dbg !535
  %conv110 = sext i32 %mul109 to i64, !dbg !536
  call void @free_vector(ptr noundef %54, i64 noundef 0, i64 noundef %conv110) #13, !dbg !537
  %58 = load ptr, ptr @v_xyz, align 8, !dbg !538, !tbaa !342
  %59 = load ptr, ptr @m, align 8, !dbg !539, !tbaa !342
  %m_prm111 = getelementptr inbounds %struct.molecule_t, ptr %59, i64 0, i32 6, !dbg !540
  %60 = load ptr, ptr %m_prm111, align 8, !dbg !540, !tbaa !440
  %Natom112 = getelementptr inbounds %struct.parm, ptr %60, i64 0, i32 4, !dbg !541
  %61 = load i32, ptr %Natom112, align 8, !dbg !541, !tbaa !443
  %mul113 = mul nsw i32 %61, 3, !dbg !542
  %conv114 = sext i32 %mul113 to i64, !dbg !543
  call void @free_vector(ptr noundef %58, i64 noundef 0, i64 noundef %conv114) #13, !dbg !544
  %call115 = call i32 @mpifinalize() #13, !dbg !545
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seed) #13, !dbg !546
  ret i32 0, !dbg !547
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !548 i32 @mpiinit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !554 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

declare !dbg !558 i32 @mpierror(i32 noundef) local_unnamed_addr #4

declare !dbg !561 i32 @setseed(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

declare !dbg !564 ptr @getpdb(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !567 i32 @readparm(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !570 ptr @vector(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !573 i32 @setxyz_from_mol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !577 i32 @mme_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !582 double @mme(ptr noundef, ptr noundef, ptr noundef) #4

declare !dbg !585 i32 @md(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !589 void @free_vector(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !592 i32 @mpifinalize() local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318}
!llvm.ident = !{!319}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cg_emsg_lineno", scope: !2, file: !13, line: 28, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/nabmd.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r", checksumkind: CSK_MD5, checksum: "84aa1c327b0916f7e08adcd5a18300c4")
!4 = !{!5, !6, !9}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{!0, !11, !17, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !311}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "cg_nfname", scope: !2, file: !13, line: 29, type: !14, isLocal: false, isDefinition: true)
!13 = !DIFile(filename: "apps/544.nab_r/src/nabmd.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "84aa1c327b0916f7e08adcd5a18300c4")
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 256)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !13, line: 19, type: !19, isLocal: true, isDefinition: true)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !21, line: 126, baseType: !22)
!21 = !DIFile(filename: "apps/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e6947e1b068a9350a45ab4ee56d7a2de")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !21, line: 118, size: 1088, elements: !23)
!23 = !{!24, !31, !33, !126, !127, !128, !129}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !22, file: !21, line: 119, baseType: !25, size: 768)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !21, line: 13, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 768, elements: !28)
!27 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!28 = !{!29, !30}
!29 = !DISubrange(count: 4)
!30 = !DISubrange(count: 3)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !22, file: !21, line: 120, baseType: !32, size: 32, offset: 768)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !21, line: 6, baseType: !5)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !22, file: !21, line: 121, baseType: !34, size: 64, offset: 832)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !21, line: 93, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !21, line: 84, size: 384, elements: !37)
!37 = !{!38, !41, !42, !43, !45, !47, !48, !49}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !36, file: !21, line: 85, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !21, line: 17, baseType: !8)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !36, file: !21, line: 86, baseType: !32, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !36, file: !21, line: 87, baseType: !32, size: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !36, file: !21, line: 88, baseType: !44, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !36, file: !21, line: 89, baseType: !46, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !36, file: !21, line: 90, baseType: !32, size: 32, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !36, file: !21, line: 91, baseType: !32, size: 32, offset: 288)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !36, file: !21, line: 92, baseType: !50, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !21, line: 82, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !21, line: 63, size: 1024, elements: !54)
!54 = !{!55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !76, !77, !83, !84, !93, !94, !96}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !53, file: !21, line: 64, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !53, file: !21, line: 65, baseType: !32, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !53, file: !21, line: 66, baseType: !32, size: 32, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !53, file: !21, line: 67, baseType: !32, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !53, file: !21, line: 68, baseType: !39, size: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !53, file: !21, line: 69, baseType: !39, size: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !53, file: !21, line: 70, baseType: !32, size: 32, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !53, file: !21, line: 71, baseType: !32, size: 32, offset: 352)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !53, file: !21, line: 72, baseType: !32, size: 32, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !53, file: !21, line: 73, baseType: !46, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !53, file: !21, line: 74, baseType: !67, size: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !21, line: 52, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !21, line: 47, size: 192, elements: !70)
!70 = !{!71, !73, !74, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !69, file: !21, line: 48, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !69, file: !21, line: 49, baseType: !32, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !69, file: !21, line: 50, baseType: !32, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !69, file: !21, line: 51, baseType: !32, size: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !53, file: !21, line: 75, baseType: !32, size: 32, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !53, file: !21, line: 76, baseType: !78, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !21, line: 54, baseType: !80)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 2)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !53, file: !21, line: 77, baseType: !32, size: 32, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !53, file: !21, line: 78, baseType: !85, size: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !21, line: 61, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !21, line: 58, size: 192, elements: !88)
!88 = !{!89, !92}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !87, file: !21, line: 59, baseType: !90, size: 128)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, elements: !91)
!91 = !{!29}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !87, file: !21, line: 60, baseType: !27, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !53, file: !21, line: 79, baseType: !32, size: 32, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !53, file: !21, line: 80, baseType: !95, size: 64, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !53, file: !21, line: 81, baseType: !97, size: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !21, line: 45, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !21, line: 25, size: 1408, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !125}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !99, file: !21, line: 26, baseType: !39, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !99, file: !21, line: 27, baseType: !39, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !99, file: !21, line: 28, baseType: !32, size: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !99, file: !21, line: 29, baseType: !32, size: 32, offset: 160)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !99, file: !21, line: 30, baseType: !106, size: 256, offset: 192)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !99, file: !21, line: 31, baseType: !56, size: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !99, file: !21, line: 32, baseType: !27, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !99, file: !21, line: 33, baseType: !27, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !99, file: !21, line: 34, baseType: !27, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !99, file: !21, line: 35, baseType: !27, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !99, file: !21, line: 36, baseType: !39, size: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !99, file: !21, line: 37, baseType: !32, size: 32, offset: 832)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !99, file: !21, line: 38, baseType: !27, size: 64, offset: 896)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !99, file: !21, line: 39, baseType: !27, size: 64, offset: 960)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !99, file: !21, line: 40, baseType: !32, size: 32, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !99, file: !21, line: 41, baseType: !32, size: 32, offset: 1056)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !99, file: !21, line: 42, baseType: !39, size: 64, offset: 1088)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !99, file: !21, line: 43, baseType: !122, size: 192, offset: 1152)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !21, line: 12, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 192, elements: !124)
!124 = !{!30}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !99, file: !21, line: 44, baseType: !27, size: 64, offset: 1344)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !22, file: !21, line: 122, baseType: !32, size: 32, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !22, file: !21, line: 123, baseType: !32, size: 32, offset: 928)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !22, file: !21, line: 124, baseType: !32, size: 32, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !22, file: !21, line: 125, baseType: !130, size: 64, offset: 1024)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !21, line: 115, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !21, line: 95, size: 5760, elements: !133)
!133 = !{!134, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !132, file: !21, line: 96, baseType: !135, size: 648)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 648, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 81)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !132, file: !21, line: 97, baseType: !32, size: 32, offset: 672)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !132, file: !21, line: 97, baseType: !32, size: 32, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !132, file: !21, line: 97, baseType: !32, size: 32, offset: 736)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !132, file: !21, line: 98, baseType: !32, size: 32, offset: 768)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !132, file: !21, line: 98, baseType: !32, size: 32, offset: 800)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !132, file: !21, line: 98, baseType: !32, size: 32, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !132, file: !21, line: 98, baseType: !32, size: 32, offset: 864)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !132, file: !21, line: 98, baseType: !32, size: 32, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !132, file: !21, line: 98, baseType: !32, size: 32, offset: 928)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !132, file: !21, line: 99, baseType: !32, size: 32, offset: 960)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !132, file: !21, line: 99, baseType: !32, size: 32, offset: 992)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !132, file: !21, line: 99, baseType: !32, size: 32, offset: 1024)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !132, file: !21, line: 99, baseType: !32, size: 32, offset: 1056)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !132, file: !21, line: 99, baseType: !32, size: 32, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !132, file: !21, line: 99, baseType: !32, size: 32, offset: 1120)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !132, file: !21, line: 100, baseType: !32, size: 32, offset: 1152)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !132, file: !21, line: 100, baseType: !32, size: 32, offset: 1184)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !132, file: !21, line: 100, baseType: !32, size: 32, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !132, file: !21, line: 100, baseType: !32, size: 32, offset: 1248)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !132, file: !21, line: 100, baseType: !32, size: 32, offset: 1280)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !132, file: !21, line: 100, baseType: !32, size: 32, offset: 1312)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !132, file: !21, line: 101, baseType: !32, size: 32, offset: 1344)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !132, file: !21, line: 101, baseType: !32, size: 32, offset: 1376)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !132, file: !21, line: 101, baseType: !32, size: 32, offset: 1408)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !132, file: !21, line: 101, baseType: !32, size: 32, offset: 1440)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !132, file: !21, line: 101, baseType: !32, size: 32, offset: 1472)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !132, file: !21, line: 101, baseType: !32, size: 32, offset: 1504)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !132, file: !21, line: 101, baseType: !32, size: 32, offset: 1536)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !132, file: !21, line: 101, baseType: !32, size: 32, offset: 1568)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !132, file: !21, line: 102, baseType: !32, size: 32, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !132, file: !21, line: 102, baseType: !32, size: 32, offset: 1632)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !132, file: !21, line: 102, baseType: !32, size: 32, offset: 1664)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !132, file: !21, line: 103, baseType: !39, size: 64, offset: 1728)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !132, file: !21, line: 103, baseType: !39, size: 64, offset: 1792)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !132, file: !21, line: 103, baseType: !39, size: 64, offset: 1856)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !132, file: !21, line: 103, baseType: !39, size: 64, offset: 1920)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !132, file: !21, line: 104, baseType: !175, size: 64, offset: 1984)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !132, file: !21, line: 104, baseType: !175, size: 64, offset: 2048)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !132, file: !21, line: 104, baseType: !175, size: 64, offset: 2112)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !132, file: !21, line: 104, baseType: !175, size: 64, offset: 2176)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !132, file: !21, line: 104, baseType: !175, size: 64, offset: 2240)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !132, file: !21, line: 104, baseType: !175, size: 64, offset: 2304)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !132, file: !21, line: 104, baseType: !175, size: 64, offset: 2368)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !132, file: !21, line: 104, baseType: !175, size: 64, offset: 2432)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !132, file: !21, line: 104, baseType: !175, size: 64, offset: 2496)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !132, file: !21, line: 105, baseType: !175, size: 64, offset: 2560)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !132, file: !21, line: 105, baseType: !175, size: 64, offset: 2624)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !132, file: !21, line: 105, baseType: !175, size: 64, offset: 2688)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !132, file: !21, line: 105, baseType: !175, size: 64, offset: 2752)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !132, file: !21, line: 105, baseType: !175, size: 64, offset: 2816)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !132, file: !21, line: 105, baseType: !175, size: 64, offset: 2880)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !132, file: !21, line: 105, baseType: !175, size: 64, offset: 2944)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !132, file: !21, line: 106, baseType: !123, size: 192, offset: 3008)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !132, file: !21, line: 106, baseType: !27, size: 64, offset: 3200)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !132, file: !21, line: 106, baseType: !27, size: 64, offset: 3264)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !132, file: !21, line: 106, baseType: !27, size: 64, offset: 3328)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !132, file: !21, line: 106, baseType: !27, size: 64, offset: 3392)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !132, file: !21, line: 106, baseType: !27, size: 64, offset: 3456)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !132, file: !21, line: 107, baseType: !95, size: 64, offset: 3520)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !132, file: !21, line: 107, baseType: !95, size: 64, offset: 3584)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !132, file: !21, line: 107, baseType: !95, size: 64, offset: 3648)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !132, file: !21, line: 107, baseType: !95, size: 64, offset: 3712)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !132, file: !21, line: 107, baseType: !95, size: 64, offset: 3776)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !132, file: !21, line: 107, baseType: !95, size: 64, offset: 3840)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !132, file: !21, line: 108, baseType: !95, size: 64, offset: 3904)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !132, file: !21, line: 108, baseType: !95, size: 64, offset: 3968)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !132, file: !21, line: 108, baseType: !95, size: 64, offset: 4032)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !132, file: !21, line: 108, baseType: !95, size: 64, offset: 4096)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !132, file: !21, line: 108, baseType: !95, size: 64, offset: 4160)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !132, file: !21, line: 108, baseType: !95, size: 64, offset: 4224)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !132, file: !21, line: 109, baseType: !95, size: 64, offset: 4288)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !132, file: !21, line: 109, baseType: !95, size: 64, offset: 4352)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !132, file: !21, line: 109, baseType: !95, size: 64, offset: 4416)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !132, file: !21, line: 109, baseType: !95, size: 64, offset: 4480)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !132, file: !21, line: 109, baseType: !95, size: 64, offset: 4544)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !132, file: !21, line: 110, baseType: !95, size: 64, offset: 4608)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !132, file: !21, line: 110, baseType: !95, size: 64, offset: 4672)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !132, file: !21, line: 110, baseType: !95, size: 64, offset: 4736)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !132, file: !21, line: 110, baseType: !95, size: 64, offset: 4800)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !132, file: !21, line: 110, baseType: !95, size: 64, offset: 4864)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !132, file: !21, line: 111, baseType: !95, size: 64, offset: 4928)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !132, file: !21, line: 111, baseType: !95, size: 64, offset: 4992)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !132, file: !21, line: 111, baseType: !95, size: 64, offset: 5056)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !132, file: !21, line: 111, baseType: !95, size: 64, offset: 5120)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !132, file: !21, line: 111, baseType: !95, size: 64, offset: 5184)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !132, file: !21, line: 111, baseType: !95, size: 64, offset: 5248)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !132, file: !21, line: 112, baseType: !95, size: 64, offset: 5312)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !132, file: !21, line: 112, baseType: !95, size: 64, offset: 5376)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !132, file: !21, line: 112, baseType: !95, size: 64, offset: 5440)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !132, file: !21, line: 112, baseType: !95, size: 64, offset: 5504)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !132, file: !21, line: 113, baseType: !95, size: 64, offset: 5568)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !132, file: !21, line: 113, baseType: !95, size: 64, offset: 5632)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !132, file: !21, line: 114, baseType: !175, size: 64, offset: 5696)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "ier", scope: !2, file: !13, line: 20, type: !32, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "mytaskid", scope: !2, file: !13, line: 20, type: !32, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "numtasks", scope: !2, file: !13, line: 20, type: !32, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "m_xyz", scope: !2, file: !13, line: 21, type: !175, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "f_xyz", scope: !2, file: !13, line: 21, type: !175, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "v_xyz", scope: !2, file: !13, line: 21, type: !175, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "fret", scope: !2, file: !13, line: 22, type: !27, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "dummy", scope: !2, file: !13, line: 23, type: !122, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "filename", scope: !2, file: !13, line: 24, type: !14, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "nabout", scope: !2, file: !13, line: 37, type: !252, isLocal: false, isDefinition: true)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !255)
!254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !257)
!256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !273, !275, !276, !277, !281, !283, !285, !289, !292, !294, !297, !300, !301, !302, !306, !307}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !255, file: !256, line: 51, baseType: !5, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !255, file: !256, line: 54, baseType: !7, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !255, file: !256, line: 55, baseType: !7, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !255, file: !256, line: 56, baseType: !7, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !255, file: !256, line: 57, baseType: !7, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !255, file: !256, line: 58, baseType: !7, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !255, file: !256, line: 59, baseType: !7, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !255, file: !256, line: 60, baseType: !7, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !255, file: !256, line: 61, baseType: !7, size: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !255, file: !256, line: 64, baseType: !7, size: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !255, file: !256, line: 65, baseType: !7, size: 64, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !255, file: !256, line: 66, baseType: !7, size: 64, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !255, file: !256, line: 68, baseType: !271, size: 64, offset: 768)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !256, line: 36, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !255, file: !256, line: 70, baseType: !274, size: 64, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !255, file: !256, line: 72, baseType: !5, size: 32, offset: 896)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !255, file: !256, line: 73, baseType: !5, size: 32, offset: 928)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !255, file: !256, line: 74, baseType: !278, size: 64, offset: 960)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !279, line: 152, baseType: !280)
!279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!280 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !255, file: !256, line: 77, baseType: !282, size: 16, offset: 1024)
!282 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !255, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!284 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !255, file: !256, line: 79, baseType: !286, size: 8, offset: 1048)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 1)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !255, file: !256, line: 81, baseType: !290, size: 64, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !256, line: 43, baseType: null)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !255, file: !256, line: 89, baseType: !293, size: 64, offset: 1152)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !279, line: 153, baseType: !280)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !255, file: !256, line: 91, baseType: !295, size: 64, offset: 1216)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !256, line: 37, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !255, file: !256, line: 92, baseType: !298, size: 64, offset: 1280)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !256, line: 38, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !255, file: !256, line: 93, baseType: !274, size: 64, offset: 1344)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !255, file: !256, line: 94, baseType: !9, size: 64, offset: 1408)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !255, file: !256, line: 95, baseType: !303, size: 64, offset: 1472)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !304, line: 46, baseType: !305)
!304 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!305 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !255, file: !256, line: 96, baseType: !5, size: 32, offset: 1536)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !255, file: !256, line: 98, baseType: !308, size: 160, offset: 1568)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 20)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !13, line: 20, type: !32, isLocal: true, isDefinition: true)
!313 = !{i32 7, !"Dwarf Version", i32 5}
!314 = !{i32 2, !"Debug Info Version", i32 3}
!315 = !{i32 1, !"wchar_size", i32 4}
!316 = !{i32 7, !"PIC Level", i32 2}
!317 = !{i32 7, !"PIE Level", i32 2}
!318 = !{i32 7, !"uwtable", i32 2}
!319 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!320 = distinct !DISubprogram(name: "CG_exit", scope: !13, file: !13, line: 33, type: !321, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{!5, !5}
!323 = !{!324}
!324 = !DILocalVariable(name: "i", arg: 1, scope: !320, file: !13, line: 33, type: !5)
!325 = !DILocation(line: 0, scope: !320)
!326 = !DILocation(line: 34, column: 3, scope: !320)
!327 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 39, type: !328, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !330)
!328 = !DISubroutineType(types: !329)
!329 = !{!5, !5, !6}
!330 = !{!331, !332, !333, !334}
!331 = !DILocalVariable(name: "argc", arg: 1, scope: !327, file: !13, line: 39, type: !5)
!332 = !DILocalVariable(name: "argv", arg: 2, scope: !327, file: !13, line: 39, type: !6)
!333 = !DILocalVariable(name: "seed", scope: !327, file: !13, line: 42, type: !5)
!334 = !DILocalVariable(name: "steps", scope: !327, file: !13, line: 43, type: !5)
!335 = !DILocation(line: 0, scope: !327)
!336 = !{!337, !337, i64 0}
!337 = !{!"int", !338, i64 0}
!338 = !{!"omnipotent char", !339, i64 0}
!339 = !{!"Simple C/C++ TBAA"}
!340 = !DILocation(line: 42, column: 3, scope: !327)
!341 = !DILocation(line: 45, column: 12, scope: !327)
!342 = !{!343, !343, i64 0}
!343 = !{!"any pointer", !338, i64 0}
!344 = !DILocation(line: 45, column: 10, scope: !327)
!345 = !DILocation(line: 49, column: 3, scope: !327)
!346 = !DILocation(line: 53, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !327, file: !13, line: 53, column: 7)
!348 = !DILocation(line: 53, column: 12, scope: !347)
!349 = !DILocation(line: 53, column: 7, scope: !327)
!350 = !DILocation(line: 54, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !13, line: 54, column: 9)
!352 = distinct !DILexicalBlock(scope: !347, file: !13, line: 53, column: 17)
!353 = !DILocation(line: 54, column: 18, scope: !351)
!354 = !DILocation(line: 54, column: 9, scope: !352)
!355 = !DILocation(line: 55, column: 70, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !13, line: 54, column: 24)
!357 = !DILocation(line: 55, column: 7, scope: !356)
!358 = !DILocation(line: 56, column: 15, scope: !356)
!359 = !DILocation(line: 56, column: 7, scope: !356)
!360 = !DILocation(line: 57, column: 5, scope: !356)
!361 = !DILocation(line: 0, scope: !347)
!362 = !DILocation(line: 62, column: 9, scope: !363)
!363 = distinct !DILexicalBlock(scope: !327, file: !13, line: 62, column: 7)
!364 = !DILocation(line: 62, column: 27, scope: !363)
!365 = !DILocation(line: 62, column: 7, scope: !327)
!366 = !DILocation(line: 63, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !13, line: 63, column: 9)
!368 = distinct !DILexicalBlock(scope: !363, file: !13, line: 62, column: 33)
!369 = !DILocation(line: 63, column: 18, scope: !367)
!370 = !DILocation(line: 63, column: 9, scope: !368)
!371 = !DILocation(line: 64, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !13, line: 63, column: 24)
!373 = !DILocation(line: 65, column: 15, scope: !372)
!374 = !DILocation(line: 65, column: 7, scope: !372)
!375 = !DILocation(line: 66, column: 5, scope: !372)
!376 = !DILocation(line: 67, column: 5, scope: !368)
!377 = !DILocation(line: 72, column: 16, scope: !327)
!378 = !DILocalVariable(name: "__nptr", arg: 1, scope: !379, file: !380, line: 361, type: !383)
!379 = distinct !DISubprogram(name: "atoi", scope: !380, file: !380, line: 361, type: !381, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!380 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!381 = !DISubroutineType(types: !382)
!382 = !{!5, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!385 = !{!378}
!386 = !DILocation(line: 0, scope: !379, inlinedAt: !387)
!387 = distinct !DILocation(line: 72, column: 10, scope: !327)
!388 = !DILocation(line: 363, column: 16, scope: !379, inlinedAt: !387)
!389 = !DILocation(line: 363, column: 10, scope: !379, inlinedAt: !387)
!390 = !DILocation(line: 72, column: 8, scope: !327)
!391 = !DILocation(line: 73, column: 3, scope: !327)
!392 = !DILocation(line: 75, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !327, file: !13, line: 75, column: 7)
!394 = !DILocation(line: 75, column: 12, scope: !393)
!395 = !DILocation(line: 75, column: 7, scope: !327)
!396 = !DILocation(line: 76, column: 19, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !13, line: 75, column: 17)
!398 = !DILocation(line: 0, scope: !379, inlinedAt: !399)
!399 = distinct !DILocation(line: 76, column: 13, scope: !397)
!400 = !DILocation(line: 363, column: 16, scope: !379, inlinedAt: !399)
!401 = !DILocation(line: 363, column: 10, scope: !379, inlinedAt: !399)
!402 = !DILocation(line: 77, column: 15, scope: !403)
!403 = distinct !DILexicalBlock(scope: !397, file: !13, line: 77, column: 9)
!404 = !DILocation(line: 77, column: 9, scope: !397)
!405 = !DILocation(line: 80, column: 3, scope: !397)
!406 = !DILocation(line: 85, column: 7, scope: !407)
!407 = distinct !DILexicalBlock(scope: !327, file: !13, line: 85, column: 7)
!408 = !DILocation(line: 85, column: 16, scope: !407)
!409 = !DILocation(line: 85, column: 7, scope: !327)
!410 = !DILocation(line: 87, column: 32, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !13, line: 85, column: 22)
!412 = !DILocation(line: 87, column: 41, scope: !411)
!413 = !DILocation(line: 87, column: 5, scope: !411)
!414 = !DILocation(line: 100, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !327, file: !13, line: 100, column: 7)
!416 = !DILocation(line: 91, column: 3, scope: !411)
!417 = !DILocation(line: 95, column: 15, scope: !327)
!418 = !{!338, !338, i64 0}
!419 = !DILocation(line: 96, column: 20, scope: !327)
!420 = !DILocation(line: 96, column: 3, scope: !327)
!421 = !DILocation(line: 97, column: 3, scope: !327)
!422 = !DILocation(line: 98, column: 20, scope: !327)
!423 = !DILocation(line: 98, column: 3, scope: !327)
!424 = !DILocation(line: 99, column: 3, scope: !327)
!425 = !DILocation(line: 100, column: 16, scope: !415)
!426 = !DILocation(line: 100, column: 7, scope: !327)
!427 = !DILocation(line: 100, column: 22, scope: !415)
!428 = !DILocation(line: 101, column: 7, scope: !327)
!429 = !DILocation(line: 101, column: 5, scope: !327)
!430 = !DILocation(line: 105, column: 15, scope: !327)
!431 = !DILocation(line: 106, column: 20, scope: !327)
!432 = !DILocation(line: 106, column: 3, scope: !327)
!433 = !DILocation(line: 107, column: 3, scope: !327)
!434 = !DILocation(line: 108, column: 20, scope: !327)
!435 = !DILocation(line: 108, column: 3, scope: !327)
!436 = !DILocation(line: 109, column: 3, scope: !327)
!437 = !DILocation(line: 110, column: 3, scope: !327)
!438 = !DILocation(line: 114, column: 25, scope: !327)
!439 = !DILocation(line: 114, column: 28, scope: !327)
!440 = !{!441, !343, i64 128}
!441 = !{!"molecule_t", !338, i64 0, !337, i64 96, !343, i64 104, !337, i64 112, !337, i64 116, !337, i64 120, !343, i64 128}
!442 = !DILocation(line: 114, column: 35, scope: !327)
!443 = !{!444, !337, i64 96}
!444 = !{!"parm", !338, i64 0, !337, i64 84, !337, i64 88, !337, i64 92, !337, i64 96, !337, i64 100, !337, i64 104, !337, i64 108, !337, i64 112, !337, i64 116, !337, i64 120, !337, i64 124, !337, i64 128, !337, i64 132, !337, i64 136, !337, i64 140, !337, i64 144, !337, i64 148, !337, i64 152, !337, i64 156, !337, i64 160, !337, i64 164, !337, i64 168, !337, i64 172, !337, i64 176, !337, i64 180, !337, i64 184, !337, i64 188, !337, i64 192, !337, i64 196, !337, i64 200, !337, i64 204, !337, i64 208, !343, i64 216, !343, i64 224, !343, i64 232, !343, i64 240, !343, i64 248, !343, i64 256, !343, i64 264, !343, i64 272, !343, i64 280, !343, i64 288, !343, i64 296, !343, i64 304, !343, i64 312, !343, i64 320, !343, i64 328, !343, i64 336, !343, i64 344, !343, i64 352, !343, i64 360, !343, i64 368, !338, i64 376, !445, i64 400, !445, i64 408, !445, i64 416, !445, i64 424, !445, i64 432, !343, i64 440, !343, i64 448, !343, i64 456, !343, i64 464, !343, i64 472, !343, i64 480, !343, i64 488, !343, i64 496, !343, i64 504, !343, i64 512, !343, i64 520, !343, i64 528, !343, i64 536, !343, i64 544, !343, i64 552, !343, i64 560, !343, i64 568, !343, i64 576, !343, i64 584, !343, i64 592, !343, i64 600, !343, i64 608, !343, i64 616, !343, i64 624, !343, i64 632, !343, i64 640, !343, i64 648, !343, i64 656, !343, i64 664, !343, i64 672, !343, i64 680, !343, i64 688, !343, i64 696, !343, i64 704, !343, i64 712}
!445 = !{!"double", !338, i64 0}
!446 = !DILocation(line: 114, column: 23, scope: !327)
!447 = !DILocation(line: 114, column: 22, scope: !327)
!448 = !DILocation(line: 114, column: 11, scope: !327)
!449 = !DILocation(line: 114, column: 9, scope: !327)
!450 = !DILocation(line: 115, column: 25, scope: !327)
!451 = !DILocation(line: 115, column: 28, scope: !327)
!452 = !DILocation(line: 115, column: 35, scope: !327)
!453 = !DILocation(line: 115, column: 23, scope: !327)
!454 = !DILocation(line: 115, column: 22, scope: !327)
!455 = !DILocation(line: 115, column: 11, scope: !327)
!456 = !DILocation(line: 115, column: 9, scope: !327)
!457 = !DILocation(line: 116, column: 25, scope: !327)
!458 = !DILocation(line: 116, column: 28, scope: !327)
!459 = !DILocation(line: 116, column: 35, scope: !327)
!460 = !DILocation(line: 116, column: 23, scope: !327)
!461 = !DILocation(line: 116, column: 22, scope: !327)
!462 = !DILocation(line: 116, column: 11, scope: !327)
!463 = !DILocation(line: 116, column: 9, scope: !327)
!464 = !DILocation(line: 120, column: 31, scope: !327)
!465 = !DILocation(line: 120, column: 3, scope: !327)
!466 = !DILocation(line: 124, column: 6, scope: !327)
!467 = !DILocation(line: 128, column: 13, scope: !327)
!468 = !DILocation(line: 128, column: 3, scope: !327)
!469 = !DILocation(line: 129, column: 15, scope: !327)
!470 = !DILocation(line: 129, column: 22, scope: !327)
!471 = !DILocation(line: 129, column: 10, scope: !327)
!472 = !DILocation(line: 130, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !327, file: !13, line: 130, column: 7)
!474 = !DILocation(line: 130, column: 16, scope: !473)
!475 = !DILocation(line: 130, column: 7, scope: !327)
!476 = !DILocation(line: 130, column: 23, scope: !473)
!477 = !DILocation(line: 134, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !327, file: !13, line: 134, column: 7)
!479 = !DILocation(line: 134, column: 16, scope: !478)
!480 = !DILocation(line: 134, column: 7, scope: !327)
!481 = !DILocation(line: 135, column: 5, scope: !478)
!482 = !DILocation(line: 136, column: 16, scope: !327)
!483 = !DILocation(line: 136, column: 19, scope: !327)
!484 = !DILocation(line: 136, column: 26, scope: !327)
!485 = !DILocation(line: 136, column: 14, scope: !327)
!486 = !DILocation(line: 136, column: 41, scope: !327)
!487 = !DILocation(line: 136, column: 48, scope: !327)
!488 = !DILocation(line: 136, column: 55, scope: !327)
!489 = !DILocation(line: 136, column: 9, scope: !327)
!490 = !DILocation(line: 137, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !327, file: !13, line: 137, column: 7)
!492 = !DILocation(line: 137, column: 16, scope: !491)
!493 = !DILocation(line: 137, column: 7, scope: !327)
!494 = !DILocation(line: 137, column: 23, scope: !491)
!495 = !DILocation(line: 147, column: 6, scope: !327)
!496 = !DILocation(line: 151, column: 13, scope: !327)
!497 = !DILocation(line: 151, column: 3, scope: !327)
!498 = !DILocation(line: 152, column: 15, scope: !327)
!499 = !DILocation(line: 152, column: 22, scope: !327)
!500 = !DILocation(line: 152, column: 10, scope: !327)
!501 = !DILocation(line: 153, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !327, file: !13, line: 153, column: 7)
!503 = !DILocation(line: 153, column: 16, scope: !502)
!504 = !DILocation(line: 153, column: 7, scope: !327)
!505 = !DILocation(line: 153, column: 23, scope: !502)
!506 = !DILocation(line: 157, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !327, file: !13, line: 157, column: 7)
!508 = !DILocation(line: 157, column: 16, scope: !507)
!509 = !DILocation(line: 157, column: 7, scope: !327)
!510 = !DILocation(line: 158, column: 5, scope: !507)
!511 = !DILocation(line: 159, column: 16, scope: !327)
!512 = !DILocation(line: 159, column: 19, scope: !327)
!513 = !DILocation(line: 159, column: 26, scope: !327)
!514 = !DILocation(line: 159, column: 14, scope: !327)
!515 = !DILocation(line: 159, column: 41, scope: !327)
!516 = !DILocation(line: 159, column: 48, scope: !327)
!517 = !DILocation(line: 159, column: 55, scope: !327)
!518 = !DILocation(line: 159, column: 9, scope: !327)
!519 = !DILocation(line: 160, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !327, file: !13, line: 160, column: 7)
!521 = !DILocation(line: 160, column: 16, scope: !520)
!522 = !DILocation(line: 160, column: 7, scope: !327)
!523 = !DILocation(line: 160, column: 23, scope: !520)
!524 = !DILocation(line: 170, column: 16, scope: !327)
!525 = !DILocation(line: 170, column: 29, scope: !327)
!526 = !DILocation(line: 170, column: 32, scope: !327)
!527 = !DILocation(line: 170, column: 39, scope: !327)
!528 = !DILocation(line: 170, column: 27, scope: !327)
!529 = !DILocation(line: 170, column: 26, scope: !327)
!530 = !DILocation(line: 170, column: 3, scope: !327)
!531 = !DILocation(line: 171, column: 16, scope: !327)
!532 = !DILocation(line: 171, column: 29, scope: !327)
!533 = !DILocation(line: 171, column: 32, scope: !327)
!534 = !DILocation(line: 171, column: 39, scope: !327)
!535 = !DILocation(line: 171, column: 27, scope: !327)
!536 = !DILocation(line: 171, column: 26, scope: !327)
!537 = !DILocation(line: 171, column: 3, scope: !327)
!538 = !DILocation(line: 172, column: 16, scope: !327)
!539 = !DILocation(line: 172, column: 29, scope: !327)
!540 = !DILocation(line: 172, column: 32, scope: !327)
!541 = !DILocation(line: 172, column: 39, scope: !327)
!542 = !DILocation(line: 172, column: 27, scope: !327)
!543 = !DILocation(line: 172, column: 26, scope: !327)
!544 = !DILocation(line: 172, column: 3, scope: !327)
!545 = !DILocation(line: 176, column: 3, scope: !327)
!546 = !DILocation(line: 179, column: 1, scope: !327)
!547 = !DILocation(line: 178, column: 3, scope: !327)
!548 = !DISubprogram(name: "mpiinit", scope: !549, file: !549, line: 152, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!549 = !DIFile(filename: "apps/544.nab_r/src/nabcode.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "49cbb45f486c68a63777a2b14b8fe592")
!550 = !DISubroutineType(types: !551)
!551 = !{!32, !95, !552, !95, !95}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!553 = !{}
!554 = !DISubprogram(name: "fflush", scope: !555, file: !555, line: 218, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!555 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!556 = !DISubroutineType(types: !557)
!557 = !{!5, !252}
!558 = !DISubprogram(name: "mpierror", scope: !549, file: !549, line: 150, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!559 = !DISubroutineType(types: !560)
!560 = !{!32, !32}
!561 = !DISubprogram(name: "setseed", scope: !549, file: !549, line: 204, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!562 = !DISubroutineType(types: !563)
!563 = !{!32, !95}
!564 = !DISubprogram(name: "getpdb", scope: !549, file: !549, line: 103, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!565 = !DISubroutineType(types: !566)
!566 = !{!19, !39, !39}
!567 = !DISubprogram(name: "readparm", scope: !549, file: !549, line: 184, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!568 = !DISubroutineType(types: !569)
!569 = !{!32, !19, !39}
!570 = !DISubprogram(name: "vector", scope: !13, file: !13, line: 10, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!571 = !DISubroutineType(types: !572)
!572 = !{!175, !303, !303}
!573 = !DISubprogram(name: "setxyz_from_mol", scope: !549, file: !549, line: 205, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!574 = !DISubroutineType(types: !575)
!575 = !{!32, !576, !552, !175}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!577 = !DISubprogram(name: "mme_init", scope: !549, file: !549, line: 147, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!578 = !DISubroutineType(types: !579)
!579 = !{!32, !19, !39, !39, !175, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE_T", file: !21, line: 18, baseType: !253)
!582 = !DISubprogram(name: "mme", scope: !549, file: !549, line: 139, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!583 = !DISubroutineType(types: !584)
!584 = !{!27, !175, !175, !95}
!585 = !DISubprogram(name: "md", scope: !549, file: !549, line: 132, type: !586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!586 = !DISubroutineType(types: !587)
!587 = !{!32, !32, !32, !175, !175, !175, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!589 = !DISubprogram(name: "free_vector", scope: !13, file: !13, line: 11, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !175, !303, !303}
!592 = !DISubprogram(name: "mpifinalize", scope: !549, file: !549, line: 151, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!593 = !DISubroutineType(types: !594)
!594 = !{!32}
