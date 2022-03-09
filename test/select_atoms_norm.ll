; ModuleID = 'select_atoms.ll'
source_filename = "select_atoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.molecule_t = type { [4 x [3 x double]], i32, %struct.strand_t*, i32, i32, i32, %struct.parm* }
%struct.strand_t = type { i8*, i32, i32, %struct.molecule_t*, %struct.strand_t*, i32, i32, %struct.residue_t** }
%struct.residue_t = type { %struct.residue_t*, i32, i32, i32, i8*, i8*, i32, i32, i32, %struct.strand_t*, %struct.extbond_t*, i32, [2 x i32]*, i32, %struct.chiral_t*, i32, i32*, %struct.atom_t* }
%struct.extbond_t = type { %struct.extbond_t*, i32, i32, i32 }
%struct.chiral_t = type { [4 x i32], double }
%struct.atom_t = type { i8*, i8*, i32, i32, [8 x i32], %struct.residue_t*, double, double, double, double, i8*, i32, double, double, i32, i32, i8*, [3 x double], double }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, [3 x double], double, double, double, double, double, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [33 x i8] c"setpoint: %s: no atoms selected\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"select_atoms: atom-expr too complicated\0A\00", align 1
@aexpr = internal global [1000 x i8] zeroinitializer, align 16, !dbg !0
@.str.2 = private unnamed_addr constant [42 x i8] c"atom_in_aexpr: atom-expr too complicated\0A\00", align 1
@spart = internal global i8* null, align 8, !dbg !250
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@rpart = internal global i8* null, align 8, !dbg !252
@apart = internal global i8* null, align 8, !dbg !254
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"atom range not allowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rexpr = internal global [1000 x i8] zeroinitializer, align 16, !dbg !256
@expbuf = internal global [1000 x i8] zeroinitializer, align 16, !dbg !261

; Function Attrs: nounwind uwtable
define dso_local i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* %2) #0 !dbg !267 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !273, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i8* %1, metadata !274, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double* %2, metadata !275, metadata !DIExpression()), !dbg !285
  %4 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1), !dbg !286
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !285
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !287
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !287, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !285
  %.not = icmp eq %struct.strand_t* %6, null, !dbg !295
  br i1 %.not, label %._crit_edge54, label %.lr.ph53, !dbg !295

.lr.ph53:                                         ; preds = %3, %._crit_edge42
  %.0151 = phi double [ %.5, %._crit_edge42 ], [ 0.000000e+00, %3 ]
  %.0250 = phi double [ %.57, %._crit_edge42 ], [ 0.000000e+00, %3 ]
  %.01049 = phi i32 [ %.515, %._crit_edge42 ], [ 0, %3 ]
  %.01648 = phi %struct.strand_t* [ %49, %._crit_edge42 ], [ %6, %3 ]
  %.01747 = phi double [ %.522, %._crit_edge42 ], [ 0.000000e+00, %3 ]
  call void @llvm.dbg.value(metadata double %.0151, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.0250, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.01049, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01648, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.01747, metadata !282, metadata !DIExpression()), !dbg !285
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01648, i64 0, i32 2, !dbg !296
  %8 = load i32, i32* %7, align 4, !dbg !296, !tbaa !300
  %9 = and i32 %8, 1, !dbg !302
  %.not59 = icmp eq i32 %9, 0, !dbg !302
  br i1 %.not59, label %._crit_edge42, label %10, !dbg !303

10:                                               ; preds = %.lr.ph53
  call void @llvm.dbg.value(metadata i32 0, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.0151, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.0250, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 0, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.01049, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.01747, metadata !282, metadata !DIExpression()), !dbg !285
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01648, i64 0, i32 5, !dbg !304
  %12 = load i32, i32* %11, align 8, !dbg !304, !tbaa !308
  %13 = icmp sgt i32 %12, 0, !dbg !309
  br i1 %13, label %.lr.ph41, label %._crit_edge42, !dbg !310

.lr.ph41:                                         ; preds = %10, %._crit_edge
  %.139 = phi double [ %.4, %._crit_edge ], [ %.0151, %10 ]
  %.1338 = phi double [ %.46, %._crit_edge ], [ %.0250, %10 ]
  %.11137 = phi i32 [ %.414, %._crit_edge ], [ %.01049, %10 ]
  %.11836 = phi double [ %.421, %._crit_edge ], [ %.01747, %10 ]
  %indvars.iv2435 = phi i64 [ %indvars.iv.next25, %._crit_edge ], [ 0, %10 ]
  call void @llvm.dbg.value(metadata double %.139, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.1338, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.11137, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.11836, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %indvars.iv2435, metadata !276, metadata !DIExpression()), !dbg !285
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01648, i64 0, i32 7, !dbg !311
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8, !dbg !311, !tbaa !313
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv2435, !dbg !314
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8, !dbg !314, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %17, metadata !280, metadata !DIExpression()), !dbg !285
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 6, !dbg !316
  %19 = load i32, i32* %18, align 8, !dbg !316, !tbaa !318
  %20 = and i32 %19, 1, !dbg !320
  %.not61 = icmp eq i32 %20, 0, !dbg !320
  br i1 %.not61, label %._crit_edge, label %21, !dbg !321

21:                                               ; preds = %.lr.ph41
  call void @llvm.dbg.value(metadata i32 0, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.139, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.1338, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 0, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.11137, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.11836, metadata !282, metadata !DIExpression()), !dbg !285
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 15, !dbg !322
  %23 = load i32, i32* %22, align 8, !dbg !322, !tbaa !326
  %24 = icmp sgt i32 %23, 0, !dbg !327
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !328

.lr.ph:                                           ; preds = %21, %41
  %.231 = phi double [ %.3, %41 ], [ %.139, %21 ]
  %.2430 = phi double [ %.35, %41 ], [ %.1338, %21 ]
  %.21229 = phi i32 [ %.313, %41 ], [ %.11137, %21 ]
  %.21928 = phi double [ %.320, %41 ], [ %.11836, %21 ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next, %41 ], [ 0, %21 ]
  call void @llvm.dbg.value(metadata double %.231, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.2430, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.21229, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.21928, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !277, metadata !DIExpression()), !dbg !285
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 17, !dbg !329
  %26 = load %struct.atom_t*, %struct.atom_t** %25, align 8, !dbg !329, !tbaa !331
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %26, i64 %indvars.iv27), metadata !281, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !285
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i64 %indvars.iv27, i32 2, !dbg !332
  %28 = load i32, i32* %27, align 8, !dbg !332, !tbaa !334
  %29 = and i32 %28, 1, !dbg !337
  %.not62 = icmp eq i32 %29, 0, !dbg !337
  br i1 %.not62, label %41, label %30, !dbg !338

30:                                               ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %26, i64 %indvars.iv27), metadata !281, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !285
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i64 %indvars.iv27, i32 17, i64 0, !dbg !339
  %32 = load double, double* %31, align 8, !dbg !339, !tbaa !341
  %33 = fadd double %.21928, %32, !dbg !342
  call void @llvm.dbg.value(metadata double %33, metadata !282, metadata !DIExpression()), !dbg !285
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i64 %indvars.iv27, i32 17, i64 1, !dbg !343
  %35 = load double, double* %34, align 8, !dbg !343, !tbaa !341
  %36 = fadd double %.2430, %35, !dbg !344
  call void @llvm.dbg.value(metadata double %36, metadata !283, metadata !DIExpression()), !dbg !285
  %37 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i64 %indvars.iv27, i32 17, i64 2, !dbg !345
  %38 = load double, double* %37, align 8, !dbg !345, !tbaa !341
  %39 = fadd double %.231, %38, !dbg !346
  call void @llvm.dbg.value(metadata double %39, metadata !284, metadata !DIExpression()), !dbg !285
  %40 = add nsw i32 %.21229, 1, !dbg !347
  call void @llvm.dbg.value(metadata i32 %40, metadata !278, metadata !DIExpression()), !dbg !285
  br label %41, !dbg !348

41:                                               ; preds = %.lr.ph, %30
  %.320 = phi double [ %33, %30 ], [ %.21928, %.lr.ph ], !dbg !285
  %.313 = phi i32 [ %40, %30 ], [ %.21229, %.lr.ph ], !dbg !349
  %.35 = phi double [ %36, %30 ], [ %.2430, %.lr.ph ], !dbg !285
  %.3 = phi double [ %39, %30 ], [ %.231, %.lr.ph ], !dbg !285
  call void @llvm.dbg.value(metadata double %.3, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.35, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.313, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.320, metadata !282, metadata !DIExpression()), !dbg !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv27, 1, !dbg !350
  call void @llvm.dbg.value(metadata double %.3, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.35, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.313, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.320, metadata !282, metadata !DIExpression()), !dbg !285
  %42 = load i32, i32* %22, align 8, !dbg !322, !tbaa !326
  %43 = sext i32 %42 to i64, !dbg !327
  %44 = icmp slt i64 %indvars.iv.next, %43, !dbg !327
  br i1 %44, label %.lr.ph, label %._crit_edge, !dbg !328, !llvm.loop !351

._crit_edge:                                      ; preds = %.lr.ph41, %41, %21
  %.421 = phi double [ %.11836, %.lr.ph41 ], [ %.11836, %21 ], [ %.320, %41 ], !dbg !353
  %.414 = phi i32 [ %.11137, %.lr.ph41 ], [ %.11137, %21 ], [ %.313, %41 ], !dbg !354
  %.46 = phi double [ %.1338, %.lr.ph41 ], [ %.1338, %21 ], [ %.35, %41 ], !dbg !355
  %.4 = phi double [ %.139, %.lr.ph41 ], [ %.139, %21 ], [ %.3, %41 ], !dbg !356
  call void @llvm.dbg.value(metadata double %.4, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.46, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.414, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.421, metadata !282, metadata !DIExpression()), !dbg !285
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv2435, 1, !dbg !357
  call void @llvm.dbg.value(metadata double %.4, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.46, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next25, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.414, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.421, metadata !282, metadata !DIExpression()), !dbg !285
  %45 = load i32, i32* %11, align 8, !dbg !304, !tbaa !308
  %46 = sext i32 %45 to i64, !dbg !309
  %47 = icmp slt i64 %indvars.iv.next25, %46, !dbg !309
  br i1 %47, label %.lr.ph41, label %._crit_edge42, !dbg !310, !llvm.loop !358

._crit_edge42:                                    ; preds = %.lr.ph53, %._crit_edge, %10
  %.522 = phi double [ %.01747, %.lr.ph53 ], [ %.01747, %10 ], [ %.421, %._crit_edge ], !dbg !353
  %.515 = phi i32 [ %.01049, %.lr.ph53 ], [ %.01049, %10 ], [ %.414, %._crit_edge ], !dbg !354
  %.57 = phi double [ %.0250, %.lr.ph53 ], [ %.0250, %10 ], [ %.46, %._crit_edge ], !dbg !355
  %.5 = phi double [ %.0151, %.lr.ph53 ], [ %.0151, %10 ], [ %.4, %._crit_edge ], !dbg !356
  call void @llvm.dbg.value(metadata double %.5, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.57, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.515, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.522, metadata !282, metadata !DIExpression()), !dbg !285
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01648, i64 0, i32 4, !dbg !360
  %49 = load %struct.strand_t*, %struct.strand_t** %48, align 8, !dbg !360, !tbaa !361
  call void @llvm.dbg.value(metadata double %.5, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.57, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.515, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata %struct.strand_t* %49, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.522, metadata !282, metadata !DIExpression()), !dbg !285
  %.not60 = icmp eq %struct.strand_t* %49, null, !dbg !295
  br i1 %.not60, label %._crit_edge54, label %.lr.ph53, !dbg !295, !llvm.loop !362

._crit_edge54:                                    ; preds = %._crit_edge42, %3
  %.017.lcssa = phi double [ 0.000000e+00, %3 ], [ %.522, %._crit_edge42 ], !dbg !353
  %.010.lcssa = phi i32 [ 0, %3 ], [ %.515, %._crit_edge42 ], !dbg !354
  %.02.lcssa = phi double [ 0.000000e+00, %3 ], [ %.57, %._crit_edge42 ], !dbg !355
  %.01.lcssa = phi double [ 0.000000e+00, %3 ], [ %.5, %._crit_edge42 ], !dbg !356
  %50 = icmp eq i32 %.010.lcssa, 0, !dbg !364
  br i1 %50, label %51, label %54, !dbg !366

51:                                               ; preds = %._crit_edge54
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !367, !tbaa !315
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %1) #8, !dbg !369
  br label %63, !dbg !370

54:                                               ; preds = %._crit_edge54
  %55 = sitofp i32 %.010.lcssa to double, !dbg !371
  %56 = fdiv double %.017.lcssa, %55, !dbg !373
  store double %56, double* %2, align 8, !dbg !374, !tbaa !341
  %57 = sitofp i32 %.010.lcssa to double, !dbg !375
  %58 = fdiv double %.02.lcssa, %57, !dbg !376
  %59 = getelementptr inbounds double, double* %2, i64 1, !dbg !377
  store double %58, double* %59, align 8, !dbg !378, !tbaa !341
  %60 = sitofp i32 %.010.lcssa to double, !dbg !379
  %61 = fdiv double %.01.lcssa, %60, !dbg !380
  %62 = getelementptr inbounds double, double* %2, i64 2, !dbg !381
  store double %61, double* %62, align 8, !dbg !382, !tbaa !341
  br label %63, !dbg !383

63:                                               ; preds = %54, %51
  %.0 = phi i32 [ 1, %51 ], [ 0, %54 ], !dbg !285
  ret i32 %.0, !dbg !384
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #0 !dbg !385 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !389, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %1, metadata !390, metadata !DIExpression()), !dbg !394
  %3 = icmp eq i8* %1, null, !dbg !395
  br i1 %3, label %4, label %.lr.ph, !dbg !397

4:                                                ; preds = %2
  call void @select_all(%struct.molecule_t* %0), !dbg !398
  br label %28, !dbg !400

.lr.ph:                                           ; preds = %2
  call void @clear_work(%struct.molecule_t* %0), !dbg !401
  call void @clear_select(%struct.molecule_t* %0), !dbg !402
  call void @llvm.dbg.value(metadata i8* %1, metadata !391, metadata !DIExpression()), !dbg !394
  %5 = call i8* @strchr(i8* noundef nonnull %1, i32 124) #9, !dbg !403
  call void @llvm.dbg.value(metadata i8* %5, metadata !392, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %1, metadata !391, metadata !DIExpression()), !dbg !394
  br label %6, !dbg !405

6:                                                ; preds = %.lr.ph, %27
  %.025 = phi i8* [ %1, %.lr.ph ], [ %.1, %27 ]
  %.034 = phi i8* [ %5, %.lr.ph ], [ %.2, %27 ]
  call void @llvm.dbg.value(metadata i8* %.025, metadata !391, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %.034, metadata !392, metadata !DIExpression()), !dbg !394
  %.not = icmp eq i8* %.034, null, !dbg !406
  br i1 %.not, label %12, label %7, !dbg !410

7:                                                ; preds = %6
  %8 = ptrtoint i8* %.034 to i64, !dbg !411
  %9 = ptrtoint i8* %.025 to i64, !dbg !411
  %10 = sub i64 %8, %9, !dbg !411
  call void @llvm.dbg.value(metadata i64 %10, metadata !393, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !394
  %11 = getelementptr inbounds i8, i8* %.034, i64 1, !dbg !413
  call void @llvm.dbg.value(metadata i8* %11, metadata !392, metadata !DIExpression()), !dbg !394
  br label %14, !dbg !414

12:                                               ; preds = %6
  %13 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.025) #9, !dbg !415
  call void @llvm.dbg.value(metadata i64 %13, metadata !393, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !394
  br label %14

14:                                               ; preds = %12, %7
  %.1 = phi i8* [ %11, %7 ], [ %.034, %12 ], !dbg !416
  %.01.in = phi i64 [ %10, %7 ], [ %13, %12 ]
  %.01 = trunc i64 %.01.in to i32, !dbg !417
  call void @llvm.dbg.value(metadata i32 %.01, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %.1, metadata !392, metadata !DIExpression()), !dbg !394
  %15 = icmp sgt i32 %.01, 999, !dbg !418
  br i1 %15, label %16, label %19, !dbg !420

16:                                               ; preds = %14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !421, !tbaa !315
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %17) #10, !dbg !423
  br label %28, !dbg !424

19:                                               ; preds = %14
  %sext = shl i64 %.01.in, 32, !dbg !425
  %20 = ashr exact i64 %sext, 32, !dbg !425
  %21 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* %.025, i64 %20) #11, !dbg !426
  %sext7 = shl i64 %.01.in, 32, !dbg !427
  %22 = ashr exact i64 %sext7, 32, !dbg !427
  %23 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %22, !dbg !427
  store i8 0, i8* %23, align 1, !dbg !428, !tbaa !429
  %24 = call i32 @eval_1_aexpr(%struct.molecule_t* %0, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0)), !dbg !430
  call void @or_select(%struct.molecule_t* %0), !dbg !431
  call void @llvm.dbg.value(metadata i8* %.1, metadata !391, metadata !DIExpression()), !dbg !394
  %.not8 = icmp eq i8* %.1, null, !dbg !432
  br i1 %.not8, label %27, label %25, !dbg !434

25:                                               ; preds = %19
  %26 = call i8* @strchr(i8* noundef nonnull %.1, i32 124) #9, !dbg !435
  call void @llvm.dbg.value(metadata i8* %26, metadata !392, metadata !DIExpression()), !dbg !394
  br label %27, !dbg !436

27:                                               ; preds = %25, %19
  %.2 = phi i8* [ %26, %25 ], [ %.1, %19 ], !dbg !437
  call void @llvm.dbg.value(metadata i8* %.2, metadata !392, metadata !DIExpression()), !dbg !394
  call void @clear_select(%struct.molecule_t* %0), !dbg !438
  call void @llvm.dbg.value(metadata i8* %.1, metadata !391, metadata !DIExpression()), !dbg !394
  %.not9 = icmp eq i8* %.1, null, !dbg !405
  br i1 %.not9, label %._crit_edge, label %6, !dbg !405, !llvm.loop !439

._crit_edge:                                      ; preds = %27
  call void @set_select(%struct.molecule_t* %0), !dbg !441
  br label %28, !dbg !442

28:                                               ; preds = %._crit_edge, %16, %4
  %.0 = phi i32 [ 0, %4 ], [ 1, %16 ], [ 0, %._crit_edge ], !dbg !394
  ret i32 %.0, !dbg !443
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @select_all(%struct.molecule_t* %0) #0 !dbg !444 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !448, metadata !DIExpression()), !dbg !453
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !454
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !454, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !451, metadata !DIExpression()), !dbg !453
  %.not = icmp eq %struct.strand_t* %3, null, !dbg !456
  br i1 %.not, label %._crit_edge15, label %.lr.ph14, !dbg !456

.lr.ph14:                                         ; preds = %1, %._crit_edge11
  %.012 = phi %struct.strand_t* [ %32, %._crit_edge11 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.012, metadata !451, metadata !DIExpression()), !dbg !453
  %4 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !457
  %5 = load i32, i32* %4, align 4, !dbg !460, !tbaa !300
  %6 = or i32 %5, 1, !dbg !460
  store i32 %6, i32* %4, align 4, !dbg !460, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !450, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i64 0, metadata !450, metadata !DIExpression()), !dbg !453
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 5, !dbg !461
  %8 = load i32, i32* %7, align 8, !dbg !461, !tbaa !308
  %9 = icmp sgt i32 %8, 0, !dbg !464
  br i1 %9, label %.lr.ph10, label %._crit_edge11, !dbg !465

.lr.ph10:                                         ; preds = %.lr.ph14, %._crit_edge
  %indvars.iv48 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %.lr.ph14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !450, metadata !DIExpression()), !dbg !453
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 7, !dbg !466
  %11 = load %struct.residue_t**, %struct.residue_t*** %10, align 8, !dbg !466, !tbaa !313
  %12 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %11, i64 %indvars.iv48, !dbg !468
  %13 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !468, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %13, metadata !452, metadata !DIExpression()), !dbg !453
  %14 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 6, !dbg !469
  %15 = load i32, i32* %14, align 8, !dbg !470, !tbaa !318
  %16 = or i32 %15, 1, !dbg !470
  store i32 %16, i32* %14, align 8, !dbg !470, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !449, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i64 0, metadata !449, metadata !DIExpression()), !dbg !453
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 15, !dbg !471
  %18 = load i32, i32* %17, align 8, !dbg !471, !tbaa !326
  %19 = icmp sgt i32 %18, 0, !dbg !474
  br i1 %19, label %.lr.ph, label %._crit_edge, !dbg !475

.lr.ph:                                           ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !449, metadata !DIExpression()), !dbg !453
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 17, !dbg !476
  %21 = load %struct.atom_t*, %struct.atom_t** %20, align 8, !dbg !476, !tbaa !331
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %indvars.iv7, i32 2, !dbg !477
  %23 = load i32, i32* %22, align 8, !dbg !478, !tbaa !334
  %24 = or i32 %23, 1, !dbg !478
  store i32 %24, i32* %22, align 8, !dbg !478, !tbaa !334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !479
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !449, metadata !DIExpression()), !dbg !453
  %25 = load i32, i32* %17, align 8, !dbg !471, !tbaa !326
  %26 = sext i32 %25 to i64, !dbg !474
  %27 = icmp slt i64 %indvars.iv.next, %26, !dbg !474
  br i1 %27, label %.lr.ph, label %._crit_edge, !dbg !475, !llvm.loop !480

._crit_edge:                                      ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !482
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !450, metadata !DIExpression()), !dbg !453
  %28 = load i32, i32* %7, align 8, !dbg !461, !tbaa !308
  %29 = sext i32 %28 to i64, !dbg !464
  %30 = icmp slt i64 %indvars.iv.next5, %29, !dbg !464
  br i1 %30, label %.lr.ph10, label %._crit_edge11, !dbg !465, !llvm.loop !483

._crit_edge11:                                    ; preds = %.lr.ph14, %._crit_edge
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 4, !dbg !485
  %32 = load %struct.strand_t*, %struct.strand_t** %31, align 8, !dbg !485, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %32, metadata !451, metadata !DIExpression()), !dbg !453
  %.not16 = icmp eq %struct.strand_t* %32, null, !dbg !456
  br i1 %.not16, label %._crit_edge15, label %.lr.ph14, !dbg !456, !llvm.loop !486

._crit_edge15:                                    ; preds = %._crit_edge11, %1
  ret void, !dbg !488
}

; Function Attrs: nounwind uwtable
define internal void @clear_work(%struct.molecule_t* %0) #0 !dbg !489 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !491, metadata !DIExpression()), !dbg !496
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !497
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !497, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !494, metadata !DIExpression()), !dbg !496
  %.not = icmp eq %struct.strand_t* %3, null, !dbg !499
  br i1 %.not, label %._crit_edge15, label %.lr.ph14, !dbg !499

.lr.ph14:                                         ; preds = %1, %._crit_edge11
  %.012 = phi %struct.strand_t* [ %32, %._crit_edge11 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.012, metadata !494, metadata !DIExpression()), !dbg !496
  %4 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !500
  %5 = load i32, i32* %4, align 4, !dbg !503, !tbaa !300
  %6 = and i32 %5, -129, !dbg !503
  store i32 %6, i32* %4, align 4, !dbg !503, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !493, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 0, metadata !493, metadata !DIExpression()), !dbg !496
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 5, !dbg !504
  %8 = load i32, i32* %7, align 8, !dbg !504, !tbaa !308
  %9 = icmp sgt i32 %8, 0, !dbg !507
  br i1 %9, label %.lr.ph10, label %._crit_edge11, !dbg !508

.lr.ph10:                                         ; preds = %.lr.ph14, %._crit_edge
  %indvars.iv48 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %.lr.ph14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !493, metadata !DIExpression()), !dbg !496
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 7, !dbg !509
  %11 = load %struct.residue_t**, %struct.residue_t*** %10, align 8, !dbg !509, !tbaa !313
  %12 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %11, i64 %indvars.iv48, !dbg !511
  %13 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !511, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %13, metadata !495, metadata !DIExpression()), !dbg !496
  %14 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 6, !dbg !512
  %15 = load i32, i32* %14, align 8, !dbg !513, !tbaa !318
  %16 = and i32 %15, -129, !dbg !513
  store i32 %16, i32* %14, align 8, !dbg !513, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 0, metadata !492, metadata !DIExpression()), !dbg !496
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 15, !dbg !514
  %18 = load i32, i32* %17, align 8, !dbg !514, !tbaa !326
  %19 = icmp sgt i32 %18, 0, !dbg !517
  br i1 %19, label %.lr.ph, label %._crit_edge, !dbg !518

.lr.ph:                                           ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !492, metadata !DIExpression()), !dbg !496
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 17, !dbg !519
  %21 = load %struct.atom_t*, %struct.atom_t** %20, align 8, !dbg !519, !tbaa !331
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %indvars.iv7, i32 2, !dbg !520
  %23 = load i32, i32* %22, align 8, !dbg !521, !tbaa !334
  %24 = and i32 %23, -129, !dbg !521
  store i32 %24, i32* %22, align 8, !dbg !521, !tbaa !334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !522
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !492, metadata !DIExpression()), !dbg !496
  %25 = load i32, i32* %17, align 8, !dbg !514, !tbaa !326
  %26 = sext i32 %25 to i64, !dbg !517
  %27 = icmp slt i64 %indvars.iv.next, %26, !dbg !517
  br i1 %27, label %.lr.ph, label %._crit_edge, !dbg !518, !llvm.loop !523

._crit_edge:                                      ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !525
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !493, metadata !DIExpression()), !dbg !496
  %28 = load i32, i32* %7, align 8, !dbg !504, !tbaa !308
  %29 = sext i32 %28 to i64, !dbg !507
  %30 = icmp slt i64 %indvars.iv.next5, %29, !dbg !507
  br i1 %30, label %.lr.ph10, label %._crit_edge11, !dbg !508, !llvm.loop !526

._crit_edge11:                                    ; preds = %.lr.ph14, %._crit_edge
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 4, !dbg !528
  %32 = load %struct.strand_t*, %struct.strand_t** %31, align 8, !dbg !528, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %32, metadata !494, metadata !DIExpression()), !dbg !496
  %.not16 = icmp eq %struct.strand_t* %32, null, !dbg !499
  br i1 %.not16, label %._crit_edge15, label %.lr.ph14, !dbg !499, !llvm.loop !529

._crit_edge15:                                    ; preds = %._crit_edge11, %1
  ret void, !dbg !531
}

; Function Attrs: nounwind uwtable
define internal void @clear_select(%struct.molecule_t* %0) #0 !dbg !532 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !534, metadata !DIExpression()), !dbg !539
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !540
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !540, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !537, metadata !DIExpression()), !dbg !539
  %.not = icmp eq %struct.strand_t* %3, null, !dbg !542
  br i1 %.not, label %._crit_edge15, label %.lr.ph14, !dbg !542

.lr.ph14:                                         ; preds = %1, %._crit_edge11
  %.012 = phi %struct.strand_t* [ %32, %._crit_edge11 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.012, metadata !537, metadata !DIExpression()), !dbg !539
  %4 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !543
  %5 = load i32, i32* %4, align 4, !dbg !546, !tbaa !300
  %6 = and i32 %5, -2, !dbg !546
  store i32 %6, i32* %4, align 4, !dbg !546, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !536, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 0, metadata !536, metadata !DIExpression()), !dbg !539
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 5, !dbg !547
  %8 = load i32, i32* %7, align 8, !dbg !547, !tbaa !308
  %9 = icmp sgt i32 %8, 0, !dbg !550
  br i1 %9, label %.lr.ph10, label %._crit_edge11, !dbg !551

.lr.ph10:                                         ; preds = %.lr.ph14, %._crit_edge
  %indvars.iv48 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %.lr.ph14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !536, metadata !DIExpression()), !dbg !539
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 7, !dbg !552
  %11 = load %struct.residue_t**, %struct.residue_t*** %10, align 8, !dbg !552, !tbaa !313
  %12 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %11, i64 %indvars.iv48, !dbg !554
  %13 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !554, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %13, metadata !538, metadata !DIExpression()), !dbg !539
  %14 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 6, !dbg !555
  %15 = load i32, i32* %14, align 8, !dbg !556, !tbaa !318
  %16 = and i32 %15, -2, !dbg !556
  store i32 %16, i32* %14, align 8, !dbg !556, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !535, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 0, metadata !535, metadata !DIExpression()), !dbg !539
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 15, !dbg !557
  %18 = load i32, i32* %17, align 8, !dbg !557, !tbaa !326
  %19 = icmp sgt i32 %18, 0, !dbg !560
  br i1 %19, label %.lr.ph, label %._crit_edge, !dbg !561

.lr.ph:                                           ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !535, metadata !DIExpression()), !dbg !539
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 17, !dbg !562
  %21 = load %struct.atom_t*, %struct.atom_t** %20, align 8, !dbg !562, !tbaa !331
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %indvars.iv7, i32 2, !dbg !563
  %23 = load i32, i32* %22, align 8, !dbg !564, !tbaa !334
  %24 = and i32 %23, -2, !dbg !564
  store i32 %24, i32* %22, align 8, !dbg !564, !tbaa !334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !565
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !535, metadata !DIExpression()), !dbg !539
  %25 = load i32, i32* %17, align 8, !dbg !557, !tbaa !326
  %26 = sext i32 %25 to i64, !dbg !560
  %27 = icmp slt i64 %indvars.iv.next, %26, !dbg !560
  br i1 %27, label %.lr.ph, label %._crit_edge, !dbg !561, !llvm.loop !566

._crit_edge:                                      ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !568
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !536, metadata !DIExpression()), !dbg !539
  %28 = load i32, i32* %7, align 8, !dbg !547, !tbaa !308
  %29 = sext i32 %28 to i64, !dbg !550
  %30 = icmp slt i64 %indvars.iv.next5, %29, !dbg !550
  br i1 %30, label %.lr.ph10, label %._crit_edge11, !dbg !551, !llvm.loop !569

._crit_edge11:                                    ; preds = %.lr.ph14, %._crit_edge
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 4, !dbg !571
  %32 = load %struct.strand_t*, %struct.strand_t** %31, align 8, !dbg !571, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %32, metadata !537, metadata !DIExpression()), !dbg !539
  %.not16 = icmp eq %struct.strand_t* %32, null, !dbg !542
  br i1 %.not16, label %._crit_edge15, label %.lr.ph14, !dbg !542, !llvm.loop !572

._crit_edge15:                                    ; preds = %._crit_edge11, %1
  ret void, !dbg !574
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @eval_1_aexpr(%struct.molecule_t* %0, i8* %1) #0 !dbg !575 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !577, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i8* %1, metadata !578, metadata !DIExpression()), !dbg !583
  %5 = bitcast i32* %3 to i8*, !dbg !584
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #11, !dbg !584
  %6 = bitcast i32* %4 to i8*, !dbg !584
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !584
  call void @llvm.dbg.value(metadata i8* %1, metadata !579, metadata !DIExpression()), !dbg !583
  %7 = load i8, i8* %1, align 1, !dbg !585, !tbaa !429
  %8 = icmp eq i8 %7, 58, !dbg !587
  br i1 %8, label %9, label %11, !dbg !588

9:                                                ; preds = %2
  store i8* null, i8** @spart, align 8, !dbg !589, !tbaa !315
  %10 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !591
  call void @llvm.dbg.value(metadata i8* %10, metadata !579, metadata !DIExpression()), !dbg !583
  br label %16, !dbg !592

11:                                               ; preds = %2
  %12 = call i8* @strtok(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !593
  store i8* %12, i8** @spart, align 8, !dbg !595, !tbaa !315
  %13 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #9, !dbg !596
  %14 = add i64 %13, 1, !dbg !597
  %15 = getelementptr inbounds i8, i8* %1, i64 %14, !dbg !598
  call void @llvm.dbg.value(metadata i8* %15, metadata !579, metadata !DIExpression()), !dbg !583
  br label %16

16:                                               ; preds = %11, %9
  %.0 = phi i8* [ %10, %9 ], [ %15, %11 ], !dbg !599
  call void @llvm.dbg.value(metadata i8* %.0, metadata !579, metadata !DIExpression()), !dbg !583
  %17 = load i8, i8* %.0, align 1, !dbg !600, !tbaa !429
  %18 = icmp eq i8 %17, 58, !dbg !602
  br i1 %18, label %19, label %21, !dbg !603

19:                                               ; preds = %16
  store i8* null, i8** @rpart, align 8, !dbg !604, !tbaa !315
  %20 = getelementptr inbounds i8, i8* %.0, i64 1, !dbg !606
  call void @llvm.dbg.value(metadata i8* %20, metadata !579, metadata !DIExpression()), !dbg !583
  br label %26, !dbg !607

21:                                               ; preds = %16
  %22 = call i8* @strtok(i8* nonnull %.0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !608
  store i8* %22, i8** @rpart, align 8, !dbg !610, !tbaa !315
  %23 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %22) #9, !dbg !611
  %24 = add i64 %23, 1, !dbg !612
  %25 = getelementptr inbounds i8, i8* %.0, i64 %24, !dbg !613
  call void @llvm.dbg.value(metadata i8* %25, metadata !579, metadata !DIExpression()), !dbg !583
  br label %26

26:                                               ; preds = %21, %19
  %.1 = phi i8* [ %20, %19 ], [ %25, %21 ], !dbg !614
  call void @llvm.dbg.value(metadata i8* %.1, metadata !579, metadata !DIExpression()), !dbg !583
  %27 = call i8* @strtok(i8* %.1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !615
  store i8* %27, i8** @apart, align 8, !dbg !616, !tbaa !315
  %28 = load i8*, i8** @spart, align 8, !dbg !617, !tbaa !315
  %.not = icmp eq i8* %28, null, !dbg !617
  br i1 %.not, label %47, label %29, !dbg !619

29:                                               ; preds = %26
  %30 = load i8*, i8** @spart, align 8, !dbg !620, !tbaa !315
  %31 = call i8* @strtok(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !622
  call void @llvm.dbg.value(metadata i8* %31, metadata !580, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i32* %3, metadata !581, metadata !DIExpression(DW_OP_deref)), !dbg !583
  call void @llvm.dbg.value(metadata i32* %4, metadata !582, metadata !DIExpression(DW_OP_deref)), !dbg !583
  %32 = call i32 @is_pattern(i8* %31, i32* nonnull %3, i32* nonnull %4), !dbg !623
  %.not17 = icmp eq i32 %32, 0, !dbg !623
  br i1 %.not17, label %34, label %33, !dbg !625

33:                                               ; preds = %29
  call void @match_str_pat(%struct.molecule_t* %0, i8* %31), !dbg !626
  br label %37, !dbg !626

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4, !dbg !627, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %35, metadata !581, metadata !DIExpression()), !dbg !583
  %36 = load i32, i32* %4, align 4, !dbg !629, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %36, metadata !582, metadata !DIExpression()), !dbg !583
  call void @match_str_range(%struct.molecule_t* %0, i32 %35, i32 %36), !dbg !630
  br label %37

37:                                               ; preds = %34, %33
  %38 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !631
  call void @llvm.dbg.value(metadata i8* %38, metadata !580, metadata !DIExpression()), !dbg !583
  %.not18 = icmp eq i8* %38, null, !dbg !632
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !dbg !632

.lr.ph:                                           ; preds = %37, %45
  %39 = phi i8* [ %46, %45 ], [ %38, %37 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !581, metadata !DIExpression(DW_OP_deref)), !dbg !583
  call void @llvm.dbg.value(metadata i32* %4, metadata !582, metadata !DIExpression(DW_OP_deref)), !dbg !583
  %40 = call i32 @is_pattern(i8* %39, i32* nonnull %3, i32* nonnull %4), !dbg !633
  %.not19 = icmp eq i32 %40, 0, !dbg !633
  br i1 %.not19, label %42, label %41, !dbg !636

41:                                               ; preds = %.lr.ph
  call void @match_str_pat(%struct.molecule_t* %0, i8* %39), !dbg !637
  br label %45, !dbg !637

42:                                               ; preds = %.lr.ph
  %43 = load i32, i32* %3, align 4, !dbg !638, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %43, metadata !581, metadata !DIExpression()), !dbg !583
  %44 = load i32, i32* %4, align 4, !dbg !639, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %44, metadata !582, metadata !DIExpression()), !dbg !583
  call void @match_str_range(%struct.molecule_t* %0, i32 %43, i32 %44), !dbg !640
  br label %45

45:                                               ; preds = %42, %41
  %46 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !631
  call void @llvm.dbg.value(metadata i8* %46, metadata !580, metadata !DIExpression()), !dbg !583
  %.not20 = icmp eq i8* %46, null, !dbg !632
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !dbg !632, !llvm.loop !641

47:                                               ; preds = %26
  call void @match_str_range(%struct.molecule_t* %0, i32 1, i32 -1), !dbg !643
  br label %._crit_edge

._crit_edge:                                      ; preds = %37, %45, %47
  %48 = load i8*, i8** @rpart, align 8, !dbg !644, !tbaa !315
  %.not7 = icmp eq i8* %48, null, !dbg !644
  br i1 %.not7, label %67, label %49, !dbg !646

49:                                               ; preds = %._crit_edge
  %50 = load i8*, i8** @rpart, align 8, !dbg !647, !tbaa !315
  %51 = call i8* @strtok(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !649
  call void @llvm.dbg.value(metadata i8* %51, metadata !580, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i32* %3, metadata !581, metadata !DIExpression(DW_OP_deref)), !dbg !583
  call void @llvm.dbg.value(metadata i32* %4, metadata !582, metadata !DIExpression(DW_OP_deref)), !dbg !583
  %52 = call i32 @is_pattern(i8* %51, i32* nonnull %3, i32* nonnull %4), !dbg !650
  %.not13 = icmp eq i32 %52, 0, !dbg !650
  br i1 %.not13, label %54, label %53, !dbg !652

53:                                               ; preds = %49
  call void @match_res_pat(%struct.molecule_t* %0, i8* %51), !dbg !653
  br label %57, !dbg !653

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4, !dbg !654, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %55, metadata !581, metadata !DIExpression()), !dbg !583
  %56 = load i32, i32* %4, align 4, !dbg !655, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %56, metadata !582, metadata !DIExpression()), !dbg !583
  call void @match_res_range(%struct.molecule_t* %0, i32 %55, i32 %56), !dbg !656
  br label %57

57:                                               ; preds = %54, %53
  %58 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !657
  call void @llvm.dbg.value(metadata i8* %58, metadata !580, metadata !DIExpression()), !dbg !583
  %.not14 = icmp eq i8* %58, null, !dbg !658
  br i1 %.not14, label %._crit_edge3, label %.lr.ph2, !dbg !658

.lr.ph2:                                          ; preds = %57, %65
  %59 = phi i8* [ %66, %65 ], [ %58, %57 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !581, metadata !DIExpression(DW_OP_deref)), !dbg !583
  call void @llvm.dbg.value(metadata i32* %4, metadata !582, metadata !DIExpression(DW_OP_deref)), !dbg !583
  %60 = call i32 @is_pattern(i8* %59, i32* nonnull %3, i32* nonnull %4), !dbg !659
  %.not15 = icmp eq i32 %60, 0, !dbg !659
  br i1 %.not15, label %62, label %61, !dbg !662

61:                                               ; preds = %.lr.ph2
  call void @match_res_pat(%struct.molecule_t* %0, i8* %59), !dbg !663
  br label %65, !dbg !663

62:                                               ; preds = %.lr.ph2
  %63 = load i32, i32* %3, align 4, !dbg !664, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %63, metadata !581, metadata !DIExpression()), !dbg !583
  %64 = load i32, i32* %4, align 4, !dbg !665, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %64, metadata !582, metadata !DIExpression()), !dbg !583
  call void @match_res_range(%struct.molecule_t* %0, i32 %63, i32 %64), !dbg !666
  br label %65

65:                                               ; preds = %62, %61
  %66 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !657
  call void @llvm.dbg.value(metadata i8* %66, metadata !580, metadata !DIExpression()), !dbg !583
  %.not16 = icmp eq i8* %66, null, !dbg !658
  br i1 %.not16, label %._crit_edge3, label %.lr.ph2, !dbg !658, !llvm.loop !667

67:                                               ; preds = %._crit_edge
  call void @match_res_range(%struct.molecule_t* %0, i32 1, i32 -1), !dbg !669
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %57, %65, %67
  %68 = load i8*, i8** @apart, align 8, !dbg !670, !tbaa !315
  %.not8 = icmp eq i8* %68, null, !dbg !670
  br i1 %.not8, label %87, label %69, !dbg !672

69:                                               ; preds = %._crit_edge3
  %70 = load i8*, i8** @apart, align 8, !dbg !673, !tbaa !315
  %71 = call i8* @strtok(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !675
  call void @llvm.dbg.value(metadata i8* %71, metadata !580, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i32* %3, metadata !581, metadata !DIExpression(DW_OP_deref)), !dbg !583
  call void @llvm.dbg.value(metadata i32* %4, metadata !582, metadata !DIExpression(DW_OP_deref)), !dbg !583
  %72 = call i32 @is_pattern(i8* %71, i32* nonnull %3, i32* nonnull %4), !dbg !676
  %.not9 = icmp eq i32 %72, 0, !dbg !676
  br i1 %.not9, label %74, label %73, !dbg !678

73:                                               ; preds = %69
  call void @match_atom_pat(%struct.molecule_t* %0, i8* %71), !dbg !679
  br label %77, !dbg !679

74:                                               ; preds = %69
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !680, !tbaa !315
  %76 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %75) #10, !dbg !682
  br label %77

77:                                               ; preds = %74, %73
  %78 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !683
  call void @llvm.dbg.value(metadata i8* %78, metadata !580, metadata !DIExpression()), !dbg !583
  %.not10 = icmp eq i8* %78, null, !dbg !684
  br i1 %.not10, label %._crit_edge6, label %.lr.ph5, !dbg !684

.lr.ph5:                                          ; preds = %77, %85
  %79 = phi i8* [ %86, %85 ], [ %78, %77 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !581, metadata !DIExpression(DW_OP_deref)), !dbg !583
  call void @llvm.dbg.value(metadata i32* %4, metadata !582, metadata !DIExpression(DW_OP_deref)), !dbg !583
  %80 = call i32 @is_pattern(i8* %79, i32* nonnull %3, i32* nonnull %4), !dbg !685
  %.not11 = icmp eq i32 %80, 0, !dbg !685
  br i1 %.not11, label %82, label %81, !dbg !688

81:                                               ; preds = %.lr.ph5
  call void @match_atom_pat(%struct.molecule_t* %0, i8* %79), !dbg !689
  br label %85, !dbg !689

82:                                               ; preds = %.lr.ph5
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !690, !tbaa !315
  %84 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %83) #10, !dbg !692
  br label %85

85:                                               ; preds = %82, %81
  %86 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !683
  call void @llvm.dbg.value(metadata i8* %86, metadata !580, metadata !DIExpression()), !dbg !583
  %.not12 = icmp eq i8* %86, null, !dbg !684
  br i1 %.not12, label %._crit_edge6, label %.lr.ph5, !dbg !684, !llvm.loop !693

87:                                               ; preds = %._crit_edge3
  call void @match_atom_pat(%struct.molecule_t* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !695
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %77, %85, %87
  %88 = bitcast i32* %4 to i8*, !dbg !696
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %88) #11, !dbg !696
  %89 = bitcast i32* %3 to i8*, !dbg !696
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89) #11, !dbg !696
  ret i32 0, !dbg !697
}

; Function Attrs: nounwind uwtable
define internal void @or_select(%struct.molecule_t* %0) #0 !dbg !698 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !700, metadata !DIExpression()), !dbg !706
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !707
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !707, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !703, metadata !DIExpression()), !dbg !706
  %.not = icmp eq %struct.strand_t* %3, null, !dbg !709
  br i1 %.not, label %._crit_edge15, label %.lr.ph14, !dbg !709

.lr.ph14:                                         ; preds = %1, %._crit_edge11
  %.012 = phi %struct.strand_t* [ %41, %._crit_edge11 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.012, metadata !703, metadata !DIExpression()), !dbg !706
  %4 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !710
  %5 = load i32, i32* %4, align 4, !dbg !710, !tbaa !300
  %6 = shl i32 %5, 7, !dbg !713
  %7 = and i32 %6, 128, !dbg !713
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !714
  %9 = or i32 %5, %7, !dbg !715
  store i32 %9, i32* %8, align 4, !dbg !715, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !702, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i64 0, metadata !702, metadata !DIExpression()), !dbg !706
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 5, !dbg !716
  %11 = load i32, i32* %10, align 8, !dbg !716, !tbaa !308
  %12 = icmp sgt i32 %11, 0, !dbg !719
  br i1 %12, label %.lr.ph10, label %._crit_edge11, !dbg !720

.lr.ph10:                                         ; preds = %.lr.ph14, %._crit_edge
  %indvars.iv48 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %.lr.ph14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !702, metadata !DIExpression()), !dbg !706
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 7, !dbg !721
  %14 = load %struct.residue_t**, %struct.residue_t*** %13, align 8, !dbg !721, !tbaa !313
  %15 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %14, i64 %indvars.iv48, !dbg !723
  %16 = load %struct.residue_t*, %struct.residue_t** %15, align 8, !dbg !723, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %16, metadata !704, metadata !DIExpression()), !dbg !706
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i64 0, i32 6, !dbg !724
  %18 = load i32, i32* %17, align 8, !dbg !724, !tbaa !318
  %19 = shl i32 %18, 7, !dbg !725
  %20 = and i32 %19, 128, !dbg !725
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i64 0, i32 6, !dbg !726
  %22 = or i32 %18, %20, !dbg !727
  store i32 %22, i32* %21, align 8, !dbg !727, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !701, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()), !dbg !706
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i64 0, i32 15, !dbg !728
  %24 = load i32, i32* %23, align 8, !dbg !728, !tbaa !326
  %25 = icmp sgt i32 %24, 0, !dbg !731
  br i1 %25, label %.lr.ph, label %._crit_edge, !dbg !732

.lr.ph:                                           ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !701, metadata !DIExpression()), !dbg !706
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i64 0, i32 17, !dbg !733
  %27 = load %struct.atom_t*, %struct.atom_t** %26, align 8, !dbg !733, !tbaa !331
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %27, i64 %indvars.iv7), metadata !705, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !706
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv7, i32 2, !dbg !735
  %29 = load i32, i32* %28, align 8, !dbg !735, !tbaa !334
  %30 = shl i32 %29, 7, !dbg !736
  %31 = and i32 %30, 128, !dbg !736
  %32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv7, i32 2, !dbg !737
  %33 = or i32 %29, %31, !dbg !738
  store i32 %33, i32* %32, align 8, !dbg !738, !tbaa !334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !739
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !701, metadata !DIExpression()), !dbg !706
  %34 = load i32, i32* %23, align 8, !dbg !728, !tbaa !326
  %35 = sext i32 %34 to i64, !dbg !731
  %36 = icmp slt i64 %indvars.iv.next, %35, !dbg !731
  br i1 %36, label %.lr.ph, label %._crit_edge, !dbg !732, !llvm.loop !740

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph10
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !742
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !702, metadata !DIExpression()), !dbg !706
  %37 = load i32, i32* %10, align 8, !dbg !716, !tbaa !308
  %38 = sext i32 %37 to i64, !dbg !719
  %39 = icmp slt i64 %indvars.iv.next5, %38, !dbg !719
  br i1 %39, label %.lr.ph10, label %._crit_edge11, !dbg !720, !llvm.loop !743

._crit_edge11:                                    ; preds = %._crit_edge, %.lr.ph14
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 4, !dbg !745
  %41 = load %struct.strand_t*, %struct.strand_t** %40, align 8, !dbg !745, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %41, metadata !703, metadata !DIExpression()), !dbg !706
  %.not17 = icmp eq %struct.strand_t* %41, null, !dbg !709
  br i1 %.not17, label %._crit_edge15, label %.lr.ph14, !dbg !709, !llvm.loop !746

._crit_edge15:                                    ; preds = %._crit_edge11, %1
  ret void, !dbg !748
}

; Function Attrs: nounwind uwtable
define internal void @set_select(%struct.molecule_t* %0) #0 !dbg !749 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !751, metadata !DIExpression()), !dbg !757
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !758
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !758, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !754, metadata !DIExpression()), !dbg !757
  %.not = icmp eq %struct.strand_t* %3, null, !dbg !760
  br i1 %.not, label %._crit_edge15, label %.lr.ph14, !dbg !760

.lr.ph14:                                         ; preds = %1, %._crit_edge11
  %.012 = phi %struct.strand_t* [ %38, %._crit_edge11 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.012, metadata !754, metadata !DIExpression()), !dbg !757
  %4 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !761
  %5 = load i32, i32* %4, align 4, !dbg !761, !tbaa !300
  %6 = lshr i32 %5, 7, !dbg !764
  %.lobit = and i32 %6, 1, !dbg !764
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !765
  %8 = or i32 %5, %.lobit, !dbg !766
  store i32 %8, i32* %7, align 4, !dbg !766, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !753, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i64 0, metadata !753, metadata !DIExpression()), !dbg !757
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 5, !dbg !767
  %10 = load i32, i32* %9, align 8, !dbg !767, !tbaa !308
  %11 = icmp sgt i32 %10, 0, !dbg !770
  br i1 %11, label %.lr.ph10, label %._crit_edge11, !dbg !771

.lr.ph10:                                         ; preds = %.lr.ph14, %._crit_edge
  %indvars.iv48 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %.lr.ph14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !753, metadata !DIExpression()), !dbg !757
  %12 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 7, !dbg !772
  %13 = load %struct.residue_t**, %struct.residue_t*** %12, align 8, !dbg !772, !tbaa !313
  %14 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %13, i64 %indvars.iv48, !dbg !774
  %15 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !774, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %15, metadata !755, metadata !DIExpression()), !dbg !757
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %15, i64 0, i32 6, !dbg !775
  %17 = load i32, i32* %16, align 8, !dbg !775, !tbaa !318
  %18 = lshr i32 %17, 7, !dbg !776
  %.lobit19 = and i32 %18, 1, !dbg !776
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %15, i64 0, i32 6, !dbg !777
  %20 = or i32 %17, %.lobit19, !dbg !778
  store i32 %20, i32* %19, align 8, !dbg !778, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !752, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i64 0, metadata !752, metadata !DIExpression()), !dbg !757
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %15, i64 0, i32 15, !dbg !779
  %22 = load i32, i32* %21, align 8, !dbg !779, !tbaa !326
  %23 = icmp sgt i32 %22, 0, !dbg !782
  br i1 %23, label %.lr.ph, label %._crit_edge, !dbg !783

.lr.ph:                                           ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !752, metadata !DIExpression()), !dbg !757
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %15, i64 0, i32 17, !dbg !784
  %25 = load %struct.atom_t*, %struct.atom_t** %24, align 8, !dbg !784, !tbaa !331
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %25, i64 %indvars.iv7), metadata !756, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !757
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %indvars.iv7, i32 2, !dbg !786
  %27 = load i32, i32* %26, align 8, !dbg !786, !tbaa !334
  %28 = lshr i32 %27, 7, !dbg !787
  %.lobit21 = and i32 %28, 1, !dbg !787
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %indvars.iv7, i32 2, !dbg !788
  %30 = or i32 %27, %.lobit21, !dbg !789
  store i32 %30, i32* %29, align 8, !dbg !789, !tbaa !334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !790
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !752, metadata !DIExpression()), !dbg !757
  %31 = load i32, i32* %21, align 8, !dbg !779, !tbaa !326
  %32 = sext i32 %31 to i64, !dbg !782
  %33 = icmp slt i64 %indvars.iv.next, %32, !dbg !782
  br i1 %33, label %.lr.ph, label %._crit_edge, !dbg !783, !llvm.loop !791

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph10
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !793
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !753, metadata !DIExpression()), !dbg !757
  %34 = load i32, i32* %9, align 8, !dbg !767, !tbaa !308
  %35 = sext i32 %34 to i64, !dbg !770
  %36 = icmp slt i64 %indvars.iv.next5, %35, !dbg !770
  br i1 %36, label %.lr.ph10, label %._crit_edge11, !dbg !771, !llvm.loop !794

._crit_edge11:                                    ; preds = %._crit_edge, %.lr.ph14
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 4, !dbg !796
  %38 = load %struct.strand_t*, %struct.strand_t** %37, align 8, !dbg !796, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %38, metadata !754, metadata !DIExpression()), !dbg !757
  %.not17 = icmp eq %struct.strand_t* %38, null, !dbg !760
  br i1 %.not17, label %._crit_edge15, label %.lr.ph14, !dbg !760, !llvm.loop !797

._crit_edge15:                                    ; preds = %._crit_edge11, %1
  ret void, !dbg !799
}

; Function Attrs: nounwind uwtable
define dso_local i32 @atom_in_aexpr(%struct.atom_t* %0, i8* %1) #0 !dbg !800 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !804, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8* %1, metadata !805, metadata !DIExpression()), !dbg !809
  %3 = icmp eq i8* %1, null, !dbg !810
  br i1 %3, label %._crit_edge, label %.lr.ph, !dbg !812

.lr.ph:                                           ; preds = %2
  call void @llvm.dbg.value(metadata i8* %1, metadata !806, metadata !DIExpression()), !dbg !809
  %4 = call i8* @strchr(i8* noundef nonnull %1, i32 124) #9, !dbg !813
  call void @llvm.dbg.value(metadata i8* %4, metadata !807, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8* %1, metadata !806, metadata !DIExpression()), !dbg !809
  br label %5, !dbg !815

5:                                                ; preds = %.lr.ph, %27
  %.025 = phi i8* [ %1, %.lr.ph ], [ %.1, %27 ]
  %.034 = phi i8* [ %4, %.lr.ph ], [ %.2, %27 ]
  call void @llvm.dbg.value(metadata i8* %.025, metadata !806, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8* %.034, metadata !807, metadata !DIExpression()), !dbg !809
  %.not = icmp eq i8* %.034, null, !dbg !816
  br i1 %.not, label %11, label %6, !dbg !820

6:                                                ; preds = %5
  %7 = ptrtoint i8* %.034 to i64, !dbg !821
  %8 = ptrtoint i8* %.025 to i64, !dbg !821
  %9 = sub i64 %7, %8, !dbg !821
  call void @llvm.dbg.value(metadata i64 %9, metadata !808, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !809
  %10 = getelementptr inbounds i8, i8* %.034, i64 1, !dbg !823
  call void @llvm.dbg.value(metadata i8* %10, metadata !807, metadata !DIExpression()), !dbg !809
  br label %13, !dbg !824

11:                                               ; preds = %5
  %12 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.025) #9, !dbg !825
  call void @llvm.dbg.value(metadata i64 %12, metadata !808, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !809
  br label %13

13:                                               ; preds = %11, %6
  %.1 = phi i8* [ %10, %6 ], [ %.034, %11 ], !dbg !826
  %.01.in = phi i64 [ %9, %6 ], [ %12, %11 ]
  %.01 = trunc i64 %.01.in to i32, !dbg !827
  call void @llvm.dbg.value(metadata i32 %.01, metadata !808, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8* %.1, metadata !807, metadata !DIExpression()), !dbg !809
  %14 = icmp sgt i32 %.01, 999, !dbg !828
  br i1 %14, label %15, label %18, !dbg !830

15:                                               ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !831, !tbaa !315
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %16) #10, !dbg !833
  br label %._crit_edge, !dbg !834

18:                                               ; preds = %13
  %sext = shl i64 %.01.in, 32, !dbg !835
  %19 = ashr exact i64 %sext, 32, !dbg !835
  %20 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* %.025, i64 %19) #11, !dbg !836
  %sext7 = shl i64 %.01.in, 32, !dbg !837
  %21 = ashr exact i64 %sext7, 32, !dbg !837
  %22 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %21, !dbg !837
  store i8 0, i8* %22, align 1, !dbg !838, !tbaa !429
  %23 = call i32 @atom_in_1_aexpr(%struct.atom_t* %0, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0)), !dbg !839
  %.not8 = icmp eq i32 %23, 0, !dbg !839
  br i1 %.not8, label %24, label %._crit_edge, !dbg !841

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* %.1, metadata !806, metadata !DIExpression()), !dbg !809
  %.not9 = icmp eq i8* %.1, null, !dbg !842
  br i1 %.not9, label %27, label %25, !dbg !844

25:                                               ; preds = %24
  %26 = call i8* @strchr(i8* noundef nonnull %.1, i32 124) #9, !dbg !845
  call void @llvm.dbg.value(metadata i8* %26, metadata !807, metadata !DIExpression()), !dbg !809
  br label %27, !dbg !846

27:                                               ; preds = %25, %24
  %.2 = phi i8* [ %26, %25 ], [ %.1, %24 ], !dbg !847
  call void @llvm.dbg.value(metadata i8* %.1, metadata !806, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8* %.2, metadata !807, metadata !DIExpression()), !dbg !809
  %.not10 = icmp eq i8* %.1, null, !dbg !815
  br i1 %.not10, label %._crit_edge, label %5, !dbg !815, !llvm.loop !848

._crit_edge:                                      ; preds = %27, %18, %2, %15
  %.0 = phi i32 [ 0, %15 ], [ 0, %2 ], [ 1, %18 ], [ 0, %27 ], !dbg !809
  ret i32 %.0, !dbg !850
}

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_1_aexpr(%struct.atom_t* %0, i8* %1) #0 !dbg !851 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !853, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i8* %1, metadata !854, metadata !DIExpression()), !dbg !861
  %5 = bitcast i32* %3 to i8*, !dbg !862
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #11, !dbg !862
  %6 = bitcast i32* %4 to i8*, !dbg !862
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !862
  call void @llvm.dbg.value(metadata i8* %1, metadata !855, metadata !DIExpression()), !dbg !861
  %7 = load i8, i8* %1, align 1, !dbg !863, !tbaa !429
  %8 = icmp eq i8 %7, 58, !dbg !865
  br i1 %8, label %9, label %11, !dbg !866

9:                                                ; preds = %2
  store i8* null, i8** @spart, align 8, !dbg !867, !tbaa !315
  %10 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !869
  call void @llvm.dbg.value(metadata i8* %10, metadata !855, metadata !DIExpression()), !dbg !861
  br label %16, !dbg !870

11:                                               ; preds = %2
  %12 = call i8* @strtok(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !871
  store i8* %12, i8** @spart, align 8, !dbg !873, !tbaa !315
  %13 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #9, !dbg !874
  %14 = add i64 %13, 1, !dbg !875
  %15 = getelementptr inbounds i8, i8* %1, i64 %14, !dbg !876
  call void @llvm.dbg.value(metadata i8* %15, metadata !855, metadata !DIExpression()), !dbg !861
  br label %16

16:                                               ; preds = %11, %9
  %.01 = phi i8* [ %10, %9 ], [ %15, %11 ], !dbg !877
  call void @llvm.dbg.value(metadata i8* %.01, metadata !855, metadata !DIExpression()), !dbg !861
  %17 = load i8, i8* %.01, align 1, !dbg !878, !tbaa !429
  %18 = icmp eq i8 %17, 58, !dbg !880
  br i1 %18, label %19, label %21, !dbg !881

19:                                               ; preds = %16
  store i8* null, i8** @rpart, align 8, !dbg !882, !tbaa !315
  %20 = getelementptr inbounds i8, i8* %.01, i64 1, !dbg !884
  call void @llvm.dbg.value(metadata i8* %20, metadata !855, metadata !DIExpression()), !dbg !861
  br label %26, !dbg !885

21:                                               ; preds = %16
  %22 = call i8* @strtok(i8* nonnull %.01, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !886
  store i8* %22, i8** @rpart, align 8, !dbg !888, !tbaa !315
  %23 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %22) #9, !dbg !889
  %24 = add i64 %23, 1, !dbg !890
  %25 = getelementptr inbounds i8, i8* %.01, i64 %24, !dbg !891
  call void @llvm.dbg.value(metadata i8* %25, metadata !855, metadata !DIExpression()), !dbg !861
  br label %26

26:                                               ; preds = %21, %19
  %.1 = phi i8* [ %20, %19 ], [ %25, %21 ], !dbg !892
  call void @llvm.dbg.value(metadata i8* %.1, metadata !855, metadata !DIExpression()), !dbg !861
  %27 = call i8* @strtok(i8* %.1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !893
  store i8* %27, i8** @apart, align 8, !dbg !894, !tbaa !315
  %28 = load i8*, i8** @spart, align 8, !dbg !895, !tbaa !315
  %.not = icmp eq i8* %28, null, !dbg !895
  br i1 %.not, label %51, label %29, !dbg !897

29:                                               ; preds = %26
  %30 = load i8*, i8** @spart, align 8, !dbg !898, !tbaa !315
  %31 = call i8* @strtok(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !900
  call void @llvm.dbg.value(metadata i8* %31, metadata !856, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i32* %3, metadata !857, metadata !DIExpression(DW_OP_deref)), !dbg !861
  call void @llvm.dbg.value(metadata i32* %4, metadata !858, metadata !DIExpression(DW_OP_deref)), !dbg !861
  %32 = call i32 @is_pattern(i8* %31, i32* nonnull %3, i32* nonnull %4), !dbg !901
  %.not24 = icmp eq i32 %32, 0, !dbg !901
  br i1 %.not24, label %35, label %33, !dbg !903

33:                                               ; preds = %29
  %34 = call i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %31), !dbg !904
  %.not31 = icmp eq i32 %34, 0, !dbg !904
  br i1 %.not31, label %39, label %51, !dbg !907

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4, !dbg !908, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %36, metadata !857, metadata !DIExpression()), !dbg !861
  %37 = load i32, i32* %4, align 4, !dbg !910, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %37, metadata !858, metadata !DIExpression()), !dbg !861
  %38 = call i32 @atom_in_str_range(%struct.atom_t* %0, i32 %36, i32 %37), !dbg !911
  %.not25 = icmp eq i32 %38, 0, !dbg !911
  br i1 %.not25, label %39, label %51, !dbg !912

39:                                               ; preds = %35, %33
  %40 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !913
  call void @llvm.dbg.value(metadata i8* %40, metadata !856, metadata !DIExpression()), !dbg !861
  %.not26 = icmp eq i8* %40, null, !dbg !914
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !dbg !914

.lr.ph:                                           ; preds = %39, %49
  %41 = phi i8* [ %50, %49 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !857, metadata !DIExpression(DW_OP_deref)), !dbg !861
  call void @llvm.dbg.value(metadata i32* %4, metadata !858, metadata !DIExpression(DW_OP_deref)), !dbg !861
  %42 = call i32 @is_pattern(i8* %41, i32* nonnull %3, i32* nonnull %4), !dbg !915
  %.not27 = icmp eq i32 %42, 0, !dbg !915
  br i1 %.not27, label %45, label %43, !dbg !918

43:                                               ; preds = %.lr.ph
  %44 = call i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %41), !dbg !919
  %.not30 = icmp eq i32 %44, 0, !dbg !919
  br i1 %.not30, label %49, label %51, !dbg !922

45:                                               ; preds = %.lr.ph
  %46 = load i32, i32* %3, align 4, !dbg !923, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %46, metadata !857, metadata !DIExpression()), !dbg !861
  %47 = load i32, i32* %4, align 4, !dbg !925, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %47, metadata !858, metadata !DIExpression()), !dbg !861
  %48 = call i32 @atom_in_str_range(%struct.atom_t* %0, i32 %46, i32 %47), !dbg !926
  %.not28 = icmp eq i32 %48, 0, !dbg !926
  br i1 %.not28, label %49, label %51, !dbg !927

49:                                               ; preds = %45, %43
  %50 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !913
  call void @llvm.dbg.value(metadata i8* %50, metadata !856, metadata !DIExpression()), !dbg !861
  %.not29 = icmp eq i8* %50, null, !dbg !914
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !dbg !914, !llvm.loop !928

51:                                               ; preds = %26, %45, %43, %35, %33
  call void @llvm.dbg.label(metadata !859), !dbg !930
  %52 = load i8*, i8** @rpart, align 8, !dbg !931, !tbaa !315
  %.not8 = icmp eq i8* %52, null, !dbg !931
  br i1 %.not8, label %75, label %53, !dbg !933

53:                                               ; preds = %51
  %54 = load i8*, i8** @rpart, align 8, !dbg !934, !tbaa !315
  %55 = call i8* @strtok(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !936
  call void @llvm.dbg.value(metadata i8* %55, metadata !856, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i32* %3, metadata !857, metadata !DIExpression(DW_OP_deref)), !dbg !861
  call void @llvm.dbg.value(metadata i32* %4, metadata !858, metadata !DIExpression(DW_OP_deref)), !dbg !861
  %56 = call i32 @is_pattern(i8* %55, i32* nonnull %3, i32* nonnull %4), !dbg !937
  %.not16 = icmp eq i32 %56, 0, !dbg !937
  br i1 %.not16, label %59, label %57, !dbg !939

57:                                               ; preds = %53
  %58 = call i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %55), !dbg !940
  %.not23 = icmp eq i32 %58, 0, !dbg !940
  br i1 %.not23, label %63, label %75, !dbg !943

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4, !dbg !944, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %60, metadata !857, metadata !DIExpression()), !dbg !861
  %61 = load i32, i32* %4, align 4, !dbg !946, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %61, metadata !858, metadata !DIExpression()), !dbg !861
  %62 = call i32 @atom_in_res_range(%struct.atom_t* %0, i32 %60, i32 %61), !dbg !947
  %.not17 = icmp eq i32 %62, 0, !dbg !947
  br i1 %.not17, label %63, label %75, !dbg !948

63:                                               ; preds = %59, %57
  %64 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !949
  call void @llvm.dbg.value(metadata i8* %64, metadata !856, metadata !DIExpression()), !dbg !861
  %.not18 = icmp eq i8* %64, null, !dbg !950
  br i1 %.not18, label %._crit_edge, label %.lr.ph3, !dbg !950

.lr.ph3:                                          ; preds = %63, %73
  %65 = phi i8* [ %74, %73 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !857, metadata !DIExpression(DW_OP_deref)), !dbg !861
  call void @llvm.dbg.value(metadata i32* %4, metadata !858, metadata !DIExpression(DW_OP_deref)), !dbg !861
  %66 = call i32 @is_pattern(i8* %65, i32* nonnull %3, i32* nonnull %4), !dbg !951
  %.not19 = icmp eq i32 %66, 0, !dbg !951
  br i1 %.not19, label %69, label %67, !dbg !954

67:                                               ; preds = %.lr.ph3
  %68 = call i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %65), !dbg !955
  %.not22 = icmp eq i32 %68, 0, !dbg !955
  br i1 %.not22, label %73, label %75, !dbg !958

69:                                               ; preds = %.lr.ph3
  %70 = load i32, i32* %3, align 4, !dbg !959, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %70, metadata !857, metadata !DIExpression()), !dbg !861
  %71 = load i32, i32* %4, align 4, !dbg !961, !tbaa !628
  call void @llvm.dbg.value(metadata i32 %71, metadata !858, metadata !DIExpression()), !dbg !861
  %72 = call i32 @atom_in_res_range(%struct.atom_t* %0, i32 %70, i32 %71), !dbg !962
  %.not20 = icmp eq i32 %72, 0, !dbg !962
  br i1 %.not20, label %73, label %75, !dbg !963

73:                                               ; preds = %69, %67
  %74 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !949
  call void @llvm.dbg.value(metadata i8* %74, metadata !856, metadata !DIExpression()), !dbg !861
  %.not21 = icmp eq i8* %74, null, !dbg !950
  br i1 %.not21, label %._crit_edge, label %.lr.ph3, !dbg !950, !llvm.loop !964

75:                                               ; preds = %51, %69, %67, %59, %57
  call void @llvm.dbg.label(metadata !860), !dbg !966
  %76 = load i8*, i8** @apart, align 8, !dbg !967, !tbaa !315
  %.not9 = icmp eq i8* %76, null, !dbg !967
  br i1 %.not9, label %._crit_edge, label %77, !dbg !969

77:                                               ; preds = %75
  %78 = load i8*, i8** @apart, align 8, !dbg !970, !tbaa !315
  %79 = call i8* @strtok(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !972
  call void @llvm.dbg.value(metadata i8* %79, metadata !856, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i32* %3, metadata !857, metadata !DIExpression(DW_OP_deref)), !dbg !861
  call void @llvm.dbg.value(metadata i32* %4, metadata !858, metadata !DIExpression(DW_OP_deref)), !dbg !861
  %80 = call i32 @is_pattern(i8* %79, i32* nonnull %3, i32* nonnull %4), !dbg !973
  %.not10 = icmp eq i32 %80, 0, !dbg !973
  br i1 %.not10, label %83, label %81, !dbg !975

81:                                               ; preds = %77
  %82 = call i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %79), !dbg !976
  %.not11 = icmp eq i32 %82, 0, !dbg !976
  br i1 %.not11, label %86, label %._crit_edge, !dbg !979

83:                                               ; preds = %77
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !980, !tbaa !315
  %85 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %84) #10, !dbg !982
  br label %._crit_edge, !dbg !983

86:                                               ; preds = %81
  %87 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !984
  call void @llvm.dbg.value(metadata i8* %87, metadata !856, metadata !DIExpression()), !dbg !861
  %.not12 = icmp eq i8* %87, null, !dbg !985
  br i1 %.not12, label %._crit_edge, label %.lr.ph6, !dbg !985

.lr.ph6:                                          ; preds = %86, %95
  %88 = phi i8* [ %96, %95 ], [ %87, %86 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !857, metadata !DIExpression(DW_OP_deref)), !dbg !861
  call void @llvm.dbg.value(metadata i32* %4, metadata !858, metadata !DIExpression(DW_OP_deref)), !dbg !861
  %89 = call i32 @is_pattern(i8* %88, i32* nonnull %3, i32* nonnull %4), !dbg !986
  %.not13 = icmp eq i32 %89, 0, !dbg !986
  br i1 %.not13, label %92, label %90, !dbg !989

90:                                               ; preds = %.lr.ph6
  %91 = call i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %88), !dbg !990
  %.not14 = icmp eq i32 %91, 0, !dbg !990
  br i1 %.not14, label %95, label %._crit_edge, !dbg !993

92:                                               ; preds = %.lr.ph6
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !994, !tbaa !315
  %94 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %93) #10, !dbg !996
  br label %._crit_edge, !dbg !997

95:                                               ; preds = %90
  %96 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !984
  call void @llvm.dbg.value(metadata i8* %96, metadata !856, metadata !DIExpression()), !dbg !861
  %.not15 = icmp eq i8* %96, null, !dbg !985
  br i1 %.not15, label %._crit_edge, label %.lr.ph6, !dbg !985, !llvm.loop !998

._crit_edge:                                      ; preds = %95, %86, %75, %90, %81, %63, %73, %39, %49, %92, %83
  %.0 = phi i32 [ 0, %92 ], [ 0, %83 ], [ 0, %49 ], [ 0, %39 ], [ 0, %73 ], [ 0, %63 ], [ 1, %81 ], [ 1, %90 ], [ 1, %75 ], [ 0, %86 ], [ 0, %95 ], !dbg !861
  %97 = bitcast i32* %4 to i8*, !dbg !1000
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #11, !dbg !1000
  %98 = bitcast i32* %3 to i8*, !dbg !1000
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %98) #11, !dbg !1000
  ret i32 %.0, !dbg !1000
}

; Function Attrs: nounwind uwtable
define dso_local void @set_attr_if(%struct.molecule_t* %0, i32 %1, i32 %2) #0 !dbg !1001 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1005, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %1, metadata !1006, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %2, metadata !1007, metadata !DIExpression()), !dbg !1013
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1014
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1014, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1010, metadata !DIExpression()), !dbg !1013
  %.not = icmp eq %struct.strand_t* %5, null, !dbg !1016
  br i1 %.not, label %._crit_edge15, label %.lr.ph14, !dbg !1016

.lr.ph14:                                         ; preds = %3, %._crit_edge11
  %.012 = phi %struct.strand_t* [ %40, %._crit_edge11 ], [ %5, %3 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.012, metadata !1010, metadata !DIExpression()), !dbg !1013
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !1017
  %7 = load i32, i32* %6, align 4, !dbg !1017, !tbaa !300
  %8 = and i32 %7, %2, !dbg !1020
  %.not18 = icmp eq i32 %8, 0, !dbg !1020
  %. = select i1 %.not18, i32 0, i32 %1, !dbg !1021
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !1022
  %10 = or i32 %7, %., !dbg !1023
  store i32 %10, i32* %9, align 4, !dbg !1023, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !1009, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i64 0, metadata !1009, metadata !DIExpression()), !dbg !1013
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 5, !dbg !1024
  %12 = load i32, i32* %11, align 8, !dbg !1024, !tbaa !308
  %13 = icmp sgt i32 %12, 0, !dbg !1027
  br i1 %13, label %.lr.ph10, label %._crit_edge11, !dbg !1028

.lr.ph10:                                         ; preds = %.lr.ph14, %._crit_edge
  %indvars.iv48 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %.lr.ph14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !1009, metadata !DIExpression()), !dbg !1013
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 7, !dbg !1029
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8, !dbg !1029, !tbaa !313
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv48, !dbg !1031
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8, !dbg !1031, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %17, metadata !1011, metadata !DIExpression()), !dbg !1013
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 6, !dbg !1032
  %19 = load i32, i32* %18, align 8, !dbg !1032, !tbaa !318
  %20 = and i32 %19, %2, !dbg !1033
  %.not20 = icmp eq i32 %20, 0, !dbg !1033
  %.16 = select i1 %.not20, i32 0, i32 %1, !dbg !1034
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 6, !dbg !1035
  %22 = or i32 %19, %.16, !dbg !1036
  store i32 %22, i32* %21, align 8, !dbg !1036, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !1008, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i64 0, metadata !1008, metadata !DIExpression()), !dbg !1013
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 15, !dbg !1037
  %24 = load i32, i32* %23, align 8, !dbg !1037, !tbaa !326
  %25 = icmp sgt i32 %24, 0, !dbg !1040
  br i1 %25, label %.lr.ph, label %._crit_edge, !dbg !1041

.lr.ph:                                           ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !1008, metadata !DIExpression()), !dbg !1013
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 17, !dbg !1042
  %27 = load %struct.atom_t*, %struct.atom_t** %26, align 8, !dbg !1042, !tbaa !331
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %27, i64 %indvars.iv7), metadata !1012, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1013
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv7, i32 2, !dbg !1044
  %29 = load i32, i32* %28, align 8, !dbg !1044, !tbaa !334
  %30 = and i32 %29, %2, !dbg !1045
  %.not21 = icmp eq i32 %30, 0, !dbg !1045
  %.17 = select i1 %.not21, i32 0, i32 %1, !dbg !1046
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv7, i32 2, !dbg !1047
  %32 = or i32 %29, %.17, !dbg !1048
  store i32 %32, i32* %31, align 8, !dbg !1048, !tbaa !334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !1049
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1008, metadata !DIExpression()), !dbg !1013
  %33 = load i32, i32* %23, align 8, !dbg !1037, !tbaa !326
  %34 = sext i32 %33 to i64, !dbg !1040
  %35 = icmp slt i64 %indvars.iv.next, %34, !dbg !1040
  br i1 %35, label %.lr.ph, label %._crit_edge, !dbg !1041, !llvm.loop !1050

._crit_edge:                                      ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !1009, metadata !DIExpression()), !dbg !1013
  %36 = load i32, i32* %11, align 8, !dbg !1024, !tbaa !308
  %37 = sext i32 %36 to i64, !dbg !1027
  %38 = icmp slt i64 %indvars.iv.next5, %37, !dbg !1027
  br i1 %38, label %.lr.ph10, label %._crit_edge11, !dbg !1028, !llvm.loop !1053

._crit_edge11:                                    ; preds = %.lr.ph14, %._crit_edge
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 4, !dbg !1055
  %40 = load %struct.strand_t*, %struct.strand_t** %39, align 8, !dbg !1055, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %40, metadata !1010, metadata !DIExpression()), !dbg !1013
  %.not19 = icmp eq %struct.strand_t* %40, null, !dbg !1016
  br i1 %.not19, label %._crit_edge15, label %.lr.ph14, !dbg !1016, !llvm.loop !1056

._crit_edge15:                                    ; preds = %._crit_edge11, %3
  ret void, !dbg !1058
}

; Function Attrs: nounwind uwtable
define dso_local void @clear_attr(%struct.molecule_t* %0, i32 %1) #0 !dbg !1059 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1063, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i32 %1, metadata !1064, metadata !DIExpression()), !dbg !1069
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1070
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1070, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %4, metadata !1067, metadata !DIExpression()), !dbg !1069
  %.not = icmp eq %struct.strand_t* %4, null, !dbg !1072
  br i1 %.not, label %._crit_edge15, label %.lr.ph14, !dbg !1072

.lr.ph14:                                         ; preds = %2, %._crit_edge11
  %.012 = phi %struct.strand_t* [ %36, %._crit_edge11 ], [ %4, %2 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.012, metadata !1067, metadata !DIExpression()), !dbg !1069
  %5 = xor i32 %1, -1, !dbg !1073
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !1076
  %7 = load i32, i32* %6, align 4, !dbg !1077, !tbaa !300
  %8 = and i32 %7, %5, !dbg !1077
  store i32 %8, i32* %6, align 4, !dbg !1077, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !1066, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i64 0, metadata !1066, metadata !DIExpression()), !dbg !1069
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 5, !dbg !1078
  %10 = load i32, i32* %9, align 8, !dbg !1078, !tbaa !308
  %11 = icmp sgt i32 %10, 0, !dbg !1081
  br i1 %11, label %.lr.ph10, label %._crit_edge11, !dbg !1082

.lr.ph10:                                         ; preds = %.lr.ph14, %._crit_edge
  %indvars.iv48 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %.lr.ph14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !1066, metadata !DIExpression()), !dbg !1069
  %12 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 7, !dbg !1083
  %13 = load %struct.residue_t**, %struct.residue_t*** %12, align 8, !dbg !1083, !tbaa !313
  %14 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %13, i64 %indvars.iv48, !dbg !1085
  %15 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1085, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %15, metadata !1068, metadata !DIExpression()), !dbg !1069
  %16 = xor i32 %1, -1, !dbg !1086
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %15, i64 0, i32 6, !dbg !1087
  %18 = load i32, i32* %17, align 8, !dbg !1088, !tbaa !318
  %19 = and i32 %18, %16, !dbg !1088
  store i32 %19, i32* %17, align 8, !dbg !1088, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !1065, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i64 0, metadata !1065, metadata !DIExpression()), !dbg !1069
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %15, i64 0, i32 15, !dbg !1089
  %21 = load i32, i32* %20, align 8, !dbg !1089, !tbaa !326
  %22 = icmp sgt i32 %21, 0, !dbg !1092
  br i1 %22, label %.lr.ph, label %._crit_edge, !dbg !1093

.lr.ph:                                           ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !1065, metadata !DIExpression()), !dbg !1069
  %23 = xor i32 %1, -1, !dbg !1094
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %15, i64 0, i32 17, !dbg !1095
  %25 = load %struct.atom_t*, %struct.atom_t** %24, align 8, !dbg !1095, !tbaa !331
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %indvars.iv7, i32 2, !dbg !1096
  %27 = load i32, i32* %26, align 8, !dbg !1097, !tbaa !334
  %28 = and i32 %27, %23, !dbg !1097
  store i32 %28, i32* %26, align 8, !dbg !1097, !tbaa !334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1065, metadata !DIExpression()), !dbg !1069
  %29 = load i32, i32* %20, align 8, !dbg !1089, !tbaa !326
  %30 = sext i32 %29 to i64, !dbg !1092
  %31 = icmp slt i64 %indvars.iv.next, %30, !dbg !1092
  br i1 %31, label %.lr.ph, label %._crit_edge, !dbg !1093, !llvm.loop !1099

._crit_edge:                                      ; preds = %.lr.ph10, %.lr.ph
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !1066, metadata !DIExpression()), !dbg !1069
  %32 = load i32, i32* %9, align 8, !dbg !1078, !tbaa !308
  %33 = sext i32 %32 to i64, !dbg !1081
  %34 = icmp slt i64 %indvars.iv.next5, %33, !dbg !1081
  br i1 %34, label %.lr.ph10, label %._crit_edge11, !dbg !1082, !llvm.loop !1102

._crit_edge11:                                    ; preds = %.lr.ph14, %._crit_edge
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 4, !dbg !1104
  %36 = load %struct.strand_t*, %struct.strand_t** %35, align 8, !dbg !1104, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %36, metadata !1067, metadata !DIExpression()), !dbg !1069
  %.not16 = icmp eq %struct.strand_t* %36, null, !dbg !1072
  br i1 %.not16, label %._crit_edge15, label %.lr.ph14, !dbg !1072, !llvm.loop !1105

._crit_edge15:                                    ; preds = %._crit_edge11, %2
  ret void, !dbg !1107
}

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @is_pattern(i8* %0, i32* %1, i32* %2) #0 !dbg !1108 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1113, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32* %1, metadata !1114, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32* %2, metadata !1115, metadata !DIExpression()), !dbg !1118
  %4 = call i16** @__ctype_b_loc() #12, !dbg !1119
  %5 = load i16*, i16** %4, align 8, !dbg !1119, !tbaa !315
  %6 = load i8, i8* %0, align 1, !dbg !1119, !tbaa !429
  %7 = sext i8 %6 to i64, !dbg !1119
  %8 = getelementptr inbounds i16, i16* %5, i64 %7, !dbg !1119
  %9 = load i16, i16* %8, align 2, !dbg !1119, !tbaa !1121
  %10 = and i16 %9, 2048, !dbg !1119
  %.not = icmp eq i16 %10, 0, !dbg !1119
  br i1 %.not, label %11, label %13, !dbg !1123

11:                                               ; preds = %3
  %12 = load i8, i8* %0, align 1, !dbg !1124, !tbaa !429
  %.not22 = icmp eq i8 %12, 45, !dbg !1125
  br i1 %.not22, label %13, label %113, !dbg !1126

13:                                               ; preds = %11, %3
  %14 = call i16** @__ctype_b_loc() #12, !dbg !1127
  %15 = load i16*, i16** %14, align 8, !dbg !1127, !tbaa !315
  %16 = load i8, i8* %0, align 1, !dbg !1127, !tbaa !429
  %17 = sext i8 %16 to i64, !dbg !1127
  %18 = getelementptr inbounds i16, i16* %15, i64 %17, !dbg !1127
  %19 = load i16, i16* %18, align 2, !dbg !1127, !tbaa !1121
  %20 = and i16 %19, 2048, !dbg !1127
  %.not23 = icmp eq i16 %20, 0, !dbg !1127
  br i1 %.not23, label %79, label %21, !dbg !1129

21:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 0, metadata !1116, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %0, metadata !1117, metadata !DIExpression()), !dbg !1118
  %22 = call i16** @__ctype_b_loc() #12, !dbg !1130
  %23 = load i16*, i16** %22, align 8, !dbg !1130, !tbaa !315
  %24 = load i8, i8* %0, align 1, !dbg !1130, !tbaa !429
  %25 = sext i8 %24 to i64, !dbg !1130
  %26 = getelementptr inbounds i16, i16* %23, i64 %25, !dbg !1130
  %27 = load i16, i16* %26, align 2, !dbg !1130, !tbaa !1121
  %28 = and i16 %27, 2048, !dbg !1130
  %.not28 = icmp eq i16 %28, 0, !dbg !1134
  br i1 %.not28, label %._crit_edge12, label %.lr.ph11, !dbg !1134

.lr.ph11:                                         ; preds = %21, %.lr.ph11
  %.019 = phi i8* [ %34, %.lr.ph11 ], [ %0, %21 ]
  %.028 = phi i32 [ %33, %.lr.ph11 ], [ 0, %21 ]
  call void @llvm.dbg.value(metadata i8* %.019, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %.028, metadata !1116, metadata !DIExpression()), !dbg !1118
  %29 = mul nsw i32 %.028, 10, !dbg !1135
  %30 = load i8, i8* %.019, align 1, !dbg !1136, !tbaa !429
  %31 = sext i8 %30 to i32, !dbg !1136
  %32 = add nsw i32 %29, %31, !dbg !1137
  %33 = add nsw i32 %32, -48, !dbg !1138
  call void @llvm.dbg.value(metadata i32 %33, metadata !1116, metadata !DIExpression()), !dbg !1118
  %34 = getelementptr inbounds i8, i8* %.019, i64 1, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %34, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %33, metadata !1116, metadata !DIExpression()), !dbg !1118
  %35 = load i16*, i16** %22, align 8, !dbg !1130, !tbaa !315
  %36 = load i8, i8* %34, align 1, !dbg !1130, !tbaa !429
  %37 = sext i8 %36 to i64, !dbg !1130
  %38 = getelementptr inbounds i16, i16* %35, i64 %37, !dbg !1130
  %39 = load i16, i16* %38, align 2, !dbg !1130, !tbaa !1121
  %40 = and i16 %39, 2048, !dbg !1130
  %.not34 = icmp eq i16 %40, 0, !dbg !1134
  br i1 %.not34, label %._crit_edge12, label %.lr.ph11, !dbg !1134, !llvm.loop !1140

._crit_edge12:                                    ; preds = %.lr.ph11, %21
  %.02.lcssa = phi i32 [ 0, %21 ], [ %33, %.lr.ph11 ], !dbg !1142
  %.01.lcssa = phi i8* [ %0, %21 ], [ %34, %.lr.ph11 ], !dbg !1142
  store i32 %.02.lcssa, i32* %1, align 4, !dbg !1143, !tbaa !628
  %41 = load i8, i8* %.01.lcssa, align 1, !dbg !1144, !tbaa !429
  %.not29 = icmp eq i8 %41, 0, !dbg !1144
  br i1 %.not29, label %42, label %44, !dbg !1146

42:                                               ; preds = %._crit_edge12
  %43 = load i32, i32* %1, align 4, !dbg !1147, !tbaa !628
  store i32 %43, i32* %2, align 4, !dbg !1149, !tbaa !628
  br label %113, !dbg !1150

44:                                               ; preds = %._crit_edge12
  %45 = load i8, i8* %.01.lcssa, align 1, !dbg !1151, !tbaa !429
  %46 = icmp eq i8 %45, 45, !dbg !1153
  %spec.select.idx = zext i1 %46 to i64, !dbg !1154
  %spec.select = getelementptr i8, i8* %.01.lcssa, i64 %spec.select.idx, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !1117, metadata !DIExpression()), !dbg !1118
  %47 = load i8, i8* %spec.select, align 1, !dbg !1155, !tbaa !429
  %.not30 = icmp eq i8 %47, 0, !dbg !1155
  br i1 %.not30, label %48, label %49, !dbg !1157

48:                                               ; preds = %44
  store i32 -1, i32* %2, align 4, !dbg !1158, !tbaa !628
  br label %113, !dbg !1160

49:                                               ; preds = %44
  %50 = call i16** @__ctype_b_loc() #12, !dbg !1161
  %51 = load i16*, i16** %50, align 8, !dbg !1161, !tbaa !315
  %52 = load i8, i8* %spec.select, align 1, !dbg !1161, !tbaa !429
  %53 = sext i8 %52 to i64, !dbg !1161
  %54 = getelementptr inbounds i16, i16* %51, i64 %53, !dbg !1161
  %55 = load i16, i16* %54, align 2, !dbg !1161, !tbaa !1121
  %56 = and i16 %55, 2048, !dbg !1161
  %.not31 = icmp eq i16 %56, 0, !dbg !1161
  br i1 %.not31, label %113, label %57, !dbg !1163

57:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 0, metadata !1116, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !1117, metadata !DIExpression()), !dbg !1118
  %58 = call i16** @__ctype_b_loc() #12, !dbg !1164
  %59 = load i16*, i16** %58, align 8, !dbg !1164, !tbaa !315
  %60 = load i8, i8* %spec.select, align 1, !dbg !1164, !tbaa !429
  %61 = sext i8 %60 to i64, !dbg !1164
  %62 = getelementptr inbounds i16, i16* %59, i64 %61, !dbg !1164
  %63 = load i16, i16* %62, align 2, !dbg !1164, !tbaa !1121
  %64 = and i16 %63, 2048, !dbg !1164
  %.not32 = icmp eq i16 %64, 0, !dbg !1167
  br i1 %.not32, label %._crit_edge19, label %.lr.ph18, !dbg !1167

.lr.ph18:                                         ; preds = %57, %.lr.ph18
  %.216 = phi i8* [ %70, %.lr.ph18 ], [ %spec.select, %57 ]
  %.1315 = phi i32 [ %69, %.lr.ph18 ], [ 0, %57 ]
  call void @llvm.dbg.value(metadata i8* %.216, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %.1315, metadata !1116, metadata !DIExpression()), !dbg !1118
  %65 = mul nsw i32 %.1315, 10, !dbg !1168
  %66 = load i8, i8* %.216, align 1, !dbg !1169, !tbaa !429
  %67 = sext i8 %66 to i32, !dbg !1169
  %68 = add nsw i32 %65, %67, !dbg !1170
  %69 = add nsw i32 %68, -48, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %69, metadata !1116, metadata !DIExpression()), !dbg !1118
  %70 = getelementptr inbounds i8, i8* %.216, i64 1, !dbg !1172
  call void @llvm.dbg.value(metadata i8* %70, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %69, metadata !1116, metadata !DIExpression()), !dbg !1118
  %71 = load i16*, i16** %58, align 8, !dbg !1164, !tbaa !315
  %72 = load i8, i8* %70, align 1, !dbg !1164, !tbaa !429
  %73 = sext i8 %72 to i64, !dbg !1164
  %74 = getelementptr inbounds i16, i16* %71, i64 %73, !dbg !1164
  %75 = load i16, i16* %74, align 2, !dbg !1164, !tbaa !1121
  %76 = and i16 %75, 2048, !dbg !1164
  %.not33 = icmp eq i16 %76, 0, !dbg !1167
  br i1 %.not33, label %._crit_edge19, label %.lr.ph18, !dbg !1167, !llvm.loop !1173

._crit_edge19:                                    ; preds = %.lr.ph18, %57
  %.13.lcssa = phi i32 [ 0, %57 ], [ %69, %.lr.ph18 ], !dbg !1175
  %.2.lcssa = phi i8* [ %spec.select, %57 ], [ %70, %.lr.ph18 ], !dbg !1176
  store i32 %.13.lcssa, i32* %2, align 4, !dbg !1177, !tbaa !628
  %77 = load i8, i8* %.2.lcssa, align 1, !dbg !1178, !tbaa !429
  %78 = sext i8 %77 to i32, !dbg !1179
  br label %113, !dbg !1180

79:                                               ; preds = %13
  store i32 1, i32* %1, align 4, !dbg !1181, !tbaa !628
  %80 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %80, metadata !1117, metadata !DIExpression()), !dbg !1118
  %81 = load i8, i8* %80, align 1, !dbg !1184, !tbaa !429
  %.not24 = icmp eq i8 %81, 0, !dbg !1184
  br i1 %.not24, label %82, label %83, !dbg !1186

82:                                               ; preds = %79
  store i32 -1, i32* %2, align 4, !dbg !1187, !tbaa !628
  br label %113, !dbg !1189

83:                                               ; preds = %79
  %84 = call i16** @__ctype_b_loc() #12, !dbg !1190
  %85 = load i16*, i16** %84, align 8, !dbg !1190, !tbaa !315
  %86 = load i8, i8* %80, align 1, !dbg !1190, !tbaa !429
  %87 = sext i8 %86 to i64, !dbg !1190
  %88 = getelementptr inbounds i16, i16* %85, i64 %87, !dbg !1190
  %89 = load i16, i16* %88, align 2, !dbg !1190, !tbaa !1121
  %90 = and i16 %89, 2048, !dbg !1190
  %.not25 = icmp eq i16 %90, 0, !dbg !1190
  br i1 %.not25, label %113, label %91, !dbg !1192

91:                                               ; preds = %83
  call void @llvm.dbg.value(metadata i32 0, metadata !1116, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %80, metadata !1117, metadata !DIExpression()), !dbg !1118
  %92 = call i16** @__ctype_b_loc() #12, !dbg !1193
  %93 = load i16*, i16** %92, align 8, !dbg !1193, !tbaa !315
  %94 = load i8, i8* %80, align 1, !dbg !1193, !tbaa !429
  %95 = sext i8 %94 to i64, !dbg !1193
  %96 = getelementptr inbounds i16, i16* %93, i64 %95, !dbg !1193
  %97 = load i16, i16* %96, align 2, !dbg !1193, !tbaa !1121
  %98 = and i16 %97, 2048, !dbg !1193
  %.not26 = icmp eq i16 %98, 0, !dbg !1197
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !dbg !1197

.lr.ph:                                           ; preds = %91, %.lr.ph
  %.36 = phi i8* [ %104, %.lr.ph ], [ %80, %91 ]
  %.245 = phi i32 [ %103, %.lr.ph ], [ 0, %91 ]
  call void @llvm.dbg.value(metadata i8* %.36, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %.245, metadata !1116, metadata !DIExpression()), !dbg !1118
  %99 = mul nsw i32 %.245, 10, !dbg !1198
  %100 = load i8, i8* %.36, align 1, !dbg !1199, !tbaa !429
  %101 = sext i8 %100 to i32, !dbg !1199
  %102 = add nsw i32 %99, %101, !dbg !1200
  %103 = add nsw i32 %102, -48, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %103, metadata !1116, metadata !DIExpression()), !dbg !1118
  %104 = getelementptr inbounds i8, i8* %.36, i64 1, !dbg !1202
  call void @llvm.dbg.value(metadata i8* %104, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %103, metadata !1116, metadata !DIExpression()), !dbg !1118
  %105 = load i16*, i16** %92, align 8, !dbg !1193, !tbaa !315
  %106 = load i8, i8* %104, align 1, !dbg !1193, !tbaa !429
  %107 = sext i8 %106 to i64, !dbg !1193
  %108 = getelementptr inbounds i16, i16* %105, i64 %107, !dbg !1193
  %109 = load i16, i16* %108, align 2, !dbg !1193, !tbaa !1121
  %110 = and i16 %109, 2048, !dbg !1193
  %.not27 = icmp eq i16 %110, 0, !dbg !1197
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !dbg !1197, !llvm.loop !1203

._crit_edge:                                      ; preds = %.lr.ph, %91
  %.24.lcssa = phi i32 [ 0, %91 ], [ %103, %.lr.ph ], !dbg !1205
  %.3.lcssa = phi i8* [ %80, %91 ], [ %104, %.lr.ph ], !dbg !1118
  store i32 %.24.lcssa, i32* %2, align 4, !dbg !1206, !tbaa !628
  %111 = load i8, i8* %.3.lcssa, align 1, !dbg !1207, !tbaa !429
  %112 = sext i8 %111 to i32, !dbg !1208
  br label %113, !dbg !1209

113:                                              ; preds = %83, %49, %11, %._crit_edge, %82, %._crit_edge19, %48, %42
  %.0 = phi i32 [ %78, %._crit_edge19 ], [ 0, %48 ], [ 0, %42 ], [ %112, %._crit_edge ], [ 0, %82 ], [ 1, %11 ], [ 1, %49 ], [ 0, %83 ], !dbg !1118
  ret i32 %.0, !dbg !1210
}

; Function Attrs: nounwind uwtable
define internal void @match_str_pat(%struct.molecule_t* %0, i8* %1) #0 !dbg !1211 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1215, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()), !dbg !1218
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1219
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #11, !dbg !1220
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1221
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1221, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1217, metadata !DIExpression()), !dbg !1218
  %.not = icmp eq %struct.strand_t* %5, null, !dbg !1223
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1223

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.01 = phi %struct.strand_t* [ %14, %.lr.ph ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !1217, metadata !DIExpression()), !dbg !1218
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 0, !dbg !1224
  %7 = load i8*, i8** %6, align 8, !dbg !1224, !tbaa !1227
  %8 = call i32 @step(i8* %7, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #11, !dbg !1228
  %.not2 = icmp ne i32 %8, 0, !dbg !1228
  %9 = zext i1 %.not2 to i32, !dbg !1228
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 2, !dbg !1229
  %11 = load i32, i32* %10, align 4, !dbg !1230, !tbaa !300
  %12 = or i32 %11, %9, !dbg !1230
  store i32 %12, i32* %10, align 4, !dbg !1230, !tbaa !300
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 4, !dbg !1231
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1231, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1217, metadata !DIExpression()), !dbg !1218
  %.not3 = icmp eq %struct.strand_t* %14, null, !dbg !1223
  br i1 %.not3, label %._crit_edge, label %.lr.ph, !dbg !1223, !llvm.loop !1232

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void, !dbg !1234
}

; Function Attrs: nounwind uwtable
define internal void @match_str_range(%struct.molecule_t* %0, i32 %1, i32 %2) #0 !dbg !1235 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1237, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %1, metadata !1238, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %2, metadata !1239, metadata !DIExpression()), !dbg !1242
  %4 = icmp eq i32 %2, -1, !dbg !1243
  br i1 %4, label %5, label %8, !dbg !1245

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !1246
  %7 = load i32, i32* %6, align 8, !dbg !1246, !tbaa !1247
  call void @llvm.dbg.value(metadata i32 %7, metadata !1239, metadata !DIExpression()), !dbg !1242
  br label %8, !dbg !1248

8:                                                ; preds = %5, %3
  %.02 = phi i32 [ %7, %5 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1239, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 1, metadata !1240, metadata !DIExpression()), !dbg !1242
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1249
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1241, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 1, metadata !1240, metadata !DIExpression()), !dbg !1242
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !1251
  %11 = load i32, i32* %10, align 8, !dbg !1251, !tbaa !1247
  %12 = icmp sgt i32 %11, 0, !dbg !1253
  br i1 %12, label %.lr.ph, label %._crit_edge, !dbg !1254

.lr.ph:                                           ; preds = %8, %19
  %.04.in = phi %struct.strand_t** [ %21, %19 ], [ %9, %8 ]
  %.013 = phi i32 [ %20, %19 ], [ 1, %8 ]
  %.04 = load %struct.strand_t*, %struct.strand_t** %.04.in, align 8, !dbg !1255, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.strand_t* %.04, metadata !1241, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %.013, metadata !1240, metadata !DIExpression()), !dbg !1242
  %13 = icmp sge i32 %.013, %1, !dbg !1256
  %14 = icmp sle i32 %.013, %.02
  %or.cond = select i1 %13, i1 %14, i1 false, !dbg !1259
  br i1 %or.cond, label %15, label %19, !dbg !1259

15:                                               ; preds = %.lr.ph
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 2, !dbg !1260
  %17 = load i32, i32* %16, align 4, !dbg !1261, !tbaa !300
  %18 = or i32 %17, 1, !dbg !1261
  store i32 %18, i32* %16, align 4, !dbg !1261, !tbaa !300
  br label %19, !dbg !1262

19:                                               ; preds = %.lr.ph, %15
  %20 = add nuw nsw i32 %.013, 1, !dbg !1263
  call void @llvm.dbg.value(metadata i32 %20, metadata !1240, metadata !DIExpression()), !dbg !1242
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 4, !dbg !1264
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1241, metadata !DIExpression()), !dbg !1242
  %22 = load i32, i32* %10, align 8, !dbg !1251, !tbaa !1247
  %.not.not = icmp slt i32 %.013, %22, !dbg !1253
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !dbg !1254, !llvm.loop !1265

._crit_edge:                                      ; preds = %19, %8
  ret void, !dbg !1267
}

; Function Attrs: nounwind uwtable
define internal void @match_res_pat(%struct.molecule_t* %0, i8* %1) #0 !dbg !1268 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1270, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i8* %1, metadata !1271, metadata !DIExpression()), !dbg !1275
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1276
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #11, !dbg !1277
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1278
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1278, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1273, metadata !DIExpression()), !dbg !1275
  %.not = icmp eq %struct.strand_t* %5, null, !dbg !1280
  br i1 %.not, label %._crit_edge7, label %.lr.ph6, !dbg !1280

.lr.ph6:                                          ; preds = %2, %._crit_edge
  %.04 = phi %struct.strand_t* [ %28, %._crit_edge ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.04, metadata !1273, metadata !DIExpression()), !dbg !1275
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 2, !dbg !1281
  %7 = load i32, i32* %6, align 4, !dbg !1281, !tbaa !300
  %8 = and i32 %7, 1, !dbg !1285
  %.not8 = icmp eq i32 %8, 0, !dbg !1285
  br i1 %.not8, label %._crit_edge, label %9, !dbg !1286

9:                                                ; preds = %.lr.ph6
  call void @llvm.dbg.value(metadata i32 0, metadata !1272, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 0, metadata !1272, metadata !DIExpression()), !dbg !1275
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 5, !dbg !1287
  %11 = load i32, i32* %10, align 8, !dbg !1287, !tbaa !308
  %12 = icmp sgt i32 %11, 0, !dbg !1291
  br i1 %12, label %.lr.ph, label %._crit_edge, !dbg !1292

.lr.ph:                                           ; preds = %9, %.lr.ph
  %indvars.iv3 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !1272, metadata !DIExpression()), !dbg !1275
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 7, !dbg !1293
  %14 = load %struct.residue_t**, %struct.residue_t*** %13, align 8, !dbg !1293, !tbaa !313
  %15 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %14, i64 %indvars.iv3, !dbg !1295
  %16 = load %struct.residue_t*, %struct.residue_t** %15, align 8, !dbg !1295, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %16, metadata !1274, metadata !DIExpression()), !dbg !1275
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i64 0, i32 4, !dbg !1296
  %18 = load i8*, i8** %17, align 8, !dbg !1296, !tbaa !1297
  %19 = call i32 @step(i8* %18, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #11, !dbg !1298
  %.not10 = icmp ne i32 %19, 0, !dbg !1298
  %20 = zext i1 %.not10 to i32, !dbg !1298
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i64 0, i32 6, !dbg !1299
  %22 = load i32, i32* %21, align 8, !dbg !1300, !tbaa !318
  %23 = or i32 %22, %20, !dbg !1300
  store i32 %23, i32* %21, align 8, !dbg !1300, !tbaa !318
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1272, metadata !DIExpression()), !dbg !1275
  %24 = load i32, i32* %10, align 8, !dbg !1287, !tbaa !308
  %25 = sext i32 %24 to i64, !dbg !1291
  %26 = icmp slt i64 %indvars.iv.next, %25, !dbg !1291
  br i1 %26, label %.lr.ph, label %._crit_edge, !dbg !1292, !llvm.loop !1302

._crit_edge:                                      ; preds = %.lr.ph6, %.lr.ph, %9
  %27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 4, !dbg !1304
  %28 = load %struct.strand_t*, %struct.strand_t** %27, align 8, !dbg !1304, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %28, metadata !1273, metadata !DIExpression()), !dbg !1275
  %.not9 = icmp eq %struct.strand_t* %28, null, !dbg !1280
  br i1 %.not9, label %._crit_edge7, label %.lr.ph6, !dbg !1280, !llvm.loop !1305

._crit_edge7:                                     ; preds = %._crit_edge, %2
  ret void, !dbg !1307
}

; Function Attrs: nounwind uwtable
define internal void @match_res_range(%struct.molecule_t* %0, i32 %1, i32 %2) #0 !dbg !1308 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1310, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i32 %1, metadata !1311, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i32 %2, metadata !1312, metadata !DIExpression()), !dbg !1317
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1318
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1318, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1315, metadata !DIExpression()), !dbg !1317
  %6 = sext i32 %1 to i64, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1315, metadata !DIExpression()), !dbg !1317
  %.not = icmp eq %struct.strand_t* %5, null, !dbg !1321
  br i1 %.not, label %._crit_edge7, label %.lr.ph6, !dbg !1321

.lr.ph6:                                          ; preds = %3, %._crit_edge
  %.04 = phi %struct.strand_t* [ %36, %._crit_edge ], [ %5, %3 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.04, metadata !1315, metadata !DIExpression()), !dbg !1317
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 2, !dbg !1322
  %8 = load i32, i32* %7, align 4, !dbg !1322, !tbaa !300
  %9 = and i32 %8, 1, !dbg !1326
  %.not8 = icmp eq i32 %9, 0, !dbg !1326
  br i1 %.not8, label %._crit_edge, label %10, !dbg !1327

10:                                               ; preds = %.lr.ph6
  %11 = icmp eq i32 %2, -1, !dbg !1328
  br i1 %11, label %12, label %15, !dbg !1330

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 5, !dbg !1331
  %14 = load i32, i32* %13, align 8, !dbg !1331, !tbaa !308
  br label %15, !dbg !1330

15:                                               ; preds = %10, %12
  %16 = phi i32 [ %14, %12 ], [ %2, %10 ], !dbg !1330
  call void @llvm.dbg.value(metadata i32 %16, metadata !1314, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i32 0, metadata !1313, metadata !DIExpression()), !dbg !1317
  %17 = sext i32 %16 to i64, !dbg !1332
  call void @llvm.dbg.value(metadata i64 0, metadata !1313, metadata !DIExpression()), !dbg !1317
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 5, !dbg !1334
  %19 = load i32, i32* %18, align 8, !dbg !1334, !tbaa !308
  %20 = icmp sgt i32 %19, 0, !dbg !1336
  br i1 %20, label %.lr.ph, label %._crit_edge, !dbg !1337

.lr.ph:                                           ; preds = %15, %31
  %indvars.iv3 = phi i64 [ %indvars.iv.next, %31 ], [ 0, %15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !1313, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1316, metadata !DIExpression()), !dbg !1317
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !1338
  %21 = icmp sge i64 %indvars.iv.next, %6, !dbg !1339
  %22 = icmp slt i64 %indvars.iv3, %17
  %or.cond = select i1 %21, i1 %22, i1 false, !dbg !1342
  br i1 %or.cond, label %23, label %31, !dbg !1342

23:                                               ; preds = %.lr.ph
  %24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 7, !dbg !1343
  %25 = load %struct.residue_t**, %struct.residue_t*** %24, align 8, !dbg !1343, !tbaa !313
  %26 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %25, i64 %indvars.iv3, !dbg !1344
  %27 = load %struct.residue_t*, %struct.residue_t** %26, align 8, !dbg !1344, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %27, metadata !1316, metadata !DIExpression()), !dbg !1317
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %27, i64 0, i32 6, !dbg !1345
  %29 = load i32, i32* %28, align 8, !dbg !1346, !tbaa !318
  %30 = or i32 %29, 1, !dbg !1346
  store i32 %30, i32* %28, align 8, !dbg !1346, !tbaa !318
  br label %31, !dbg !1347

31:                                               ; preds = %.lr.ph, %23
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1313, metadata !DIExpression()), !dbg !1317
  %32 = load i32, i32* %18, align 8, !dbg !1334, !tbaa !308
  %33 = sext i32 %32 to i64, !dbg !1336
  %34 = icmp slt i64 %indvars.iv.next, %33, !dbg !1336
  br i1 %34, label %.lr.ph, label %._crit_edge, !dbg !1337, !llvm.loop !1348

._crit_edge:                                      ; preds = %.lr.ph6, %31, %15
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i64 0, i32 4, !dbg !1350
  %36 = load %struct.strand_t*, %struct.strand_t** %35, align 8, !dbg !1350, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %36, metadata !1315, metadata !DIExpression()), !dbg !1317
  %.not9 = icmp eq %struct.strand_t* %36, null, !dbg !1321
  br i1 %.not9, label %._crit_edge7, label %.lr.ph6, !dbg !1321, !llvm.loop !1351

._crit_edge7:                                     ; preds = %._crit_edge, %3
  ret void, !dbg !1353
}

; Function Attrs: nounwind uwtable
define internal void @match_atom_pat(%struct.molecule_t* %0, i8* %1) #0 !dbg !1354 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1356, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %1, metadata !1357, metadata !DIExpression()), !dbg !1363
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1364
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #11, !dbg !1365
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1366
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1366, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1360, metadata !DIExpression()), !dbg !1363
  %.not = icmp eq %struct.strand_t* %5, null, !dbg !1368
  br i1 %.not, label %._crit_edge15, label %.lr.ph14, !dbg !1368

.lr.ph14:                                         ; preds = %2, %._crit_edge11
  %.012 = phi %struct.strand_t* [ %40, %._crit_edge11 ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.012, metadata !1360, metadata !DIExpression()), !dbg !1363
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 2, !dbg !1369
  %7 = load i32, i32* %6, align 4, !dbg !1369, !tbaa !300
  %8 = and i32 %7, 1, !dbg !1373
  %.not16 = icmp eq i32 %8, 0, !dbg !1373
  br i1 %.not16, label %._crit_edge11, label %9, !dbg !1374

9:                                                ; preds = %.lr.ph14
  call void @llvm.dbg.value(metadata i32 0, metadata !1358, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i64 0, metadata !1358, metadata !DIExpression()), !dbg !1363
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 5, !dbg !1375
  %11 = load i32, i32* %10, align 8, !dbg !1375, !tbaa !308
  %12 = icmp sgt i32 %11, 0, !dbg !1379
  br i1 %12, label %.lr.ph10, label %._crit_edge11, !dbg !1380

.lr.ph10:                                         ; preds = %9, %._crit_edge
  %indvars.iv48 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !1358, metadata !DIExpression()), !dbg !1363
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 7, !dbg !1381
  %14 = load %struct.residue_t**, %struct.residue_t*** %13, align 8, !dbg !1381, !tbaa !313
  %15 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %14, i64 %indvars.iv48, !dbg !1383
  %16 = load %struct.residue_t*, %struct.residue_t** %15, align 8, !dbg !1383, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %16, metadata !1361, metadata !DIExpression()), !dbg !1363
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i64 0, i32 6, !dbg !1384
  %18 = load i32, i32* %17, align 8, !dbg !1384, !tbaa !318
  %19 = and i32 %18, 1, !dbg !1386
  %.not18 = icmp eq i32 %19, 0, !dbg !1386
  br i1 %.not18, label %._crit_edge, label %20, !dbg !1387

20:                                               ; preds = %.lr.ph10
  call void @llvm.dbg.value(metadata i32 0, metadata !1359, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i64 0, metadata !1359, metadata !DIExpression()), !dbg !1363
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i64 0, i32 15, !dbg !1388
  %22 = load i32, i32* %21, align 8, !dbg !1388, !tbaa !326
  %23 = icmp sgt i32 %22, 0, !dbg !1392
  br i1 %23, label %.lr.ph, label %._crit_edge, !dbg !1393

.lr.ph:                                           ; preds = %20, %.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %20 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !1359, metadata !DIExpression()), !dbg !1363
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i64 0, i32 17, !dbg !1394
  %25 = load %struct.atom_t*, %struct.atom_t** %24, align 8, !dbg !1394, !tbaa !331
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %25, i64 %indvars.iv7), metadata !1362, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1363
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %indvars.iv7, i32 0, !dbg !1396
  %27 = load i8*, i8** %26, align 8, !dbg !1396, !tbaa !1397
  %28 = call i32 @step(i8* %27, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #11, !dbg !1398
  %.not19 = icmp ne i32 %28, 0, !dbg !1398
  %29 = zext i1 %.not19 to i32, !dbg !1398
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %indvars.iv7, i32 2, !dbg !1399
  %31 = load i32, i32* %30, align 8, !dbg !1400, !tbaa !334
  %32 = or i32 %31, %29, !dbg !1400
  store i32 %32, i32* %30, align 8, !dbg !1400, !tbaa !334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1359, metadata !DIExpression()), !dbg !1363
  %33 = load i32, i32* %21, align 8, !dbg !1388, !tbaa !326
  %34 = sext i32 %33 to i64, !dbg !1392
  %35 = icmp slt i64 %indvars.iv.next, %34, !dbg !1392
  br i1 %35, label %.lr.ph, label %._crit_edge, !dbg !1393, !llvm.loop !1402

._crit_edge:                                      ; preds = %.lr.ph10, %.lr.ph, %20
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !1358, metadata !DIExpression()), !dbg !1363
  %36 = load i32, i32* %10, align 8, !dbg !1375, !tbaa !308
  %37 = sext i32 %36 to i64, !dbg !1379
  %38 = icmp slt i64 %indvars.iv.next5, %37, !dbg !1379
  br i1 %38, label %.lr.ph10, label %._crit_edge11, !dbg !1380, !llvm.loop !1405

._crit_edge11:                                    ; preds = %.lr.ph14, %._crit_edge, %9
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.012, i64 0, i32 4, !dbg !1407
  %40 = load %struct.strand_t*, %struct.strand_t** %39, align 8, !dbg !1407, !tbaa !361
  call void @llvm.dbg.value(metadata %struct.strand_t* %40, metadata !1360, metadata !DIExpression()), !dbg !1363
  %.not17 = icmp eq %struct.strand_t* %40, null, !dbg !1368
  br i1 %.not17, label %._crit_edge15, label %.lr.ph14, !dbg !1368, !llvm.loop !1408

._crit_edge15:                                    ; preds = %._crit_edge11, %2
  ret void, !dbg !1410
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define internal void @aexpr2rexpr(i8* %0, i8* %1) #0 !dbg !1411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1415, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %1, metadata !1416, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %1, metadata !1418, metadata !DIExpression()), !dbg !1419
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %3, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i8 94, i8* %1, align 1, !dbg !1421, !tbaa !429
  call void @llvm.dbg.value(metadata i8* %0, metadata !1417, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %3, metadata !1418, metadata !DIExpression()), !dbg !1419
  %4 = load i8, i8* %0, align 1, !dbg !1422, !tbaa !429
  %.not = icmp eq i8 %4, 0, !dbg !1425
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1425

.lr.ph:                                           ; preds = %2, %18
  %.05 = phi i8* [ %.2, %18 ], [ %3, %2 ]
  %.012 = phi i8* [ %19, %18 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %.05, metadata !1418, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %.012, metadata !1417, metadata !DIExpression()), !dbg !1419
  %5 = load i8, i8* %.012, align 1, !dbg !1426, !tbaa !429
  %6 = icmp eq i8 %5, 42, !dbg !1429
  br i1 %6, label %7, label %10, !dbg !1430

7:                                                ; preds = %.lr.ph
  %8 = getelementptr inbounds i8, i8* %.05, i64 1, !dbg !1431
  call void @llvm.dbg.value(metadata i8* %8, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i8 46, i8* %.05, align 1, !dbg !1433, !tbaa !429
  %9 = getelementptr inbounds i8, i8* %.05, i64 2, !dbg !1434
  call void @llvm.dbg.value(metadata i8* %9, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i8 42, i8* %8, align 1, !dbg !1435, !tbaa !429
  br label %18, !dbg !1436

10:                                               ; preds = %.lr.ph
  %11 = load i8, i8* %.012, align 1, !dbg !1437, !tbaa !429
  %12 = icmp eq i8 %11, 63, !dbg !1439
  br i1 %12, label %13, label %15, !dbg !1440

13:                                               ; preds = %10
  %14 = getelementptr inbounds i8, i8* %.05, i64 1, !dbg !1441
  call void @llvm.dbg.value(metadata i8* %14, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i8 46, i8* %.05, align 1, !dbg !1442, !tbaa !429
  br label %18, !dbg !1443

15:                                               ; preds = %10
  %16 = load i8, i8* %.012, align 1, !dbg !1444, !tbaa !429
  %17 = getelementptr inbounds i8, i8* %.05, i64 1, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %17, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i8 %16, i8* %.05, align 1, !dbg !1446, !tbaa !429
  br label %18

18:                                               ; preds = %13, %15, %7
  %.2 = phi i8* [ %9, %7 ], [ %14, %13 ], [ %17, %15 ], !dbg !1447
  call void @llvm.dbg.value(metadata i8* %.2, metadata !1418, metadata !DIExpression()), !dbg !1419
  %19 = getelementptr inbounds i8, i8* %.012, i64 1, !dbg !1448
  call void @llvm.dbg.value(metadata i8* %.2, metadata !1418, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %19, metadata !1417, metadata !DIExpression()), !dbg !1419
  %20 = load i8, i8* %19, align 1, !dbg !1422, !tbaa !429
  %.not6 = icmp eq i8 %20, 0, !dbg !1425
  br i1 %.not6, label %._crit_edge, label %.lr.ph, !dbg !1425, !llvm.loop !1449

._crit_edge:                                      ; preds = %18, %2
  %.0.lcssa = phi i8* [ %3, %2 ], [ %.2, %18 ], !dbg !1419
  %21 = getelementptr inbounds i8, i8* %.0.lcssa, i64 1, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %21, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i8 36, i8* %.0.lcssa, align 1, !dbg !1452, !tbaa !429
  store i8 0, i8* %21, align 1, !dbg !1453, !tbaa !429
  ret void, !dbg !1454
}

declare !dbg !242 dso_local i8* @compile(i8*, i8*, i8*, i32) #3

declare !dbg !246 dso_local i32 @step(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %1) #0 !dbg !1455 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1457, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %1, metadata !1458, metadata !DIExpression()), !dbg !1461
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !1462
  %4 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1462, !tbaa !1463
  call void @llvm.dbg.value(metadata %struct.residue_t* %4, metadata !1459, metadata !DIExpression()), !dbg !1461
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %4, i64 0, i32 9, !dbg !1464
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !1464, !tbaa !1465
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !1460, metadata !DIExpression()), !dbg !1461
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1466
  %7 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #11, !dbg !1467
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %6, i64 0, i32 0, !dbg !1468
  %9 = load i8*, i8** %8, align 8, !dbg !1468, !tbaa !1227
  %10 = call i32 @step(i8* %9, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #11, !dbg !1469
  ret i32 %10, !dbg !1470
}

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_str_range(%struct.atom_t* %0, i32 %1, i32 %2) #0 !dbg !1471 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1475, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %1, metadata !1476, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %2, metadata !1477, metadata !DIExpression()), !dbg !1483
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !1484
  %5 = load %struct.residue_t*, %struct.residue_t** %4, align 8, !dbg !1484, !tbaa !1463
  call void @llvm.dbg.value(metadata %struct.residue_t* %5, metadata !1479, metadata !DIExpression()), !dbg !1483
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 9, !dbg !1485
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1485, !tbaa !1465
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !1480, metadata !DIExpression()), !dbg !1483
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i64 0, i32 3, !dbg !1486
  %9 = load %struct.molecule_t*, %struct.molecule_t** %8, align 8, !dbg !1486, !tbaa !1487
  call void @llvm.dbg.value(metadata %struct.molecule_t* %9, metadata !1482, metadata !DIExpression()), !dbg !1483
  %10 = icmp eq i32 %2, -1, !dbg !1488
  br i1 %10, label %11, label %14, !dbg !1490

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i64 0, i32 1, !dbg !1491
  %13 = load i32, i32* %12, align 8, !dbg !1491, !tbaa !1247
  call void @llvm.dbg.value(metadata i32 %13, metadata !1477, metadata !DIExpression()), !dbg !1483
  br label %14, !dbg !1492

14:                                               ; preds = %11, %3
  %.02 = phi i32 [ %13, %11 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1477, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 1, metadata !1478, metadata !DIExpression()), !dbg !1483
  %15 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i64 0, i32 2, !dbg !1493
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1481, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 1, metadata !1478, metadata !DIExpression()), !dbg !1483
  %16 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i64 0, i32 1, !dbg !1495
  %17 = load i32, i32* %16, align 8, !dbg !1495, !tbaa !1247
  %18 = icmp sgt i32 %17, 0, !dbg !1497
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !1498

.lr.ph:                                           ; preds = %14, %23
  %.015.in = phi %struct.strand_t** [ %25, %23 ], [ %15, %14 ]
  %.034 = phi i32 [ %24, %23 ], [ 1, %14 ]
  %.015 = load %struct.strand_t*, %struct.strand_t** %.015.in, align 8, !dbg !1499, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.strand_t* %.015, metadata !1481, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.034, metadata !1478, metadata !DIExpression()), !dbg !1483
  %19 = icmp eq %struct.strand_t* %7, %.015, !dbg !1500
  br i1 %19, label %20, label %23, !dbg !1503

20:                                               ; preds = %.lr.ph
  %21 = icmp sge i32 %.034, %1, !dbg !1504
  %22 = icmp sle i32 %.034, %.02
  %or.cond = select i1 %21, i1 %22, i1 false, !dbg !1507
  br i1 %or.cond, label %._crit_edge, label %23, !dbg !1507

23:                                               ; preds = %.lr.ph, %20
  %24 = add nuw nsw i32 %.034, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %24, metadata !1478, metadata !DIExpression()), !dbg !1483
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i64 0, i32 4, !dbg !1509
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1481, metadata !DIExpression()), !dbg !1483
  %26 = load i32, i32* %16, align 8, !dbg !1495, !tbaa !1247
  %.not.not = icmp slt i32 %.034, %26, !dbg !1497
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !dbg !1498, !llvm.loop !1510

._crit_edge:                                      ; preds = %14, %23, %20
  %.0 = phi i32 [ 1, %20 ], [ 0, %23 ], [ 0, %14 ], !dbg !1483
  ret i32 %.0, !dbg !1512
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %1) #0 !dbg !1513 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1515, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8* %1, metadata !1516, metadata !DIExpression()), !dbg !1518
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !1519
  %4 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1519, !tbaa !1463
  call void @llvm.dbg.value(metadata %struct.residue_t* %4, metadata !1517, metadata !DIExpression()), !dbg !1518
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1520
  %5 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #11, !dbg !1521
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %4, i64 0, i32 4, !dbg !1522
  %7 = load i8*, i8** %6, align 8, !dbg !1522, !tbaa !1297
  %8 = call i32 @step(i8* %7, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #11, !dbg !1523
  ret i32 %8, !dbg !1524
}

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_res_range(%struct.atom_t* %0, i32 %1, i32 %2) #0 !dbg !1525 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1527, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i32 %1, metadata !1528, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i32 %2, metadata !1529, metadata !DIExpression()), !dbg !1535
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !1536
  %5 = load %struct.residue_t*, %struct.residue_t** %4, align 8, !dbg !1536, !tbaa !1463
  call void @llvm.dbg.value(metadata %struct.residue_t* %5, metadata !1533, metadata !DIExpression()), !dbg !1535
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 9, !dbg !1537
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1537, !tbaa !1465
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !1532, metadata !DIExpression()), !dbg !1535
  %8 = icmp eq i32 %2, -1, !dbg !1538
  br i1 %8, label %9, label %12, !dbg !1539

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i64 0, i32 5, !dbg !1540
  %11 = load i32, i32* %10, align 8, !dbg !1540, !tbaa !308
  br label %12, !dbg !1539

12:                                               ; preds = %3, %9
  %13 = phi i32 [ %11, %9 ], [ %2, %3 ], !dbg !1539
  call void @llvm.dbg.value(metadata i32 %13, metadata !1531, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i32 0, metadata !1530, metadata !DIExpression()), !dbg !1535
  %14 = sext i32 %1 to i64, !dbg !1541
  %15 = sext i32 %13 to i64, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1530, metadata !DIExpression()), !dbg !1535
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i64 0, i32 5, !dbg !1543
  %17 = load i32, i32* %16, align 8, !dbg !1543, !tbaa !308
  %18 = icmp sgt i32 %17, 0, !dbg !1545
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !1546

.lr.ph:                                           ; preds = %12, %28
  %indvars.iv3 = phi i64 [ %indvars.iv.next, %28 ], [ 0, %12 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !1530, metadata !DIExpression()), !dbg !1535
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i64 0, i32 7, !dbg !1547
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !1547, !tbaa !313
  %21 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %indvars.iv3, !dbg !1549
  %22 = load %struct.residue_t*, %struct.residue_t** %21, align 8, !dbg !1549, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %22, metadata !1534, metadata !DIExpression()), !dbg !1535
  %23 = icmp eq %struct.residue_t* %5, %22, !dbg !1550
  br i1 %23, label %24, label %28, !dbg !1552

24:                                               ; preds = %.lr.ph
  %25 = add nuw nsw i64 %indvars.iv3, 1, !dbg !1553
  %26 = icmp sge i64 %25, %14, !dbg !1556
  %27 = icmp slt i64 %indvars.iv3, %15
  %or.cond = select i1 %26, i1 %27, i1 false, !dbg !1557
  br i1 %or.cond, label %._crit_edge, label %28, !dbg !1557

28:                                               ; preds = %.lr.ph, %24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1530, metadata !DIExpression()), !dbg !1535
  %29 = load i32, i32* %16, align 8, !dbg !1543, !tbaa !308
  %30 = sext i32 %29 to i64, !dbg !1545
  %31 = icmp slt i64 %indvars.iv.next, %30, !dbg !1545
  br i1 %31, label %.lr.ph, label %._crit_edge, !dbg !1546, !llvm.loop !1559

._crit_edge:                                      ; preds = %12, %28, %24
  %.0 = phi i32 [ 1, %24 ], [ 0, %28 ], [ 0, %12 ], !dbg !1535
  ret i32 %.0, !dbg !1561
}

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %1) #0 !dbg !1562 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1564, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i8* %1, metadata !1565, metadata !DIExpression()), !dbg !1566
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1567
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #11, !dbg !1568
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 0, !dbg !1569
  %5 = load i8*, i8** %4, align 8, !dbg !1569, !tbaa !1397
  %6 = call i32 @step(i8* %5, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #11, !dbg !1570
  ret i32 %6, !dbg !1571
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { cold }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!263, !264, !265}
!llvm.ident = !{!266}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aexpr", scope: !2, file: !3, line: 14, type: !258, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !249, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "select_atoms.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !240, !25, !241, !242, !246}
!22 = !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 29, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !26, !238}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !28, line: 118, size: 1088, elements: !29)
!28 = !DIFile(filename: "./nabtypes.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!29 = !{!30, !37, !39, !132, !133, !134, !135}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !27, file: !28, line: 119, baseType: !31, size: 768)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !28, line: 13, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 768, elements: !34)
!33 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!34 = !{!35, !36}
!35 = !DISubrange(count: 4)
!36 = !DISubrange(count: 3)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !27, file: !28, line: 120, baseType: !38, size: 32, offset: 768)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !28, line: 6, baseType: !25)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !27, file: !28, line: 121, baseType: !40, size: 64, offset: 832)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !28, line: 93, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !28, line: 84, size: 384, elements: !43)
!43 = !{!44, !48, !49, !50, !51, !53, !54, !55}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !42, file: !28, line: 85, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !28, line: 17, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !42, file: !28, line: 86, baseType: !38, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !42, file: !28, line: 87, baseType: !38, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !42, file: !28, line: 88, baseType: !26, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !42, file: !28, line: 89, baseType: !52, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !42, file: !28, line: 90, baseType: !38, size: 32, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !42, file: !28, line: 91, baseType: !38, size: 32, offset: 288)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !42, file: !28, line: 92, baseType: !56, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !28, line: 82, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !28, line: 63, size: 1024, elements: !60)
!60 = !{!61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !82, !83, !89, !90, !99, !100, !102}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !59, file: !28, line: 64, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !59, file: !28, line: 65, baseType: !38, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !59, file: !28, line: 66, baseType: !38, size: 32, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !59, file: !28, line: 67, baseType: !38, size: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !59, file: !28, line: 68, baseType: !45, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !59, file: !28, line: 69, baseType: !45, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !59, file: !28, line: 70, baseType: !38, size: 32, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !59, file: !28, line: 71, baseType: !38, size: 32, offset: 352)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !59, file: !28, line: 72, baseType: !38, size: 32, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !59, file: !28, line: 73, baseType: !52, size: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !59, file: !28, line: 74, baseType: !73, size: 64, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !28, line: 52, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !28, line: 47, size: 192, elements: !76)
!76 = !{!77, !79, !80, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !75, file: !28, line: 48, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !75, file: !28, line: 49, baseType: !38, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !75, file: !28, line: 50, baseType: !38, size: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !75, file: !28, line: 51, baseType: !38, size: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !59, file: !28, line: 75, baseType: !38, size: 32, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !59, file: !28, line: 76, baseType: !84, size: 64, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !28, line: 54, baseType: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 2)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !59, file: !28, line: 77, baseType: !38, size: 32, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !59, file: !28, line: 78, baseType: !91, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !28, line: 61, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !28, line: 58, size: 192, elements: !94)
!94 = !{!95, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !93, file: !28, line: 59, baseType: !96, size: 128)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !97)
!97 = !{!35}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !93, file: !28, line: 60, baseType: !33, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !59, file: !28, line: 79, baseType: !38, size: 32, offset: 832)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !59, file: !28, line: 80, baseType: !101, size: 64, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !59, file: !28, line: 81, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !28, line: 45, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !28, line: 25, size: 1408, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !131}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !105, file: !28, line: 26, baseType: !45, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !105, file: !28, line: 27, baseType: !45, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !105, file: !28, line: 28, baseType: !38, size: 32, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !105, file: !28, line: 29, baseType: !38, size: 32, offset: 160)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !105, file: !28, line: 30, baseType: !112, size: 256, offset: 192)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !105, file: !28, line: 31, baseType: !62, size: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !105, file: !28, line: 32, baseType: !33, size: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !105, file: !28, line: 33, baseType: !33, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !105, file: !28, line: 34, baseType: !33, size: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !105, file: !28, line: 35, baseType: !33, size: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !105, file: !28, line: 36, baseType: !45, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !105, file: !28, line: 37, baseType: !38, size: 32, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !105, file: !28, line: 38, baseType: !33, size: 64, offset: 896)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !105, file: !28, line: 39, baseType: !33, size: 64, offset: 960)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !105, file: !28, line: 40, baseType: !38, size: 32, offset: 1024)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !105, file: !28, line: 41, baseType: !38, size: 32, offset: 1056)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !105, file: !28, line: 42, baseType: !45, size: 64, offset: 1088)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !105, file: !28, line: 43, baseType: !128, size: 192, offset: 1152)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !28, line: 12, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 192, elements: !130)
!130 = !{!36}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !105, file: !28, line: 44, baseType: !33, size: 64, offset: 1344)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !27, file: !28, line: 122, baseType: !38, size: 32, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !27, file: !28, line: 123, baseType: !38, size: 32, offset: 928)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !27, file: !28, line: 124, baseType: !38, size: 32, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !27, file: !28, line: 125, baseType: !136, size: 64, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !28, line: 115, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !28, line: 95, size: 5760, elements: !139)
!139 = !{!140, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !138, file: !28, line: 96, baseType: !141, size: 648)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 648, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 81)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !138, file: !28, line: 97, baseType: !38, size: 32, offset: 672)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !138, file: !28, line: 97, baseType: !38, size: 32, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !138, file: !28, line: 97, baseType: !38, size: 32, offset: 736)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !138, file: !28, line: 98, baseType: !38, size: 32, offset: 768)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !138, file: !28, line: 98, baseType: !38, size: 32, offset: 800)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !138, file: !28, line: 98, baseType: !38, size: 32, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !138, file: !28, line: 98, baseType: !38, size: 32, offset: 864)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !138, file: !28, line: 98, baseType: !38, size: 32, offset: 896)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !138, file: !28, line: 98, baseType: !38, size: 32, offset: 928)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !138, file: !28, line: 99, baseType: !38, size: 32, offset: 960)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !138, file: !28, line: 99, baseType: !38, size: 32, offset: 992)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !138, file: !28, line: 99, baseType: !38, size: 32, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !138, file: !28, line: 99, baseType: !38, size: 32, offset: 1056)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !138, file: !28, line: 99, baseType: !38, size: 32, offset: 1088)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !138, file: !28, line: 99, baseType: !38, size: 32, offset: 1120)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !138, file: !28, line: 100, baseType: !38, size: 32, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !138, file: !28, line: 100, baseType: !38, size: 32, offset: 1184)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !138, file: !28, line: 100, baseType: !38, size: 32, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !138, file: !28, line: 100, baseType: !38, size: 32, offset: 1248)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !138, file: !28, line: 100, baseType: !38, size: 32, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !138, file: !28, line: 100, baseType: !38, size: 32, offset: 1312)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !138, file: !28, line: 101, baseType: !38, size: 32, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !138, file: !28, line: 101, baseType: !38, size: 32, offset: 1376)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !138, file: !28, line: 101, baseType: !38, size: 32, offset: 1408)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !138, file: !28, line: 101, baseType: !38, size: 32, offset: 1440)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !138, file: !28, line: 101, baseType: !38, size: 32, offset: 1472)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !138, file: !28, line: 101, baseType: !38, size: 32, offset: 1504)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !138, file: !28, line: 101, baseType: !38, size: 32, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !138, file: !28, line: 101, baseType: !38, size: 32, offset: 1568)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !138, file: !28, line: 102, baseType: !38, size: 32, offset: 1600)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !138, file: !28, line: 102, baseType: !38, size: 32, offset: 1632)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !138, file: !28, line: 102, baseType: !38, size: 32, offset: 1664)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !138, file: !28, line: 103, baseType: !45, size: 64, offset: 1728)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !138, file: !28, line: 103, baseType: !45, size: 64, offset: 1792)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !138, file: !28, line: 103, baseType: !45, size: 64, offset: 1856)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !138, file: !28, line: 103, baseType: !45, size: 64, offset: 1920)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !138, file: !28, line: 104, baseType: !181, size: 64, offset: 1984)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !138, file: !28, line: 104, baseType: !181, size: 64, offset: 2048)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !138, file: !28, line: 104, baseType: !181, size: 64, offset: 2112)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !138, file: !28, line: 104, baseType: !181, size: 64, offset: 2176)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !138, file: !28, line: 104, baseType: !181, size: 64, offset: 2240)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !138, file: !28, line: 104, baseType: !181, size: 64, offset: 2304)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !138, file: !28, line: 104, baseType: !181, size: 64, offset: 2368)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !138, file: !28, line: 104, baseType: !181, size: 64, offset: 2432)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !138, file: !28, line: 104, baseType: !181, size: 64, offset: 2496)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !138, file: !28, line: 105, baseType: !181, size: 64, offset: 2560)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !138, file: !28, line: 105, baseType: !181, size: 64, offset: 2624)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !138, file: !28, line: 105, baseType: !181, size: 64, offset: 2688)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !138, file: !28, line: 105, baseType: !181, size: 64, offset: 2752)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !138, file: !28, line: 105, baseType: !181, size: 64, offset: 2816)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !138, file: !28, line: 105, baseType: !181, size: 64, offset: 2880)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !138, file: !28, line: 105, baseType: !181, size: 64, offset: 2944)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !138, file: !28, line: 106, baseType: !129, size: 192, offset: 3008)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !138, file: !28, line: 106, baseType: !33, size: 64, offset: 3200)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !138, file: !28, line: 106, baseType: !33, size: 64, offset: 3264)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !138, file: !28, line: 106, baseType: !33, size: 64, offset: 3328)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !138, file: !28, line: 106, baseType: !33, size: 64, offset: 3392)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !138, file: !28, line: 106, baseType: !33, size: 64, offset: 3456)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !138, file: !28, line: 107, baseType: !101, size: 64, offset: 3520)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !138, file: !28, line: 107, baseType: !101, size: 64, offset: 3584)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !138, file: !28, line: 107, baseType: !101, size: 64, offset: 3648)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !138, file: !28, line: 107, baseType: !101, size: 64, offset: 3712)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !138, file: !28, line: 107, baseType: !101, size: 64, offset: 3776)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !138, file: !28, line: 107, baseType: !101, size: 64, offset: 3840)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !138, file: !28, line: 108, baseType: !101, size: 64, offset: 3904)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !138, file: !28, line: 108, baseType: !101, size: 64, offset: 3968)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !138, file: !28, line: 108, baseType: !101, size: 64, offset: 4032)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !138, file: !28, line: 108, baseType: !101, size: 64, offset: 4096)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !138, file: !28, line: 108, baseType: !101, size: 64, offset: 4160)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !138, file: !28, line: 108, baseType: !101, size: 64, offset: 4224)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !138, file: !28, line: 109, baseType: !101, size: 64, offset: 4288)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !138, file: !28, line: 109, baseType: !101, size: 64, offset: 4352)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !138, file: !28, line: 109, baseType: !101, size: 64, offset: 4416)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !138, file: !28, line: 109, baseType: !101, size: 64, offset: 4480)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !138, file: !28, line: 109, baseType: !101, size: 64, offset: 4544)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !138, file: !28, line: 110, baseType: !101, size: 64, offset: 4608)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !138, file: !28, line: 110, baseType: !101, size: 64, offset: 4672)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !138, file: !28, line: 110, baseType: !101, size: 64, offset: 4736)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !138, file: !28, line: 110, baseType: !101, size: 64, offset: 4800)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !138, file: !28, line: 110, baseType: !101, size: 64, offset: 4864)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !138, file: !28, line: 111, baseType: !101, size: 64, offset: 4928)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !138, file: !28, line: 111, baseType: !101, size: 64, offset: 4992)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !138, file: !28, line: 111, baseType: !101, size: 64, offset: 5056)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !138, file: !28, line: 111, baseType: !101, size: 64, offset: 5120)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !138, file: !28, line: 111, baseType: !101, size: 64, offset: 5184)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !138, file: !28, line: 111, baseType: !101, size: 64, offset: 5248)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !138, file: !28, line: 112, baseType: !101, size: 64, offset: 5312)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !138, file: !28, line: 112, baseType: !101, size: 64, offset: 5376)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !138, file: !28, line: 112, baseType: !101, size: 64, offset: 5440)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !138, file: !28, line: 112, baseType: !101, size: 64, offset: 5504)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !138, file: !28, line: 113, baseType: !101, size: 64, offset: 5568)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !138, file: !28, line: 113, baseType: !101, size: 64, offset: 5632)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !138, file: !28, line: 114, baseType: !181, size: 64, offset: 5696)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!239 = !{}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!241 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!242 = !DISubprogram(name: "compile", scope: !243, file: !243, line: 257, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!243 = !DIFile(filename: "./nab.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!244 = !DISubroutineType(types: !245)
!245 = !{!238, !238, !238, !238, !25}
!246 = !DISubprogram(name: "step", scope: !243, file: !243, line: 258, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!247 = !DISubroutineType(types: !248)
!248 = !{!25, !238, !238}
!249 = !{!0, !250, !252, !254, !256, !261}
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "spart", scope: !2, file: !3, line: 15, type: !238, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "rpart", scope: !2, file: !3, line: 16, type: !238, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "apart", scope: !2, file: !3, line: 17, type: !238, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "rexpr", scope: !2, file: !3, line: 20, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8000, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 1000)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "expbuf", scope: !2, file: !3, line: 26, type: !258, isLocal: true, isDefinition: true)
!263 = !{i32 7, !"Dwarf Version", i32 4}
!264 = !{i32 2, !"Debug Info Version", i32 3}
!265 = !{i32 1, !"wchar_size", i32 4}
!266 = !{!"clang version 10.0.0-4ubuntu1 "}
!267 = distinct !DISubprogram(name: "setpoint", scope: !3, file: !3, line: 54, type: !268, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!268 = !DISubroutineType(types: !269)
!269 = !{!25, !270, !238, !181}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !28, line: 126, baseType: !27)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!273 = !DILocalVariable(name: "mol", arg: 1, scope: !267, file: !3, line: 54, type: !270)
!274 = !DILocalVariable(name: "aexpr", arg: 2, scope: !267, file: !3, line: 54, type: !238)
!275 = !DILocalVariable(name: "point", arg: 3, scope: !267, file: !3, line: 54, type: !181)
!276 = !DILocalVariable(name: "r", scope: !267, file: !3, line: 56, type: !25)
!277 = !DILocalVariable(name: "a", scope: !267, file: !3, line: 56, type: !25)
!278 = !DILocalVariable(name: "ta", scope: !267, file: !3, line: 56, type: !25)
!279 = !DILocalVariable(name: "sp", scope: !267, file: !3, line: 57, type: !40)
!280 = !DILocalVariable(name: "res", scope: !267, file: !3, line: 58, type: !57)
!281 = !DILocalVariable(name: "ap", scope: !267, file: !3, line: 59, type: !103)
!282 = !DILocalVariable(name: "x", scope: !267, file: !3, line: 60, type: !33)
!283 = !DILocalVariable(name: "y", scope: !267, file: !3, line: 60, type: !33)
!284 = !DILocalVariable(name: "z", scope: !267, file: !3, line: 60, type: !33)
!285 = !DILocation(line: 0, scope: !267)
!286 = !DILocation(line: 62, column: 2, scope: !267)
!287 = !DILocation(line: 66, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !267, file: !3, line: 66, column: 2)
!289 = !{!290, !294, i64 104}
!290 = !{!"molecule_t", !291, i64 0, !293, i64 96, !294, i64 104, !293, i64 112, !293, i64 116, !293, i64 120, !294, i64 128}
!291 = !{!"omnipotent char", !292, i64 0}
!292 = !{!"Simple C/C++ TBAA"}
!293 = !{!"int", !291, i64 0}
!294 = !{!"any pointer", !291, i64 0}
!295 = !DILocation(line: 66, column: 2, scope: !288)
!296 = !DILocation(line: 67, column: 23, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 67, column: 7)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 66, column: 57)
!299 = distinct !DILexicalBlock(scope: !288, file: !3, line: 66, column: 2)
!300 = !{!301, !293, i64 12}
!301 = !{!"strand_t", !294, i64 0, !293, i64 8, !293, i64 12, !294, i64 16, !294, i64 24, !293, i64 32, !293, i64 36, !294, i64 40}
!302 = !DILocation(line: 67, column: 17, scope: !297)
!303 = !DILocation(line: 67, column: 7, scope: !298)
!304 = !DILocation(line: 68, column: 24, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 68, column: 4)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 68, column: 4)
!307 = distinct !DILexicalBlock(scope: !297, file: !3, line: 67, column: 31)
!308 = !{!301, !293, i64 32}
!309 = !DILocation(line: 68, column: 18, scope: !305)
!310 = !DILocation(line: 68, column: 4, scope: !306)
!311 = !DILocation(line: 69, column: 15, scope: !312)
!312 = distinct !DILexicalBlock(scope: !305, file: !3, line: 68, column: 42)
!313 = !{!301, !294, i64 40}
!314 = !DILocation(line: 69, column: 11, scope: !312)
!315 = !{!294, !294, i64 0}
!316 = !DILocation(line: 70, column: 26, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !3, line: 70, column: 9)
!318 = !{!319, !293, i64 40}
!319 = !{!"residue_t", !294, i64 0, !293, i64 8, !293, i64 12, !293, i64 16, !294, i64 24, !294, i64 32, !293, i64 40, !293, i64 44, !293, i64 48, !294, i64 56, !294, i64 64, !293, i64 72, !294, i64 80, !293, i64 88, !294, i64 96, !293, i64 104, !294, i64 112, !294, i64 120}
!320 = !DILocation(line: 70, column: 19, scope: !317)
!321 = !DILocation(line: 70, column: 9, scope: !312)
!322 = !DILocation(line: 71, column: 27, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 71, column: 6)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 71, column: 6)
!325 = distinct !DILexicalBlock(scope: !317, file: !3, line: 70, column: 34)
!326 = !{!319, !293, i64 104}
!327 = !DILocation(line: 71, column: 20, scope: !323)
!328 = !DILocation(line: 71, column: 6, scope: !324)
!329 = !DILocation(line: 72, column: 18, scope: !330)
!330 = distinct !DILexicalBlock(scope: !323, file: !3, line: 71, column: 42)
!331 = !{!319, !294, i64 120}
!332 = !DILocation(line: 73, column: 27, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !3, line: 73, column: 11)
!334 = !{!335, !293, i64 16}
!335 = !{!"atom_t", !294, i64 0, !294, i64 8, !293, i64 16, !293, i64 20, !291, i64 24, !294, i64 56, !336, i64 64, !336, i64 72, !336, i64 80, !336, i64 88, !294, i64 96, !293, i64 104, !336, i64 112, !336, i64 120, !293, i64 128, !293, i64 132, !294, i64 136, !291, i64 144, !336, i64 168}
!336 = !{!"double", !291, i64 0}
!337 = !DILocation(line: 73, column: 21, scope: !333)
!338 = !DILocation(line: 73, column: 11, scope: !330)
!339 = !DILocation(line: 74, column: 13, scope: !340)
!340 = distinct !DILexicalBlock(scope: !333, file: !3, line: 73, column: 35)
!341 = !{!336, !336, i64 0}
!342 = !DILocation(line: 74, column: 10, scope: !340)
!343 = !DILocation(line: 75, column: 13, scope: !340)
!344 = !DILocation(line: 75, column: 10, scope: !340)
!345 = !DILocation(line: 76, column: 13, scope: !340)
!346 = !DILocation(line: 76, column: 10, scope: !340)
!347 = !DILocation(line: 77, column: 10, scope: !340)
!348 = !DILocation(line: 78, column: 7, scope: !340)
!349 = !DILocation(line: 0, scope: !288)
!350 = !DILocation(line: 71, column: 38, scope: !323)
!351 = distinct !{!351, !328, !352}
!352 = !DILocation(line: 79, column: 6, scope: !324)
!353 = !DILocation(line: 65, column: 4, scope: !267)
!354 = !DILocation(line: 66, column: 10, scope: !288)
!355 = !DILocation(line: 65, column: 8, scope: !267)
!356 = !DILocation(line: 65, column: 12, scope: !267)
!357 = !DILocation(line: 68, column: 38, scope: !305)
!358 = distinct !{!358, !310, !359}
!359 = !DILocation(line: 81, column: 4, scope: !306)
!360 = !DILocation(line: 66, column: 49, scope: !299)
!361 = !{!301, !294, i64 24}
!362 = distinct !{!362, !295, !363}
!363 = !DILocation(line: 83, column: 2, scope: !288)
!364 = !DILocation(line: 85, column: 9, scope: !365)
!365 = distinct !DILexicalBlock(scope: !267, file: !3, line: 85, column: 6)
!366 = !DILocation(line: 85, column: 6, scope: !267)
!367 = !DILocation(line: 86, column: 12, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !3, line: 85, column: 15)
!369 = !DILocation(line: 86, column: 3, scope: !368)
!370 = !DILocation(line: 87, column: 3, scope: !368)
!371 = !DILocation(line: 89, column: 20, scope: !372)
!372 = distinct !DILexicalBlock(scope: !365, file: !3, line: 88, column: 7)
!373 = !DILocation(line: 89, column: 18, scope: !372)
!374 = !DILocation(line: 89, column: 14, scope: !372)
!375 = !DILocation(line: 90, column: 20, scope: !372)
!376 = !DILocation(line: 90, column: 18, scope: !372)
!377 = !DILocation(line: 90, column: 3, scope: !372)
!378 = !DILocation(line: 90, column: 14, scope: !372)
!379 = !DILocation(line: 91, column: 20, scope: !372)
!380 = !DILocation(line: 91, column: 18, scope: !372)
!381 = !DILocation(line: 91, column: 3, scope: !372)
!382 = !DILocation(line: 91, column: 14, scope: !372)
!383 = !DILocation(line: 94, column: 2, scope: !267)
!384 = !DILocation(line: 95, column: 1, scope: !267)
!385 = distinct !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 97, type: !386, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!25, !270, !238}
!388 = !{!389, !390, !391, !392, !393}
!389 = !DILocalVariable(name: "mol", arg: 1, scope: !385, file: !3, line: 97, type: !270)
!390 = !DILocalVariable(name: "aex", arg: 2, scope: !385, file: !3, line: 97, type: !238)
!391 = !DILocalVariable(name: "aep", scope: !385, file: !3, line: 99, type: !238)
!392 = !DILocalVariable(name: "n_aep", scope: !385, file: !3, line: 99, type: !238)
!393 = !DILocalVariable(name: "ael", scope: !385, file: !3, line: 100, type: !25)
!394 = !DILocation(line: 0, scope: !385)
!395 = !DILocation(line: 102, column: 10, scope: !396)
!396 = distinct !DILexicalBlock(scope: !385, file: !3, line: 102, column: 6)
!397 = !DILocation(line: 102, column: 6, scope: !385)
!398 = !DILocation(line: 103, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 102, column: 19)
!400 = !DILocation(line: 104, column: 3, scope: !399)
!401 = !DILocation(line: 107, column: 2, scope: !385)
!402 = !DILocation(line: 108, column: 2, scope: !385)
!403 = !DILocation(line: 110, column: 26, scope: !404)
!404 = distinct !DILexicalBlock(scope: !385, file: !3, line: 110, column: 2)
!405 = !DILocation(line: 110, column: 2, scope: !404)
!406 = !DILocation(line: 111, column: 7, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !3, line: 111, column: 7)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 110, column: 52)
!409 = distinct !DILexicalBlock(scope: !404, file: !3, line: 110, column: 2)
!410 = !DILocation(line: 111, column: 7, scope: !408)
!411 = !DILocation(line: 112, column: 16, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !3, line: 111, column: 14)
!413 = !DILocation(line: 113, column: 9, scope: !412)
!414 = !DILocation(line: 114, column: 3, scope: !412)
!415 = !DILocation(line: 115, column: 10, scope: !407)
!416 = !DILocation(line: 0, scope: !404)
!417 = !DILocation(line: 0, scope: !407)
!418 = !DILocation(line: 116, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !408, file: !3, line: 116, column: 7)
!420 = !DILocation(line: 116, column: 7, scope: !408)
!421 = !DILocation(line: 117, column: 13, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 116, column: 26)
!423 = !DILocation(line: 117, column: 4, scope: !422)
!424 = !DILocation(line: 119, column: 4, scope: !422)
!425 = !DILocation(line: 121, column: 24, scope: !408)
!426 = !DILocation(line: 121, column: 3, scope: !408)
!427 = !DILocation(line: 122, column: 3, scope: !408)
!428 = !DILocation(line: 122, column: 16, scope: !408)
!429 = !{!291, !291, i64 0}
!430 = !DILocation(line: 123, column: 3, scope: !408)
!431 = !DILocation(line: 124, column: 3, scope: !408)
!432 = !DILocation(line: 126, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !408, file: !3, line: 126, column: 7)
!434 = !DILocation(line: 126, column: 7, scope: !408)
!435 = !DILocation(line: 127, column: 12, scope: !433)
!436 = !DILocation(line: 127, column: 4, scope: !433)
!437 = !DILocation(line: 0, scope: !408)
!438 = !DILocation(line: 128, column: 3, scope: !408)
!439 = distinct !{!439, !405, !440}
!440 = !DILocation(line: 129, column: 2, scope: !404)
!441 = !DILocation(line: 130, column: 2, scope: !385)
!442 = !DILocation(line: 132, column: 2, scope: !385)
!443 = !DILocation(line: 133, column: 1, scope: !385)
!444 = distinct !DISubprogram(name: "select_all", scope: !3, file: !3, line: 398, type: !445, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !270}
!447 = !{!448, !449, !450, !451, !452}
!448 = !DILocalVariable(name: "mol", arg: 1, scope: !444, file: !3, line: 398, type: !270)
!449 = !DILocalVariable(name: "a", scope: !444, file: !3, line: 400, type: !25)
!450 = !DILocalVariable(name: "r", scope: !444, file: !3, line: 400, type: !25)
!451 = !DILocalVariable(name: "sp", scope: !444, file: !3, line: 401, type: !40)
!452 = !DILocalVariable(name: "res", scope: !444, file: !3, line: 402, type: !57)
!453 = !DILocation(line: 0, scope: !444)
!454 = !DILocation(line: 404, column: 17, scope: !455)
!455 = distinct !DILexicalBlock(scope: !444, file: !3, line: 404, column: 2)
!456 = !DILocation(line: 404, column: 2, scope: !455)
!457 = !DILocation(line: 405, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !3, line: 404, column: 49)
!459 = distinct !DILexicalBlock(scope: !455, file: !3, line: 404, column: 2)
!460 = !DILocation(line: 405, column: 14, scope: !458)
!461 = !DILocation(line: 406, column: 23, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 406, column: 3)
!463 = distinct !DILexicalBlock(scope: !458, file: !3, line: 406, column: 3)
!464 = !DILocation(line: 406, column: 17, scope: !462)
!465 = !DILocation(line: 406, column: 3, scope: !463)
!466 = !DILocation(line: 407, column: 14, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 406, column: 41)
!468 = !DILocation(line: 407, column: 10, scope: !467)
!469 = !DILocation(line: 408, column: 9, scope: !467)
!470 = !DILocation(line: 408, column: 16, scope: !467)
!471 = !DILocation(line: 409, column: 25, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 409, column: 4)
!473 = distinct !DILexicalBlock(scope: !467, file: !3, line: 409, column: 4)
!474 = !DILocation(line: 409, column: 18, scope: !472)
!475 = !DILocation(line: 409, column: 4, scope: !473)
!476 = !DILocation(line: 410, column: 10, scope: !472)
!477 = !DILocation(line: 410, column: 23, scope: !472)
!478 = !DILocation(line: 410, column: 30, scope: !472)
!479 = !DILocation(line: 409, column: 36, scope: !472)
!480 = distinct !{!480, !475, !481}
!481 = !DILocation(line: 410, column: 33, scope: !473)
!482 = !DILocation(line: 406, column: 37, scope: !462)
!483 = distinct !{!483, !465, !484}
!484 = !DILocation(line: 411, column: 3, scope: !463)
!485 = !DILocation(line: 404, column: 41, scope: !459)
!486 = distinct !{!486, !456, !487}
!487 = !DILocation(line: 412, column: 2, scope: !455)
!488 = !DILocation(line: 413, column: 1, scope: !444)
!489 = distinct !DISubprogram(name: "clear_work", scope: !3, file: !3, line: 432, type: !445, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !490)
!490 = !{!491, !492, !493, !494, !495}
!491 = !DILocalVariable(name: "mol", arg: 1, scope: !489, file: !3, line: 432, type: !270)
!492 = !DILocalVariable(name: "a", scope: !489, file: !3, line: 434, type: !25)
!493 = !DILocalVariable(name: "r", scope: !489, file: !3, line: 434, type: !25)
!494 = !DILocalVariable(name: "sp", scope: !489, file: !3, line: 435, type: !40)
!495 = !DILocalVariable(name: "res", scope: !489, file: !3, line: 436, type: !57)
!496 = !DILocation(line: 0, scope: !489)
!497 = !DILocation(line: 438, column: 17, scope: !498)
!498 = distinct !DILexicalBlock(scope: !489, file: !3, line: 438, column: 2)
!499 = !DILocation(line: 438, column: 2, scope: !498)
!500 = !DILocation(line: 439, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 438, column: 49)
!502 = distinct !DILexicalBlock(scope: !498, file: !3, line: 438, column: 2)
!503 = !DILocation(line: 439, column: 14, scope: !501)
!504 = !DILocation(line: 440, column: 23, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 440, column: 3)
!506 = distinct !DILexicalBlock(scope: !501, file: !3, line: 440, column: 3)
!507 = !DILocation(line: 440, column: 17, scope: !505)
!508 = !DILocation(line: 440, column: 3, scope: !506)
!509 = !DILocation(line: 441, column: 14, scope: !510)
!510 = distinct !DILexicalBlock(scope: !505, file: !3, line: 440, column: 41)
!511 = !DILocation(line: 441, column: 10, scope: !510)
!512 = !DILocation(line: 442, column: 9, scope: !510)
!513 = !DILocation(line: 442, column: 16, scope: !510)
!514 = !DILocation(line: 443, column: 25, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 443, column: 4)
!516 = distinct !DILexicalBlock(scope: !510, file: !3, line: 443, column: 4)
!517 = !DILocation(line: 443, column: 18, scope: !515)
!518 = !DILocation(line: 443, column: 4, scope: !516)
!519 = !DILocation(line: 444, column: 10, scope: !515)
!520 = !DILocation(line: 444, column: 23, scope: !515)
!521 = !DILocation(line: 444, column: 30, scope: !515)
!522 = !DILocation(line: 443, column: 36, scope: !515)
!523 = distinct !{!523, !518, !524}
!524 = !DILocation(line: 444, column: 34, scope: !516)
!525 = !DILocation(line: 440, column: 37, scope: !505)
!526 = distinct !{!526, !508, !527}
!527 = !DILocation(line: 445, column: 3, scope: !506)
!528 = !DILocation(line: 438, column: 41, scope: !502)
!529 = distinct !{!529, !499, !530}
!530 = !DILocation(line: 446, column: 2, scope: !498)
!531 = !DILocation(line: 447, column: 1, scope: !489)
!532 = distinct !DISubprogram(name: "clear_select", scope: !3, file: !3, line: 415, type: !445, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!533 = !{!534, !535, !536, !537, !538}
!534 = !DILocalVariable(name: "mol", arg: 1, scope: !532, file: !3, line: 415, type: !270)
!535 = !DILocalVariable(name: "a", scope: !532, file: !3, line: 417, type: !25)
!536 = !DILocalVariable(name: "r", scope: !532, file: !3, line: 417, type: !25)
!537 = !DILocalVariable(name: "sp", scope: !532, file: !3, line: 418, type: !40)
!538 = !DILocalVariable(name: "res", scope: !532, file: !3, line: 419, type: !57)
!539 = !DILocation(line: 0, scope: !532)
!540 = !DILocation(line: 421, column: 17, scope: !541)
!541 = distinct !DILexicalBlock(scope: !532, file: !3, line: 421, column: 2)
!542 = !DILocation(line: 421, column: 2, scope: !541)
!543 = !DILocation(line: 422, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 421, column: 49)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 421, column: 2)
!546 = !DILocation(line: 422, column: 14, scope: !544)
!547 = !DILocation(line: 423, column: 23, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 423, column: 3)
!549 = distinct !DILexicalBlock(scope: !544, file: !3, line: 423, column: 3)
!550 = !DILocation(line: 423, column: 17, scope: !548)
!551 = !DILocation(line: 423, column: 3, scope: !549)
!552 = !DILocation(line: 424, column: 14, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !3, line: 423, column: 41)
!554 = !DILocation(line: 424, column: 10, scope: !553)
!555 = !DILocation(line: 425, column: 9, scope: !553)
!556 = !DILocation(line: 425, column: 16, scope: !553)
!557 = !DILocation(line: 426, column: 25, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 426, column: 4)
!559 = distinct !DILexicalBlock(scope: !553, file: !3, line: 426, column: 4)
!560 = !DILocation(line: 426, column: 18, scope: !558)
!561 = !DILocation(line: 426, column: 4, scope: !559)
!562 = !DILocation(line: 427, column: 10, scope: !558)
!563 = !DILocation(line: 427, column: 23, scope: !558)
!564 = !DILocation(line: 427, column: 30, scope: !558)
!565 = !DILocation(line: 426, column: 36, scope: !558)
!566 = distinct !{!566, !561, !567}
!567 = !DILocation(line: 427, column: 34, scope: !559)
!568 = !DILocation(line: 423, column: 37, scope: !548)
!569 = distinct !{!569, !551, !570}
!570 = !DILocation(line: 428, column: 3, scope: !549)
!571 = !DILocation(line: 421, column: 41, scope: !545)
!572 = distinct !{!572, !542, !573}
!573 = !DILocation(line: 429, column: 2, scope: !541)
!574 = !DILocation(line: 430, column: 1, scope: !532)
!575 = distinct !DISubprogram(name: "eval_1_aexpr", scope: !3, file: !3, line: 204, type: !386, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!576 = !{!577, !578, !579, !580, !581, !582}
!577 = !DILocalVariable(name: "mol", arg: 1, scope: !575, file: !3, line: 204, type: !270)
!578 = !DILocalVariable(name: "aex", arg: 2, scope: !575, file: !3, line: 204, type: !238)
!579 = !DILocalVariable(name: "aep", scope: !575, file: !3, line: 206, type: !238)
!580 = !DILocalVariable(name: "wp", scope: !575, file: !3, line: 207, type: !238)
!581 = !DILocalVariable(name: "lo", scope: !575, file: !3, line: 208, type: !25)
!582 = !DILocalVariable(name: "hi", scope: !575, file: !3, line: 208, type: !25)
!583 = !DILocation(line: 0, scope: !575)
!584 = !DILocation(line: 208, column: 2, scope: !575)
!585 = !DILocation(line: 211, column: 6, scope: !586)
!586 = distinct !DILexicalBlock(scope: !575, file: !3, line: 211, column: 6)
!587 = !DILocation(line: 211, column: 11, scope: !586)
!588 = !DILocation(line: 211, column: 6, scope: !575)
!589 = !DILocation(line: 212, column: 9, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !3, line: 211, column: 19)
!591 = !DILocation(line: 213, column: 6, scope: !590)
!592 = !DILocation(line: 214, column: 2, scope: !590)
!593 = !DILocation(line: 215, column: 11, scope: !594)
!594 = distinct !DILexicalBlock(scope: !586, file: !3, line: 214, column: 7)
!595 = !DILocation(line: 215, column: 9, scope: !594)
!596 = !DILocation(line: 216, column: 10, scope: !594)
!597 = !DILocation(line: 216, column: 26, scope: !594)
!598 = !DILocation(line: 216, column: 7, scope: !594)
!599 = !DILocation(line: 0, scope: !586)
!600 = !DILocation(line: 218, column: 6, scope: !601)
!601 = distinct !DILexicalBlock(scope: !575, file: !3, line: 218, column: 6)
!602 = !DILocation(line: 218, column: 11, scope: !601)
!603 = !DILocation(line: 218, column: 6, scope: !575)
!604 = !DILocation(line: 219, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 218, column: 19)
!606 = !DILocation(line: 220, column: 6, scope: !605)
!607 = !DILocation(line: 221, column: 2, scope: !605)
!608 = !DILocation(line: 222, column: 11, scope: !609)
!609 = distinct !DILexicalBlock(scope: !601, file: !3, line: 221, column: 7)
!610 = !DILocation(line: 222, column: 9, scope: !609)
!611 = !DILocation(line: 223, column: 10, scope: !609)
!612 = !DILocation(line: 223, column: 26, scope: !609)
!613 = !DILocation(line: 223, column: 7, scope: !609)
!614 = !DILocation(line: 0, scope: !601)
!615 = !DILocation(line: 225, column: 10, scope: !575)
!616 = !DILocation(line: 225, column: 8, scope: !575)
!617 = !DILocation(line: 227, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !575, file: !3, line: 227, column: 6)
!619 = !DILocation(line: 227, column: 6, scope: !575)
!620 = !DILocation(line: 228, column: 16, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !3, line: 227, column: 13)
!622 = !DILocation(line: 228, column: 8, scope: !621)
!623 = !DILocation(line: 229, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !3, line: 229, column: 7)
!625 = !DILocation(line: 229, column: 7, scope: !621)
!626 = !DILocation(line: 230, column: 4, scope: !624)
!627 = !DILocation(line: 232, column: 26, scope: !624)
!628 = !{!293, !293, i64 0}
!629 = !DILocation(line: 232, column: 30, scope: !624)
!630 = !DILocation(line: 232, column: 4, scope: !624)
!631 = !DILocation(line: 233, column: 16, scope: !621)
!632 = !DILocation(line: 233, column: 3, scope: !621)
!633 = !DILocation(line: 234, column: 8, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 234, column: 8)
!635 = distinct !DILexicalBlock(scope: !621, file: !3, line: 233, column: 38)
!636 = !DILocation(line: 234, column: 8, scope: !635)
!637 = !DILocation(line: 235, column: 5, scope: !634)
!638 = !DILocation(line: 237, column: 27, scope: !634)
!639 = !DILocation(line: 237, column: 31, scope: !634)
!640 = !DILocation(line: 237, column: 5, scope: !634)
!641 = distinct !{!641, !632, !642}
!642 = !DILocation(line: 238, column: 3, scope: !621)
!643 = !DILocation(line: 240, column: 3, scope: !618)
!644 = !DILocation(line: 242, column: 6, scope: !645)
!645 = distinct !DILexicalBlock(scope: !575, file: !3, line: 242, column: 6)
!646 = !DILocation(line: 242, column: 6, scope: !575)
!647 = !DILocation(line: 243, column: 16, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !3, line: 242, column: 13)
!649 = !DILocation(line: 243, column: 8, scope: !648)
!650 = !DILocation(line: 244, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 244, column: 7)
!652 = !DILocation(line: 244, column: 7, scope: !648)
!653 = !DILocation(line: 245, column: 4, scope: !651)
!654 = !DILocation(line: 247, column: 26, scope: !651)
!655 = !DILocation(line: 247, column: 30, scope: !651)
!656 = !DILocation(line: 247, column: 4, scope: !651)
!657 = !DILocation(line: 248, column: 16, scope: !648)
!658 = !DILocation(line: 248, column: 3, scope: !648)
!659 = !DILocation(line: 249, column: 8, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 249, column: 8)
!661 = distinct !DILexicalBlock(scope: !648, file: !3, line: 248, column: 38)
!662 = !DILocation(line: 249, column: 8, scope: !661)
!663 = !DILocation(line: 250, column: 5, scope: !660)
!664 = !DILocation(line: 252, column: 27, scope: !660)
!665 = !DILocation(line: 252, column: 31, scope: !660)
!666 = !DILocation(line: 252, column: 5, scope: !660)
!667 = distinct !{!667, !658, !668}
!668 = !DILocation(line: 253, column: 3, scope: !648)
!669 = !DILocation(line: 255, column: 3, scope: !645)
!670 = !DILocation(line: 257, column: 6, scope: !671)
!671 = distinct !DILexicalBlock(scope: !575, file: !3, line: 257, column: 6)
!672 = !DILocation(line: 257, column: 6, scope: !575)
!673 = !DILocation(line: 258, column: 16, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !3, line: 257, column: 13)
!675 = !DILocation(line: 258, column: 8, scope: !674)
!676 = !DILocation(line: 259, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !3, line: 259, column: 7)
!678 = !DILocation(line: 259, column: 7, scope: !674)
!679 = !DILocation(line: 260, column: 4, scope: !677)
!680 = !DILocation(line: 262, column: 13, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !3, line: 261, column: 7)
!682 = !DILocation(line: 262, column: 4, scope: !681)
!683 = !DILocation(line: 264, column: 16, scope: !674)
!684 = !DILocation(line: 264, column: 3, scope: !674)
!685 = !DILocation(line: 265, column: 8, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 265, column: 8)
!687 = distinct !DILexicalBlock(scope: !674, file: !3, line: 264, column: 38)
!688 = !DILocation(line: 265, column: 8, scope: !687)
!689 = !DILocation(line: 266, column: 5, scope: !686)
!690 = !DILocation(line: 268, column: 14, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !3, line: 267, column: 8)
!692 = !DILocation(line: 268, column: 5, scope: !691)
!693 = distinct !{!693, !684, !694}
!694 = !DILocation(line: 270, column: 3, scope: !674)
!695 = !DILocation(line: 272, column: 3, scope: !671)
!696 = !DILocation(line: 274, column: 1, scope: !575)
!697 = !DILocation(line: 273, column: 2, scope: !575)
!698 = distinct !DISubprogram(name: "or_select", scope: !3, file: !3, line: 449, type: !445, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !699)
!699 = !{!700, !701, !702, !703, !704, !705}
!700 = !DILocalVariable(name: "mol", arg: 1, scope: !698, file: !3, line: 449, type: !270)
!701 = !DILocalVariable(name: "a", scope: !698, file: !3, line: 451, type: !25)
!702 = !DILocalVariable(name: "r", scope: !698, file: !3, line: 451, type: !25)
!703 = !DILocalVariable(name: "sp", scope: !698, file: !3, line: 452, type: !40)
!704 = !DILocalVariable(name: "res", scope: !698, file: !3, line: 453, type: !57)
!705 = !DILocalVariable(name: "ap", scope: !698, file: !3, line: 454, type: !103)
!706 = !DILocation(line: 0, scope: !698)
!707 = !DILocation(line: 456, column: 17, scope: !708)
!708 = distinct !DILexicalBlock(scope: !698, file: !3, line: 456, column: 2)
!709 = !DILocation(line: 456, column: 2, scope: !708)
!710 = !DILocation(line: 457, column: 23, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !3, line: 456, column: 49)
!712 = distinct !DILexicalBlock(scope: !708, file: !3, line: 456, column: 2)
!713 = !DILocation(line: 457, column: 17, scope: !711)
!714 = !DILocation(line: 457, column: 7, scope: !711)
!715 = !DILocation(line: 457, column: 14, scope: !711)
!716 = !DILocation(line: 458, column: 23, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !3, line: 458, column: 3)
!718 = distinct !DILexicalBlock(scope: !711, file: !3, line: 458, column: 3)
!719 = !DILocation(line: 458, column: 17, scope: !717)
!720 = !DILocation(line: 458, column: 3, scope: !718)
!721 = !DILocation(line: 459, column: 14, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !3, line: 458, column: 41)
!723 = !DILocation(line: 459, column: 10, scope: !722)
!724 = !DILocation(line: 460, column: 26, scope: !722)
!725 = !DILocation(line: 460, column: 19, scope: !722)
!726 = !DILocation(line: 460, column: 9, scope: !722)
!727 = !DILocation(line: 460, column: 16, scope: !722)
!728 = !DILocation(line: 462, column: 25, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 462, column: 4)
!730 = distinct !DILexicalBlock(scope: !722, file: !3, line: 462, column: 4)
!731 = !DILocation(line: 462, column: 18, scope: !729)
!732 = !DILocation(line: 462, column: 4, scope: !730)
!733 = !DILocation(line: 463, column: 16, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !3, line: 462, column: 40)
!735 = !DILocation(line: 464, column: 25, scope: !734)
!736 = !DILocation(line: 464, column: 19, scope: !734)
!737 = !DILocation(line: 464, column: 9, scope: !734)
!738 = !DILocation(line: 464, column: 16, scope: !734)
!739 = !DILocation(line: 462, column: 36, scope: !729)
!740 = distinct !{!740, !732, !741}
!741 = !DILocation(line: 466, column: 4, scope: !730)
!742 = !DILocation(line: 458, column: 37, scope: !717)
!743 = distinct !{!743, !720, !744}
!744 = !DILocation(line: 467, column: 3, scope: !718)
!745 = !DILocation(line: 456, column: 41, scope: !712)
!746 = distinct !{!746, !709, !747}
!747 = !DILocation(line: 468, column: 2, scope: !708)
!748 = !DILocation(line: 469, column: 1, scope: !698)
!749 = distinct !DISubprogram(name: "set_select", scope: !3, file: !3, line: 471, type: !445, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !750)
!750 = !{!751, !752, !753, !754, !755, !756}
!751 = !DILocalVariable(name: "mol", arg: 1, scope: !749, file: !3, line: 471, type: !270)
!752 = !DILocalVariable(name: "a", scope: !749, file: !3, line: 473, type: !25)
!753 = !DILocalVariable(name: "r", scope: !749, file: !3, line: 473, type: !25)
!754 = !DILocalVariable(name: "sp", scope: !749, file: !3, line: 474, type: !40)
!755 = !DILocalVariable(name: "res", scope: !749, file: !3, line: 475, type: !57)
!756 = !DILocalVariable(name: "ap", scope: !749, file: !3, line: 476, type: !103)
!757 = !DILocation(line: 0, scope: !749)
!758 = !DILocation(line: 478, column: 17, scope: !759)
!759 = distinct !DILexicalBlock(scope: !749, file: !3, line: 478, column: 2)
!760 = !DILocation(line: 478, column: 2, scope: !759)
!761 = !DILocation(line: 479, column: 23, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 478, column: 49)
!763 = distinct !DILexicalBlock(scope: !759, file: !3, line: 478, column: 2)
!764 = !DILocation(line: 479, column: 17, scope: !762)
!765 = !DILocation(line: 479, column: 7, scope: !762)
!766 = !DILocation(line: 479, column: 14, scope: !762)
!767 = !DILocation(line: 480, column: 23, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 480, column: 3)
!769 = distinct !DILexicalBlock(scope: !762, file: !3, line: 480, column: 3)
!770 = !DILocation(line: 480, column: 17, scope: !768)
!771 = !DILocation(line: 480, column: 3, scope: !769)
!772 = !DILocation(line: 481, column: 14, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !3, line: 480, column: 41)
!774 = !DILocation(line: 481, column: 10, scope: !773)
!775 = !DILocation(line: 482, column: 26, scope: !773)
!776 = !DILocation(line: 482, column: 19, scope: !773)
!777 = !DILocation(line: 482, column: 9, scope: !773)
!778 = !DILocation(line: 482, column: 16, scope: !773)
!779 = !DILocation(line: 484, column: 25, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 484, column: 4)
!781 = distinct !DILexicalBlock(scope: !773, file: !3, line: 484, column: 4)
!782 = !DILocation(line: 484, column: 18, scope: !780)
!783 = !DILocation(line: 484, column: 4, scope: !781)
!784 = !DILocation(line: 485, column: 16, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !3, line: 484, column: 40)
!786 = !DILocation(line: 486, column: 25, scope: !785)
!787 = !DILocation(line: 486, column: 19, scope: !785)
!788 = !DILocation(line: 486, column: 9, scope: !785)
!789 = !DILocation(line: 486, column: 16, scope: !785)
!790 = !DILocation(line: 484, column: 36, scope: !780)
!791 = distinct !{!791, !783, !792}
!792 = !DILocation(line: 488, column: 4, scope: !781)
!793 = !DILocation(line: 480, column: 37, scope: !768)
!794 = distinct !{!794, !771, !795}
!795 = !DILocation(line: 489, column: 3, scope: !769)
!796 = !DILocation(line: 478, column: 41, scope: !763)
!797 = distinct !{!797, !760, !798}
!798 = !DILocation(line: 490, column: 2, scope: !759)
!799 = !DILocation(line: 491, column: 1, scope: !749)
!800 = distinct !DISubprogram(name: "atom_in_aexpr", scope: !3, file: !3, line: 135, type: !801, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!25, !103, !238}
!803 = !{!804, !805, !806, !807, !808}
!804 = !DILocalVariable(name: "ap", arg: 1, scope: !800, file: !3, line: 135, type: !103)
!805 = !DILocalVariable(name: "aex", arg: 2, scope: !800, file: !3, line: 135, type: !238)
!806 = !DILocalVariable(name: "aep", scope: !800, file: !3, line: 137, type: !238)
!807 = !DILocalVariable(name: "n_aep", scope: !800, file: !3, line: 137, type: !238)
!808 = !DILocalVariable(name: "ael", scope: !800, file: !3, line: 138, type: !25)
!809 = !DILocation(line: 0, scope: !800)
!810 = !DILocation(line: 140, column: 10, scope: !811)
!811 = distinct !DILexicalBlock(scope: !800, file: !3, line: 140, column: 6)
!812 = !DILocation(line: 140, column: 6, scope: !800)
!813 = !DILocation(line: 143, column: 26, scope: !814)
!814 = distinct !DILexicalBlock(scope: !800, file: !3, line: 143, column: 2)
!815 = !DILocation(line: 143, column: 2, scope: !814)
!816 = !DILocation(line: 144, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 144, column: 7)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 143, column: 52)
!819 = distinct !DILexicalBlock(scope: !814, file: !3, line: 143, column: 2)
!820 = !DILocation(line: 144, column: 7, scope: !818)
!821 = !DILocation(line: 145, column: 16, scope: !822)
!822 = distinct !DILexicalBlock(scope: !817, file: !3, line: 144, column: 14)
!823 = !DILocation(line: 146, column: 9, scope: !822)
!824 = !DILocation(line: 147, column: 3, scope: !822)
!825 = !DILocation(line: 148, column: 10, scope: !817)
!826 = !DILocation(line: 0, scope: !814)
!827 = !DILocation(line: 0, scope: !817)
!828 = !DILocation(line: 149, column: 11, scope: !829)
!829 = distinct !DILexicalBlock(scope: !818, file: !3, line: 149, column: 7)
!830 = !DILocation(line: 149, column: 7, scope: !818)
!831 = !DILocation(line: 150, column: 13, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !3, line: 149, column: 26)
!833 = !DILocation(line: 150, column: 4, scope: !832)
!834 = !DILocation(line: 152, column: 4, scope: !832)
!835 = !DILocation(line: 154, column: 24, scope: !818)
!836 = !DILocation(line: 154, column: 3, scope: !818)
!837 = !DILocation(line: 155, column: 3, scope: !818)
!838 = !DILocation(line: 155, column: 16, scope: !818)
!839 = !DILocation(line: 156, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !818, file: !3, line: 156, column: 7)
!841 = !DILocation(line: 156, column: 7, scope: !818)
!842 = !DILocation(line: 159, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !818, file: !3, line: 159, column: 7)
!844 = !DILocation(line: 159, column: 7, scope: !818)
!845 = !DILocation(line: 160, column: 12, scope: !843)
!846 = !DILocation(line: 160, column: 4, scope: !843)
!847 = !DILocation(line: 0, scope: !818)
!848 = distinct !{!848, !815, !849}
!849 = !DILocation(line: 161, column: 2, scope: !814)
!850 = !DILocation(line: 163, column: 1, scope: !800)
!851 = distinct !DISubprogram(name: "atom_in_1_aexpr", scope: !3, file: !3, line: 276, type: !801, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !852)
!852 = !{!853, !854, !855, !856, !857, !858, !859, !860}
!853 = !DILocalVariable(name: "ap", arg: 1, scope: !851, file: !3, line: 276, type: !103)
!854 = !DILocalVariable(name: "aex", arg: 2, scope: !851, file: !3, line: 276, type: !238)
!855 = !DILocalVariable(name: "aep", scope: !851, file: !3, line: 278, type: !238)
!856 = !DILocalVariable(name: "wp", scope: !851, file: !3, line: 279, type: !238)
!857 = !DILocalVariable(name: "lo", scope: !851, file: !3, line: 280, type: !25)
!858 = !DILocalVariable(name: "hi", scope: !851, file: !3, line: 280, type: !25)
!859 = !DILabel(scope: !851, name: "RPART", file: !3, line: 316)
!860 = !DILabel(scope: !851, name: "APART", file: !3, line: 333)
!861 = !DILocation(line: 0, scope: !851)
!862 = !DILocation(line: 280, column: 2, scope: !851)
!863 = !DILocation(line: 283, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !851, file: !3, line: 283, column: 6)
!865 = !DILocation(line: 283, column: 11, scope: !864)
!866 = !DILocation(line: 283, column: 6, scope: !851)
!867 = !DILocation(line: 284, column: 9, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !3, line: 283, column: 19)
!869 = !DILocation(line: 285, column: 6, scope: !868)
!870 = !DILocation(line: 286, column: 2, scope: !868)
!871 = !DILocation(line: 287, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !864, file: !3, line: 286, column: 7)
!873 = !DILocation(line: 287, column: 9, scope: !872)
!874 = !DILocation(line: 288, column: 10, scope: !872)
!875 = !DILocation(line: 288, column: 26, scope: !872)
!876 = !DILocation(line: 288, column: 7, scope: !872)
!877 = !DILocation(line: 0, scope: !864)
!878 = !DILocation(line: 290, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !851, file: !3, line: 290, column: 6)
!880 = !DILocation(line: 290, column: 11, scope: !879)
!881 = !DILocation(line: 290, column: 6, scope: !851)
!882 = !DILocation(line: 291, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !3, line: 290, column: 19)
!884 = !DILocation(line: 292, column: 6, scope: !883)
!885 = !DILocation(line: 293, column: 2, scope: !883)
!886 = !DILocation(line: 294, column: 11, scope: !887)
!887 = distinct !DILexicalBlock(scope: !879, file: !3, line: 293, column: 7)
!888 = !DILocation(line: 294, column: 9, scope: !887)
!889 = !DILocation(line: 295, column: 10, scope: !887)
!890 = !DILocation(line: 295, column: 26, scope: !887)
!891 = !DILocation(line: 295, column: 7, scope: !887)
!892 = !DILocation(line: 0, scope: !879)
!893 = !DILocation(line: 297, column: 10, scope: !851)
!894 = !DILocation(line: 297, column: 8, scope: !851)
!895 = !DILocation(line: 299, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !851, file: !3, line: 299, column: 6)
!897 = !DILocation(line: 299, column: 6, scope: !851)
!898 = !DILocation(line: 300, column: 16, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !3, line: 299, column: 13)
!900 = !DILocation(line: 300, column: 8, scope: !899)
!901 = !DILocation(line: 301, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !3, line: 301, column: 7)
!903 = !DILocation(line: 301, column: 7, scope: !899)
!904 = !DILocation(line: 302, column: 8, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 302, column: 8)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 301, column: 35)
!907 = !DILocation(line: 302, column: 8, scope: !906)
!908 = !DILocation(line: 304, column: 36, scope: !909)
!909 = distinct !DILexicalBlock(scope: !902, file: !3, line: 304, column: 13)
!910 = !DILocation(line: 304, column: 40, scope: !909)
!911 = !DILocation(line: 304, column: 13, scope: !909)
!912 = !DILocation(line: 304, column: 13, scope: !902)
!913 = !DILocation(line: 306, column: 16, scope: !899)
!914 = !DILocation(line: 306, column: 3, scope: !899)
!915 = !DILocation(line: 307, column: 8, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 307, column: 8)
!917 = distinct !DILexicalBlock(scope: !899, file: !3, line: 306, column: 38)
!918 = !DILocation(line: 307, column: 8, scope: !917)
!919 = !DILocation(line: 308, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 308, column: 9)
!921 = distinct !DILexicalBlock(scope: !916, file: !3, line: 307, column: 36)
!922 = !DILocation(line: 308, column: 9, scope: !921)
!923 = !DILocation(line: 310, column: 37, scope: !924)
!924 = distinct !DILexicalBlock(scope: !916, file: !3, line: 310, column: 14)
!925 = !DILocation(line: 310, column: 41, scope: !924)
!926 = !DILocation(line: 310, column: 14, scope: !924)
!927 = !DILocation(line: 310, column: 14, scope: !916)
!928 = distinct !{!928, !914, !929}
!929 = !DILocation(line: 312, column: 3, scope: !899)
!930 = !DILocation(line: 316, column: 1, scope: !851)
!931 = !DILocation(line: 316, column: 13, scope: !932)
!932 = distinct !DILexicalBlock(scope: !851, file: !3, line: 316, column: 13)
!933 = !DILocation(line: 316, column: 13, scope: !851)
!934 = !DILocation(line: 317, column: 16, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !3, line: 316, column: 20)
!936 = !DILocation(line: 317, column: 8, scope: !935)
!937 = !DILocation(line: 318, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 318, column: 7)
!939 = !DILocation(line: 318, column: 7, scope: !935)
!940 = !DILocation(line: 319, column: 8, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 319, column: 8)
!942 = distinct !DILexicalBlock(scope: !938, file: !3, line: 318, column: 35)
!943 = !DILocation(line: 319, column: 8, scope: !942)
!944 = !DILocation(line: 321, column: 36, scope: !945)
!945 = distinct !DILexicalBlock(scope: !938, file: !3, line: 321, column: 13)
!946 = !DILocation(line: 321, column: 40, scope: !945)
!947 = !DILocation(line: 321, column: 13, scope: !945)
!948 = !DILocation(line: 321, column: 13, scope: !938)
!949 = !DILocation(line: 323, column: 16, scope: !935)
!950 = !DILocation(line: 323, column: 3, scope: !935)
!951 = !DILocation(line: 324, column: 8, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 324, column: 8)
!953 = distinct !DILexicalBlock(scope: !935, file: !3, line: 323, column: 38)
!954 = !DILocation(line: 324, column: 8, scope: !953)
!955 = !DILocation(line: 325, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 325, column: 9)
!957 = distinct !DILexicalBlock(scope: !952, file: !3, line: 324, column: 36)
!958 = !DILocation(line: 325, column: 9, scope: !957)
!959 = !DILocation(line: 327, column: 37, scope: !960)
!960 = distinct !DILexicalBlock(scope: !952, file: !3, line: 327, column: 14)
!961 = !DILocation(line: 327, column: 41, scope: !960)
!962 = !DILocation(line: 327, column: 14, scope: !960)
!963 = !DILocation(line: 327, column: 14, scope: !952)
!964 = distinct !{!964, !950, !965}
!965 = !DILocation(line: 329, column: 3, scope: !935)
!966 = !DILocation(line: 333, column: 1, scope: !851)
!967 = !DILocation(line: 333, column: 13, scope: !968)
!968 = distinct !DILexicalBlock(scope: !851, file: !3, line: 333, column: 13)
!969 = !DILocation(line: 333, column: 13, scope: !851)
!970 = !DILocation(line: 334, column: 16, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 333, column: 20)
!972 = !DILocation(line: 334, column: 8, scope: !971)
!973 = !DILocation(line: 335, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !3, line: 335, column: 7)
!975 = !DILocation(line: 335, column: 7, scope: !971)
!976 = !DILocation(line: 336, column: 8, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 336, column: 8)
!978 = distinct !DILexicalBlock(scope: !974, file: !3, line: 335, column: 35)
!979 = !DILocation(line: 336, column: 8, scope: !978)
!980 = !DILocation(line: 339, column: 13, scope: !981)
!981 = distinct !DILexicalBlock(scope: !974, file: !3, line: 338, column: 8)
!982 = !DILocation(line: 339, column: 4, scope: !981)
!983 = !DILocation(line: 340, column: 4, scope: !981)
!984 = !DILocation(line: 342, column: 16, scope: !971)
!985 = !DILocation(line: 342, column: 3, scope: !971)
!986 = !DILocation(line: 343, column: 8, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 343, column: 8)
!988 = distinct !DILexicalBlock(scope: !971, file: !3, line: 342, column: 38)
!989 = !DILocation(line: 343, column: 8, scope: !988)
!990 = !DILocation(line: 344, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 344, column: 9)
!992 = distinct !DILexicalBlock(scope: !987, file: !3, line: 343, column: 36)
!993 = !DILocation(line: 344, column: 9, scope: !992)
!994 = !DILocation(line: 347, column: 14, scope: !995)
!995 = distinct !DILexicalBlock(scope: !987, file: !3, line: 346, column: 9)
!996 = !DILocation(line: 347, column: 5, scope: !995)
!997 = !DILocation(line: 348, column: 5, scope: !995)
!998 = distinct !{!998, !985, !999}
!999 = !DILocation(line: 350, column: 3, scope: !971)
!1000 = !DILocation(line: 355, column: 1, scope: !851)
!1001 = distinct !DISubprogram(name: "set_attr_if", scope: !3, file: !3, line: 165, type: !1002, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !270, !25, !25}
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012}
!1005 = !DILocalVariable(name: "mol", arg: 1, scope: !1001, file: !3, line: 165, type: !270)
!1006 = !DILocalVariable(name: "attr", arg: 2, scope: !1001, file: !3, line: 165, type: !25)
!1007 = !DILocalVariable(name: "i_attr", arg: 3, scope: !1001, file: !3, line: 165, type: !25)
!1008 = !DILocalVariable(name: "a", scope: !1001, file: !3, line: 167, type: !25)
!1009 = !DILocalVariable(name: "r", scope: !1001, file: !3, line: 167, type: !25)
!1010 = !DILocalVariable(name: "sp", scope: !1001, file: !3, line: 168, type: !40)
!1011 = !DILocalVariable(name: "res", scope: !1001, file: !3, line: 169, type: !57)
!1012 = !DILocalVariable(name: "ap", scope: !1001, file: !3, line: 170, type: !103)
!1013 = !DILocation(line: 0, scope: !1001)
!1014 = !DILocation(line: 172, column: 17, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 172, column: 2)
!1016 = !DILocation(line: 172, column: 2, scope: !1015)
!1017 = !DILocation(line: 173, column: 23, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 172, column: 49)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 172, column: 2)
!1020 = !DILocation(line: 173, column: 30, scope: !1018)
!1021 = !DILocation(line: 173, column: 17, scope: !1018)
!1022 = !DILocation(line: 173, column: 7, scope: !1018)
!1023 = !DILocation(line: 173, column: 14, scope: !1018)
!1024 = !DILocation(line: 174, column: 23, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 174, column: 3)
!1026 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 174, column: 3)
!1027 = !DILocation(line: 174, column: 17, scope: !1025)
!1028 = !DILocation(line: 174, column: 3, scope: !1026)
!1029 = !DILocation(line: 175, column: 14, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 174, column: 41)
!1031 = !DILocation(line: 175, column: 10, scope: !1030)
!1032 = !DILocation(line: 176, column: 26, scope: !1030)
!1033 = !DILocation(line: 176, column: 33, scope: !1030)
!1034 = !DILocation(line: 176, column: 19, scope: !1030)
!1035 = !DILocation(line: 176, column: 9, scope: !1030)
!1036 = !DILocation(line: 176, column: 16, scope: !1030)
!1037 = !DILocation(line: 178, column: 25, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 178, column: 4)
!1039 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 178, column: 4)
!1040 = !DILocation(line: 178, column: 18, scope: !1038)
!1041 = !DILocation(line: 178, column: 4, scope: !1039)
!1042 = !DILocation(line: 179, column: 16, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 178, column: 40)
!1044 = !DILocation(line: 180, column: 25, scope: !1043)
!1045 = !DILocation(line: 180, column: 32, scope: !1043)
!1046 = !DILocation(line: 180, column: 19, scope: !1043)
!1047 = !DILocation(line: 180, column: 9, scope: !1043)
!1048 = !DILocation(line: 180, column: 16, scope: !1043)
!1049 = !DILocation(line: 178, column: 36, scope: !1038)
!1050 = distinct !{!1050, !1041, !1051}
!1051 = !DILocation(line: 182, column: 4, scope: !1039)
!1052 = !DILocation(line: 174, column: 37, scope: !1025)
!1053 = distinct !{!1053, !1028, !1054}
!1054 = !DILocation(line: 183, column: 3, scope: !1026)
!1055 = !DILocation(line: 172, column: 41, scope: !1019)
!1056 = distinct !{!1056, !1016, !1057}
!1057 = !DILocation(line: 184, column: 2, scope: !1015)
!1058 = !DILocation(line: 185, column: 1, scope: !1001)
!1059 = distinct !DISubprogram(name: "clear_attr", scope: !3, file: !3, line: 187, type: !1060, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1062)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !270, !25}
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068}
!1063 = !DILocalVariable(name: "mol", arg: 1, scope: !1059, file: !3, line: 187, type: !270)
!1064 = !DILocalVariable(name: "attr", arg: 2, scope: !1059, file: !3, line: 187, type: !25)
!1065 = !DILocalVariable(name: "a", scope: !1059, file: !3, line: 189, type: !25)
!1066 = !DILocalVariable(name: "r", scope: !1059, file: !3, line: 189, type: !25)
!1067 = !DILocalVariable(name: "sp", scope: !1059, file: !3, line: 190, type: !40)
!1068 = !DILocalVariable(name: "res", scope: !1059, file: !3, line: 191, type: !57)
!1069 = !DILocation(line: 0, scope: !1059)
!1070 = !DILocation(line: 193, column: 17, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 193, column: 2)
!1072 = !DILocation(line: 193, column: 2, scope: !1071)
!1073 = !DILocation(line: 194, column: 17, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 193, column: 49)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 193, column: 2)
!1076 = !DILocation(line: 194, column: 7, scope: !1074)
!1077 = !DILocation(line: 194, column: 14, scope: !1074)
!1078 = !DILocation(line: 195, column: 23, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 195, column: 3)
!1080 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 195, column: 3)
!1081 = !DILocation(line: 195, column: 17, scope: !1079)
!1082 = !DILocation(line: 195, column: 3, scope: !1080)
!1083 = !DILocation(line: 196, column: 14, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 195, column: 41)
!1085 = !DILocation(line: 196, column: 10, scope: !1084)
!1086 = !DILocation(line: 197, column: 19, scope: !1084)
!1087 = !DILocation(line: 197, column: 9, scope: !1084)
!1088 = !DILocation(line: 197, column: 16, scope: !1084)
!1089 = !DILocation(line: 198, column: 25, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 198, column: 4)
!1091 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 198, column: 4)
!1092 = !DILocation(line: 198, column: 18, scope: !1090)
!1093 = !DILocation(line: 198, column: 4, scope: !1091)
!1094 = !DILocation(line: 199, column: 33, scope: !1090)
!1095 = !DILocation(line: 199, column: 10, scope: !1090)
!1096 = !DILocation(line: 199, column: 23, scope: !1090)
!1097 = !DILocation(line: 199, column: 30, scope: !1090)
!1098 = !DILocation(line: 198, column: 36, scope: !1090)
!1099 = distinct !{!1099, !1093, !1100}
!1100 = !DILocation(line: 199, column: 34, scope: !1091)
!1101 = !DILocation(line: 195, column: 37, scope: !1079)
!1102 = distinct !{!1102, !1082, !1103}
!1103 = !DILocation(line: 200, column: 3, scope: !1080)
!1104 = !DILocation(line: 193, column: 41, scope: !1075)
!1105 = distinct !{!1105, !1072, !1106}
!1106 = !DILocation(line: 201, column: 2, scope: !1071)
!1107 = !DILocation(line: 202, column: 1, scope: !1059)
!1108 = distinct !DISubprogram(name: "is_pattern", scope: !3, file: !3, line: 357, type: !1109, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1112)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!25, !238, !1111, !1111}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1112 = !{!1113, !1114, !1115, !1116, !1117}
!1113 = !DILocalVariable(name: "item", arg: 1, scope: !1108, file: !3, line: 357, type: !238)
!1114 = !DILocalVariable(name: "lo", arg: 2, scope: !1108, file: !3, line: 357, type: !1111)
!1115 = !DILocalVariable(name: "hi", arg: 3, scope: !1108, file: !3, line: 357, type: !1111)
!1116 = !DILocalVariable(name: "val", scope: !1108, file: !3, line: 359, type: !25)
!1117 = !DILocalVariable(name: "ip", scope: !1108, file: !3, line: 360, type: !238)
!1118 = !DILocation(line: 0, scope: !1108)
!1119 = !DILocation(line: 362, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 362, column: 6)
!1121 = !{!1122, !1122, i64 0}
!1122 = !{!"short", !291, i64 0}
!1123 = !DILocation(line: 362, column: 24, scope: !1120)
!1124 = !DILocation(line: 362, column: 27, scope: !1120)
!1125 = !DILocation(line: 362, column: 33, scope: !1120)
!1126 = !DILocation(line: 362, column: 6, scope: !1108)
!1127 = !DILocation(line: 364, column: 6, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 364, column: 6)
!1129 = !DILocation(line: 364, column: 6, scope: !1108)
!1130 = !DILocation(line: 365, column: 28, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 365, column: 3)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 365, column: 3)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 364, column: 24)
!1134 = !DILocation(line: 365, column: 3, scope: !1132)
!1135 = !DILocation(line: 366, column: 13, scope: !1131)
!1136 = !DILocation(line: 366, column: 21, scope: !1131)
!1137 = !DILocation(line: 366, column: 19, scope: !1131)
!1138 = !DILocation(line: 366, column: 25, scope: !1131)
!1139 = !DILocation(line: 365, column: 46, scope: !1131)
!1140 = distinct !{!1140, !1134, !1141}
!1141 = !DILocation(line: 366, column: 27, scope: !1132)
!1142 = !DILocation(line: 0, scope: !1132)
!1143 = !DILocation(line: 367, column: 7, scope: !1133)
!1144 = !DILocation(line: 368, column: 8, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 368, column: 7)
!1146 = !DILocation(line: 368, column: 7, scope: !1133)
!1147 = !DILocation(line: 369, column: 10, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 368, column: 13)
!1149 = !DILocation(line: 369, column: 8, scope: !1148)
!1150 = !DILocation(line: 370, column: 4, scope: !1148)
!1151 = !DILocation(line: 371, column: 13, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 371, column: 13)
!1153 = !DILocation(line: 371, column: 17, scope: !1152)
!1154 = !DILocation(line: 371, column: 13, scope: !1145)
!1155 = !DILocation(line: 373, column: 8, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 373, column: 7)
!1157 = !DILocation(line: 373, column: 7, scope: !1133)
!1158 = !DILocation(line: 374, column: 8, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 373, column: 13)
!1160 = !DILocation(line: 375, column: 4, scope: !1159)
!1161 = !DILocation(line: 376, column: 14, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 376, column: 13)
!1163 = !DILocation(line: 376, column: 13, scope: !1156)
!1164 = !DILocation(line: 378, column: 17, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 378, column: 3)
!1166 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 378, column: 3)
!1167 = !DILocation(line: 378, column: 3, scope: !1166)
!1168 = !DILocation(line: 379, column: 13, scope: !1165)
!1169 = !DILocation(line: 379, column: 21, scope: !1165)
!1170 = !DILocation(line: 379, column: 19, scope: !1165)
!1171 = !DILocation(line: 379, column: 25, scope: !1165)
!1172 = !DILocation(line: 378, column: 35, scope: !1165)
!1173 = distinct !{!1173, !1167, !1174}
!1174 = !DILocation(line: 379, column: 27, scope: !1166)
!1175 = !DILocation(line: 0, scope: !1166)
!1176 = !DILocation(line: 0, scope: !1133)
!1177 = !DILocation(line: 380, column: 7, scope: !1133)
!1178 = !DILocation(line: 381, column: 11, scope: !1133)
!1179 = !DILocation(line: 381, column: 9, scope: !1133)
!1180 = !DILocation(line: 381, column: 3, scope: !1133)
!1181 = !DILocation(line: 383, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 382, column: 7)
!1183 = !DILocation(line: 384, column: 9, scope: !1182)
!1184 = !DILocation(line: 386, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 386, column: 6)
!1186 = !DILocation(line: 386, column: 6, scope: !1108)
!1187 = !DILocation(line: 387, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 386, column: 12)
!1189 = !DILocation(line: 388, column: 3, scope: !1188)
!1190 = !DILocation(line: 389, column: 12, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 389, column: 12)
!1192 = !DILocation(line: 389, column: 12, scope: !1185)
!1193 = !DILocation(line: 390, column: 17, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 390, column: 3)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 390, column: 3)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 389, column: 28)
!1197 = !DILocation(line: 390, column: 3, scope: !1195)
!1198 = !DILocation(line: 391, column: 13, scope: !1194)
!1199 = !DILocation(line: 391, column: 21, scope: !1194)
!1200 = !DILocation(line: 391, column: 19, scope: !1194)
!1201 = !DILocation(line: 391, column: 25, scope: !1194)
!1202 = !DILocation(line: 390, column: 35, scope: !1194)
!1203 = distinct !{!1203, !1197, !1204}
!1204 = !DILocation(line: 391, column: 27, scope: !1195)
!1205 = !DILocation(line: 0, scope: !1195)
!1206 = !DILocation(line: 392, column: 7, scope: !1196)
!1207 = !DILocation(line: 393, column: 11, scope: !1196)
!1208 = !DILocation(line: 393, column: 9, scope: !1196)
!1209 = !DILocation(line: 393, column: 3, scope: !1196)
!1210 = !DILocation(line: 396, column: 1, scope: !1108)
!1211 = distinct !DISubprogram(name: "match_str_pat", scope: !3, file: !3, line: 493, type: !1212, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1214)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !270, !238}
!1214 = !{!1215, !1216, !1217}
!1215 = !DILocalVariable(name: "mol", arg: 1, scope: !1211, file: !3, line: 493, type: !270)
!1216 = !DILocalVariable(name: "pat", arg: 2, scope: !1211, file: !3, line: 493, type: !238)
!1217 = !DILocalVariable(name: "sp", scope: !1211, file: !3, line: 495, type: !40)
!1218 = !DILocation(line: 0, scope: !1211)
!1219 = !DILocation(line: 497, column: 2, scope: !1211)
!1220 = !DILocation(line: 501, column: 2, scope: !1211)
!1221 = !DILocation(line: 503, column: 17, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 503, column: 2)
!1223 = !DILocation(line: 503, column: 2, scope: !1222)
!1224 = !DILocation(line: 507, column: 27, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 503, column: 49)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 503, column: 2)
!1227 = !{!301, !294, i64 0}
!1228 = !DILocation(line: 507, column: 17, scope: !1225)
!1229 = !DILocation(line: 507, column: 7, scope: !1225)
!1230 = !DILocation(line: 507, column: 14, scope: !1225)
!1231 = !DILocation(line: 503, column: 41, scope: !1226)
!1232 = distinct !{!1232, !1223, !1233}
!1233 = !DILocation(line: 509, column: 2, scope: !1222)
!1234 = !DILocation(line: 510, column: 1, scope: !1211)
!1235 = distinct !DISubprogram(name: "match_str_range", scope: !3, file: !3, line: 529, type: !1002, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241}
!1237 = !DILocalVariable(name: "mol", arg: 1, scope: !1235, file: !3, line: 529, type: !270)
!1238 = !DILocalVariable(name: "lo", arg: 2, scope: !1235, file: !3, line: 529, type: !25)
!1239 = !DILocalVariable(name: "hi", arg: 3, scope: !1235, file: !3, line: 529, type: !25)
!1240 = !DILocalVariable(name: "m", scope: !1235, file: !3, line: 531, type: !25)
!1241 = !DILocalVariable(name: "sp", scope: !1235, file: !3, line: 532, type: !40)
!1242 = !DILocation(line: 0, scope: !1235)
!1243 = !DILocation(line: 534, column: 9, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 534, column: 6)
!1245 = !DILocation(line: 534, column: 6, scope: !1235)
!1246 = !DILocation(line: 535, column: 13, scope: !1244)
!1247 = !{!290, !293, i64 96}
!1248 = !DILocation(line: 535, column: 3, scope: !1244)
!1249 = !DILocation(line: 536, column: 24, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 536, column: 2)
!1251 = !DILocation(line: 536, column: 45, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 536, column: 2)
!1253 = !DILocation(line: 536, column: 37, scope: !1252)
!1254 = !DILocation(line: 536, column: 2, scope: !1250)
!1255 = !DILocation(line: 0, scope: !1250)
!1256 = !DILocation(line: 538, column: 10, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 538, column: 7)
!1258 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 537, column: 25)
!1259 = !DILocation(line: 538, column: 15, scope: !1257)
!1260 = !DILocation(line: 539, column: 8, scope: !1257)
!1261 = !DILocation(line: 539, column: 15, scope: !1257)
!1262 = !DILocation(line: 539, column: 4, scope: !1257)
!1263 = !DILocation(line: 537, column: 4, scope: !1252)
!1264 = !DILocation(line: 537, column: 17, scope: !1252)
!1265 = distinct !{!1265, !1254, !1266}
!1266 = !DILocation(line: 540, column: 2, scope: !1250)
!1267 = !DILocation(line: 541, column: 1, scope: !1235)
!1268 = distinct !DISubprogram(name: "match_res_pat", scope: !3, file: !3, line: 565, type: !1212, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274}
!1270 = !DILocalVariable(name: "mol", arg: 1, scope: !1268, file: !3, line: 565, type: !270)
!1271 = !DILocalVariable(name: "pat", arg: 2, scope: !1268, file: !3, line: 565, type: !238)
!1272 = !DILocalVariable(name: "r", scope: !1268, file: !3, line: 567, type: !25)
!1273 = !DILocalVariable(name: "sp", scope: !1268, file: !3, line: 568, type: !40)
!1274 = !DILocalVariable(name: "res", scope: !1268, file: !3, line: 569, type: !57)
!1275 = !DILocation(line: 0, scope: !1268)
!1276 = !DILocation(line: 571, column: 2, scope: !1268)
!1277 = !DILocation(line: 575, column: 2, scope: !1268)
!1278 = !DILocation(line: 577, column: 17, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 577, column: 2)
!1280 = !DILocation(line: 577, column: 2, scope: !1279)
!1281 = !DILocation(line: 578, column: 23, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 578, column: 7)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 577, column: 49)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 577, column: 2)
!1285 = !DILocation(line: 578, column: 17, scope: !1282)
!1286 = !DILocation(line: 578, column: 7, scope: !1283)
!1287 = !DILocation(line: 579, column: 24, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 579, column: 4)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 579, column: 4)
!1290 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 578, column: 31)
!1291 = !DILocation(line: 579, column: 18, scope: !1288)
!1292 = !DILocation(line: 579, column: 4, scope: !1289)
!1293 = !DILocation(line: 580, column: 15, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 579, column: 42)
!1295 = !DILocation(line: 580, column: 11, scope: !1294)
!1296 = !DILocation(line: 585, column: 31, scope: !1294)
!1297 = !{!319, !294, i64 24}
!1298 = !DILocation(line: 585, column: 20, scope: !1294)
!1299 = !DILocation(line: 585, column: 10, scope: !1294)
!1300 = !DILocation(line: 585, column: 17, scope: !1294)
!1301 = !DILocation(line: 579, column: 38, scope: !1288)
!1302 = distinct !{!1302, !1292, !1303}
!1303 = !DILocation(line: 588, column: 4, scope: !1289)
!1304 = !DILocation(line: 577, column: 41, scope: !1284)
!1305 = distinct !{!1305, !1280, !1306}
!1306 = !DILocation(line: 590, column: 2, scope: !1279)
!1307 = !DILocation(line: 591, column: 1, scope: !1268)
!1308 = distinct !DISubprogram(name: "match_res_range", scope: !3, file: !3, line: 608, type: !1002, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1310 = !DILocalVariable(name: "mol", arg: 1, scope: !1308, file: !3, line: 608, type: !270)
!1311 = !DILocalVariable(name: "lo", arg: 2, scope: !1308, file: !3, line: 608, type: !25)
!1312 = !DILocalVariable(name: "hi", arg: 3, scope: !1308, file: !3, line: 608, type: !25)
!1313 = !DILocalVariable(name: "r", scope: !1308, file: !3, line: 610, type: !25)
!1314 = !DILocalVariable(name: "rhi", scope: !1308, file: !3, line: 610, type: !25)
!1315 = !DILocalVariable(name: "sp", scope: !1308, file: !3, line: 611, type: !40)
!1316 = !DILocalVariable(name: "res", scope: !1308, file: !3, line: 612, type: !57)
!1317 = !DILocation(line: 0, scope: !1308)
!1318 = !DILocation(line: 614, column: 17, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 614, column: 2)
!1320 = !DILocation(line: 614, column: 7, scope: !1319)
!1321 = !DILocation(line: 614, column: 2, scope: !1319)
!1322 = !DILocation(line: 615, column: 23, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 615, column: 7)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 614, column: 49)
!1325 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 614, column: 2)
!1326 = !DILocation(line: 615, column: 17, scope: !1323)
!1327 = !DILocation(line: 615, column: 7, scope: !1324)
!1328 = !DILocation(line: 616, column: 15, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 615, column: 31)
!1330 = !DILocation(line: 616, column: 10, scope: !1329)
!1331 = !DILocation(line: 616, column: 32, scope: !1329)
!1332 = !DILocation(line: 617, column: 9, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 617, column: 4)
!1334 = !DILocation(line: 617, column: 24, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 617, column: 4)
!1336 = !DILocation(line: 617, column: 18, scope: !1335)
!1337 = !DILocation(line: 617, column: 4, scope: !1333)
!1338 = !DILocation(line: 617, column: 38, scope: !1335)
!1339 = !DILocation(line: 619, column: 12, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 619, column: 9)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 617, column: 42)
!1342 = !DILocation(line: 619, column: 21, scope: !1340)
!1343 = !DILocation(line: 618, column: 15, scope: !1341)
!1344 = !DILocation(line: 618, column: 11, scope: !1341)
!1345 = !DILocation(line: 620, column: 11, scope: !1340)
!1346 = !DILocation(line: 620, column: 18, scope: !1340)
!1347 = !DILocation(line: 620, column: 6, scope: !1340)
!1348 = distinct !{!1348, !1337, !1349}
!1349 = !DILocation(line: 621, column: 4, scope: !1333)
!1350 = !DILocation(line: 614, column: 41, scope: !1325)
!1351 = distinct !{!1351, !1321, !1352}
!1352 = !DILocation(line: 623, column: 2, scope: !1319)
!1353 = !DILocation(line: 624, column: 1, scope: !1308)
!1354 = distinct !DISubprogram(name: "match_atom_pat", scope: !3, file: !3, line: 646, type: !1212, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1356 = !DILocalVariable(name: "mol", arg: 1, scope: !1354, file: !3, line: 646, type: !270)
!1357 = !DILocalVariable(name: "pat", arg: 2, scope: !1354, file: !3, line: 646, type: !238)
!1358 = !DILocalVariable(name: "r", scope: !1354, file: !3, line: 648, type: !25)
!1359 = !DILocalVariable(name: "a", scope: !1354, file: !3, line: 648, type: !25)
!1360 = !DILocalVariable(name: "sp", scope: !1354, file: !3, line: 649, type: !40)
!1361 = !DILocalVariable(name: "res", scope: !1354, file: !3, line: 650, type: !57)
!1362 = !DILocalVariable(name: "ap", scope: !1354, file: !3, line: 651, type: !103)
!1363 = !DILocation(line: 0, scope: !1354)
!1364 = !DILocation(line: 653, column: 2, scope: !1354)
!1365 = !DILocation(line: 657, column: 2, scope: !1354)
!1366 = !DILocation(line: 659, column: 17, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 659, column: 2)
!1368 = !DILocation(line: 659, column: 2, scope: !1367)
!1369 = !DILocation(line: 660, column: 23, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 660, column: 7)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 659, column: 49)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 659, column: 2)
!1373 = !DILocation(line: 660, column: 17, scope: !1370)
!1374 = !DILocation(line: 660, column: 7, scope: !1371)
!1375 = !DILocation(line: 661, column: 24, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 661, column: 4)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 661, column: 4)
!1378 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 660, column: 31)
!1379 = !DILocation(line: 661, column: 18, scope: !1376)
!1380 = !DILocation(line: 661, column: 4, scope: !1377)
!1381 = !DILocation(line: 662, column: 15, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 661, column: 42)
!1383 = !DILocation(line: 662, column: 11, scope: !1382)
!1384 = !DILocation(line: 663, column: 26, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 663, column: 9)
!1386 = !DILocation(line: 663, column: 19, scope: !1385)
!1387 = !DILocation(line: 663, column: 9, scope: !1382)
!1388 = !DILocation(line: 664, column: 27, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 664, column: 6)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 664, column: 6)
!1391 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 663, column: 34)
!1392 = !DILocation(line: 664, column: 20, scope: !1389)
!1393 = !DILocation(line: 664, column: 6, scope: !1390)
!1394 = !DILocation(line: 665, column: 18, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 664, column: 42)
!1396 = !DILocation(line: 672, column: 20, scope: !1395)
!1397 = !{!335, !294, i64 0}
!1398 = !DILocation(line: 672, column: 11, scope: !1395)
!1399 = !DILocation(line: 671, column: 11, scope: !1395)
!1400 = !DILocation(line: 671, column: 18, scope: !1395)
!1401 = !DILocation(line: 664, column: 38, scope: !1389)
!1402 = distinct !{!1402, !1393, !1403}
!1403 = !DILocation(line: 675, column: 6, scope: !1390)
!1404 = !DILocation(line: 661, column: 38, scope: !1376)
!1405 = distinct !{!1405, !1380, !1406}
!1406 = !DILocation(line: 677, column: 4, scope: !1377)
!1407 = !DILocation(line: 659, column: 41, scope: !1372)
!1408 = distinct !{!1408, !1368, !1409}
!1409 = !DILocation(line: 679, column: 2, scope: !1367)
!1410 = !DILocation(line: 680, column: 1, scope: !1354)
!1411 = distinct !DISubprogram(name: "aexpr2rexpr", scope: !3, file: !3, line: 695, type: !1412, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !238, !238}
!1414 = !{!1415, !1416, !1417, !1418}
!1415 = !DILocalVariable(name: "aexpr", arg: 1, scope: !1411, file: !3, line: 695, type: !238)
!1416 = !DILocalVariable(name: "rexpr", arg: 2, scope: !1411, file: !3, line: 695, type: !238)
!1417 = !DILocalVariable(name: "aep", scope: !1411, file: !3, line: 697, type: !238)
!1418 = !DILocalVariable(name: "rep", scope: !1411, file: !3, line: 697, type: !238)
!1419 = !DILocation(line: 0, scope: !1411)
!1420 = !DILocation(line: 700, column: 6, scope: !1411)
!1421 = !DILocation(line: 700, column: 9, scope: !1411)
!1422 = !DILocation(line: 701, column: 20, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 701, column: 2)
!1424 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 701, column: 2)
!1425 = !DILocation(line: 701, column: 2, scope: !1424)
!1426 = !DILocation(line: 702, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 702, column: 7)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 701, column: 33)
!1429 = !DILocation(line: 702, column: 12, scope: !1427)
!1430 = !DILocation(line: 702, column: 7, scope: !1428)
!1431 = !DILocation(line: 703, column: 8, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 702, column: 20)
!1433 = !DILocation(line: 703, column: 11, scope: !1432)
!1434 = !DILocation(line: 704, column: 8, scope: !1432)
!1435 = !DILocation(line: 704, column: 11, scope: !1432)
!1436 = !DILocation(line: 705, column: 3, scope: !1432)
!1437 = !DILocation(line: 705, column: 13, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 705, column: 13)
!1439 = !DILocation(line: 705, column: 18, scope: !1438)
!1440 = !DILocation(line: 705, column: 13, scope: !1427)
!1441 = !DILocation(line: 706, column: 8, scope: !1438)
!1442 = !DILocation(line: 706, column: 11, scope: !1438)
!1443 = !DILocation(line: 706, column: 4, scope: !1438)
!1444 = !DILocation(line: 708, column: 13, scope: !1438)
!1445 = !DILocation(line: 708, column: 8, scope: !1438)
!1446 = !DILocation(line: 708, column: 11, scope: !1438)
!1447 = !DILocation(line: 0, scope: !1427)
!1448 = !DILocation(line: 701, column: 29, scope: !1423)
!1449 = distinct !{!1449, !1425, !1450}
!1450 = !DILocation(line: 709, column: 2, scope: !1424)
!1451 = !DILocation(line: 710, column: 6, scope: !1411)
!1452 = !DILocation(line: 710, column: 9, scope: !1411)
!1453 = !DILocation(line: 711, column: 7, scope: !1411)
!1454 = !DILocation(line: 712, column: 1, scope: !1411)
!1455 = distinct !DISubprogram(name: "atom_in_str_pat", scope: !3, file: !3, line: 512, type: !801, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1456)
!1456 = !{!1457, !1458, !1459, !1460}
!1457 = !DILocalVariable(name: "ap", arg: 1, scope: !1455, file: !3, line: 512, type: !103)
!1458 = !DILocalVariable(name: "pat", arg: 2, scope: !1455, file: !3, line: 512, type: !238)
!1459 = !DILocalVariable(name: "res", scope: !1455, file: !3, line: 514, type: !57)
!1460 = !DILocalVariable(name: "sp", scope: !1455, file: !3, line: 515, type: !40)
!1461 = !DILocation(line: 0, scope: !1455)
!1462 = !DILocation(line: 517, column: 12, scope: !1455)
!1463 = !{!335, !294, i64 56}
!1464 = !DILocation(line: 518, column: 12, scope: !1455)
!1465 = !{!319, !294, i64 56}
!1466 = !DILocation(line: 519, column: 2, scope: !1455)
!1467 = !DILocation(line: 524, column: 2, scope: !1455)
!1468 = !DILocation(line: 525, column: 20, scope: !1455)
!1469 = !DILocation(line: 525, column: 10, scope: !1455)
!1470 = !DILocation(line: 525, column: 2, scope: !1455)
!1471 = distinct !DISubprogram(name: "atom_in_str_range", scope: !3, file: !3, line: 543, type: !1472, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1474)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!25, !103, !25, !25}
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1475 = !DILocalVariable(name: "ap", arg: 1, scope: !1471, file: !3, line: 543, type: !103)
!1476 = !DILocalVariable(name: "lo", arg: 2, scope: !1471, file: !3, line: 543, type: !25)
!1477 = !DILocalVariable(name: "hi", arg: 3, scope: !1471, file: !3, line: 543, type: !25)
!1478 = !DILocalVariable(name: "m", scope: !1471, file: !3, line: 545, type: !25)
!1479 = !DILocalVariable(name: "res", scope: !1471, file: !3, line: 546, type: !57)
!1480 = !DILocalVariable(name: "sp", scope: !1471, file: !3, line: 547, type: !40)
!1481 = !DILocalVariable(name: "sp1", scope: !1471, file: !3, line: 547, type: !40)
!1482 = !DILocalVariable(name: "mol", scope: !1471, file: !3, line: 548, type: !270)
!1483 = !DILocation(line: 0, scope: !1471)
!1484 = !DILocation(line: 550, column: 12, scope: !1471)
!1485 = !DILocation(line: 551, column: 12, scope: !1471)
!1486 = !DILocation(line: 552, column: 12, scope: !1471)
!1487 = !{!301, !294, i64 16}
!1488 = !DILocation(line: 553, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 553, column: 6)
!1490 = !DILocation(line: 553, column: 6, scope: !1471)
!1491 = !DILocation(line: 554, column: 13, scope: !1489)
!1492 = !DILocation(line: 554, column: 3, scope: !1489)
!1493 = !DILocation(line: 555, column: 25, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 555, column: 2)
!1495 = !DILocation(line: 555, column: 46, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 555, column: 2)
!1497 = !DILocation(line: 555, column: 38, scope: !1496)
!1498 = !DILocation(line: 555, column: 2, scope: !1494)
!1499 = !DILocation(line: 0, scope: !1494)
!1500 = !DILocation(line: 557, column: 10, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 557, column: 7)
!1502 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 556, column: 27)
!1503 = !DILocation(line: 557, column: 7, scope: !1502)
!1504 = !DILocation(line: 558, column: 11, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 558, column: 8)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 557, column: 18)
!1507 = !DILocation(line: 558, column: 16, scope: !1505)
!1508 = !DILocation(line: 556, column: 4, scope: !1496)
!1509 = !DILocation(line: 556, column: 19, scope: !1496)
!1510 = distinct !{!1510, !1498, !1511}
!1511 = !DILocation(line: 561, column: 2, scope: !1494)
!1512 = !DILocation(line: 563, column: 1, scope: !1471)
!1513 = distinct !DISubprogram(name: "atom_in_res_pat", scope: !3, file: !3, line: 593, type: !801, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1514)
!1514 = !{!1515, !1516, !1517}
!1515 = !DILocalVariable(name: "ap", arg: 1, scope: !1513, file: !3, line: 593, type: !103)
!1516 = !DILocalVariable(name: "pat", arg: 2, scope: !1513, file: !3, line: 593, type: !238)
!1517 = !DILocalVariable(name: "res", scope: !1513, file: !3, line: 595, type: !57)
!1518 = !DILocation(line: 0, scope: !1513)
!1519 = !DILocation(line: 597, column: 12, scope: !1513)
!1520 = !DILocation(line: 598, column: 2, scope: !1513)
!1521 = !DILocation(line: 603, column: 2, scope: !1513)
!1522 = !DILocation(line: 604, column: 21, scope: !1513)
!1523 = !DILocation(line: 604, column: 10, scope: !1513)
!1524 = !DILocation(line: 604, column: 2, scope: !1513)
!1525 = distinct !DISubprogram(name: "atom_in_res_range", scope: !3, file: !3, line: 626, type: !1472, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1527 = !DILocalVariable(name: "ap", arg: 1, scope: !1525, file: !3, line: 626, type: !103)
!1528 = !DILocalVariable(name: "lo", arg: 2, scope: !1525, file: !3, line: 626, type: !25)
!1529 = !DILocalVariable(name: "hi", arg: 3, scope: !1525, file: !3, line: 626, type: !25)
!1530 = !DILocalVariable(name: "r", scope: !1525, file: !3, line: 628, type: !25)
!1531 = !DILocalVariable(name: "rhi", scope: !1525, file: !3, line: 628, type: !25)
!1532 = !DILocalVariable(name: "sp", scope: !1525, file: !3, line: 629, type: !40)
!1533 = !DILocalVariable(name: "res", scope: !1525, file: !3, line: 630, type: !57)
!1534 = !DILocalVariable(name: "res1", scope: !1525, file: !3, line: 630, type: !57)
!1535 = !DILocation(line: 0, scope: !1525)
!1536 = !DILocation(line: 632, column: 12, scope: !1525)
!1537 = !DILocation(line: 633, column: 12, scope: !1525)
!1538 = !DILocation(line: 635, column: 13, scope: !1525)
!1539 = !DILocation(line: 635, column: 8, scope: !1525)
!1540 = !DILocation(line: 635, column: 30, scope: !1525)
!1541 = !DILocation(line: 636, column: 7, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 636, column: 2)
!1543 = !DILocation(line: 636, column: 22, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 636, column: 2)
!1545 = !DILocation(line: 636, column: 16, scope: !1544)
!1546 = !DILocation(line: 636, column: 2, scope: !1542)
!1547 = !DILocation(line: 637, column: 14, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 636, column: 40)
!1549 = !DILocation(line: 637, column: 10, scope: !1548)
!1550 = !DILocation(line: 638, column: 11, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 638, column: 7)
!1552 = !DILocation(line: 638, column: 7, scope: !1548)
!1553 = !DILocation(line: 639, column: 16, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 639, column: 8)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 638, column: 20)
!1556 = !DILocation(line: 639, column: 11, scope: !1554)
!1557 = !DILocation(line: 639, column: 20, scope: !1554)
!1558 = !DILocation(line: 636, column: 36, scope: !1544)
!1559 = distinct !{!1559, !1546, !1560}
!1560 = !DILocation(line: 642, column: 2, scope: !1542)
!1561 = !DILocation(line: 644, column: 1, scope: !1525)
!1562 = distinct !DISubprogram(name: "atom_in_atom_pat", scope: !3, file: !3, line: 682, type: !801, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1563)
!1563 = !{!1564, !1565}
!1564 = !DILocalVariable(name: "ap", arg: 1, scope: !1562, file: !3, line: 682, type: !103)
!1565 = !DILocalVariable(name: "pat", arg: 2, scope: !1562, file: !3, line: 682, type: !238)
!1566 = !DILocation(line: 0, scope: !1562)
!1567 = !DILocation(line: 685, column: 2, scope: !1562)
!1568 = !DILocation(line: 690, column: 2, scope: !1562)
!1569 = !DILocation(line: 691, column: 20, scope: !1562)
!1570 = !DILocation(line: 691, column: 10, scope: !1562)
!1571 = !DILocation(line: 691, column: 2, scope: !1562)
