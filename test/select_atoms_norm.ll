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
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !287
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !287, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !285
  %7 = icmp ne %struct.strand_t* %6, null, !dbg !295
  br i1 %7, label %.lr.ph51, label %71, !dbg !295

.lr.ph51:                                         ; preds = %3
  br label %8, !dbg !295

8:                                                ; preds = %.lr.ph51, %67
  %.0149 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %.5, %67 ]
  %.0248 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %.57, %67 ]
  %.01047 = phi i32 [ 0, %.lr.ph51 ], [ %.515, %67 ]
  %.01646 = phi %struct.strand_t* [ %6, %.lr.ph51 ], [ %69, %67 ]
  %.01745 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %.522, %67 ]
  call void @llvm.dbg.value(metadata double %.0149, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.0248, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.01047, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01646, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.01745, metadata !282, metadata !DIExpression()), !dbg !285
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01646, i32 0, i32 2, !dbg !296
  %10 = load i32, i32* %9, align 4, !dbg !296, !tbaa !300
  %11 = and i32 1, %10, !dbg !302
  %12 = icmp ne i32 %11, 0, !dbg !302
  br i1 %12, label %13, label %66, !dbg !303

13:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 0, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.0149, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.0248, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 0, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.01047, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.01745, metadata !282, metadata !DIExpression()), !dbg !285
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01646, i32 0, i32 5, !dbg !304
  %15 = load i32, i32* %14, align 8, !dbg !304, !tbaa !308
  %16 = sext i32 %15 to i64, !dbg !309
  %17 = icmp slt i64 0, %16, !dbg !309
  br i1 %17, label %.lr.ph39, label %65, !dbg !310

.lr.ph39:                                         ; preds = %13
  br label %18, !dbg !310

18:                                               ; preds = %.lr.ph39, %61
  %.137 = phi double [ %.0149, %.lr.ph39 ], [ %.4, %61 ]
  %.1336 = phi double [ %.0248, %.lr.ph39 ], [ %.46, %61 ]
  %.11135 = phi i32 [ %.01047, %.lr.ph39 ], [ %.414, %61 ]
  %.11834 = phi double [ %.01745, %.lr.ph39 ], [ %.421, %61 ]
  %indvars.iv2333 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next24, %61 ]
  call void @llvm.dbg.value(metadata double %.137, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.1336, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.11135, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.11834, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %indvars.iv2333, metadata !276, metadata !DIExpression()), !dbg !285
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01646, i32 0, i32 7, !dbg !311
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !311, !tbaa !313
  %21 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %indvars.iv2333, !dbg !314
  %22 = load %struct.residue_t*, %struct.residue_t** %21, align 8, !dbg !314, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %22, metadata !280, metadata !DIExpression()), !dbg !285
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 6, !dbg !316
  %24 = load i32, i32* %23, align 8, !dbg !316, !tbaa !318
  %25 = and i32 1, %24, !dbg !320
  %26 = icmp ne i32 %25, 0, !dbg !320
  br i1 %26, label %27, label %60, !dbg !321

27:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 0, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.137, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.1336, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 0, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.11135, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.11834, metadata !282, metadata !DIExpression()), !dbg !285
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 15, !dbg !322
  %29 = load i32, i32* %28, align 8, !dbg !322, !tbaa !326
  %30 = sext i32 %29 to i64, !dbg !327
  %31 = icmp slt i64 0, %30, !dbg !327
  br i1 %31, label %.lr.ph, label %59, !dbg !328

.lr.ph:                                           ; preds = %27
  br label %32, !dbg !328

32:                                               ; preds = %.lr.ph, %55
  %.229 = phi double [ %.137, %.lr.ph ], [ %.3, %55 ]
  %.2428 = phi double [ %.1336, %.lr.ph ], [ %.35, %55 ]
  %.21227 = phi i32 [ %.11135, %.lr.ph ], [ %.313, %55 ]
  %.21926 = phi double [ %.11834, %.lr.ph ], [ %.320, %55 ]
  %indvars.iv25 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %55 ]
  call void @llvm.dbg.value(metadata double %.229, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.2428, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.21227, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.21926, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !277, metadata !DIExpression()), !dbg !285
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 17, !dbg !329
  %34 = load %struct.atom_t*, %struct.atom_t** %33, align 8, !dbg !329, !tbaa !331
  %35 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv25, !dbg !332
  call void @llvm.dbg.value(metadata %struct.atom_t* %35, metadata !281, metadata !DIExpression()), !dbg !285
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i32 0, i32 2, !dbg !333
  %37 = load i32, i32* %36, align 8, !dbg !333, !tbaa !335
  %38 = and i32 1, %37, !dbg !338
  %39 = icmp ne i32 %38, 0, !dbg !338
  br i1 %39, label %40, label %54, !dbg !339

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i32 0, i32 17, !dbg !340
  %42 = getelementptr inbounds [3 x double], [3 x double]* %41, i64 0, i64 0, !dbg !342
  %43 = load double, double* %42, align 8, !dbg !342, !tbaa !343
  %44 = fadd double %.21926, %43, !dbg !344
  call void @llvm.dbg.value(metadata double %44, metadata !282, metadata !DIExpression()), !dbg !285
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i32 0, i32 17, !dbg !345
  %46 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 0, i64 1, !dbg !346
  %47 = load double, double* %46, align 8, !dbg !346, !tbaa !343
  %48 = fadd double %.2428, %47, !dbg !347
  call void @llvm.dbg.value(metadata double %48, metadata !283, metadata !DIExpression()), !dbg !285
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i32 0, i32 17, !dbg !348
  %50 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 0, i64 2, !dbg !349
  %51 = load double, double* %50, align 8, !dbg !349, !tbaa !343
  %52 = fadd double %.229, %51, !dbg !350
  call void @llvm.dbg.value(metadata double %52, metadata !284, metadata !DIExpression()), !dbg !285
  %53 = add nsw i32 %.21227, 1, !dbg !351
  call void @llvm.dbg.value(metadata i32 %53, metadata !278, metadata !DIExpression()), !dbg !285
  br label %54, !dbg !352

54:                                               ; preds = %40, %32
  %.320 = phi double [ %44, %40 ], [ %.21926, %32 ], !dbg !285
  %.313 = phi i32 [ %53, %40 ], [ %.21227, %32 ], !dbg !353
  %.35 = phi double [ %48, %40 ], [ %.2428, %32 ], !dbg !285
  %.3 = phi double [ %52, %40 ], [ %.229, %32 ], !dbg !285
  call void @llvm.dbg.value(metadata double %.3, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.35, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.313, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.320, metadata !282, metadata !DIExpression()), !dbg !285
  br label %55, !dbg !354

55:                                               ; preds = %54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv25, 1, !dbg !355
  call void @llvm.dbg.value(metadata double %.3, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.35, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.313, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.320, metadata !282, metadata !DIExpression()), !dbg !285
  %56 = load i32, i32* %28, align 8, !dbg !322, !tbaa !326
  %57 = sext i32 %56 to i64, !dbg !327
  %58 = icmp slt i64 %indvars.iv.next, %57, !dbg !327
  br i1 %58, label %32, label %._crit_edge, !dbg !328, !llvm.loop !356

._crit_edge:                                      ; preds = %55
  %split = phi double [ %.320, %55 ]
  %split30 = phi i32 [ %.313, %55 ]
  %split31 = phi double [ %.35, %55 ]
  %split32 = phi double [ %.3, %55 ]
  br label %59, !dbg !328

59:                                               ; preds = %._crit_edge, %27
  %.219.lcssa = phi double [ %split, %._crit_edge ], [ %.11834, %27 ], !dbg !285
  %.212.lcssa = phi i32 [ %split30, %._crit_edge ], [ %.11135, %27 ], !dbg !353
  %.24.lcssa = phi double [ %split31, %._crit_edge ], [ %.1336, %27 ], !dbg !285
  %.2.lcssa = phi double [ %split32, %._crit_edge ], [ %.137, %27 ], !dbg !285
  call void @llvm.dbg.value(metadata double %.219.lcssa, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.212.lcssa, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.24.lcssa, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.2.lcssa, metadata !284, metadata !DIExpression()), !dbg !285
  br label %60, !dbg !358

60:                                               ; preds = %59, %18
  %.421 = phi double [ %.219.lcssa, %59 ], [ %.11834, %18 ], !dbg !359
  %.414 = phi i32 [ %.212.lcssa, %59 ], [ %.11135, %18 ], !dbg !360
  %.46 = phi double [ %.24.lcssa, %59 ], [ %.1336, %18 ], !dbg !361
  %.4 = phi double [ %.2.lcssa, %59 ], [ %.137, %18 ], !dbg !362
  call void @llvm.dbg.value(metadata double %.4, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.46, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.414, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.421, metadata !282, metadata !DIExpression()), !dbg !285
  br label %61, !dbg !363

61:                                               ; preds = %60
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv2333, 1, !dbg !364
  call void @llvm.dbg.value(metadata double %.4, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.46, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next24, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.414, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.421, metadata !282, metadata !DIExpression()), !dbg !285
  %62 = load i32, i32* %14, align 8, !dbg !304, !tbaa !308
  %63 = sext i32 %62 to i64, !dbg !309
  %64 = icmp slt i64 %indvars.iv.next24, %63, !dbg !309
  br i1 %64, label %18, label %._crit_edge40, !dbg !310, !llvm.loop !365

._crit_edge40:                                    ; preds = %61
  %split41 = phi double [ %.421, %61 ]
  %split42 = phi i32 [ %.414, %61 ]
  %split43 = phi double [ %.46, %61 ]
  %split44 = phi double [ %.4, %61 ]
  br label %65, !dbg !310

65:                                               ; preds = %._crit_edge40, %13
  %.118.lcssa = phi double [ %split41, %._crit_edge40 ], [ %.01745, %13 ], !dbg !359
  %.111.lcssa = phi i32 [ %split42, %._crit_edge40 ], [ %.01047, %13 ], !dbg !360
  %.13.lcssa = phi double [ %split43, %._crit_edge40 ], [ %.0248, %13 ], !dbg !361
  %.1.lcssa = phi double [ %split44, %._crit_edge40 ], [ %.0149, %13 ], !dbg !362
  call void @llvm.dbg.value(metadata double %.118.lcssa, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.111.lcssa, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.13.lcssa, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.1.lcssa, metadata !284, metadata !DIExpression()), !dbg !285
  br label %66, !dbg !367

66:                                               ; preds = %65, %8
  %.522 = phi double [ %.118.lcssa, %65 ], [ %.01745, %8 ], !dbg !359
  %.515 = phi i32 [ %.111.lcssa, %65 ], [ %.01047, %8 ], !dbg !360
  %.57 = phi double [ %.13.lcssa, %65 ], [ %.0248, %8 ], !dbg !361
  %.5 = phi double [ %.1.lcssa, %65 ], [ %.0149, %8 ], !dbg !362
  call void @llvm.dbg.value(metadata double %.5, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.57, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.515, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.522, metadata !282, metadata !DIExpression()), !dbg !285
  br label %67, !dbg !368

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01646, i32 0, i32 4, !dbg !369
  %69 = load %struct.strand_t*, %struct.strand_t** %68, align 8, !dbg !369, !tbaa !370
  call void @llvm.dbg.value(metadata double %.5, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.57, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.515, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata %struct.strand_t* %69, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.522, metadata !282, metadata !DIExpression()), !dbg !285
  %70 = icmp ne %struct.strand_t* %69, null, !dbg !295
  br i1 %70, label %8, label %._crit_edge52, !dbg !295, !llvm.loop !371

._crit_edge52:                                    ; preds = %67
  %split53 = phi double [ %.522, %67 ]
  %split54 = phi i32 [ %.515, %67 ]
  %split55 = phi double [ %.57, %67 ]
  %split56 = phi double [ %.5, %67 ]
  br label %71, !dbg !295

71:                                               ; preds = %._crit_edge52, %3
  %.017.lcssa = phi double [ %split53, %._crit_edge52 ], [ 0.000000e+00, %3 ], !dbg !359
  %.010.lcssa = phi i32 [ %split54, %._crit_edge52 ], [ 0, %3 ], !dbg !360
  %.02.lcssa = phi double [ %split55, %._crit_edge52 ], [ 0.000000e+00, %3 ], !dbg !361
  %.01.lcssa = phi double [ %split56, %._crit_edge52 ], [ 0.000000e+00, %3 ], !dbg !362
  call void @llvm.dbg.value(metadata double %.017.lcssa, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %.010.lcssa, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.02.lcssa, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %.01.lcssa, metadata !284, metadata !DIExpression()), !dbg !285
  %72 = icmp eq i32 %.010.lcssa, 0, !dbg !373
  br i1 %72, label %73, label %76, !dbg !375

73:                                               ; preds = %71
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !376, !tbaa !315
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %1), !dbg !378
  br label %87, !dbg !379

76:                                               ; preds = %71
  %77 = sitofp i32 %.010.lcssa to double, !dbg !380
  %78 = fdiv double %.017.lcssa, %77, !dbg !382
  %79 = getelementptr inbounds double, double* %2, i64 0, !dbg !383
  store double %78, double* %79, align 8, !dbg !384, !tbaa !343
  %80 = sitofp i32 %.010.lcssa to double, !dbg !385
  %81 = fdiv double %.02.lcssa, %80, !dbg !386
  %82 = getelementptr inbounds double, double* %2, i64 1, !dbg !387
  store double %81, double* %82, align 8, !dbg !388, !tbaa !343
  %83 = sitofp i32 %.010.lcssa to double, !dbg !389
  %84 = fdiv double %.01.lcssa, %83, !dbg !390
  %85 = getelementptr inbounds double, double* %2, i64 2, !dbg !391
  store double %84, double* %85, align 8, !dbg !392, !tbaa !343
  br label %86

86:                                               ; preds = %76
  br label %87, !dbg !393

87:                                               ; preds = %86, %73
  %.0 = phi i32 [ 1, %73 ], [ 0, %86 ], !dbg !285
  ret i32 %.0, !dbg !394
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #0 !dbg !395 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !399, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8* %1, metadata !400, metadata !DIExpression()), !dbg !404
  %3 = icmp eq i8* %1, null, !dbg !405
  br i1 %3, label %4, label %5, !dbg !407

4:                                                ; preds = %2
  call void @select_all(%struct.molecule_t* %0), !dbg !408
  br label %36, !dbg !410

5:                                                ; preds = %2
  call void @clear_work(%struct.molecule_t* %0), !dbg !411
  call void @clear_select(%struct.molecule_t* %0), !dbg !412
  call void @llvm.dbg.value(metadata i8* %1, metadata !401, metadata !DIExpression()), !dbg !404
  %6 = call i8* @strchr(i8* %1, i32 124) #7, !dbg !413
  call void @llvm.dbg.value(metadata i8* %6, metadata !402, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8* %1, metadata !401, metadata !DIExpression()), !dbg !404
  %7 = icmp ne i8* %1, null, !dbg !415
  br i1 %7, label %.lr.ph, label %35, !dbg !415

.lr.ph:                                           ; preds = %5
  br label %8, !dbg !415

8:                                                ; preds = %.lr.ph, %33
  %.025 = phi i8* [ %1, %.lr.ph ], [ %.1, %33 ]
  %.034 = phi i8* [ %6, %.lr.ph ], [ %.2, %33 ]
  call void @llvm.dbg.value(metadata i8* %.025, metadata !401, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8* %.034, metadata !402, metadata !DIExpression()), !dbg !404
  %9 = icmp ne i8* %.034, null, !dbg !416
  br i1 %9, label %10, label %16, !dbg !420

10:                                               ; preds = %8
  %11 = ptrtoint i8* %.034 to i64, !dbg !421
  %12 = ptrtoint i8* %.025 to i64, !dbg !421
  %13 = sub i64 %11, %12, !dbg !421
  %14 = trunc i64 %13 to i32, !dbg !423
  call void @llvm.dbg.value(metadata i32 %14, metadata !403, metadata !DIExpression()), !dbg !404
  %15 = getelementptr inbounds i8, i8* %.034, i32 1, !dbg !424
  call void @llvm.dbg.value(metadata i8* %15, metadata !402, metadata !DIExpression()), !dbg !404
  br label %19, !dbg !425

16:                                               ; preds = %8
  %17 = call i64 @strlen(i8* %.025) #7, !dbg !426
  %18 = trunc i64 %17 to i32, !dbg !426
  call void @llvm.dbg.value(metadata i32 %18, metadata !403, metadata !DIExpression()), !dbg !404
  br label %19

19:                                               ; preds = %16, %10
  %.026 = phi i8* [ %.025, %10 ], [ %.025, %16 ]
  %.1 = phi i8* [ %15, %10 ], [ %.034, %16 ], !dbg !427
  %.01 = phi i32 [ %14, %10 ], [ %18, %16 ], !dbg !428
  call void @llvm.dbg.value(metadata i32 %.01, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8* %.1, metadata !402, metadata !DIExpression()), !dbg !404
  %20 = icmp sge i32 %.01, 1000, !dbg !429
  br i1 %20, label %21, label %24, !dbg !431

21:                                               ; preds = %19
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !432, !tbaa !315
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)), !dbg !434
  br label %36, !dbg !435

24:                                               ; preds = %19
  %25 = sext i32 %.01 to i64, !dbg !436
  %26 = call i8* @strncpy(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* %.026, i64 %25) #8, !dbg !437
  %27 = sext i32 %.01 to i64, !dbg !438
  %28 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %27, !dbg !438
  store i8 0, i8* %28, align 1, !dbg !439, !tbaa !440
  %29 = call i32 @eval_1_aexpr(%struct.molecule_t* %0, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0)), !dbg !441
  call void @or_select(%struct.molecule_t* %0), !dbg !442
  call void @llvm.dbg.value(metadata i8* %.1, metadata !401, metadata !DIExpression()), !dbg !404
  %30 = icmp ne i8* %.1, null, !dbg !443
  br i1 %30, label %31, label %33, !dbg !445

31:                                               ; preds = %24
  %32 = call i8* @strchr(i8* %.1, i32 124) #7, !dbg !446
  call void @llvm.dbg.value(metadata i8* %32, metadata !402, metadata !DIExpression()), !dbg !404
  br label %33, !dbg !447

33:                                               ; preds = %31, %24
  %.2 = phi i8* [ %32, %31 ], [ %.1, %24 ], !dbg !448
  call void @llvm.dbg.value(metadata i8* %.2, metadata !402, metadata !DIExpression()), !dbg !404
  call void @clear_select(%struct.molecule_t* %0), !dbg !449
  call void @llvm.dbg.value(metadata i8* %.1, metadata !401, metadata !DIExpression()), !dbg !404
  %34 = icmp ne i8* %.1, null, !dbg !415
  br i1 %34, label %8, label %._crit_edge, !dbg !415, !llvm.loop !450

._crit_edge:                                      ; preds = %33
  br label %35, !dbg !415

35:                                               ; preds = %._crit_edge, %5
  call void @set_select(%struct.molecule_t* %0), !dbg !452
  br label %36, !dbg !453

36:                                               ; preds = %35, %21, %4
  %.0 = phi i32 [ 0, %4 ], [ 1, %21 ], [ 0, %35 ], !dbg !404
  ret i32 %.0, !dbg !454
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @select_all(%struct.molecule_t* %0) #0 !dbg !455 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !459, metadata !DIExpression()), !dbg !464
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !465
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !465, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !462, metadata !DIExpression()), !dbg !464
  %4 = icmp ne %struct.strand_t* %3, null, !dbg !467
  br i1 %4, label %.lr.ph12, label %46, !dbg !467

.lr.ph12:                                         ; preds = %1
  br label %5, !dbg !467

5:                                                ; preds = %.lr.ph12, %42
  %.010 = phi %struct.strand_t* [ %3, %.lr.ph12 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.010, metadata !462, metadata !DIExpression()), !dbg !464
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !468
  %7 = load i32, i32* %6, align 4, !dbg !471, !tbaa !300
  %8 = or i32 %7, 1, !dbg !471
  store i32 %8, i32* %6, align 4, !dbg !471, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !461, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i64 0, metadata !461, metadata !DIExpression()), !dbg !464
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5, !dbg !472
  %10 = load i32, i32* %9, align 8, !dbg !472, !tbaa !308
  %11 = sext i32 %10 to i64, !dbg !475
  %12 = icmp slt i64 0, %11, !dbg !475
  br i1 %12, label %.lr.ph8, label %41, !dbg !476

.lr.ph8:                                          ; preds = %5
  br label %13, !dbg !476

13:                                               ; preds = %.lr.ph8, %37
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %37 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !461, metadata !DIExpression()), !dbg !464
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7, !dbg !477
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8, !dbg !477, !tbaa !313
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv36, !dbg !479
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8, !dbg !479, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %17, metadata !463, metadata !DIExpression()), !dbg !464
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 6, !dbg !480
  %19 = load i32, i32* %18, align 8, !dbg !481, !tbaa !318
  %20 = or i32 %19, 1, !dbg !481
  store i32 %20, i32* %18, align 8, !dbg !481, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !460, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i64 0, metadata !460, metadata !DIExpression()), !dbg !464
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 15, !dbg !482
  %22 = load i32, i32* %21, align 8, !dbg !482, !tbaa !326
  %23 = sext i32 %22 to i64, !dbg !485
  %24 = icmp slt i64 0, %23, !dbg !485
  br i1 %24, label %.lr.ph, label %36, !dbg !486

.lr.ph:                                           ; preds = %13
  br label %25, !dbg !486

25:                                               ; preds = %.lr.ph, %32
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !460, metadata !DIExpression()), !dbg !464
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 17, !dbg !487
  %27 = load %struct.atom_t*, %struct.atom_t** %26, align 8, !dbg !487, !tbaa !331
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv5, !dbg !488
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i32 0, i32 2, !dbg !489
  %30 = load i32, i32* %29, align 8, !dbg !490, !tbaa !335
  %31 = or i32 %30, 1, !dbg !490
  store i32 %31, i32* %29, align 8, !dbg !490, !tbaa !335
  br label %32, !dbg !488

32:                                               ; preds = %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !491
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !460, metadata !DIExpression()), !dbg !464
  %33 = load i32, i32* %21, align 8, !dbg !482, !tbaa !326
  %34 = sext i32 %33 to i64, !dbg !485
  %35 = icmp slt i64 %indvars.iv.next, %34, !dbg !485
  br i1 %35, label %25, label %._crit_edge, !dbg !486, !llvm.loop !492

._crit_edge:                                      ; preds = %32
  br label %36, !dbg !486

36:                                               ; preds = %._crit_edge, %13
  br label %37, !dbg !494

37:                                               ; preds = %36
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1, !dbg !495
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !461, metadata !DIExpression()), !dbg !464
  %38 = load i32, i32* %9, align 8, !dbg !472, !tbaa !308
  %39 = sext i32 %38 to i64, !dbg !475
  %40 = icmp slt i64 %indvars.iv.next4, %39, !dbg !475
  br i1 %40, label %13, label %._crit_edge9, !dbg !476, !llvm.loop !496

._crit_edge9:                                     ; preds = %37
  br label %41, !dbg !476

41:                                               ; preds = %._crit_edge9, %5
  br label %42, !dbg !498

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4, !dbg !499
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8, !dbg !499, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %44, metadata !462, metadata !DIExpression()), !dbg !464
  %45 = icmp ne %struct.strand_t* %44, null, !dbg !467
  br i1 %45, label %5, label %._crit_edge13, !dbg !467, !llvm.loop !500

._crit_edge13:                                    ; preds = %42
  br label %46, !dbg !467

46:                                               ; preds = %._crit_edge13, %1
  ret void, !dbg !502
}

; Function Attrs: nounwind uwtable
define internal void @clear_work(%struct.molecule_t* %0) #0 !dbg !503 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !505, metadata !DIExpression()), !dbg !510
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !511
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !511, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !508, metadata !DIExpression()), !dbg !510
  %4 = icmp ne %struct.strand_t* %3, null, !dbg !513
  br i1 %4, label %.lr.ph12, label %46, !dbg !513

.lr.ph12:                                         ; preds = %1
  br label %5, !dbg !513

5:                                                ; preds = %.lr.ph12, %42
  %.010 = phi %struct.strand_t* [ %3, %.lr.ph12 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.010, metadata !508, metadata !DIExpression()), !dbg !510
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !514
  %7 = load i32, i32* %6, align 4, !dbg !517, !tbaa !300
  %8 = and i32 %7, -129, !dbg !517
  store i32 %8, i32* %6, align 4, !dbg !517, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !507, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i64 0, metadata !507, metadata !DIExpression()), !dbg !510
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5, !dbg !518
  %10 = load i32, i32* %9, align 8, !dbg !518, !tbaa !308
  %11 = sext i32 %10 to i64, !dbg !521
  %12 = icmp slt i64 0, %11, !dbg !521
  br i1 %12, label %.lr.ph8, label %41, !dbg !522

.lr.ph8:                                          ; preds = %5
  br label %13, !dbg !522

13:                                               ; preds = %.lr.ph8, %37
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %37 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !507, metadata !DIExpression()), !dbg !510
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7, !dbg !523
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8, !dbg !523, !tbaa !313
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv36, !dbg !525
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8, !dbg !525, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %17, metadata !509, metadata !DIExpression()), !dbg !510
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 6, !dbg !526
  %19 = load i32, i32* %18, align 8, !dbg !527, !tbaa !318
  %20 = and i32 %19, -129, !dbg !527
  store i32 %20, i32* %18, align 8, !dbg !527, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i64 0, metadata !506, metadata !DIExpression()), !dbg !510
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 15, !dbg !528
  %22 = load i32, i32* %21, align 8, !dbg !528, !tbaa !326
  %23 = sext i32 %22 to i64, !dbg !531
  %24 = icmp slt i64 0, %23, !dbg !531
  br i1 %24, label %.lr.ph, label %36, !dbg !532

.lr.ph:                                           ; preds = %13
  br label %25, !dbg !532

25:                                               ; preds = %.lr.ph, %32
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !506, metadata !DIExpression()), !dbg !510
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 17, !dbg !533
  %27 = load %struct.atom_t*, %struct.atom_t** %26, align 8, !dbg !533, !tbaa !331
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv5, !dbg !534
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i32 0, i32 2, !dbg !535
  %30 = load i32, i32* %29, align 8, !dbg !536, !tbaa !335
  %31 = and i32 %30, -129, !dbg !536
  store i32 %31, i32* %29, align 8, !dbg !536, !tbaa !335
  br label %32, !dbg !534

32:                                               ; preds = %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !537
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !506, metadata !DIExpression()), !dbg !510
  %33 = load i32, i32* %21, align 8, !dbg !528, !tbaa !326
  %34 = sext i32 %33 to i64, !dbg !531
  %35 = icmp slt i64 %indvars.iv.next, %34, !dbg !531
  br i1 %35, label %25, label %._crit_edge, !dbg !532, !llvm.loop !538

._crit_edge:                                      ; preds = %32
  br label %36, !dbg !532

36:                                               ; preds = %._crit_edge, %13
  br label %37, !dbg !540

37:                                               ; preds = %36
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1, !dbg !541
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !507, metadata !DIExpression()), !dbg !510
  %38 = load i32, i32* %9, align 8, !dbg !518, !tbaa !308
  %39 = sext i32 %38 to i64, !dbg !521
  %40 = icmp slt i64 %indvars.iv.next4, %39, !dbg !521
  br i1 %40, label %13, label %._crit_edge9, !dbg !522, !llvm.loop !542

._crit_edge9:                                     ; preds = %37
  br label %41, !dbg !522

41:                                               ; preds = %._crit_edge9, %5
  br label %42, !dbg !544

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4, !dbg !545
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8, !dbg !545, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %44, metadata !508, metadata !DIExpression()), !dbg !510
  %45 = icmp ne %struct.strand_t* %44, null, !dbg !513
  br i1 %45, label %5, label %._crit_edge13, !dbg !513, !llvm.loop !546

._crit_edge13:                                    ; preds = %42
  br label %46, !dbg !513

46:                                               ; preds = %._crit_edge13, %1
  ret void, !dbg !548
}

; Function Attrs: nounwind uwtable
define internal void @clear_select(%struct.molecule_t* %0) #0 !dbg !549 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !551, metadata !DIExpression()), !dbg !556
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !557
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !557, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !554, metadata !DIExpression()), !dbg !556
  %4 = icmp ne %struct.strand_t* %3, null, !dbg !559
  br i1 %4, label %.lr.ph12, label %46, !dbg !559

.lr.ph12:                                         ; preds = %1
  br label %5, !dbg !559

5:                                                ; preds = %.lr.ph12, %42
  %.010 = phi %struct.strand_t* [ %3, %.lr.ph12 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.010, metadata !554, metadata !DIExpression()), !dbg !556
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !560
  %7 = load i32, i32* %6, align 4, !dbg !563, !tbaa !300
  %8 = and i32 %7, -2, !dbg !563
  store i32 %8, i32* %6, align 4, !dbg !563, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !553, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i64 0, metadata !553, metadata !DIExpression()), !dbg !556
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5, !dbg !564
  %10 = load i32, i32* %9, align 8, !dbg !564, !tbaa !308
  %11 = sext i32 %10 to i64, !dbg !567
  %12 = icmp slt i64 0, %11, !dbg !567
  br i1 %12, label %.lr.ph8, label %41, !dbg !568

.lr.ph8:                                          ; preds = %5
  br label %13, !dbg !568

13:                                               ; preds = %.lr.ph8, %37
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %37 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !553, metadata !DIExpression()), !dbg !556
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7, !dbg !569
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8, !dbg !569, !tbaa !313
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv36, !dbg !571
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8, !dbg !571, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %17, metadata !555, metadata !DIExpression()), !dbg !556
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 6, !dbg !572
  %19 = load i32, i32* %18, align 8, !dbg !573, !tbaa !318
  %20 = and i32 %19, -2, !dbg !573
  store i32 %20, i32* %18, align 8, !dbg !573, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !552, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i64 0, metadata !552, metadata !DIExpression()), !dbg !556
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 15, !dbg !574
  %22 = load i32, i32* %21, align 8, !dbg !574, !tbaa !326
  %23 = sext i32 %22 to i64, !dbg !577
  %24 = icmp slt i64 0, %23, !dbg !577
  br i1 %24, label %.lr.ph, label %36, !dbg !578

.lr.ph:                                           ; preds = %13
  br label %25, !dbg !578

25:                                               ; preds = %.lr.ph, %32
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !552, metadata !DIExpression()), !dbg !556
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 17, !dbg !579
  %27 = load %struct.atom_t*, %struct.atom_t** %26, align 8, !dbg !579, !tbaa !331
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv5, !dbg !580
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i32 0, i32 2, !dbg !581
  %30 = load i32, i32* %29, align 8, !dbg !582, !tbaa !335
  %31 = and i32 %30, -2, !dbg !582
  store i32 %31, i32* %29, align 8, !dbg !582, !tbaa !335
  br label %32, !dbg !580

32:                                               ; preds = %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !583
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !552, metadata !DIExpression()), !dbg !556
  %33 = load i32, i32* %21, align 8, !dbg !574, !tbaa !326
  %34 = sext i32 %33 to i64, !dbg !577
  %35 = icmp slt i64 %indvars.iv.next, %34, !dbg !577
  br i1 %35, label %25, label %._crit_edge, !dbg !578, !llvm.loop !584

._crit_edge:                                      ; preds = %32
  br label %36, !dbg !578

36:                                               ; preds = %._crit_edge, %13
  br label %37, !dbg !586

37:                                               ; preds = %36
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1, !dbg !587
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !553, metadata !DIExpression()), !dbg !556
  %38 = load i32, i32* %9, align 8, !dbg !564, !tbaa !308
  %39 = sext i32 %38 to i64, !dbg !567
  %40 = icmp slt i64 %indvars.iv.next4, %39, !dbg !567
  br i1 %40, label %13, label %._crit_edge9, !dbg !568, !llvm.loop !588

._crit_edge9:                                     ; preds = %37
  br label %41, !dbg !568

41:                                               ; preds = %._crit_edge9, %5
  br label %42, !dbg !590

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4, !dbg !591
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8, !dbg !591, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %44, metadata !554, metadata !DIExpression()), !dbg !556
  %45 = icmp ne %struct.strand_t* %44, null, !dbg !559
  br i1 %45, label %5, label %._crit_edge13, !dbg !559, !llvm.loop !592

._crit_edge13:                                    ; preds = %42
  br label %46, !dbg !559

46:                                               ; preds = %._crit_edge13, %1
  ret void, !dbg !594
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @eval_1_aexpr(%struct.molecule_t* %0, i8* %1) #0 !dbg !595 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !597, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i8* %1, metadata !598, metadata !DIExpression()), !dbg !603
  %5 = bitcast i32* %3 to i8*, !dbg !604
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #8, !dbg !604
  call void @llvm.dbg.declare(metadata i32* %3, metadata !601, metadata !DIExpression()), !dbg !605
  %6 = bitcast i32* %4 to i8*, !dbg !604
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #8, !dbg !604
  call void @llvm.dbg.declare(metadata i32* %4, metadata !602, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i8* %1, metadata !599, metadata !DIExpression()), !dbg !603
  %7 = load i8, i8* %1, align 1, !dbg !607, !tbaa !440
  %8 = sext i8 %7 to i32, !dbg !607
  %9 = icmp eq i32 %8, 58, !dbg !609
  br i1 %9, label %10, label %12, !dbg !610

10:                                               ; preds = %2
  store i8* null, i8** @spart, align 8, !dbg !611, !tbaa !315
  %11 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !613
  call void @llvm.dbg.value(metadata i8* %11, metadata !599, metadata !DIExpression()), !dbg !603
  br label %18, !dbg !614

12:                                               ; preds = %2
  %13 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !615
  store i8* %13, i8** @spart, align 8, !dbg !617, !tbaa !315
  %14 = load i8*, i8** @spart, align 8, !dbg !618, !tbaa !315
  %15 = call i64 @strlen(i8* %14) #7, !dbg !619
  %16 = add i64 %15, 1, !dbg !620
  %17 = getelementptr inbounds i8, i8* %1, i64 %16, !dbg !621
  call void @llvm.dbg.value(metadata i8* %17, metadata !599, metadata !DIExpression()), !dbg !603
  br label %18

18:                                               ; preds = %12, %10
  %.0 = phi i8* [ %11, %10 ], [ %17, %12 ], !dbg !622
  call void @llvm.dbg.value(metadata i8* %.0, metadata !599, metadata !DIExpression()), !dbg !603
  %19 = load i8, i8* %.0, align 1, !dbg !623, !tbaa !440
  %20 = sext i8 %19 to i32, !dbg !623
  %21 = icmp eq i32 %20, 58, !dbg !625
  br i1 %21, label %22, label %24, !dbg !626

22:                                               ; preds = %18
  store i8* null, i8** @rpart, align 8, !dbg !627, !tbaa !315
  %23 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !629
  call void @llvm.dbg.value(metadata i8* %23, metadata !599, metadata !DIExpression()), !dbg !603
  br label %30, !dbg !630

24:                                               ; preds = %18
  %25 = call i8* @strtok(i8* %.0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !631
  store i8* %25, i8** @rpart, align 8, !dbg !633, !tbaa !315
  %26 = load i8*, i8** @rpart, align 8, !dbg !634, !tbaa !315
  %27 = call i64 @strlen(i8* %26) #7, !dbg !635
  %28 = add i64 %27, 1, !dbg !636
  %29 = getelementptr inbounds i8, i8* %.0, i64 %28, !dbg !637
  call void @llvm.dbg.value(metadata i8* %29, metadata !599, metadata !DIExpression()), !dbg !603
  br label %30

30:                                               ; preds = %24, %22
  %.1 = phi i8* [ %23, %22 ], [ %29, %24 ], !dbg !638
  call void @llvm.dbg.value(metadata i8* %.1, metadata !599, metadata !DIExpression()), !dbg !603
  %31 = call i8* @strtok(i8* %.1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !639
  store i8* %31, i8** @apart, align 8, !dbg !640, !tbaa !315
  %32 = load i8*, i8** @spart, align 8, !dbg !641, !tbaa !315
  %33 = icmp ne i8* %32, null, !dbg !641
  br i1 %33, label %34, label %58, !dbg !643

34:                                               ; preds = %30
  %35 = load i8*, i8** @spart, align 8, !dbg !644, !tbaa !315
  %36 = call i8* @strtok(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !646
  call void @llvm.dbg.value(metadata i8* %36, metadata !600, metadata !DIExpression()), !dbg !603
  %37 = call i32 @is_pattern(i8* %36, i32* %3, i32* %4), !dbg !647
  %38 = icmp ne i32 %37, 0, !dbg !647
  br i1 %38, label %39, label %40, !dbg !649

39:                                               ; preds = %34
  call void @match_str_pat(%struct.molecule_t* %0, i8* %36), !dbg !650
  br label %43, !dbg !650

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4, !dbg !651, !tbaa !652
  %42 = load i32, i32* %4, align 4, !dbg !653, !tbaa !652
  call void @match_str_range(%struct.molecule_t* %0, i32 %41, i32 %42), !dbg !654
  br label %43

43:                                               ; preds = %40, %39
  %44 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !655
  call void @llvm.dbg.value(metadata i8* %44, metadata !600, metadata !DIExpression()), !dbg !603
  %45 = icmp ne i8* %44, null, !dbg !656
  br i1 %45, label %.lr.ph, label %57, !dbg !656

.lr.ph:                                           ; preds = %43
  br label %46, !dbg !656

46:                                               ; preds = %.lr.ph, %54
  %47 = phi i8* [ %44, %.lr.ph ], [ %55, %54 ]
  %48 = call i32 @is_pattern(i8* %47, i32* %3, i32* %4), !dbg !657
  %49 = icmp ne i32 %48, 0, !dbg !657
  br i1 %49, label %50, label %51, !dbg !660

50:                                               ; preds = %46
  call void @match_str_pat(%struct.molecule_t* %0, i8* %47), !dbg !661
  br label %54, !dbg !661

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4, !dbg !662, !tbaa !652
  %53 = load i32, i32* %4, align 4, !dbg !663, !tbaa !652
  call void @match_str_range(%struct.molecule_t* %0, i32 %52, i32 %53), !dbg !664
  br label %54

54:                                               ; preds = %51, %50
  %55 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !655
  call void @llvm.dbg.value(metadata i8* %55, metadata !600, metadata !DIExpression()), !dbg !603
  %56 = icmp ne i8* %55, null, !dbg !656
  br i1 %56, label %46, label %._crit_edge, !dbg !656, !llvm.loop !665

._crit_edge:                                      ; preds = %54
  br label %57, !dbg !656

57:                                               ; preds = %._crit_edge, %43
  br label %59, !dbg !667

58:                                               ; preds = %30
  call void @match_str_range(%struct.molecule_t* %0, i32 1, i32 -1), !dbg !668
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i8*, i8** @rpart, align 8, !dbg !669, !tbaa !315
  %61 = icmp ne i8* %60, null, !dbg !669
  br i1 %61, label %62, label %86, !dbg !671

62:                                               ; preds = %59
  %63 = load i8*, i8** @rpart, align 8, !dbg !672, !tbaa !315
  %64 = call i8* @strtok(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !674
  call void @llvm.dbg.value(metadata i8* %64, metadata !600, metadata !DIExpression()), !dbg !603
  %65 = call i32 @is_pattern(i8* %64, i32* %3, i32* %4), !dbg !675
  %66 = icmp ne i32 %65, 0, !dbg !675
  br i1 %66, label %67, label %68, !dbg !677

67:                                               ; preds = %62
  call void @match_res_pat(%struct.molecule_t* %0, i8* %64), !dbg !678
  br label %71, !dbg !678

68:                                               ; preds = %62
  %69 = load i32, i32* %3, align 4, !dbg !679, !tbaa !652
  %70 = load i32, i32* %4, align 4, !dbg !680, !tbaa !652
  call void @match_res_range(%struct.molecule_t* %0, i32 %69, i32 %70), !dbg !681
  br label %71

71:                                               ; preds = %68, %67
  %72 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !682
  call void @llvm.dbg.value(metadata i8* %72, metadata !600, metadata !DIExpression()), !dbg !603
  %73 = icmp ne i8* %72, null, !dbg !683
  br i1 %73, label %.lr.ph2, label %85, !dbg !683

.lr.ph2:                                          ; preds = %71
  br label %74, !dbg !683

74:                                               ; preds = %.lr.ph2, %82
  %75 = phi i8* [ %72, %.lr.ph2 ], [ %83, %82 ]
  %76 = call i32 @is_pattern(i8* %75, i32* %3, i32* %4), !dbg !684
  %77 = icmp ne i32 %76, 0, !dbg !684
  br i1 %77, label %78, label %79, !dbg !687

78:                                               ; preds = %74
  call void @match_res_pat(%struct.molecule_t* %0, i8* %75), !dbg !688
  br label %82, !dbg !688

79:                                               ; preds = %74
  %80 = load i32, i32* %3, align 4, !dbg !689, !tbaa !652
  %81 = load i32, i32* %4, align 4, !dbg !690, !tbaa !652
  call void @match_res_range(%struct.molecule_t* %0, i32 %80, i32 %81), !dbg !691
  br label %82

82:                                               ; preds = %79, %78
  %83 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !682
  call void @llvm.dbg.value(metadata i8* %83, metadata !600, metadata !DIExpression()), !dbg !603
  %84 = icmp ne i8* %83, null, !dbg !683
  br i1 %84, label %74, label %._crit_edge3, !dbg !683, !llvm.loop !692

._crit_edge3:                                     ; preds = %82
  br label %85, !dbg !683

85:                                               ; preds = %._crit_edge3, %71
  br label %87, !dbg !694

86:                                               ; preds = %59
  call void @match_res_range(%struct.molecule_t* %0, i32 1, i32 -1), !dbg !695
  br label %87

87:                                               ; preds = %86, %85
  %88 = load i8*, i8** @apart, align 8, !dbg !696, !tbaa !315
  %89 = icmp ne i8* %88, null, !dbg !696
  br i1 %89, label %90, label %114, !dbg !698

90:                                               ; preds = %87
  %91 = load i8*, i8** @apart, align 8, !dbg !699, !tbaa !315
  %92 = call i8* @strtok(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !701
  call void @llvm.dbg.value(metadata i8* %92, metadata !600, metadata !DIExpression()), !dbg !603
  %93 = call i32 @is_pattern(i8* %92, i32* %3, i32* %4), !dbg !702
  %94 = icmp ne i32 %93, 0, !dbg !702
  br i1 %94, label %95, label %96, !dbg !704

95:                                               ; preds = %90
  call void @match_atom_pat(%struct.molecule_t* %0, i8* %92), !dbg !705
  br label %99, !dbg !705

96:                                               ; preds = %90
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !706, !tbaa !315
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)), !dbg !708
  br label %99

99:                                               ; preds = %96, %95
  %100 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !709
  call void @llvm.dbg.value(metadata i8* %100, metadata !600, metadata !DIExpression()), !dbg !603
  %101 = icmp ne i8* %100, null, !dbg !710
  br i1 %101, label %.lr.ph5, label %113, !dbg !710

.lr.ph5:                                          ; preds = %99
  br label %102, !dbg !710

102:                                              ; preds = %.lr.ph5, %110
  %103 = phi i8* [ %100, %.lr.ph5 ], [ %111, %110 ]
  %104 = call i32 @is_pattern(i8* %103, i32* %3, i32* %4), !dbg !711
  %105 = icmp ne i32 %104, 0, !dbg !711
  br i1 %105, label %106, label %107, !dbg !714

106:                                              ; preds = %102
  call void @match_atom_pat(%struct.molecule_t* %0, i8* %103), !dbg !715
  br label %110, !dbg !715

107:                                              ; preds = %102
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !716, !tbaa !315
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)), !dbg !718
  br label %110

110:                                              ; preds = %107, %106
  %111 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !709
  call void @llvm.dbg.value(metadata i8* %111, metadata !600, metadata !DIExpression()), !dbg !603
  %112 = icmp ne i8* %111, null, !dbg !710
  br i1 %112, label %102, label %._crit_edge6, !dbg !710, !llvm.loop !719

._crit_edge6:                                     ; preds = %110
  br label %113, !dbg !710

113:                                              ; preds = %._crit_edge6, %99
  br label %115, !dbg !721

114:                                              ; preds = %87
  call void @match_atom_pat(%struct.molecule_t* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !722
  br label %115

115:                                              ; preds = %114, %113
  %116 = bitcast i32* %4 to i8*, !dbg !723
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %116) #8, !dbg !723
  %117 = bitcast i32* %3 to i8*, !dbg !723
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %117) #8, !dbg !723
  ret i32 0, !dbg !724
}

; Function Attrs: nounwind uwtable
define internal void @or_select(%struct.molecule_t* %0) #0 !dbg !725 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !727, metadata !DIExpression()), !dbg !733
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !734
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !734, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !730, metadata !DIExpression()), !dbg !733
  %4 = icmp ne %struct.strand_t* %3, null, !dbg !736
  br i1 %4, label %.lr.ph12, label %64, !dbg !736

.lr.ph12:                                         ; preds = %1
  br label %5, !dbg !736

5:                                                ; preds = %.lr.ph12, %60
  %.010 = phi %struct.strand_t* [ %3, %.lr.ph12 ], [ %62, %60 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.010, metadata !730, metadata !DIExpression()), !dbg !733
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !737
  %7 = load i32, i32* %6, align 4, !dbg !737, !tbaa !300
  %8 = and i32 %7, 1, !dbg !740
  %9 = icmp ne i32 %8, 0, !dbg !741
  %10 = select i1 %9, i32 128, i32 0, !dbg !741
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !742
  %12 = load i32, i32* %11, align 4, !dbg !743, !tbaa !300
  %13 = or i32 %12, %10, !dbg !743
  store i32 %13, i32* %11, align 4, !dbg !743, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !729, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i64 0, metadata !729, metadata !DIExpression()), !dbg !733
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5, !dbg !744
  %15 = load i32, i32* %14, align 8, !dbg !744, !tbaa !308
  %16 = sext i32 %15 to i64, !dbg !747
  %17 = icmp slt i64 0, %16, !dbg !747
  br i1 %17, label %.lr.ph8, label %58, !dbg !748

.lr.ph8:                                          ; preds = %5
  br label %18, !dbg !748

18:                                               ; preds = %.lr.ph8, %54
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %54 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !729, metadata !DIExpression()), !dbg !733
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7, !dbg !749
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !749, !tbaa !313
  %21 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %indvars.iv36, !dbg !751
  %22 = load %struct.residue_t*, %struct.residue_t** %21, align 8, !dbg !751, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %22, metadata !731, metadata !DIExpression()), !dbg !733
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 6, !dbg !752
  %24 = load i32, i32* %23, align 8, !dbg !752, !tbaa !318
  %25 = and i32 %24, 1, !dbg !753
  %26 = icmp ne i32 %25, 0, !dbg !754
  %27 = select i1 %26, i32 128, i32 0, !dbg !754
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 6, !dbg !755
  %29 = load i32, i32* %28, align 8, !dbg !756, !tbaa !318
  %30 = or i32 %29, %27, !dbg !756
  store i32 %30, i32* %28, align 8, !dbg !756, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !728, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i64 0, metadata !728, metadata !DIExpression()), !dbg !733
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 15, !dbg !757
  %32 = load i32, i32* %31, align 8, !dbg !757, !tbaa !326
  %33 = sext i32 %32 to i64, !dbg !760
  %34 = icmp slt i64 0, %33, !dbg !760
  br i1 %34, label %.lr.ph, label %52, !dbg !761

.lr.ph:                                           ; preds = %18
  br label %35, !dbg !761

35:                                               ; preds = %.lr.ph, %48
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %48 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !728, metadata !DIExpression()), !dbg !733
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 17, !dbg !762
  %37 = load %struct.atom_t*, %struct.atom_t** %36, align 8, !dbg !762, !tbaa !331
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %indvars.iv5, !dbg !764
  call void @llvm.dbg.value(metadata %struct.atom_t* %38, metadata !732, metadata !DIExpression()), !dbg !733
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i32 0, i32 2, !dbg !765
  %40 = load i32, i32* %39, align 8, !dbg !765, !tbaa !335
  %41 = and i32 %40, 1, !dbg !766
  %42 = icmp ne i32 %41, 0, !dbg !767
  %43 = zext i1 %42 to i64, !dbg !767
  %44 = select i1 %42, i32 128, i32 0, !dbg !767
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i32 0, i32 2, !dbg !768
  %46 = load i32, i32* %45, align 8, !dbg !769, !tbaa !335
  %47 = or i32 %46, %44, !dbg !769
  store i32 %47, i32* %45, align 8, !dbg !769, !tbaa !335
  br label %48, !dbg !770

48:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !771
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !728, metadata !DIExpression()), !dbg !733
  %49 = load i32, i32* %31, align 8, !dbg !757, !tbaa !326
  %50 = sext i32 %49 to i64, !dbg !760
  %51 = icmp slt i64 %indvars.iv.next, %50, !dbg !760
  br i1 %51, label %35, label %._crit_edge, !dbg !761, !llvm.loop !772

._crit_edge:                                      ; preds = %48
  br label %52, !dbg !761

52:                                               ; preds = %._crit_edge, %18
  %53 = zext i1 %26 to i64, !dbg !754
  br label %54, !dbg !774

54:                                               ; preds = %52
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1, !dbg !775
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !729, metadata !DIExpression()), !dbg !733
  %55 = load i32, i32* %14, align 8, !dbg !744, !tbaa !308
  %56 = sext i32 %55 to i64, !dbg !747
  %57 = icmp slt i64 %indvars.iv.next4, %56, !dbg !747
  br i1 %57, label %18, label %._crit_edge9, !dbg !748, !llvm.loop !776

._crit_edge9:                                     ; preds = %54
  br label %58, !dbg !748

58:                                               ; preds = %._crit_edge9, %5
  %59 = zext i1 %9 to i64, !dbg !741
  br label %60, !dbg !778

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4, !dbg !779
  %62 = load %struct.strand_t*, %struct.strand_t** %61, align 8, !dbg !779, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %62, metadata !730, metadata !DIExpression()), !dbg !733
  %63 = icmp ne %struct.strand_t* %62, null, !dbg !736
  br i1 %63, label %5, label %._crit_edge13, !dbg !736, !llvm.loop !780

._crit_edge13:                                    ; preds = %60
  br label %64, !dbg !736

64:                                               ; preds = %._crit_edge13, %1
  ret void, !dbg !782
}

; Function Attrs: nounwind uwtable
define internal void @set_select(%struct.molecule_t* %0) #0 !dbg !783 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !785, metadata !DIExpression()), !dbg !791
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !792
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !792, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !788, metadata !DIExpression()), !dbg !791
  %4 = icmp ne %struct.strand_t* %3, null, !dbg !794
  br i1 %4, label %.lr.ph12, label %64, !dbg !794

.lr.ph12:                                         ; preds = %1
  br label %5, !dbg !794

5:                                                ; preds = %.lr.ph12, %60
  %.010 = phi %struct.strand_t* [ %3, %.lr.ph12 ], [ %62, %60 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.010, metadata !788, metadata !DIExpression()), !dbg !791
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !795
  %7 = load i32, i32* %6, align 4, !dbg !795, !tbaa !300
  %8 = and i32 %7, 128, !dbg !798
  %9 = icmp ne i32 %8, 0, !dbg !799
  %10 = select i1 %9, i32 1, i32 0, !dbg !799
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !800
  %12 = load i32, i32* %11, align 4, !dbg !801, !tbaa !300
  %13 = or i32 %12, %10, !dbg !801
  store i32 %13, i32* %11, align 4, !dbg !801, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i64 0, metadata !787, metadata !DIExpression()), !dbg !791
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5, !dbg !802
  %15 = load i32, i32* %14, align 8, !dbg !802, !tbaa !308
  %16 = sext i32 %15 to i64, !dbg !805
  %17 = icmp slt i64 0, %16, !dbg !805
  br i1 %17, label %.lr.ph8, label %58, !dbg !806

.lr.ph8:                                          ; preds = %5
  br label %18, !dbg !806

18:                                               ; preds = %.lr.ph8, %54
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %54 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !787, metadata !DIExpression()), !dbg !791
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7, !dbg !807
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !807, !tbaa !313
  %21 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %indvars.iv36, !dbg !809
  %22 = load %struct.residue_t*, %struct.residue_t** %21, align 8, !dbg !809, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %22, metadata !789, metadata !DIExpression()), !dbg !791
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 6, !dbg !810
  %24 = load i32, i32* %23, align 8, !dbg !810, !tbaa !318
  %25 = and i32 %24, 128, !dbg !811
  %26 = icmp ne i32 %25, 0, !dbg !812
  %27 = select i1 %26, i32 1, i32 0, !dbg !812
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 6, !dbg !813
  %29 = load i32, i32* %28, align 8, !dbg !814, !tbaa !318
  %30 = or i32 %29, %27, !dbg !814
  store i32 %30, i32* %28, align 8, !dbg !814, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !786, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i64 0, metadata !786, metadata !DIExpression()), !dbg !791
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 15, !dbg !815
  %32 = load i32, i32* %31, align 8, !dbg !815, !tbaa !326
  %33 = sext i32 %32 to i64, !dbg !818
  %34 = icmp slt i64 0, %33, !dbg !818
  br i1 %34, label %.lr.ph, label %52, !dbg !819

.lr.ph:                                           ; preds = %18
  br label %35, !dbg !819

35:                                               ; preds = %.lr.ph, %48
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %48 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !786, metadata !DIExpression()), !dbg !791
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 17, !dbg !820
  %37 = load %struct.atom_t*, %struct.atom_t** %36, align 8, !dbg !820, !tbaa !331
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %indvars.iv5, !dbg !822
  call void @llvm.dbg.value(metadata %struct.atom_t* %38, metadata !790, metadata !DIExpression()), !dbg !791
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i32 0, i32 2, !dbg !823
  %40 = load i32, i32* %39, align 8, !dbg !823, !tbaa !335
  %41 = and i32 %40, 128, !dbg !824
  %42 = icmp ne i32 %41, 0, !dbg !825
  %43 = zext i1 %42 to i64, !dbg !825
  %44 = select i1 %42, i32 1, i32 0, !dbg !825
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i32 0, i32 2, !dbg !826
  %46 = load i32, i32* %45, align 8, !dbg !827, !tbaa !335
  %47 = or i32 %46, %44, !dbg !827
  store i32 %47, i32* %45, align 8, !dbg !827, !tbaa !335
  br label %48, !dbg !828

48:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !829
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !786, metadata !DIExpression()), !dbg !791
  %49 = load i32, i32* %31, align 8, !dbg !815, !tbaa !326
  %50 = sext i32 %49 to i64, !dbg !818
  %51 = icmp slt i64 %indvars.iv.next, %50, !dbg !818
  br i1 %51, label %35, label %._crit_edge, !dbg !819, !llvm.loop !830

._crit_edge:                                      ; preds = %48
  br label %52, !dbg !819

52:                                               ; preds = %._crit_edge, %18
  %53 = zext i1 %26 to i64, !dbg !812
  br label %54, !dbg !832

54:                                               ; preds = %52
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1, !dbg !833
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !787, metadata !DIExpression()), !dbg !791
  %55 = load i32, i32* %14, align 8, !dbg !802, !tbaa !308
  %56 = sext i32 %55 to i64, !dbg !805
  %57 = icmp slt i64 %indvars.iv.next4, %56, !dbg !805
  br i1 %57, label %18, label %._crit_edge9, !dbg !806, !llvm.loop !834

._crit_edge9:                                     ; preds = %54
  br label %58, !dbg !806

58:                                               ; preds = %._crit_edge9, %5
  %59 = zext i1 %9 to i64, !dbg !799
  br label %60, !dbg !836

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4, !dbg !837
  %62 = load %struct.strand_t*, %struct.strand_t** %61, align 8, !dbg !837, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %62, metadata !788, metadata !DIExpression()), !dbg !791
  %63 = icmp ne %struct.strand_t* %62, null, !dbg !794
  br i1 %63, label %5, label %._crit_edge13, !dbg !794, !llvm.loop !838

._crit_edge13:                                    ; preds = %60
  br label %64, !dbg !794

64:                                               ; preds = %._crit_edge13, %1
  ret void, !dbg !840
}

; Function Attrs: nounwind uwtable
define dso_local i32 @atom_in_aexpr(%struct.atom_t* %0, i8* %1) #0 !dbg !841 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !845, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8* %1, metadata !846, metadata !DIExpression()), !dbg !850
  %3 = icmp eq i8* %1, null, !dbg !851
  br i1 %3, label %4, label %5, !dbg !853

4:                                                ; preds = %2
  br label %39, !dbg !854

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %1, metadata !847, metadata !DIExpression()), !dbg !850
  %6 = call i8* @strchr(i8* %1, i32 124) #7, !dbg !855
  call void @llvm.dbg.value(metadata i8* %6, metadata !848, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8* %1, metadata !847, metadata !DIExpression()), !dbg !850
  %7 = icmp ne i8* %1, null, !dbg !857
  br i1 %7, label %.lr.ph, label %38, !dbg !857

.lr.ph:                                           ; preds = %5
  br label %8, !dbg !857

8:                                                ; preds = %.lr.ph, %36
  %.025 = phi i8* [ %1, %.lr.ph ], [ %.1, %36 ]
  %.034 = phi i8* [ %6, %.lr.ph ], [ %.2, %36 ]
  call void @llvm.dbg.value(metadata i8* %.025, metadata !847, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8* %.034, metadata !848, metadata !DIExpression()), !dbg !850
  %9 = icmp ne i8* %.034, null, !dbg !858
  br i1 %9, label %10, label %16, !dbg !862

10:                                               ; preds = %8
  %11 = ptrtoint i8* %.034 to i64, !dbg !863
  %12 = ptrtoint i8* %.025 to i64, !dbg !863
  %13 = sub i64 %11, %12, !dbg !863
  %14 = trunc i64 %13 to i32, !dbg !865
  call void @llvm.dbg.value(metadata i32 %14, metadata !849, metadata !DIExpression()), !dbg !850
  %15 = getelementptr inbounds i8, i8* %.034, i32 1, !dbg !866
  call void @llvm.dbg.value(metadata i8* %15, metadata !848, metadata !DIExpression()), !dbg !850
  br label %19, !dbg !867

16:                                               ; preds = %8
  %17 = call i64 @strlen(i8* %.025) #7, !dbg !868
  %18 = trunc i64 %17 to i32, !dbg !868
  call void @llvm.dbg.value(metadata i32 %18, metadata !849, metadata !DIExpression()), !dbg !850
  br label %19

19:                                               ; preds = %16, %10
  %.026 = phi i8* [ %.025, %10 ], [ %.025, %16 ]
  %.1 = phi i8* [ %15, %10 ], [ %.034, %16 ], !dbg !869
  %.01 = phi i32 [ %14, %10 ], [ %18, %16 ], !dbg !870
  call void @llvm.dbg.value(metadata i32 %.01, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8* %.1, metadata !848, metadata !DIExpression()), !dbg !850
  %20 = icmp sge i32 %.01, 1000, !dbg !871
  br i1 %20, label %21, label %24, !dbg !873

21:                                               ; preds = %19
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !874, !tbaa !315
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)), !dbg !876
  br label %39, !dbg !877

24:                                               ; preds = %19
  %25 = sext i32 %.01 to i64, !dbg !878
  %26 = call i8* @strncpy(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* %.026, i64 %25) #8, !dbg !879
  %27 = sext i32 %.01 to i64, !dbg !880
  %28 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %27, !dbg !880
  store i8 0, i8* %28, align 1, !dbg !881, !tbaa !440
  %29 = call i32 @atom_in_1_aexpr(%struct.atom_t* %0, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0)), !dbg !882
  %30 = icmp ne i32 %29, 0, !dbg !882
  br i1 %30, label %31, label %32, !dbg !884

31:                                               ; preds = %24
  br label %39, !dbg !885

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %.1, metadata !847, metadata !DIExpression()), !dbg !850
  %33 = icmp ne i8* %.1, null, !dbg !886
  br i1 %33, label %34, label %36, !dbg !888

34:                                               ; preds = %32
  %35 = call i8* @strchr(i8* %.1, i32 124) #7, !dbg !889
  call void @llvm.dbg.value(metadata i8* %35, metadata !848, metadata !DIExpression()), !dbg !850
  br label %36, !dbg !890

36:                                               ; preds = %34, %32
  %.2 = phi i8* [ %35, %34 ], [ %.1, %32 ], !dbg !891
  call void @llvm.dbg.value(metadata i8* %.1, metadata !847, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8* %.2, metadata !848, metadata !DIExpression()), !dbg !850
  %37 = icmp ne i8* %.1, null, !dbg !857
  br i1 %37, label %8, label %._crit_edge, !dbg !857, !llvm.loop !892

._crit_edge:                                      ; preds = %36
  br label %38, !dbg !857

38:                                               ; preds = %._crit_edge, %5
  br label %39, !dbg !894

39:                                               ; preds = %38, %31, %21, %4
  %.0 = phi i32 [ 0, %4 ], [ 0, %21 ], [ 1, %31 ], [ 0, %38 ], !dbg !850
  ret i32 %.0, !dbg !895
}

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_1_aexpr(%struct.atom_t* %0, i8* %1) #0 !dbg !896 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !898, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i8* %1, metadata !899, metadata !DIExpression()), !dbg !906
  %5 = bitcast i32* %3 to i8*, !dbg !907
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #8, !dbg !907
  call void @llvm.dbg.declare(metadata i32* %3, metadata !902, metadata !DIExpression()), !dbg !908
  %6 = bitcast i32* %4 to i8*, !dbg !907
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #8, !dbg !907
  call void @llvm.dbg.declare(metadata i32* %4, metadata !903, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i8* %1, metadata !900, metadata !DIExpression()), !dbg !906
  %7 = load i8, i8* %1, align 1, !dbg !910, !tbaa !440
  %8 = sext i8 %7 to i32, !dbg !910
  %9 = icmp eq i32 %8, 58, !dbg !912
  br i1 %9, label %10, label %12, !dbg !913

10:                                               ; preds = %2
  store i8* null, i8** @spart, align 8, !dbg !914, !tbaa !315
  %11 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !916
  call void @llvm.dbg.value(metadata i8* %11, metadata !900, metadata !DIExpression()), !dbg !906
  br label %18, !dbg !917

12:                                               ; preds = %2
  %13 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !918
  store i8* %13, i8** @spart, align 8, !dbg !920, !tbaa !315
  %14 = load i8*, i8** @spart, align 8, !dbg !921, !tbaa !315
  %15 = call i64 @strlen(i8* %14) #7, !dbg !922
  %16 = add i64 %15, 1, !dbg !923
  %17 = getelementptr inbounds i8, i8* %1, i64 %16, !dbg !924
  call void @llvm.dbg.value(metadata i8* %17, metadata !900, metadata !DIExpression()), !dbg !906
  br label %18

18:                                               ; preds = %12, %10
  %.01 = phi i8* [ %11, %10 ], [ %17, %12 ], !dbg !925
  call void @llvm.dbg.value(metadata i8* %.01, metadata !900, metadata !DIExpression()), !dbg !906
  %19 = load i8, i8* %.01, align 1, !dbg !926, !tbaa !440
  %20 = sext i8 %19 to i32, !dbg !926
  %21 = icmp eq i32 %20, 58, !dbg !928
  br i1 %21, label %22, label %24, !dbg !929

22:                                               ; preds = %18
  store i8* null, i8** @rpart, align 8, !dbg !930, !tbaa !315
  %23 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !932
  call void @llvm.dbg.value(metadata i8* %23, metadata !900, metadata !DIExpression()), !dbg !906
  br label %30, !dbg !933

24:                                               ; preds = %18
  %25 = call i8* @strtok(i8* %.01, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !934
  store i8* %25, i8** @rpart, align 8, !dbg !936, !tbaa !315
  %26 = load i8*, i8** @rpart, align 8, !dbg !937, !tbaa !315
  %27 = call i64 @strlen(i8* %26) #7, !dbg !938
  %28 = add i64 %27, 1, !dbg !939
  %29 = getelementptr inbounds i8, i8* %.01, i64 %28, !dbg !940
  call void @llvm.dbg.value(metadata i8* %29, metadata !900, metadata !DIExpression()), !dbg !906
  br label %30

30:                                               ; preds = %24, %22
  %.1 = phi i8* [ %23, %22 ], [ %29, %24 ], !dbg !941
  call void @llvm.dbg.value(metadata i8* %.1, metadata !900, metadata !DIExpression()), !dbg !906
  %31 = call i8* @strtok(i8* %.1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !942
  store i8* %31, i8** @apart, align 8, !dbg !943, !tbaa !315
  %32 = load i8*, i8** @spart, align 8, !dbg !944, !tbaa !315
  %33 = icmp ne i8* %32, null, !dbg !944
  br i1 %33, label %34, label %74, !dbg !946

34:                                               ; preds = %30
  %35 = load i8*, i8** @spart, align 8, !dbg !947, !tbaa !315
  %36 = call i8* @strtok(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !949
  call void @llvm.dbg.value(metadata i8* %36, metadata !901, metadata !DIExpression()), !dbg !906
  %37 = call i32 @is_pattern(i8* %36, i32* %3, i32* %4), !dbg !950
  %38 = icmp ne i32 %37, 0, !dbg !950
  br i1 %38, label %39, label %44, !dbg !952

39:                                               ; preds = %34
  %40 = call i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %36), !dbg !953
  %41 = icmp ne i32 %40, 0, !dbg !953
  br i1 %41, label %42, label %43, !dbg !956

42:                                               ; preds = %39
  br label %75, !dbg !957

43:                                               ; preds = %39
  br label %51, !dbg !958

44:                                               ; preds = %34
  %45 = load i32, i32* %3, align 4, !dbg !959, !tbaa !652
  %46 = load i32, i32* %4, align 4, !dbg !961, !tbaa !652
  %47 = call i32 @atom_in_str_range(%struct.atom_t* %0, i32 %45, i32 %46), !dbg !962
  %48 = icmp ne i32 %47, 0, !dbg !962
  br i1 %48, label %49, label %50, !dbg !963

49:                                               ; preds = %44
  br label %75, !dbg !964

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %43
  %52 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !965
  call void @llvm.dbg.value(metadata i8* %52, metadata !901, metadata !DIExpression()), !dbg !906
  %53 = icmp ne i8* %52, null, !dbg !966
  br i1 %53, label %.lr.ph, label %73, !dbg !966

.lr.ph:                                           ; preds = %51
  br label %54, !dbg !966

54:                                               ; preds = %.lr.ph, %70
  %55 = phi i8* [ %52, %.lr.ph ], [ %71, %70 ]
  %56 = call i32 @is_pattern(i8* %55, i32* %3, i32* %4), !dbg !967
  %57 = icmp ne i32 %56, 0, !dbg !967
  br i1 %57, label %58, label %63, !dbg !970

58:                                               ; preds = %54
  %59 = call i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %55), !dbg !971
  %60 = icmp ne i32 %59, 0, !dbg !971
  br i1 %60, label %61, label %62, !dbg !974

61:                                               ; preds = %58
  br label %75, !dbg !975

62:                                               ; preds = %58
  br label %70, !dbg !976

63:                                               ; preds = %54
  %64 = load i32, i32* %3, align 4, !dbg !977, !tbaa !652
  %65 = load i32, i32* %4, align 4, !dbg !979, !tbaa !652
  %66 = call i32 @atom_in_str_range(%struct.atom_t* %0, i32 %64, i32 %65), !dbg !980
  %67 = icmp ne i32 %66, 0, !dbg !980
  br i1 %67, label %68, label %69, !dbg !981

68:                                               ; preds = %63
  br label %75, !dbg !982

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %62
  %71 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !965
  call void @llvm.dbg.value(metadata i8* %71, metadata !901, metadata !DIExpression()), !dbg !906
  %72 = icmp ne i8* %71, null, !dbg !966
  br i1 %72, label %54, label %._crit_edge, !dbg !966, !llvm.loop !983

._crit_edge:                                      ; preds = %70
  br label %73, !dbg !966

73:                                               ; preds = %._crit_edge, %51
  br label %156, !dbg !985

74:                                               ; preds = %30
  br label %75, !dbg !944

75:                                               ; preds = %74, %68, %61, %49, %42
  call void @llvm.dbg.label(metadata !904), !dbg !986
  %76 = load i8*, i8** @rpart, align 8, !dbg !987, !tbaa !315
  %77 = icmp ne i8* %76, null, !dbg !987
  br i1 %77, label %78, label %118, !dbg !989

78:                                               ; preds = %75
  %79 = load i8*, i8** @rpart, align 8, !dbg !990, !tbaa !315
  %80 = call i8* @strtok(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !992
  call void @llvm.dbg.value(metadata i8* %80, metadata !901, metadata !DIExpression()), !dbg !906
  %81 = call i32 @is_pattern(i8* %80, i32* %3, i32* %4), !dbg !993
  %82 = icmp ne i32 %81, 0, !dbg !993
  br i1 %82, label %83, label %88, !dbg !995

83:                                               ; preds = %78
  %84 = call i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %80), !dbg !996
  %85 = icmp ne i32 %84, 0, !dbg !996
  br i1 %85, label %86, label %87, !dbg !999

86:                                               ; preds = %83
  br label %119, !dbg !1000

87:                                               ; preds = %83
  br label %95, !dbg !1001

88:                                               ; preds = %78
  %89 = load i32, i32* %3, align 4, !dbg !1002, !tbaa !652
  %90 = load i32, i32* %4, align 4, !dbg !1004, !tbaa !652
  %91 = call i32 @atom_in_res_range(%struct.atom_t* %0, i32 %89, i32 %90), !dbg !1005
  %92 = icmp ne i32 %91, 0, !dbg !1005
  br i1 %92, label %93, label %94, !dbg !1006

93:                                               ; preds = %88
  br label %119, !dbg !1007

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %87
  %96 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1008
  call void @llvm.dbg.value(metadata i8* %96, metadata !901, metadata !DIExpression()), !dbg !906
  %97 = icmp ne i8* %96, null, !dbg !1009
  br i1 %97, label %.lr.ph3, label %117, !dbg !1009

.lr.ph3:                                          ; preds = %95
  br label %98, !dbg !1009

98:                                               ; preds = %.lr.ph3, %114
  %99 = phi i8* [ %96, %.lr.ph3 ], [ %115, %114 ]
  %100 = call i32 @is_pattern(i8* %99, i32* %3, i32* %4), !dbg !1010
  %101 = icmp ne i32 %100, 0, !dbg !1010
  br i1 %101, label %102, label %107, !dbg !1013

102:                                              ; preds = %98
  %103 = call i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %99), !dbg !1014
  %104 = icmp ne i32 %103, 0, !dbg !1014
  br i1 %104, label %105, label %106, !dbg !1017

105:                                              ; preds = %102
  br label %119, !dbg !1018

106:                                              ; preds = %102
  br label %114, !dbg !1019

107:                                              ; preds = %98
  %108 = load i32, i32* %3, align 4, !dbg !1020, !tbaa !652
  %109 = load i32, i32* %4, align 4, !dbg !1022, !tbaa !652
  %110 = call i32 @atom_in_res_range(%struct.atom_t* %0, i32 %108, i32 %109), !dbg !1023
  %111 = icmp ne i32 %110, 0, !dbg !1023
  br i1 %111, label %112, label %113, !dbg !1024

112:                                              ; preds = %107
  br label %119, !dbg !1025

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %106
  %115 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1008
  call void @llvm.dbg.value(metadata i8* %115, metadata !901, metadata !DIExpression()), !dbg !906
  %116 = icmp ne i8* %115, null, !dbg !1009
  br i1 %116, label %98, label %._crit_edge4, !dbg !1009, !llvm.loop !1026

._crit_edge4:                                     ; preds = %114
  br label %117, !dbg !1009

117:                                              ; preds = %._crit_edge4, %95
  br label %156, !dbg !1028

118:                                              ; preds = %75
  br label %119, !dbg !987

119:                                              ; preds = %118, %112, %105, %93, %86
  call void @llvm.dbg.label(metadata !905), !dbg !1029
  %120 = load i8*, i8** @apart, align 8, !dbg !1030, !tbaa !315
  %121 = icmp ne i8* %120, null, !dbg !1030
  br i1 %121, label %122, label %154, !dbg !1032

122:                                              ; preds = %119
  %123 = load i8*, i8** @apart, align 8, !dbg !1033, !tbaa !315
  %124 = call i8* @strtok(i8* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %124, metadata !901, metadata !DIExpression()), !dbg !906
  %125 = call i32 @is_pattern(i8* %124, i32* %3, i32* %4), !dbg !1036
  %126 = icmp ne i32 %125, 0, !dbg !1036
  br i1 %126, label %127, label %132, !dbg !1038

127:                                              ; preds = %122
  %128 = call i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %124), !dbg !1039
  %129 = icmp ne i32 %128, 0, !dbg !1039
  br i1 %129, label %130, label %131, !dbg !1042

130:                                              ; preds = %127
  br label %156, !dbg !1043

131:                                              ; preds = %127
  br label %135, !dbg !1044

132:                                              ; preds = %122
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1045, !tbaa !315
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)), !dbg !1047
  br label %156, !dbg !1048

135:                                              ; preds = %131
  %136 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1049
  call void @llvm.dbg.value(metadata i8* %136, metadata !901, metadata !DIExpression()), !dbg !906
  %137 = icmp ne i8* %136, null, !dbg !1050
  br i1 %137, label %.lr.ph6, label %153, !dbg !1050

.lr.ph6:                                          ; preds = %135
  br label %138, !dbg !1050

138:                                              ; preds = %.lr.ph6, %150
  %139 = phi i8* [ %136, %.lr.ph6 ], [ %151, %150 ]
  %140 = call i32 @is_pattern(i8* %139, i32* %3, i32* %4), !dbg !1051
  %141 = icmp ne i32 %140, 0, !dbg !1051
  br i1 %141, label %142, label %147, !dbg !1054

142:                                              ; preds = %138
  %143 = call i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %139), !dbg !1055
  %144 = icmp ne i32 %143, 0, !dbg !1055
  br i1 %144, label %145, label %146, !dbg !1058

145:                                              ; preds = %142
  br label %156, !dbg !1059

146:                                              ; preds = %142
  br label %150, !dbg !1060

147:                                              ; preds = %138
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1061, !tbaa !315
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)), !dbg !1063
  br label %156, !dbg !1064

150:                                              ; preds = %146
  %151 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1049
  call void @llvm.dbg.value(metadata i8* %151, metadata !901, metadata !DIExpression()), !dbg !906
  %152 = icmp ne i8* %151, null, !dbg !1050
  br i1 %152, label %138, label %._crit_edge7, !dbg !1050, !llvm.loop !1065

._crit_edge7:                                     ; preds = %150
  br label %153, !dbg !1050

153:                                              ; preds = %._crit_edge7, %135
  br label %155, !dbg !1067

154:                                              ; preds = %119
  br label %156, !dbg !1068

155:                                              ; preds = %153
  br label %156, !dbg !1069

156:                                              ; preds = %155, %154, %147, %145, %132, %130, %117, %73
  %.0 = phi i32 [ 1, %130 ], [ 1, %145 ], [ 0, %147 ], [ 0, %155 ], [ 0, %132 ], [ 1, %154 ], [ 0, %117 ], [ 0, %73 ], !dbg !906
  %157 = bitcast i32* %4 to i8*, !dbg !1070
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %157) #8, !dbg !1070
  %158 = bitcast i32* %3 to i8*, !dbg !1070
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %158) #8, !dbg !1070
  ret i32 %.0, !dbg !1070
}

; Function Attrs: nounwind uwtable
define dso_local void @set_attr_if(%struct.molecule_t* %0, i32 %1, i32 %2) #0 !dbg !1071 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1075, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 %1, metadata !1076, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 %2, metadata !1077, metadata !DIExpression()), !dbg !1083
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1084
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1084, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1080, metadata !DIExpression()), !dbg !1083
  %6 = icmp ne %struct.strand_t* %5, null, !dbg !1086
  br i1 %6, label %.lr.ph12, label %72, !dbg !1086

.lr.ph12:                                         ; preds = %3
  br label %7, !dbg !1086

7:                                                ; preds = %.lr.ph12, %68
  %.010 = phi %struct.strand_t* [ %5, %.lr.ph12 ], [ %70, %68 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.010, metadata !1080, metadata !DIExpression()), !dbg !1083
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !1087
  %9 = load i32, i32* %8, align 4, !dbg !1087, !tbaa !300
  %10 = and i32 %9, %2, !dbg !1090
  %11 = icmp ne i32 %10, 0, !dbg !1090
  br i1 %11, label %12, label %13, !dbg !1091

12:                                               ; preds = %7
  br label %14, !dbg !1091

13:                                               ; preds = %7
  br label %14, !dbg !1091

14:                                               ; preds = %13, %12
  %15 = phi i32 [ %1, %12 ], [ 0, %13 ], !dbg !1091
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !1092
  %17 = load i32, i32* %16, align 4, !dbg !1093, !tbaa !300
  %18 = or i32 %17, %15, !dbg !1093
  store i32 %18, i32* %16, align 4, !dbg !1093, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !1079, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 0, metadata !1079, metadata !DIExpression()), !dbg !1083
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5, !dbg !1094
  %20 = load i32, i32* %19, align 8, !dbg !1094, !tbaa !308
  %21 = sext i32 %20 to i64, !dbg !1097
  %22 = icmp slt i64 0, %21, !dbg !1097
  br i1 %22, label %.lr.ph8, label %67, !dbg !1098

.lr.ph8:                                          ; preds = %14
  br label %23, !dbg !1098

23:                                               ; preds = %.lr.ph8, %63
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %63 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !1079, metadata !DIExpression()), !dbg !1083
  %24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7, !dbg !1099
  %25 = load %struct.residue_t**, %struct.residue_t*** %24, align 8, !dbg !1099, !tbaa !313
  %26 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %25, i64 %indvars.iv36, !dbg !1101
  %27 = load %struct.residue_t*, %struct.residue_t** %26, align 8, !dbg !1101, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %27, metadata !1081, metadata !DIExpression()), !dbg !1083
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %27, i32 0, i32 6, !dbg !1102
  %29 = load i32, i32* %28, align 8, !dbg !1102, !tbaa !318
  %30 = and i32 %29, %2, !dbg !1103
  %31 = icmp ne i32 %30, 0, !dbg !1103
  br i1 %31, label %32, label %33, !dbg !1104

32:                                               ; preds = %23
  br label %34, !dbg !1104

33:                                               ; preds = %23
  br label %34, !dbg !1104

34:                                               ; preds = %33, %32
  %35 = phi i32 [ %1, %32 ], [ 0, %33 ], !dbg !1104
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %27, i32 0, i32 6, !dbg !1105
  %37 = load i32, i32* %36, align 8, !dbg !1106, !tbaa !318
  %38 = or i32 %37, %35, !dbg !1106
  store i32 %38, i32* %36, align 8, !dbg !1106, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !1078, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 0, metadata !1078, metadata !DIExpression()), !dbg !1083
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %27, i32 0, i32 15, !dbg !1107
  %40 = load i32, i32* %39, align 8, !dbg !1107, !tbaa !326
  %41 = sext i32 %40 to i64, !dbg !1110
  %42 = icmp slt i64 0, %41, !dbg !1110
  br i1 %42, label %.lr.ph, label %62, !dbg !1111

.lr.ph:                                           ; preds = %34
  br label %43, !dbg !1111

43:                                               ; preds = %.lr.ph, %58
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %58 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !1078, metadata !DIExpression()), !dbg !1083
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %27, i32 0, i32 17, !dbg !1112
  %45 = load %struct.atom_t*, %struct.atom_t** %44, align 8, !dbg !1112, !tbaa !331
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i64 %indvars.iv5, !dbg !1114
  call void @llvm.dbg.value(metadata %struct.atom_t* %46, metadata !1082, metadata !DIExpression()), !dbg !1083
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i32 0, i32 2, !dbg !1115
  %48 = load i32, i32* %47, align 8, !dbg !1115, !tbaa !335
  %49 = and i32 %48, %2, !dbg !1116
  %50 = icmp ne i32 %49, 0, !dbg !1116
  br i1 %50, label %51, label %52, !dbg !1117

51:                                               ; preds = %43
  br label %53, !dbg !1117

52:                                               ; preds = %43
  br label %53, !dbg !1117

53:                                               ; preds = %52, %51
  %54 = phi i32 [ %1, %51 ], [ 0, %52 ], !dbg !1117
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i32 0, i32 2, !dbg !1118
  %56 = load i32, i32* %55, align 8, !dbg !1119, !tbaa !335
  %57 = or i32 %56, %54, !dbg !1119
  store i32 %57, i32* %55, align 8, !dbg !1119, !tbaa !335
  br label %58, !dbg !1120

58:                                               ; preds = %53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1078, metadata !DIExpression()), !dbg !1083
  %59 = load i32, i32* %39, align 8, !dbg !1107, !tbaa !326
  %60 = sext i32 %59 to i64, !dbg !1110
  %61 = icmp slt i64 %indvars.iv.next, %60, !dbg !1110
  br i1 %61, label %43, label %._crit_edge, !dbg !1111, !llvm.loop !1122

._crit_edge:                                      ; preds = %58
  br label %62, !dbg !1111

62:                                               ; preds = %._crit_edge, %34
  br label %63, !dbg !1124

63:                                               ; preds = %62
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1, !dbg !1125
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !1079, metadata !DIExpression()), !dbg !1083
  %64 = load i32, i32* %19, align 8, !dbg !1094, !tbaa !308
  %65 = sext i32 %64 to i64, !dbg !1097
  %66 = icmp slt i64 %indvars.iv.next4, %65, !dbg !1097
  br i1 %66, label %23, label %._crit_edge9, !dbg !1098, !llvm.loop !1126

._crit_edge9:                                     ; preds = %63
  br label %67, !dbg !1098

67:                                               ; preds = %._crit_edge9, %14
  br label %68, !dbg !1128

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4, !dbg !1129
  %70 = load %struct.strand_t*, %struct.strand_t** %69, align 8, !dbg !1129, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %70, metadata !1080, metadata !DIExpression()), !dbg !1083
  %71 = icmp ne %struct.strand_t* %70, null, !dbg !1086
  br i1 %71, label %7, label %._crit_edge13, !dbg !1086, !llvm.loop !1130

._crit_edge13:                                    ; preds = %68
  br label %72, !dbg !1086

72:                                               ; preds = %._crit_edge13, %3
  ret void, !dbg !1132
}

; Function Attrs: nounwind uwtable
define dso_local void @clear_attr(%struct.molecule_t* %0, i32 %1) #0 !dbg !1133 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1137, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i32 %1, metadata !1138, metadata !DIExpression()), !dbg !1143
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1144
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1144, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %4, metadata !1141, metadata !DIExpression()), !dbg !1143
  %5 = icmp ne %struct.strand_t* %4, null, !dbg !1146
  br i1 %5, label %.lr.ph12, label %50, !dbg !1146

.lr.ph12:                                         ; preds = %2
  br label %6, !dbg !1146

6:                                                ; preds = %.lr.ph12, %46
  %.010 = phi %struct.strand_t* [ %4, %.lr.ph12 ], [ %48, %46 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.010, metadata !1141, metadata !DIExpression()), !dbg !1143
  %7 = xor i32 %1, -1, !dbg !1147
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !1150
  %9 = load i32, i32* %8, align 4, !dbg !1151, !tbaa !300
  %10 = and i32 %9, %7, !dbg !1151
  store i32 %10, i32* %8, align 4, !dbg !1151, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !1140, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 0, metadata !1140, metadata !DIExpression()), !dbg !1143
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5, !dbg !1152
  %12 = load i32, i32* %11, align 8, !dbg !1152, !tbaa !308
  %13 = sext i32 %12 to i64, !dbg !1155
  %14 = icmp slt i64 0, %13, !dbg !1155
  br i1 %14, label %.lr.ph8, label %45, !dbg !1156

.lr.ph8:                                          ; preds = %6
  br label %15, !dbg !1156

15:                                               ; preds = %.lr.ph8, %41
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %41 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !1140, metadata !DIExpression()), !dbg !1143
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7, !dbg !1157
  %17 = load %struct.residue_t**, %struct.residue_t*** %16, align 8, !dbg !1157, !tbaa !313
  %18 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %17, i64 %indvars.iv36, !dbg !1159
  %19 = load %struct.residue_t*, %struct.residue_t** %18, align 8, !dbg !1159, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %19, metadata !1142, metadata !DIExpression()), !dbg !1143
  %20 = xor i32 %1, -1, !dbg !1160
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i32 0, i32 6, !dbg !1161
  %22 = load i32, i32* %21, align 8, !dbg !1162, !tbaa !318
  %23 = and i32 %22, %20, !dbg !1162
  store i32 %23, i32* %21, align 8, !dbg !1162, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !1139, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 0, metadata !1139, metadata !DIExpression()), !dbg !1143
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i32 0, i32 15, !dbg !1163
  %25 = load i32, i32* %24, align 8, !dbg !1163, !tbaa !326
  %26 = sext i32 %25 to i64, !dbg !1166
  %27 = icmp slt i64 0, %26, !dbg !1166
  br i1 %27, label %.lr.ph, label %40, !dbg !1167

.lr.ph:                                           ; preds = %15
  br label %28, !dbg !1167

28:                                               ; preds = %.lr.ph, %36
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %36 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !1139, metadata !DIExpression()), !dbg !1143
  %29 = xor i32 %1, -1, !dbg !1168
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i32 0, i32 17, !dbg !1169
  %31 = load %struct.atom_t*, %struct.atom_t** %30, align 8, !dbg !1169, !tbaa !331
  %32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %31, i64 %indvars.iv5, !dbg !1170
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i32 0, i32 2, !dbg !1171
  %34 = load i32, i32* %33, align 8, !dbg !1172, !tbaa !335
  %35 = and i32 %34, %29, !dbg !1172
  store i32 %35, i32* %33, align 8, !dbg !1172, !tbaa !335
  br label %36, !dbg !1170

36:                                               ; preds = %28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1139, metadata !DIExpression()), !dbg !1143
  %37 = load i32, i32* %24, align 8, !dbg !1163, !tbaa !326
  %38 = sext i32 %37 to i64, !dbg !1166
  %39 = icmp slt i64 %indvars.iv.next, %38, !dbg !1166
  br i1 %39, label %28, label %._crit_edge, !dbg !1167, !llvm.loop !1174

._crit_edge:                                      ; preds = %36
  br label %40, !dbg !1167

40:                                               ; preds = %._crit_edge, %15
  br label %41, !dbg !1176

41:                                               ; preds = %40
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1, !dbg !1177
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !1140, metadata !DIExpression()), !dbg !1143
  %42 = load i32, i32* %11, align 8, !dbg !1152, !tbaa !308
  %43 = sext i32 %42 to i64, !dbg !1155
  %44 = icmp slt i64 %indvars.iv.next4, %43, !dbg !1155
  br i1 %44, label %15, label %._crit_edge9, !dbg !1156, !llvm.loop !1178

._crit_edge9:                                     ; preds = %41
  br label %45, !dbg !1156

45:                                               ; preds = %._crit_edge9, %6
  br label %46, !dbg !1180

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4, !dbg !1181
  %48 = load %struct.strand_t*, %struct.strand_t** %47, align 8, !dbg !1181, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %48, metadata !1141, metadata !DIExpression()), !dbg !1143
  %49 = icmp ne %struct.strand_t* %48, null, !dbg !1146
  br i1 %49, label %6, label %._crit_edge13, !dbg !1146, !llvm.loop !1182

._crit_edge13:                                    ; preds = %46
  br label %50, !dbg !1146

50:                                               ; preds = %._crit_edge13, %2
  ret void, !dbg !1184
}

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @is_pattern(i8* %0, i32* %1, i32* %2) #0 !dbg !1185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1190, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32* %1, metadata !1191, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32* %2, metadata !1192, metadata !DIExpression()), !dbg !1195
  %4 = call i16** @__ctype_b_loc() #9, !dbg !1196
  %5 = load i16*, i16** %4, align 8, !dbg !1196, !tbaa !315
  %6 = load i8, i8* %0, align 1, !dbg !1196, !tbaa !440
  %7 = sext i8 %6 to i32, !dbg !1196
  %8 = sext i32 %7 to i64, !dbg !1196
  %9 = getelementptr inbounds i16, i16* %5, i64 %8, !dbg !1196
  %10 = load i16, i16* %9, align 2, !dbg !1196, !tbaa !1198
  %11 = zext i16 %10 to i32, !dbg !1196
  %12 = and i32 %11, 2048, !dbg !1196
  %13 = icmp ne i32 %12, 0, !dbg !1196
  br i1 %13, label %19, label %14, !dbg !1200

14:                                               ; preds = %3
  %15 = load i8, i8* %0, align 1, !dbg !1201, !tbaa !440
  %16 = sext i8 %15 to i32, !dbg !1201
  %17 = icmp ne i32 %16, 45, !dbg !1202
  br i1 %17, label %18, label %19, !dbg !1203

18:                                               ; preds = %14
  br label %168, !dbg !1204

19:                                               ; preds = %14, %3
  %20 = call i16** @__ctype_b_loc() #9, !dbg !1205
  %21 = load i16*, i16** %20, align 8, !dbg !1205, !tbaa !315
  %22 = load i8, i8* %0, align 1, !dbg !1205, !tbaa !440
  %23 = sext i8 %22 to i32, !dbg !1205
  %24 = sext i32 %23 to i64, !dbg !1205
  %25 = getelementptr inbounds i16, i16* %21, i64 %24, !dbg !1205
  %26 = load i16, i16* %25, align 2, !dbg !1205, !tbaa !1198
  %27 = zext i16 %26 to i32, !dbg !1205
  %28 = and i32 %27, 2048, !dbg !1205
  %29 = icmp ne i32 %28, 0, !dbg !1205
  br i1 %29, label %30, label %118, !dbg !1207

30:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !1193, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8* %0, metadata !1194, metadata !DIExpression()), !dbg !1195
  %31 = call i16** @__ctype_b_loc() #9, !dbg !1208
  %32 = load i16*, i16** %31, align 8, !dbg !1208, !tbaa !315
  %33 = load i8, i8* %0, align 1, !dbg !1208, !tbaa !440
  %34 = sext i8 %33 to i32, !dbg !1208
  %35 = sext i32 %34 to i64, !dbg !1208
  %36 = getelementptr inbounds i16, i16* %32, i64 %35, !dbg !1208
  %37 = load i16, i16* %36, align 2, !dbg !1208, !tbaa !1198
  %38 = zext i16 %37 to i32, !dbg !1208
  %39 = and i32 %38, 2048, !dbg !1208
  %40 = icmp ne i32 %39, 0, !dbg !1212
  br i1 %40, label %.lr.ph11, label %58, !dbg !1212

.lr.ph11:                                         ; preds = %30
  br label %41, !dbg !1212

41:                                               ; preds = %.lr.ph11, %47
  %.019 = phi i8* [ %0, %.lr.ph11 ], [ %48, %47 ]
  %.028 = phi i32 [ 0, %.lr.ph11 ], [ %46, %47 ]
  call void @llvm.dbg.value(metadata i8* %.019, metadata !1194, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 %.028, metadata !1193, metadata !DIExpression()), !dbg !1195
  %42 = mul nsw i32 10, %.028, !dbg !1213
  %43 = load i8, i8* %.019, align 1, !dbg !1214, !tbaa !440
  %44 = sext i8 %43 to i32, !dbg !1214
  %45 = add nsw i32 %42, %44, !dbg !1215
  %46 = sub nsw i32 %45, 48, !dbg !1216
  call void @llvm.dbg.value(metadata i32 %46, metadata !1193, metadata !DIExpression()), !dbg !1195
  br label %47, !dbg !1217

47:                                               ; preds = %41
  %48 = getelementptr inbounds i8, i8* %.019, i32 1, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %48, metadata !1194, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 %46, metadata !1193, metadata !DIExpression()), !dbg !1195
  %49 = load i16*, i16** %31, align 8, !dbg !1208, !tbaa !315
  %50 = load i8, i8* %48, align 1, !dbg !1208, !tbaa !440
  %51 = sext i8 %50 to i32, !dbg !1208
  %52 = sext i32 %51 to i64, !dbg !1208
  %53 = getelementptr inbounds i16, i16* %49, i64 %52, !dbg !1208
  %54 = load i16, i16* %53, align 2, !dbg !1208, !tbaa !1198
  %55 = zext i16 %54 to i32, !dbg !1208
  %56 = and i32 %55, 2048, !dbg !1208
  %57 = icmp ne i32 %56, 0, !dbg !1212
  br i1 %57, label %41, label %._crit_edge12, !dbg !1212, !llvm.loop !1219

._crit_edge12:                                    ; preds = %47
  %split13 = phi i32 [ %46, %47 ]
  %split14 = phi i8* [ %48, %47 ]
  br label %58, !dbg !1212

58:                                               ; preds = %._crit_edge12, %30
  %.02.lcssa = phi i32 [ %split13, %._crit_edge12 ], [ 0, %30 ], !dbg !1221
  %.01.lcssa = phi i8* [ %split14, %._crit_edge12 ], [ %0, %30 ], !dbg !1221
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !1193, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8* %.01.lcssa, metadata !1194, metadata !DIExpression()), !dbg !1195
  store i32 %.02.lcssa, i32* %1, align 4, !dbg !1222, !tbaa !652
  %59 = load i8, i8* %.01.lcssa, align 1, !dbg !1223, !tbaa !440
  %60 = icmp ne i8 %59, 0, !dbg !1223
  br i1 %60, label %63, label %61, !dbg !1225

61:                                               ; preds = %58
  %62 = load i32, i32* %1, align 4, !dbg !1226, !tbaa !652
  store i32 %62, i32* %2, align 4, !dbg !1228, !tbaa !652
  br label %168, !dbg !1229

63:                                               ; preds = %58
  %64 = load i8, i8* %.01.lcssa, align 1, !dbg !1230, !tbaa !440
  %65 = sext i8 %64 to i32, !dbg !1230
  %66 = icmp eq i32 %65, 45, !dbg !1232
  br i1 %66, label %67, label %69, !dbg !1233

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, i8* %.01.lcssa, i32 1, !dbg !1234
  call void @llvm.dbg.value(metadata i8* %68, metadata !1194, metadata !DIExpression()), !dbg !1195
  br label %69, !dbg !1235

69:                                               ; preds = %67, %63
  %.1 = phi i8* [ %68, %67 ], [ %.01.lcssa, %63 ], !dbg !1236
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1194, metadata !DIExpression()), !dbg !1195
  br label %70

70:                                               ; preds = %69
  %71 = load i8, i8* %.1, align 1, !dbg !1237, !tbaa !440
  %72 = icmp ne i8 %71, 0, !dbg !1237
  br i1 %72, label %74, label %73, !dbg !1239

73:                                               ; preds = %70
  store i32 -1, i32* %2, align 4, !dbg !1240, !tbaa !652
  br label %168, !dbg !1242

74:                                               ; preds = %70
  %75 = call i16** @__ctype_b_loc() #9, !dbg !1243
  %76 = load i16*, i16** %75, align 8, !dbg !1243, !tbaa !315
  %77 = load i8, i8* %.1, align 1, !dbg !1243, !tbaa !440
  %78 = sext i8 %77 to i32, !dbg !1243
  %79 = sext i32 %78 to i64, !dbg !1243
  %80 = getelementptr inbounds i16, i16* %76, i64 %79, !dbg !1243
  %81 = load i16, i16* %80, align 2, !dbg !1243, !tbaa !1198
  %82 = zext i16 %81 to i32, !dbg !1243
  %83 = and i32 %82, 2048, !dbg !1243
  %84 = icmp ne i32 %83, 0, !dbg !1243
  br i1 %84, label %86, label %85, !dbg !1245

85:                                               ; preds = %74
  br label %168, !dbg !1246

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86
  call void @llvm.dbg.value(metadata i32 0, metadata !1193, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1194, metadata !DIExpression()), !dbg !1195
  %88 = call i16** @__ctype_b_loc() #9, !dbg !1247
  %89 = load i16*, i16** %88, align 8, !dbg !1247, !tbaa !315
  %90 = load i8, i8* %.1, align 1, !dbg !1247, !tbaa !440
  %91 = sext i8 %90 to i32, !dbg !1247
  %92 = sext i32 %91 to i64, !dbg !1247
  %93 = getelementptr inbounds i16, i16* %89, i64 %92, !dbg !1247
  %94 = load i16, i16* %93, align 2, !dbg !1247, !tbaa !1198
  %95 = zext i16 %94 to i32, !dbg !1247
  %96 = and i32 %95, 2048, !dbg !1247
  %97 = icmp ne i32 %96, 0, !dbg !1250
  br i1 %97, label %.lr.ph18, label %115, !dbg !1250

.lr.ph18:                                         ; preds = %87
  br label %98, !dbg !1250

98:                                               ; preds = %.lr.ph18, %104
  %.216 = phi i8* [ %.1, %.lr.ph18 ], [ %105, %104 ]
  %.1315 = phi i32 [ 0, %.lr.ph18 ], [ %103, %104 ]
  call void @llvm.dbg.value(metadata i8* %.216, metadata !1194, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 %.1315, metadata !1193, metadata !DIExpression()), !dbg !1195
  %99 = mul nsw i32 10, %.1315, !dbg !1251
  %100 = load i8, i8* %.216, align 1, !dbg !1252, !tbaa !440
  %101 = sext i8 %100 to i32, !dbg !1252
  %102 = add nsw i32 %99, %101, !dbg !1253
  %103 = sub nsw i32 %102, 48, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %103, metadata !1193, metadata !DIExpression()), !dbg !1195
  br label %104, !dbg !1255

104:                                              ; preds = %98
  %105 = getelementptr inbounds i8, i8* %.216, i32 1, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %105, metadata !1194, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 %103, metadata !1193, metadata !DIExpression()), !dbg !1195
  %106 = load i16*, i16** %88, align 8, !dbg !1247, !tbaa !315
  %107 = load i8, i8* %105, align 1, !dbg !1247, !tbaa !440
  %108 = sext i8 %107 to i32, !dbg !1247
  %109 = sext i32 %108 to i64, !dbg !1247
  %110 = getelementptr inbounds i16, i16* %106, i64 %109, !dbg !1247
  %111 = load i16, i16* %110, align 2, !dbg !1247, !tbaa !1198
  %112 = zext i16 %111 to i32, !dbg !1247
  %113 = and i32 %112, 2048, !dbg !1247
  %114 = icmp ne i32 %113, 0, !dbg !1250
  br i1 %114, label %98, label %._crit_edge19, !dbg !1250, !llvm.loop !1257

._crit_edge19:                                    ; preds = %104
  %split20 = phi i32 [ %103, %104 ]
  %split21 = phi i8* [ %105, %104 ]
  br label %115, !dbg !1250

115:                                              ; preds = %._crit_edge19, %87
  %.13.lcssa = phi i32 [ %split20, %._crit_edge19 ], [ 0, %87 ], !dbg !1259
  %.2.lcssa = phi i8* [ %split21, %._crit_edge19 ], [ %.1, %87 ], !dbg !1236
  call void @llvm.dbg.value(metadata i32 %.13.lcssa, metadata !1193, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8* %.2.lcssa, metadata !1194, metadata !DIExpression()), !dbg !1195
  store i32 %.13.lcssa, i32* %2, align 4, !dbg !1260, !tbaa !652
  %116 = load i8, i8* %.2.lcssa, align 1, !dbg !1261, !tbaa !440
  %117 = sext i8 %116 to i32, !dbg !1262
  br label %168, !dbg !1263

118:                                              ; preds = %19
  store i32 1, i32* %1, align 4, !dbg !1264, !tbaa !652
  %119 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %119, metadata !1194, metadata !DIExpression()), !dbg !1195
  br label %120

120:                                              ; preds = %118
  %121 = load i8, i8* %119, align 1, !dbg !1267, !tbaa !440
  %122 = icmp ne i8 %121, 0, !dbg !1267
  br i1 %122, label %124, label %123, !dbg !1269

123:                                              ; preds = %120
  store i32 -1, i32* %2, align 4, !dbg !1270, !tbaa !652
  br label %168, !dbg !1272

124:                                              ; preds = %120
  %125 = call i16** @__ctype_b_loc() #9, !dbg !1273
  %126 = load i16*, i16** %125, align 8, !dbg !1273, !tbaa !315
  %127 = load i8, i8* %119, align 1, !dbg !1273, !tbaa !440
  %128 = sext i8 %127 to i32, !dbg !1273
  %129 = sext i32 %128 to i64, !dbg !1273
  %130 = getelementptr inbounds i16, i16* %126, i64 %129, !dbg !1273
  %131 = load i16, i16* %130, align 2, !dbg !1273, !tbaa !1198
  %132 = zext i16 %131 to i32, !dbg !1273
  %133 = and i32 %132, 2048, !dbg !1273
  %134 = icmp ne i32 %133, 0, !dbg !1273
  br i1 %134, label %135, label %166, !dbg !1275

135:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i32 0, metadata !1193, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8* %119, metadata !1194, metadata !DIExpression()), !dbg !1195
  %136 = call i16** @__ctype_b_loc() #9, !dbg !1276
  %137 = load i16*, i16** %136, align 8, !dbg !1276, !tbaa !315
  %138 = load i8, i8* %119, align 1, !dbg !1276, !tbaa !440
  %139 = sext i8 %138 to i32, !dbg !1276
  %140 = sext i32 %139 to i64, !dbg !1276
  %141 = getelementptr inbounds i16, i16* %137, i64 %140, !dbg !1276
  %142 = load i16, i16* %141, align 2, !dbg !1276, !tbaa !1198
  %143 = zext i16 %142 to i32, !dbg !1276
  %144 = and i32 %143, 2048, !dbg !1276
  %145 = icmp ne i32 %144, 0, !dbg !1280
  br i1 %145, label %.lr.ph, label %163, !dbg !1280

.lr.ph:                                           ; preds = %135
  br label %146, !dbg !1280

146:                                              ; preds = %.lr.ph, %152
  %.36 = phi i8* [ %119, %.lr.ph ], [ %153, %152 ]
  %.245 = phi i32 [ 0, %.lr.ph ], [ %151, %152 ]
  call void @llvm.dbg.value(metadata i8* %.36, metadata !1194, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 %.245, metadata !1193, metadata !DIExpression()), !dbg !1195
  %147 = mul nsw i32 10, %.245, !dbg !1281
  %148 = load i8, i8* %.36, align 1, !dbg !1282, !tbaa !440
  %149 = sext i8 %148 to i32, !dbg !1282
  %150 = add nsw i32 %147, %149, !dbg !1283
  %151 = sub nsw i32 %150, 48, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %151, metadata !1193, metadata !DIExpression()), !dbg !1195
  br label %152, !dbg !1285

152:                                              ; preds = %146
  %153 = getelementptr inbounds i8, i8* %.36, i32 1, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %153, metadata !1194, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 %151, metadata !1193, metadata !DIExpression()), !dbg !1195
  %154 = load i16*, i16** %136, align 8, !dbg !1276, !tbaa !315
  %155 = load i8, i8* %153, align 1, !dbg !1276, !tbaa !440
  %156 = sext i8 %155 to i32, !dbg !1276
  %157 = sext i32 %156 to i64, !dbg !1276
  %158 = getelementptr inbounds i16, i16* %154, i64 %157, !dbg !1276
  %159 = load i16, i16* %158, align 2, !dbg !1276, !tbaa !1198
  %160 = zext i16 %159 to i32, !dbg !1276
  %161 = and i32 %160, 2048, !dbg !1276
  %162 = icmp ne i32 %161, 0, !dbg !1280
  br i1 %162, label %146, label %._crit_edge, !dbg !1280, !llvm.loop !1287

._crit_edge:                                      ; preds = %152
  %split = phi i32 [ %151, %152 ]
  %split7 = phi i8* [ %153, %152 ]
  br label %163, !dbg !1280

163:                                              ; preds = %._crit_edge, %135
  %.24.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %135 ], !dbg !1289
  %.3.lcssa = phi i8* [ %split7, %._crit_edge ], [ %119, %135 ], !dbg !1195
  call void @llvm.dbg.value(metadata i32 %.24.lcssa, metadata !1193, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8* %.3.lcssa, metadata !1194, metadata !DIExpression()), !dbg !1195
  store i32 %.24.lcssa, i32* %2, align 4, !dbg !1290, !tbaa !652
  %164 = load i8, i8* %.3.lcssa, align 1, !dbg !1291, !tbaa !440
  %165 = sext i8 %164 to i32, !dbg !1292
  br label %168, !dbg !1293

166:                                              ; preds = %124
  br label %167

167:                                              ; preds = %166
  br label %168, !dbg !1294

168:                                              ; preds = %167, %163, %123, %115, %85, %73, %61, %18
  %.0 = phi i32 [ %117, %115 ], [ 1, %85 ], [ 0, %73 ], [ 0, %61 ], [ %165, %163 ], [ 0, %167 ], [ 0, %123 ], [ 1, %18 ], !dbg !1195
  ret i32 %.0, !dbg !1295
}

; Function Attrs: nounwind uwtable
define internal void @match_str_pat(%struct.molecule_t* %0, i8* %1) #0 !dbg !1296 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1300, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %1, metadata !1301, metadata !DIExpression()), !dbg !1303
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1304
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !1305
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1306
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1306, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1302, metadata !DIExpression()), !dbg !1303
  %6 = icmp ne %struct.strand_t* %5, null, !dbg !1308
  br i1 %6, label %.lr.ph, label %21, !dbg !1308

.lr.ph:                                           ; preds = %2
  br label %7, !dbg !1308

7:                                                ; preds = %.lr.ph, %17
  %.01 = phi %struct.strand_t* [ %5, %.lr.ph ], [ %19, %17 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !1302, metadata !DIExpression()), !dbg !1303
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 0, !dbg !1309
  %9 = load i8*, i8** %8, align 8, !dbg !1309, !tbaa !1312
  %10 = call i32 @step(i8* %9, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !1313
  %11 = icmp ne i32 %10, 0, !dbg !1313
  %12 = zext i1 %11 to i64, !dbg !1313
  %13 = select i1 %11, i32 1, i32 0, !dbg !1313
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 2, !dbg !1314
  %15 = load i32, i32* %14, align 4, !dbg !1315, !tbaa !300
  %16 = or i32 %15, %13, !dbg !1315
  store i32 %16, i32* %14, align 4, !dbg !1315, !tbaa !300
  br label %17, !dbg !1316

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 4, !dbg !1317
  %19 = load %struct.strand_t*, %struct.strand_t** %18, align 8, !dbg !1317, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %19, metadata !1302, metadata !DIExpression()), !dbg !1303
  %20 = icmp ne %struct.strand_t* %19, null, !dbg !1308
  br i1 %20, label %7, label %._crit_edge, !dbg !1308, !llvm.loop !1318

._crit_edge:                                      ; preds = %17
  br label %21, !dbg !1308

21:                                               ; preds = %._crit_edge, %2
  ret void, !dbg !1320
}

; Function Attrs: nounwind uwtable
define internal void @match_str_range(%struct.molecule_t* %0, i32 %1, i32 %2) #0 !dbg !1321 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1323, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %1, metadata !1324, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %2, metadata !1325, metadata !DIExpression()), !dbg !1328
  %4 = icmp eq i32 %2, -1, !dbg !1329
  br i1 %4, label %5, label %8, !dbg !1331

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1, !dbg !1332
  %7 = load i32, i32* %6, align 8, !dbg !1332, !tbaa !1333
  call void @llvm.dbg.value(metadata i32 %7, metadata !1325, metadata !DIExpression()), !dbg !1328
  br label %8, !dbg !1334

8:                                                ; preds = %5, %3
  %.02 = phi i32 [ %7, %5 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1325, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 1, metadata !1326, metadata !DIExpression()), !dbg !1328
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1335
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1335, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %10, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 1, metadata !1326, metadata !DIExpression()), !dbg !1328
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1, !dbg !1337
  %12 = load i32, i32* %11, align 8, !dbg !1337, !tbaa !1333
  %13 = icmp sle i32 1, %12, !dbg !1339
  br i1 %13, label %.lr.ph, label %29, !dbg !1340

.lr.ph:                                           ; preds = %8
  br label %14, !dbg !1340

14:                                               ; preds = %.lr.ph, %23
  %.04 = phi %struct.strand_t* [ %10, %.lr.ph ], [ %26, %23 ]
  %.013 = phi i32 [ 1, %.lr.ph ], [ %24, %23 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.04, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %.013, metadata !1326, metadata !DIExpression()), !dbg !1328
  %15 = icmp sle i32 %1, %.013, !dbg !1341
  br i1 %15, label %16, label %22, !dbg !1344

16:                                               ; preds = %14
  %17 = icmp sle i32 %.013, %.02, !dbg !1345
  br i1 %17, label %18, label %22, !dbg !1346

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i32 0, i32 2, !dbg !1347
  %20 = load i32, i32* %19, align 4, !dbg !1348, !tbaa !300
  %21 = or i32 %20, 1, !dbg !1348
  store i32 %21, i32* %19, align 4, !dbg !1348, !tbaa !300
  br label %22, !dbg !1349

22:                                               ; preds = %18, %16, %14
  br label %23, !dbg !1350

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.013, 1, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %24, metadata !1326, metadata !DIExpression()), !dbg !1328
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i32 0, i32 4, !dbg !1352
  %26 = load %struct.strand_t*, %struct.strand_t** %25, align 8, !dbg !1352, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %26, metadata !1327, metadata !DIExpression()), !dbg !1328
  %27 = load i32, i32* %11, align 8, !dbg !1337, !tbaa !1333
  %28 = icmp sle i32 %24, %27, !dbg !1339
  br i1 %28, label %14, label %._crit_edge, !dbg !1340, !llvm.loop !1353

._crit_edge:                                      ; preds = %23
  br label %29, !dbg !1340

29:                                               ; preds = %._crit_edge, %8
  ret void, !dbg !1355
}

; Function Attrs: nounwind uwtable
define internal void @match_res_pat(%struct.molecule_t* %0, i8* %1) #0 !dbg !1356 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1358, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %1, metadata !1359, metadata !DIExpression()), !dbg !1363
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1364
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !1365
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1366
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1366, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1361, metadata !DIExpression()), !dbg !1363
  %6 = icmp ne %struct.strand_t* %5, null, !dbg !1368
  br i1 %6, label %.lr.ph5, label %41, !dbg !1368

.lr.ph5:                                          ; preds = %2
  br label %7, !dbg !1368

7:                                                ; preds = %.lr.ph5, %37
  %.03 = phi %struct.strand_t* [ %5, %.lr.ph5 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03, metadata !1361, metadata !DIExpression()), !dbg !1363
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 2, !dbg !1369
  %9 = load i32, i32* %8, align 4, !dbg !1369, !tbaa !300
  %10 = and i32 1, %9, !dbg !1373
  %11 = icmp ne i32 %10, 0, !dbg !1373
  br i1 %11, label %12, label %36, !dbg !1374

12:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1360, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i64 0, metadata !1360, metadata !DIExpression()), !dbg !1363
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 5, !dbg !1375
  %14 = load i32, i32* %13, align 8, !dbg !1375, !tbaa !308
  %15 = sext i32 %14 to i64, !dbg !1379
  %16 = icmp slt i64 0, %15, !dbg !1379
  br i1 %16, label %.lr.ph, label %35, !dbg !1380

.lr.ph:                                           ; preds = %12
  br label %17, !dbg !1380

17:                                               ; preds = %.lr.ph, %31
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %31 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !1360, metadata !DIExpression()), !dbg !1363
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 7, !dbg !1381
  %19 = load %struct.residue_t**, %struct.residue_t*** %18, align 8, !dbg !1381, !tbaa !313
  %20 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %19, i64 %indvars.iv2, !dbg !1383
  %21 = load %struct.residue_t*, %struct.residue_t** %20, align 8, !dbg !1383, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %21, metadata !1362, metadata !DIExpression()), !dbg !1363
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 4, !dbg !1384
  %23 = load i8*, i8** %22, align 8, !dbg !1384, !tbaa !1385
  %24 = call i32 @step(i8* %23, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !1386
  %25 = icmp ne i32 %24, 0, !dbg !1386
  %26 = zext i1 %25 to i64, !dbg !1386
  %27 = select i1 %25, i32 1, i32 0, !dbg !1386
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 6, !dbg !1387
  %29 = load i32, i32* %28, align 8, !dbg !1388, !tbaa !318
  %30 = or i32 %29, %27, !dbg !1388
  store i32 %30, i32* %28, align 8, !dbg !1388, !tbaa !318
  br label %31, !dbg !1389

31:                                               ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1360, metadata !DIExpression()), !dbg !1363
  %32 = load i32, i32* %13, align 8, !dbg !1375, !tbaa !308
  %33 = sext i32 %32 to i64, !dbg !1379
  %34 = icmp slt i64 %indvars.iv.next, %33, !dbg !1379
  br i1 %34, label %17, label %._crit_edge, !dbg !1380, !llvm.loop !1391

._crit_edge:                                      ; preds = %31
  br label %35, !dbg !1380

35:                                               ; preds = %._crit_edge, %12
  br label %36, !dbg !1393

36:                                               ; preds = %35, %7
  br label %37, !dbg !1394

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 4, !dbg !1395
  %39 = load %struct.strand_t*, %struct.strand_t** %38, align 8, !dbg !1395, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %39, metadata !1361, metadata !DIExpression()), !dbg !1363
  %40 = icmp ne %struct.strand_t* %39, null, !dbg !1368
  br i1 %40, label %7, label %._crit_edge6, !dbg !1368, !llvm.loop !1396

._crit_edge6:                                     ; preds = %37
  br label %41, !dbg !1368

41:                                               ; preds = %._crit_edge6, %2
  ret void, !dbg !1398
}

; Function Attrs: nounwind uwtable
define internal void @match_res_range(%struct.molecule_t* %0, i32 %1, i32 %2) #0 !dbg !1399 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1401, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %1, metadata !1402, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %2, metadata !1403, metadata !DIExpression()), !dbg !1408
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1409
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1409, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1406, metadata !DIExpression()), !dbg !1408
  %6 = sext i32 %1 to i64, !dbg !1411
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1406, metadata !DIExpression()), !dbg !1408
  %7 = icmp ne %struct.strand_t* %5, null, !dbg !1412
  br i1 %7, label %.lr.ph5, label %49, !dbg !1412

.lr.ph5:                                          ; preds = %3
  br label %8, !dbg !1412

8:                                                ; preds = %.lr.ph5, %45
  %.03 = phi %struct.strand_t* [ %5, %.lr.ph5 ], [ %47, %45 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03, metadata !1406, metadata !DIExpression()), !dbg !1408
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 2, !dbg !1413
  %10 = load i32, i32* %9, align 4, !dbg !1413, !tbaa !300
  %11 = and i32 1, %10, !dbg !1417
  %12 = icmp ne i32 %11, 0, !dbg !1417
  br i1 %12, label %13, label %44, !dbg !1418

13:                                               ; preds = %8
  %14 = icmp eq i32 %2, -1, !dbg !1419
  br i1 %14, label %15, label %18, !dbg !1421

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 5, !dbg !1422
  %17 = load i32, i32* %16, align 8, !dbg !1422, !tbaa !308
  br label %19, !dbg !1421

18:                                               ; preds = %13
  br label %19, !dbg !1421

19:                                               ; preds = %18, %15
  %20 = phi i32 [ %17, %15 ], [ %2, %18 ], !dbg !1421
  call void @llvm.dbg.value(metadata i32 %20, metadata !1405, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1404, metadata !DIExpression()), !dbg !1408
  %21 = sext i32 %20 to i64, !dbg !1423
  call void @llvm.dbg.value(metadata i64 0, metadata !1404, metadata !DIExpression()), !dbg !1408
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 5, !dbg !1425
  %23 = load i32, i32* %22, align 8, !dbg !1425, !tbaa !308
  %24 = sext i32 %23 to i64, !dbg !1427
  %25 = icmp slt i64 0, %24, !dbg !1427
  br i1 %25, label %.lr.ph, label %43, !dbg !1428

.lr.ph:                                           ; preds = %19
  br label %26, !dbg !1428

26:                                               ; preds = %.lr.ph, %39
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %39 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !1404, metadata !DIExpression()), !dbg !1408
  %27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 7, !dbg !1429
  %28 = load %struct.residue_t**, %struct.residue_t*** %27, align 8, !dbg !1429, !tbaa !313
  %29 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %28, i64 %indvars.iv2, !dbg !1431
  %30 = load %struct.residue_t*, %struct.residue_t** %29, align 8, !dbg !1431, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %30, metadata !1407, metadata !DIExpression()), !dbg !1408
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1, !dbg !1432
  %31 = icmp sle i64 %6, %indvars.iv.next, !dbg !1433
  br i1 %31, label %32, label %38, !dbg !1435

32:                                               ; preds = %26
  %33 = icmp sle i64 %indvars.iv.next, %21, !dbg !1436
  br i1 %33, label %34, label %38, !dbg !1437

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %30, i32 0, i32 6, !dbg !1438
  %36 = load i32, i32* %35, align 8, !dbg !1439, !tbaa !318
  %37 = or i32 %36, 1, !dbg !1439
  store i32 %37, i32* %35, align 8, !dbg !1439, !tbaa !318
  br label %38, !dbg !1440

38:                                               ; preds = %34, %32, %26
  br label %39, !dbg !1441

39:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1404, metadata !DIExpression()), !dbg !1408
  %40 = load i32, i32* %22, align 8, !dbg !1425, !tbaa !308
  %41 = sext i32 %40 to i64, !dbg !1427
  %42 = icmp slt i64 %indvars.iv.next, %41, !dbg !1427
  br i1 %42, label %26, label %._crit_edge, !dbg !1428, !llvm.loop !1442

._crit_edge:                                      ; preds = %39
  br label %43, !dbg !1428

43:                                               ; preds = %._crit_edge, %19
  br label %44, !dbg !1444

44:                                               ; preds = %43, %8
  br label %45, !dbg !1445

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 4, !dbg !1446
  %47 = load %struct.strand_t*, %struct.strand_t** %46, align 8, !dbg !1446, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %47, metadata !1406, metadata !DIExpression()), !dbg !1408
  %48 = icmp ne %struct.strand_t* %47, null, !dbg !1412
  br i1 %48, label %8, label %._crit_edge6, !dbg !1412, !llvm.loop !1447

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !1412

49:                                               ; preds = %._crit_edge6, %3
  ret void, !dbg !1449
}

; Function Attrs: nounwind uwtable
define internal void @match_atom_pat(%struct.molecule_t* %0, i8* %1) #0 !dbg !1450 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1452, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %1, metadata !1453, metadata !DIExpression()), !dbg !1459
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1460
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !1461
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1462
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1462, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1456, metadata !DIExpression()), !dbg !1459
  %6 = icmp ne %struct.strand_t* %5, null, !dbg !1464
  br i1 %6, label %.lr.ph12, label %60, !dbg !1464

.lr.ph12:                                         ; preds = %2
  br label %7, !dbg !1464

7:                                                ; preds = %.lr.ph12, %56
  %.010 = phi %struct.strand_t* [ %5, %.lr.ph12 ], [ %58, %56 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.010, metadata !1456, metadata !DIExpression()), !dbg !1459
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2, !dbg !1465
  %9 = load i32, i32* %8, align 4, !dbg !1465, !tbaa !300
  %10 = and i32 1, %9, !dbg !1469
  %11 = icmp ne i32 %10, 0, !dbg !1469
  br i1 %11, label %12, label %55, !dbg !1470

12:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1454, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i64 0, metadata !1454, metadata !DIExpression()), !dbg !1459
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5, !dbg !1471
  %14 = load i32, i32* %13, align 8, !dbg !1471, !tbaa !308
  %15 = sext i32 %14 to i64, !dbg !1475
  %16 = icmp slt i64 0, %15, !dbg !1475
  br i1 %16, label %.lr.ph8, label %54, !dbg !1476

.lr.ph8:                                          ; preds = %12
  br label %17, !dbg !1476

17:                                               ; preds = %.lr.ph8, %50
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %50 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !1454, metadata !DIExpression()), !dbg !1459
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7, !dbg !1477
  %19 = load %struct.residue_t**, %struct.residue_t*** %18, align 8, !dbg !1477, !tbaa !313
  %20 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %19, i64 %indvars.iv36, !dbg !1479
  %21 = load %struct.residue_t*, %struct.residue_t** %20, align 8, !dbg !1479, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %21, metadata !1457, metadata !DIExpression()), !dbg !1459
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 6, !dbg !1480
  %23 = load i32, i32* %22, align 8, !dbg !1480, !tbaa !318
  %24 = and i32 1, %23, !dbg !1482
  %25 = icmp ne i32 %24, 0, !dbg !1482
  br i1 %25, label %26, label %49, !dbg !1483

26:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 0, metadata !1455, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i64 0, metadata !1455, metadata !DIExpression()), !dbg !1459
  %27 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 15, !dbg !1484
  %28 = load i32, i32* %27, align 8, !dbg !1484, !tbaa !326
  %29 = sext i32 %28 to i64, !dbg !1488
  %30 = icmp slt i64 0, %29, !dbg !1488
  br i1 %30, label %.lr.ph, label %48, !dbg !1489

.lr.ph:                                           ; preds = %26
  br label %31, !dbg !1489

31:                                               ; preds = %.lr.ph, %44
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %44 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !1455, metadata !DIExpression()), !dbg !1459
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 17, !dbg !1490
  %33 = load %struct.atom_t*, %struct.atom_t** %32, align 8, !dbg !1490, !tbaa !331
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i64 %indvars.iv5, !dbg !1492
  call void @llvm.dbg.value(metadata %struct.atom_t* %34, metadata !1458, metadata !DIExpression()), !dbg !1459
  %35 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i32 0, i32 0, !dbg !1493
  %36 = load i8*, i8** %35, align 8, !dbg !1493, !tbaa !1494
  %37 = call i32 @step(i8* %36, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !1495
  %38 = icmp ne i32 %37, 0, !dbg !1495
  %39 = zext i1 %38 to i64, !dbg !1495
  %40 = select i1 %38, i32 1, i32 0, !dbg !1495
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i32 0, i32 2, !dbg !1496
  %42 = load i32, i32* %41, align 8, !dbg !1497, !tbaa !335
  %43 = or i32 %42, %40, !dbg !1497
  store i32 %43, i32* %41, align 8, !dbg !1497, !tbaa !335
  br label %44, !dbg !1498

44:                                               ; preds = %31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1455, metadata !DIExpression()), !dbg !1459
  %45 = load i32, i32* %27, align 8, !dbg !1484, !tbaa !326
  %46 = sext i32 %45 to i64, !dbg !1488
  %47 = icmp slt i64 %indvars.iv.next, %46, !dbg !1488
  br i1 %47, label %31, label %._crit_edge, !dbg !1489, !llvm.loop !1500

._crit_edge:                                      ; preds = %44
  br label %48, !dbg !1489

48:                                               ; preds = %._crit_edge, %26
  br label %49, !dbg !1502

49:                                               ; preds = %48, %17
  br label %50, !dbg !1503

50:                                               ; preds = %49
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !1454, metadata !DIExpression()), !dbg !1459
  %51 = load i32, i32* %13, align 8, !dbg !1471, !tbaa !308
  %52 = sext i32 %51 to i64, !dbg !1475
  %53 = icmp slt i64 %indvars.iv.next4, %52, !dbg !1475
  br i1 %53, label %17, label %._crit_edge9, !dbg !1476, !llvm.loop !1505

._crit_edge9:                                     ; preds = %50
  br label %54, !dbg !1476

54:                                               ; preds = %._crit_edge9, %12
  br label %55, !dbg !1507

55:                                               ; preds = %54, %7
  br label %56, !dbg !1508

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4, !dbg !1509
  %58 = load %struct.strand_t*, %struct.strand_t** %57, align 8, !dbg !1509, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %58, metadata !1456, metadata !DIExpression()), !dbg !1459
  %59 = icmp ne %struct.strand_t* %58, null, !dbg !1464
  br i1 %59, label %7, label %._crit_edge13, !dbg !1464, !llvm.loop !1510

._crit_edge13:                                    ; preds = %56
  br label %60, !dbg !1464

60:                                               ; preds = %._crit_edge13, %2
  ret void, !dbg !1512
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define internal void @aexpr2rexpr(i8* %0, i8* %1) #0 !dbg !1513 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1517, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8* %1, metadata !1518, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8* %1, metadata !1520, metadata !DIExpression()), !dbg !1521
  %3 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %3, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i8 94, i8* %1, align 1, !dbg !1523, !tbaa !440
  call void @llvm.dbg.value(metadata i8* %0, metadata !1519, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8* %3, metadata !1520, metadata !DIExpression()), !dbg !1521
  %4 = load i8, i8* %0, align 1, !dbg !1524, !tbaa !440
  %5 = icmp ne i8 %4, 0, !dbg !1527
  br i1 %5, label %.lr.ph, label %28, !dbg !1527

.lr.ph:                                           ; preds = %2
  br label %6, !dbg !1527

6:                                                ; preds = %.lr.ph, %24
  %.05 = phi i8* [ %3, %.lr.ph ], [ %.2, %24 ]
  %.012 = phi i8* [ %0, %.lr.ph ], [ %25, %24 ]
  call void @llvm.dbg.value(metadata i8* %.05, metadata !1520, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8* %.012, metadata !1519, metadata !DIExpression()), !dbg !1521
  %7 = load i8, i8* %.012, align 1, !dbg !1528, !tbaa !440
  %8 = sext i8 %7 to i32, !dbg !1528
  %9 = icmp eq i32 %8, 42, !dbg !1531
  br i1 %9, label %10, label %13, !dbg !1532

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %.05, i32 1, !dbg !1533
  call void @llvm.dbg.value(metadata i8* %11, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i8 46, i8* %.05, align 1, !dbg !1535, !tbaa !440
  %12 = getelementptr inbounds i8, i8* %11, i32 1, !dbg !1536
  call void @llvm.dbg.value(metadata i8* %12, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i8 42, i8* %11, align 1, !dbg !1537, !tbaa !440
  br label %23, !dbg !1538

13:                                               ; preds = %6
  %14 = load i8, i8* %.012, align 1, !dbg !1539, !tbaa !440
  %15 = sext i8 %14 to i32, !dbg !1539
  %16 = icmp eq i32 %15, 63, !dbg !1541
  br i1 %16, label %17, label %19, !dbg !1542

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, i8* %.05, i32 1, !dbg !1543
  call void @llvm.dbg.value(metadata i8* %18, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i8 46, i8* %.05, align 1, !dbg !1544, !tbaa !440
  br label %22, !dbg !1545

19:                                               ; preds = %13
  %20 = load i8, i8* %.012, align 1, !dbg !1546, !tbaa !440
  %21 = getelementptr inbounds i8, i8* %.05, i32 1, !dbg !1547
  call void @llvm.dbg.value(metadata i8* %21, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i8 %20, i8* %.05, align 1, !dbg !1548, !tbaa !440
  br label %22

22:                                               ; preds = %19, %17
  %.014 = phi i8* [ %.012, %17 ], [ %.012, %19 ]
  %.1 = phi i8* [ %18, %17 ], [ %21, %19 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1520, metadata !DIExpression()), !dbg !1521
  br label %23

23:                                               ; preds = %22, %10
  %.013 = phi i8* [ %.012, %10 ], [ %.014, %22 ]
  %.2 = phi i8* [ %12, %10 ], [ %.1, %22 ], !dbg !1550
  call void @llvm.dbg.value(metadata i8* %.2, metadata !1520, metadata !DIExpression()), !dbg !1521
  br label %24, !dbg !1551

24:                                               ; preds = %23
  %25 = getelementptr inbounds i8, i8* %.013, i32 1, !dbg !1552
  call void @llvm.dbg.value(metadata i8* %.2, metadata !1520, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8* %25, metadata !1519, metadata !DIExpression()), !dbg !1521
  %26 = load i8, i8* %25, align 1, !dbg !1524, !tbaa !440
  %27 = icmp ne i8 %26, 0, !dbg !1527
  br i1 %27, label %6, label %._crit_edge, !dbg !1527, !llvm.loop !1553

._crit_edge:                                      ; preds = %24
  %split = phi i8* [ %.2, %24 ]
  br label %28, !dbg !1527

28:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi i8* [ %split, %._crit_edge ], [ %3, %2 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8* %.0.lcssa, metadata !1520, metadata !DIExpression()), !dbg !1521
  %29 = getelementptr inbounds i8, i8* %.0.lcssa, i32 1, !dbg !1555
  call void @llvm.dbg.value(metadata i8* %29, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i8 36, i8* %.0.lcssa, align 1, !dbg !1556, !tbaa !440
  store i8 0, i8* %29, align 1, !dbg !1557, !tbaa !440
  ret void, !dbg !1558
}

declare !dbg !242 dso_local i8* @compile(i8*, i8*, i8*, i32) #3

declare !dbg !246 dso_local i32 @step(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %1) #0 !dbg !1559 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1561, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8* %1, metadata !1562, metadata !DIExpression()), !dbg !1565
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !1566
  %4 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1566, !tbaa !1567
  call void @llvm.dbg.value(metadata %struct.residue_t* %4, metadata !1563, metadata !DIExpression()), !dbg !1565
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %4, i32 0, i32 9, !dbg !1568
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !1568, !tbaa !1569
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !1564, metadata !DIExpression()), !dbg !1565
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1570
  %7 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !1571
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %6, i32 0, i32 0, !dbg !1572
  %9 = load i8*, i8** %8, align 8, !dbg !1572, !tbaa !1312
  %10 = call i32 @step(i8* %9, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !1573
  ret i32 %10, !dbg !1574
}

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_str_range(%struct.atom_t* %0, i32 %1, i32 %2) #0 !dbg !1575 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1579, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %1, metadata !1580, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %2, metadata !1581, metadata !DIExpression()), !dbg !1587
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !1588
  %5 = load %struct.residue_t*, %struct.residue_t** %4, align 8, !dbg !1588, !tbaa !1567
  call void @llvm.dbg.value(metadata %struct.residue_t* %5, metadata !1583, metadata !DIExpression()), !dbg !1587
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i32 0, i32 9, !dbg !1589
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1589, !tbaa !1569
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !1584, metadata !DIExpression()), !dbg !1587
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i32 0, i32 3, !dbg !1590
  %9 = load %struct.molecule_t*, %struct.molecule_t** %8, align 8, !dbg !1590, !tbaa !1591
  call void @llvm.dbg.value(metadata %struct.molecule_t* %9, metadata !1586, metadata !DIExpression()), !dbg !1587
  %10 = icmp eq i32 %2, -1, !dbg !1592
  br i1 %10, label %11, label %14, !dbg !1594

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i32 0, i32 1, !dbg !1595
  %13 = load i32, i32* %12, align 8, !dbg !1595, !tbaa !1333
  call void @llvm.dbg.value(metadata i32 %13, metadata !1581, metadata !DIExpression()), !dbg !1587
  br label %14, !dbg !1596

14:                                               ; preds = %11, %3
  %.02 = phi i32 [ %13, %11 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1581, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 1, metadata !1582, metadata !DIExpression()), !dbg !1587
  %15 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i32 0, i32 2, !dbg !1597
  %16 = load %struct.strand_t*, %struct.strand_t** %15, align 8, !dbg !1597, !tbaa !289
  call void @llvm.dbg.value(metadata %struct.strand_t* %16, metadata !1585, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 1, metadata !1582, metadata !DIExpression()), !dbg !1587
  %17 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i32 0, i32 1, !dbg !1599
  %18 = load i32, i32* %17, align 8, !dbg !1599, !tbaa !1333
  %19 = icmp sle i32 1, %18, !dbg !1601
  br i1 %19, label %.lr.ph, label %35, !dbg !1602

.lr.ph:                                           ; preds = %14
  br label %20, !dbg !1602

20:                                               ; preds = %.lr.ph, %29
  %.015 = phi %struct.strand_t* [ %16, %.lr.ph ], [ %32, %29 ]
  %.034 = phi i32 [ 1, %.lr.ph ], [ %30, %29 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.015, metadata !1585, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %.034, metadata !1582, metadata !DIExpression()), !dbg !1587
  %21 = icmp eq %struct.strand_t* %7, %.015, !dbg !1603
  br i1 %21, label %22, label %28, !dbg !1606

22:                                               ; preds = %20
  %23 = icmp sle i32 %1, %.034, !dbg !1607
  br i1 %23, label %24, label %27, !dbg !1610

24:                                               ; preds = %22
  %25 = icmp sle i32 %.034, %.02, !dbg !1611
  br i1 %25, label %26, label %27, !dbg !1612

26:                                               ; preds = %24
  br label %36, !dbg !1613

27:                                               ; preds = %24, %22
  br label %28, !dbg !1614

28:                                               ; preds = %27, %20
  br label %29, !dbg !1615

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.034, 1, !dbg !1616
  call void @llvm.dbg.value(metadata i32 %30, metadata !1582, metadata !DIExpression()), !dbg !1587
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 4, !dbg !1617
  %32 = load %struct.strand_t*, %struct.strand_t** %31, align 8, !dbg !1617, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.strand_t* %32, metadata !1585, metadata !DIExpression()), !dbg !1587
  %33 = load i32, i32* %17, align 8, !dbg !1599, !tbaa !1333
  %34 = icmp sle i32 %30, %33, !dbg !1601
  br i1 %34, label %20, label %._crit_edge, !dbg !1602, !llvm.loop !1618

._crit_edge:                                      ; preds = %29
  br label %35, !dbg !1602

35:                                               ; preds = %._crit_edge, %14
  br label %36, !dbg !1620

36:                                               ; preds = %35, %26
  %.0 = phi i32 [ 1, %26 ], [ 0, %35 ], !dbg !1587
  ret i32 %.0, !dbg !1621
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %1) #0 !dbg !1622 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1624, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %1, metadata !1625, metadata !DIExpression()), !dbg !1627
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !1628
  %4 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1628, !tbaa !1567
  call void @llvm.dbg.value(metadata %struct.residue_t* %4, metadata !1626, metadata !DIExpression()), !dbg !1627
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1629
  %5 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !1630
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %4, i32 0, i32 4, !dbg !1631
  %7 = load i8*, i8** %6, align 8, !dbg !1631, !tbaa !1385
  %8 = call i32 @step(i8* %7, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !1632
  ret i32 %8, !dbg !1633
}

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_res_range(%struct.atom_t* %0, i32 %1, i32 %2) #0 !dbg !1634 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1636, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %1, metadata !1637, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %2, metadata !1638, metadata !DIExpression()), !dbg !1644
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !1645
  %5 = load %struct.residue_t*, %struct.residue_t** %4, align 8, !dbg !1645, !tbaa !1567
  call void @llvm.dbg.value(metadata %struct.residue_t* %5, metadata !1642, metadata !DIExpression()), !dbg !1644
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i32 0, i32 9, !dbg !1646
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1646, !tbaa !1569
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !1641, metadata !DIExpression()), !dbg !1644
  %8 = icmp eq i32 %2, -1, !dbg !1647
  br i1 %8, label %9, label %12, !dbg !1648

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i32 0, i32 5, !dbg !1649
  %11 = load i32, i32* %10, align 8, !dbg !1649, !tbaa !308
  br label %13, !dbg !1648

12:                                               ; preds = %3
  br label %13, !dbg !1648

13:                                               ; preds = %12, %9
  %14 = phi i32 [ %11, %9 ], [ %2, %12 ], !dbg !1648
  call void @llvm.dbg.value(metadata i32 %14, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 0, metadata !1639, metadata !DIExpression()), !dbg !1644
  %15 = sext i32 %1 to i64, !dbg !1650
  %16 = sext i32 %14 to i64, !dbg !1650
  call void @llvm.dbg.value(metadata i64 0, metadata !1639, metadata !DIExpression()), !dbg !1644
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i32 0, i32 5, !dbg !1652
  %18 = load i32, i32* %17, align 8, !dbg !1652, !tbaa !308
  %19 = sext i32 %18 to i64, !dbg !1654
  %20 = icmp slt i64 0, %19, !dbg !1654
  br i1 %20, label %.lr.ph, label %40, !dbg !1655

.lr.ph:                                           ; preds = %13
  br label %21, !dbg !1655

21:                                               ; preds = %.lr.ph, %36
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %36 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !1639, metadata !DIExpression()), !dbg !1644
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i32 0, i32 7, !dbg !1656
  %23 = load %struct.residue_t**, %struct.residue_t*** %22, align 8, !dbg !1656, !tbaa !313
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %23, i64 %indvars.iv2, !dbg !1658
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !1658, !tbaa !315
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !1643, metadata !DIExpression()), !dbg !1644
  %26 = icmp eq %struct.residue_t* %5, %25, !dbg !1659
  br i1 %26, label %27, label %35, !dbg !1661

27:                                               ; preds = %21
  %28 = add nuw nsw i64 %indvars.iv2, 1, !dbg !1662
  %29 = icmp sle i64 %15, %28, !dbg !1665
  br i1 %29, label %30, label %34, !dbg !1666

30:                                               ; preds = %27
  %31 = add nuw nsw i64 %indvars.iv2, 1, !dbg !1667
  %32 = icmp sle i64 %31, %16, !dbg !1668
  br i1 %32, label %33, label %34, !dbg !1669

33:                                               ; preds = %30
  br label %41, !dbg !1670

34:                                               ; preds = %30, %27
  %indvars.iv4 = phi i64 [ %indvars.iv2, %30 ], [ %indvars.iv2, %27 ]
  br label %35, !dbg !1671

35:                                               ; preds = %34, %21
  %indvars.iv3 = phi i64 [ %indvars.iv4, %34 ], [ %indvars.iv2, %21 ]
  br label %36, !dbg !1672

36:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1639, metadata !DIExpression()), !dbg !1644
  %37 = load i32, i32* %17, align 8, !dbg !1652, !tbaa !308
  %38 = sext i32 %37 to i64, !dbg !1654
  %39 = icmp slt i64 %indvars.iv.next, %38, !dbg !1654
  br i1 %39, label %21, label %._crit_edge, !dbg !1655, !llvm.loop !1674

._crit_edge:                                      ; preds = %36
  br label %40, !dbg !1655

40:                                               ; preds = %._crit_edge, %13
  br label %41, !dbg !1676

41:                                               ; preds = %40, %33
  %.0 = phi i32 [ 1, %33 ], [ 0, %40 ], !dbg !1644
  ret i32 %.0, !dbg !1677
}

; Function Attrs: nounwind uwtable
define internal i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %1) #0 !dbg !1678 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1680, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %1, metadata !1681, metadata !DIExpression()), !dbg !1682
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1683
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !1684
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 0, !dbg !1685
  %5 = load i8*, i8** %4, align 8, !dbg !1685, !tbaa !1494
  %6 = call i32 @step(i8* %5, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !1686
  ret i32 %6, !dbg !1687
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

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
!332 = !DILocation(line: 72, column: 13, scope: !330)
!333 = !DILocation(line: 73, column: 27, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !3, line: 73, column: 11)
!335 = !{!336, !293, i64 16}
!336 = !{!"atom_t", !294, i64 0, !294, i64 8, !293, i64 16, !293, i64 20, !291, i64 24, !294, i64 56, !337, i64 64, !337, i64 72, !337, i64 80, !337, i64 88, !294, i64 96, !293, i64 104, !337, i64 112, !337, i64 120, !293, i64 128, !293, i64 132, !294, i64 136, !291, i64 144, !337, i64 168}
!337 = !{!"double", !291, i64 0}
!338 = !DILocation(line: 73, column: 21, scope: !334)
!339 = !DILocation(line: 73, column: 11, scope: !330)
!340 = !DILocation(line: 74, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !334, file: !3, line: 73, column: 35)
!342 = !DILocation(line: 74, column: 13, scope: !341)
!343 = !{!337, !337, i64 0}
!344 = !DILocation(line: 74, column: 10, scope: !341)
!345 = !DILocation(line: 75, column: 17, scope: !341)
!346 = !DILocation(line: 75, column: 13, scope: !341)
!347 = !DILocation(line: 75, column: 10, scope: !341)
!348 = !DILocation(line: 76, column: 17, scope: !341)
!349 = !DILocation(line: 76, column: 13, scope: !341)
!350 = !DILocation(line: 76, column: 10, scope: !341)
!351 = !DILocation(line: 77, column: 10, scope: !341)
!352 = !DILocation(line: 78, column: 7, scope: !341)
!353 = !DILocation(line: 0, scope: !288)
!354 = !DILocation(line: 79, column: 6, scope: !330)
!355 = !DILocation(line: 71, column: 38, scope: !323)
!356 = distinct !{!356, !328, !357}
!357 = !DILocation(line: 79, column: 6, scope: !324)
!358 = !DILocation(line: 80, column: 5, scope: !325)
!359 = !DILocation(line: 65, column: 4, scope: !267)
!360 = !DILocation(line: 66, column: 10, scope: !288)
!361 = !DILocation(line: 65, column: 8, scope: !267)
!362 = !DILocation(line: 65, column: 12, scope: !267)
!363 = !DILocation(line: 81, column: 4, scope: !312)
!364 = !DILocation(line: 68, column: 38, scope: !305)
!365 = distinct !{!365, !310, !366}
!366 = !DILocation(line: 81, column: 4, scope: !306)
!367 = !DILocation(line: 82, column: 3, scope: !307)
!368 = !DILocation(line: 83, column: 2, scope: !298)
!369 = !DILocation(line: 66, column: 49, scope: !299)
!370 = !{!301, !294, i64 24}
!371 = distinct !{!371, !295, !372}
!372 = !DILocation(line: 83, column: 2, scope: !288)
!373 = !DILocation(line: 85, column: 9, scope: !374)
!374 = distinct !DILexicalBlock(scope: !267, file: !3, line: 85, column: 6)
!375 = !DILocation(line: 85, column: 6, scope: !267)
!376 = !DILocation(line: 86, column: 12, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !3, line: 85, column: 15)
!378 = !DILocation(line: 86, column: 3, scope: !377)
!379 = !DILocation(line: 87, column: 3, scope: !377)
!380 = !DILocation(line: 89, column: 20, scope: !381)
!381 = distinct !DILexicalBlock(scope: !374, file: !3, line: 88, column: 7)
!382 = !DILocation(line: 89, column: 18, scope: !381)
!383 = !DILocation(line: 89, column: 3, scope: !381)
!384 = !DILocation(line: 89, column: 14, scope: !381)
!385 = !DILocation(line: 90, column: 20, scope: !381)
!386 = !DILocation(line: 90, column: 18, scope: !381)
!387 = !DILocation(line: 90, column: 3, scope: !381)
!388 = !DILocation(line: 90, column: 14, scope: !381)
!389 = !DILocation(line: 91, column: 20, scope: !381)
!390 = !DILocation(line: 91, column: 18, scope: !381)
!391 = !DILocation(line: 91, column: 3, scope: !381)
!392 = !DILocation(line: 91, column: 14, scope: !381)
!393 = !DILocation(line: 94, column: 2, scope: !267)
!394 = !DILocation(line: 95, column: 1, scope: !267)
!395 = distinct !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 97, type: !396, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!25, !270, !238}
!398 = !{!399, !400, !401, !402, !403}
!399 = !DILocalVariable(name: "mol", arg: 1, scope: !395, file: !3, line: 97, type: !270)
!400 = !DILocalVariable(name: "aex", arg: 2, scope: !395, file: !3, line: 97, type: !238)
!401 = !DILocalVariable(name: "aep", scope: !395, file: !3, line: 99, type: !238)
!402 = !DILocalVariable(name: "n_aep", scope: !395, file: !3, line: 99, type: !238)
!403 = !DILocalVariable(name: "ael", scope: !395, file: !3, line: 100, type: !25)
!404 = !DILocation(line: 0, scope: !395)
!405 = !DILocation(line: 102, column: 10, scope: !406)
!406 = distinct !DILexicalBlock(scope: !395, file: !3, line: 102, column: 6)
!407 = !DILocation(line: 102, column: 6, scope: !395)
!408 = !DILocation(line: 103, column: 3, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !3, line: 102, column: 19)
!410 = !DILocation(line: 104, column: 3, scope: !409)
!411 = !DILocation(line: 107, column: 2, scope: !395)
!412 = !DILocation(line: 108, column: 2, scope: !395)
!413 = !DILocation(line: 110, column: 26, scope: !414)
!414 = distinct !DILexicalBlock(scope: !395, file: !3, line: 110, column: 2)
!415 = !DILocation(line: 110, column: 2, scope: !414)
!416 = !DILocation(line: 111, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 111, column: 7)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 110, column: 52)
!419 = distinct !DILexicalBlock(scope: !414, file: !3, line: 110, column: 2)
!420 = !DILocation(line: 111, column: 7, scope: !418)
!421 = !DILocation(line: 112, column: 16, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !3, line: 111, column: 14)
!423 = !DILocation(line: 112, column: 10, scope: !422)
!424 = !DILocation(line: 113, column: 9, scope: !422)
!425 = !DILocation(line: 114, column: 3, scope: !422)
!426 = !DILocation(line: 115, column: 10, scope: !417)
!427 = !DILocation(line: 0, scope: !414)
!428 = !DILocation(line: 0, scope: !417)
!429 = !DILocation(line: 116, column: 11, scope: !430)
!430 = distinct !DILexicalBlock(scope: !418, file: !3, line: 116, column: 7)
!431 = !DILocation(line: 116, column: 7, scope: !418)
!432 = !DILocation(line: 117, column: 13, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !3, line: 116, column: 26)
!434 = !DILocation(line: 117, column: 4, scope: !433)
!435 = !DILocation(line: 119, column: 4, scope: !433)
!436 = !DILocation(line: 121, column: 24, scope: !418)
!437 = !DILocation(line: 121, column: 3, scope: !418)
!438 = !DILocation(line: 122, column: 3, scope: !418)
!439 = !DILocation(line: 122, column: 16, scope: !418)
!440 = !{!291, !291, i64 0}
!441 = !DILocation(line: 123, column: 3, scope: !418)
!442 = !DILocation(line: 124, column: 3, scope: !418)
!443 = !DILocation(line: 126, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !418, file: !3, line: 126, column: 7)
!445 = !DILocation(line: 126, column: 7, scope: !418)
!446 = !DILocation(line: 127, column: 12, scope: !444)
!447 = !DILocation(line: 127, column: 4, scope: !444)
!448 = !DILocation(line: 0, scope: !418)
!449 = !DILocation(line: 128, column: 3, scope: !418)
!450 = distinct !{!450, !415, !451}
!451 = !DILocation(line: 129, column: 2, scope: !414)
!452 = !DILocation(line: 130, column: 2, scope: !395)
!453 = !DILocation(line: 132, column: 2, scope: !395)
!454 = !DILocation(line: 133, column: 1, scope: !395)
!455 = distinct !DISubprogram(name: "select_all", scope: !3, file: !3, line: 398, type: !456, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !270}
!458 = !{!459, !460, !461, !462, !463}
!459 = !DILocalVariable(name: "mol", arg: 1, scope: !455, file: !3, line: 398, type: !270)
!460 = !DILocalVariable(name: "a", scope: !455, file: !3, line: 400, type: !25)
!461 = !DILocalVariable(name: "r", scope: !455, file: !3, line: 400, type: !25)
!462 = !DILocalVariable(name: "sp", scope: !455, file: !3, line: 401, type: !40)
!463 = !DILocalVariable(name: "res", scope: !455, file: !3, line: 402, type: !57)
!464 = !DILocation(line: 0, scope: !455)
!465 = !DILocation(line: 404, column: 17, scope: !466)
!466 = distinct !DILexicalBlock(scope: !455, file: !3, line: 404, column: 2)
!467 = !DILocation(line: 404, column: 2, scope: !466)
!468 = !DILocation(line: 405, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 404, column: 49)
!470 = distinct !DILexicalBlock(scope: !466, file: !3, line: 404, column: 2)
!471 = !DILocation(line: 405, column: 14, scope: !469)
!472 = !DILocation(line: 406, column: 23, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !3, line: 406, column: 3)
!474 = distinct !DILexicalBlock(scope: !469, file: !3, line: 406, column: 3)
!475 = !DILocation(line: 406, column: 17, scope: !473)
!476 = !DILocation(line: 406, column: 3, scope: !474)
!477 = !DILocation(line: 407, column: 14, scope: !478)
!478 = distinct !DILexicalBlock(scope: !473, file: !3, line: 406, column: 41)
!479 = !DILocation(line: 407, column: 10, scope: !478)
!480 = !DILocation(line: 408, column: 9, scope: !478)
!481 = !DILocation(line: 408, column: 16, scope: !478)
!482 = !DILocation(line: 409, column: 25, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 409, column: 4)
!484 = distinct !DILexicalBlock(scope: !478, file: !3, line: 409, column: 4)
!485 = !DILocation(line: 409, column: 18, scope: !483)
!486 = !DILocation(line: 409, column: 4, scope: !484)
!487 = !DILocation(line: 410, column: 10, scope: !483)
!488 = !DILocation(line: 410, column: 5, scope: !483)
!489 = !DILocation(line: 410, column: 23, scope: !483)
!490 = !DILocation(line: 410, column: 30, scope: !483)
!491 = !DILocation(line: 409, column: 36, scope: !483)
!492 = distinct !{!492, !486, !493}
!493 = !DILocation(line: 410, column: 33, scope: !484)
!494 = !DILocation(line: 411, column: 3, scope: !478)
!495 = !DILocation(line: 406, column: 37, scope: !473)
!496 = distinct !{!496, !476, !497}
!497 = !DILocation(line: 411, column: 3, scope: !474)
!498 = !DILocation(line: 412, column: 2, scope: !469)
!499 = !DILocation(line: 404, column: 41, scope: !470)
!500 = distinct !{!500, !467, !501}
!501 = !DILocation(line: 412, column: 2, scope: !466)
!502 = !DILocation(line: 413, column: 1, scope: !455)
!503 = distinct !DISubprogram(name: "clear_work", scope: !3, file: !3, line: 432, type: !456, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!504 = !{!505, !506, !507, !508, !509}
!505 = !DILocalVariable(name: "mol", arg: 1, scope: !503, file: !3, line: 432, type: !270)
!506 = !DILocalVariable(name: "a", scope: !503, file: !3, line: 434, type: !25)
!507 = !DILocalVariable(name: "r", scope: !503, file: !3, line: 434, type: !25)
!508 = !DILocalVariable(name: "sp", scope: !503, file: !3, line: 435, type: !40)
!509 = !DILocalVariable(name: "res", scope: !503, file: !3, line: 436, type: !57)
!510 = !DILocation(line: 0, scope: !503)
!511 = !DILocation(line: 438, column: 17, scope: !512)
!512 = distinct !DILexicalBlock(scope: !503, file: !3, line: 438, column: 2)
!513 = !DILocation(line: 438, column: 2, scope: !512)
!514 = !DILocation(line: 439, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 438, column: 49)
!516 = distinct !DILexicalBlock(scope: !512, file: !3, line: 438, column: 2)
!517 = !DILocation(line: 439, column: 14, scope: !515)
!518 = !DILocation(line: 440, column: 23, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 440, column: 3)
!520 = distinct !DILexicalBlock(scope: !515, file: !3, line: 440, column: 3)
!521 = !DILocation(line: 440, column: 17, scope: !519)
!522 = !DILocation(line: 440, column: 3, scope: !520)
!523 = !DILocation(line: 441, column: 14, scope: !524)
!524 = distinct !DILexicalBlock(scope: !519, file: !3, line: 440, column: 41)
!525 = !DILocation(line: 441, column: 10, scope: !524)
!526 = !DILocation(line: 442, column: 9, scope: !524)
!527 = !DILocation(line: 442, column: 16, scope: !524)
!528 = !DILocation(line: 443, column: 25, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 443, column: 4)
!530 = distinct !DILexicalBlock(scope: !524, file: !3, line: 443, column: 4)
!531 = !DILocation(line: 443, column: 18, scope: !529)
!532 = !DILocation(line: 443, column: 4, scope: !530)
!533 = !DILocation(line: 444, column: 10, scope: !529)
!534 = !DILocation(line: 444, column: 5, scope: !529)
!535 = !DILocation(line: 444, column: 23, scope: !529)
!536 = !DILocation(line: 444, column: 30, scope: !529)
!537 = !DILocation(line: 443, column: 36, scope: !529)
!538 = distinct !{!538, !532, !539}
!539 = !DILocation(line: 444, column: 34, scope: !530)
!540 = !DILocation(line: 445, column: 3, scope: !524)
!541 = !DILocation(line: 440, column: 37, scope: !519)
!542 = distinct !{!542, !522, !543}
!543 = !DILocation(line: 445, column: 3, scope: !520)
!544 = !DILocation(line: 446, column: 2, scope: !515)
!545 = !DILocation(line: 438, column: 41, scope: !516)
!546 = distinct !{!546, !513, !547}
!547 = !DILocation(line: 446, column: 2, scope: !512)
!548 = !DILocation(line: 447, column: 1, scope: !503)
!549 = distinct !DISubprogram(name: "clear_select", scope: !3, file: !3, line: 415, type: !456, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !550)
!550 = !{!551, !552, !553, !554, !555}
!551 = !DILocalVariable(name: "mol", arg: 1, scope: !549, file: !3, line: 415, type: !270)
!552 = !DILocalVariable(name: "a", scope: !549, file: !3, line: 417, type: !25)
!553 = !DILocalVariable(name: "r", scope: !549, file: !3, line: 417, type: !25)
!554 = !DILocalVariable(name: "sp", scope: !549, file: !3, line: 418, type: !40)
!555 = !DILocalVariable(name: "res", scope: !549, file: !3, line: 419, type: !57)
!556 = !DILocation(line: 0, scope: !549)
!557 = !DILocation(line: 421, column: 17, scope: !558)
!558 = distinct !DILexicalBlock(scope: !549, file: !3, line: 421, column: 2)
!559 = !DILocation(line: 421, column: 2, scope: !558)
!560 = !DILocation(line: 422, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 421, column: 49)
!562 = distinct !DILexicalBlock(scope: !558, file: !3, line: 421, column: 2)
!563 = !DILocation(line: 422, column: 14, scope: !561)
!564 = !DILocation(line: 423, column: 23, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 423, column: 3)
!566 = distinct !DILexicalBlock(scope: !561, file: !3, line: 423, column: 3)
!567 = !DILocation(line: 423, column: 17, scope: !565)
!568 = !DILocation(line: 423, column: 3, scope: !566)
!569 = !DILocation(line: 424, column: 14, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !3, line: 423, column: 41)
!571 = !DILocation(line: 424, column: 10, scope: !570)
!572 = !DILocation(line: 425, column: 9, scope: !570)
!573 = !DILocation(line: 425, column: 16, scope: !570)
!574 = !DILocation(line: 426, column: 25, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 426, column: 4)
!576 = distinct !DILexicalBlock(scope: !570, file: !3, line: 426, column: 4)
!577 = !DILocation(line: 426, column: 18, scope: !575)
!578 = !DILocation(line: 426, column: 4, scope: !576)
!579 = !DILocation(line: 427, column: 10, scope: !575)
!580 = !DILocation(line: 427, column: 5, scope: !575)
!581 = !DILocation(line: 427, column: 23, scope: !575)
!582 = !DILocation(line: 427, column: 30, scope: !575)
!583 = !DILocation(line: 426, column: 36, scope: !575)
!584 = distinct !{!584, !578, !585}
!585 = !DILocation(line: 427, column: 34, scope: !576)
!586 = !DILocation(line: 428, column: 3, scope: !570)
!587 = !DILocation(line: 423, column: 37, scope: !565)
!588 = distinct !{!588, !568, !589}
!589 = !DILocation(line: 428, column: 3, scope: !566)
!590 = !DILocation(line: 429, column: 2, scope: !561)
!591 = !DILocation(line: 421, column: 41, scope: !562)
!592 = distinct !{!592, !559, !593}
!593 = !DILocation(line: 429, column: 2, scope: !558)
!594 = !DILocation(line: 430, column: 1, scope: !549)
!595 = distinct !DISubprogram(name: "eval_1_aexpr", scope: !3, file: !3, line: 204, type: !396, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !596)
!596 = !{!597, !598, !599, !600, !601, !602}
!597 = !DILocalVariable(name: "mol", arg: 1, scope: !595, file: !3, line: 204, type: !270)
!598 = !DILocalVariable(name: "aex", arg: 2, scope: !595, file: !3, line: 204, type: !238)
!599 = !DILocalVariable(name: "aep", scope: !595, file: !3, line: 206, type: !238)
!600 = !DILocalVariable(name: "wp", scope: !595, file: !3, line: 207, type: !238)
!601 = !DILocalVariable(name: "lo", scope: !595, file: !3, line: 208, type: !25)
!602 = !DILocalVariable(name: "hi", scope: !595, file: !3, line: 208, type: !25)
!603 = !DILocation(line: 0, scope: !595)
!604 = !DILocation(line: 208, column: 2, scope: !595)
!605 = !DILocation(line: 208, column: 6, scope: !595)
!606 = !DILocation(line: 208, column: 10, scope: !595)
!607 = !DILocation(line: 211, column: 6, scope: !608)
!608 = distinct !DILexicalBlock(scope: !595, file: !3, line: 211, column: 6)
!609 = !DILocation(line: 211, column: 11, scope: !608)
!610 = !DILocation(line: 211, column: 6, scope: !595)
!611 = !DILocation(line: 212, column: 9, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !3, line: 211, column: 19)
!613 = !DILocation(line: 213, column: 6, scope: !612)
!614 = !DILocation(line: 214, column: 2, scope: !612)
!615 = !DILocation(line: 215, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !608, file: !3, line: 214, column: 7)
!617 = !DILocation(line: 215, column: 9, scope: !616)
!618 = !DILocation(line: 216, column: 18, scope: !616)
!619 = !DILocation(line: 216, column: 10, scope: !616)
!620 = !DILocation(line: 216, column: 26, scope: !616)
!621 = !DILocation(line: 216, column: 7, scope: !616)
!622 = !DILocation(line: 0, scope: !608)
!623 = !DILocation(line: 218, column: 6, scope: !624)
!624 = distinct !DILexicalBlock(scope: !595, file: !3, line: 218, column: 6)
!625 = !DILocation(line: 218, column: 11, scope: !624)
!626 = !DILocation(line: 218, column: 6, scope: !595)
!627 = !DILocation(line: 219, column: 9, scope: !628)
!628 = distinct !DILexicalBlock(scope: !624, file: !3, line: 218, column: 19)
!629 = !DILocation(line: 220, column: 6, scope: !628)
!630 = !DILocation(line: 221, column: 2, scope: !628)
!631 = !DILocation(line: 222, column: 11, scope: !632)
!632 = distinct !DILexicalBlock(scope: !624, file: !3, line: 221, column: 7)
!633 = !DILocation(line: 222, column: 9, scope: !632)
!634 = !DILocation(line: 223, column: 18, scope: !632)
!635 = !DILocation(line: 223, column: 10, scope: !632)
!636 = !DILocation(line: 223, column: 26, scope: !632)
!637 = !DILocation(line: 223, column: 7, scope: !632)
!638 = !DILocation(line: 0, scope: !624)
!639 = !DILocation(line: 225, column: 10, scope: !595)
!640 = !DILocation(line: 225, column: 8, scope: !595)
!641 = !DILocation(line: 227, column: 6, scope: !642)
!642 = distinct !DILexicalBlock(scope: !595, file: !3, line: 227, column: 6)
!643 = !DILocation(line: 227, column: 6, scope: !595)
!644 = !DILocation(line: 228, column: 16, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !3, line: 227, column: 13)
!646 = !DILocation(line: 228, column: 8, scope: !645)
!647 = !DILocation(line: 229, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !3, line: 229, column: 7)
!649 = !DILocation(line: 229, column: 7, scope: !645)
!650 = !DILocation(line: 230, column: 4, scope: !648)
!651 = !DILocation(line: 232, column: 26, scope: !648)
!652 = !{!293, !293, i64 0}
!653 = !DILocation(line: 232, column: 30, scope: !648)
!654 = !DILocation(line: 232, column: 4, scope: !648)
!655 = !DILocation(line: 233, column: 16, scope: !645)
!656 = !DILocation(line: 233, column: 3, scope: !645)
!657 = !DILocation(line: 234, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 234, column: 8)
!659 = distinct !DILexicalBlock(scope: !645, file: !3, line: 233, column: 38)
!660 = !DILocation(line: 234, column: 8, scope: !659)
!661 = !DILocation(line: 235, column: 5, scope: !658)
!662 = !DILocation(line: 237, column: 27, scope: !658)
!663 = !DILocation(line: 237, column: 31, scope: !658)
!664 = !DILocation(line: 237, column: 5, scope: !658)
!665 = distinct !{!665, !656, !666}
!666 = !DILocation(line: 238, column: 3, scope: !645)
!667 = !DILocation(line: 239, column: 2, scope: !645)
!668 = !DILocation(line: 240, column: 3, scope: !642)
!669 = !DILocation(line: 242, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !595, file: !3, line: 242, column: 6)
!671 = !DILocation(line: 242, column: 6, scope: !595)
!672 = !DILocation(line: 243, column: 16, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !3, line: 242, column: 13)
!674 = !DILocation(line: 243, column: 8, scope: !673)
!675 = !DILocation(line: 244, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !3, line: 244, column: 7)
!677 = !DILocation(line: 244, column: 7, scope: !673)
!678 = !DILocation(line: 245, column: 4, scope: !676)
!679 = !DILocation(line: 247, column: 26, scope: !676)
!680 = !DILocation(line: 247, column: 30, scope: !676)
!681 = !DILocation(line: 247, column: 4, scope: !676)
!682 = !DILocation(line: 248, column: 16, scope: !673)
!683 = !DILocation(line: 248, column: 3, scope: !673)
!684 = !DILocation(line: 249, column: 8, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 249, column: 8)
!686 = distinct !DILexicalBlock(scope: !673, file: !3, line: 248, column: 38)
!687 = !DILocation(line: 249, column: 8, scope: !686)
!688 = !DILocation(line: 250, column: 5, scope: !685)
!689 = !DILocation(line: 252, column: 27, scope: !685)
!690 = !DILocation(line: 252, column: 31, scope: !685)
!691 = !DILocation(line: 252, column: 5, scope: !685)
!692 = distinct !{!692, !683, !693}
!693 = !DILocation(line: 253, column: 3, scope: !673)
!694 = !DILocation(line: 254, column: 2, scope: !673)
!695 = !DILocation(line: 255, column: 3, scope: !670)
!696 = !DILocation(line: 257, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !595, file: !3, line: 257, column: 6)
!698 = !DILocation(line: 257, column: 6, scope: !595)
!699 = !DILocation(line: 258, column: 16, scope: !700)
!700 = distinct !DILexicalBlock(scope: !697, file: !3, line: 257, column: 13)
!701 = !DILocation(line: 258, column: 8, scope: !700)
!702 = !DILocation(line: 259, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !3, line: 259, column: 7)
!704 = !DILocation(line: 259, column: 7, scope: !700)
!705 = !DILocation(line: 260, column: 4, scope: !703)
!706 = !DILocation(line: 262, column: 13, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !3, line: 261, column: 7)
!708 = !DILocation(line: 262, column: 4, scope: !707)
!709 = !DILocation(line: 264, column: 16, scope: !700)
!710 = !DILocation(line: 264, column: 3, scope: !700)
!711 = !DILocation(line: 265, column: 8, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 265, column: 8)
!713 = distinct !DILexicalBlock(scope: !700, file: !3, line: 264, column: 38)
!714 = !DILocation(line: 265, column: 8, scope: !713)
!715 = !DILocation(line: 266, column: 5, scope: !712)
!716 = !DILocation(line: 268, column: 14, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !3, line: 267, column: 8)
!718 = !DILocation(line: 268, column: 5, scope: !717)
!719 = distinct !{!719, !710, !720}
!720 = !DILocation(line: 270, column: 3, scope: !700)
!721 = !DILocation(line: 271, column: 2, scope: !700)
!722 = !DILocation(line: 272, column: 3, scope: !697)
!723 = !DILocation(line: 274, column: 1, scope: !595)
!724 = !DILocation(line: 273, column: 2, scope: !595)
!725 = distinct !DISubprogram(name: "or_select", scope: !3, file: !3, line: 449, type: !456, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!726 = !{!727, !728, !729, !730, !731, !732}
!727 = !DILocalVariable(name: "mol", arg: 1, scope: !725, file: !3, line: 449, type: !270)
!728 = !DILocalVariable(name: "a", scope: !725, file: !3, line: 451, type: !25)
!729 = !DILocalVariable(name: "r", scope: !725, file: !3, line: 451, type: !25)
!730 = !DILocalVariable(name: "sp", scope: !725, file: !3, line: 452, type: !40)
!731 = !DILocalVariable(name: "res", scope: !725, file: !3, line: 453, type: !57)
!732 = !DILocalVariable(name: "ap", scope: !725, file: !3, line: 454, type: !103)
!733 = !DILocation(line: 0, scope: !725)
!734 = !DILocation(line: 456, column: 17, scope: !735)
!735 = distinct !DILexicalBlock(scope: !725, file: !3, line: 456, column: 2)
!736 = !DILocation(line: 456, column: 2, scope: !735)
!737 = !DILocation(line: 457, column: 23, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 456, column: 49)
!739 = distinct !DILexicalBlock(scope: !735, file: !3, line: 456, column: 2)
!740 = !DILocation(line: 457, column: 30, scope: !738)
!741 = !DILocation(line: 457, column: 17, scope: !738)
!742 = !DILocation(line: 457, column: 7, scope: !738)
!743 = !DILocation(line: 457, column: 14, scope: !738)
!744 = !DILocation(line: 458, column: 23, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 458, column: 3)
!746 = distinct !DILexicalBlock(scope: !738, file: !3, line: 458, column: 3)
!747 = !DILocation(line: 458, column: 17, scope: !745)
!748 = !DILocation(line: 458, column: 3, scope: !746)
!749 = !DILocation(line: 459, column: 14, scope: !750)
!750 = distinct !DILexicalBlock(scope: !745, file: !3, line: 458, column: 41)
!751 = !DILocation(line: 459, column: 10, scope: !750)
!752 = !DILocation(line: 460, column: 26, scope: !750)
!753 = !DILocation(line: 460, column: 33, scope: !750)
!754 = !DILocation(line: 460, column: 19, scope: !750)
!755 = !DILocation(line: 460, column: 9, scope: !750)
!756 = !DILocation(line: 460, column: 16, scope: !750)
!757 = !DILocation(line: 462, column: 25, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 462, column: 4)
!759 = distinct !DILexicalBlock(scope: !750, file: !3, line: 462, column: 4)
!760 = !DILocation(line: 462, column: 18, scope: !758)
!761 = !DILocation(line: 462, column: 4, scope: !759)
!762 = !DILocation(line: 463, column: 16, scope: !763)
!763 = distinct !DILexicalBlock(scope: !758, file: !3, line: 462, column: 40)
!764 = !DILocation(line: 463, column: 11, scope: !763)
!765 = !DILocation(line: 464, column: 25, scope: !763)
!766 = !DILocation(line: 464, column: 32, scope: !763)
!767 = !DILocation(line: 464, column: 19, scope: !763)
!768 = !DILocation(line: 464, column: 9, scope: !763)
!769 = !DILocation(line: 464, column: 16, scope: !763)
!770 = !DILocation(line: 466, column: 4, scope: !763)
!771 = !DILocation(line: 462, column: 36, scope: !758)
!772 = distinct !{!772, !761, !773}
!773 = !DILocation(line: 466, column: 4, scope: !759)
!774 = !DILocation(line: 467, column: 3, scope: !750)
!775 = !DILocation(line: 458, column: 37, scope: !745)
!776 = distinct !{!776, !748, !777}
!777 = !DILocation(line: 467, column: 3, scope: !746)
!778 = !DILocation(line: 468, column: 2, scope: !738)
!779 = !DILocation(line: 456, column: 41, scope: !739)
!780 = distinct !{!780, !736, !781}
!781 = !DILocation(line: 468, column: 2, scope: !735)
!782 = !DILocation(line: 469, column: 1, scope: !725)
!783 = distinct !DISubprogram(name: "set_select", scope: !3, file: !3, line: 471, type: !456, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!784 = !{!785, !786, !787, !788, !789, !790}
!785 = !DILocalVariable(name: "mol", arg: 1, scope: !783, file: !3, line: 471, type: !270)
!786 = !DILocalVariable(name: "a", scope: !783, file: !3, line: 473, type: !25)
!787 = !DILocalVariable(name: "r", scope: !783, file: !3, line: 473, type: !25)
!788 = !DILocalVariable(name: "sp", scope: !783, file: !3, line: 474, type: !40)
!789 = !DILocalVariable(name: "res", scope: !783, file: !3, line: 475, type: !57)
!790 = !DILocalVariable(name: "ap", scope: !783, file: !3, line: 476, type: !103)
!791 = !DILocation(line: 0, scope: !783)
!792 = !DILocation(line: 478, column: 17, scope: !793)
!793 = distinct !DILexicalBlock(scope: !783, file: !3, line: 478, column: 2)
!794 = !DILocation(line: 478, column: 2, scope: !793)
!795 = !DILocation(line: 479, column: 23, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 478, column: 49)
!797 = distinct !DILexicalBlock(scope: !793, file: !3, line: 478, column: 2)
!798 = !DILocation(line: 479, column: 30, scope: !796)
!799 = !DILocation(line: 479, column: 17, scope: !796)
!800 = !DILocation(line: 479, column: 7, scope: !796)
!801 = !DILocation(line: 479, column: 14, scope: !796)
!802 = !DILocation(line: 480, column: 23, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 480, column: 3)
!804 = distinct !DILexicalBlock(scope: !796, file: !3, line: 480, column: 3)
!805 = !DILocation(line: 480, column: 17, scope: !803)
!806 = !DILocation(line: 480, column: 3, scope: !804)
!807 = !DILocation(line: 481, column: 14, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !3, line: 480, column: 41)
!809 = !DILocation(line: 481, column: 10, scope: !808)
!810 = !DILocation(line: 482, column: 26, scope: !808)
!811 = !DILocation(line: 482, column: 33, scope: !808)
!812 = !DILocation(line: 482, column: 19, scope: !808)
!813 = !DILocation(line: 482, column: 9, scope: !808)
!814 = !DILocation(line: 482, column: 16, scope: !808)
!815 = !DILocation(line: 484, column: 25, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 484, column: 4)
!817 = distinct !DILexicalBlock(scope: !808, file: !3, line: 484, column: 4)
!818 = !DILocation(line: 484, column: 18, scope: !816)
!819 = !DILocation(line: 484, column: 4, scope: !817)
!820 = !DILocation(line: 485, column: 16, scope: !821)
!821 = distinct !DILexicalBlock(scope: !816, file: !3, line: 484, column: 40)
!822 = !DILocation(line: 485, column: 11, scope: !821)
!823 = !DILocation(line: 486, column: 25, scope: !821)
!824 = !DILocation(line: 486, column: 32, scope: !821)
!825 = !DILocation(line: 486, column: 19, scope: !821)
!826 = !DILocation(line: 486, column: 9, scope: !821)
!827 = !DILocation(line: 486, column: 16, scope: !821)
!828 = !DILocation(line: 488, column: 4, scope: !821)
!829 = !DILocation(line: 484, column: 36, scope: !816)
!830 = distinct !{!830, !819, !831}
!831 = !DILocation(line: 488, column: 4, scope: !817)
!832 = !DILocation(line: 489, column: 3, scope: !808)
!833 = !DILocation(line: 480, column: 37, scope: !803)
!834 = distinct !{!834, !806, !835}
!835 = !DILocation(line: 489, column: 3, scope: !804)
!836 = !DILocation(line: 490, column: 2, scope: !796)
!837 = !DILocation(line: 478, column: 41, scope: !797)
!838 = distinct !{!838, !794, !839}
!839 = !DILocation(line: 490, column: 2, scope: !793)
!840 = !DILocation(line: 491, column: 1, scope: !783)
!841 = distinct !DISubprogram(name: "atom_in_aexpr", scope: !3, file: !3, line: 135, type: !842, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!25, !103, !238}
!844 = !{!845, !846, !847, !848, !849}
!845 = !DILocalVariable(name: "ap", arg: 1, scope: !841, file: !3, line: 135, type: !103)
!846 = !DILocalVariable(name: "aex", arg: 2, scope: !841, file: !3, line: 135, type: !238)
!847 = !DILocalVariable(name: "aep", scope: !841, file: !3, line: 137, type: !238)
!848 = !DILocalVariable(name: "n_aep", scope: !841, file: !3, line: 137, type: !238)
!849 = !DILocalVariable(name: "ael", scope: !841, file: !3, line: 138, type: !25)
!850 = !DILocation(line: 0, scope: !841)
!851 = !DILocation(line: 140, column: 10, scope: !852)
!852 = distinct !DILexicalBlock(scope: !841, file: !3, line: 140, column: 6)
!853 = !DILocation(line: 140, column: 6, scope: !841)
!854 = !DILocation(line: 141, column: 3, scope: !852)
!855 = !DILocation(line: 143, column: 26, scope: !856)
!856 = distinct !DILexicalBlock(scope: !841, file: !3, line: 143, column: 2)
!857 = !DILocation(line: 143, column: 2, scope: !856)
!858 = !DILocation(line: 144, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 144, column: 7)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 143, column: 52)
!861 = distinct !DILexicalBlock(scope: !856, file: !3, line: 143, column: 2)
!862 = !DILocation(line: 144, column: 7, scope: !860)
!863 = !DILocation(line: 145, column: 16, scope: !864)
!864 = distinct !DILexicalBlock(scope: !859, file: !3, line: 144, column: 14)
!865 = !DILocation(line: 145, column: 10, scope: !864)
!866 = !DILocation(line: 146, column: 9, scope: !864)
!867 = !DILocation(line: 147, column: 3, scope: !864)
!868 = !DILocation(line: 148, column: 10, scope: !859)
!869 = !DILocation(line: 0, scope: !856)
!870 = !DILocation(line: 0, scope: !859)
!871 = !DILocation(line: 149, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !860, file: !3, line: 149, column: 7)
!873 = !DILocation(line: 149, column: 7, scope: !860)
!874 = !DILocation(line: 150, column: 13, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 149, column: 26)
!876 = !DILocation(line: 150, column: 4, scope: !875)
!877 = !DILocation(line: 152, column: 4, scope: !875)
!878 = !DILocation(line: 154, column: 24, scope: !860)
!879 = !DILocation(line: 154, column: 3, scope: !860)
!880 = !DILocation(line: 155, column: 3, scope: !860)
!881 = !DILocation(line: 155, column: 16, scope: !860)
!882 = !DILocation(line: 156, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !860, file: !3, line: 156, column: 7)
!884 = !DILocation(line: 156, column: 7, scope: !860)
!885 = !DILocation(line: 157, column: 4, scope: !883)
!886 = !DILocation(line: 159, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !860, file: !3, line: 159, column: 7)
!888 = !DILocation(line: 159, column: 7, scope: !860)
!889 = !DILocation(line: 160, column: 12, scope: !887)
!890 = !DILocation(line: 160, column: 4, scope: !887)
!891 = !DILocation(line: 0, scope: !860)
!892 = distinct !{!892, !857, !893}
!893 = !DILocation(line: 161, column: 2, scope: !856)
!894 = !DILocation(line: 162, column: 2, scope: !841)
!895 = !DILocation(line: 163, column: 1, scope: !841)
!896 = distinct !DISubprogram(name: "atom_in_1_aexpr", scope: !3, file: !3, line: 276, type: !842, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!897 = !{!898, !899, !900, !901, !902, !903, !904, !905}
!898 = !DILocalVariable(name: "ap", arg: 1, scope: !896, file: !3, line: 276, type: !103)
!899 = !DILocalVariable(name: "aex", arg: 2, scope: !896, file: !3, line: 276, type: !238)
!900 = !DILocalVariable(name: "aep", scope: !896, file: !3, line: 278, type: !238)
!901 = !DILocalVariable(name: "wp", scope: !896, file: !3, line: 279, type: !238)
!902 = !DILocalVariable(name: "lo", scope: !896, file: !3, line: 280, type: !25)
!903 = !DILocalVariable(name: "hi", scope: !896, file: !3, line: 280, type: !25)
!904 = !DILabel(scope: !896, name: "RPART", file: !3, line: 316)
!905 = !DILabel(scope: !896, name: "APART", file: !3, line: 333)
!906 = !DILocation(line: 0, scope: !896)
!907 = !DILocation(line: 280, column: 2, scope: !896)
!908 = !DILocation(line: 280, column: 6, scope: !896)
!909 = !DILocation(line: 280, column: 10, scope: !896)
!910 = !DILocation(line: 283, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !896, file: !3, line: 283, column: 6)
!912 = !DILocation(line: 283, column: 11, scope: !911)
!913 = !DILocation(line: 283, column: 6, scope: !896)
!914 = !DILocation(line: 284, column: 9, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !3, line: 283, column: 19)
!916 = !DILocation(line: 285, column: 6, scope: !915)
!917 = !DILocation(line: 286, column: 2, scope: !915)
!918 = !DILocation(line: 287, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !911, file: !3, line: 286, column: 7)
!920 = !DILocation(line: 287, column: 9, scope: !919)
!921 = !DILocation(line: 288, column: 18, scope: !919)
!922 = !DILocation(line: 288, column: 10, scope: !919)
!923 = !DILocation(line: 288, column: 26, scope: !919)
!924 = !DILocation(line: 288, column: 7, scope: !919)
!925 = !DILocation(line: 0, scope: !911)
!926 = !DILocation(line: 290, column: 6, scope: !927)
!927 = distinct !DILexicalBlock(scope: !896, file: !3, line: 290, column: 6)
!928 = !DILocation(line: 290, column: 11, scope: !927)
!929 = !DILocation(line: 290, column: 6, scope: !896)
!930 = !DILocation(line: 291, column: 9, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !3, line: 290, column: 19)
!932 = !DILocation(line: 292, column: 6, scope: !931)
!933 = !DILocation(line: 293, column: 2, scope: !931)
!934 = !DILocation(line: 294, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !927, file: !3, line: 293, column: 7)
!936 = !DILocation(line: 294, column: 9, scope: !935)
!937 = !DILocation(line: 295, column: 18, scope: !935)
!938 = !DILocation(line: 295, column: 10, scope: !935)
!939 = !DILocation(line: 295, column: 26, scope: !935)
!940 = !DILocation(line: 295, column: 7, scope: !935)
!941 = !DILocation(line: 0, scope: !927)
!942 = !DILocation(line: 297, column: 10, scope: !896)
!943 = !DILocation(line: 297, column: 8, scope: !896)
!944 = !DILocation(line: 299, column: 6, scope: !945)
!945 = distinct !DILexicalBlock(scope: !896, file: !3, line: 299, column: 6)
!946 = !DILocation(line: 299, column: 6, scope: !896)
!947 = !DILocation(line: 300, column: 16, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 299, column: 13)
!949 = !DILocation(line: 300, column: 8, scope: !948)
!950 = !DILocation(line: 301, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !3, line: 301, column: 7)
!952 = !DILocation(line: 301, column: 7, scope: !948)
!953 = !DILocation(line: 302, column: 8, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 302, column: 8)
!955 = distinct !DILexicalBlock(scope: !951, file: !3, line: 301, column: 35)
!956 = !DILocation(line: 302, column: 8, scope: !955)
!957 = !DILocation(line: 303, column: 5, scope: !954)
!958 = !DILocation(line: 304, column: 3, scope: !955)
!959 = !DILocation(line: 304, column: 36, scope: !960)
!960 = distinct !DILexicalBlock(scope: !951, file: !3, line: 304, column: 13)
!961 = !DILocation(line: 304, column: 40, scope: !960)
!962 = !DILocation(line: 304, column: 13, scope: !960)
!963 = !DILocation(line: 304, column: 13, scope: !951)
!964 = !DILocation(line: 305, column: 4, scope: !960)
!965 = !DILocation(line: 306, column: 16, scope: !948)
!966 = !DILocation(line: 306, column: 3, scope: !948)
!967 = !DILocation(line: 307, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !3, line: 307, column: 8)
!969 = distinct !DILexicalBlock(scope: !948, file: !3, line: 306, column: 38)
!970 = !DILocation(line: 307, column: 8, scope: !969)
!971 = !DILocation(line: 308, column: 9, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 308, column: 9)
!973 = distinct !DILexicalBlock(scope: !968, file: !3, line: 307, column: 36)
!974 = !DILocation(line: 308, column: 9, scope: !973)
!975 = !DILocation(line: 309, column: 6, scope: !972)
!976 = !DILocation(line: 310, column: 4, scope: !973)
!977 = !DILocation(line: 310, column: 37, scope: !978)
!978 = distinct !DILexicalBlock(scope: !968, file: !3, line: 310, column: 14)
!979 = !DILocation(line: 310, column: 41, scope: !978)
!980 = !DILocation(line: 310, column: 14, scope: !978)
!981 = !DILocation(line: 310, column: 14, scope: !968)
!982 = !DILocation(line: 311, column: 5, scope: !978)
!983 = distinct !{!983, !966, !984}
!984 = !DILocation(line: 312, column: 3, scope: !948)
!985 = !DILocation(line: 313, column: 3, scope: !948)
!986 = !DILocation(line: 316, column: 1, scope: !896)
!987 = !DILocation(line: 316, column: 13, scope: !988)
!988 = distinct !DILexicalBlock(scope: !896, file: !3, line: 316, column: 13)
!989 = !DILocation(line: 316, column: 13, scope: !896)
!990 = !DILocation(line: 317, column: 16, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 316, column: 20)
!992 = !DILocation(line: 317, column: 8, scope: !991)
!993 = !DILocation(line: 318, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !3, line: 318, column: 7)
!995 = !DILocation(line: 318, column: 7, scope: !991)
!996 = !DILocation(line: 319, column: 8, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 319, column: 8)
!998 = distinct !DILexicalBlock(scope: !994, file: !3, line: 318, column: 35)
!999 = !DILocation(line: 319, column: 8, scope: !998)
!1000 = !DILocation(line: 320, column: 5, scope: !997)
!1001 = !DILocation(line: 321, column: 3, scope: !998)
!1002 = !DILocation(line: 321, column: 36, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !994, file: !3, line: 321, column: 13)
!1004 = !DILocation(line: 321, column: 40, scope: !1003)
!1005 = !DILocation(line: 321, column: 13, scope: !1003)
!1006 = !DILocation(line: 321, column: 13, scope: !994)
!1007 = !DILocation(line: 322, column: 4, scope: !1003)
!1008 = !DILocation(line: 323, column: 16, scope: !991)
!1009 = !DILocation(line: 323, column: 3, scope: !991)
!1010 = !DILocation(line: 324, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 324, column: 8)
!1012 = distinct !DILexicalBlock(scope: !991, file: !3, line: 323, column: 38)
!1013 = !DILocation(line: 324, column: 8, scope: !1012)
!1014 = !DILocation(line: 325, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 325, column: 9)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 324, column: 36)
!1017 = !DILocation(line: 325, column: 9, scope: !1016)
!1018 = !DILocation(line: 326, column: 6, scope: !1015)
!1019 = !DILocation(line: 327, column: 4, scope: !1016)
!1020 = !DILocation(line: 327, column: 37, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 327, column: 14)
!1022 = !DILocation(line: 327, column: 41, scope: !1021)
!1023 = !DILocation(line: 327, column: 14, scope: !1021)
!1024 = !DILocation(line: 327, column: 14, scope: !1011)
!1025 = !DILocation(line: 328, column: 5, scope: !1021)
!1026 = distinct !{!1026, !1009, !1027}
!1027 = !DILocation(line: 329, column: 3, scope: !991)
!1028 = !DILocation(line: 330, column: 3, scope: !991)
!1029 = !DILocation(line: 333, column: 1, scope: !896)
!1030 = !DILocation(line: 333, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !896, file: !3, line: 333, column: 13)
!1032 = !DILocation(line: 333, column: 13, scope: !896)
!1033 = !DILocation(line: 334, column: 16, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 333, column: 20)
!1035 = !DILocation(line: 334, column: 8, scope: !1034)
!1036 = !DILocation(line: 335, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 335, column: 7)
!1038 = !DILocation(line: 335, column: 7, scope: !1034)
!1039 = !DILocation(line: 336, column: 8, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 336, column: 8)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 335, column: 35)
!1042 = !DILocation(line: 336, column: 8, scope: !1041)
!1043 = !DILocation(line: 337, column: 5, scope: !1040)
!1044 = !DILocation(line: 338, column: 3, scope: !1041)
!1045 = !DILocation(line: 339, column: 13, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 338, column: 8)
!1047 = !DILocation(line: 339, column: 4, scope: !1046)
!1048 = !DILocation(line: 340, column: 4, scope: !1046)
!1049 = !DILocation(line: 342, column: 16, scope: !1034)
!1050 = !DILocation(line: 342, column: 3, scope: !1034)
!1051 = !DILocation(line: 343, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 343, column: 8)
!1053 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 342, column: 38)
!1054 = !DILocation(line: 343, column: 8, scope: !1053)
!1055 = !DILocation(line: 344, column: 9, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 344, column: 9)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 343, column: 36)
!1058 = !DILocation(line: 344, column: 9, scope: !1057)
!1059 = !DILocation(line: 345, column: 6, scope: !1056)
!1060 = !DILocation(line: 346, column: 4, scope: !1057)
!1061 = !DILocation(line: 347, column: 14, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 346, column: 9)
!1063 = !DILocation(line: 347, column: 5, scope: !1062)
!1064 = !DILocation(line: 348, column: 5, scope: !1062)
!1065 = distinct !{!1065, !1050, !1066}
!1066 = !DILocation(line: 350, column: 3, scope: !1034)
!1067 = !DILocation(line: 351, column: 2, scope: !1034)
!1068 = !DILocation(line: 352, column: 3, scope: !1031)
!1069 = !DILocation(line: 354, column: 2, scope: !896)
!1070 = !DILocation(line: 355, column: 1, scope: !896)
!1071 = distinct !DISubprogram(name: "set_attr_if", scope: !3, file: !3, line: 165, type: !1072, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !270, !25, !25}
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082}
!1075 = !DILocalVariable(name: "mol", arg: 1, scope: !1071, file: !3, line: 165, type: !270)
!1076 = !DILocalVariable(name: "attr", arg: 2, scope: !1071, file: !3, line: 165, type: !25)
!1077 = !DILocalVariable(name: "i_attr", arg: 3, scope: !1071, file: !3, line: 165, type: !25)
!1078 = !DILocalVariable(name: "a", scope: !1071, file: !3, line: 167, type: !25)
!1079 = !DILocalVariable(name: "r", scope: !1071, file: !3, line: 167, type: !25)
!1080 = !DILocalVariable(name: "sp", scope: !1071, file: !3, line: 168, type: !40)
!1081 = !DILocalVariable(name: "res", scope: !1071, file: !3, line: 169, type: !57)
!1082 = !DILocalVariable(name: "ap", scope: !1071, file: !3, line: 170, type: !103)
!1083 = !DILocation(line: 0, scope: !1071)
!1084 = !DILocation(line: 172, column: 17, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 172, column: 2)
!1086 = !DILocation(line: 172, column: 2, scope: !1085)
!1087 = !DILocation(line: 173, column: 23, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 172, column: 49)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 172, column: 2)
!1090 = !DILocation(line: 173, column: 30, scope: !1088)
!1091 = !DILocation(line: 173, column: 17, scope: !1088)
!1092 = !DILocation(line: 173, column: 7, scope: !1088)
!1093 = !DILocation(line: 173, column: 14, scope: !1088)
!1094 = !DILocation(line: 174, column: 23, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 174, column: 3)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 174, column: 3)
!1097 = !DILocation(line: 174, column: 17, scope: !1095)
!1098 = !DILocation(line: 174, column: 3, scope: !1096)
!1099 = !DILocation(line: 175, column: 14, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 174, column: 41)
!1101 = !DILocation(line: 175, column: 10, scope: !1100)
!1102 = !DILocation(line: 176, column: 26, scope: !1100)
!1103 = !DILocation(line: 176, column: 33, scope: !1100)
!1104 = !DILocation(line: 176, column: 19, scope: !1100)
!1105 = !DILocation(line: 176, column: 9, scope: !1100)
!1106 = !DILocation(line: 176, column: 16, scope: !1100)
!1107 = !DILocation(line: 178, column: 25, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 178, column: 4)
!1109 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 178, column: 4)
!1110 = !DILocation(line: 178, column: 18, scope: !1108)
!1111 = !DILocation(line: 178, column: 4, scope: !1109)
!1112 = !DILocation(line: 179, column: 16, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 178, column: 40)
!1114 = !DILocation(line: 179, column: 11, scope: !1113)
!1115 = !DILocation(line: 180, column: 25, scope: !1113)
!1116 = !DILocation(line: 180, column: 32, scope: !1113)
!1117 = !DILocation(line: 180, column: 19, scope: !1113)
!1118 = !DILocation(line: 180, column: 9, scope: !1113)
!1119 = !DILocation(line: 180, column: 16, scope: !1113)
!1120 = !DILocation(line: 182, column: 4, scope: !1113)
!1121 = !DILocation(line: 178, column: 36, scope: !1108)
!1122 = distinct !{!1122, !1111, !1123}
!1123 = !DILocation(line: 182, column: 4, scope: !1109)
!1124 = !DILocation(line: 183, column: 3, scope: !1100)
!1125 = !DILocation(line: 174, column: 37, scope: !1095)
!1126 = distinct !{!1126, !1098, !1127}
!1127 = !DILocation(line: 183, column: 3, scope: !1096)
!1128 = !DILocation(line: 184, column: 2, scope: !1088)
!1129 = !DILocation(line: 172, column: 41, scope: !1089)
!1130 = distinct !{!1130, !1086, !1131}
!1131 = !DILocation(line: 184, column: 2, scope: !1085)
!1132 = !DILocation(line: 185, column: 1, scope: !1071)
!1133 = distinct !DISubprogram(name: "clear_attr", scope: !3, file: !3, line: 187, type: !1134, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !270, !25}
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142}
!1137 = !DILocalVariable(name: "mol", arg: 1, scope: !1133, file: !3, line: 187, type: !270)
!1138 = !DILocalVariable(name: "attr", arg: 2, scope: !1133, file: !3, line: 187, type: !25)
!1139 = !DILocalVariable(name: "a", scope: !1133, file: !3, line: 189, type: !25)
!1140 = !DILocalVariable(name: "r", scope: !1133, file: !3, line: 189, type: !25)
!1141 = !DILocalVariable(name: "sp", scope: !1133, file: !3, line: 190, type: !40)
!1142 = !DILocalVariable(name: "res", scope: !1133, file: !3, line: 191, type: !57)
!1143 = !DILocation(line: 0, scope: !1133)
!1144 = !DILocation(line: 193, column: 17, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 193, column: 2)
!1146 = !DILocation(line: 193, column: 2, scope: !1145)
!1147 = !DILocation(line: 194, column: 17, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 193, column: 49)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 193, column: 2)
!1150 = !DILocation(line: 194, column: 7, scope: !1148)
!1151 = !DILocation(line: 194, column: 14, scope: !1148)
!1152 = !DILocation(line: 195, column: 23, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 195, column: 3)
!1154 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 195, column: 3)
!1155 = !DILocation(line: 195, column: 17, scope: !1153)
!1156 = !DILocation(line: 195, column: 3, scope: !1154)
!1157 = !DILocation(line: 196, column: 14, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 195, column: 41)
!1159 = !DILocation(line: 196, column: 10, scope: !1158)
!1160 = !DILocation(line: 197, column: 19, scope: !1158)
!1161 = !DILocation(line: 197, column: 9, scope: !1158)
!1162 = !DILocation(line: 197, column: 16, scope: !1158)
!1163 = !DILocation(line: 198, column: 25, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 198, column: 4)
!1165 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 198, column: 4)
!1166 = !DILocation(line: 198, column: 18, scope: !1164)
!1167 = !DILocation(line: 198, column: 4, scope: !1165)
!1168 = !DILocation(line: 199, column: 33, scope: !1164)
!1169 = !DILocation(line: 199, column: 10, scope: !1164)
!1170 = !DILocation(line: 199, column: 5, scope: !1164)
!1171 = !DILocation(line: 199, column: 23, scope: !1164)
!1172 = !DILocation(line: 199, column: 30, scope: !1164)
!1173 = !DILocation(line: 198, column: 36, scope: !1164)
!1174 = distinct !{!1174, !1167, !1175}
!1175 = !DILocation(line: 199, column: 34, scope: !1165)
!1176 = !DILocation(line: 200, column: 3, scope: !1158)
!1177 = !DILocation(line: 195, column: 37, scope: !1153)
!1178 = distinct !{!1178, !1156, !1179}
!1179 = !DILocation(line: 200, column: 3, scope: !1154)
!1180 = !DILocation(line: 201, column: 2, scope: !1148)
!1181 = !DILocation(line: 193, column: 41, scope: !1149)
!1182 = distinct !{!1182, !1146, !1183}
!1183 = !DILocation(line: 201, column: 2, scope: !1145)
!1184 = !DILocation(line: 202, column: 1, scope: !1133)
!1185 = distinct !DISubprogram(name: "is_pattern", scope: !3, file: !3, line: 357, type: !1186, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1189)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!25, !238, !1188, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1189 = !{!1190, !1191, !1192, !1193, !1194}
!1190 = !DILocalVariable(name: "item", arg: 1, scope: !1185, file: !3, line: 357, type: !238)
!1191 = !DILocalVariable(name: "lo", arg: 2, scope: !1185, file: !3, line: 357, type: !1188)
!1192 = !DILocalVariable(name: "hi", arg: 3, scope: !1185, file: !3, line: 357, type: !1188)
!1193 = !DILocalVariable(name: "val", scope: !1185, file: !3, line: 359, type: !25)
!1194 = !DILocalVariable(name: "ip", scope: !1185, file: !3, line: 360, type: !238)
!1195 = !DILocation(line: 0, scope: !1185)
!1196 = !DILocation(line: 362, column: 7, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 362, column: 6)
!1198 = !{!1199, !1199, i64 0}
!1199 = !{!"short", !291, i64 0}
!1200 = !DILocation(line: 362, column: 24, scope: !1197)
!1201 = !DILocation(line: 362, column: 27, scope: !1197)
!1202 = !DILocation(line: 362, column: 33, scope: !1197)
!1203 = !DILocation(line: 362, column: 6, scope: !1185)
!1204 = !DILocation(line: 363, column: 3, scope: !1197)
!1205 = !DILocation(line: 364, column: 6, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 364, column: 6)
!1207 = !DILocation(line: 364, column: 6, scope: !1185)
!1208 = !DILocation(line: 365, column: 28, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 365, column: 3)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 365, column: 3)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 364, column: 24)
!1212 = !DILocation(line: 365, column: 3, scope: !1210)
!1213 = !DILocation(line: 366, column: 13, scope: !1209)
!1214 = !DILocation(line: 366, column: 21, scope: !1209)
!1215 = !DILocation(line: 366, column: 19, scope: !1209)
!1216 = !DILocation(line: 366, column: 25, scope: !1209)
!1217 = !DILocation(line: 366, column: 4, scope: !1209)
!1218 = !DILocation(line: 365, column: 46, scope: !1209)
!1219 = distinct !{!1219, !1212, !1220}
!1220 = !DILocation(line: 366, column: 27, scope: !1210)
!1221 = !DILocation(line: 0, scope: !1210)
!1222 = !DILocation(line: 367, column: 7, scope: !1211)
!1223 = !DILocation(line: 368, column: 8, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 368, column: 7)
!1225 = !DILocation(line: 368, column: 7, scope: !1211)
!1226 = !DILocation(line: 369, column: 10, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 368, column: 13)
!1228 = !DILocation(line: 369, column: 8, scope: !1227)
!1229 = !DILocation(line: 370, column: 4, scope: !1227)
!1230 = !DILocation(line: 371, column: 13, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 371, column: 13)
!1232 = !DILocation(line: 371, column: 17, scope: !1231)
!1233 = !DILocation(line: 371, column: 13, scope: !1224)
!1234 = !DILocation(line: 372, column: 6, scope: !1231)
!1235 = !DILocation(line: 372, column: 4, scope: !1231)
!1236 = !DILocation(line: 0, scope: !1211)
!1237 = !DILocation(line: 373, column: 8, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 373, column: 7)
!1239 = !DILocation(line: 373, column: 7, scope: !1211)
!1240 = !DILocation(line: 374, column: 8, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 373, column: 13)
!1242 = !DILocation(line: 375, column: 4, scope: !1241)
!1243 = !DILocation(line: 376, column: 14, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 376, column: 13)
!1245 = !DILocation(line: 376, column: 13, scope: !1238)
!1246 = !DILocation(line: 377, column: 4, scope: !1244)
!1247 = !DILocation(line: 378, column: 17, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 378, column: 3)
!1249 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 378, column: 3)
!1250 = !DILocation(line: 378, column: 3, scope: !1249)
!1251 = !DILocation(line: 379, column: 13, scope: !1248)
!1252 = !DILocation(line: 379, column: 21, scope: !1248)
!1253 = !DILocation(line: 379, column: 19, scope: !1248)
!1254 = !DILocation(line: 379, column: 25, scope: !1248)
!1255 = !DILocation(line: 379, column: 4, scope: !1248)
!1256 = !DILocation(line: 378, column: 35, scope: !1248)
!1257 = distinct !{!1257, !1250, !1258}
!1258 = !DILocation(line: 379, column: 27, scope: !1249)
!1259 = !DILocation(line: 0, scope: !1249)
!1260 = !DILocation(line: 380, column: 7, scope: !1211)
!1261 = !DILocation(line: 381, column: 11, scope: !1211)
!1262 = !DILocation(line: 381, column: 9, scope: !1211)
!1263 = !DILocation(line: 381, column: 3, scope: !1211)
!1264 = !DILocation(line: 383, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 382, column: 7)
!1266 = !DILocation(line: 384, column: 9, scope: !1265)
!1267 = !DILocation(line: 386, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 386, column: 6)
!1269 = !DILocation(line: 386, column: 6, scope: !1185)
!1270 = !DILocation(line: 387, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 386, column: 12)
!1272 = !DILocation(line: 388, column: 3, scope: !1271)
!1273 = !DILocation(line: 389, column: 12, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 389, column: 12)
!1275 = !DILocation(line: 389, column: 12, scope: !1268)
!1276 = !DILocation(line: 390, column: 17, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 390, column: 3)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 390, column: 3)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 389, column: 28)
!1280 = !DILocation(line: 390, column: 3, scope: !1278)
!1281 = !DILocation(line: 391, column: 13, scope: !1277)
!1282 = !DILocation(line: 391, column: 21, scope: !1277)
!1283 = !DILocation(line: 391, column: 19, scope: !1277)
!1284 = !DILocation(line: 391, column: 25, scope: !1277)
!1285 = !DILocation(line: 391, column: 4, scope: !1277)
!1286 = !DILocation(line: 390, column: 35, scope: !1277)
!1287 = distinct !{!1287, !1280, !1288}
!1288 = !DILocation(line: 391, column: 27, scope: !1278)
!1289 = !DILocation(line: 0, scope: !1278)
!1290 = !DILocation(line: 392, column: 7, scope: !1279)
!1291 = !DILocation(line: 393, column: 11, scope: !1279)
!1292 = !DILocation(line: 393, column: 9, scope: !1279)
!1293 = !DILocation(line: 393, column: 3, scope: !1279)
!1294 = !DILocation(line: 395, column: 2, scope: !1185)
!1295 = !DILocation(line: 396, column: 1, scope: !1185)
!1296 = distinct !DISubprogram(name: "match_str_pat", scope: !3, file: !3, line: 493, type: !1297, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !270, !238}
!1299 = !{!1300, !1301, !1302}
!1300 = !DILocalVariable(name: "mol", arg: 1, scope: !1296, file: !3, line: 493, type: !270)
!1301 = !DILocalVariable(name: "pat", arg: 2, scope: !1296, file: !3, line: 493, type: !238)
!1302 = !DILocalVariable(name: "sp", scope: !1296, file: !3, line: 495, type: !40)
!1303 = !DILocation(line: 0, scope: !1296)
!1304 = !DILocation(line: 497, column: 2, scope: !1296)
!1305 = !DILocation(line: 501, column: 2, scope: !1296)
!1306 = !DILocation(line: 503, column: 17, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 503, column: 2)
!1308 = !DILocation(line: 503, column: 2, scope: !1307)
!1309 = !DILocation(line: 507, column: 27, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 503, column: 49)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 503, column: 2)
!1312 = !{!301, !294, i64 0}
!1313 = !DILocation(line: 507, column: 17, scope: !1310)
!1314 = !DILocation(line: 507, column: 7, scope: !1310)
!1315 = !DILocation(line: 507, column: 14, scope: !1310)
!1316 = !DILocation(line: 509, column: 2, scope: !1310)
!1317 = !DILocation(line: 503, column: 41, scope: !1311)
!1318 = distinct !{!1318, !1308, !1319}
!1319 = !DILocation(line: 509, column: 2, scope: !1307)
!1320 = !DILocation(line: 510, column: 1, scope: !1296)
!1321 = distinct !DISubprogram(name: "match_str_range", scope: !3, file: !3, line: 529, type: !1072, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1322)
!1322 = !{!1323, !1324, !1325, !1326, !1327}
!1323 = !DILocalVariable(name: "mol", arg: 1, scope: !1321, file: !3, line: 529, type: !270)
!1324 = !DILocalVariable(name: "lo", arg: 2, scope: !1321, file: !3, line: 529, type: !25)
!1325 = !DILocalVariable(name: "hi", arg: 3, scope: !1321, file: !3, line: 529, type: !25)
!1326 = !DILocalVariable(name: "m", scope: !1321, file: !3, line: 531, type: !25)
!1327 = !DILocalVariable(name: "sp", scope: !1321, file: !3, line: 532, type: !40)
!1328 = !DILocation(line: 0, scope: !1321)
!1329 = !DILocation(line: 534, column: 9, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 534, column: 6)
!1331 = !DILocation(line: 534, column: 6, scope: !1321)
!1332 = !DILocation(line: 535, column: 13, scope: !1330)
!1333 = !{!290, !293, i64 96}
!1334 = !DILocation(line: 535, column: 3, scope: !1330)
!1335 = !DILocation(line: 536, column: 24, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 536, column: 2)
!1337 = !DILocation(line: 536, column: 45, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 536, column: 2)
!1339 = !DILocation(line: 536, column: 37, scope: !1338)
!1340 = !DILocation(line: 536, column: 2, scope: !1336)
!1341 = !DILocation(line: 538, column: 10, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 538, column: 7)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 537, column: 25)
!1344 = !DILocation(line: 538, column: 15, scope: !1342)
!1345 = !DILocation(line: 538, column: 20, scope: !1342)
!1346 = !DILocation(line: 538, column: 7, scope: !1343)
!1347 = !DILocation(line: 539, column: 8, scope: !1342)
!1348 = !DILocation(line: 539, column: 15, scope: !1342)
!1349 = !DILocation(line: 539, column: 4, scope: !1342)
!1350 = !DILocation(line: 540, column: 2, scope: !1343)
!1351 = !DILocation(line: 537, column: 4, scope: !1338)
!1352 = !DILocation(line: 537, column: 17, scope: !1338)
!1353 = distinct !{!1353, !1340, !1354}
!1354 = !DILocation(line: 540, column: 2, scope: !1336)
!1355 = !DILocation(line: 541, column: 1, scope: !1321)
!1356 = distinct !DISubprogram(name: "match_res_pat", scope: !3, file: !3, line: 565, type: !1297, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362}
!1358 = !DILocalVariable(name: "mol", arg: 1, scope: !1356, file: !3, line: 565, type: !270)
!1359 = !DILocalVariable(name: "pat", arg: 2, scope: !1356, file: !3, line: 565, type: !238)
!1360 = !DILocalVariable(name: "r", scope: !1356, file: !3, line: 567, type: !25)
!1361 = !DILocalVariable(name: "sp", scope: !1356, file: !3, line: 568, type: !40)
!1362 = !DILocalVariable(name: "res", scope: !1356, file: !3, line: 569, type: !57)
!1363 = !DILocation(line: 0, scope: !1356)
!1364 = !DILocation(line: 571, column: 2, scope: !1356)
!1365 = !DILocation(line: 575, column: 2, scope: !1356)
!1366 = !DILocation(line: 577, column: 17, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 577, column: 2)
!1368 = !DILocation(line: 577, column: 2, scope: !1367)
!1369 = !DILocation(line: 578, column: 23, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 578, column: 7)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 577, column: 49)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 577, column: 2)
!1373 = !DILocation(line: 578, column: 17, scope: !1370)
!1374 = !DILocation(line: 578, column: 7, scope: !1371)
!1375 = !DILocation(line: 579, column: 24, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 579, column: 4)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 579, column: 4)
!1378 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 578, column: 31)
!1379 = !DILocation(line: 579, column: 18, scope: !1376)
!1380 = !DILocation(line: 579, column: 4, scope: !1377)
!1381 = !DILocation(line: 580, column: 15, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 579, column: 42)
!1383 = !DILocation(line: 580, column: 11, scope: !1382)
!1384 = !DILocation(line: 585, column: 31, scope: !1382)
!1385 = !{!319, !294, i64 24}
!1386 = !DILocation(line: 585, column: 20, scope: !1382)
!1387 = !DILocation(line: 585, column: 10, scope: !1382)
!1388 = !DILocation(line: 585, column: 17, scope: !1382)
!1389 = !DILocation(line: 588, column: 4, scope: !1382)
!1390 = !DILocation(line: 579, column: 38, scope: !1376)
!1391 = distinct !{!1391, !1380, !1392}
!1392 = !DILocation(line: 588, column: 4, scope: !1377)
!1393 = !DILocation(line: 589, column: 3, scope: !1378)
!1394 = !DILocation(line: 590, column: 2, scope: !1371)
!1395 = !DILocation(line: 577, column: 41, scope: !1372)
!1396 = distinct !{!1396, !1368, !1397}
!1397 = !DILocation(line: 590, column: 2, scope: !1367)
!1398 = !DILocation(line: 591, column: 1, scope: !1356)
!1399 = distinct !DISubprogram(name: "match_res_range", scope: !3, file: !3, line: 608, type: !1072, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406, !1407}
!1401 = !DILocalVariable(name: "mol", arg: 1, scope: !1399, file: !3, line: 608, type: !270)
!1402 = !DILocalVariable(name: "lo", arg: 2, scope: !1399, file: !3, line: 608, type: !25)
!1403 = !DILocalVariable(name: "hi", arg: 3, scope: !1399, file: !3, line: 608, type: !25)
!1404 = !DILocalVariable(name: "r", scope: !1399, file: !3, line: 610, type: !25)
!1405 = !DILocalVariable(name: "rhi", scope: !1399, file: !3, line: 610, type: !25)
!1406 = !DILocalVariable(name: "sp", scope: !1399, file: !3, line: 611, type: !40)
!1407 = !DILocalVariable(name: "res", scope: !1399, file: !3, line: 612, type: !57)
!1408 = !DILocation(line: 0, scope: !1399)
!1409 = !DILocation(line: 614, column: 17, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 614, column: 2)
!1411 = !DILocation(line: 614, column: 7, scope: !1410)
!1412 = !DILocation(line: 614, column: 2, scope: !1410)
!1413 = !DILocation(line: 615, column: 23, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 615, column: 7)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 614, column: 49)
!1416 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 614, column: 2)
!1417 = !DILocation(line: 615, column: 17, scope: !1414)
!1418 = !DILocation(line: 615, column: 7, scope: !1415)
!1419 = !DILocation(line: 616, column: 15, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 615, column: 31)
!1421 = !DILocation(line: 616, column: 10, scope: !1420)
!1422 = !DILocation(line: 616, column: 32, scope: !1420)
!1423 = !DILocation(line: 617, column: 9, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 617, column: 4)
!1425 = !DILocation(line: 617, column: 24, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 617, column: 4)
!1427 = !DILocation(line: 617, column: 18, scope: !1426)
!1428 = !DILocation(line: 617, column: 4, scope: !1424)
!1429 = !DILocation(line: 618, column: 15, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 617, column: 42)
!1431 = !DILocation(line: 618, column: 11, scope: !1430)
!1432 = !DILocation(line: 617, column: 38, scope: !1426)
!1433 = !DILocation(line: 619, column: 12, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 619, column: 9)
!1435 = !DILocation(line: 619, column: 21, scope: !1434)
!1436 = !DILocation(line: 619, column: 30, scope: !1434)
!1437 = !DILocation(line: 619, column: 9, scope: !1430)
!1438 = !DILocation(line: 620, column: 11, scope: !1434)
!1439 = !DILocation(line: 620, column: 18, scope: !1434)
!1440 = !DILocation(line: 620, column: 6, scope: !1434)
!1441 = !DILocation(line: 621, column: 4, scope: !1430)
!1442 = distinct !{!1442, !1428, !1443}
!1443 = !DILocation(line: 621, column: 4, scope: !1424)
!1444 = !DILocation(line: 622, column: 3, scope: !1420)
!1445 = !DILocation(line: 623, column: 2, scope: !1415)
!1446 = !DILocation(line: 614, column: 41, scope: !1416)
!1447 = distinct !{!1447, !1412, !1448}
!1448 = !DILocation(line: 623, column: 2, scope: !1410)
!1449 = !DILocation(line: 624, column: 1, scope: !1399)
!1450 = distinct !DISubprogram(name: "match_atom_pat", scope: !3, file: !3, line: 646, type: !1297, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1451)
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458}
!1452 = !DILocalVariable(name: "mol", arg: 1, scope: !1450, file: !3, line: 646, type: !270)
!1453 = !DILocalVariable(name: "pat", arg: 2, scope: !1450, file: !3, line: 646, type: !238)
!1454 = !DILocalVariable(name: "r", scope: !1450, file: !3, line: 648, type: !25)
!1455 = !DILocalVariable(name: "a", scope: !1450, file: !3, line: 648, type: !25)
!1456 = !DILocalVariable(name: "sp", scope: !1450, file: !3, line: 649, type: !40)
!1457 = !DILocalVariable(name: "res", scope: !1450, file: !3, line: 650, type: !57)
!1458 = !DILocalVariable(name: "ap", scope: !1450, file: !3, line: 651, type: !103)
!1459 = !DILocation(line: 0, scope: !1450)
!1460 = !DILocation(line: 653, column: 2, scope: !1450)
!1461 = !DILocation(line: 657, column: 2, scope: !1450)
!1462 = !DILocation(line: 659, column: 17, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 659, column: 2)
!1464 = !DILocation(line: 659, column: 2, scope: !1463)
!1465 = !DILocation(line: 660, column: 23, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 660, column: 7)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 659, column: 49)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 659, column: 2)
!1469 = !DILocation(line: 660, column: 17, scope: !1466)
!1470 = !DILocation(line: 660, column: 7, scope: !1467)
!1471 = !DILocation(line: 661, column: 24, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 661, column: 4)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 661, column: 4)
!1474 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 660, column: 31)
!1475 = !DILocation(line: 661, column: 18, scope: !1472)
!1476 = !DILocation(line: 661, column: 4, scope: !1473)
!1477 = !DILocation(line: 662, column: 15, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 661, column: 42)
!1479 = !DILocation(line: 662, column: 11, scope: !1478)
!1480 = !DILocation(line: 663, column: 26, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 663, column: 9)
!1482 = !DILocation(line: 663, column: 19, scope: !1481)
!1483 = !DILocation(line: 663, column: 9, scope: !1478)
!1484 = !DILocation(line: 664, column: 27, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 664, column: 6)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 664, column: 6)
!1487 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 663, column: 34)
!1488 = !DILocation(line: 664, column: 20, scope: !1485)
!1489 = !DILocation(line: 664, column: 6, scope: !1486)
!1490 = !DILocation(line: 665, column: 18, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 664, column: 42)
!1492 = !DILocation(line: 665, column: 13, scope: !1491)
!1493 = !DILocation(line: 672, column: 20, scope: !1491)
!1494 = !{!336, !294, i64 0}
!1495 = !DILocation(line: 672, column: 11, scope: !1491)
!1496 = !DILocation(line: 671, column: 11, scope: !1491)
!1497 = !DILocation(line: 671, column: 18, scope: !1491)
!1498 = !DILocation(line: 675, column: 6, scope: !1491)
!1499 = !DILocation(line: 664, column: 38, scope: !1485)
!1500 = distinct !{!1500, !1489, !1501}
!1501 = !DILocation(line: 675, column: 6, scope: !1486)
!1502 = !DILocation(line: 676, column: 5, scope: !1487)
!1503 = !DILocation(line: 677, column: 4, scope: !1478)
!1504 = !DILocation(line: 661, column: 38, scope: !1472)
!1505 = distinct !{!1505, !1476, !1506}
!1506 = !DILocation(line: 677, column: 4, scope: !1473)
!1507 = !DILocation(line: 678, column: 3, scope: !1474)
!1508 = !DILocation(line: 679, column: 2, scope: !1467)
!1509 = !DILocation(line: 659, column: 41, scope: !1468)
!1510 = distinct !{!1510, !1464, !1511}
!1511 = !DILocation(line: 679, column: 2, scope: !1463)
!1512 = !DILocation(line: 680, column: 1, scope: !1450)
!1513 = distinct !DISubprogram(name: "aexpr2rexpr", scope: !3, file: !3, line: 695, type: !1514, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1516)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !238, !238}
!1516 = !{!1517, !1518, !1519, !1520}
!1517 = !DILocalVariable(name: "aexpr", arg: 1, scope: !1513, file: !3, line: 695, type: !238)
!1518 = !DILocalVariable(name: "rexpr", arg: 2, scope: !1513, file: !3, line: 695, type: !238)
!1519 = !DILocalVariable(name: "aep", scope: !1513, file: !3, line: 697, type: !238)
!1520 = !DILocalVariable(name: "rep", scope: !1513, file: !3, line: 697, type: !238)
!1521 = !DILocation(line: 0, scope: !1513)
!1522 = !DILocation(line: 700, column: 6, scope: !1513)
!1523 = !DILocation(line: 700, column: 9, scope: !1513)
!1524 = !DILocation(line: 701, column: 20, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 701, column: 2)
!1526 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 701, column: 2)
!1527 = !DILocation(line: 701, column: 2, scope: !1526)
!1528 = !DILocation(line: 702, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 702, column: 7)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 701, column: 33)
!1531 = !DILocation(line: 702, column: 12, scope: !1529)
!1532 = !DILocation(line: 702, column: 7, scope: !1530)
!1533 = !DILocation(line: 703, column: 8, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 702, column: 20)
!1535 = !DILocation(line: 703, column: 11, scope: !1534)
!1536 = !DILocation(line: 704, column: 8, scope: !1534)
!1537 = !DILocation(line: 704, column: 11, scope: !1534)
!1538 = !DILocation(line: 705, column: 3, scope: !1534)
!1539 = !DILocation(line: 705, column: 13, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 705, column: 13)
!1541 = !DILocation(line: 705, column: 18, scope: !1540)
!1542 = !DILocation(line: 705, column: 13, scope: !1529)
!1543 = !DILocation(line: 706, column: 8, scope: !1540)
!1544 = !DILocation(line: 706, column: 11, scope: !1540)
!1545 = !DILocation(line: 706, column: 4, scope: !1540)
!1546 = !DILocation(line: 708, column: 13, scope: !1540)
!1547 = !DILocation(line: 708, column: 8, scope: !1540)
!1548 = !DILocation(line: 708, column: 11, scope: !1540)
!1549 = !DILocation(line: 0, scope: !1540)
!1550 = !DILocation(line: 0, scope: !1529)
!1551 = !DILocation(line: 709, column: 2, scope: !1530)
!1552 = !DILocation(line: 701, column: 29, scope: !1525)
!1553 = distinct !{!1553, !1527, !1554}
!1554 = !DILocation(line: 709, column: 2, scope: !1526)
!1555 = !DILocation(line: 710, column: 6, scope: !1513)
!1556 = !DILocation(line: 710, column: 9, scope: !1513)
!1557 = !DILocation(line: 711, column: 7, scope: !1513)
!1558 = !DILocation(line: 712, column: 1, scope: !1513)
!1559 = distinct !DISubprogram(name: "atom_in_str_pat", scope: !3, file: !3, line: 512, type: !842, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1560)
!1560 = !{!1561, !1562, !1563, !1564}
!1561 = !DILocalVariable(name: "ap", arg: 1, scope: !1559, file: !3, line: 512, type: !103)
!1562 = !DILocalVariable(name: "pat", arg: 2, scope: !1559, file: !3, line: 512, type: !238)
!1563 = !DILocalVariable(name: "res", scope: !1559, file: !3, line: 514, type: !57)
!1564 = !DILocalVariable(name: "sp", scope: !1559, file: !3, line: 515, type: !40)
!1565 = !DILocation(line: 0, scope: !1559)
!1566 = !DILocation(line: 517, column: 12, scope: !1559)
!1567 = !{!336, !294, i64 56}
!1568 = !DILocation(line: 518, column: 12, scope: !1559)
!1569 = !{!319, !294, i64 56}
!1570 = !DILocation(line: 519, column: 2, scope: !1559)
!1571 = !DILocation(line: 524, column: 2, scope: !1559)
!1572 = !DILocation(line: 525, column: 20, scope: !1559)
!1573 = !DILocation(line: 525, column: 10, scope: !1559)
!1574 = !DILocation(line: 525, column: 2, scope: !1559)
!1575 = distinct !DISubprogram(name: "atom_in_str_range", scope: !3, file: !3, line: 543, type: !1576, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!25, !103, !25, !25}
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1579 = !DILocalVariable(name: "ap", arg: 1, scope: !1575, file: !3, line: 543, type: !103)
!1580 = !DILocalVariable(name: "lo", arg: 2, scope: !1575, file: !3, line: 543, type: !25)
!1581 = !DILocalVariable(name: "hi", arg: 3, scope: !1575, file: !3, line: 543, type: !25)
!1582 = !DILocalVariable(name: "m", scope: !1575, file: !3, line: 545, type: !25)
!1583 = !DILocalVariable(name: "res", scope: !1575, file: !3, line: 546, type: !57)
!1584 = !DILocalVariable(name: "sp", scope: !1575, file: !3, line: 547, type: !40)
!1585 = !DILocalVariable(name: "sp1", scope: !1575, file: !3, line: 547, type: !40)
!1586 = !DILocalVariable(name: "mol", scope: !1575, file: !3, line: 548, type: !270)
!1587 = !DILocation(line: 0, scope: !1575)
!1588 = !DILocation(line: 550, column: 12, scope: !1575)
!1589 = !DILocation(line: 551, column: 12, scope: !1575)
!1590 = !DILocation(line: 552, column: 12, scope: !1575)
!1591 = !{!301, !294, i64 16}
!1592 = !DILocation(line: 553, column: 9, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 553, column: 6)
!1594 = !DILocation(line: 553, column: 6, scope: !1575)
!1595 = !DILocation(line: 554, column: 13, scope: !1593)
!1596 = !DILocation(line: 554, column: 3, scope: !1593)
!1597 = !DILocation(line: 555, column: 25, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 555, column: 2)
!1599 = !DILocation(line: 555, column: 46, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 555, column: 2)
!1601 = !DILocation(line: 555, column: 38, scope: !1600)
!1602 = !DILocation(line: 555, column: 2, scope: !1598)
!1603 = !DILocation(line: 557, column: 10, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 557, column: 7)
!1605 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 556, column: 27)
!1606 = !DILocation(line: 557, column: 7, scope: !1605)
!1607 = !DILocation(line: 558, column: 11, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 558, column: 8)
!1609 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 557, column: 18)
!1610 = !DILocation(line: 558, column: 16, scope: !1608)
!1611 = !DILocation(line: 558, column: 21, scope: !1608)
!1612 = !DILocation(line: 558, column: 8, scope: !1609)
!1613 = !DILocation(line: 559, column: 5, scope: !1608)
!1614 = !DILocation(line: 560, column: 3, scope: !1609)
!1615 = !DILocation(line: 561, column: 2, scope: !1605)
!1616 = !DILocation(line: 556, column: 4, scope: !1600)
!1617 = !DILocation(line: 556, column: 19, scope: !1600)
!1618 = distinct !{!1618, !1602, !1619}
!1619 = !DILocation(line: 561, column: 2, scope: !1598)
!1620 = !DILocation(line: 562, column: 2, scope: !1575)
!1621 = !DILocation(line: 563, column: 1, scope: !1575)
!1622 = distinct !DISubprogram(name: "atom_in_res_pat", scope: !3, file: !3, line: 593, type: !842, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1623)
!1623 = !{!1624, !1625, !1626}
!1624 = !DILocalVariable(name: "ap", arg: 1, scope: !1622, file: !3, line: 593, type: !103)
!1625 = !DILocalVariable(name: "pat", arg: 2, scope: !1622, file: !3, line: 593, type: !238)
!1626 = !DILocalVariable(name: "res", scope: !1622, file: !3, line: 595, type: !57)
!1627 = !DILocation(line: 0, scope: !1622)
!1628 = !DILocation(line: 597, column: 12, scope: !1622)
!1629 = !DILocation(line: 598, column: 2, scope: !1622)
!1630 = !DILocation(line: 603, column: 2, scope: !1622)
!1631 = !DILocation(line: 604, column: 21, scope: !1622)
!1632 = !DILocation(line: 604, column: 10, scope: !1622)
!1633 = !DILocation(line: 604, column: 2, scope: !1622)
!1634 = distinct !DISubprogram(name: "atom_in_res_range", scope: !3, file: !3, line: 626, type: !1576, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1635)
!1635 = !{!1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643}
!1636 = !DILocalVariable(name: "ap", arg: 1, scope: !1634, file: !3, line: 626, type: !103)
!1637 = !DILocalVariable(name: "lo", arg: 2, scope: !1634, file: !3, line: 626, type: !25)
!1638 = !DILocalVariable(name: "hi", arg: 3, scope: !1634, file: !3, line: 626, type: !25)
!1639 = !DILocalVariable(name: "r", scope: !1634, file: !3, line: 628, type: !25)
!1640 = !DILocalVariable(name: "rhi", scope: !1634, file: !3, line: 628, type: !25)
!1641 = !DILocalVariable(name: "sp", scope: !1634, file: !3, line: 629, type: !40)
!1642 = !DILocalVariable(name: "res", scope: !1634, file: !3, line: 630, type: !57)
!1643 = !DILocalVariable(name: "res1", scope: !1634, file: !3, line: 630, type: !57)
!1644 = !DILocation(line: 0, scope: !1634)
!1645 = !DILocation(line: 632, column: 12, scope: !1634)
!1646 = !DILocation(line: 633, column: 12, scope: !1634)
!1647 = !DILocation(line: 635, column: 13, scope: !1634)
!1648 = !DILocation(line: 635, column: 8, scope: !1634)
!1649 = !DILocation(line: 635, column: 30, scope: !1634)
!1650 = !DILocation(line: 636, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 636, column: 2)
!1652 = !DILocation(line: 636, column: 22, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 636, column: 2)
!1654 = !DILocation(line: 636, column: 16, scope: !1653)
!1655 = !DILocation(line: 636, column: 2, scope: !1651)
!1656 = !DILocation(line: 637, column: 14, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 636, column: 40)
!1658 = !DILocation(line: 637, column: 10, scope: !1657)
!1659 = !DILocation(line: 638, column: 11, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 638, column: 7)
!1661 = !DILocation(line: 638, column: 7, scope: !1657)
!1662 = !DILocation(line: 639, column: 16, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 639, column: 8)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 638, column: 20)
!1665 = !DILocation(line: 639, column: 11, scope: !1663)
!1666 = !DILocation(line: 639, column: 20, scope: !1663)
!1667 = !DILocation(line: 639, column: 25, scope: !1663)
!1668 = !DILocation(line: 639, column: 29, scope: !1663)
!1669 = !DILocation(line: 639, column: 8, scope: !1664)
!1670 = !DILocation(line: 640, column: 5, scope: !1663)
!1671 = !DILocation(line: 641, column: 3, scope: !1664)
!1672 = !DILocation(line: 642, column: 2, scope: !1657)
!1673 = !DILocation(line: 636, column: 36, scope: !1653)
!1674 = distinct !{!1674, !1655, !1675}
!1675 = !DILocation(line: 642, column: 2, scope: !1651)
!1676 = !DILocation(line: 643, column: 2, scope: !1634)
!1677 = !DILocation(line: 644, column: 1, scope: !1634)
!1678 = distinct !DISubprogram(name: "atom_in_atom_pat", scope: !3, file: !3, line: 682, type: !842, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1679)
!1679 = !{!1680, !1681}
!1680 = !DILocalVariable(name: "ap", arg: 1, scope: !1678, file: !3, line: 682, type: !103)
!1681 = !DILocalVariable(name: "pat", arg: 2, scope: !1678, file: !3, line: 682, type: !238)
!1682 = !DILocation(line: 0, scope: !1678)
!1683 = !DILocation(line: 685, column: 2, scope: !1678)
!1684 = !DILocation(line: 690, column: 2, scope: !1678)
!1685 = !DILocation(line: 691, column: 20, scope: !1678)
!1686 = !DILocation(line: 691, column: 10, scope: !1678)
!1687 = !DILocation(line: 691, column: 2, scope: !1678)
