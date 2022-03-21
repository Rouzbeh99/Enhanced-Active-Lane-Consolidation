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

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [33 x i8] c"setpoint: %s: no atoms selected\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"select_atoms: atom-expr too complicated\0A\00", align 1
@aexpr = internal global [1000 x i8] zeroinitializer, align 16, !dbg !0
@.str.2 = private unnamed_addr constant [42 x i8] c"atom_in_aexpr: atom-expr too complicated\0A\00", align 1
@spart = internal unnamed_addr global i8* null, align 8, !dbg !250
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@rpart = internal unnamed_addr global i8* null, align 8, !dbg !252
@apart = internal unnamed_addr global i8* null, align 8, !dbg !254
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"atom range not allowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rexpr = internal global [1000 x i8] zeroinitializer, align 16, !dbg !256
@expbuf = internal global [1000 x i8] zeroinitializer, align 16, !dbg !261

; Function Attrs: nounwind uwtable
define dso_local i32 @setpoint(%struct.molecule_t* readonly %0, i8* %1, double* nocapture %2) local_unnamed_addr #0 !dbg !267 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !273, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i8* %1, metadata !274, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double* %2, metadata !275, metadata !DIExpression()), !dbg !285
  %4 = tail call i32 @select_atoms(%struct.molecule_t* %0, i8* %1), !dbg !286
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !285
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !287
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !279, metadata !DIExpression()), !dbg !285
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !289, !tbaa !290
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !285
  %7 = icmp eq %struct.strand_t* %6, null, !dbg !294
  br i1 %7, label %91, label %8, !dbg !294

8:                                                ; preds = %81, %3
  %9 = phi %struct.strand_t* [ %87, %81 ], [ %6, %3 ]
  %10 = phi double [ %85, %81 ], [ 0.000000e+00, %3 ]
  %11 = phi double [ %84, %81 ], [ 0.000000e+00, %3 ]
  %12 = phi double [ %83, %81 ], [ 0.000000e+00, %3 ]
  %13 = phi i32 [ %82, %81 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata double %10, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %11, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %12, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %13, metadata !278, metadata !DIExpression()), !dbg !285
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 2, !dbg !295
  %15 = load i32, i32* %14, align 4, !dbg !295, !tbaa !299
  %16 = and i32 %15, 1, !dbg !302
  %17 = icmp eq i32 %16, 0, !dbg !302
  br i1 %17, label %81, label %18, !dbg !303

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata double %10, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %11, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %12, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %13, metadata !278, metadata !DIExpression()), !dbg !285
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 5, !dbg !304
  %20 = load i32, i32* %19, align 8, !dbg !304, !tbaa !308
  %21 = icmp sgt i32 %20, 0, !dbg !309
  br i1 %21, label %22, label %81, !dbg !310

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 7, !dbg !311
  %24 = load %struct.residue_t**, %struct.residue_t*** %23, align 8, !dbg !311, !tbaa !313
  %25 = zext i32 %20 to i64, !dbg !310
  br label %26, !dbg !310

26:                                               ; preds = %74, %22
  %27 = phi i64 [ 0, %22 ], [ %79, %74 ]
  %28 = phi double [ %10, %22 ], [ %78, %74 ]
  %29 = phi double [ %11, %22 ], [ %77, %74 ]
  %30 = phi double [ %12, %22 ], [ %76, %74 ]
  %31 = phi i32 [ %13, %22 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata double %28, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %29, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %30, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %27, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %31, metadata !278, metadata !DIExpression()), !dbg !285
  %32 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %24, i64 %27, !dbg !314
  %33 = load %struct.residue_t*, %struct.residue_t** %32, align 8, !dbg !314, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %33, metadata !280, metadata !DIExpression()), !dbg !285
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i64 0, i32 6, !dbg !315
  %35 = load i32, i32* %34, align 8, !dbg !315, !tbaa !317
  %36 = and i32 %35, 1, !dbg !319
  %37 = icmp eq i32 %36, 0, !dbg !319
  br i1 %37, label %74, label %38, !dbg !320

38:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double %28, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %29, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %30, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %31, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !277, metadata !DIExpression()), !dbg !285
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i64 0, i32 15, !dbg !321
  %40 = load i32, i32* %39, align 8, !dbg !321, !tbaa !325
  %41 = icmp sgt i32 %40, 0, !dbg !326
  br i1 %41, label %42, label %74, !dbg !327

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i64 0, i32 17, !dbg !328
  %44 = load %struct.atom_t*, %struct.atom_t** %43, align 8, !dbg !328, !tbaa !330
  %45 = zext i32 %40 to i64, !dbg !327
  br label %46, !dbg !327

46:                                               ; preds = %67, %42
  %47 = phi i64 [ 0, %42 ], [ %72, %67 ]
  %48 = phi double [ %28, %42 ], [ %71, %67 ]
  %49 = phi double [ %29, %42 ], [ %70, %67 ]
  %50 = phi double [ %30, %42 ], [ %69, %67 ]
  %51 = phi i32 [ %31, %42 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata double %48, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %49, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %50, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %51, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %47, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !281, metadata !DIExpression()), !dbg !285
  %52 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %44, i64 %47, i32 2, !dbg !331
  %53 = load i32, i32* %52, align 8, !dbg !331, !tbaa !333
  %54 = and i32 %53, 1, !dbg !336
  %55 = icmp eq i32 %54, 0, !dbg !336
  br i1 %55, label %67, label %56, !dbg !337

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %44, i64 %47, i32 17, i64 0, !dbg !338
  %58 = load double, double* %57, align 8, !dbg !338, !tbaa !340
  %59 = fadd double %50, %58, !dbg !341
  call void @llvm.dbg.value(metadata double %59, metadata !282, metadata !DIExpression()), !dbg !285
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %44, i64 %47, i32 17, i64 1, !dbg !342
  %61 = load double, double* %60, align 8, !dbg !342, !tbaa !340
  %62 = fadd double %49, %61, !dbg !343
  call void @llvm.dbg.value(metadata double %62, metadata !283, metadata !DIExpression()), !dbg !285
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %44, i64 %47, i32 17, i64 2, !dbg !344
  %64 = load double, double* %63, align 8, !dbg !344, !tbaa !340
  %65 = fadd double %48, %64, !dbg !345
  call void @llvm.dbg.value(metadata double %65, metadata !284, metadata !DIExpression()), !dbg !285
  %66 = add nsw i32 %51, 1, !dbg !346
  call void @llvm.dbg.value(metadata i32 %66, metadata !278, metadata !DIExpression()), !dbg !285
  br label %67, !dbg !347

67:                                               ; preds = %56, %46
  %68 = phi i32 [ %66, %56 ], [ %51, %46 ], !dbg !289
  %69 = phi double [ %59, %56 ], [ %50, %46 ], !dbg !285
  %70 = phi double [ %62, %56 ], [ %49, %46 ], !dbg !285
  %71 = phi double [ %65, %56 ], [ %48, %46 ], !dbg !285
  call void @llvm.dbg.value(metadata double %71, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %70, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %69, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %68, metadata !278, metadata !DIExpression()), !dbg !285
  %72 = add nuw nsw i64 %47, 1, !dbg !348
  call void @llvm.dbg.value(metadata i64 %72, metadata !277, metadata !DIExpression()), !dbg !285
  %73 = icmp ult i64 %72, %45, !dbg !326
  br i1 %73, label %46, label %74, !dbg !327, !llvm.loop !349

74:                                               ; preds = %67, %38, %26
  %75 = phi i32 [ %31, %26 ], [ %31, %38 ], [ %68, %67 ], !dbg !351
  %76 = phi double [ %30, %26 ], [ %30, %38 ], [ %69, %67 ], !dbg !352
  %77 = phi double [ %29, %26 ], [ %29, %38 ], [ %70, %67 ], !dbg !353
  %78 = phi double [ %28, %26 ], [ %28, %38 ], [ %71, %67 ], !dbg !354
  call void @llvm.dbg.value(metadata double %78, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %77, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %76, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %75, metadata !278, metadata !DIExpression()), !dbg !285
  %79 = add nuw nsw i64 %27, 1, !dbg !355
  call void @llvm.dbg.value(metadata i64 %79, metadata !276, metadata !DIExpression()), !dbg !285
  %80 = icmp ult i64 %79, %25, !dbg !309
  br i1 %80, label %26, label %81, !dbg !310, !llvm.loop !356

81:                                               ; preds = %74, %18, %8
  %82 = phi i32 [ %13, %8 ], [ %13, %18 ], [ %75, %74 ], !dbg !351
  %83 = phi double [ %12, %8 ], [ %12, %18 ], [ %76, %74 ], !dbg !352
  %84 = phi double [ %11, %8 ], [ %11, %18 ], [ %77, %74 ], !dbg !353
  %85 = phi double [ %10, %8 ], [ %10, %18 ], [ %78, %74 ], !dbg !354
  call void @llvm.dbg.value(metadata double %85, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %84, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %83, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %82, metadata !278, metadata !DIExpression()), !dbg !285
  %86 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 4, !dbg !358
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !279, metadata !DIExpression()), !dbg !285
  %87 = load %struct.strand_t*, %struct.strand_t** %86, align 8, !dbg !289, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %87, metadata !279, metadata !DIExpression()), !dbg !285
  %88 = icmp eq %struct.strand_t* %87, null, !dbg !294
  br i1 %88, label %89, label %8, !dbg !294, !llvm.loop !359

89:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i32 %82, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %83, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %84, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %85, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %82, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %83, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %84, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %85, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %82, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %83, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %84, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %85, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %82, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %83, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %84, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %85, metadata !284, metadata !DIExpression()), !dbg !285
  %90 = icmp eq i32 %82, 0, !dbg !361
  br i1 %90, label %91, label %94, !dbg !363

91:                                               ; preds = %89, %3
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !364, !tbaa !290
  %93 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %1) #11, !dbg !366
  br label %101, !dbg !367

94:                                               ; preds = %89
  %95 = sitofp i32 %82 to double, !dbg !368
  %96 = fdiv double %83, %95, !dbg !370
  store double %96, double* %2, align 8, !dbg !371, !tbaa !340
  %97 = fdiv double %84, %95, !dbg !372
  %98 = getelementptr inbounds double, double* %2, i64 1, !dbg !373
  store double %97, double* %98, align 8, !dbg !374, !tbaa !340
  %99 = fdiv double %85, %95, !dbg !375
  %100 = getelementptr inbounds double, double* %2, i64 2, !dbg !376
  store double %99, double* %100, align 8, !dbg !377, !tbaa !340
  br label %101, !dbg !378

101:                                              ; preds = %94, %91
  %102 = phi i32 [ 1, %91 ], [ 0, %94 ], !dbg !285
  ret i32 %102, !dbg !379
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* readonly %0, i8* %1) local_unnamed_addr #0 !dbg !380 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !384, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8* %1, metadata !385, metadata !DIExpression()), !dbg !389
  %5 = icmp eq i8* %1, null, !dbg !390
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !389
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !389, !tbaa !290
  %8 = icmp eq %struct.strand_t* %7, null, !dbg !389
  br i1 %5, label %9, label %50, !dbg !392

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !393, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !400, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !400, metadata !DIExpression()), !dbg !402
  br i1 %8, label %687, label %10, !dbg !405

10:                                               ; preds = %46, %9
  %11 = phi %struct.strand_t* [ %48, %46 ], [ %7, %9 ]
  %12 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 2, !dbg !407
  %13 = load i32, i32* %12, align 4, !dbg !410, !tbaa !299
  %14 = or i32 %13, 1, !dbg !410
  store i32 %14, i32* %12, align 4, !dbg !410, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !399, metadata !DIExpression()), !dbg !402
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 5, !dbg !411
  %16 = load i32, i32* %15, align 8, !dbg !411, !tbaa !308
  %17 = icmp sgt i32 %16, 0, !dbg !414
  br i1 %17, label %18, label %46, !dbg !415

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 7, !dbg !416
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !416, !tbaa !313
  %21 = zext i32 %16 to i64, !dbg !415
  br label %22, !dbg !415

22:                                               ; preds = %43, %18
  %23 = phi i64 [ 0, %18 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !399, metadata !DIExpression()), !dbg !402
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %23, !dbg !418
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !418, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !401, metadata !DIExpression()), !dbg !402
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 6, !dbg !419
  %27 = load i32, i32* %26, align 8, !dbg !420, !tbaa !317
  %28 = or i32 %27, 1, !dbg !420
  store i32 %28, i32* %26, align 8, !dbg !420, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression()), !dbg !402
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 15, !dbg !421
  %30 = load i32, i32* %29, align 8, !dbg !421, !tbaa !325
  %31 = icmp sgt i32 %30, 0, !dbg !424
  br i1 %31, label %32, label %43, !dbg !425

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 17, !dbg !426
  %34 = load %struct.atom_t*, %struct.atom_t** %33, align 8, !dbg !426, !tbaa !330
  %35 = zext i32 %30 to i64, !dbg !425
  br label %36, !dbg !425

36:                                               ; preds = %36, %32
  %37 = phi i64 [ 0, %32 ], [ %41, %36 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !398, metadata !DIExpression()), !dbg !402
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %37, i32 2, !dbg !427
  %39 = load i32, i32* %38, align 8, !dbg !428, !tbaa !333
  %40 = or i32 %39, 1, !dbg !428
  store i32 %40, i32* %38, align 8, !dbg !428, !tbaa !333
  %41 = add nuw nsw i64 %37, 1, !dbg !429
  call void @llvm.dbg.value(metadata i64 %41, metadata !398, metadata !DIExpression()), !dbg !402
  %42 = icmp eq i64 %41, %35, !dbg !424
  br i1 %42, label %43, label %36, !dbg !425, !llvm.loop !430

43:                                               ; preds = %36, %22
  %44 = add nuw nsw i64 %23, 1, !dbg !432
  call void @llvm.dbg.value(metadata i64 %44, metadata !399, metadata !DIExpression()), !dbg !402
  %45 = icmp eq i64 %44, %21, !dbg !414
  br i1 %45, label %46, label %22, !dbg !415, !llvm.loop !433

46:                                               ; preds = %43, %10
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 4, !dbg !435
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !400, metadata !DIExpression()), !dbg !402
  %48 = load %struct.strand_t*, %struct.strand_t** %47, align 8, !dbg !436, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %48, metadata !400, metadata !DIExpression()), !dbg !402
  %49 = icmp eq %struct.strand_t* %48, null, !dbg !405
  br i1 %49, label %687, label %10, !dbg !405, !llvm.loop !437

50:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !439, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !444, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !444, metadata !DIExpression()), !dbg !446
  br i1 %8, label %131, label %51, !dbg !448

51:                                               ; preds = %87, %50
  %52 = phi %struct.strand_t* [ %89, %87 ], [ %7, %50 ]
  %53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %52, i64 0, i32 2, !dbg !450
  %54 = load i32, i32* %53, align 4, !dbg !453, !tbaa !299
  %55 = and i32 %54, -129, !dbg !453
  store i32 %55, i32* %53, align 4, !dbg !453, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !443, metadata !DIExpression()), !dbg !446
  %56 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %52, i64 0, i32 5, !dbg !454
  %57 = load i32, i32* %56, align 8, !dbg !454, !tbaa !308
  %58 = icmp sgt i32 %57, 0, !dbg !457
  br i1 %58, label %59, label %87, !dbg !458

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %52, i64 0, i32 7, !dbg !459
  %61 = load %struct.residue_t**, %struct.residue_t*** %60, align 8, !dbg !459, !tbaa !313
  %62 = zext i32 %57 to i64, !dbg !458
  br label %63, !dbg !458

63:                                               ; preds = %84, %59
  %64 = phi i64 [ 0, %59 ], [ %85, %84 ]
  call void @llvm.dbg.value(metadata i64 %64, metadata !443, metadata !DIExpression()), !dbg !446
  %65 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %61, i64 %64, !dbg !461
  %66 = load %struct.residue_t*, %struct.residue_t** %65, align 8, !dbg !461, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %66, metadata !445, metadata !DIExpression()), !dbg !446
  %67 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %66, i64 0, i32 6, !dbg !462
  %68 = load i32, i32* %67, align 8, !dbg !463, !tbaa !317
  %69 = and i32 %68, -129, !dbg !463
  store i32 %69, i32* %67, align 8, !dbg !463, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !446
  %70 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %66, i64 0, i32 15, !dbg !464
  %71 = load i32, i32* %70, align 8, !dbg !464, !tbaa !325
  %72 = icmp sgt i32 %71, 0, !dbg !467
  br i1 %72, label %73, label %84, !dbg !468

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %66, i64 0, i32 17, !dbg !469
  %75 = load %struct.atom_t*, %struct.atom_t** %74, align 8, !dbg !469, !tbaa !330
  %76 = zext i32 %71 to i64, !dbg !468
  br label %77, !dbg !468

77:                                               ; preds = %77, %73
  %78 = phi i64 [ 0, %73 ], [ %82, %77 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !442, metadata !DIExpression()), !dbg !446
  %79 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %75, i64 %78, i32 2, !dbg !470
  %80 = load i32, i32* %79, align 8, !dbg !471, !tbaa !333
  %81 = and i32 %80, -129, !dbg !471
  store i32 %81, i32* %79, align 8, !dbg !471, !tbaa !333
  %82 = add nuw nsw i64 %78, 1, !dbg !472
  call void @llvm.dbg.value(metadata i64 %82, metadata !442, metadata !DIExpression()), !dbg !446
  %83 = icmp eq i64 %82, %76, !dbg !467
  br i1 %83, label %84, label %77, !dbg !468, !llvm.loop !473

84:                                               ; preds = %77, %63
  %85 = add nuw nsw i64 %64, 1, !dbg !475
  call void @llvm.dbg.value(metadata i64 %85, metadata !443, metadata !DIExpression()), !dbg !446
  %86 = icmp eq i64 %85, %62, !dbg !457
  br i1 %86, label %87, label %63, !dbg !458, !llvm.loop !476

87:                                               ; preds = %84, %51
  %88 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %52, i64 0, i32 4, !dbg !478
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !444, metadata !DIExpression()), !dbg !446
  %89 = load %struct.strand_t*, %struct.strand_t** %88, align 8, !dbg !479, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %89, metadata !444, metadata !DIExpression()), !dbg !446
  %90 = icmp eq %struct.strand_t* %89, null, !dbg !448
  br i1 %90, label %91, label %51, !dbg !448, !llvm.loop !480

91:                                               ; preds = %127, %87
  %92 = phi %struct.strand_t* [ %129, %127 ], [ %7, %87 ]
  %93 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %92, i64 0, i32 2, !dbg !482
  %94 = load i32, i32* %93, align 4, !dbg !494, !tbaa !299
  %95 = and i32 %94, -2, !dbg !494
  store i32 %95, i32* %93, align 4, !dbg !494, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !495
  %96 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %92, i64 0, i32 5, !dbg !496
  %97 = load i32, i32* %96, align 8, !dbg !496, !tbaa !308
  %98 = icmp sgt i32 %97, 0, !dbg !499
  br i1 %98, label %99, label %127, !dbg !500

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %92, i64 0, i32 7, !dbg !501
  %101 = load %struct.residue_t**, %struct.residue_t*** %100, align 8, !dbg !501, !tbaa !313
  %102 = zext i32 %97 to i64, !dbg !500
  br label %103, !dbg !500

103:                                              ; preds = %124, %99
  %104 = phi i64 [ 0, %99 ], [ %125, %124 ]
  call void @llvm.dbg.value(metadata i64 %104, metadata !490, metadata !DIExpression()), !dbg !495
  %105 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %101, i64 %104, !dbg !503
  %106 = load %struct.residue_t*, %struct.residue_t** %105, align 8, !dbg !503, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %106, metadata !492, metadata !DIExpression()), !dbg !495
  %107 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %106, i64 0, i32 6, !dbg !504
  %108 = load i32, i32* %107, align 8, !dbg !505, !tbaa !317
  %109 = and i32 %108, -2, !dbg !505
  store i32 %109, i32* %107, align 8, !dbg !505, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !489, metadata !DIExpression()), !dbg !495
  %110 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %106, i64 0, i32 15, !dbg !506
  %111 = load i32, i32* %110, align 8, !dbg !506, !tbaa !325
  %112 = icmp sgt i32 %111, 0, !dbg !509
  br i1 %112, label %113, label %124, !dbg !510

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %106, i64 0, i32 17, !dbg !511
  %115 = load %struct.atom_t*, %struct.atom_t** %114, align 8, !dbg !511, !tbaa !330
  %116 = zext i32 %111 to i64, !dbg !510
  br label %117, !dbg !510

117:                                              ; preds = %117, %113
  %118 = phi i64 [ 0, %113 ], [ %122, %117 ]
  call void @llvm.dbg.value(metadata i64 %118, metadata !489, metadata !DIExpression()), !dbg !495
  %119 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %115, i64 %118, i32 2, !dbg !512
  %120 = load i32, i32* %119, align 8, !dbg !513, !tbaa !333
  %121 = and i32 %120, -2, !dbg !513
  store i32 %121, i32* %119, align 8, !dbg !513, !tbaa !333
  %122 = add nuw nsw i64 %118, 1, !dbg !514
  call void @llvm.dbg.value(metadata i64 %122, metadata !489, metadata !DIExpression()), !dbg !495
  %123 = icmp eq i64 %122, %116, !dbg !509
  br i1 %123, label %124, label %117, !dbg !510, !llvm.loop !515

124:                                              ; preds = %117, %103
  %125 = add nuw nsw i64 %104, 1, !dbg !517
  call void @llvm.dbg.value(metadata i64 %125, metadata !490, metadata !DIExpression()), !dbg !495
  %126 = icmp eq i64 %125, %102, !dbg !499
  br i1 %126, label %127, label %103, !dbg !500, !llvm.loop !518

127:                                              ; preds = %124, %91
  %128 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %92, i64 0, i32 4, !dbg !520
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !491, metadata !DIExpression()), !dbg !495
  %129 = load %struct.strand_t*, %struct.strand_t** %128, align 8, !dbg !521, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %129, metadata !491, metadata !DIExpression()), !dbg !495
  %130 = icmp eq %struct.strand_t* %129, null, !dbg !522
  br i1 %130, label %131, label %91, !dbg !522, !llvm.loop !523

131:                                              ; preds = %127, %50
  call void @llvm.dbg.value(metadata i8* %1, metadata !386, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8* undef, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8* %1, metadata !386, metadata !DIExpression()), !dbg !389
  %132 = tail call i8* @strchr(i8* nonnull %1, i32 124) #12, !dbg !525
  call void @llvm.dbg.value(metadata i8* %132, metadata !387, metadata !DIExpression()), !dbg !389
  %133 = bitcast i32* %3 to i8*, !dbg !527
  %134 = bitcast i32* %4 to i8*, !dbg !527
  %135 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !539
  br label %136, !dbg !553

136:                                              ; preds = %638, %131
  %137 = phi i8* [ %132, %131 ], [ %597, %638 ]
  %138 = phi i8* [ %1, %131 ], [ %148, %638 ]
  call void @llvm.dbg.value(metadata i8* %137, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8* %138, metadata !386, metadata !DIExpression()), !dbg !389
  %139 = icmp eq i8* %137, null, !dbg !554
  br i1 %139, label %145, label %140, !dbg !556

140:                                              ; preds = %136
  %141 = ptrtoint i8* %137 to i64, !dbg !557
  %142 = ptrtoint i8* %138 to i64, !dbg !557
  %143 = sub i64 %141, %142, !dbg !557
  call void @llvm.dbg.value(metadata i64 %143, metadata !388, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !389
  %144 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !559
  call void @llvm.dbg.value(metadata i8* %144, metadata !387, metadata !DIExpression()), !dbg !389
  br label %147, !dbg !560

145:                                              ; preds = %136
  %146 = tail call i64 @strlen(i8* nonnull %138) #12, !dbg !561
  call void @llvm.dbg.value(metadata i64 %146, metadata !388, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !389
  br label %147

147:                                              ; preds = %145, %140
  %148 = phi i8* [ %144, %140 ], [ null, %145 ], !dbg !562
  %149 = phi i64 [ %143, %140 ], [ %146, %145 ]
  %150 = trunc i64 %149 to i32, !dbg !563
  call void @llvm.dbg.value(metadata i32 %150, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8* %148, metadata !387, metadata !DIExpression()), !dbg !389
  %151 = icmp sgt i32 %150, 999, !dbg !564
  br i1 %151, label %152, label %155, !dbg !566

152:                                              ; preds = %147
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !567, !tbaa !290
  %154 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %153) #11, !dbg !569
  br label %687, !dbg !570

155:                                              ; preds = %147
  %156 = shl i64 %149, 32, !dbg !571
  %157 = ashr exact i64 %156, 32, !dbg !571
  %158 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* nonnull %138, i64 %157) #13, !dbg !572
  %159 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %157, !dbg !573
  store i8 0, i8* %159, align 1, !dbg !574, !tbaa !575
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !530, metadata !DIExpression()) #13, !dbg !527
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !531, metadata !DIExpression()) #13, !dbg !527
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %133) #13, !dbg !576
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %134) #13, !dbg !576
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !532, metadata !DIExpression()) #13, !dbg !527
  %160 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !577, !tbaa !575
  %161 = icmp eq i8 %160, 58, !dbg !579
  br i1 %161, label %162, label %163, !dbg !580

162:                                              ; preds = %155
  store i8* null, i8** @spart, align 8, !dbg !581, !tbaa !290
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), metadata !532, metadata !DIExpression()) #13, !dbg !527
  br label %168, !dbg !583

163:                                              ; preds = %155
  %164 = tail call i8* @strtok(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !584
  store i8* %164, i8** @spart, align 8, !dbg !586, !tbaa !290
  %165 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %164) #12, !dbg !587
  %166 = add i64 %165, 1, !dbg !588
  %167 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %166, !dbg !589
  call void @llvm.dbg.value(metadata i8* %167, metadata !532, metadata !DIExpression()) #13, !dbg !527
  br label %168

168:                                              ; preds = %163, %162
  %169 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), %162 ], [ %167, %163 ], !dbg !590
  call void @llvm.dbg.value(metadata i8* %169, metadata !532, metadata !DIExpression()) #13, !dbg !527
  %170 = load i8, i8* %169, align 1, !dbg !591, !tbaa !575
  %171 = icmp eq i8 %170, 58, !dbg !593
  br i1 %171, label %172, label %173, !dbg !594

172:                                              ; preds = %168
  store i8* null, i8** @rpart, align 8, !dbg !595, !tbaa !290
  br label %177, !dbg !597

173:                                              ; preds = %168
  %174 = tail call i8* @strtok(i8* nonnull %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !598
  store i8* %174, i8** @rpart, align 8, !dbg !600, !tbaa !290
  %175 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %174) #12, !dbg !601
  %176 = add i64 %175, 1, !dbg !602
  call void @llvm.dbg.value(metadata i8* %179, metadata !532, metadata !DIExpression()) #13, !dbg !527
  br label %177

177:                                              ; preds = %173, %172
  %178 = phi i64 [ %176, %173 ], [ 1, %172 ]
  %179 = getelementptr inbounds i8, i8* %169, i64 %178, !dbg !603
  call void @llvm.dbg.value(metadata i8* %179, metadata !532, metadata !DIExpression()) #13, !dbg !527
  %180 = tail call i8* @strtok(i8* nonnull %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !604
  store i8* %180, i8** @apart, align 8, !dbg !605, !tbaa !290
  %181 = load i8*, i8** @spart, align 8, !dbg !606, !tbaa !290
  %182 = icmp eq i8* %181, null, !dbg !606
  br i1 %182, label %307, label %183, !dbg !607

183:                                              ; preds = %177
  %184 = tail call i8* @strtok(i8* nonnull %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !608
  call void @llvm.dbg.value(metadata i8* %184, metadata !533, metadata !DIExpression()) #13, !dbg !527
  call void @llvm.dbg.value(metadata i32* %3, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  call void @llvm.dbg.value(metadata i32* %4, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  %185 = call fastcc i32 @is_pattern(i8* %184, i32* nonnull %3, i32* nonnull %4) #13, !dbg !609
  %186 = icmp eq i32 %185, 0, !dbg !609
  br i1 %186, label %220, label %187, !dbg !610

187:                                              ; preds = %183
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !611, metadata !DIExpression()) #13, !dbg !618
  call void @llvm.dbg.value(metadata i8* %184, metadata !616, metadata !DIExpression()) #13, !dbg !618
  call void @llvm.dbg.value(metadata i8* %184, metadata !620, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !627, metadata !DIExpression()) #13, !dbg !628
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !630, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %184, metadata !626, metadata !DIExpression()) #13, !dbg !628
  br label %188, !dbg !631

188:                                              ; preds = %199, %187
  %189 = phi i8* [ %184, %187 ], [ %201, %199 ], !dbg !633
  %190 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %187 ], [ %200, %199 ], !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %189, metadata !626, metadata !DIExpression()) #13, !dbg !628
  %191 = load i8, i8* %189, align 1, !dbg !634, !tbaa !575
  switch i8 %191, label %197 [
    i8 0, label %202
    i8 42, label %192
    i8 63, label %195
  ], !dbg !636

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !637
  call void @llvm.dbg.value(metadata i8* %193, metadata !627, metadata !DIExpression()) #13, !dbg !628
  store i8 46, i8* %190, align 1, !dbg !641, !tbaa !575
  %194 = getelementptr inbounds i8, i8* %190, i64 2, !dbg !642
  call void @llvm.dbg.value(metadata i8* %194, metadata !627, metadata !DIExpression()) #13, !dbg !628
  store i8 42, i8* %193, align 1, !dbg !643, !tbaa !575
  br label %199, !dbg !644

195:                                              ; preds = %188
  %196 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !645
  call void @llvm.dbg.value(metadata i8* %196, metadata !627, metadata !DIExpression()) #13, !dbg !628
  store i8 46, i8* %190, align 1, !dbg !647, !tbaa !575
  br label %199, !dbg !648

197:                                              ; preds = %188
  %198 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !649
  call void @llvm.dbg.value(metadata i8* %198, metadata !627, metadata !DIExpression()) #13, !dbg !628
  store i8 %191, i8* %190, align 1, !dbg !650, !tbaa !575
  br label %199

199:                                              ; preds = %197, %195, %192
  %200 = phi i8* [ %194, %192 ], [ %196, %195 ], [ %198, %197 ], !dbg !651
  call void @llvm.dbg.value(metadata i8* %200, metadata !627, metadata !DIExpression()) #13, !dbg !628
  %201 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !652
  call void @llvm.dbg.value(metadata i8* %201, metadata !626, metadata !DIExpression()) #13, !dbg !628
  br label %188, !dbg !653, !llvm.loop !654

202:                                              ; preds = %188
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !628
  %203 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !656
  call void @llvm.dbg.value(metadata i8* %203, metadata !627, metadata !DIExpression()) #13, !dbg !628
  store i8 36, i8* %190, align 1, !dbg !657, !tbaa !575
  store i8 0, i8* %203, align 1, !dbg !658, !tbaa !575
  %204 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !659
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !617, metadata !DIExpression()) #13, !dbg !618
  %205 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !660, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %205, metadata !617, metadata !DIExpression()) #13, !dbg !618
  %206 = icmp eq %struct.strand_t* %205, null, !dbg !662
  br i1 %206, label %242, label %207, !dbg !662

207:                                              ; preds = %207, %202
  %208 = phi %struct.strand_t* [ %218, %207 ], [ %205, %202 ]
  %209 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %208, i64 0, i32 0, !dbg !663
  %210 = load i8*, i8** %209, align 8, !dbg !663, !tbaa !666
  %211 = tail call i32 @step(i8* %210, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !667
  %212 = icmp ne i32 %211, 0, !dbg !667
  %213 = zext i1 %212 to i32, !dbg !667
  %214 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %208, i64 0, i32 2, !dbg !668
  %215 = load i32, i32* %214, align 4, !dbg !669, !tbaa !299
  %216 = or i32 %215, %213, !dbg !669
  store i32 %216, i32* %214, align 4, !dbg !669, !tbaa !299
  %217 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %208, i64 0, i32 4, !dbg !670
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !617, metadata !DIExpression()) #13, !dbg !618
  %218 = load %struct.strand_t*, %struct.strand_t** %217, align 8, !dbg !660, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %218, metadata !617, metadata !DIExpression()) #13, !dbg !618
  %219 = icmp eq %struct.strand_t* %218, null, !dbg !662
  br i1 %219, label %242, label %207, !dbg !662, !llvm.loop !671

220:                                              ; preds = %183
  %221 = load i32, i32* %3, align 4, !dbg !673, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %221, metadata !534, metadata !DIExpression()) #13, !dbg !527
  %222 = load i32, i32* %4, align 4, !dbg !675, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %222, metadata !535, metadata !DIExpression()) #13, !dbg !527
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !544, metadata !DIExpression()) #13, !dbg !539
  call void @llvm.dbg.value(metadata i32 %221, metadata !545, metadata !DIExpression()) #13, !dbg !539
  call void @llvm.dbg.value(metadata i32 %222, metadata !546, metadata !DIExpression()) #13, !dbg !539
  %223 = icmp eq i32 %222, -1, !dbg !676
  %224 = load i32, i32* %135, align 8, !dbg !539, !tbaa !678
  %225 = select i1 %223, i32 %224, i32 %222, !dbg !539
  call void @llvm.dbg.value(metadata i32 %225, metadata !546, metadata !DIExpression()) #13, !dbg !539
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !548, metadata !DIExpression()) #13, !dbg !539
  call void @llvm.dbg.value(metadata i32 1, metadata !547, metadata !DIExpression()) #13, !dbg !539
  %226 = icmp slt i32 %224, 1, !dbg !680
  br i1 %226, label %242, label %227, !dbg !683

227:                                              ; preds = %238, %220
  %228 = phi %struct.strand_t** [ %240, %238 ], [ %6, %220 ]
  %229 = phi i32 [ %239, %238 ], [ 1, %220 ]
  %230 = load %struct.strand_t*, %struct.strand_t** %228, align 8, !dbg !684, !tbaa !290
  call void @llvm.dbg.value(metadata i32 %229, metadata !547, metadata !DIExpression()) #13, !dbg !539
  %231 = icmp slt i32 %229, %221, !dbg !685
  %232 = icmp sgt i32 %229, %225, !dbg !688
  %233 = or i1 %231, %232, !dbg !689
  br i1 %233, label %238, label %234, !dbg !689

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %230, i64 0, i32 2, !dbg !690
  %236 = load i32, i32* %235, align 4, !dbg !691, !tbaa !299
  %237 = or i32 %236, 1, !dbg !691
  store i32 %237, i32* %235, align 4, !dbg !691, !tbaa !299
  br label %238, !dbg !692

238:                                              ; preds = %234, %227
  %239 = add nuw i32 %229, 1, !dbg !693
  call void @llvm.dbg.value(metadata i32 %239, metadata !547, metadata !DIExpression()) #13, !dbg !539
  %240 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %230, i64 0, i32 4, !dbg !694
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !548, metadata !DIExpression()) #13, !dbg !539
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !548, metadata !DIExpression()) #13, !dbg !539
  %241 = icmp eq i32 %229, %224, !dbg !680
  br i1 %241, label %242, label %227, !dbg !683, !llvm.loop !695

242:                                              ; preds = %238, %220, %207, %202
  %243 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !697
  call void @llvm.dbg.value(metadata i8* %243, metadata !533, metadata !DIExpression()) #13, !dbg !527
  %244 = icmp eq i8* %243, null, !dbg !698
  br i1 %244, label %320, label %245, !dbg !698

245:                                              ; preds = %304, %242
  %246 = phi i8* [ %305, %304 ], [ %243, %242 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  call void @llvm.dbg.value(metadata i32* %4, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  %247 = call fastcc i32 @is_pattern(i8* nonnull %246, i32* nonnull %3, i32* nonnull %4) #13, !dbg !699
  %248 = icmp eq i32 %247, 0, !dbg !699
  br i1 %248, label %282, label %249, !dbg !702

249:                                              ; preds = %245
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !611, metadata !DIExpression()) #13, !dbg !703
  call void @llvm.dbg.value(metadata i8* %246, metadata !616, metadata !DIExpression()) #13, !dbg !703
  call void @llvm.dbg.value(metadata i8* %246, metadata !620, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !627, metadata !DIExpression()) #13, !dbg !705
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !707, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %246, metadata !626, metadata !DIExpression()) #13, !dbg !705
  br label %250, !dbg !708

250:                                              ; preds = %261, %249
  %251 = phi i8* [ %246, %249 ], [ %263, %261 ], !dbg !709
  %252 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %249 ], [ %262, %261 ], !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %251, metadata !626, metadata !DIExpression()) #13, !dbg !705
  %253 = load i8, i8* %251, align 1, !dbg !710, !tbaa !575
  switch i8 %253, label %259 [
    i8 0, label %264
    i8 42, label %254
    i8 63, label %257
  ], !dbg !711

254:                                              ; preds = %250
  %255 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !712
  call void @llvm.dbg.value(metadata i8* %255, metadata !627, metadata !DIExpression()) #13, !dbg !705
  store i8 46, i8* %252, align 1, !dbg !713, !tbaa !575
  %256 = getelementptr inbounds i8, i8* %252, i64 2, !dbg !714
  call void @llvm.dbg.value(metadata i8* %256, metadata !627, metadata !DIExpression()) #13, !dbg !705
  store i8 42, i8* %255, align 1, !dbg !715, !tbaa !575
  br label %261, !dbg !716

257:                                              ; preds = %250
  %258 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !717
  call void @llvm.dbg.value(metadata i8* %258, metadata !627, metadata !DIExpression()) #13, !dbg !705
  store i8 46, i8* %252, align 1, !dbg !718, !tbaa !575
  br label %261, !dbg !719

259:                                              ; preds = %250
  %260 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !720
  call void @llvm.dbg.value(metadata i8* %260, metadata !627, metadata !DIExpression()) #13, !dbg !705
  store i8 %253, i8* %252, align 1, !dbg !721, !tbaa !575
  br label %261

261:                                              ; preds = %259, %257, %254
  %262 = phi i8* [ %256, %254 ], [ %258, %257 ], [ %260, %259 ], !dbg !722
  call void @llvm.dbg.value(metadata i8* %262, metadata !627, metadata !DIExpression()) #13, !dbg !705
  %263 = getelementptr inbounds i8, i8* %251, i64 1, !dbg !723
  call void @llvm.dbg.value(metadata i8* %263, metadata !626, metadata !DIExpression()) #13, !dbg !705
  br label %250, !dbg !724, !llvm.loop !725

264:                                              ; preds = %250
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  call void @llvm.dbg.value(metadata i8* %252, metadata !627, metadata !DIExpression()) #13, !dbg !705
  %265 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !727
  call void @llvm.dbg.value(metadata i8* %265, metadata !627, metadata !DIExpression()) #13, !dbg !705
  store i8 36, i8* %252, align 1, !dbg !728, !tbaa !575
  store i8 0, i8* %265, align 1, !dbg !729, !tbaa !575
  %266 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !730
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !617, metadata !DIExpression()) #13, !dbg !703
  %267 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !731, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %267, metadata !617, metadata !DIExpression()) #13, !dbg !703
  %268 = icmp eq %struct.strand_t* %267, null, !dbg !732
  br i1 %268, label %304, label %269, !dbg !732

269:                                              ; preds = %269, %264
  %270 = phi %struct.strand_t* [ %280, %269 ], [ %267, %264 ]
  %271 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %270, i64 0, i32 0, !dbg !733
  %272 = load i8*, i8** %271, align 8, !dbg !733, !tbaa !666
  %273 = tail call i32 @step(i8* %272, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !734
  %274 = icmp ne i32 %273, 0, !dbg !734
  %275 = zext i1 %274 to i32, !dbg !734
  %276 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %270, i64 0, i32 2, !dbg !735
  %277 = load i32, i32* %276, align 4, !dbg !736, !tbaa !299
  %278 = or i32 %277, %275, !dbg !736
  store i32 %278, i32* %276, align 4, !dbg !736, !tbaa !299
  %279 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %270, i64 0, i32 4, !dbg !737
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !617, metadata !DIExpression()) #13, !dbg !703
  %280 = load %struct.strand_t*, %struct.strand_t** %279, align 8, !dbg !731, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %280, metadata !617, metadata !DIExpression()) #13, !dbg !703
  %281 = icmp eq %struct.strand_t* %280, null, !dbg !732
  br i1 %281, label %304, label %269, !dbg !732, !llvm.loop !738

282:                                              ; preds = %245
  %283 = load i32, i32* %3, align 4, !dbg !740, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %283, metadata !534, metadata !DIExpression()) #13, !dbg !527
  %284 = load i32, i32* %4, align 4, !dbg !741, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %284, metadata !535, metadata !DIExpression()) #13, !dbg !527
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !544, metadata !DIExpression()) #13, !dbg !742
  call void @llvm.dbg.value(metadata i32 %283, metadata !545, metadata !DIExpression()) #13, !dbg !742
  call void @llvm.dbg.value(metadata i32 %284, metadata !546, metadata !DIExpression()) #13, !dbg !742
  %285 = icmp eq i32 %284, -1, !dbg !744
  %286 = load i32, i32* %135, align 8, !dbg !742, !tbaa !678
  %287 = select i1 %285, i32 %286, i32 %284, !dbg !742
  call void @llvm.dbg.value(metadata i32 %287, metadata !546, metadata !DIExpression()) #13, !dbg !742
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !548, metadata !DIExpression()) #13, !dbg !742
  call void @llvm.dbg.value(metadata i32 1, metadata !547, metadata !DIExpression()) #13, !dbg !742
  %288 = icmp slt i32 %286, 1, !dbg !745
  br i1 %288, label %304, label %289, !dbg !746

289:                                              ; preds = %300, %282
  %290 = phi %struct.strand_t** [ %302, %300 ], [ %6, %282 ]
  %291 = phi i32 [ %301, %300 ], [ 1, %282 ]
  %292 = load %struct.strand_t*, %struct.strand_t** %290, align 8, !dbg !747, !tbaa !290
  call void @llvm.dbg.value(metadata i32 %291, metadata !547, metadata !DIExpression()) #13, !dbg !742
  %293 = icmp slt i32 %291, %283, !dbg !748
  %294 = icmp sgt i32 %291, %287, !dbg !749
  %295 = or i1 %293, %294, !dbg !750
  br i1 %295, label %300, label %296, !dbg !750

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %292, i64 0, i32 2, !dbg !751
  %298 = load i32, i32* %297, align 4, !dbg !752, !tbaa !299
  %299 = or i32 %298, 1, !dbg !752
  store i32 %299, i32* %297, align 4, !dbg !752, !tbaa !299
  br label %300, !dbg !753

300:                                              ; preds = %296, %289
  %301 = add nuw i32 %291, 1, !dbg !754
  call void @llvm.dbg.value(metadata i32 %301, metadata !547, metadata !DIExpression()) #13, !dbg !742
  %302 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %292, i64 0, i32 4, !dbg !755
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !548, metadata !DIExpression()) #13, !dbg !742
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !548, metadata !DIExpression()) #13, !dbg !742
  %303 = icmp eq i32 %291, %286, !dbg !745
  br i1 %303, label %304, label %289, !dbg !746, !llvm.loop !756

304:                                              ; preds = %300, %282, %269, %264
  %305 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !697
  call void @llvm.dbg.value(metadata i8* %305, metadata !533, metadata !DIExpression()) #13, !dbg !527
  %306 = icmp eq i8* %305, null, !dbg !698
  br i1 %306, label %320, label %245, !dbg !698, !llvm.loop !758

307:                                              ; preds = %177
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !544, metadata !DIExpression()) #13, !dbg !760
  call void @llvm.dbg.value(metadata i32 1, metadata !545, metadata !DIExpression()) #13, !dbg !760
  call void @llvm.dbg.value(metadata i32 -1, metadata !546, metadata !DIExpression()) #13, !dbg !760
  %308 = load i32, i32* %135, align 8, !dbg !760, !tbaa !678
  call void @llvm.dbg.value(metadata i32 %308, metadata !546, metadata !DIExpression()) #13, !dbg !760
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !548, metadata !DIExpression()) #13, !dbg !760
  call void @llvm.dbg.value(metadata i32 1, metadata !547, metadata !DIExpression()) #13, !dbg !760
  %309 = icmp slt i32 %308, 1, !dbg !762
  br i1 %309, label %320, label %310, !dbg !763

310:                                              ; preds = %310, %307
  %311 = phi %struct.strand_t** [ %318, %310 ], [ %6, %307 ]
  %312 = phi i32 [ %317, %310 ], [ 1, %307 ]
  %313 = load %struct.strand_t*, %struct.strand_t** %311, align 8, !dbg !764, !tbaa !290
  call void @llvm.dbg.value(metadata i32 %312, metadata !547, metadata !DIExpression()) #13, !dbg !760
  %314 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %313, i64 0, i32 2, !dbg !765
  %315 = load i32, i32* %314, align 4, !dbg !766, !tbaa !299
  %316 = or i32 %315, 1, !dbg !766
  store i32 %316, i32* %314, align 4, !dbg !766, !tbaa !299
  %317 = add nuw i32 %312, 1, !dbg !767
  call void @llvm.dbg.value(metadata i32 %317, metadata !547, metadata !DIExpression()) #13, !dbg !760
  %318 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %313, i64 0, i32 4, !dbg !768
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !548, metadata !DIExpression()) #13, !dbg !760
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !548, metadata !DIExpression()) #13, !dbg !760
  %319 = icmp eq i32 %312, %308, !dbg !762
  br i1 %319, label %320, label %310, !dbg !763, !llvm.loop !769

320:                                              ; preds = %310, %307, %304, %242
  %321 = load i8*, i8** @rpart, align 8, !dbg !771, !tbaa !290
  %322 = icmp eq i8* %321, null, !dbg !771
  br i1 %322, label %487, label %323, !dbg !773

323:                                              ; preds = %320
  %324 = tail call i8* @strtok(i8* nonnull %321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !774
  call void @llvm.dbg.value(metadata i8* %324, metadata !533, metadata !DIExpression()) #13, !dbg !527
  call void @llvm.dbg.value(metadata i32* %3, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  call void @llvm.dbg.value(metadata i32* %4, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  %325 = call fastcc i32 @is_pattern(i8* %324, i32* nonnull %3, i32* nonnull %4) #13, !dbg !776
  %326 = icmp eq i32 %325, 0, !dbg !776
  br i1 %326, label %328, label %327, !dbg !778

327:                                              ; preds = %323
  tail call fastcc void @match_res_pat(%struct.molecule_t* %0, i8* %324) #13, !dbg !779
  br label %402, !dbg !779

328:                                              ; preds = %323
  %329 = load i32, i32* %3, align 4, !dbg !780, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %329, metadata !534, metadata !DIExpression()) #13, !dbg !527
  %330 = load i32, i32* %4, align 4, !dbg !781, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %330, metadata !535, metadata !DIExpression()) #13, !dbg !527
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !782, metadata !DIExpression()) #13, !dbg !791
  call void @llvm.dbg.value(metadata i32 %329, metadata !785, metadata !DIExpression()) #13, !dbg !791
  call void @llvm.dbg.value(metadata i32 %330, metadata !786, metadata !DIExpression()) #13, !dbg !791
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !789, metadata !DIExpression()) #13, !dbg !791
  %331 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !793, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %331, metadata !789, metadata !DIExpression()) #13, !dbg !791
  %332 = icmp eq %struct.strand_t* %331, null, !dbg !795
  br i1 %332, label %402, label %333, !dbg !795

333:                                              ; preds = %328
  %334 = icmp eq i32 %330, -1, !dbg !796
  br i1 %334, label %338, label %335, !dbg !795

335:                                              ; preds = %333
  %336 = sext i32 %330 to i64, !dbg !795
  %337 = sext i32 %329 to i64, !dbg !795
  br label %370, !dbg !795

338:                                              ; preds = %333
  %339 = sext i32 %329 to i64, !dbg !795
  br label %340, !dbg !795

340:                                              ; preds = %363, %338
  %341 = phi %struct.strand_t* [ %365, %363 ], [ %331, %338 ]
  %342 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %341, i64 0, i32 2, !dbg !801
  %343 = load i32, i32* %342, align 4, !dbg !801, !tbaa !299
  %344 = and i32 %343, 1, !dbg !802
  %345 = icmp eq i32 %344, 0, !dbg !802
  br i1 %345, label %363, label %346, !dbg !803

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %341, i64 0, i32 5, !dbg !804
  %348 = load i32, i32* %347, align 8, !dbg !804, !tbaa !308
  call void @llvm.dbg.value(metadata i32 %348, metadata !788, metadata !DIExpression()) #13, !dbg !791
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()) #13, !dbg !791
  %349 = icmp sgt i32 %348, 0, !dbg !805
  br i1 %349, label %367, label %363, !dbg !808

350:                                              ; preds = %367, %361
  %351 = phi i64 [ 0, %367 ], [ %352, %361 ]
  call void @llvm.dbg.value(metadata i64 %351, metadata !787, metadata !DIExpression()) #13, !dbg !791
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !791
  %352 = add nuw nsw i64 %351, 1, !dbg !809
  %353 = icmp slt i64 %352, %339, !dbg !812
  br i1 %353, label %361, label %354, !dbg !813

354:                                              ; preds = %350
  %355 = load %struct.residue_t**, %struct.residue_t*** %368, align 8, !dbg !814, !tbaa !313
  %356 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %355, i64 %351, !dbg !815
  %357 = load %struct.residue_t*, %struct.residue_t** %356, align 8, !dbg !815, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %357, metadata !790, metadata !DIExpression()) #13, !dbg !791
  %358 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %357, i64 0, i32 6, !dbg !816
  %359 = load i32, i32* %358, align 8, !dbg !817, !tbaa !317
  %360 = or i32 %359, 1, !dbg !817
  store i32 %360, i32* %358, align 8, !dbg !817, !tbaa !317
  br label %361, !dbg !818

361:                                              ; preds = %354, %350
  call void @llvm.dbg.value(metadata i64 %352, metadata !787, metadata !DIExpression()) #13, !dbg !791
  %362 = icmp eq i64 %352, %369, !dbg !805
  br i1 %362, label %363, label %350, !dbg !808, !llvm.loop !819

363:                                              ; preds = %361, %346, %340
  %364 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %341, i64 0, i32 4, !dbg !821
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !789, metadata !DIExpression()) #13, !dbg !791
  %365 = load %struct.strand_t*, %struct.strand_t** %364, align 8, !dbg !793, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %365, metadata !789, metadata !DIExpression()) #13, !dbg !791
  %366 = icmp eq %struct.strand_t* %365, null, !dbg !795
  br i1 %366, label %402, label %340, !dbg !795, !llvm.loop !822

367:                                              ; preds = %346
  %368 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %341, i64 0, i32 7, !dbg !824
  %369 = zext i32 %348 to i64, !dbg !808
  br label %350, !dbg !808

370:                                              ; preds = %398, %335
  %371 = phi %struct.strand_t* [ %400, %398 ], [ %331, %335 ]
  %372 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %371, i64 0, i32 2, !dbg !801
  %373 = load i32, i32* %372, align 4, !dbg !801, !tbaa !299
  %374 = and i32 %373, 1, !dbg !802
  %375 = icmp eq i32 %374, 0, !dbg !802
  br i1 %375, label %398, label %376, !dbg !803

376:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i32 %330, metadata !788, metadata !DIExpression()) #13, !dbg !791
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()) #13, !dbg !791
  %377 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %371, i64 0, i32 5, !dbg !825
  %378 = load i32, i32* %377, align 8, !dbg !825, !tbaa !308
  %379 = icmp sgt i32 %378, 0, !dbg !805
  br i1 %379, label %380, label %398, !dbg !808

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %371, i64 0, i32 7, !dbg !824
  %382 = zext i32 %378 to i64, !dbg !808
  br label %383, !dbg !808

383:                                              ; preds = %396, %380
  %384 = phi i64 [ 0, %380 ], [ %385, %396 ]
  call void @llvm.dbg.value(metadata i64 %384, metadata !787, metadata !DIExpression()) #13, !dbg !791
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !791
  %385 = add nuw nsw i64 %384, 1, !dbg !809
  %386 = icmp sge i64 %385, %337, !dbg !812
  %387 = icmp slt i64 %384, %336, !dbg !826
  %388 = and i1 %387, %386, !dbg !813
  br i1 %388, label %389, label %396, !dbg !813

389:                                              ; preds = %383
  %390 = load %struct.residue_t**, %struct.residue_t*** %381, align 8, !dbg !814, !tbaa !313
  %391 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %390, i64 %384, !dbg !815
  %392 = load %struct.residue_t*, %struct.residue_t** %391, align 8, !dbg !815, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %392, metadata !790, metadata !DIExpression()) #13, !dbg !791
  %393 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %392, i64 0, i32 6, !dbg !816
  %394 = load i32, i32* %393, align 8, !dbg !817, !tbaa !317
  %395 = or i32 %394, 1, !dbg !817
  store i32 %395, i32* %393, align 8, !dbg !817, !tbaa !317
  br label %396, !dbg !818

396:                                              ; preds = %389, %383
  call void @llvm.dbg.value(metadata i64 %385, metadata !787, metadata !DIExpression()) #13, !dbg !791
  %397 = icmp eq i64 %385, %382, !dbg !805
  br i1 %397, label %398, label %383, !dbg !808, !llvm.loop !827

398:                                              ; preds = %396, %376, %370
  %399 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %371, i64 0, i32 4, !dbg !821
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !789, metadata !DIExpression()) #13, !dbg !791
  %400 = load %struct.strand_t*, %struct.strand_t** %399, align 8, !dbg !793, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %400, metadata !789, metadata !DIExpression()) #13, !dbg !791
  %401 = icmp eq %struct.strand_t* %400, null, !dbg !795
  br i1 %401, label %402, label %370, !dbg !795, !llvm.loop !828

402:                                              ; preds = %398, %363, %328, %327
  %403 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !829
  call void @llvm.dbg.value(metadata i8* %403, metadata !533, metadata !DIExpression()) #13, !dbg !527
  %404 = icmp eq i8* %403, null, !dbg !830
  br i1 %404, label %517, label %405, !dbg !830

405:                                              ; preds = %484, %402
  %406 = phi i8* [ %485, %484 ], [ %403, %402 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  call void @llvm.dbg.value(metadata i32* %4, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  %407 = call fastcc i32 @is_pattern(i8* nonnull %406, i32* nonnull %3, i32* nonnull %4) #13, !dbg !831
  %408 = icmp eq i32 %407, 0, !dbg !831
  br i1 %408, label %410, label %409, !dbg !834

409:                                              ; preds = %405
  tail call fastcc void @match_res_pat(%struct.molecule_t* %0, i8* nonnull %406) #13, !dbg !835
  br label %484, !dbg !835

410:                                              ; preds = %405
  %411 = load i32, i32* %3, align 4, !dbg !836, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %411, metadata !534, metadata !DIExpression()) #13, !dbg !527
  %412 = load i32, i32* %4, align 4, !dbg !837, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %412, metadata !535, metadata !DIExpression()) #13, !dbg !527
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !782, metadata !DIExpression()) #13, !dbg !838
  call void @llvm.dbg.value(metadata i32 %411, metadata !785, metadata !DIExpression()) #13, !dbg !838
  call void @llvm.dbg.value(metadata i32 %412, metadata !786, metadata !DIExpression()) #13, !dbg !838
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !789, metadata !DIExpression()) #13, !dbg !838
  %413 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !840, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %413, metadata !789, metadata !DIExpression()) #13, !dbg !838
  %414 = icmp eq %struct.strand_t* %413, null, !dbg !841
  br i1 %414, label %484, label %415, !dbg !841

415:                                              ; preds = %410
  %416 = icmp eq i32 %412, -1, !dbg !842
  br i1 %416, label %420, label %417, !dbg !841

417:                                              ; preds = %415
  %418 = sext i32 %412 to i64, !dbg !841
  %419 = sext i32 %411 to i64, !dbg !841
  br label %452, !dbg !841

420:                                              ; preds = %415
  %421 = sext i32 %411 to i64, !dbg !841
  br label %422, !dbg !841

422:                                              ; preds = %445, %420
  %423 = phi %struct.strand_t* [ %447, %445 ], [ %413, %420 ]
  %424 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %423, i64 0, i32 2, !dbg !843
  %425 = load i32, i32* %424, align 4, !dbg !843, !tbaa !299
  %426 = and i32 %425, 1, !dbg !844
  %427 = icmp eq i32 %426, 0, !dbg !844
  br i1 %427, label %445, label %428, !dbg !845

428:                                              ; preds = %422
  %429 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %423, i64 0, i32 5, !dbg !846
  %430 = load i32, i32* %429, align 8, !dbg !846, !tbaa !308
  call void @llvm.dbg.value(metadata i32 %430, metadata !788, metadata !DIExpression()) #13, !dbg !838
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()) #13, !dbg !838
  %431 = icmp sgt i32 %430, 0, !dbg !847
  br i1 %431, label %449, label %445, !dbg !848

432:                                              ; preds = %449, %443
  %433 = phi i64 [ 0, %449 ], [ %434, %443 ]
  call void @llvm.dbg.value(metadata i64 %433, metadata !787, metadata !DIExpression()) #13, !dbg !838
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !838
  %434 = add nuw nsw i64 %433, 1, !dbg !849
  %435 = icmp slt i64 %434, %421, !dbg !850
  br i1 %435, label %443, label %436, !dbg !851

436:                                              ; preds = %432
  %437 = load %struct.residue_t**, %struct.residue_t*** %450, align 8, !dbg !852, !tbaa !313
  %438 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %437, i64 %433, !dbg !853
  %439 = load %struct.residue_t*, %struct.residue_t** %438, align 8, !dbg !853, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %439, metadata !790, metadata !DIExpression()) #13, !dbg !838
  %440 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %439, i64 0, i32 6, !dbg !854
  %441 = load i32, i32* %440, align 8, !dbg !855, !tbaa !317
  %442 = or i32 %441, 1, !dbg !855
  store i32 %442, i32* %440, align 8, !dbg !855, !tbaa !317
  br label %443, !dbg !856

443:                                              ; preds = %436, %432
  call void @llvm.dbg.value(metadata i64 %434, metadata !787, metadata !DIExpression()) #13, !dbg !838
  %444 = icmp eq i64 %434, %451, !dbg !847
  br i1 %444, label %445, label %432, !dbg !848, !llvm.loop !857

445:                                              ; preds = %443, %428, %422
  %446 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %423, i64 0, i32 4, !dbg !859
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !789, metadata !DIExpression()) #13, !dbg !838
  %447 = load %struct.strand_t*, %struct.strand_t** %446, align 8, !dbg !840, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %447, metadata !789, metadata !DIExpression()) #13, !dbg !838
  %448 = icmp eq %struct.strand_t* %447, null, !dbg !841
  br i1 %448, label %484, label %422, !dbg !841, !llvm.loop !860

449:                                              ; preds = %428
  %450 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %423, i64 0, i32 7, !dbg !862
  %451 = zext i32 %430 to i64, !dbg !848
  br label %432, !dbg !848

452:                                              ; preds = %480, %417
  %453 = phi %struct.strand_t* [ %482, %480 ], [ %413, %417 ]
  %454 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %453, i64 0, i32 2, !dbg !843
  %455 = load i32, i32* %454, align 4, !dbg !843, !tbaa !299
  %456 = and i32 %455, 1, !dbg !844
  %457 = icmp eq i32 %456, 0, !dbg !844
  br i1 %457, label %480, label %458, !dbg !845

458:                                              ; preds = %452
  call void @llvm.dbg.value(metadata i32 %412, metadata !788, metadata !DIExpression()) #13, !dbg !838
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()) #13, !dbg !838
  %459 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %453, i64 0, i32 5, !dbg !863
  %460 = load i32, i32* %459, align 8, !dbg !863, !tbaa !308
  %461 = icmp sgt i32 %460, 0, !dbg !847
  br i1 %461, label %462, label %480, !dbg !848

462:                                              ; preds = %458
  %463 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %453, i64 0, i32 7, !dbg !862
  %464 = zext i32 %460 to i64, !dbg !848
  br label %465, !dbg !848

465:                                              ; preds = %478, %462
  %466 = phi i64 [ 0, %462 ], [ %467, %478 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !787, metadata !DIExpression()) #13, !dbg !838
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !838
  %467 = add nuw nsw i64 %466, 1, !dbg !849
  %468 = icmp sge i64 %467, %419, !dbg !850
  %469 = icmp slt i64 %466, %418, !dbg !864
  %470 = and i1 %469, %468, !dbg !851
  br i1 %470, label %471, label %478, !dbg !851

471:                                              ; preds = %465
  %472 = load %struct.residue_t**, %struct.residue_t*** %463, align 8, !dbg !852, !tbaa !313
  %473 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %472, i64 %466, !dbg !853
  %474 = load %struct.residue_t*, %struct.residue_t** %473, align 8, !dbg !853, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %474, metadata !790, metadata !DIExpression()) #13, !dbg !838
  %475 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %474, i64 0, i32 6, !dbg !854
  %476 = load i32, i32* %475, align 8, !dbg !855, !tbaa !317
  %477 = or i32 %476, 1, !dbg !855
  store i32 %477, i32* %475, align 8, !dbg !855, !tbaa !317
  br label %478, !dbg !856

478:                                              ; preds = %471, %465
  call void @llvm.dbg.value(metadata i64 %467, metadata !787, metadata !DIExpression()) #13, !dbg !838
  %479 = icmp eq i64 %467, %464, !dbg !847
  br i1 %479, label %480, label %465, !dbg !848, !llvm.loop !865

480:                                              ; preds = %478, %458, %452
  %481 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %453, i64 0, i32 4, !dbg !859
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !789, metadata !DIExpression()) #13, !dbg !838
  %482 = load %struct.strand_t*, %struct.strand_t** %481, align 8, !dbg !840, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %482, metadata !789, metadata !DIExpression()) #13, !dbg !838
  %483 = icmp eq %struct.strand_t* %482, null, !dbg !841
  br i1 %483, label %484, label %452, !dbg !841, !llvm.loop !866

484:                                              ; preds = %480, %445, %410, %409
  %485 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !829
  call void @llvm.dbg.value(metadata i8* %485, metadata !533, metadata !DIExpression()) #13, !dbg !527
  %486 = icmp eq i8* %485, null, !dbg !830
  br i1 %486, label %517, label %405, !dbg !830, !llvm.loop !867

487:                                              ; preds = %320
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !782, metadata !DIExpression()) #13, !dbg !869
  call void @llvm.dbg.value(metadata i32 1, metadata !785, metadata !DIExpression()) #13, !dbg !869
  call void @llvm.dbg.value(metadata i32 -1, metadata !786, metadata !DIExpression()) #13, !dbg !869
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !789, metadata !DIExpression()) #13, !dbg !869
  %488 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !871, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %488, metadata !789, metadata !DIExpression()) #13, !dbg !869
  %489 = icmp eq %struct.strand_t* %488, null, !dbg !872
  br i1 %489, label %517, label %490, !dbg !872

490:                                              ; preds = %509, %487
  %491 = phi %struct.strand_t* [ %511, %509 ], [ %488, %487 ]
  %492 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %491, i64 0, i32 2, !dbg !873
  %493 = load i32, i32* %492, align 4, !dbg !873, !tbaa !299
  %494 = and i32 %493, 1, !dbg !874
  %495 = icmp eq i32 %494, 0, !dbg !874
  br i1 %495, label %509, label %496, !dbg !875

496:                                              ; preds = %490
  %497 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %491, i64 0, i32 5, !dbg !876
  %498 = load i32, i32* %497, align 8, !dbg !876, !tbaa !308
  call void @llvm.dbg.value(metadata i32 %498, metadata !788, metadata !DIExpression()) #13, !dbg !869
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()) #13, !dbg !869
  %499 = icmp sgt i32 %498, 0, !dbg !877
  br i1 %499, label %513, label %509, !dbg !878

500:                                              ; preds = %513, %500
  %501 = phi i64 [ 0, %513 ], [ %502, %500 ]
  call void @llvm.dbg.value(metadata i64 %501, metadata !787, metadata !DIExpression()) #13, !dbg !869
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !869
  %502 = add nuw nsw i64 %501, 1, !dbg !879
  %503 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %516, i64 %501, !dbg !880
  %504 = load %struct.residue_t*, %struct.residue_t** %503, align 8, !dbg !880, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %504, metadata !790, metadata !DIExpression()) #13, !dbg !869
  %505 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %504, i64 0, i32 6, !dbg !881
  %506 = load i32, i32* %505, align 8, !dbg !882, !tbaa !317
  %507 = or i32 %506, 1, !dbg !882
  store i32 %507, i32* %505, align 8, !dbg !882, !tbaa !317
  call void @llvm.dbg.value(metadata i64 %502, metadata !787, metadata !DIExpression()) #13, !dbg !869
  %508 = icmp eq i64 %502, %515, !dbg !877
  br i1 %508, label %509, label %500, !dbg !878, !llvm.loop !883

509:                                              ; preds = %500, %496, %490
  %510 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %491, i64 0, i32 4, !dbg !885
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !789, metadata !DIExpression()) #13, !dbg !869
  %511 = load %struct.strand_t*, %struct.strand_t** %510, align 8, !dbg !871, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %511, metadata !789, metadata !DIExpression()) #13, !dbg !869
  %512 = icmp eq %struct.strand_t* %511, null, !dbg !872
  br i1 %512, label %517, label %490, !dbg !872, !llvm.loop !886

513:                                              ; preds = %496
  %514 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %491, i64 0, i32 7, !dbg !888
  %515 = zext i32 %498 to i64, !dbg !878
  %516 = load %struct.residue_t**, %struct.residue_t*** %514, align 8, !dbg !888, !tbaa !313
  br label %500, !dbg !878

517:                                              ; preds = %509, %487, %484, %402
  %518 = load i8*, i8** @apart, align 8, !dbg !889, !tbaa !290
  %519 = icmp eq i8* %518, null, !dbg !889
  br i1 %519, label %542, label %520, !dbg !891

520:                                              ; preds = %517
  %521 = tail call i8* @strtok(i8* nonnull %518, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !892
  call void @llvm.dbg.value(metadata i8* %521, metadata !533, metadata !DIExpression()) #13, !dbg !527
  call void @llvm.dbg.value(metadata i32* %3, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  call void @llvm.dbg.value(metadata i32* %4, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  %522 = call fastcc i32 @is_pattern(i8* %521, i32* nonnull %3, i32* nonnull %4) #13, !dbg !894
  %523 = icmp eq i32 %522, 0, !dbg !894
  br i1 %523, label %525, label %524, !dbg !896

524:                                              ; preds = %520
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* %521) #13, !dbg !897
  br label %528, !dbg !897

525:                                              ; preds = %520
  %526 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !898, !tbaa !290
  %527 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %526) #14, !dbg !900
  br label %528

528:                                              ; preds = %525, %524
  %529 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !901
  call void @llvm.dbg.value(metadata i8* %529, metadata !533, metadata !DIExpression()) #13, !dbg !527
  %530 = icmp eq i8* %529, null, !dbg !902
  br i1 %530, label %543, label %531, !dbg !902

531:                                              ; preds = %539, %528
  %532 = phi i8* [ %540, %539 ], [ %529, %528 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  call void @llvm.dbg.value(metadata i32* %4, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !527
  %533 = call fastcc i32 @is_pattern(i8* nonnull %532, i32* nonnull %3, i32* nonnull %4) #13, !dbg !903
  %534 = icmp eq i32 %533, 0, !dbg !903
  br i1 %534, label %536, label %535, !dbg !906

535:                                              ; preds = %531
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* nonnull %532) #13, !dbg !907
  br label %539, !dbg !907

536:                                              ; preds = %531
  %537 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !908, !tbaa !290
  %538 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %537) #14, !dbg !910
  br label %539

539:                                              ; preds = %536, %535
  %540 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !901
  call void @llvm.dbg.value(metadata i8* %540, metadata !533, metadata !DIExpression()) #13, !dbg !527
  %541 = icmp eq i8* %540, null, !dbg !902
  br i1 %541, label %543, label %531, !dbg !902, !llvm.loop !911

542:                                              ; preds = %517
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !913
  br label %543

543:                                              ; preds = %542, %539, %528
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %134) #13, !dbg !914
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %133) #13, !dbg !914
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !915, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !920, metadata !DIExpression()), !dbg !923
  %544 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !925, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %544, metadata !920, metadata !DIExpression()), !dbg !923
  %545 = icmp eq %struct.strand_t* %544, null, !dbg !927
  br i1 %545, label %592, label %546, !dbg !927

546:                                              ; preds = %588, %543
  %547 = phi %struct.strand_t* [ %590, %588 ], [ %544, %543 ]
  %548 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %547, i64 0, i32 2, !dbg !928
  %549 = load i32, i32* %548, align 4, !dbg !928, !tbaa !299
  %550 = shl i32 %549, 7, !dbg !931
  %551 = and i32 %550, 128, !dbg !931
  %552 = or i32 %551, %549, !dbg !932
  store i32 %552, i32* %548, align 4, !dbg !932, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !919, metadata !DIExpression()), !dbg !923
  %553 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %547, i64 0, i32 5, !dbg !933
  %554 = load i32, i32* %553, align 8, !dbg !933, !tbaa !308
  %555 = icmp sgt i32 %554, 0, !dbg !936
  br i1 %555, label %556, label %588, !dbg !937

556:                                              ; preds = %546
  %557 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %547, i64 0, i32 7, !dbg !938
  %558 = load %struct.residue_t**, %struct.residue_t*** %557, align 8, !dbg !938, !tbaa !313
  %559 = zext i32 %554 to i64, !dbg !937
  br label %560, !dbg !937

560:                                              ; preds = %585, %556
  %561 = phi i64 [ 0, %556 ], [ %586, %585 ]
  call void @llvm.dbg.value(metadata i64 %561, metadata !919, metadata !DIExpression()), !dbg !923
  %562 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %558, i64 %561, !dbg !940
  %563 = load %struct.residue_t*, %struct.residue_t** %562, align 8, !dbg !940, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %563, metadata !921, metadata !DIExpression()), !dbg !923
  %564 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %563, i64 0, i32 6, !dbg !941
  %565 = load i32, i32* %564, align 8, !dbg !941, !tbaa !317
  %566 = shl i32 %565, 7, !dbg !942
  %567 = and i32 %566, 128, !dbg !942
  %568 = or i32 %567, %565, !dbg !943
  store i32 %568, i32* %564, align 8, !dbg !943, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !918, metadata !DIExpression()), !dbg !923
  %569 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %563, i64 0, i32 15, !dbg !944
  %570 = load i32, i32* %569, align 8, !dbg !944, !tbaa !325
  %571 = icmp sgt i32 %570, 0, !dbg !947
  br i1 %571, label %572, label %585, !dbg !948

572:                                              ; preds = %560
  %573 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %563, i64 0, i32 17, !dbg !949
  %574 = load %struct.atom_t*, %struct.atom_t** %573, align 8, !dbg !949, !tbaa !330
  %575 = zext i32 %570 to i64, !dbg !948
  br label %576, !dbg !948

576:                                              ; preds = %576, %572
  %577 = phi i64 [ 0, %572 ], [ %583, %576 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !918, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !922, metadata !DIExpression()), !dbg !923
  %578 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %574, i64 %577, i32 2, !dbg !951
  %579 = load i32, i32* %578, align 8, !dbg !951, !tbaa !333
  %580 = shl i32 %579, 7, !dbg !952
  %581 = and i32 %580, 128, !dbg !952
  %582 = or i32 %581, %579, !dbg !953
  store i32 %582, i32* %578, align 8, !dbg !953, !tbaa !333
  %583 = add nuw nsw i64 %577, 1, !dbg !954
  call void @llvm.dbg.value(metadata i64 %583, metadata !918, metadata !DIExpression()), !dbg !923
  %584 = icmp eq i64 %583, %575, !dbg !947
  br i1 %584, label %585, label %576, !dbg !948, !llvm.loop !955

585:                                              ; preds = %576, %560
  %586 = add nuw nsw i64 %561, 1, !dbg !957
  call void @llvm.dbg.value(metadata i64 %586, metadata !919, metadata !DIExpression()), !dbg !923
  %587 = icmp eq i64 %586, %559, !dbg !936
  br i1 %587, label %588, label %560, !dbg !937, !llvm.loop !958

588:                                              ; preds = %585, %546
  %589 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %547, i64 0, i32 4, !dbg !960
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !920, metadata !DIExpression()), !dbg !923
  %590 = load %struct.strand_t*, %struct.strand_t** %589, align 8, !dbg !925, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %590, metadata !920, metadata !DIExpression()), !dbg !923
  %591 = icmp eq %struct.strand_t* %590, null, !dbg !927
  br i1 %591, label %592, label %546, !dbg !927, !llvm.loop !961

592:                                              ; preds = %588, %543
  call void @llvm.dbg.value(metadata i8* %148, metadata !386, metadata !DIExpression()), !dbg !389
  %593 = icmp eq i8* %148, null, !dbg !963
  br i1 %593, label %596, label %594, !dbg !965

594:                                              ; preds = %592
  %595 = tail call i8* @strchr(i8* nonnull %148, i32 124) #12, !dbg !966
  call void @llvm.dbg.value(metadata i8* %595, metadata !387, metadata !DIExpression()), !dbg !389
  br label %596, !dbg !967

596:                                              ; preds = %594, %592
  %597 = phi i8* [ %595, %594 ], [ null, %592 ], !dbg !968
  call void @llvm.dbg.value(metadata i8* %597, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !488, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !491, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata %struct.strand_t* %544, metadata !491, metadata !DIExpression()), !dbg !969
  br i1 %545, label %638, label %598, !dbg !971

598:                                              ; preds = %634, %596
  %599 = phi %struct.strand_t* [ %636, %634 ], [ %544, %596 ]
  %600 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %599, i64 0, i32 2, !dbg !972
  %601 = load i32, i32* %600, align 4, !dbg !973, !tbaa !299
  %602 = and i32 %601, -2, !dbg !973
  store i32 %602, i32* %600, align 4, !dbg !973, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !969
  %603 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %599, i64 0, i32 5, !dbg !974
  %604 = load i32, i32* %603, align 8, !dbg !974, !tbaa !308
  %605 = icmp sgt i32 %604, 0, !dbg !975
  br i1 %605, label %606, label %634, !dbg !976

606:                                              ; preds = %598
  %607 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %599, i64 0, i32 7, !dbg !977
  %608 = load %struct.residue_t**, %struct.residue_t*** %607, align 8, !dbg !977, !tbaa !313
  %609 = zext i32 %604 to i64, !dbg !976
  br label %610, !dbg !976

610:                                              ; preds = %631, %606
  %611 = phi i64 [ 0, %606 ], [ %632, %631 ]
  call void @llvm.dbg.value(metadata i64 %611, metadata !490, metadata !DIExpression()), !dbg !969
  %612 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %608, i64 %611, !dbg !978
  %613 = load %struct.residue_t*, %struct.residue_t** %612, align 8, !dbg !978, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %613, metadata !492, metadata !DIExpression()), !dbg !969
  %614 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %613, i64 0, i32 6, !dbg !979
  %615 = load i32, i32* %614, align 8, !dbg !980, !tbaa !317
  %616 = and i32 %615, -2, !dbg !980
  store i32 %616, i32* %614, align 8, !dbg !980, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !489, metadata !DIExpression()), !dbg !969
  %617 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %613, i64 0, i32 15, !dbg !981
  %618 = load i32, i32* %617, align 8, !dbg !981, !tbaa !325
  %619 = icmp sgt i32 %618, 0, !dbg !982
  br i1 %619, label %620, label %631, !dbg !983

620:                                              ; preds = %610
  %621 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %613, i64 0, i32 17, !dbg !984
  %622 = load %struct.atom_t*, %struct.atom_t** %621, align 8, !dbg !984, !tbaa !330
  %623 = zext i32 %618 to i64, !dbg !983
  br label %624, !dbg !983

624:                                              ; preds = %624, %620
  %625 = phi i64 [ 0, %620 ], [ %629, %624 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !489, metadata !DIExpression()), !dbg !969
  %626 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %622, i64 %625, i32 2, !dbg !985
  %627 = load i32, i32* %626, align 8, !dbg !986, !tbaa !333
  %628 = and i32 %627, -2, !dbg !986
  store i32 %628, i32* %626, align 8, !dbg !986, !tbaa !333
  %629 = add nuw nsw i64 %625, 1, !dbg !987
  call void @llvm.dbg.value(metadata i64 %629, metadata !489, metadata !DIExpression()), !dbg !969
  %630 = icmp eq i64 %629, %623, !dbg !982
  br i1 %630, label %631, label %624, !dbg !983, !llvm.loop !988

631:                                              ; preds = %624, %610
  %632 = add nuw nsw i64 %611, 1, !dbg !990
  call void @llvm.dbg.value(metadata i64 %632, metadata !490, metadata !DIExpression()), !dbg !969
  %633 = icmp eq i64 %632, %609, !dbg !975
  br i1 %633, label %634, label %610, !dbg !976, !llvm.loop !991

634:                                              ; preds = %631, %598
  %635 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %599, i64 0, i32 4, !dbg !993
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !491, metadata !DIExpression()), !dbg !969
  %636 = load %struct.strand_t*, %struct.strand_t** %635, align 8, !dbg !994, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %636, metadata !491, metadata !DIExpression()), !dbg !969
  %637 = icmp eq %struct.strand_t* %636, null, !dbg !971
  br i1 %637, label %638, label %598, !dbg !971, !llvm.loop !995

638:                                              ; preds = %634, %596
  call void @llvm.dbg.value(metadata i8* %597, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8* %148, metadata !386, metadata !DIExpression()), !dbg !389
  br i1 %593, label %639, label %136, !dbg !553, !llvm.loop !997

639:                                              ; preds = %638
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !999, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1004, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata %struct.strand_t* %544, metadata !1004, metadata !DIExpression()), !dbg !1007
  %640 = icmp eq %struct.strand_t* %544, null, !dbg !1009
  br i1 %640, label %687, label %641, !dbg !1009

641:                                              ; preds = %683, %639
  %642 = phi %struct.strand_t* [ %685, %683 ], [ %544, %639 ]
  %643 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %642, i64 0, i32 2, !dbg !1011
  %644 = load i32, i32* %643, align 4, !dbg !1011, !tbaa !299
  %645 = lshr i32 %644, 7, !dbg !1014
  %646 = and i32 %645, 1, !dbg !1014
  %647 = or i32 %646, %644, !dbg !1015
  store i32 %647, i32* %643, align 4, !dbg !1015, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !1003, metadata !DIExpression()), !dbg !1007
  %648 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %642, i64 0, i32 5, !dbg !1016
  %649 = load i32, i32* %648, align 8, !dbg !1016, !tbaa !308
  %650 = icmp sgt i32 %649, 0, !dbg !1019
  br i1 %650, label %651, label %683, !dbg !1020

651:                                              ; preds = %641
  %652 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %642, i64 0, i32 7, !dbg !1021
  %653 = load %struct.residue_t**, %struct.residue_t*** %652, align 8, !dbg !1021, !tbaa !313
  %654 = zext i32 %649 to i64, !dbg !1020
  br label %655, !dbg !1020

655:                                              ; preds = %680, %651
  %656 = phi i64 [ 0, %651 ], [ %681, %680 ]
  call void @llvm.dbg.value(metadata i64 %656, metadata !1003, metadata !DIExpression()), !dbg !1007
  %657 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %653, i64 %656, !dbg !1023
  %658 = load %struct.residue_t*, %struct.residue_t** %657, align 8, !dbg !1023, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %658, metadata !1005, metadata !DIExpression()), !dbg !1007
  %659 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %658, i64 0, i32 6, !dbg !1024
  %660 = load i32, i32* %659, align 8, !dbg !1024, !tbaa !317
  %661 = lshr i32 %660, 7, !dbg !1025
  %662 = and i32 %661, 1, !dbg !1025
  %663 = or i32 %662, %660, !dbg !1026
  store i32 %663, i32* %659, align 8, !dbg !1026, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !1002, metadata !DIExpression()), !dbg !1007
  %664 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %658, i64 0, i32 15, !dbg !1027
  %665 = load i32, i32* %664, align 8, !dbg !1027, !tbaa !325
  %666 = icmp sgt i32 %665, 0, !dbg !1030
  br i1 %666, label %667, label %680, !dbg !1031

667:                                              ; preds = %655
  %668 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %658, i64 0, i32 17, !dbg !1032
  %669 = load %struct.atom_t*, %struct.atom_t** %668, align 8, !dbg !1032, !tbaa !330
  %670 = zext i32 %665 to i64, !dbg !1031
  br label %671, !dbg !1031

671:                                              ; preds = %671, %667
  %672 = phi i64 [ 0, %667 ], [ %678, %671 ]
  call void @llvm.dbg.value(metadata i64 %672, metadata !1002, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1006, metadata !DIExpression()), !dbg !1007
  %673 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %669, i64 %672, i32 2, !dbg !1034
  %674 = load i32, i32* %673, align 8, !dbg !1034, !tbaa !333
  %675 = lshr i32 %674, 7, !dbg !1035
  %676 = and i32 %675, 1, !dbg !1035
  %677 = or i32 %676, %674, !dbg !1036
  store i32 %677, i32* %673, align 8, !dbg !1036, !tbaa !333
  %678 = add nuw nsw i64 %672, 1, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %678, metadata !1002, metadata !DIExpression()), !dbg !1007
  %679 = icmp eq i64 %678, %670, !dbg !1030
  br i1 %679, label %680, label %671, !dbg !1031, !llvm.loop !1038

680:                                              ; preds = %671, %655
  %681 = add nuw nsw i64 %656, 1, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %681, metadata !1003, metadata !DIExpression()), !dbg !1007
  %682 = icmp eq i64 %681, %654, !dbg !1019
  br i1 %682, label %683, label %655, !dbg !1020, !llvm.loop !1041

683:                                              ; preds = %680, %641
  %684 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %642, i64 0, i32 4, !dbg !1043
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1004, metadata !DIExpression()), !dbg !1007
  %685 = load %struct.strand_t*, %struct.strand_t** %684, align 8, !dbg !1044, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %685, metadata !1004, metadata !DIExpression()), !dbg !1007
  %686 = icmp eq %struct.strand_t* %685, null, !dbg !1009
  br i1 %686, label %687, label %641, !dbg !1009, !llvm.loop !1045

687:                                              ; preds = %683, %639, %152, %46, %9
  %688 = phi i32 [ 1, %152 ], [ 0, %9 ], [ 0, %639 ], [ 0, %46 ], [ 0, %683 ], !dbg !389
  ret i32 %688, !dbg !1047
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i8* @strncpy(i8* noalias returned, i8* noalias nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @atom_in_aexpr(%struct.atom_t* nocapture readonly %0, i8* %1) local_unnamed_addr #0 !dbg !1048 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1052, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %1, metadata !1053, metadata !DIExpression()), !dbg !1057
  %5 = icmp eq i8* %1, null, !dbg !1058
  br i1 %5, label %362, label %6, !dbg !1060

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %1, metadata !1054, metadata !DIExpression()), !dbg !1057
  %7 = tail call i8* @strchr(i8* nonnull %1, i32 124) #12, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %7, metadata !1055, metadata !DIExpression()), !dbg !1057
  %8 = bitcast i32* %3 to i8*, !dbg !1063
  %9 = bitcast i32* %4 to i8*, !dbg !1063
  %10 = getelementptr %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !1078
  %11 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 0, !dbg !1084
  br label %12, !dbg !1095

12:                                               ; preds = %360, %6
  %13 = phi i8* [ %7, %6 ], [ %361, %360 ]
  %14 = phi i8* [ %1, %6 ], [ %24, %360 ]
  call void @llvm.dbg.value(metadata i8* %13, metadata !1055, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %14, metadata !1054, metadata !DIExpression()), !dbg !1057
  %15 = icmp eq i8* %13, null, !dbg !1096
  br i1 %15, label %21, label %16, !dbg !1098

16:                                               ; preds = %12
  %17 = ptrtoint i8* %13 to i64, !dbg !1099
  %18 = ptrtoint i8* %14 to i64, !dbg !1099
  %19 = sub i64 %17, %18, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %19, metadata !1056, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1057
  %20 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1101
  call void @llvm.dbg.value(metadata i8* %20, metadata !1055, metadata !DIExpression()), !dbg !1057
  br label %23, !dbg !1102

21:                                               ; preds = %12
  %22 = tail call i64 @strlen(i8* nonnull %14) #12, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %22, metadata !1056, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1057
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i8* [ %20, %16 ], [ null, %21 ], !dbg !1104
  %25 = phi i64 [ %19, %16 ], [ %22, %21 ]
  %26 = trunc i64 %25 to i32, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %26, metadata !1056, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %24, metadata !1055, metadata !DIExpression()), !dbg !1057
  %27 = icmp sgt i32 %26, 999, !dbg !1106
  br i1 %27, label %28, label %31, !dbg !1108

28:                                               ; preds = %23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1109, !tbaa !290
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %29) #11, !dbg !1111
  br label %362, !dbg !1112

31:                                               ; preds = %23
  %32 = shl i64 %25, 32, !dbg !1113
  %33 = ashr exact i64 %32, 32, !dbg !1113
  %34 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* nonnull %14, i64 %33) #13, !dbg !1114
  %35 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %33, !dbg !1115
  store i8 0, i8* %35, align 1, !dbg !1116, !tbaa !575
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1066, metadata !DIExpression()) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1067, metadata !DIExpression()) #13, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #13, !dbg !1117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #13, !dbg !1117
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1068, metadata !DIExpression()) #13, !dbg !1063
  %36 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !1118, !tbaa !575
  %37 = icmp eq i8 %36, 58, !dbg !1120
  br i1 %37, label %38, label %39, !dbg !1121

38:                                               ; preds = %31
  store i8* null, i8** @spart, align 8, !dbg !1122, !tbaa !290
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), metadata !1068, metadata !DIExpression()) #13, !dbg !1063
  br label %44, !dbg !1124

39:                                               ; preds = %31
  %40 = tail call i8* @strtok(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !1125
  store i8* %40, i8** @spart, align 8, !dbg !1127, !tbaa !290
  %41 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %40) #12, !dbg !1128
  %42 = add i64 %41, 1, !dbg !1129
  %43 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %42, !dbg !1130
  call void @llvm.dbg.value(metadata i8* %43, metadata !1068, metadata !DIExpression()) #13, !dbg !1063
  br label %44

44:                                               ; preds = %39, %38
  %45 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), %38 ], [ %43, %39 ], !dbg !1131
  call void @llvm.dbg.value(metadata i8* %45, metadata !1068, metadata !DIExpression()) #13, !dbg !1063
  %46 = load i8, i8* %45, align 1, !dbg !1132, !tbaa !575
  %47 = icmp eq i8 %46, 58, !dbg !1134
  br i1 %47, label %48, label %49, !dbg !1135

48:                                               ; preds = %44
  store i8* null, i8** @rpart, align 8, !dbg !1136, !tbaa !290
  br label %53, !dbg !1138

49:                                               ; preds = %44
  %50 = tail call i8* @strtok(i8* nonnull %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !1139
  store i8* %50, i8** @rpart, align 8, !dbg !1141, !tbaa !290
  %51 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %50) #12, !dbg !1142
  %52 = add i64 %51, 1, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %55, metadata !1068, metadata !DIExpression()) #13, !dbg !1063
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi i64 [ %52, %49 ], [ 1, %48 ]
  %55 = getelementptr inbounds i8, i8* %45, i64 %54, !dbg !1144
  call void @llvm.dbg.value(metadata i8* %55, metadata !1068, metadata !DIExpression()) #13, !dbg !1063
  %56 = tail call i8* @strtok(i8* nonnull %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !1145
  store i8* %56, i8** @apart, align 8, !dbg !1146, !tbaa !290
  %57 = load i8*, i8** @spart, align 8, !dbg !1147, !tbaa !290
  %58 = icmp eq i8* %57, null, !dbg !1147
  br i1 %58, label %179, label %59, !dbg !1148

59:                                               ; preds = %53
  %60 = tail call i8* @strtok(i8* nonnull %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %60, metadata !1069, metadata !DIExpression()) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i32* %3, metadata !1070, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i32* %4, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  %61 = call fastcc i32 @is_pattern(i8* %60, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1150
  %62 = icmp eq i32 %61, 0, !dbg !1150
  br i1 %62, label %88, label %63, !dbg !1151

63:                                               ; preds = %59
  %64 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1152, !tbaa !1153
  %65 = getelementptr %struct.residue_t, %struct.residue_t* %64, i64 0, i32 9, !dbg !1152
  %66 = load %struct.strand_t*, %struct.strand_t** %65, align 8, !dbg !1152, !tbaa !1154
  call void @llvm.dbg.value(metadata i8* %60, metadata !1155, metadata !DIExpression()) #13, !dbg !1161
  call void @llvm.dbg.value(metadata %struct.strand_t* %66, metadata !1160, metadata !DIExpression()) #13, !dbg !1161
  call void @llvm.dbg.value(metadata i8* %60, metadata !620, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !627, metadata !DIExpression()) #13, !dbg !1163
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1165, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %60, metadata !626, metadata !DIExpression()) #13, !dbg !1163
  br label %67, !dbg !1166

67:                                               ; preds = %78, %63
  %68 = phi i8* [ %60, %63 ], [ %80, %78 ], !dbg !1167
  %69 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %63 ], [ %79, %78 ], !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %68, metadata !626, metadata !DIExpression()) #13, !dbg !1163
  %70 = load i8, i8* %68, align 1, !dbg !1168, !tbaa !575
  switch i8 %70, label %76 [
    i8 0, label %81
    i8 42, label %71
    i8 63, label %74
  ], !dbg !1169

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1170
  call void @llvm.dbg.value(metadata i8* %72, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  store i8 46, i8* %69, align 1, !dbg !1171, !tbaa !575
  %73 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !1172
  call void @llvm.dbg.value(metadata i8* %73, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  store i8 42, i8* %72, align 1, !dbg !1173, !tbaa !575
  br label %78, !dbg !1174

74:                                               ; preds = %67
  %75 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1175
  call void @llvm.dbg.value(metadata i8* %75, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  store i8 46, i8* %69, align 1, !dbg !1176, !tbaa !575
  br label %78, !dbg !1177

76:                                               ; preds = %67
  %77 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1178
  call void @llvm.dbg.value(metadata i8* %77, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  store i8 %70, i8* %69, align 1, !dbg !1179, !tbaa !575
  br label %78

78:                                               ; preds = %76, %74, %71
  %79 = phi i8* [ %73, %71 ], [ %75, %74 ], [ %77, %76 ], !dbg !1180
  call void @llvm.dbg.value(metadata i8* %79, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  %80 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %80, metadata !626, metadata !DIExpression()) #13, !dbg !1163
  br label %67, !dbg !1182, !llvm.loop !1183

81:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  %82 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %82, metadata !627, metadata !DIExpression()) #13, !dbg !1163
  store i8 36, i8* %69, align 1, !dbg !1186, !tbaa !575
  store i8 0, i8* %82, align 1, !dbg !1187, !tbaa !575
  %83 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1188
  %84 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %66, i64 0, i32 0, !dbg !1189
  %85 = load i8*, i8** %84, align 8, !dbg !1189, !tbaa !666
  %86 = tail call i32 @step(i8* %85, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1190
  %87 = icmp eq i32 %86, 0, !dbg !1152
  br i1 %87, label %116, label %179, !dbg !1191

88:                                               ; preds = %59
  %89 = load i32, i32* %3, align 4, !dbg !1192, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %89, metadata !1070, metadata !DIExpression()) #13, !dbg !1063
  %90 = load i32, i32* %4, align 4, !dbg !1194, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %90, metadata !1071, metadata !DIExpression()) #13, !dbg !1063
  %91 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1195, !tbaa !1153
  %92 = getelementptr %struct.residue_t, %struct.residue_t* %91, i64 0, i32 9, !dbg !1195
  %93 = load %struct.strand_t*, %struct.strand_t** %92, align 8, !dbg !1195, !tbaa !1154
  call void @llvm.dbg.value(metadata i32 %89, metadata !1196, metadata !DIExpression()) #13, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %90, metadata !1202, metadata !DIExpression()) #13, !dbg !1208
  call void @llvm.dbg.value(metadata %struct.strand_t* %93, metadata !1205, metadata !DIExpression()) #13, !dbg !1208
  %94 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %93, i64 0, i32 3, !dbg !1210
  %95 = load %struct.molecule_t*, %struct.molecule_t** %94, align 8, !dbg !1210, !tbaa !1211
  call void @llvm.dbg.value(metadata %struct.molecule_t* %95, metadata !1207, metadata !DIExpression()) #13, !dbg !1208
  %96 = icmp eq i32 %90, -1, !dbg !1212
  %97 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %95, i64 0, i32 1, !dbg !1208
  %98 = load i32, i32* %97, align 8, !dbg !1208, !tbaa !678
  %99 = select i1 %96, i32 %98, i32 %90, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %99, metadata !1202, metadata !DIExpression()) #13, !dbg !1208
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1206, metadata !DIExpression()) #13, !dbg !1208
  call void @llvm.dbg.value(metadata i32 1, metadata !1203, metadata !DIExpression()) #13, !dbg !1208
  %100 = icmp slt i32 %98, 1, !dbg !1214
  br i1 %100, label %116, label %101, !dbg !1217

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %95, i64 0, i32 2, !dbg !1218
  br label %103, !dbg !1217

103:                                              ; preds = %112, %101
  %104 = phi %struct.strand_t** [ %114, %112 ], [ %102, %101 ]
  %105 = phi i32 [ %113, %112 ], [ 1, %101 ]
  %106 = load %struct.strand_t*, %struct.strand_t** %104, align 8, !dbg !1219, !tbaa !290
  call void @llvm.dbg.value(metadata i32 %105, metadata !1203, metadata !DIExpression()) #13, !dbg !1208
  %107 = icmp ne %struct.strand_t* %106, %93, !dbg !1220
  %108 = icmp slt i32 %105, %89, !dbg !1223
  %109 = or i1 %108, %107, !dbg !1226
  %110 = icmp sgt i32 %105, %99, !dbg !1227
  %111 = or i1 %110, %109, !dbg !1226
  br i1 %111, label %112, label %179, !dbg !1226

112:                                              ; preds = %103
  %113 = add nuw i32 %105, 1, !dbg !1228
  call void @llvm.dbg.value(metadata i32 %113, metadata !1203, metadata !DIExpression()) #13, !dbg !1208
  %114 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %106, i64 0, i32 4, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1206, metadata !DIExpression()) #13, !dbg !1208
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1206, metadata !DIExpression()) #13, !dbg !1208
  %115 = icmp eq i32 %105, %98, !dbg !1214
  br i1 %115, label %116, label %103, !dbg !1217, !llvm.loop !1230

116:                                              ; preds = %112, %88, %81
  %117 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %117, metadata !1069, metadata !DIExpression()) #13, !dbg !1063
  %118 = icmp eq i8* %117, null, !dbg !1233
  br i1 %118, label %358, label %119, !dbg !1233

119:                                              ; preds = %176, %116
  %120 = phi i8* [ %177, %176 ], [ %117, %116 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !1070, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i32* %4, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  %121 = call fastcc i32 @is_pattern(i8* nonnull %120, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1234
  %122 = icmp eq i32 %121, 0, !dbg !1234
  br i1 %122, label %148, label %123, !dbg !1237

123:                                              ; preds = %119
  %124 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1238, !tbaa !1153
  %125 = getelementptr %struct.residue_t, %struct.residue_t* %124, i64 0, i32 9, !dbg !1238
  %126 = load %struct.strand_t*, %struct.strand_t** %125, align 8, !dbg !1238, !tbaa !1154
  call void @llvm.dbg.value(metadata i8* %120, metadata !1155, metadata !DIExpression()) #13, !dbg !1241
  call void @llvm.dbg.value(metadata %struct.strand_t* %126, metadata !1160, metadata !DIExpression()) #13, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %120, metadata !620, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !627, metadata !DIExpression()) #13, !dbg !1243
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1245, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %120, metadata !626, metadata !DIExpression()) #13, !dbg !1243
  br label %127, !dbg !1246

127:                                              ; preds = %138, %123
  %128 = phi i8* [ %120, %123 ], [ %140, %138 ], !dbg !1247
  %129 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %123 ], [ %139, %138 ], !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %128, metadata !626, metadata !DIExpression()) #13, !dbg !1243
  %130 = load i8, i8* %128, align 1, !dbg !1248, !tbaa !575
  switch i8 %130, label %136 [
    i8 0, label %141
    i8 42, label %131
    i8 63, label %134
  ], !dbg !1249

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1250
  call void @llvm.dbg.value(metadata i8* %132, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  store i8 46, i8* %129, align 1, !dbg !1251, !tbaa !575
  %133 = getelementptr inbounds i8, i8* %129, i64 2, !dbg !1252
  call void @llvm.dbg.value(metadata i8* %133, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  store i8 42, i8* %132, align 1, !dbg !1253, !tbaa !575
  br label %138, !dbg !1254

134:                                              ; preds = %127
  %135 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %135, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  store i8 46, i8* %129, align 1, !dbg !1256, !tbaa !575
  br label %138, !dbg !1257

136:                                              ; preds = %127
  %137 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1258
  call void @llvm.dbg.value(metadata i8* %137, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  store i8 %130, i8* %129, align 1, !dbg !1259, !tbaa !575
  br label %138

138:                                              ; preds = %136, %134, %131
  %139 = phi i8* [ %133, %131 ], [ %135, %134 ], [ %137, %136 ], !dbg !1260
  call void @llvm.dbg.value(metadata i8* %139, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  %140 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !1261
  call void @llvm.dbg.value(metadata i8* %140, metadata !626, metadata !DIExpression()) #13, !dbg !1243
  br label %127, !dbg !1262, !llvm.loop !1263

141:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  %142 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1265
  call void @llvm.dbg.value(metadata i8* %142, metadata !627, metadata !DIExpression()) #13, !dbg !1243
  store i8 36, i8* %129, align 1, !dbg !1266, !tbaa !575
  store i8 0, i8* %142, align 1, !dbg !1267, !tbaa !575
  %143 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1268
  %144 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %126, i64 0, i32 0, !dbg !1269
  %145 = load i8*, i8** %144, align 8, !dbg !1269, !tbaa !666
  %146 = tail call i32 @step(i8* %145, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1270
  %147 = icmp eq i32 %146, 0, !dbg !1238
  br i1 %147, label %176, label %179, !dbg !1271

148:                                              ; preds = %119
  %149 = load i32, i32* %3, align 4, !dbg !1272, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %149, metadata !1070, metadata !DIExpression()) #13, !dbg !1063
  %150 = load i32, i32* %4, align 4, !dbg !1274, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %150, metadata !1071, metadata !DIExpression()) #13, !dbg !1063
  %151 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1275, !tbaa !1153
  %152 = getelementptr %struct.residue_t, %struct.residue_t* %151, i64 0, i32 9, !dbg !1275
  %153 = load %struct.strand_t*, %struct.strand_t** %152, align 8, !dbg !1275, !tbaa !1154
  call void @llvm.dbg.value(metadata i32 %149, metadata !1196, metadata !DIExpression()) #13, !dbg !1276
  call void @llvm.dbg.value(metadata i32 %150, metadata !1202, metadata !DIExpression()) #13, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.strand_t* %153, metadata !1205, metadata !DIExpression()) #13, !dbg !1276
  %154 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %153, i64 0, i32 3, !dbg !1278
  %155 = load %struct.molecule_t*, %struct.molecule_t** %154, align 8, !dbg !1278, !tbaa !1211
  call void @llvm.dbg.value(metadata %struct.molecule_t* %155, metadata !1207, metadata !DIExpression()) #13, !dbg !1276
  %156 = icmp eq i32 %150, -1, !dbg !1279
  %157 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %155, i64 0, i32 1, !dbg !1276
  %158 = load i32, i32* %157, align 8, !dbg !1276, !tbaa !678
  %159 = select i1 %156, i32 %158, i32 %150, !dbg !1276
  call void @llvm.dbg.value(metadata i32 %159, metadata !1202, metadata !DIExpression()) #13, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1206, metadata !DIExpression()) #13, !dbg !1276
  call void @llvm.dbg.value(metadata i32 1, metadata !1203, metadata !DIExpression()) #13, !dbg !1276
  %160 = icmp slt i32 %158, 1, !dbg !1280
  br i1 %160, label %176, label %161, !dbg !1281

161:                                              ; preds = %148
  %162 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %155, i64 0, i32 2, !dbg !1282
  br label %163, !dbg !1281

163:                                              ; preds = %172, %161
  %164 = phi %struct.strand_t** [ %174, %172 ], [ %162, %161 ]
  %165 = phi i32 [ %173, %172 ], [ 1, %161 ]
  %166 = load %struct.strand_t*, %struct.strand_t** %164, align 8, !dbg !1283, !tbaa !290
  call void @llvm.dbg.value(metadata i32 %165, metadata !1203, metadata !DIExpression()) #13, !dbg !1276
  %167 = icmp ne %struct.strand_t* %166, %153, !dbg !1284
  %168 = icmp slt i32 %165, %149, !dbg !1285
  %169 = or i1 %168, %167, !dbg !1286
  %170 = icmp sgt i32 %165, %159, !dbg !1287
  %171 = or i1 %170, %169, !dbg !1286
  br i1 %171, label %172, label %179, !dbg !1286

172:                                              ; preds = %163
  %173 = add nuw i32 %165, 1, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %173, metadata !1203, metadata !DIExpression()) #13, !dbg !1276
  %174 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %166, i64 0, i32 4, !dbg !1289
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1206, metadata !DIExpression()) #13, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1206, metadata !DIExpression()) #13, !dbg !1276
  %175 = icmp eq i32 %165, %158, !dbg !1280
  br i1 %175, label %176, label %163, !dbg !1281, !llvm.loop !1290

176:                                              ; preds = %172, %148, %141
  %177 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %177, metadata !1069, metadata !DIExpression()) #13, !dbg !1063
  %178 = icmp eq i8* %177, null, !dbg !1233
  br i1 %178, label %358, label %119, !dbg !1233, !llvm.loop !1292

179:                                              ; preds = %163, %141, %103, %81, %53
  call void @llvm.dbg.label(metadata !1072) #13, !dbg !1294
  %180 = load i8*, i8** @rpart, align 8, !dbg !1295, !tbaa !290
  %181 = icmp eq i8* %180, null, !dbg !1295
  br i1 %181, label %296, label %182, !dbg !1297

182:                                              ; preds = %179
  %183 = tail call i8* @strtok(i8* nonnull %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %183, metadata !1069, metadata !DIExpression()) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i32* %3, metadata !1070, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i32* %4, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  %184 = call fastcc i32 @is_pattern(i8* %183, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1300
  %185 = icmp eq i32 %184, 0, !dbg !1300
  br i1 %185, label %209, label %186, !dbg !1302

186:                                              ; preds = %182
  %187 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1303, !tbaa !1153
  call void @llvm.dbg.value(metadata i8* %183, metadata !1306, metadata !DIExpression()) #13, !dbg !1311
  call void @llvm.dbg.value(metadata %struct.residue_t* %187, metadata !1310, metadata !DIExpression()) #13, !dbg !1311
  call void @llvm.dbg.value(metadata i8* %183, metadata !620, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !627, metadata !DIExpression()) #13, !dbg !1313
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1315, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %183, metadata !626, metadata !DIExpression()) #13, !dbg !1313
  br label %188, !dbg !1316

188:                                              ; preds = %199, %186
  %189 = phi i8* [ %183, %186 ], [ %201, %199 ], !dbg !1317
  %190 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %186 ], [ %200, %199 ], !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %189, metadata !626, metadata !DIExpression()) #13, !dbg !1313
  %191 = load i8, i8* %189, align 1, !dbg !1318, !tbaa !575
  switch i8 %191, label %197 [
    i8 0, label %202
    i8 42, label %192
    i8 63, label %195
  ], !dbg !1319

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %193, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  store i8 46, i8* %190, align 1, !dbg !1321, !tbaa !575
  %194 = getelementptr inbounds i8, i8* %190, i64 2, !dbg !1322
  call void @llvm.dbg.value(metadata i8* %194, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  store i8 42, i8* %193, align 1, !dbg !1323, !tbaa !575
  br label %199, !dbg !1324

195:                                              ; preds = %188
  %196 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1325
  call void @llvm.dbg.value(metadata i8* %196, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  store i8 46, i8* %190, align 1, !dbg !1326, !tbaa !575
  br label %199, !dbg !1327

197:                                              ; preds = %188
  %198 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %198, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  store i8 %191, i8* %190, align 1, !dbg !1329, !tbaa !575
  br label %199

199:                                              ; preds = %197, %195, %192
  %200 = phi i8* [ %194, %192 ], [ %196, %195 ], [ %198, %197 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8* %200, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  %201 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %201, metadata !626, metadata !DIExpression()) #13, !dbg !1313
  br label %188, !dbg !1332, !llvm.loop !1333

202:                                              ; preds = %188
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  %203 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %203, metadata !627, metadata !DIExpression()) #13, !dbg !1313
  store i8 36, i8* %190, align 1, !dbg !1336, !tbaa !575
  store i8 0, i8* %203, align 1, !dbg !1337, !tbaa !575
  %204 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1338
  %205 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %187, i64 0, i32 4, !dbg !1339
  %206 = load i8*, i8** %205, align 8, !dbg !1339, !tbaa !1340
  %207 = tail call i32 @step(i8* %206, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1341
  %208 = icmp eq i32 %207, 0, !dbg !1303
  br i1 %208, label %236, label %296, !dbg !1342

209:                                              ; preds = %182
  %210 = load i32, i32* %3, align 4, !dbg !1343, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %210, metadata !1070, metadata !DIExpression()) #13, !dbg !1063
  %211 = load i32, i32* %4, align 4, !dbg !1345, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %211, metadata !1071, metadata !DIExpression()) #13, !dbg !1063
  %212 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1346, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %210, metadata !1347, metadata !DIExpression()) #13, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %211, metadata !1351, metadata !DIExpression()) #13, !dbg !1357
  call void @llvm.dbg.value(metadata %struct.residue_t* %212, metadata !1355, metadata !DIExpression()) #13, !dbg !1357
  %213 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %212, i64 0, i32 9, !dbg !1359
  %214 = load %struct.strand_t*, %struct.strand_t** %213, align 8, !dbg !1359, !tbaa !1154
  call void @llvm.dbg.value(metadata %struct.strand_t* %214, metadata !1354, metadata !DIExpression()) #13, !dbg !1357
  %215 = icmp eq i32 %211, -1, !dbg !1360
  %216 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %214, i64 0, i32 5, !dbg !1357
  %217 = load i32, i32* %216, align 8, !dbg !1357, !tbaa !308
  %218 = select i1 %215, i32 %217, i32 %211, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %218, metadata !1353, metadata !DIExpression()) #13, !dbg !1357
  call void @llvm.dbg.value(metadata i32 0, metadata !1352, metadata !DIExpression()) #13, !dbg !1357
  %219 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %214, i64 0, i32 7, !dbg !1362
  %220 = sext i32 %217 to i64, !dbg !1366
  %221 = sext i32 %218 to i64, !dbg !1366
  br label %222, !dbg !1366

222:                                              ; preds = %225, %209
  %223 = phi i64 [ %230, %225 ], [ 0, %209 ], !dbg !1367
  call void @llvm.dbg.value(metadata i64 %223, metadata !1352, metadata !DIExpression()) #13, !dbg !1357
  %224 = icmp slt i64 %223, %220, !dbg !1368
  br i1 %224, label %225, label %236, !dbg !1369

225:                                              ; preds = %222
  %226 = load %struct.residue_t**, %struct.residue_t*** %219, align 8, !dbg !1370, !tbaa !313
  %227 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %226, i64 %223, !dbg !1371
  %228 = load %struct.residue_t*, %struct.residue_t** %227, align 8, !dbg !1371, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %228, metadata !1356, metadata !DIExpression()) #13, !dbg !1357
  %229 = icmp eq %struct.residue_t* %228, %212, !dbg !1372
  %230 = add nuw nsw i64 %223, 1, !dbg !1374
  %231 = trunc i64 %230 to i32, !dbg !1377
  %232 = icmp sle i32 %210, %231, !dbg !1377
  %233 = and i1 %232, %229, !dbg !1378
  %234 = icmp slt i64 %223, %221, !dbg !1379
  %235 = and i1 %234, %233, !dbg !1378
  br i1 %235, label %296, label %222, !dbg !1378, !llvm.loop !1380

236:                                              ; preds = %222, %202
  %237 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1382
  call void @llvm.dbg.value(metadata i8* %237, metadata !1069, metadata !DIExpression()) #13, !dbg !1063
  %238 = icmp eq i8* %237, null, !dbg !1383
  br i1 %238, label %358, label %239, !dbg !1383

239:                                              ; preds = %293, %236
  %240 = phi i8* [ %294, %293 ], [ %237, %236 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !1070, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i32* %4, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  %241 = call fastcc i32 @is_pattern(i8* nonnull %240, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1384
  %242 = icmp eq i32 %241, 0, !dbg !1384
  br i1 %242, label %266, label %243, !dbg !1387

243:                                              ; preds = %239
  %244 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1388, !tbaa !1153
  call void @llvm.dbg.value(metadata i8* %240, metadata !1306, metadata !DIExpression()) #13, !dbg !1391
  call void @llvm.dbg.value(metadata %struct.residue_t* %244, metadata !1310, metadata !DIExpression()) #13, !dbg !1391
  call void @llvm.dbg.value(metadata i8* %240, metadata !620, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !627, metadata !DIExpression()) #13, !dbg !1393
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1395, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %240, metadata !626, metadata !DIExpression()) #13, !dbg !1393
  br label %245, !dbg !1396

245:                                              ; preds = %256, %243
  %246 = phi i8* [ %240, %243 ], [ %258, %256 ], !dbg !1397
  %247 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %243 ], [ %257, %256 ], !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %246, metadata !626, metadata !DIExpression()) #13, !dbg !1393
  %248 = load i8, i8* %246, align 1, !dbg !1398, !tbaa !575
  switch i8 %248, label %254 [
    i8 0, label %259
    i8 42, label %249
    i8 63, label %252
  ], !dbg !1399

249:                                              ; preds = %245
  %250 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1400
  call void @llvm.dbg.value(metadata i8* %250, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  store i8 46, i8* %247, align 1, !dbg !1401, !tbaa !575
  %251 = getelementptr inbounds i8, i8* %247, i64 2, !dbg !1402
  call void @llvm.dbg.value(metadata i8* %251, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  store i8 42, i8* %250, align 1, !dbg !1403, !tbaa !575
  br label %256, !dbg !1404

252:                                              ; preds = %245
  %253 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %253, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  store i8 46, i8* %247, align 1, !dbg !1406, !tbaa !575
  br label %256, !dbg !1407

254:                                              ; preds = %245
  %255 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %255, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  store i8 %248, i8* %247, align 1, !dbg !1409, !tbaa !575
  br label %256

256:                                              ; preds = %254, %252, %249
  %257 = phi i8* [ %251, %249 ], [ %253, %252 ], [ %255, %254 ], !dbg !1410
  call void @llvm.dbg.value(metadata i8* %257, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  %258 = getelementptr inbounds i8, i8* %246, i64 1, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %258, metadata !626, metadata !DIExpression()) #13, !dbg !1393
  br label %245, !dbg !1412, !llvm.loop !1413

259:                                              ; preds = %245
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  %260 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1415
  call void @llvm.dbg.value(metadata i8* %260, metadata !627, metadata !DIExpression()) #13, !dbg !1393
  store i8 36, i8* %247, align 1, !dbg !1416, !tbaa !575
  store i8 0, i8* %260, align 1, !dbg !1417, !tbaa !575
  %261 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1418
  %262 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %244, i64 0, i32 4, !dbg !1419
  %263 = load i8*, i8** %262, align 8, !dbg !1419, !tbaa !1340
  %264 = tail call i32 @step(i8* %263, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1420
  %265 = icmp eq i32 %264, 0, !dbg !1388
  br i1 %265, label %293, label %296, !dbg !1421

266:                                              ; preds = %239
  %267 = load i32, i32* %3, align 4, !dbg !1422, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %267, metadata !1070, metadata !DIExpression()) #13, !dbg !1063
  %268 = load i32, i32* %4, align 4, !dbg !1424, !tbaa !674
  call void @llvm.dbg.value(metadata i32 %268, metadata !1071, metadata !DIExpression()) #13, !dbg !1063
  %269 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1425, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %267, metadata !1347, metadata !DIExpression()) #13, !dbg !1426
  call void @llvm.dbg.value(metadata i32 %268, metadata !1351, metadata !DIExpression()) #13, !dbg !1426
  call void @llvm.dbg.value(metadata %struct.residue_t* %269, metadata !1355, metadata !DIExpression()) #13, !dbg !1426
  %270 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %269, i64 0, i32 9, !dbg !1428
  %271 = load %struct.strand_t*, %struct.strand_t** %270, align 8, !dbg !1428, !tbaa !1154
  call void @llvm.dbg.value(metadata %struct.strand_t* %271, metadata !1354, metadata !DIExpression()) #13, !dbg !1426
  %272 = icmp eq i32 %268, -1, !dbg !1429
  %273 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %271, i64 0, i32 5, !dbg !1426
  %274 = load i32, i32* %273, align 8, !dbg !1426, !tbaa !308
  %275 = select i1 %272, i32 %274, i32 %268, !dbg !1430
  call void @llvm.dbg.value(metadata i32 %275, metadata !1353, metadata !DIExpression()) #13, !dbg !1426
  call void @llvm.dbg.value(metadata i32 0, metadata !1352, metadata !DIExpression()) #13, !dbg !1426
  %276 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %271, i64 0, i32 7, !dbg !1431
  %277 = sext i32 %274 to i64, !dbg !1432
  %278 = sext i32 %275 to i64, !dbg !1432
  br label %279, !dbg !1432

279:                                              ; preds = %282, %266
  %280 = phi i64 [ %287, %282 ], [ 0, %266 ], !dbg !1433
  call void @llvm.dbg.value(metadata i64 %280, metadata !1352, metadata !DIExpression()) #13, !dbg !1426
  %281 = icmp slt i64 %280, %277, !dbg !1434
  br i1 %281, label %282, label %293, !dbg !1435

282:                                              ; preds = %279
  %283 = load %struct.residue_t**, %struct.residue_t*** %276, align 8, !dbg !1436, !tbaa !313
  %284 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %283, i64 %280, !dbg !1437
  %285 = load %struct.residue_t*, %struct.residue_t** %284, align 8, !dbg !1437, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %285, metadata !1356, metadata !DIExpression()) #13, !dbg !1426
  %286 = icmp eq %struct.residue_t* %285, %269, !dbg !1438
  %287 = add nuw nsw i64 %280, 1, !dbg !1439
  %288 = trunc i64 %287 to i32, !dbg !1440
  %289 = icmp sle i32 %267, %288, !dbg !1440
  %290 = and i1 %289, %286, !dbg !1441
  %291 = icmp slt i64 %280, %278, !dbg !1442
  %292 = and i1 %291, %290, !dbg !1441
  br i1 %292, label %296, label %279, !dbg !1441, !llvm.loop !1443

293:                                              ; preds = %279, %259
  %294 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1382
  call void @llvm.dbg.value(metadata i8* %294, metadata !1069, metadata !DIExpression()) #13, !dbg !1063
  %295 = icmp eq i8* %294, null, !dbg !1383
  br i1 %295, label %358, label %239, !dbg !1383, !llvm.loop !1445

296:                                              ; preds = %282, %259, %225, %202, %179
  call void @llvm.dbg.label(metadata !1073) #13, !dbg !1447
  %297 = load i8*, i8** @apart, align 8, !dbg !1448, !tbaa !290
  %298 = icmp eq i8* %297, null, !dbg !1448
  br i1 %298, label %357, label %299, !dbg !1449

299:                                              ; preds = %296
  %300 = tail call i8* @strtok(i8* nonnull %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %300, metadata !1069, metadata !DIExpression()) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i32* %3, metadata !1070, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i32* %4, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  %301 = call fastcc i32 @is_pattern(i8* %300, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1451
  %302 = icmp eq i32 %301, 0, !dbg !1451
  br i1 %302, label %324, label %303, !dbg !1452

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1087, metadata !DIExpression()) #13, !dbg !1084
  call void @llvm.dbg.value(metadata i8* %300, metadata !1088, metadata !DIExpression()) #13, !dbg !1084
  call void @llvm.dbg.value(metadata i8* %300, metadata !620, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !627, metadata !DIExpression()) #13, !dbg !1453
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1455, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %300, metadata !626, metadata !DIExpression()) #13, !dbg !1453
  br label %304, !dbg !1456

304:                                              ; preds = %315, %303
  %305 = phi i8* [ %300, %303 ], [ %317, %315 ], !dbg !1457
  %306 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %303 ], [ %316, %315 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %305, metadata !626, metadata !DIExpression()) #13, !dbg !1453
  %307 = load i8, i8* %305, align 1, !dbg !1458, !tbaa !575
  switch i8 %307, label %313 [
    i8 0, label %318
    i8 42, label %308
    i8 63, label %311
  ], !dbg !1459

308:                                              ; preds = %304
  %309 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1460
  call void @llvm.dbg.value(metadata i8* %309, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  store i8 46, i8* %306, align 1, !dbg !1461, !tbaa !575
  %310 = getelementptr inbounds i8, i8* %306, i64 2, !dbg !1462
  call void @llvm.dbg.value(metadata i8* %310, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  store i8 42, i8* %309, align 1, !dbg !1463, !tbaa !575
  br label %315, !dbg !1464

311:                                              ; preds = %304
  %312 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1465
  call void @llvm.dbg.value(metadata i8* %312, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  store i8 46, i8* %306, align 1, !dbg !1466, !tbaa !575
  br label %315, !dbg !1467

313:                                              ; preds = %304
  %314 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1468
  call void @llvm.dbg.value(metadata i8* %314, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  store i8 %307, i8* %306, align 1, !dbg !1469, !tbaa !575
  br label %315

315:                                              ; preds = %313, %311, %308
  %316 = phi i8* [ %310, %308 ], [ %312, %311 ], [ %314, %313 ], !dbg !1470
  call void @llvm.dbg.value(metadata i8* %316, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  %317 = getelementptr inbounds i8, i8* %305, i64 1, !dbg !1471
  call void @llvm.dbg.value(metadata i8* %317, metadata !626, metadata !DIExpression()) #13, !dbg !1453
  br label %304, !dbg !1472, !llvm.loop !1473

318:                                              ; preds = %304
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  %319 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1475
  call void @llvm.dbg.value(metadata i8* %319, metadata !627, metadata !DIExpression()) #13, !dbg !1453
  store i8 36, i8* %306, align 1, !dbg !1476, !tbaa !575
  store i8 0, i8* %319, align 1, !dbg !1477, !tbaa !575
  %320 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1478
  %321 = load i8*, i8** %11, align 8, !dbg !1479, !tbaa !1480
  %322 = tail call i32 @step(i8* %321, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1481
  %323 = icmp eq i32 %322, 0, !dbg !1482
  br i1 %323, label %327, label %357, !dbg !1483

324:                                              ; preds = %299
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1484, !tbaa !290
  %326 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %325) #14, !dbg !1486
  br label %358, !dbg !1487

327:                                              ; preds = %348, %318
  %328 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1488
  call void @llvm.dbg.value(metadata i8* %328, metadata !1069, metadata !DIExpression()) #13, !dbg !1063
  %329 = icmp eq i8* %328, null, !dbg !1489
  br i1 %329, label %358, label %330, !dbg !1489

330:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i32* %3, metadata !1070, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i32* %4, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1063
  %331 = call fastcc i32 @is_pattern(i8* nonnull %328, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1490
  %332 = icmp eq i32 %331, 0, !dbg !1490
  br i1 %332, label %354, label %333, !dbg !1493

333:                                              ; preds = %330
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1087, metadata !DIExpression()) #13, !dbg !1494
  call void @llvm.dbg.value(metadata i8* %328, metadata !1088, metadata !DIExpression()) #13, !dbg !1494
  call void @llvm.dbg.value(metadata i8* %328, metadata !620, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !627, metadata !DIExpression()) #13, !dbg !1498
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1500, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %328, metadata !626, metadata !DIExpression()) #13, !dbg !1498
  br label %334, !dbg !1501

334:                                              ; preds = %345, %333
  %335 = phi i8* [ %328, %333 ], [ %347, %345 ], !dbg !1502
  %336 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %333 ], [ %346, %345 ], !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %335, metadata !626, metadata !DIExpression()) #13, !dbg !1498
  %337 = load i8, i8* %335, align 1, !dbg !1503, !tbaa !575
  switch i8 %337, label %343 [
    i8 0, label %348
    i8 42, label %338
    i8 63, label %341
  ], !dbg !1504

338:                                              ; preds = %334
  %339 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1505
  call void @llvm.dbg.value(metadata i8* %339, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  store i8 46, i8* %336, align 1, !dbg !1506, !tbaa !575
  %340 = getelementptr inbounds i8, i8* %336, i64 2, !dbg !1507
  call void @llvm.dbg.value(metadata i8* %340, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  store i8 42, i8* %339, align 1, !dbg !1508, !tbaa !575
  br label %345, !dbg !1509

341:                                              ; preds = %334
  %342 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1510
  call void @llvm.dbg.value(metadata i8* %342, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  store i8 46, i8* %336, align 1, !dbg !1511, !tbaa !575
  br label %345, !dbg !1512

343:                                              ; preds = %334
  %344 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1513
  call void @llvm.dbg.value(metadata i8* %344, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  store i8 %337, i8* %336, align 1, !dbg !1514, !tbaa !575
  br label %345

345:                                              ; preds = %343, %341, %338
  %346 = phi i8* [ %340, %338 ], [ %342, %341 ], [ %344, %343 ], !dbg !1515
  call void @llvm.dbg.value(metadata i8* %346, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  %347 = getelementptr inbounds i8, i8* %335, i64 1, !dbg !1516
  call void @llvm.dbg.value(metadata i8* %347, metadata !626, metadata !DIExpression()) #13, !dbg !1498
  br label %334, !dbg !1517, !llvm.loop !1518

348:                                              ; preds = %334
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  %349 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1520
  call void @llvm.dbg.value(metadata i8* %349, metadata !627, metadata !DIExpression()) #13, !dbg !1498
  store i8 36, i8* %336, align 1, !dbg !1521, !tbaa !575
  store i8 0, i8* %349, align 1, !dbg !1522, !tbaa !575
  %350 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1523
  %351 = load i8*, i8** %11, align 8, !dbg !1524, !tbaa !1480
  %352 = tail call i32 @step(i8* %351, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1525
  %353 = icmp eq i32 %352, 0, !dbg !1526
  br i1 %353, label %327, label %357, !dbg !1527, !llvm.loop !1528

354:                                              ; preds = %330
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1530, !tbaa !290
  %356 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %355) #14, !dbg !1532
  br label %358, !dbg !1533

357:                                              ; preds = %348, %318, %296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #13, !dbg !1534
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #13, !dbg !1534
  br label %362, !dbg !1535

358:                                              ; preds = %354, %327, %324, %293, %236, %176, %116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #13, !dbg !1534
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #13, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %24, metadata !1054, metadata !DIExpression()), !dbg !1057
  %359 = icmp eq i8* %24, null, !dbg !1536
  br i1 %359, label %362, label %360, !dbg !1538

360:                                              ; preds = %358
  %361 = tail call i8* @strchr(i8* nonnull %24, i32 124) #12, !dbg !1539
  call void @llvm.dbg.value(metadata i8* %361, metadata !1055, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %361, metadata !1055, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %24, metadata !1054, metadata !DIExpression()), !dbg !1057
  br label %12, !dbg !1095

362:                                              ; preds = %358, %357, %28, %2
  %363 = phi i32 [ 0, %28 ], [ 0, %2 ], [ 1, %357 ], [ 0, %358 ], !dbg !1057
  ret i32 %363, !dbg !1540
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @set_attr_if(%struct.molecule_t* nocapture readonly %0, i32 %1, i32 %2) local_unnamed_addr #5 !dbg !1541 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1543, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 %1, metadata !1544, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 %2, metadata !1545, metadata !DIExpression()), !dbg !1551
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1552
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1548, metadata !DIExpression()), !dbg !1551
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1554, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1548, metadata !DIExpression()), !dbg !1551
  %6 = icmp eq %struct.strand_t* %5, null, !dbg !1555
  br i1 %6, label %56, label %7, !dbg !1555

7:                                                ; preds = %52, %3
  %8 = phi %struct.strand_t* [ %54, %52 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 2, !dbg !1556
  %10 = load i32, i32* %9, align 4, !dbg !1556, !tbaa !299
  %11 = and i32 %10, %2, !dbg !1559
  %12 = icmp eq i32 %11, 0, !dbg !1559
  %13 = select i1 %12, i32 0, i32 %1, !dbg !1560
  %14 = or i32 %13, %10, !dbg !1561
  store i32 %14, i32* %9, align 4, !dbg !1561, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !1547, metadata !DIExpression()), !dbg !1551
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 5, !dbg !1562
  %16 = load i32, i32* %15, align 8, !dbg !1562, !tbaa !308
  %17 = icmp sgt i32 %16, 0, !dbg !1565
  br i1 %17, label %18, label %52, !dbg !1566

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 7, !dbg !1567
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !1567, !tbaa !313
  %21 = zext i32 %16 to i64, !dbg !1566
  br label %22, !dbg !1566

22:                                               ; preds = %49, %18
  %23 = phi i64 [ 0, %18 ], [ %50, %49 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1547, metadata !DIExpression()), !dbg !1551
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %23, !dbg !1569
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !1569, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !1549, metadata !DIExpression()), !dbg !1551
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 6, !dbg !1570
  %27 = load i32, i32* %26, align 8, !dbg !1570, !tbaa !317
  %28 = and i32 %27, %2, !dbg !1571
  %29 = icmp eq i32 %28, 0, !dbg !1571
  %30 = select i1 %29, i32 0, i32 %1, !dbg !1572
  %31 = or i32 %30, %27, !dbg !1573
  store i32 %31, i32* %26, align 8, !dbg !1573, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !1546, metadata !DIExpression()), !dbg !1551
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 15, !dbg !1574
  %33 = load i32, i32* %32, align 8, !dbg !1574, !tbaa !325
  %34 = icmp sgt i32 %33, 0, !dbg !1577
  br i1 %34, label %35, label %49, !dbg !1578

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 17, !dbg !1579
  %37 = load %struct.atom_t*, %struct.atom_t** %36, align 8, !dbg !1579, !tbaa !330
  %38 = zext i32 %33 to i64, !dbg !1578
  br label %39, !dbg !1578

39:                                               ; preds = %39, %35
  %40 = phi i64 [ 0, %35 ], [ %47, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1546, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1550, metadata !DIExpression()), !dbg !1551
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %40, i32 2, !dbg !1581
  %42 = load i32, i32* %41, align 8, !dbg !1581, !tbaa !333
  %43 = and i32 %42, %2, !dbg !1582
  %44 = icmp eq i32 %43, 0, !dbg !1582
  %45 = select i1 %44, i32 0, i32 %1, !dbg !1583
  %46 = or i32 %45, %42, !dbg !1584
  store i32 %46, i32* %41, align 8, !dbg !1584, !tbaa !333
  %47 = add nuw nsw i64 %40, 1, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %47, metadata !1546, metadata !DIExpression()), !dbg !1551
  %48 = icmp ult i64 %47, %38, !dbg !1577
  br i1 %48, label %39, label %49, !dbg !1578, !llvm.loop !1586

49:                                               ; preds = %39, %22
  %50 = add nuw nsw i64 %23, 1, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %50, metadata !1547, metadata !DIExpression()), !dbg !1551
  %51 = icmp ult i64 %50, %21, !dbg !1565
  br i1 %51, label %22, label %52, !dbg !1566, !llvm.loop !1589

52:                                               ; preds = %49, %7
  %53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 4, !dbg !1591
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1548, metadata !DIExpression()), !dbg !1551
  %54 = load %struct.strand_t*, %struct.strand_t** %53, align 8, !dbg !1554, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %54, metadata !1548, metadata !DIExpression()), !dbg !1551
  %55 = icmp eq %struct.strand_t* %54, null, !dbg !1555
  br i1 %55, label %56, label %7, !dbg !1555, !llvm.loop !1592

56:                                               ; preds = %52, %3
  ret void, !dbg !1594
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @clear_attr(%struct.molecule_t* nocapture readonly %0, i32 %1) local_unnamed_addr #5 !dbg !1595 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1599, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %1, metadata !1600, metadata !DIExpression()), !dbg !1605
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1606
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1603, metadata !DIExpression()), !dbg !1605
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1608, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %4, metadata !1603, metadata !DIExpression()), !dbg !1605
  %5 = icmp eq %struct.strand_t* %4, null, !dbg !1609
  br i1 %5, label %48, label %6, !dbg !1609

6:                                                ; preds = %2
  %7 = xor i32 %1, -1, !dbg !1610
  br label %8, !dbg !1609

8:                                                ; preds = %44, %6
  %9 = phi %struct.strand_t* [ %4, %6 ], [ %46, %44 ]
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 2, !dbg !1613
  %11 = load i32, i32* %10, align 4, !dbg !1614, !tbaa !299
  %12 = and i32 %11, %7, !dbg !1614
  store i32 %12, i32* %10, align 4, !dbg !1614, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !1602, metadata !DIExpression()), !dbg !1605
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 5, !dbg !1615
  %14 = load i32, i32* %13, align 8, !dbg !1615, !tbaa !308
  %15 = icmp sgt i32 %14, 0, !dbg !1618
  br i1 %15, label %16, label %44, !dbg !1619

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 7, !dbg !1620
  %18 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1620, !tbaa !313
  %19 = zext i32 %14 to i64, !dbg !1619
  br label %20, !dbg !1619

20:                                               ; preds = %41, %16
  %21 = phi i64 [ 0, %16 ], [ %42, %41 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1602, metadata !DIExpression()), !dbg !1605
  %22 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %18, i64 %21, !dbg !1622
  %23 = load %struct.residue_t*, %struct.residue_t** %22, align 8, !dbg !1622, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %23, metadata !1604, metadata !DIExpression()), !dbg !1605
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %23, i64 0, i32 6, !dbg !1623
  %25 = load i32, i32* %24, align 8, !dbg !1624, !tbaa !317
  %26 = and i32 %25, %7, !dbg !1624
  store i32 %26, i32* %24, align 8, !dbg !1624, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !1601, metadata !DIExpression()), !dbg !1605
  %27 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %23, i64 0, i32 15, !dbg !1625
  %28 = load i32, i32* %27, align 8, !dbg !1625, !tbaa !325
  %29 = icmp sgt i32 %28, 0, !dbg !1628
  br i1 %29, label %30, label %41, !dbg !1629

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %23, i64 0, i32 17, !dbg !1630
  %32 = load %struct.atom_t*, %struct.atom_t** %31, align 8, !dbg !1630, !tbaa !330
  %33 = zext i32 %28 to i64, !dbg !1629
  br label %34, !dbg !1629

34:                                               ; preds = %34, %30
  %35 = phi i64 [ 0, %30 ], [ %39, %34 ]
  call void @llvm.dbg.value(metadata i64 %35, metadata !1601, metadata !DIExpression()), !dbg !1605
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %35, i32 2, !dbg !1631
  %37 = load i32, i32* %36, align 8, !dbg !1632, !tbaa !333
  %38 = and i32 %37, %7, !dbg !1632
  store i32 %38, i32* %36, align 8, !dbg !1632, !tbaa !333
  %39 = add nuw nsw i64 %35, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %39, metadata !1601, metadata !DIExpression()), !dbg !1605
  %40 = icmp ult i64 %39, %33, !dbg !1628
  br i1 %40, label %34, label %41, !dbg !1629, !llvm.loop !1634

41:                                               ; preds = %34, %20
  %42 = add nuw nsw i64 %21, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %42, metadata !1602, metadata !DIExpression()), !dbg !1605
  %43 = icmp ult i64 %42, %19, !dbg !1618
  br i1 %43, label %20, label %44, !dbg !1619, !llvm.loop !1637

44:                                               ; preds = %41, %8
  %45 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 4, !dbg !1639
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1603, metadata !DIExpression()), !dbg !1605
  %46 = load %struct.strand_t*, %struct.strand_t** %45, align 8, !dbg !1608, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %46, metadata !1603, metadata !DIExpression()), !dbg !1605
  %47 = icmp eq %struct.strand_t* %46, null, !dbg !1609
  br i1 %47, label %48, label %8, !dbg !1609, !llvm.loop !1640

48:                                               ; preds = %44, %2
  ret void, !dbg !1642
}

; Function Attrs: nofree nounwind
declare dso_local i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @is_pattern(i8* nocapture readonly %0, i32* nocapture %1, i32* nocapture %2) unnamed_addr #6 !dbg !1643 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1648, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32* %1, metadata !1649, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32* %2, metadata !1650, metadata !DIExpression()), !dbg !1653
  %4 = tail call i16** @__ctype_b_loc() #15, !dbg !1654
  %5 = load i16*, i16** %4, align 8, !dbg !1654, !tbaa !290
  %6 = load i8, i8* %0, align 1, !dbg !1654, !tbaa !575
  %7 = sext i8 %6 to i64, !dbg !1654
  %8 = getelementptr inbounds i16, i16* %5, i64 %7, !dbg !1654
  %9 = load i16, i16* %8, align 2, !dbg !1654, !tbaa !1656
  %10 = and i16 %9, 2048, !dbg !1654
  %11 = icmp ne i16 %10, 0, !dbg !1654
  %12 = icmp eq i8 %6, 45, !dbg !1658
  %13 = or i1 %12, %11, !dbg !1659
  br i1 %13, label %14, label %95, !dbg !1659

14:                                               ; preds = %3
  %15 = icmp eq i16 %10, 0, !dbg !1660
  br i1 %15, label %66, label %16, !dbg !1662

16:                                               ; preds = %16, %14
  %17 = phi i8 [ %25, %16 ], [ %6, %14 ]
  %18 = phi i8* [ %24, %16 ], [ %0, %14 ]
  %19 = phi i32 [ %23, %16 ], [ 0, %14 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %19, metadata !1651, metadata !DIExpression()), !dbg !1653
  %20 = sext i8 %17 to i32, !dbg !1663
  %21 = mul nsw i32 %19, 10, !dbg !1667
  %22 = add i32 %21, -48, !dbg !1668
  %23 = add i32 %22, %20, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %23, metadata !1651, metadata !DIExpression()), !dbg !1653
  %24 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1670
  call void @llvm.dbg.value(metadata i8* %24, metadata !1652, metadata !DIExpression()), !dbg !1653
  %25 = load i8, i8* %24, align 1, !dbg !1663, !tbaa !575
  %26 = sext i8 %25 to i64, !dbg !1663
  %27 = getelementptr inbounds i16, i16* %5, i64 %26, !dbg !1663
  %28 = load i16, i16* %27, align 2, !dbg !1663, !tbaa !1656
  %29 = and i16 %28, 2048, !dbg !1663
  %30 = icmp eq i16 %29, 0, !dbg !1671
  br i1 %30, label %31, label %16, !dbg !1671, !llvm.loop !1672

31:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8* %18, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %18, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %23, metadata !1651, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %24, metadata !1652, metadata !DIExpression()), !dbg !1653
  store i32 %23, i32* %1, align 4, !dbg !1674, !tbaa !674
  %32 = load i8, i8* %24, align 1, !dbg !1675, !tbaa !575
  switch i8 %32, label %37 [
    i8 0, label %33
    i8 45, label %34
  ], !dbg !1677

33:                                               ; preds = %31
  store i32 %23, i32* %2, align 4, !dbg !1678, !tbaa !674
  br label %95, !dbg !1680

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !1681
  call void @llvm.dbg.value(metadata i8* %35, metadata !1652, metadata !DIExpression()), !dbg !1653
  %36 = load i8, i8* %35, align 1, !dbg !1683, !tbaa !575
  br label %37, !dbg !1685

37:                                               ; preds = %34, %31
  %38 = phi i8 [ %32, %31 ], [ %36, %34 ], !dbg !1683
  %39 = phi i8* [ %24, %31 ], [ %35, %34 ], !dbg !1686
  call void @llvm.dbg.value(metadata i8* %39, metadata !1652, metadata !DIExpression()), !dbg !1653
  %40 = icmp eq i8 %38, 0, !dbg !1683
  br i1 %40, label %41, label %42, !dbg !1687

41:                                               ; preds = %37
  store i32 -1, i32* %2, align 4, !dbg !1688, !tbaa !674
  br label %95, !dbg !1690

42:                                               ; preds = %37
  %43 = sext i8 %38 to i64, !dbg !1691
  %44 = getelementptr inbounds i16, i16* %5, i64 %43, !dbg !1691
  %45 = load i16, i16* %44, align 2, !dbg !1691, !tbaa !1656
  %46 = and i16 %45, 2048, !dbg !1691
  %47 = icmp eq i16 %46, 0, !dbg !1691
  br i1 %47, label %95, label %48, !dbg !1693

48:                                               ; preds = %48, %42
  %49 = phi i8 [ %57, %48 ], [ %38, %42 ]
  %50 = phi i8* [ %56, %48 ], [ %39, %42 ]
  %51 = phi i32 [ %55, %48 ], [ 0, %42 ]
  call void @llvm.dbg.value(metadata i8* %50, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %51, metadata !1651, metadata !DIExpression()), !dbg !1653
  %52 = sext i8 %49 to i32, !dbg !1694
  %53 = mul nsw i32 %51, 10, !dbg !1697
  %54 = add i32 %53, -48, !dbg !1698
  %55 = add i32 %54, %52, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %55, metadata !1651, metadata !DIExpression()), !dbg !1653
  %56 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1700
  call void @llvm.dbg.value(metadata i8* %56, metadata !1652, metadata !DIExpression()), !dbg !1653
  %57 = load i8, i8* %56, align 1, !dbg !1694, !tbaa !575
  %58 = sext i8 %57 to i64, !dbg !1694
  %59 = getelementptr inbounds i16, i16* %5, i64 %58, !dbg !1694
  %60 = load i16, i16* %59, align 2, !dbg !1694, !tbaa !1656
  %61 = and i16 %60, 2048, !dbg !1694
  %62 = icmp eq i16 %61, 0, !dbg !1701
  br i1 %62, label %63, label %48, !dbg !1701, !llvm.loop !1702

63:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %55, metadata !1651, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %56, metadata !1652, metadata !DIExpression()), !dbg !1653
  store i32 %55, i32* %2, align 4, !dbg !1704, !tbaa !674
  %64 = load i8, i8* %56, align 1, !dbg !1705, !tbaa !575
  %65 = sext i8 %64 to i32, !dbg !1706
  br label %95, !dbg !1707

66:                                               ; preds = %14
  store i32 1, i32* %1, align 4, !dbg !1708, !tbaa !674
  %67 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1710
  call void @llvm.dbg.value(metadata i8* %67, metadata !1652, metadata !DIExpression()), !dbg !1653
  %68 = load i8, i8* %67, align 1, !dbg !1711, !tbaa !575
  %69 = icmp eq i8 %68, 0, !dbg !1711
  br i1 %69, label %70, label %71, !dbg !1713

70:                                               ; preds = %66
  store i32 -1, i32* %2, align 4, !dbg !1714, !tbaa !674
  br label %95, !dbg !1716

71:                                               ; preds = %66
  %72 = sext i8 %68 to i64, !dbg !1717
  %73 = getelementptr inbounds i16, i16* %5, i64 %72, !dbg !1717
  %74 = load i16, i16* %73, align 2, !dbg !1717, !tbaa !1656
  %75 = and i16 %74, 2048, !dbg !1717
  %76 = icmp eq i16 %75, 0, !dbg !1717
  br i1 %76, label %95, label %77, !dbg !1719

77:                                               ; preds = %77, %71
  %78 = phi i8 [ %86, %77 ], [ %68, %71 ]
  %79 = phi i8* [ %85, %77 ], [ %67, %71 ]
  %80 = phi i32 [ %84, %77 ], [ 0, %71 ]
  call void @llvm.dbg.value(metadata i8* %79, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %80, metadata !1651, metadata !DIExpression()), !dbg !1653
  %81 = sext i8 %78 to i32, !dbg !1720
  %82 = mul nsw i32 %80, 10, !dbg !1724
  %83 = add i32 %82, -48, !dbg !1725
  %84 = add i32 %83, %81, !dbg !1726
  call void @llvm.dbg.value(metadata i32 %84, metadata !1651, metadata !DIExpression()), !dbg !1653
  %85 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1727
  call void @llvm.dbg.value(metadata i8* %85, metadata !1652, metadata !DIExpression()), !dbg !1653
  %86 = load i8, i8* %85, align 1, !dbg !1720, !tbaa !575
  %87 = sext i8 %86 to i64, !dbg !1720
  %88 = getelementptr inbounds i16, i16* %5, i64 %87, !dbg !1720
  %89 = load i16, i16* %88, align 2, !dbg !1720, !tbaa !1656
  %90 = and i16 %89, 2048, !dbg !1720
  %91 = icmp eq i16 %90, 0, !dbg !1728
  br i1 %91, label %92, label %77, !dbg !1728, !llvm.loop !1729

92:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 %84, metadata !1651, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %85, metadata !1652, metadata !DIExpression()), !dbg !1653
  store i32 %84, i32* %2, align 4, !dbg !1731, !tbaa !674
  %93 = load i8, i8* %85, align 1, !dbg !1732, !tbaa !575
  %94 = sext i8 %93 to i32, !dbg !1733
  br label %95, !dbg !1734

95:                                               ; preds = %92, %71, %70, %63, %42, %41, %33, %3
  %96 = phi i32 [ %65, %63 ], [ 0, %41 ], [ 0, %33 ], [ %94, %92 ], [ 0, %70 ], [ 1, %3 ], [ 1, %42 ], [ 0, %71 ], !dbg !1653
  ret i32 %96, !dbg !1735
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_res_pat(%struct.molecule_t* nocapture readonly %0, i8* nocapture readonly %1) unnamed_addr #0 !dbg !1736 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1738, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8* %1, metadata !1739, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8* %1, metadata !620, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !627, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !627, metadata !DIExpression()), !dbg !1744
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1746, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %1, metadata !626, metadata !DIExpression()), !dbg !1744
  br label %3, !dbg !1747

3:                                                ; preds = %14, %2
  %4 = phi i8* [ %1, %2 ], [ %16, %14 ], !dbg !1748
  %5 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %2 ], [ %15, %14 ], !dbg !1744
  call void @llvm.dbg.value(metadata i8* %5, metadata !627, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %4, metadata !626, metadata !DIExpression()), !dbg !1744
  %6 = load i8, i8* %4, align 1, !dbg !1749, !tbaa !575
  switch i8 %6, label %12 [
    i8 0, label %17
    i8 42, label %7
    i8 63, label %10
  ], !dbg !1750

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1751
  call void @llvm.dbg.value(metadata i8* %8, metadata !627, metadata !DIExpression()), !dbg !1744
  store i8 46, i8* %5, align 1, !dbg !1752, !tbaa !575
  %9 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !1753
  call void @llvm.dbg.value(metadata i8* %9, metadata !627, metadata !DIExpression()), !dbg !1744
  store i8 42, i8* %8, align 1, !dbg !1754, !tbaa !575
  br label %14, !dbg !1755

10:                                               ; preds = %3
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1756
  call void @llvm.dbg.value(metadata i8* %11, metadata !627, metadata !DIExpression()), !dbg !1744
  store i8 46, i8* %5, align 1, !dbg !1757, !tbaa !575
  br label %14, !dbg !1758

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1759
  call void @llvm.dbg.value(metadata i8* %13, metadata !627, metadata !DIExpression()), !dbg !1744
  store i8 %6, i8* %5, align 1, !dbg !1760, !tbaa !575
  br label %14

14:                                               ; preds = %12, %10, %7
  %15 = phi i8* [ %9, %7 ], [ %11, %10 ], [ %13, %12 ], !dbg !1761
  call void @llvm.dbg.value(metadata i8* %15, metadata !627, metadata !DIExpression()), !dbg !1744
  %16 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1762
  call void @llvm.dbg.value(metadata i8* %16, metadata !626, metadata !DIExpression()), !dbg !1744
  br label %3, !dbg !1763, !llvm.loop !1764

17:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8* %5, metadata !627, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %5, metadata !627, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %5, metadata !627, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %5, metadata !627, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %5, metadata !627, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %5, metadata !627, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %5, metadata !627, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %5, metadata !627, metadata !DIExpression()), !dbg !1744
  %18 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1766
  call void @llvm.dbg.value(metadata i8* %18, metadata !627, metadata !DIExpression()), !dbg !1744
  store i8 36, i8* %5, align 1, !dbg !1767, !tbaa !575
  store i8 0, i8* %18, align 1, !dbg !1768, !tbaa !575
  %19 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1769
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1770
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1741, metadata !DIExpression()), !dbg !1743
  %21 = load %struct.strand_t*, %struct.strand_t** %20, align 8, !dbg !1772, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %21, metadata !1741, metadata !DIExpression()), !dbg !1743
  %22 = icmp eq %struct.strand_t* %21, null, !dbg !1773
  br i1 %22, label %56, label %23, !dbg !1773

23:                                               ; preds = %52, %17
  %24 = phi %struct.strand_t* [ %54, %52 ], [ %21, %17 ]
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 2, !dbg !1774
  %26 = load i32, i32* %25, align 4, !dbg !1774, !tbaa !299
  %27 = and i32 %26, 1, !dbg !1778
  %28 = icmp eq i32 %27, 0, !dbg !1778
  br i1 %28, label %52, label %29, !dbg !1779

29:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()), !dbg !1743
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 5, !dbg !1780
  %31 = load i32, i32* %30, align 8, !dbg !1780, !tbaa !308
  %32 = icmp sgt i32 %31, 0, !dbg !1784
  br i1 %32, label %33, label %52, !dbg !1785

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 7, !dbg !1786
  br label %35, !dbg !1785

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %48, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !1740, metadata !DIExpression()), !dbg !1743
  %37 = load %struct.residue_t**, %struct.residue_t*** %34, align 8, !dbg !1788, !tbaa !313
  %38 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %37, i64 %36, !dbg !1789
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8, !dbg !1789, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %39, metadata !1742, metadata !DIExpression()), !dbg !1743
  %40 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i64 0, i32 4, !dbg !1790
  %41 = load i8*, i8** %40, align 8, !dbg !1790, !tbaa !1340
  %42 = tail call i32 @step(i8* %41, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1791
  %43 = icmp ne i32 %42, 0, !dbg !1791
  %44 = zext i1 %43 to i32, !dbg !1791
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i64 0, i32 6, !dbg !1792
  %46 = load i32, i32* %45, align 8, !dbg !1793, !tbaa !317
  %47 = or i32 %46, %44, !dbg !1793
  store i32 %47, i32* %45, align 8, !dbg !1793, !tbaa !317
  %48 = add nuw nsw i64 %36, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %48, metadata !1740, metadata !DIExpression()), !dbg !1743
  %49 = load i32, i32* %30, align 8, !dbg !1780, !tbaa !308
  %50 = sext i32 %49 to i64, !dbg !1784
  %51 = icmp slt i64 %48, %50, !dbg !1784
  br i1 %51, label %35, label %52, !dbg !1785, !llvm.loop !1795

52:                                               ; preds = %35, %29, %23
  %53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 4, !dbg !1797
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1741, metadata !DIExpression()), !dbg !1743
  %54 = load %struct.strand_t*, %struct.strand_t** %53, align 8, !dbg !1772, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %54, metadata !1741, metadata !DIExpression()), !dbg !1743
  %55 = icmp eq %struct.strand_t* %54, null, !dbg !1773
  br i1 %55, label %56, label %23, !dbg !1773, !llvm.loop !1798

56:                                               ; preds = %52, %17
  ret void, !dbg !1800
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_atom_pat(%struct.molecule_t* nocapture readonly %0, i8* nocapture readonly %1) unnamed_addr #0 !dbg !1801 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1803, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %1, metadata !1804, metadata !DIExpression()), !dbg !1810
  tail call fastcc void @aexpr2rexpr(i8* %1), !dbg !1811
  %3 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1812
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1813
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1807, metadata !DIExpression()), !dbg !1810
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1815, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1807, metadata !DIExpression()), !dbg !1810
  %6 = icmp eq %struct.strand_t* %5, null, !dbg !1816
  br i1 %6, label %61, label %7, !dbg !1816

7:                                                ; preds = %57, %2
  %8 = phi %struct.strand_t* [ %59, %57 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 2, !dbg !1817
  %10 = load i32, i32* %9, align 4, !dbg !1817, !tbaa !299
  %11 = and i32 %10, 1, !dbg !1821
  %12 = icmp eq i32 %11, 0, !dbg !1821
  br i1 %12, label %57, label %13, !dbg !1822

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1805, metadata !DIExpression()), !dbg !1810
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 5, !dbg !1823
  %15 = load i32, i32* %14, align 8, !dbg !1823, !tbaa !308
  %16 = icmp sgt i32 %15, 0, !dbg !1827
  br i1 %16, label %17, label %57, !dbg !1828

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 7, !dbg !1829
  br label %19, !dbg !1828

19:                                               ; preds = %52, %17
  %20 = phi i32 [ %15, %17 ], [ %53, %52 ]
  %21 = phi i64 [ 0, %17 ], [ %54, %52 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1805, metadata !DIExpression()), !dbg !1810
  %22 = load %struct.residue_t**, %struct.residue_t*** %18, align 8, !dbg !1831, !tbaa !313
  %23 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %22, i64 %21, !dbg !1832
  %24 = load %struct.residue_t*, %struct.residue_t** %23, align 8, !dbg !1832, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %24, metadata !1808, metadata !DIExpression()), !dbg !1810
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 6, !dbg !1833
  %26 = load i32, i32* %25, align 8, !dbg !1833, !tbaa !317
  %27 = and i32 %26, 1, !dbg !1835
  %28 = icmp eq i32 %27, 0, !dbg !1835
  br i1 %28, label %52, label %29, !dbg !1836

29:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !1806, metadata !DIExpression()), !dbg !1810
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 15, !dbg !1837
  %31 = load i32, i32* %30, align 8, !dbg !1837, !tbaa !325
  %32 = icmp sgt i32 %31, 0, !dbg !1841
  br i1 %32, label %33, label %52, !dbg !1842

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 17, !dbg !1843
  br label %35, !dbg !1842

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !1806, metadata !DIExpression()), !dbg !1810
  %37 = load %struct.atom_t*, %struct.atom_t** %34, align 8, !dbg !1845, !tbaa !330
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1809, metadata !DIExpression()), !dbg !1810
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %36, i32 0, !dbg !1846
  %39 = load i8*, i8** %38, align 8, !dbg !1846, !tbaa !1480
  %40 = tail call i32 @step(i8* %39, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1847
  %41 = icmp ne i32 %40, 0, !dbg !1847
  %42 = zext i1 %41 to i32, !dbg !1847
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %36, i32 2, !dbg !1848
  %44 = load i32, i32* %43, align 8, !dbg !1849, !tbaa !333
  %45 = or i32 %44, %42, !dbg !1849
  store i32 %45, i32* %43, align 8, !dbg !1849, !tbaa !333
  %46 = add nuw nsw i64 %36, 1, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %46, metadata !1806, metadata !DIExpression()), !dbg !1810
  %47 = load i32, i32* %30, align 8, !dbg !1837, !tbaa !325
  %48 = sext i32 %47 to i64, !dbg !1841
  %49 = icmp slt i64 %46, %48, !dbg !1841
  br i1 %49, label %35, label %50, !dbg !1842, !llvm.loop !1851

50:                                               ; preds = %35
  %51 = load i32, i32* %14, align 8, !dbg !1823, !tbaa !308
  br label %52, !dbg !1853

52:                                               ; preds = %50, %29, %19
  %53 = phi i32 [ %51, %50 ], [ %20, %29 ], [ %20, %19 ], !dbg !1823
  %54 = add nuw nsw i64 %21, 1, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %54, metadata !1805, metadata !DIExpression()), !dbg !1810
  %55 = sext i32 %53 to i64, !dbg !1827
  %56 = icmp slt i64 %54, %55, !dbg !1827
  br i1 %56, label %19, label %57, !dbg !1828, !llvm.loop !1854

57:                                               ; preds = %52, %13, %7
  %58 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 4, !dbg !1856
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1807, metadata !DIExpression()), !dbg !1810
  %59 = load %struct.strand_t*, %struct.strand_t** %58, align 8, !dbg !1815, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %59, metadata !1807, metadata !DIExpression()), !dbg !1810
  %60 = icmp eq %struct.strand_t* %59, null, !dbg !1816
  br i1 %60, label %61, label %7, !dbg !1816, !llvm.loop !1857

61:                                               ; preds = %57, %2
  ret void, !dbg !1859
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc void @aexpr2rexpr(i8* nocapture readonly %0) unnamed_addr #5 !dbg !621 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !620, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !627, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !627, metadata !DIExpression()), !dbg !1860
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1861, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %0, metadata !626, metadata !DIExpression()), !dbg !1860
  br label %2, !dbg !1862

2:                                                ; preds = %13, %1
  %3 = phi i8* [ %0, %1 ], [ %15, %13 ], !dbg !1863
  %4 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %1 ], [ %14, %13 ], !dbg !1860
  call void @llvm.dbg.value(metadata i8* %4, metadata !627, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %3, metadata !626, metadata !DIExpression()), !dbg !1860
  %5 = load i8, i8* %3, align 1, !dbg !1864, !tbaa !575
  switch i8 %5, label %11 [
    i8 0, label %16
    i8 42, label %6
    i8 63, label %9
  ], !dbg !1865

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1866
  call void @llvm.dbg.value(metadata i8* %7, metadata !627, metadata !DIExpression()), !dbg !1860
  store i8 46, i8* %4, align 1, !dbg !1867, !tbaa !575
  %8 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !1868
  call void @llvm.dbg.value(metadata i8* %8, metadata !627, metadata !DIExpression()), !dbg !1860
  store i8 42, i8* %7, align 1, !dbg !1869, !tbaa !575
  br label %13, !dbg !1870

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1871
  call void @llvm.dbg.value(metadata i8* %10, metadata !627, metadata !DIExpression()), !dbg !1860
  store i8 46, i8* %4, align 1, !dbg !1872, !tbaa !575
  br label %13, !dbg !1873

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1874
  call void @llvm.dbg.value(metadata i8* %12, metadata !627, metadata !DIExpression()), !dbg !1860
  store i8 %5, i8* %4, align 1, !dbg !1875, !tbaa !575
  br label %13

13:                                               ; preds = %11, %9, %6
  %14 = phi i8* [ %8, %6 ], [ %10, %9 ], [ %12, %11 ], !dbg !1876
  call void @llvm.dbg.value(metadata i8* %14, metadata !627, metadata !DIExpression()), !dbg !1860
  %15 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %15, metadata !626, metadata !DIExpression()), !dbg !1860
  br label %2, !dbg !1878, !llvm.loop !1879

16:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !627, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %4, metadata !627, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %4, metadata !627, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %4, metadata !627, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %4, metadata !627, metadata !DIExpression()), !dbg !1860
  %17 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1881
  call void @llvm.dbg.value(metadata i8* %17, metadata !627, metadata !DIExpression()), !dbg !1860
  store i8 36, i8* %4, align 1, !dbg !1882, !tbaa !575
  store i8 0, i8* %17, align 1, !dbg !1883, !tbaa !575
  ret void, !dbg !1884
}

declare !dbg !242 dso_local i8* @compile(i8*, i8*, i8*, i32) local_unnamed_addr #8

declare !dbg !246 dso_local i32 @step(i8*, i8*) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

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
!289 = !DILocation(line: 0, scope: !288)
!290 = !{!291, !291, i64 0}
!291 = !{!"any pointer", !292, i64 0}
!292 = !{!"omnipotent char", !293, i64 0}
!293 = !{!"Simple C/C++ TBAA"}
!294 = !DILocation(line: 66, column: 2, scope: !288)
!295 = !DILocation(line: 67, column: 23, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 67, column: 7)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 66, column: 57)
!298 = distinct !DILexicalBlock(scope: !288, file: !3, line: 66, column: 2)
!299 = !{!300, !301, i64 12}
!300 = !{!"strand_t", !291, i64 0, !301, i64 8, !301, i64 12, !291, i64 16, !291, i64 24, !301, i64 32, !301, i64 36, !291, i64 40}
!301 = !{!"int", !292, i64 0}
!302 = !DILocation(line: 67, column: 17, scope: !296)
!303 = !DILocation(line: 67, column: 7, scope: !297)
!304 = !DILocation(line: 68, column: 24, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 68, column: 4)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 68, column: 4)
!307 = distinct !DILexicalBlock(scope: !296, file: !3, line: 67, column: 31)
!308 = !{!300, !301, i64 32}
!309 = !DILocation(line: 68, column: 18, scope: !305)
!310 = !DILocation(line: 68, column: 4, scope: !306)
!311 = !DILocation(line: 0, scope: !312)
!312 = distinct !DILexicalBlock(scope: !305, file: !3, line: 68, column: 42)
!313 = !{!300, !291, i64 40}
!314 = !DILocation(line: 69, column: 11, scope: !312)
!315 = !DILocation(line: 70, column: 26, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 70, column: 9)
!317 = !{!318, !301, i64 40}
!318 = !{!"residue_t", !291, i64 0, !301, i64 8, !301, i64 12, !301, i64 16, !291, i64 24, !291, i64 32, !301, i64 40, !301, i64 44, !301, i64 48, !291, i64 56, !291, i64 64, !301, i64 72, !291, i64 80, !301, i64 88, !291, i64 96, !301, i64 104, !291, i64 112, !291, i64 120}
!319 = !DILocation(line: 70, column: 19, scope: !316)
!320 = !DILocation(line: 70, column: 9, scope: !312)
!321 = !DILocation(line: 71, column: 27, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 71, column: 6)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 71, column: 6)
!324 = distinct !DILexicalBlock(scope: !316, file: !3, line: 70, column: 34)
!325 = !{!318, !301, i64 104}
!326 = !DILocation(line: 71, column: 20, scope: !322)
!327 = !DILocation(line: 71, column: 6, scope: !323)
!328 = !DILocation(line: 0, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !3, line: 71, column: 42)
!330 = !{!318, !291, i64 120}
!331 = !DILocation(line: 73, column: 27, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !3, line: 73, column: 11)
!333 = !{!334, !301, i64 16}
!334 = !{!"atom_t", !291, i64 0, !291, i64 8, !301, i64 16, !301, i64 20, !292, i64 24, !291, i64 56, !335, i64 64, !335, i64 72, !335, i64 80, !335, i64 88, !291, i64 96, !301, i64 104, !335, i64 112, !335, i64 120, !301, i64 128, !301, i64 132, !291, i64 136, !292, i64 144, !335, i64 168}
!335 = !{!"double", !292, i64 0}
!336 = !DILocation(line: 73, column: 21, scope: !332)
!337 = !DILocation(line: 73, column: 11, scope: !329)
!338 = !DILocation(line: 74, column: 13, scope: !339)
!339 = distinct !DILexicalBlock(scope: !332, file: !3, line: 73, column: 35)
!340 = !{!335, !335, i64 0}
!341 = !DILocation(line: 74, column: 10, scope: !339)
!342 = !DILocation(line: 75, column: 13, scope: !339)
!343 = !DILocation(line: 75, column: 10, scope: !339)
!344 = !DILocation(line: 76, column: 13, scope: !339)
!345 = !DILocation(line: 76, column: 10, scope: !339)
!346 = !DILocation(line: 77, column: 10, scope: !339)
!347 = !DILocation(line: 78, column: 7, scope: !339)
!348 = !DILocation(line: 71, column: 38, scope: !322)
!349 = distinct !{!349, !327, !350}
!350 = !DILocation(line: 79, column: 6, scope: !323)
!351 = !DILocation(line: 66, column: 10, scope: !288)
!352 = !DILocation(line: 65, column: 4, scope: !267)
!353 = !DILocation(line: 65, column: 8, scope: !267)
!354 = !DILocation(line: 65, column: 12, scope: !267)
!355 = !DILocation(line: 68, column: 38, scope: !305)
!356 = distinct !{!356, !310, !357}
!357 = !DILocation(line: 81, column: 4, scope: !306)
!358 = !DILocation(line: 66, column: 49, scope: !298)
!359 = distinct !{!359, !294, !360}
!360 = !DILocation(line: 83, column: 2, scope: !288)
!361 = !DILocation(line: 85, column: 9, scope: !362)
!362 = distinct !DILexicalBlock(scope: !267, file: !3, line: 85, column: 6)
!363 = !DILocation(line: 85, column: 6, scope: !267)
!364 = !DILocation(line: 86, column: 12, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !3, line: 85, column: 15)
!366 = !DILocation(line: 86, column: 3, scope: !365)
!367 = !DILocation(line: 87, column: 3, scope: !365)
!368 = !DILocation(line: 89, column: 20, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !3, line: 88, column: 7)
!370 = !DILocation(line: 89, column: 18, scope: !369)
!371 = !DILocation(line: 89, column: 14, scope: !369)
!372 = !DILocation(line: 90, column: 18, scope: !369)
!373 = !DILocation(line: 90, column: 3, scope: !369)
!374 = !DILocation(line: 90, column: 14, scope: !369)
!375 = !DILocation(line: 91, column: 18, scope: !369)
!376 = !DILocation(line: 91, column: 3, scope: !369)
!377 = !DILocation(line: 91, column: 14, scope: !369)
!378 = !DILocation(line: 94, column: 2, scope: !267)
!379 = !DILocation(line: 95, column: 1, scope: !267)
!380 = distinct !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 97, type: !381, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{!25, !270, !238}
!383 = !{!384, !385, !386, !387, !388}
!384 = !DILocalVariable(name: "mol", arg: 1, scope: !380, file: !3, line: 97, type: !270)
!385 = !DILocalVariable(name: "aex", arg: 2, scope: !380, file: !3, line: 97, type: !238)
!386 = !DILocalVariable(name: "aep", scope: !380, file: !3, line: 99, type: !238)
!387 = !DILocalVariable(name: "n_aep", scope: !380, file: !3, line: 99, type: !238)
!388 = !DILocalVariable(name: "ael", scope: !380, file: !3, line: 100, type: !25)
!389 = !DILocation(line: 0, scope: !380)
!390 = !DILocation(line: 102, column: 10, scope: !391)
!391 = distinct !DILexicalBlock(scope: !380, file: !3, line: 102, column: 6)
!392 = !DILocation(line: 102, column: 6, scope: !380)
!393 = !DILocalVariable(name: "mol", arg: 1, scope: !394, file: !3, line: 398, type: !270)
!394 = distinct !DISubprogram(name: "select_all", scope: !3, file: !3, line: 398, type: !395, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !270}
!397 = !{!393, !398, !399, !400, !401}
!398 = !DILocalVariable(name: "a", scope: !394, file: !3, line: 400, type: !25)
!399 = !DILocalVariable(name: "r", scope: !394, file: !3, line: 400, type: !25)
!400 = !DILocalVariable(name: "sp", scope: !394, file: !3, line: 401, type: !40)
!401 = !DILocalVariable(name: "res", scope: !394, file: !3, line: 402, type: !57)
!402 = !DILocation(line: 0, scope: !394, inlinedAt: !403)
!403 = distinct !DILocation(line: 103, column: 3, scope: !404)
!404 = distinct !DILexicalBlock(scope: !391, file: !3, line: 102, column: 19)
!405 = !DILocation(line: 404, column: 2, scope: !406, inlinedAt: !403)
!406 = distinct !DILexicalBlock(scope: !394, file: !3, line: 404, column: 2)
!407 = !DILocation(line: 405, column: 7, scope: !408, inlinedAt: !403)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 404, column: 49)
!409 = distinct !DILexicalBlock(scope: !406, file: !3, line: 404, column: 2)
!410 = !DILocation(line: 405, column: 14, scope: !408, inlinedAt: !403)
!411 = !DILocation(line: 406, column: 23, scope: !412, inlinedAt: !403)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 406, column: 3)
!413 = distinct !DILexicalBlock(scope: !408, file: !3, line: 406, column: 3)
!414 = !DILocation(line: 406, column: 17, scope: !412, inlinedAt: !403)
!415 = !DILocation(line: 406, column: 3, scope: !413, inlinedAt: !403)
!416 = !DILocation(line: 0, scope: !417, inlinedAt: !403)
!417 = distinct !DILexicalBlock(scope: !412, file: !3, line: 406, column: 41)
!418 = !DILocation(line: 407, column: 10, scope: !417, inlinedAt: !403)
!419 = !DILocation(line: 408, column: 9, scope: !417, inlinedAt: !403)
!420 = !DILocation(line: 408, column: 16, scope: !417, inlinedAt: !403)
!421 = !DILocation(line: 409, column: 25, scope: !422, inlinedAt: !403)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 409, column: 4)
!423 = distinct !DILexicalBlock(scope: !417, file: !3, line: 409, column: 4)
!424 = !DILocation(line: 409, column: 18, scope: !422, inlinedAt: !403)
!425 = !DILocation(line: 409, column: 4, scope: !423, inlinedAt: !403)
!426 = !DILocation(line: 0, scope: !422, inlinedAt: !403)
!427 = !DILocation(line: 410, column: 23, scope: !422, inlinedAt: !403)
!428 = !DILocation(line: 410, column: 30, scope: !422, inlinedAt: !403)
!429 = !DILocation(line: 409, column: 36, scope: !422, inlinedAt: !403)
!430 = distinct !{!430, !425, !431}
!431 = !DILocation(line: 410, column: 33, scope: !423, inlinedAt: !403)
!432 = !DILocation(line: 406, column: 37, scope: !412, inlinedAt: !403)
!433 = distinct !{!433, !415, !434}
!434 = !DILocation(line: 411, column: 3, scope: !413, inlinedAt: !403)
!435 = !DILocation(line: 404, column: 41, scope: !409, inlinedAt: !403)
!436 = !DILocation(line: 0, scope: !406, inlinedAt: !403)
!437 = distinct !{!437, !405, !438}
!438 = !DILocation(line: 412, column: 2, scope: !406, inlinedAt: !403)
!439 = !DILocalVariable(name: "mol", arg: 1, scope: !440, file: !3, line: 432, type: !270)
!440 = distinct !DISubprogram(name: "clear_work", scope: !3, file: !3, line: 432, type: !395, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!441 = !{!439, !442, !443, !444, !445}
!442 = !DILocalVariable(name: "a", scope: !440, file: !3, line: 434, type: !25)
!443 = !DILocalVariable(name: "r", scope: !440, file: !3, line: 434, type: !25)
!444 = !DILocalVariable(name: "sp", scope: !440, file: !3, line: 435, type: !40)
!445 = !DILocalVariable(name: "res", scope: !440, file: !3, line: 436, type: !57)
!446 = !DILocation(line: 0, scope: !440, inlinedAt: !447)
!447 = distinct !DILocation(line: 107, column: 2, scope: !380)
!448 = !DILocation(line: 438, column: 2, scope: !449, inlinedAt: !447)
!449 = distinct !DILexicalBlock(scope: !440, file: !3, line: 438, column: 2)
!450 = !DILocation(line: 439, column: 7, scope: !451, inlinedAt: !447)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 438, column: 49)
!452 = distinct !DILexicalBlock(scope: !449, file: !3, line: 438, column: 2)
!453 = !DILocation(line: 439, column: 14, scope: !451, inlinedAt: !447)
!454 = !DILocation(line: 440, column: 23, scope: !455, inlinedAt: !447)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 440, column: 3)
!456 = distinct !DILexicalBlock(scope: !451, file: !3, line: 440, column: 3)
!457 = !DILocation(line: 440, column: 17, scope: !455, inlinedAt: !447)
!458 = !DILocation(line: 440, column: 3, scope: !456, inlinedAt: !447)
!459 = !DILocation(line: 0, scope: !460, inlinedAt: !447)
!460 = distinct !DILexicalBlock(scope: !455, file: !3, line: 440, column: 41)
!461 = !DILocation(line: 441, column: 10, scope: !460, inlinedAt: !447)
!462 = !DILocation(line: 442, column: 9, scope: !460, inlinedAt: !447)
!463 = !DILocation(line: 442, column: 16, scope: !460, inlinedAt: !447)
!464 = !DILocation(line: 443, column: 25, scope: !465, inlinedAt: !447)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 443, column: 4)
!466 = distinct !DILexicalBlock(scope: !460, file: !3, line: 443, column: 4)
!467 = !DILocation(line: 443, column: 18, scope: !465, inlinedAt: !447)
!468 = !DILocation(line: 443, column: 4, scope: !466, inlinedAt: !447)
!469 = !DILocation(line: 0, scope: !465, inlinedAt: !447)
!470 = !DILocation(line: 444, column: 23, scope: !465, inlinedAt: !447)
!471 = !DILocation(line: 444, column: 30, scope: !465, inlinedAt: !447)
!472 = !DILocation(line: 443, column: 36, scope: !465, inlinedAt: !447)
!473 = distinct !{!473, !468, !474}
!474 = !DILocation(line: 444, column: 34, scope: !466, inlinedAt: !447)
!475 = !DILocation(line: 440, column: 37, scope: !455, inlinedAt: !447)
!476 = distinct !{!476, !458, !477}
!477 = !DILocation(line: 445, column: 3, scope: !456, inlinedAt: !447)
!478 = !DILocation(line: 438, column: 41, scope: !452, inlinedAt: !447)
!479 = !DILocation(line: 0, scope: !449, inlinedAt: !447)
!480 = distinct !{!480, !448, !481}
!481 = !DILocation(line: 446, column: 2, scope: !449, inlinedAt: !447)
!482 = !DILocation(line: 422, column: 7, scope: !483, inlinedAt: !493)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 421, column: 49)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 421, column: 2)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 421, column: 2)
!486 = distinct !DISubprogram(name: "clear_select", scope: !3, file: !3, line: 415, type: !395, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !487)
!487 = !{!488, !489, !490, !491, !492}
!488 = !DILocalVariable(name: "mol", arg: 1, scope: !486, file: !3, line: 415, type: !270)
!489 = !DILocalVariable(name: "a", scope: !486, file: !3, line: 417, type: !25)
!490 = !DILocalVariable(name: "r", scope: !486, file: !3, line: 417, type: !25)
!491 = !DILocalVariable(name: "sp", scope: !486, file: !3, line: 418, type: !40)
!492 = !DILocalVariable(name: "res", scope: !486, file: !3, line: 419, type: !57)
!493 = distinct !DILocation(line: 108, column: 2, scope: !380)
!494 = !DILocation(line: 422, column: 14, scope: !483, inlinedAt: !493)
!495 = !DILocation(line: 0, scope: !486, inlinedAt: !493)
!496 = !DILocation(line: 423, column: 23, scope: !497, inlinedAt: !493)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 423, column: 3)
!498 = distinct !DILexicalBlock(scope: !483, file: !3, line: 423, column: 3)
!499 = !DILocation(line: 423, column: 17, scope: !497, inlinedAt: !493)
!500 = !DILocation(line: 423, column: 3, scope: !498, inlinedAt: !493)
!501 = !DILocation(line: 0, scope: !502, inlinedAt: !493)
!502 = distinct !DILexicalBlock(scope: !497, file: !3, line: 423, column: 41)
!503 = !DILocation(line: 424, column: 10, scope: !502, inlinedAt: !493)
!504 = !DILocation(line: 425, column: 9, scope: !502, inlinedAt: !493)
!505 = !DILocation(line: 425, column: 16, scope: !502, inlinedAt: !493)
!506 = !DILocation(line: 426, column: 25, scope: !507, inlinedAt: !493)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 426, column: 4)
!508 = distinct !DILexicalBlock(scope: !502, file: !3, line: 426, column: 4)
!509 = !DILocation(line: 426, column: 18, scope: !507, inlinedAt: !493)
!510 = !DILocation(line: 426, column: 4, scope: !508, inlinedAt: !493)
!511 = !DILocation(line: 0, scope: !507, inlinedAt: !493)
!512 = !DILocation(line: 427, column: 23, scope: !507, inlinedAt: !493)
!513 = !DILocation(line: 427, column: 30, scope: !507, inlinedAt: !493)
!514 = !DILocation(line: 426, column: 36, scope: !507, inlinedAt: !493)
!515 = distinct !{!515, !510, !516}
!516 = !DILocation(line: 427, column: 34, scope: !508, inlinedAt: !493)
!517 = !DILocation(line: 423, column: 37, scope: !497, inlinedAt: !493)
!518 = distinct !{!518, !500, !519}
!519 = !DILocation(line: 428, column: 3, scope: !498, inlinedAt: !493)
!520 = !DILocation(line: 421, column: 41, scope: !484, inlinedAt: !493)
!521 = !DILocation(line: 0, scope: !485, inlinedAt: !493)
!522 = !DILocation(line: 421, column: 2, scope: !485, inlinedAt: !493)
!523 = distinct !{!523, !522, !524}
!524 = !DILocation(line: 429, column: 2, scope: !485, inlinedAt: !493)
!525 = !DILocation(line: 110, column: 26, scope: !526)
!526 = distinct !DILexicalBlock(scope: !380, file: !3, line: 110, column: 2)
!527 = !DILocation(line: 0, scope: !528, inlinedAt: !536)
!528 = distinct !DISubprogram(name: "eval_1_aexpr", scope: !3, file: !3, line: 204, type: !381, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !529)
!529 = !{!530, !531, !532, !533, !534, !535}
!530 = !DILocalVariable(name: "mol", arg: 1, scope: !528, file: !3, line: 204, type: !270)
!531 = !DILocalVariable(name: "aex", arg: 2, scope: !528, file: !3, line: 204, type: !238)
!532 = !DILocalVariable(name: "aep", scope: !528, file: !3, line: 206, type: !238)
!533 = !DILocalVariable(name: "wp", scope: !528, file: !3, line: 207, type: !238)
!534 = !DILocalVariable(name: "lo", scope: !528, file: !3, line: 208, type: !25)
!535 = !DILocalVariable(name: "hi", scope: !528, file: !3, line: 208, type: !25)
!536 = distinct !DILocation(line: 123, column: 3, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 110, column: 52)
!538 = distinct !DILexicalBlock(scope: !526, file: !3, line: 110, column: 2)
!539 = !DILocation(line: 0, scope: !540, inlinedAt: !549)
!540 = distinct !DISubprogram(name: "match_str_range", scope: !3, file: !3, line: 529, type: !541, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !270, !25, !25}
!543 = !{!544, !545, !546, !547, !548}
!544 = !DILocalVariable(name: "mol", arg: 1, scope: !540, file: !3, line: 529, type: !270)
!545 = !DILocalVariable(name: "lo", arg: 2, scope: !540, file: !3, line: 529, type: !25)
!546 = !DILocalVariable(name: "hi", arg: 3, scope: !540, file: !3, line: 529, type: !25)
!547 = !DILocalVariable(name: "m", scope: !540, file: !3, line: 531, type: !25)
!548 = !DILocalVariable(name: "sp", scope: !540, file: !3, line: 532, type: !40)
!549 = distinct !DILocation(line: 232, column: 4, scope: !550, inlinedAt: !536)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 229, column: 7)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 227, column: 13)
!552 = distinct !DILexicalBlock(scope: !528, file: !3, line: 227, column: 6)
!553 = !DILocation(line: 110, column: 2, scope: !526)
!554 = !DILocation(line: 111, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !537, file: !3, line: 111, column: 7)
!556 = !DILocation(line: 111, column: 7, scope: !537)
!557 = !DILocation(line: 112, column: 16, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !3, line: 111, column: 14)
!559 = !DILocation(line: 113, column: 9, scope: !558)
!560 = !DILocation(line: 114, column: 3, scope: !558)
!561 = !DILocation(line: 115, column: 10, scope: !555)
!562 = !DILocation(line: 0, scope: !526)
!563 = !DILocation(line: 0, scope: !555)
!564 = !DILocation(line: 116, column: 11, scope: !565)
!565 = distinct !DILexicalBlock(scope: !537, file: !3, line: 116, column: 7)
!566 = !DILocation(line: 116, column: 7, scope: !537)
!567 = !DILocation(line: 117, column: 13, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !3, line: 116, column: 26)
!569 = !DILocation(line: 117, column: 4, scope: !568)
!570 = !DILocation(line: 119, column: 4, scope: !568)
!571 = !DILocation(line: 121, column: 24, scope: !537)
!572 = !DILocation(line: 121, column: 3, scope: !537)
!573 = !DILocation(line: 122, column: 3, scope: !537)
!574 = !DILocation(line: 122, column: 16, scope: !537)
!575 = !{!292, !292, i64 0}
!576 = !DILocation(line: 208, column: 2, scope: !528, inlinedAt: !536)
!577 = !DILocation(line: 211, column: 6, scope: !578, inlinedAt: !536)
!578 = distinct !DILexicalBlock(scope: !528, file: !3, line: 211, column: 6)
!579 = !DILocation(line: 211, column: 11, scope: !578, inlinedAt: !536)
!580 = !DILocation(line: 211, column: 6, scope: !528, inlinedAt: !536)
!581 = !DILocation(line: 212, column: 9, scope: !582, inlinedAt: !536)
!582 = distinct !DILexicalBlock(scope: !578, file: !3, line: 211, column: 19)
!583 = !DILocation(line: 214, column: 2, scope: !582, inlinedAt: !536)
!584 = !DILocation(line: 215, column: 11, scope: !585, inlinedAt: !536)
!585 = distinct !DILexicalBlock(scope: !578, file: !3, line: 214, column: 7)
!586 = !DILocation(line: 215, column: 9, scope: !585, inlinedAt: !536)
!587 = !DILocation(line: 216, column: 10, scope: !585, inlinedAt: !536)
!588 = !DILocation(line: 216, column: 26, scope: !585, inlinedAt: !536)
!589 = !DILocation(line: 216, column: 7, scope: !585, inlinedAt: !536)
!590 = !DILocation(line: 0, scope: !578, inlinedAt: !536)
!591 = !DILocation(line: 218, column: 6, scope: !592, inlinedAt: !536)
!592 = distinct !DILexicalBlock(scope: !528, file: !3, line: 218, column: 6)
!593 = !DILocation(line: 218, column: 11, scope: !592, inlinedAt: !536)
!594 = !DILocation(line: 218, column: 6, scope: !528, inlinedAt: !536)
!595 = !DILocation(line: 219, column: 9, scope: !596, inlinedAt: !536)
!596 = distinct !DILexicalBlock(scope: !592, file: !3, line: 218, column: 19)
!597 = !DILocation(line: 221, column: 2, scope: !596, inlinedAt: !536)
!598 = !DILocation(line: 222, column: 11, scope: !599, inlinedAt: !536)
!599 = distinct !DILexicalBlock(scope: !592, file: !3, line: 221, column: 7)
!600 = !DILocation(line: 222, column: 9, scope: !599, inlinedAt: !536)
!601 = !DILocation(line: 223, column: 10, scope: !599, inlinedAt: !536)
!602 = !DILocation(line: 223, column: 26, scope: !599, inlinedAt: !536)
!603 = !DILocation(line: 0, scope: !592, inlinedAt: !536)
!604 = !DILocation(line: 225, column: 10, scope: !528, inlinedAt: !536)
!605 = !DILocation(line: 225, column: 8, scope: !528, inlinedAt: !536)
!606 = !DILocation(line: 227, column: 6, scope: !552, inlinedAt: !536)
!607 = !DILocation(line: 227, column: 6, scope: !528, inlinedAt: !536)
!608 = !DILocation(line: 228, column: 8, scope: !551, inlinedAt: !536)
!609 = !DILocation(line: 229, column: 7, scope: !550, inlinedAt: !536)
!610 = !DILocation(line: 229, column: 7, scope: !551, inlinedAt: !536)
!611 = !DILocalVariable(name: "mol", arg: 1, scope: !612, file: !3, line: 493, type: !270)
!612 = distinct !DISubprogram(name: "match_str_pat", scope: !3, file: !3, line: 493, type: !613, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !270, !238}
!615 = !{!611, !616, !617}
!616 = !DILocalVariable(name: "pat", arg: 2, scope: !612, file: !3, line: 493, type: !238)
!617 = !DILocalVariable(name: "sp", scope: !612, file: !3, line: 495, type: !40)
!618 = !DILocation(line: 0, scope: !612, inlinedAt: !619)
!619 = distinct !DILocation(line: 230, column: 4, scope: !550, inlinedAt: !536)
!620 = !DILocalVariable(name: "aexpr", arg: 1, scope: !621, file: !3, line: 695, type: !238)
!621 = distinct !DISubprogram(name: "aexpr2rexpr", scope: !3, file: !3, line: 695, type: !622, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !238, !238}
!624 = !{!620, !625, !626, !627}
!625 = !DILocalVariable(name: "rexpr", arg: 2, scope: !621, file: !3, line: 695, type: !238)
!626 = !DILocalVariable(name: "aep", scope: !621, file: !3, line: 697, type: !238)
!627 = !DILocalVariable(name: "rep", scope: !621, file: !3, line: 697, type: !238)
!628 = !DILocation(line: 0, scope: !621, inlinedAt: !629)
!629 = distinct !DILocation(line: 497, column: 2, scope: !612, inlinedAt: !619)
!630 = !DILocation(line: 700, column: 9, scope: !621, inlinedAt: !629)
!631 = !DILocation(line: 701, column: 7, scope: !632, inlinedAt: !629)
!632 = distinct !DILexicalBlock(scope: !621, file: !3, line: 701, column: 2)
!633 = !DILocation(line: 0, scope: !632, inlinedAt: !629)
!634 = !DILocation(line: 701, column: 20, scope: !635, inlinedAt: !629)
!635 = distinct !DILexicalBlock(scope: !632, file: !3, line: 701, column: 2)
!636 = !DILocation(line: 701, column: 2, scope: !632, inlinedAt: !629)
!637 = !DILocation(line: 703, column: 8, scope: !638, inlinedAt: !629)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 702, column: 20)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 702, column: 7)
!640 = distinct !DILexicalBlock(scope: !635, file: !3, line: 701, column: 33)
!641 = !DILocation(line: 703, column: 11, scope: !638, inlinedAt: !629)
!642 = !DILocation(line: 704, column: 8, scope: !638, inlinedAt: !629)
!643 = !DILocation(line: 704, column: 11, scope: !638, inlinedAt: !629)
!644 = !DILocation(line: 705, column: 3, scope: !638, inlinedAt: !629)
!645 = !DILocation(line: 706, column: 8, scope: !646, inlinedAt: !629)
!646 = distinct !DILexicalBlock(scope: !639, file: !3, line: 705, column: 13)
!647 = !DILocation(line: 706, column: 11, scope: !646, inlinedAt: !629)
!648 = !DILocation(line: 706, column: 4, scope: !646, inlinedAt: !629)
!649 = !DILocation(line: 708, column: 8, scope: !646, inlinedAt: !629)
!650 = !DILocation(line: 708, column: 11, scope: !646, inlinedAt: !629)
!651 = !DILocation(line: 0, scope: !639, inlinedAt: !629)
!652 = !DILocation(line: 701, column: 29, scope: !635, inlinedAt: !629)
!653 = !DILocation(line: 701, column: 2, scope: !635, inlinedAt: !629)
!654 = distinct !{!654, !636, !655}
!655 = !DILocation(line: 709, column: 2, scope: !632, inlinedAt: !629)
!656 = !DILocation(line: 710, column: 6, scope: !621, inlinedAt: !629)
!657 = !DILocation(line: 710, column: 9, scope: !621, inlinedAt: !629)
!658 = !DILocation(line: 711, column: 7, scope: !621, inlinedAt: !629)
!659 = !DILocation(line: 501, column: 2, scope: !612, inlinedAt: !619)
!660 = !DILocation(line: 0, scope: !661, inlinedAt: !619)
!661 = distinct !DILexicalBlock(scope: !612, file: !3, line: 503, column: 2)
!662 = !DILocation(line: 503, column: 2, scope: !661, inlinedAt: !619)
!663 = !DILocation(line: 507, column: 27, scope: !664, inlinedAt: !619)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 503, column: 49)
!665 = distinct !DILexicalBlock(scope: !661, file: !3, line: 503, column: 2)
!666 = !{!300, !291, i64 0}
!667 = !DILocation(line: 507, column: 17, scope: !664, inlinedAt: !619)
!668 = !DILocation(line: 507, column: 7, scope: !664, inlinedAt: !619)
!669 = !DILocation(line: 507, column: 14, scope: !664, inlinedAt: !619)
!670 = !DILocation(line: 503, column: 41, scope: !665, inlinedAt: !619)
!671 = distinct !{!671, !662, !672}
!672 = !DILocation(line: 509, column: 2, scope: !661, inlinedAt: !619)
!673 = !DILocation(line: 232, column: 26, scope: !550, inlinedAt: !536)
!674 = !{!301, !301, i64 0}
!675 = !DILocation(line: 232, column: 30, scope: !550, inlinedAt: !536)
!676 = !DILocation(line: 534, column: 9, scope: !677, inlinedAt: !549)
!677 = distinct !DILexicalBlock(scope: !540, file: !3, line: 534, column: 6)
!678 = !{!679, !301, i64 96}
!679 = !{!"molecule_t", !292, i64 0, !301, i64 96, !291, i64 104, !301, i64 112, !301, i64 116, !301, i64 120, !291, i64 128}
!680 = !DILocation(line: 536, column: 37, scope: !681, inlinedAt: !549)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 536, column: 2)
!682 = distinct !DILexicalBlock(scope: !540, file: !3, line: 536, column: 2)
!683 = !DILocation(line: 536, column: 2, scope: !682, inlinedAt: !549)
!684 = !DILocation(line: 0, scope: !682, inlinedAt: !549)
!685 = !DILocation(line: 538, column: 10, scope: !686, inlinedAt: !549)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 538, column: 7)
!687 = distinct !DILexicalBlock(scope: !681, file: !3, line: 537, column: 25)
!688 = !DILocation(line: 538, column: 20, scope: !686, inlinedAt: !549)
!689 = !DILocation(line: 538, column: 15, scope: !686, inlinedAt: !549)
!690 = !DILocation(line: 539, column: 8, scope: !686, inlinedAt: !549)
!691 = !DILocation(line: 539, column: 15, scope: !686, inlinedAt: !549)
!692 = !DILocation(line: 539, column: 4, scope: !686, inlinedAt: !549)
!693 = !DILocation(line: 537, column: 4, scope: !681, inlinedAt: !549)
!694 = !DILocation(line: 537, column: 17, scope: !681, inlinedAt: !549)
!695 = distinct !{!695, !683, !696}
!696 = !DILocation(line: 540, column: 2, scope: !682, inlinedAt: !549)
!697 = !DILocation(line: 233, column: 16, scope: !551, inlinedAt: !536)
!698 = !DILocation(line: 233, column: 3, scope: !551, inlinedAt: !536)
!699 = !DILocation(line: 234, column: 8, scope: !700, inlinedAt: !536)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 234, column: 8)
!701 = distinct !DILexicalBlock(scope: !551, file: !3, line: 233, column: 38)
!702 = !DILocation(line: 234, column: 8, scope: !701, inlinedAt: !536)
!703 = !DILocation(line: 0, scope: !612, inlinedAt: !704)
!704 = distinct !DILocation(line: 235, column: 5, scope: !700, inlinedAt: !536)
!705 = !DILocation(line: 0, scope: !621, inlinedAt: !706)
!706 = distinct !DILocation(line: 497, column: 2, scope: !612, inlinedAt: !704)
!707 = !DILocation(line: 700, column: 9, scope: !621, inlinedAt: !706)
!708 = !DILocation(line: 701, column: 7, scope: !632, inlinedAt: !706)
!709 = !DILocation(line: 0, scope: !632, inlinedAt: !706)
!710 = !DILocation(line: 701, column: 20, scope: !635, inlinedAt: !706)
!711 = !DILocation(line: 701, column: 2, scope: !632, inlinedAt: !706)
!712 = !DILocation(line: 703, column: 8, scope: !638, inlinedAt: !706)
!713 = !DILocation(line: 703, column: 11, scope: !638, inlinedAt: !706)
!714 = !DILocation(line: 704, column: 8, scope: !638, inlinedAt: !706)
!715 = !DILocation(line: 704, column: 11, scope: !638, inlinedAt: !706)
!716 = !DILocation(line: 705, column: 3, scope: !638, inlinedAt: !706)
!717 = !DILocation(line: 706, column: 8, scope: !646, inlinedAt: !706)
!718 = !DILocation(line: 706, column: 11, scope: !646, inlinedAt: !706)
!719 = !DILocation(line: 706, column: 4, scope: !646, inlinedAt: !706)
!720 = !DILocation(line: 708, column: 8, scope: !646, inlinedAt: !706)
!721 = !DILocation(line: 708, column: 11, scope: !646, inlinedAt: !706)
!722 = !DILocation(line: 0, scope: !639, inlinedAt: !706)
!723 = !DILocation(line: 701, column: 29, scope: !635, inlinedAt: !706)
!724 = !DILocation(line: 701, column: 2, scope: !635, inlinedAt: !706)
!725 = distinct !{!725, !711, !726}
!726 = !DILocation(line: 709, column: 2, scope: !632, inlinedAt: !706)
!727 = !DILocation(line: 710, column: 6, scope: !621, inlinedAt: !706)
!728 = !DILocation(line: 710, column: 9, scope: !621, inlinedAt: !706)
!729 = !DILocation(line: 711, column: 7, scope: !621, inlinedAt: !706)
!730 = !DILocation(line: 501, column: 2, scope: !612, inlinedAt: !704)
!731 = !DILocation(line: 0, scope: !661, inlinedAt: !704)
!732 = !DILocation(line: 503, column: 2, scope: !661, inlinedAt: !704)
!733 = !DILocation(line: 507, column: 27, scope: !664, inlinedAt: !704)
!734 = !DILocation(line: 507, column: 17, scope: !664, inlinedAt: !704)
!735 = !DILocation(line: 507, column: 7, scope: !664, inlinedAt: !704)
!736 = !DILocation(line: 507, column: 14, scope: !664, inlinedAt: !704)
!737 = !DILocation(line: 503, column: 41, scope: !665, inlinedAt: !704)
!738 = distinct !{!738, !732, !739}
!739 = !DILocation(line: 509, column: 2, scope: !661, inlinedAt: !704)
!740 = !DILocation(line: 237, column: 27, scope: !700, inlinedAt: !536)
!741 = !DILocation(line: 237, column: 31, scope: !700, inlinedAt: !536)
!742 = !DILocation(line: 0, scope: !540, inlinedAt: !743)
!743 = distinct !DILocation(line: 237, column: 5, scope: !700, inlinedAt: !536)
!744 = !DILocation(line: 534, column: 9, scope: !677, inlinedAt: !743)
!745 = !DILocation(line: 536, column: 37, scope: !681, inlinedAt: !743)
!746 = !DILocation(line: 536, column: 2, scope: !682, inlinedAt: !743)
!747 = !DILocation(line: 0, scope: !682, inlinedAt: !743)
!748 = !DILocation(line: 538, column: 10, scope: !686, inlinedAt: !743)
!749 = !DILocation(line: 538, column: 20, scope: !686, inlinedAt: !743)
!750 = !DILocation(line: 538, column: 15, scope: !686, inlinedAt: !743)
!751 = !DILocation(line: 539, column: 8, scope: !686, inlinedAt: !743)
!752 = !DILocation(line: 539, column: 15, scope: !686, inlinedAt: !743)
!753 = !DILocation(line: 539, column: 4, scope: !686, inlinedAt: !743)
!754 = !DILocation(line: 537, column: 4, scope: !681, inlinedAt: !743)
!755 = !DILocation(line: 537, column: 17, scope: !681, inlinedAt: !743)
!756 = distinct !{!756, !746, !757}
!757 = !DILocation(line: 540, column: 2, scope: !682, inlinedAt: !743)
!758 = distinct !{!758, !698, !759}
!759 = !DILocation(line: 238, column: 3, scope: !551, inlinedAt: !536)
!760 = !DILocation(line: 0, scope: !540, inlinedAt: !761)
!761 = distinct !DILocation(line: 240, column: 3, scope: !552, inlinedAt: !536)
!762 = !DILocation(line: 536, column: 37, scope: !681, inlinedAt: !761)
!763 = !DILocation(line: 536, column: 2, scope: !682, inlinedAt: !761)
!764 = !DILocation(line: 0, scope: !682, inlinedAt: !761)
!765 = !DILocation(line: 539, column: 8, scope: !686, inlinedAt: !761)
!766 = !DILocation(line: 539, column: 15, scope: !686, inlinedAt: !761)
!767 = !DILocation(line: 537, column: 4, scope: !681, inlinedAt: !761)
!768 = !DILocation(line: 537, column: 17, scope: !681, inlinedAt: !761)
!769 = distinct !{!769, !763, !770}
!770 = !DILocation(line: 540, column: 2, scope: !682, inlinedAt: !761)
!771 = !DILocation(line: 242, column: 6, scope: !772, inlinedAt: !536)
!772 = distinct !DILexicalBlock(scope: !528, file: !3, line: 242, column: 6)
!773 = !DILocation(line: 242, column: 6, scope: !528, inlinedAt: !536)
!774 = !DILocation(line: 243, column: 8, scope: !775, inlinedAt: !536)
!775 = distinct !DILexicalBlock(scope: !772, file: !3, line: 242, column: 13)
!776 = !DILocation(line: 244, column: 7, scope: !777, inlinedAt: !536)
!777 = distinct !DILexicalBlock(scope: !775, file: !3, line: 244, column: 7)
!778 = !DILocation(line: 244, column: 7, scope: !775, inlinedAt: !536)
!779 = !DILocation(line: 245, column: 4, scope: !777, inlinedAt: !536)
!780 = !DILocation(line: 247, column: 26, scope: !777, inlinedAt: !536)
!781 = !DILocation(line: 247, column: 30, scope: !777, inlinedAt: !536)
!782 = !DILocalVariable(name: "mol", arg: 1, scope: !783, file: !3, line: 608, type: !270)
!783 = distinct !DISubprogram(name: "match_res_range", scope: !3, file: !3, line: 608, type: !541, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!784 = !{!782, !785, !786, !787, !788, !789, !790}
!785 = !DILocalVariable(name: "lo", arg: 2, scope: !783, file: !3, line: 608, type: !25)
!786 = !DILocalVariable(name: "hi", arg: 3, scope: !783, file: !3, line: 608, type: !25)
!787 = !DILocalVariable(name: "r", scope: !783, file: !3, line: 610, type: !25)
!788 = !DILocalVariable(name: "rhi", scope: !783, file: !3, line: 610, type: !25)
!789 = !DILocalVariable(name: "sp", scope: !783, file: !3, line: 611, type: !40)
!790 = !DILocalVariable(name: "res", scope: !783, file: !3, line: 612, type: !57)
!791 = !DILocation(line: 0, scope: !783, inlinedAt: !792)
!792 = distinct !DILocation(line: 247, column: 4, scope: !777, inlinedAt: !536)
!793 = !DILocation(line: 0, scope: !794, inlinedAt: !792)
!794 = distinct !DILexicalBlock(scope: !783, file: !3, line: 614, column: 2)
!795 = !DILocation(line: 614, column: 2, scope: !794, inlinedAt: !792)
!796 = !DILocation(line: 0, scope: !797, inlinedAt: !792)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 615, column: 31)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 615, column: 7)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 614, column: 49)
!800 = distinct !DILexicalBlock(scope: !794, file: !3, line: 614, column: 2)
!801 = !DILocation(line: 615, column: 23, scope: !798, inlinedAt: !792)
!802 = !DILocation(line: 615, column: 17, scope: !798, inlinedAt: !792)
!803 = !DILocation(line: 615, column: 7, scope: !799, inlinedAt: !792)
!804 = !DILocation(line: 616, column: 32, scope: !797, inlinedAt: !792)
!805 = !DILocation(line: 617, column: 18, scope: !806, inlinedAt: !792)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 617, column: 4)
!807 = distinct !DILexicalBlock(scope: !797, file: !3, line: 617, column: 4)
!808 = !DILocation(line: 617, column: 4, scope: !807, inlinedAt: !792)
!809 = !DILocation(line: 619, column: 17, scope: !810, inlinedAt: !792)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 619, column: 9)
!811 = distinct !DILexicalBlock(scope: !806, file: !3, line: 617, column: 42)
!812 = !DILocation(line: 619, column: 12, scope: !810, inlinedAt: !792)
!813 = !DILocation(line: 619, column: 21, scope: !810, inlinedAt: !792)
!814 = !DILocation(line: 618, column: 15, scope: !811, inlinedAt: !792)
!815 = !DILocation(line: 618, column: 11, scope: !811, inlinedAt: !792)
!816 = !DILocation(line: 620, column: 11, scope: !810, inlinedAt: !792)
!817 = !DILocation(line: 620, column: 18, scope: !810, inlinedAt: !792)
!818 = !DILocation(line: 620, column: 6, scope: !810, inlinedAt: !792)
!819 = distinct !{!819, !808, !820}
!820 = !DILocation(line: 621, column: 4, scope: !807, inlinedAt: !792)
!821 = !DILocation(line: 614, column: 41, scope: !800, inlinedAt: !792)
!822 = distinct !{!822, !795, !823}
!823 = !DILocation(line: 623, column: 2, scope: !794, inlinedAt: !792)
!824 = !DILocation(line: 0, scope: !811, inlinedAt: !792)
!825 = !DILocation(line: 617, column: 24, scope: !806, inlinedAt: !792)
!826 = !DILocation(line: 619, column: 30, scope: !810, inlinedAt: !792)
!827 = distinct !{!827, !808, !820}
!828 = distinct !{!828, !795, !823}
!829 = !DILocation(line: 248, column: 16, scope: !775, inlinedAt: !536)
!830 = !DILocation(line: 248, column: 3, scope: !775, inlinedAt: !536)
!831 = !DILocation(line: 249, column: 8, scope: !832, inlinedAt: !536)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 249, column: 8)
!833 = distinct !DILexicalBlock(scope: !775, file: !3, line: 248, column: 38)
!834 = !DILocation(line: 249, column: 8, scope: !833, inlinedAt: !536)
!835 = !DILocation(line: 250, column: 5, scope: !832, inlinedAt: !536)
!836 = !DILocation(line: 252, column: 27, scope: !832, inlinedAt: !536)
!837 = !DILocation(line: 252, column: 31, scope: !832, inlinedAt: !536)
!838 = !DILocation(line: 0, scope: !783, inlinedAt: !839)
!839 = distinct !DILocation(line: 252, column: 5, scope: !832, inlinedAt: !536)
!840 = !DILocation(line: 0, scope: !794, inlinedAt: !839)
!841 = !DILocation(line: 614, column: 2, scope: !794, inlinedAt: !839)
!842 = !DILocation(line: 0, scope: !797, inlinedAt: !839)
!843 = !DILocation(line: 615, column: 23, scope: !798, inlinedAt: !839)
!844 = !DILocation(line: 615, column: 17, scope: !798, inlinedAt: !839)
!845 = !DILocation(line: 615, column: 7, scope: !799, inlinedAt: !839)
!846 = !DILocation(line: 616, column: 32, scope: !797, inlinedAt: !839)
!847 = !DILocation(line: 617, column: 18, scope: !806, inlinedAt: !839)
!848 = !DILocation(line: 617, column: 4, scope: !807, inlinedAt: !839)
!849 = !DILocation(line: 619, column: 17, scope: !810, inlinedAt: !839)
!850 = !DILocation(line: 619, column: 12, scope: !810, inlinedAt: !839)
!851 = !DILocation(line: 619, column: 21, scope: !810, inlinedAt: !839)
!852 = !DILocation(line: 618, column: 15, scope: !811, inlinedAt: !839)
!853 = !DILocation(line: 618, column: 11, scope: !811, inlinedAt: !839)
!854 = !DILocation(line: 620, column: 11, scope: !810, inlinedAt: !839)
!855 = !DILocation(line: 620, column: 18, scope: !810, inlinedAt: !839)
!856 = !DILocation(line: 620, column: 6, scope: !810, inlinedAt: !839)
!857 = distinct !{!857, !848, !858}
!858 = !DILocation(line: 621, column: 4, scope: !807, inlinedAt: !839)
!859 = !DILocation(line: 614, column: 41, scope: !800, inlinedAt: !839)
!860 = distinct !{!860, !841, !861}
!861 = !DILocation(line: 623, column: 2, scope: !794, inlinedAt: !839)
!862 = !DILocation(line: 0, scope: !811, inlinedAt: !839)
!863 = !DILocation(line: 617, column: 24, scope: !806, inlinedAt: !839)
!864 = !DILocation(line: 619, column: 30, scope: !810, inlinedAt: !839)
!865 = distinct !{!865, !848, !858}
!866 = distinct !{!866, !841, !861}
!867 = distinct !{!867, !830, !868}
!868 = !DILocation(line: 253, column: 3, scope: !775, inlinedAt: !536)
!869 = !DILocation(line: 0, scope: !783, inlinedAt: !870)
!870 = distinct !DILocation(line: 255, column: 3, scope: !772, inlinedAt: !536)
!871 = !DILocation(line: 0, scope: !794, inlinedAt: !870)
!872 = !DILocation(line: 614, column: 2, scope: !794, inlinedAt: !870)
!873 = !DILocation(line: 615, column: 23, scope: !798, inlinedAt: !870)
!874 = !DILocation(line: 615, column: 17, scope: !798, inlinedAt: !870)
!875 = !DILocation(line: 615, column: 7, scope: !799, inlinedAt: !870)
!876 = !DILocation(line: 616, column: 32, scope: !797, inlinedAt: !870)
!877 = !DILocation(line: 617, column: 18, scope: !806, inlinedAt: !870)
!878 = !DILocation(line: 617, column: 4, scope: !807, inlinedAt: !870)
!879 = !DILocation(line: 619, column: 17, scope: !810, inlinedAt: !870)
!880 = !DILocation(line: 618, column: 11, scope: !811, inlinedAt: !870)
!881 = !DILocation(line: 620, column: 11, scope: !810, inlinedAt: !870)
!882 = !DILocation(line: 620, column: 18, scope: !810, inlinedAt: !870)
!883 = distinct !{!883, !878, !884}
!884 = !DILocation(line: 621, column: 4, scope: !807, inlinedAt: !870)
!885 = !DILocation(line: 614, column: 41, scope: !800, inlinedAt: !870)
!886 = distinct !{!886, !872, !887}
!887 = !DILocation(line: 623, column: 2, scope: !794, inlinedAt: !870)
!888 = !DILocation(line: 0, scope: !811, inlinedAt: !870)
!889 = !DILocation(line: 257, column: 6, scope: !890, inlinedAt: !536)
!890 = distinct !DILexicalBlock(scope: !528, file: !3, line: 257, column: 6)
!891 = !DILocation(line: 257, column: 6, scope: !528, inlinedAt: !536)
!892 = !DILocation(line: 258, column: 8, scope: !893, inlinedAt: !536)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 257, column: 13)
!894 = !DILocation(line: 259, column: 7, scope: !895, inlinedAt: !536)
!895 = distinct !DILexicalBlock(scope: !893, file: !3, line: 259, column: 7)
!896 = !DILocation(line: 259, column: 7, scope: !893, inlinedAt: !536)
!897 = !DILocation(line: 260, column: 4, scope: !895, inlinedAt: !536)
!898 = !DILocation(line: 262, column: 13, scope: !899, inlinedAt: !536)
!899 = distinct !DILexicalBlock(scope: !895, file: !3, line: 261, column: 7)
!900 = !DILocation(line: 262, column: 4, scope: !899, inlinedAt: !536)
!901 = !DILocation(line: 264, column: 16, scope: !893, inlinedAt: !536)
!902 = !DILocation(line: 264, column: 3, scope: !893, inlinedAt: !536)
!903 = !DILocation(line: 265, column: 8, scope: !904, inlinedAt: !536)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 265, column: 8)
!905 = distinct !DILexicalBlock(scope: !893, file: !3, line: 264, column: 38)
!906 = !DILocation(line: 265, column: 8, scope: !905, inlinedAt: !536)
!907 = !DILocation(line: 266, column: 5, scope: !904, inlinedAt: !536)
!908 = !DILocation(line: 268, column: 14, scope: !909, inlinedAt: !536)
!909 = distinct !DILexicalBlock(scope: !904, file: !3, line: 267, column: 8)
!910 = !DILocation(line: 268, column: 5, scope: !909, inlinedAt: !536)
!911 = distinct !{!911, !902, !912}
!912 = !DILocation(line: 270, column: 3, scope: !893, inlinedAt: !536)
!913 = !DILocation(line: 272, column: 3, scope: !890, inlinedAt: !536)
!914 = !DILocation(line: 274, column: 1, scope: !528, inlinedAt: !536)
!915 = !DILocalVariable(name: "mol", arg: 1, scope: !916, file: !3, line: 449, type: !270)
!916 = distinct !DISubprogram(name: "or_select", scope: !3, file: !3, line: 449, type: !395, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!917 = !{!915, !918, !919, !920, !921, !922}
!918 = !DILocalVariable(name: "a", scope: !916, file: !3, line: 451, type: !25)
!919 = !DILocalVariable(name: "r", scope: !916, file: !3, line: 451, type: !25)
!920 = !DILocalVariable(name: "sp", scope: !916, file: !3, line: 452, type: !40)
!921 = !DILocalVariable(name: "res", scope: !916, file: !3, line: 453, type: !57)
!922 = !DILocalVariable(name: "ap", scope: !916, file: !3, line: 454, type: !103)
!923 = !DILocation(line: 0, scope: !916, inlinedAt: !924)
!924 = distinct !DILocation(line: 124, column: 3, scope: !537)
!925 = !DILocation(line: 0, scope: !926, inlinedAt: !924)
!926 = distinct !DILexicalBlock(scope: !916, file: !3, line: 456, column: 2)
!927 = !DILocation(line: 456, column: 2, scope: !926, inlinedAt: !924)
!928 = !DILocation(line: 457, column: 23, scope: !929, inlinedAt: !924)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 456, column: 49)
!930 = distinct !DILexicalBlock(scope: !926, file: !3, line: 456, column: 2)
!931 = !DILocation(line: 457, column: 17, scope: !929, inlinedAt: !924)
!932 = !DILocation(line: 457, column: 14, scope: !929, inlinedAt: !924)
!933 = !DILocation(line: 458, column: 23, scope: !934, inlinedAt: !924)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 458, column: 3)
!935 = distinct !DILexicalBlock(scope: !929, file: !3, line: 458, column: 3)
!936 = !DILocation(line: 458, column: 17, scope: !934, inlinedAt: !924)
!937 = !DILocation(line: 458, column: 3, scope: !935, inlinedAt: !924)
!938 = !DILocation(line: 0, scope: !939, inlinedAt: !924)
!939 = distinct !DILexicalBlock(scope: !934, file: !3, line: 458, column: 41)
!940 = !DILocation(line: 459, column: 10, scope: !939, inlinedAt: !924)
!941 = !DILocation(line: 460, column: 26, scope: !939, inlinedAt: !924)
!942 = !DILocation(line: 460, column: 19, scope: !939, inlinedAt: !924)
!943 = !DILocation(line: 460, column: 16, scope: !939, inlinedAt: !924)
!944 = !DILocation(line: 462, column: 25, scope: !945, inlinedAt: !924)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 462, column: 4)
!946 = distinct !DILexicalBlock(scope: !939, file: !3, line: 462, column: 4)
!947 = !DILocation(line: 462, column: 18, scope: !945, inlinedAt: !924)
!948 = !DILocation(line: 462, column: 4, scope: !946, inlinedAt: !924)
!949 = !DILocation(line: 0, scope: !950, inlinedAt: !924)
!950 = distinct !DILexicalBlock(scope: !945, file: !3, line: 462, column: 40)
!951 = !DILocation(line: 464, column: 25, scope: !950, inlinedAt: !924)
!952 = !DILocation(line: 464, column: 19, scope: !950, inlinedAt: !924)
!953 = !DILocation(line: 464, column: 16, scope: !950, inlinedAt: !924)
!954 = !DILocation(line: 462, column: 36, scope: !945, inlinedAt: !924)
!955 = distinct !{!955, !948, !956}
!956 = !DILocation(line: 466, column: 4, scope: !946, inlinedAt: !924)
!957 = !DILocation(line: 458, column: 37, scope: !934, inlinedAt: !924)
!958 = distinct !{!958, !937, !959}
!959 = !DILocation(line: 467, column: 3, scope: !935, inlinedAt: !924)
!960 = !DILocation(line: 456, column: 41, scope: !930, inlinedAt: !924)
!961 = distinct !{!961, !927, !962}
!962 = !DILocation(line: 468, column: 2, scope: !926, inlinedAt: !924)
!963 = !DILocation(line: 126, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !537, file: !3, line: 126, column: 7)
!965 = !DILocation(line: 126, column: 7, scope: !537)
!966 = !DILocation(line: 127, column: 12, scope: !964)
!967 = !DILocation(line: 127, column: 4, scope: !964)
!968 = !DILocation(line: 0, scope: !537)
!969 = !DILocation(line: 0, scope: !486, inlinedAt: !970)
!970 = distinct !DILocation(line: 128, column: 3, scope: !537)
!971 = !DILocation(line: 421, column: 2, scope: !485, inlinedAt: !970)
!972 = !DILocation(line: 422, column: 7, scope: !483, inlinedAt: !970)
!973 = !DILocation(line: 422, column: 14, scope: !483, inlinedAt: !970)
!974 = !DILocation(line: 423, column: 23, scope: !497, inlinedAt: !970)
!975 = !DILocation(line: 423, column: 17, scope: !497, inlinedAt: !970)
!976 = !DILocation(line: 423, column: 3, scope: !498, inlinedAt: !970)
!977 = !DILocation(line: 0, scope: !502, inlinedAt: !970)
!978 = !DILocation(line: 424, column: 10, scope: !502, inlinedAt: !970)
!979 = !DILocation(line: 425, column: 9, scope: !502, inlinedAt: !970)
!980 = !DILocation(line: 425, column: 16, scope: !502, inlinedAt: !970)
!981 = !DILocation(line: 426, column: 25, scope: !507, inlinedAt: !970)
!982 = !DILocation(line: 426, column: 18, scope: !507, inlinedAt: !970)
!983 = !DILocation(line: 426, column: 4, scope: !508, inlinedAt: !970)
!984 = !DILocation(line: 0, scope: !507, inlinedAt: !970)
!985 = !DILocation(line: 427, column: 23, scope: !507, inlinedAt: !970)
!986 = !DILocation(line: 427, column: 30, scope: !507, inlinedAt: !970)
!987 = !DILocation(line: 426, column: 36, scope: !507, inlinedAt: !970)
!988 = distinct !{!988, !983, !989}
!989 = !DILocation(line: 427, column: 34, scope: !508, inlinedAt: !970)
!990 = !DILocation(line: 423, column: 37, scope: !497, inlinedAt: !970)
!991 = distinct !{!991, !976, !992}
!992 = !DILocation(line: 428, column: 3, scope: !498, inlinedAt: !970)
!993 = !DILocation(line: 421, column: 41, scope: !484, inlinedAt: !970)
!994 = !DILocation(line: 0, scope: !485, inlinedAt: !970)
!995 = distinct !{!995, !971, !996}
!996 = !DILocation(line: 429, column: 2, scope: !485, inlinedAt: !970)
!997 = distinct !{!997, !553, !998}
!998 = !DILocation(line: 129, column: 2, scope: !526)
!999 = !DILocalVariable(name: "mol", arg: 1, scope: !1000, file: !3, line: 471, type: !270)
!1000 = distinct !DISubprogram(name: "set_select", scope: !3, file: !3, line: 471, type: !395, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1001)
!1001 = !{!999, !1002, !1003, !1004, !1005, !1006}
!1002 = !DILocalVariable(name: "a", scope: !1000, file: !3, line: 473, type: !25)
!1003 = !DILocalVariable(name: "r", scope: !1000, file: !3, line: 473, type: !25)
!1004 = !DILocalVariable(name: "sp", scope: !1000, file: !3, line: 474, type: !40)
!1005 = !DILocalVariable(name: "res", scope: !1000, file: !3, line: 475, type: !57)
!1006 = !DILocalVariable(name: "ap", scope: !1000, file: !3, line: 476, type: !103)
!1007 = !DILocation(line: 0, scope: !1000, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 130, column: 2, scope: !380)
!1009 = !DILocation(line: 478, column: 2, scope: !1010, inlinedAt: !1008)
!1010 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 478, column: 2)
!1011 = !DILocation(line: 479, column: 23, scope: !1012, inlinedAt: !1008)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 478, column: 49)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 478, column: 2)
!1014 = !DILocation(line: 479, column: 17, scope: !1012, inlinedAt: !1008)
!1015 = !DILocation(line: 479, column: 14, scope: !1012, inlinedAt: !1008)
!1016 = !DILocation(line: 480, column: 23, scope: !1017, inlinedAt: !1008)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 480, column: 3)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 480, column: 3)
!1019 = !DILocation(line: 480, column: 17, scope: !1017, inlinedAt: !1008)
!1020 = !DILocation(line: 480, column: 3, scope: !1018, inlinedAt: !1008)
!1021 = !DILocation(line: 0, scope: !1022, inlinedAt: !1008)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 480, column: 41)
!1023 = !DILocation(line: 481, column: 10, scope: !1022, inlinedAt: !1008)
!1024 = !DILocation(line: 482, column: 26, scope: !1022, inlinedAt: !1008)
!1025 = !DILocation(line: 482, column: 19, scope: !1022, inlinedAt: !1008)
!1026 = !DILocation(line: 482, column: 16, scope: !1022, inlinedAt: !1008)
!1027 = !DILocation(line: 484, column: 25, scope: !1028, inlinedAt: !1008)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 484, column: 4)
!1029 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 484, column: 4)
!1030 = !DILocation(line: 484, column: 18, scope: !1028, inlinedAt: !1008)
!1031 = !DILocation(line: 484, column: 4, scope: !1029, inlinedAt: !1008)
!1032 = !DILocation(line: 0, scope: !1033, inlinedAt: !1008)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 484, column: 40)
!1034 = !DILocation(line: 486, column: 25, scope: !1033, inlinedAt: !1008)
!1035 = !DILocation(line: 486, column: 19, scope: !1033, inlinedAt: !1008)
!1036 = !DILocation(line: 486, column: 16, scope: !1033, inlinedAt: !1008)
!1037 = !DILocation(line: 484, column: 36, scope: !1028, inlinedAt: !1008)
!1038 = distinct !{!1038, !1031, !1039}
!1039 = !DILocation(line: 488, column: 4, scope: !1029, inlinedAt: !1008)
!1040 = !DILocation(line: 480, column: 37, scope: !1017, inlinedAt: !1008)
!1041 = distinct !{!1041, !1020, !1042}
!1042 = !DILocation(line: 489, column: 3, scope: !1018, inlinedAt: !1008)
!1043 = !DILocation(line: 478, column: 41, scope: !1013, inlinedAt: !1008)
!1044 = !DILocation(line: 0, scope: !1010, inlinedAt: !1008)
!1045 = distinct !{!1045, !1009, !1046}
!1046 = !DILocation(line: 490, column: 2, scope: !1010, inlinedAt: !1008)
!1047 = !DILocation(line: 133, column: 1, scope: !380)
!1048 = distinct !DISubprogram(name: "atom_in_aexpr", scope: !3, file: !3, line: 135, type: !1049, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!25, !103, !238}
!1051 = !{!1052, !1053, !1054, !1055, !1056}
!1052 = !DILocalVariable(name: "ap", arg: 1, scope: !1048, file: !3, line: 135, type: !103)
!1053 = !DILocalVariable(name: "aex", arg: 2, scope: !1048, file: !3, line: 135, type: !238)
!1054 = !DILocalVariable(name: "aep", scope: !1048, file: !3, line: 137, type: !238)
!1055 = !DILocalVariable(name: "n_aep", scope: !1048, file: !3, line: 137, type: !238)
!1056 = !DILocalVariable(name: "ael", scope: !1048, file: !3, line: 138, type: !25)
!1057 = !DILocation(line: 0, scope: !1048)
!1058 = !DILocation(line: 140, column: 10, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 140, column: 6)
!1060 = !DILocation(line: 140, column: 6, scope: !1048)
!1061 = !DILocation(line: 143, column: 26, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 143, column: 2)
!1063 = !DILocation(line: 0, scope: !1064, inlinedAt: !1074)
!1064 = distinct !DISubprogram(name: "atom_in_1_aexpr", scope: !3, file: !3, line: 276, type: !1049, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073}
!1066 = !DILocalVariable(name: "ap", arg: 1, scope: !1064, file: !3, line: 276, type: !103)
!1067 = !DILocalVariable(name: "aex", arg: 2, scope: !1064, file: !3, line: 276, type: !238)
!1068 = !DILocalVariable(name: "aep", scope: !1064, file: !3, line: 278, type: !238)
!1069 = !DILocalVariable(name: "wp", scope: !1064, file: !3, line: 279, type: !238)
!1070 = !DILocalVariable(name: "lo", scope: !1064, file: !3, line: 280, type: !25)
!1071 = !DILocalVariable(name: "hi", scope: !1064, file: !3, line: 280, type: !25)
!1072 = !DILabel(scope: !1064, name: "RPART", file: !3, line: 316)
!1073 = !DILabel(scope: !1064, name: "APART", file: !3, line: 333)
!1074 = distinct !DILocation(line: 156, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 156, column: 7)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 143, column: 52)
!1077 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 143, column: 2)
!1078 = !DILocation(line: 0, scope: !1079, inlinedAt: !1074)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 302, column: 8)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 301, column: 35)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 301, column: 7)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 299, column: 13)
!1083 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 299, column: 6)
!1084 = !DILocation(line: 0, scope: !1085, inlinedAt: !1089)
!1085 = distinct !DISubprogram(name: "atom_in_atom_pat", scope: !3, file: !3, line: 682, type: !1049, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1086)
!1086 = !{!1087, !1088}
!1087 = !DILocalVariable(name: "ap", arg: 1, scope: !1085, file: !3, line: 682, type: !103)
!1088 = !DILocalVariable(name: "pat", arg: 2, scope: !1085, file: !3, line: 682, type: !238)
!1089 = distinct !DILocation(line: 336, column: 8, scope: !1090, inlinedAt: !1074)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 336, column: 8)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 335, column: 35)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 335, column: 7)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 333, column: 20)
!1094 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 333, column: 13)
!1095 = !DILocation(line: 143, column: 2, scope: !1062)
!1096 = !DILocation(line: 144, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 144, column: 7)
!1098 = !DILocation(line: 144, column: 7, scope: !1076)
!1099 = !DILocation(line: 145, column: 16, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 144, column: 14)
!1101 = !DILocation(line: 146, column: 9, scope: !1100)
!1102 = !DILocation(line: 147, column: 3, scope: !1100)
!1103 = !DILocation(line: 148, column: 10, scope: !1097)
!1104 = !DILocation(line: 0, scope: !1062)
!1105 = !DILocation(line: 0, scope: !1097)
!1106 = !DILocation(line: 149, column: 11, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 149, column: 7)
!1108 = !DILocation(line: 149, column: 7, scope: !1076)
!1109 = !DILocation(line: 150, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 149, column: 26)
!1111 = !DILocation(line: 150, column: 4, scope: !1110)
!1112 = !DILocation(line: 152, column: 4, scope: !1110)
!1113 = !DILocation(line: 154, column: 24, scope: !1076)
!1114 = !DILocation(line: 154, column: 3, scope: !1076)
!1115 = !DILocation(line: 155, column: 3, scope: !1076)
!1116 = !DILocation(line: 155, column: 16, scope: !1076)
!1117 = !DILocation(line: 280, column: 2, scope: !1064, inlinedAt: !1074)
!1118 = !DILocation(line: 283, column: 6, scope: !1119, inlinedAt: !1074)
!1119 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 283, column: 6)
!1120 = !DILocation(line: 283, column: 11, scope: !1119, inlinedAt: !1074)
!1121 = !DILocation(line: 283, column: 6, scope: !1064, inlinedAt: !1074)
!1122 = !DILocation(line: 284, column: 9, scope: !1123, inlinedAt: !1074)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 283, column: 19)
!1124 = !DILocation(line: 286, column: 2, scope: !1123, inlinedAt: !1074)
!1125 = !DILocation(line: 287, column: 11, scope: !1126, inlinedAt: !1074)
!1126 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 286, column: 7)
!1127 = !DILocation(line: 287, column: 9, scope: !1126, inlinedAt: !1074)
!1128 = !DILocation(line: 288, column: 10, scope: !1126, inlinedAt: !1074)
!1129 = !DILocation(line: 288, column: 26, scope: !1126, inlinedAt: !1074)
!1130 = !DILocation(line: 288, column: 7, scope: !1126, inlinedAt: !1074)
!1131 = !DILocation(line: 0, scope: !1119, inlinedAt: !1074)
!1132 = !DILocation(line: 290, column: 6, scope: !1133, inlinedAt: !1074)
!1133 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 290, column: 6)
!1134 = !DILocation(line: 290, column: 11, scope: !1133, inlinedAt: !1074)
!1135 = !DILocation(line: 290, column: 6, scope: !1064, inlinedAt: !1074)
!1136 = !DILocation(line: 291, column: 9, scope: !1137, inlinedAt: !1074)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 290, column: 19)
!1138 = !DILocation(line: 293, column: 2, scope: !1137, inlinedAt: !1074)
!1139 = !DILocation(line: 294, column: 11, scope: !1140, inlinedAt: !1074)
!1140 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 293, column: 7)
!1141 = !DILocation(line: 294, column: 9, scope: !1140, inlinedAt: !1074)
!1142 = !DILocation(line: 295, column: 10, scope: !1140, inlinedAt: !1074)
!1143 = !DILocation(line: 295, column: 26, scope: !1140, inlinedAt: !1074)
!1144 = !DILocation(line: 0, scope: !1133, inlinedAt: !1074)
!1145 = !DILocation(line: 297, column: 10, scope: !1064, inlinedAt: !1074)
!1146 = !DILocation(line: 297, column: 8, scope: !1064, inlinedAt: !1074)
!1147 = !DILocation(line: 299, column: 6, scope: !1083, inlinedAt: !1074)
!1148 = !DILocation(line: 299, column: 6, scope: !1064, inlinedAt: !1074)
!1149 = !DILocation(line: 300, column: 8, scope: !1082, inlinedAt: !1074)
!1150 = !DILocation(line: 301, column: 7, scope: !1081, inlinedAt: !1074)
!1151 = !DILocation(line: 301, column: 7, scope: !1082, inlinedAt: !1074)
!1152 = !DILocation(line: 302, column: 8, scope: !1079, inlinedAt: !1074)
!1153 = !{!334, !291, i64 56}
!1154 = !{!318, !291, i64 56}
!1155 = !DILocalVariable(name: "pat", arg: 2, scope: !1156, file: !3, line: 512, type: !238)
!1156 = distinct !DISubprogram(name: "atom_in_str_pat", scope: !3, file: !3, line: 512, type: !1049, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1157)
!1157 = !{!1158, !1155, !1159, !1160}
!1158 = !DILocalVariable(name: "ap", arg: 1, scope: !1156, file: !3, line: 512, type: !103)
!1159 = !DILocalVariable(name: "res", scope: !1156, file: !3, line: 514, type: !57)
!1160 = !DILocalVariable(name: "sp", scope: !1156, file: !3, line: 515, type: !40)
!1161 = !DILocation(line: 0, scope: !1156, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 302, column: 8, scope: !1079, inlinedAt: !1074)
!1163 = !DILocation(line: 0, scope: !621, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 519, column: 2, scope: !1156, inlinedAt: !1162)
!1165 = !DILocation(line: 700, column: 9, scope: !621, inlinedAt: !1164)
!1166 = !DILocation(line: 701, column: 7, scope: !632, inlinedAt: !1164)
!1167 = !DILocation(line: 0, scope: !632, inlinedAt: !1164)
!1168 = !DILocation(line: 701, column: 20, scope: !635, inlinedAt: !1164)
!1169 = !DILocation(line: 701, column: 2, scope: !632, inlinedAt: !1164)
!1170 = !DILocation(line: 703, column: 8, scope: !638, inlinedAt: !1164)
!1171 = !DILocation(line: 703, column: 11, scope: !638, inlinedAt: !1164)
!1172 = !DILocation(line: 704, column: 8, scope: !638, inlinedAt: !1164)
!1173 = !DILocation(line: 704, column: 11, scope: !638, inlinedAt: !1164)
!1174 = !DILocation(line: 705, column: 3, scope: !638, inlinedAt: !1164)
!1175 = !DILocation(line: 706, column: 8, scope: !646, inlinedAt: !1164)
!1176 = !DILocation(line: 706, column: 11, scope: !646, inlinedAt: !1164)
!1177 = !DILocation(line: 706, column: 4, scope: !646, inlinedAt: !1164)
!1178 = !DILocation(line: 708, column: 8, scope: !646, inlinedAt: !1164)
!1179 = !DILocation(line: 708, column: 11, scope: !646, inlinedAt: !1164)
!1180 = !DILocation(line: 0, scope: !639, inlinedAt: !1164)
!1181 = !DILocation(line: 701, column: 29, scope: !635, inlinedAt: !1164)
!1182 = !DILocation(line: 701, column: 2, scope: !635, inlinedAt: !1164)
!1183 = distinct !{!1183, !1169, !1184}
!1184 = !DILocation(line: 709, column: 2, scope: !632, inlinedAt: !1164)
!1185 = !DILocation(line: 710, column: 6, scope: !621, inlinedAt: !1164)
!1186 = !DILocation(line: 710, column: 9, scope: !621, inlinedAt: !1164)
!1187 = !DILocation(line: 711, column: 7, scope: !621, inlinedAt: !1164)
!1188 = !DILocation(line: 524, column: 2, scope: !1156, inlinedAt: !1162)
!1189 = !DILocation(line: 525, column: 20, scope: !1156, inlinedAt: !1162)
!1190 = !DILocation(line: 525, column: 10, scope: !1156, inlinedAt: !1162)
!1191 = !DILocation(line: 302, column: 8, scope: !1080, inlinedAt: !1074)
!1192 = !DILocation(line: 304, column: 36, scope: !1193, inlinedAt: !1074)
!1193 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 304, column: 13)
!1194 = !DILocation(line: 304, column: 40, scope: !1193, inlinedAt: !1074)
!1195 = !DILocation(line: 304, column: 13, scope: !1193, inlinedAt: !1074)
!1196 = !DILocalVariable(name: "lo", arg: 2, scope: !1197, file: !3, line: 543, type: !25)
!1197 = distinct !DISubprogram(name: "atom_in_str_range", scope: !3, file: !3, line: 543, type: !1198, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1200)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!25, !103, !25, !25}
!1200 = !{!1201, !1196, !1202, !1203, !1204, !1205, !1206, !1207}
!1201 = !DILocalVariable(name: "ap", arg: 1, scope: !1197, file: !3, line: 543, type: !103)
!1202 = !DILocalVariable(name: "hi", arg: 3, scope: !1197, file: !3, line: 543, type: !25)
!1203 = !DILocalVariable(name: "m", scope: !1197, file: !3, line: 545, type: !25)
!1204 = !DILocalVariable(name: "res", scope: !1197, file: !3, line: 546, type: !57)
!1205 = !DILocalVariable(name: "sp", scope: !1197, file: !3, line: 547, type: !40)
!1206 = !DILocalVariable(name: "sp1", scope: !1197, file: !3, line: 547, type: !40)
!1207 = !DILocalVariable(name: "mol", scope: !1197, file: !3, line: 548, type: !270)
!1208 = !DILocation(line: 0, scope: !1197, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 304, column: 13, scope: !1193, inlinedAt: !1074)
!1210 = !DILocation(line: 552, column: 12, scope: !1197, inlinedAt: !1209)
!1211 = !{!300, !291, i64 16}
!1212 = !DILocation(line: 553, column: 9, scope: !1213, inlinedAt: !1209)
!1213 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 553, column: 6)
!1214 = !DILocation(line: 555, column: 38, scope: !1215, inlinedAt: !1209)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 555, column: 2)
!1216 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 555, column: 2)
!1217 = !DILocation(line: 555, column: 2, scope: !1216, inlinedAt: !1209)
!1218 = !DILocation(line: 555, column: 25, scope: !1216, inlinedAt: !1209)
!1219 = !DILocation(line: 0, scope: !1216, inlinedAt: !1209)
!1220 = !DILocation(line: 557, column: 10, scope: !1221, inlinedAt: !1209)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 557, column: 7)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 556, column: 27)
!1223 = !DILocation(line: 558, column: 11, scope: !1224, inlinedAt: !1209)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 558, column: 8)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 557, column: 18)
!1226 = !DILocation(line: 557, column: 7, scope: !1222, inlinedAt: !1209)
!1227 = !DILocation(line: 558, column: 21, scope: !1224, inlinedAt: !1209)
!1228 = !DILocation(line: 556, column: 4, scope: !1215, inlinedAt: !1209)
!1229 = !DILocation(line: 556, column: 19, scope: !1215, inlinedAt: !1209)
!1230 = distinct !{!1230, !1217, !1231}
!1231 = !DILocation(line: 561, column: 2, scope: !1216, inlinedAt: !1209)
!1232 = !DILocation(line: 306, column: 16, scope: !1082, inlinedAt: !1074)
!1233 = !DILocation(line: 306, column: 3, scope: !1082, inlinedAt: !1074)
!1234 = !DILocation(line: 307, column: 8, scope: !1235, inlinedAt: !1074)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 307, column: 8)
!1236 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 306, column: 38)
!1237 = !DILocation(line: 307, column: 8, scope: !1236, inlinedAt: !1074)
!1238 = !DILocation(line: 308, column: 9, scope: !1239, inlinedAt: !1074)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 308, column: 9)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 307, column: 36)
!1241 = !DILocation(line: 0, scope: !1156, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 308, column: 9, scope: !1239, inlinedAt: !1074)
!1243 = !DILocation(line: 0, scope: !621, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 519, column: 2, scope: !1156, inlinedAt: !1242)
!1245 = !DILocation(line: 700, column: 9, scope: !621, inlinedAt: !1244)
!1246 = !DILocation(line: 701, column: 7, scope: !632, inlinedAt: !1244)
!1247 = !DILocation(line: 0, scope: !632, inlinedAt: !1244)
!1248 = !DILocation(line: 701, column: 20, scope: !635, inlinedAt: !1244)
!1249 = !DILocation(line: 701, column: 2, scope: !632, inlinedAt: !1244)
!1250 = !DILocation(line: 703, column: 8, scope: !638, inlinedAt: !1244)
!1251 = !DILocation(line: 703, column: 11, scope: !638, inlinedAt: !1244)
!1252 = !DILocation(line: 704, column: 8, scope: !638, inlinedAt: !1244)
!1253 = !DILocation(line: 704, column: 11, scope: !638, inlinedAt: !1244)
!1254 = !DILocation(line: 705, column: 3, scope: !638, inlinedAt: !1244)
!1255 = !DILocation(line: 706, column: 8, scope: !646, inlinedAt: !1244)
!1256 = !DILocation(line: 706, column: 11, scope: !646, inlinedAt: !1244)
!1257 = !DILocation(line: 706, column: 4, scope: !646, inlinedAt: !1244)
!1258 = !DILocation(line: 708, column: 8, scope: !646, inlinedAt: !1244)
!1259 = !DILocation(line: 708, column: 11, scope: !646, inlinedAt: !1244)
!1260 = !DILocation(line: 0, scope: !639, inlinedAt: !1244)
!1261 = !DILocation(line: 701, column: 29, scope: !635, inlinedAt: !1244)
!1262 = !DILocation(line: 701, column: 2, scope: !635, inlinedAt: !1244)
!1263 = distinct !{!1263, !1249, !1264}
!1264 = !DILocation(line: 709, column: 2, scope: !632, inlinedAt: !1244)
!1265 = !DILocation(line: 710, column: 6, scope: !621, inlinedAt: !1244)
!1266 = !DILocation(line: 710, column: 9, scope: !621, inlinedAt: !1244)
!1267 = !DILocation(line: 711, column: 7, scope: !621, inlinedAt: !1244)
!1268 = !DILocation(line: 524, column: 2, scope: !1156, inlinedAt: !1242)
!1269 = !DILocation(line: 525, column: 20, scope: !1156, inlinedAt: !1242)
!1270 = !DILocation(line: 525, column: 10, scope: !1156, inlinedAt: !1242)
!1271 = !DILocation(line: 308, column: 9, scope: !1240, inlinedAt: !1074)
!1272 = !DILocation(line: 310, column: 37, scope: !1273, inlinedAt: !1074)
!1273 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 310, column: 14)
!1274 = !DILocation(line: 310, column: 41, scope: !1273, inlinedAt: !1074)
!1275 = !DILocation(line: 310, column: 14, scope: !1273, inlinedAt: !1074)
!1276 = !DILocation(line: 0, scope: !1197, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 310, column: 14, scope: !1273, inlinedAt: !1074)
!1278 = !DILocation(line: 552, column: 12, scope: !1197, inlinedAt: !1277)
!1279 = !DILocation(line: 553, column: 9, scope: !1213, inlinedAt: !1277)
!1280 = !DILocation(line: 555, column: 38, scope: !1215, inlinedAt: !1277)
!1281 = !DILocation(line: 555, column: 2, scope: !1216, inlinedAt: !1277)
!1282 = !DILocation(line: 555, column: 25, scope: !1216, inlinedAt: !1277)
!1283 = !DILocation(line: 0, scope: !1216, inlinedAt: !1277)
!1284 = !DILocation(line: 557, column: 10, scope: !1221, inlinedAt: !1277)
!1285 = !DILocation(line: 558, column: 11, scope: !1224, inlinedAt: !1277)
!1286 = !DILocation(line: 557, column: 7, scope: !1222, inlinedAt: !1277)
!1287 = !DILocation(line: 558, column: 21, scope: !1224, inlinedAt: !1277)
!1288 = !DILocation(line: 556, column: 4, scope: !1215, inlinedAt: !1277)
!1289 = !DILocation(line: 556, column: 19, scope: !1215, inlinedAt: !1277)
!1290 = distinct !{!1290, !1281, !1291}
!1291 = !DILocation(line: 561, column: 2, scope: !1216, inlinedAt: !1277)
!1292 = distinct !{!1292, !1233, !1293}
!1293 = !DILocation(line: 312, column: 3, scope: !1082, inlinedAt: !1074)
!1294 = !DILocation(line: 316, column: 1, scope: !1064, inlinedAt: !1074)
!1295 = !DILocation(line: 316, column: 13, scope: !1296, inlinedAt: !1074)
!1296 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 316, column: 13)
!1297 = !DILocation(line: 316, column: 13, scope: !1064, inlinedAt: !1074)
!1298 = !DILocation(line: 317, column: 8, scope: !1299, inlinedAt: !1074)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 316, column: 20)
!1300 = !DILocation(line: 318, column: 7, scope: !1301, inlinedAt: !1074)
!1301 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 318, column: 7)
!1302 = !DILocation(line: 318, column: 7, scope: !1299, inlinedAt: !1074)
!1303 = !DILocation(line: 319, column: 8, scope: !1304, inlinedAt: !1074)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 319, column: 8)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 318, column: 35)
!1306 = !DILocalVariable(name: "pat", arg: 2, scope: !1307, file: !3, line: 593, type: !238)
!1307 = distinct !DISubprogram(name: "atom_in_res_pat", scope: !3, file: !3, line: 593, type: !1049, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1308)
!1308 = !{!1309, !1306, !1310}
!1309 = !DILocalVariable(name: "ap", arg: 1, scope: !1307, file: !3, line: 593, type: !103)
!1310 = !DILocalVariable(name: "res", scope: !1307, file: !3, line: 595, type: !57)
!1311 = !DILocation(line: 0, scope: !1307, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 319, column: 8, scope: !1304, inlinedAt: !1074)
!1313 = !DILocation(line: 0, scope: !621, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 598, column: 2, scope: !1307, inlinedAt: !1312)
!1315 = !DILocation(line: 700, column: 9, scope: !621, inlinedAt: !1314)
!1316 = !DILocation(line: 701, column: 7, scope: !632, inlinedAt: !1314)
!1317 = !DILocation(line: 0, scope: !632, inlinedAt: !1314)
!1318 = !DILocation(line: 701, column: 20, scope: !635, inlinedAt: !1314)
!1319 = !DILocation(line: 701, column: 2, scope: !632, inlinedAt: !1314)
!1320 = !DILocation(line: 703, column: 8, scope: !638, inlinedAt: !1314)
!1321 = !DILocation(line: 703, column: 11, scope: !638, inlinedAt: !1314)
!1322 = !DILocation(line: 704, column: 8, scope: !638, inlinedAt: !1314)
!1323 = !DILocation(line: 704, column: 11, scope: !638, inlinedAt: !1314)
!1324 = !DILocation(line: 705, column: 3, scope: !638, inlinedAt: !1314)
!1325 = !DILocation(line: 706, column: 8, scope: !646, inlinedAt: !1314)
!1326 = !DILocation(line: 706, column: 11, scope: !646, inlinedAt: !1314)
!1327 = !DILocation(line: 706, column: 4, scope: !646, inlinedAt: !1314)
!1328 = !DILocation(line: 708, column: 8, scope: !646, inlinedAt: !1314)
!1329 = !DILocation(line: 708, column: 11, scope: !646, inlinedAt: !1314)
!1330 = !DILocation(line: 0, scope: !639, inlinedAt: !1314)
!1331 = !DILocation(line: 701, column: 29, scope: !635, inlinedAt: !1314)
!1332 = !DILocation(line: 701, column: 2, scope: !635, inlinedAt: !1314)
!1333 = distinct !{!1333, !1319, !1334}
!1334 = !DILocation(line: 709, column: 2, scope: !632, inlinedAt: !1314)
!1335 = !DILocation(line: 710, column: 6, scope: !621, inlinedAt: !1314)
!1336 = !DILocation(line: 710, column: 9, scope: !621, inlinedAt: !1314)
!1337 = !DILocation(line: 711, column: 7, scope: !621, inlinedAt: !1314)
!1338 = !DILocation(line: 603, column: 2, scope: !1307, inlinedAt: !1312)
!1339 = !DILocation(line: 604, column: 21, scope: !1307, inlinedAt: !1312)
!1340 = !{!318, !291, i64 24}
!1341 = !DILocation(line: 604, column: 10, scope: !1307, inlinedAt: !1312)
!1342 = !DILocation(line: 319, column: 8, scope: !1305, inlinedAt: !1074)
!1343 = !DILocation(line: 321, column: 36, scope: !1344, inlinedAt: !1074)
!1344 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 321, column: 13)
!1345 = !DILocation(line: 321, column: 40, scope: !1344, inlinedAt: !1074)
!1346 = !DILocation(line: 321, column: 13, scope: !1344, inlinedAt: !1074)
!1347 = !DILocalVariable(name: "lo", arg: 2, scope: !1348, file: !3, line: 626, type: !25)
!1348 = distinct !DISubprogram(name: "atom_in_res_range", scope: !3, file: !3, line: 626, type: !1198, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1349)
!1349 = !{!1350, !1347, !1351, !1352, !1353, !1354, !1355, !1356}
!1350 = !DILocalVariable(name: "ap", arg: 1, scope: !1348, file: !3, line: 626, type: !103)
!1351 = !DILocalVariable(name: "hi", arg: 3, scope: !1348, file: !3, line: 626, type: !25)
!1352 = !DILocalVariable(name: "r", scope: !1348, file: !3, line: 628, type: !25)
!1353 = !DILocalVariable(name: "rhi", scope: !1348, file: !3, line: 628, type: !25)
!1354 = !DILocalVariable(name: "sp", scope: !1348, file: !3, line: 629, type: !40)
!1355 = !DILocalVariable(name: "res", scope: !1348, file: !3, line: 630, type: !57)
!1356 = !DILocalVariable(name: "res1", scope: !1348, file: !3, line: 630, type: !57)
!1357 = !DILocation(line: 0, scope: !1348, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 321, column: 13, scope: !1344, inlinedAt: !1074)
!1359 = !DILocation(line: 633, column: 12, scope: !1348, inlinedAt: !1358)
!1360 = !DILocation(line: 635, column: 13, scope: !1348, inlinedAt: !1358)
!1361 = !DILocation(line: 635, column: 8, scope: !1348, inlinedAt: !1358)
!1362 = !DILocation(line: 0, scope: !1363, inlinedAt: !1358)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 636, column: 40)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 636, column: 2)
!1365 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 636, column: 2)
!1366 = !DILocation(line: 636, column: 7, scope: !1365, inlinedAt: !1358)
!1367 = !DILocation(line: 0, scope: !1365, inlinedAt: !1358)
!1368 = !DILocation(line: 636, column: 16, scope: !1364, inlinedAt: !1358)
!1369 = !DILocation(line: 636, column: 2, scope: !1365, inlinedAt: !1358)
!1370 = !DILocation(line: 637, column: 14, scope: !1363, inlinedAt: !1358)
!1371 = !DILocation(line: 637, column: 10, scope: !1363, inlinedAt: !1358)
!1372 = !DILocation(line: 638, column: 11, scope: !1373, inlinedAt: !1358)
!1373 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 638, column: 7)
!1374 = !DILocation(line: 639, column: 16, scope: !1375, inlinedAt: !1358)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 639, column: 8)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 638, column: 20)
!1377 = !DILocation(line: 639, column: 11, scope: !1375, inlinedAt: !1358)
!1378 = !DILocation(line: 638, column: 7, scope: !1363, inlinedAt: !1358)
!1379 = !DILocation(line: 639, column: 29, scope: !1375, inlinedAt: !1358)
!1380 = distinct !{!1380, !1369, !1381}
!1381 = !DILocation(line: 642, column: 2, scope: !1365, inlinedAt: !1358)
!1382 = !DILocation(line: 323, column: 16, scope: !1299, inlinedAt: !1074)
!1383 = !DILocation(line: 323, column: 3, scope: !1299, inlinedAt: !1074)
!1384 = !DILocation(line: 324, column: 8, scope: !1385, inlinedAt: !1074)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 324, column: 8)
!1386 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 323, column: 38)
!1387 = !DILocation(line: 324, column: 8, scope: !1386, inlinedAt: !1074)
!1388 = !DILocation(line: 325, column: 9, scope: !1389, inlinedAt: !1074)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 325, column: 9)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 324, column: 36)
!1391 = !DILocation(line: 0, scope: !1307, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 325, column: 9, scope: !1389, inlinedAt: !1074)
!1393 = !DILocation(line: 0, scope: !621, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 598, column: 2, scope: !1307, inlinedAt: !1392)
!1395 = !DILocation(line: 700, column: 9, scope: !621, inlinedAt: !1394)
!1396 = !DILocation(line: 701, column: 7, scope: !632, inlinedAt: !1394)
!1397 = !DILocation(line: 0, scope: !632, inlinedAt: !1394)
!1398 = !DILocation(line: 701, column: 20, scope: !635, inlinedAt: !1394)
!1399 = !DILocation(line: 701, column: 2, scope: !632, inlinedAt: !1394)
!1400 = !DILocation(line: 703, column: 8, scope: !638, inlinedAt: !1394)
!1401 = !DILocation(line: 703, column: 11, scope: !638, inlinedAt: !1394)
!1402 = !DILocation(line: 704, column: 8, scope: !638, inlinedAt: !1394)
!1403 = !DILocation(line: 704, column: 11, scope: !638, inlinedAt: !1394)
!1404 = !DILocation(line: 705, column: 3, scope: !638, inlinedAt: !1394)
!1405 = !DILocation(line: 706, column: 8, scope: !646, inlinedAt: !1394)
!1406 = !DILocation(line: 706, column: 11, scope: !646, inlinedAt: !1394)
!1407 = !DILocation(line: 706, column: 4, scope: !646, inlinedAt: !1394)
!1408 = !DILocation(line: 708, column: 8, scope: !646, inlinedAt: !1394)
!1409 = !DILocation(line: 708, column: 11, scope: !646, inlinedAt: !1394)
!1410 = !DILocation(line: 0, scope: !639, inlinedAt: !1394)
!1411 = !DILocation(line: 701, column: 29, scope: !635, inlinedAt: !1394)
!1412 = !DILocation(line: 701, column: 2, scope: !635, inlinedAt: !1394)
!1413 = distinct !{!1413, !1399, !1414}
!1414 = !DILocation(line: 709, column: 2, scope: !632, inlinedAt: !1394)
!1415 = !DILocation(line: 710, column: 6, scope: !621, inlinedAt: !1394)
!1416 = !DILocation(line: 710, column: 9, scope: !621, inlinedAt: !1394)
!1417 = !DILocation(line: 711, column: 7, scope: !621, inlinedAt: !1394)
!1418 = !DILocation(line: 603, column: 2, scope: !1307, inlinedAt: !1392)
!1419 = !DILocation(line: 604, column: 21, scope: !1307, inlinedAt: !1392)
!1420 = !DILocation(line: 604, column: 10, scope: !1307, inlinedAt: !1392)
!1421 = !DILocation(line: 325, column: 9, scope: !1390, inlinedAt: !1074)
!1422 = !DILocation(line: 327, column: 37, scope: !1423, inlinedAt: !1074)
!1423 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 327, column: 14)
!1424 = !DILocation(line: 327, column: 41, scope: !1423, inlinedAt: !1074)
!1425 = !DILocation(line: 327, column: 14, scope: !1423, inlinedAt: !1074)
!1426 = !DILocation(line: 0, scope: !1348, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 327, column: 14, scope: !1423, inlinedAt: !1074)
!1428 = !DILocation(line: 633, column: 12, scope: !1348, inlinedAt: !1427)
!1429 = !DILocation(line: 635, column: 13, scope: !1348, inlinedAt: !1427)
!1430 = !DILocation(line: 635, column: 8, scope: !1348, inlinedAt: !1427)
!1431 = !DILocation(line: 0, scope: !1363, inlinedAt: !1427)
!1432 = !DILocation(line: 636, column: 7, scope: !1365, inlinedAt: !1427)
!1433 = !DILocation(line: 0, scope: !1365, inlinedAt: !1427)
!1434 = !DILocation(line: 636, column: 16, scope: !1364, inlinedAt: !1427)
!1435 = !DILocation(line: 636, column: 2, scope: !1365, inlinedAt: !1427)
!1436 = !DILocation(line: 637, column: 14, scope: !1363, inlinedAt: !1427)
!1437 = !DILocation(line: 637, column: 10, scope: !1363, inlinedAt: !1427)
!1438 = !DILocation(line: 638, column: 11, scope: !1373, inlinedAt: !1427)
!1439 = !DILocation(line: 639, column: 16, scope: !1375, inlinedAt: !1427)
!1440 = !DILocation(line: 639, column: 11, scope: !1375, inlinedAt: !1427)
!1441 = !DILocation(line: 638, column: 7, scope: !1363, inlinedAt: !1427)
!1442 = !DILocation(line: 639, column: 29, scope: !1375, inlinedAt: !1427)
!1443 = distinct !{!1443, !1435, !1444}
!1444 = !DILocation(line: 642, column: 2, scope: !1365, inlinedAt: !1427)
!1445 = distinct !{!1445, !1383, !1446}
!1446 = !DILocation(line: 329, column: 3, scope: !1299, inlinedAt: !1074)
!1447 = !DILocation(line: 333, column: 1, scope: !1064, inlinedAt: !1074)
!1448 = !DILocation(line: 333, column: 13, scope: !1094, inlinedAt: !1074)
!1449 = !DILocation(line: 333, column: 13, scope: !1064, inlinedAt: !1074)
!1450 = !DILocation(line: 334, column: 8, scope: !1093, inlinedAt: !1074)
!1451 = !DILocation(line: 335, column: 7, scope: !1092, inlinedAt: !1074)
!1452 = !DILocation(line: 335, column: 7, scope: !1093, inlinedAt: !1074)
!1453 = !DILocation(line: 0, scope: !621, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 685, column: 2, scope: !1085, inlinedAt: !1089)
!1455 = !DILocation(line: 700, column: 9, scope: !621, inlinedAt: !1454)
!1456 = !DILocation(line: 701, column: 7, scope: !632, inlinedAt: !1454)
!1457 = !DILocation(line: 0, scope: !632, inlinedAt: !1454)
!1458 = !DILocation(line: 701, column: 20, scope: !635, inlinedAt: !1454)
!1459 = !DILocation(line: 701, column: 2, scope: !632, inlinedAt: !1454)
!1460 = !DILocation(line: 703, column: 8, scope: !638, inlinedAt: !1454)
!1461 = !DILocation(line: 703, column: 11, scope: !638, inlinedAt: !1454)
!1462 = !DILocation(line: 704, column: 8, scope: !638, inlinedAt: !1454)
!1463 = !DILocation(line: 704, column: 11, scope: !638, inlinedAt: !1454)
!1464 = !DILocation(line: 705, column: 3, scope: !638, inlinedAt: !1454)
!1465 = !DILocation(line: 706, column: 8, scope: !646, inlinedAt: !1454)
!1466 = !DILocation(line: 706, column: 11, scope: !646, inlinedAt: !1454)
!1467 = !DILocation(line: 706, column: 4, scope: !646, inlinedAt: !1454)
!1468 = !DILocation(line: 708, column: 8, scope: !646, inlinedAt: !1454)
!1469 = !DILocation(line: 708, column: 11, scope: !646, inlinedAt: !1454)
!1470 = !DILocation(line: 0, scope: !639, inlinedAt: !1454)
!1471 = !DILocation(line: 701, column: 29, scope: !635, inlinedAt: !1454)
!1472 = !DILocation(line: 701, column: 2, scope: !635, inlinedAt: !1454)
!1473 = distinct !{!1473, !1459, !1474}
!1474 = !DILocation(line: 709, column: 2, scope: !632, inlinedAt: !1454)
!1475 = !DILocation(line: 710, column: 6, scope: !621, inlinedAt: !1454)
!1476 = !DILocation(line: 710, column: 9, scope: !621, inlinedAt: !1454)
!1477 = !DILocation(line: 711, column: 7, scope: !621, inlinedAt: !1454)
!1478 = !DILocation(line: 690, column: 2, scope: !1085, inlinedAt: !1089)
!1479 = !DILocation(line: 691, column: 20, scope: !1085, inlinedAt: !1089)
!1480 = !{!334, !291, i64 0}
!1481 = !DILocation(line: 691, column: 10, scope: !1085, inlinedAt: !1089)
!1482 = !DILocation(line: 336, column: 8, scope: !1090, inlinedAt: !1074)
!1483 = !DILocation(line: 336, column: 8, scope: !1091, inlinedAt: !1074)
!1484 = !DILocation(line: 339, column: 13, scope: !1485, inlinedAt: !1074)
!1485 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 338, column: 8)
!1486 = !DILocation(line: 339, column: 4, scope: !1485, inlinedAt: !1074)
!1487 = !DILocation(line: 340, column: 4, scope: !1485, inlinedAt: !1074)
!1488 = !DILocation(line: 342, column: 16, scope: !1093, inlinedAt: !1074)
!1489 = !DILocation(line: 342, column: 3, scope: !1093, inlinedAt: !1074)
!1490 = !DILocation(line: 343, column: 8, scope: !1491, inlinedAt: !1074)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 343, column: 8)
!1492 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 342, column: 38)
!1493 = !DILocation(line: 343, column: 8, scope: !1492, inlinedAt: !1074)
!1494 = !DILocation(line: 0, scope: !1085, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 344, column: 9, scope: !1496, inlinedAt: !1074)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 344, column: 9)
!1497 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 343, column: 36)
!1498 = !DILocation(line: 0, scope: !621, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 685, column: 2, scope: !1085, inlinedAt: !1495)
!1500 = !DILocation(line: 700, column: 9, scope: !621, inlinedAt: !1499)
!1501 = !DILocation(line: 701, column: 7, scope: !632, inlinedAt: !1499)
!1502 = !DILocation(line: 0, scope: !632, inlinedAt: !1499)
!1503 = !DILocation(line: 701, column: 20, scope: !635, inlinedAt: !1499)
!1504 = !DILocation(line: 701, column: 2, scope: !632, inlinedAt: !1499)
!1505 = !DILocation(line: 703, column: 8, scope: !638, inlinedAt: !1499)
!1506 = !DILocation(line: 703, column: 11, scope: !638, inlinedAt: !1499)
!1507 = !DILocation(line: 704, column: 8, scope: !638, inlinedAt: !1499)
!1508 = !DILocation(line: 704, column: 11, scope: !638, inlinedAt: !1499)
!1509 = !DILocation(line: 705, column: 3, scope: !638, inlinedAt: !1499)
!1510 = !DILocation(line: 706, column: 8, scope: !646, inlinedAt: !1499)
!1511 = !DILocation(line: 706, column: 11, scope: !646, inlinedAt: !1499)
!1512 = !DILocation(line: 706, column: 4, scope: !646, inlinedAt: !1499)
!1513 = !DILocation(line: 708, column: 8, scope: !646, inlinedAt: !1499)
!1514 = !DILocation(line: 708, column: 11, scope: !646, inlinedAt: !1499)
!1515 = !DILocation(line: 0, scope: !639, inlinedAt: !1499)
!1516 = !DILocation(line: 701, column: 29, scope: !635, inlinedAt: !1499)
!1517 = !DILocation(line: 701, column: 2, scope: !635, inlinedAt: !1499)
!1518 = distinct !{!1518, !1504, !1519}
!1519 = !DILocation(line: 709, column: 2, scope: !632, inlinedAt: !1499)
!1520 = !DILocation(line: 710, column: 6, scope: !621, inlinedAt: !1499)
!1521 = !DILocation(line: 710, column: 9, scope: !621, inlinedAt: !1499)
!1522 = !DILocation(line: 711, column: 7, scope: !621, inlinedAt: !1499)
!1523 = !DILocation(line: 690, column: 2, scope: !1085, inlinedAt: !1495)
!1524 = !DILocation(line: 691, column: 20, scope: !1085, inlinedAt: !1495)
!1525 = !DILocation(line: 691, column: 10, scope: !1085, inlinedAt: !1495)
!1526 = !DILocation(line: 344, column: 9, scope: !1496, inlinedAt: !1074)
!1527 = !DILocation(line: 344, column: 9, scope: !1497, inlinedAt: !1074)
!1528 = distinct !{!1528, !1489, !1529}
!1529 = !DILocation(line: 350, column: 3, scope: !1093, inlinedAt: !1074)
!1530 = !DILocation(line: 347, column: 14, scope: !1531, inlinedAt: !1074)
!1531 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 346, column: 9)
!1532 = !DILocation(line: 347, column: 5, scope: !1531, inlinedAt: !1074)
!1533 = !DILocation(line: 348, column: 5, scope: !1531, inlinedAt: !1074)
!1534 = !DILocation(line: 355, column: 1, scope: !1064, inlinedAt: !1074)
!1535 = !DILocation(line: 156, column: 7, scope: !1076)
!1536 = !DILocation(line: 159, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 159, column: 7)
!1538 = !DILocation(line: 159, column: 7, scope: !1076)
!1539 = !DILocation(line: 160, column: 12, scope: !1537)
!1540 = !DILocation(line: 163, column: 1, scope: !1048)
!1541 = distinct !DISubprogram(name: "set_attr_if", scope: !3, file: !3, line: 165, type: !541, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1542)
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1543 = !DILocalVariable(name: "mol", arg: 1, scope: !1541, file: !3, line: 165, type: !270)
!1544 = !DILocalVariable(name: "attr", arg: 2, scope: !1541, file: !3, line: 165, type: !25)
!1545 = !DILocalVariable(name: "i_attr", arg: 3, scope: !1541, file: !3, line: 165, type: !25)
!1546 = !DILocalVariable(name: "a", scope: !1541, file: !3, line: 167, type: !25)
!1547 = !DILocalVariable(name: "r", scope: !1541, file: !3, line: 167, type: !25)
!1548 = !DILocalVariable(name: "sp", scope: !1541, file: !3, line: 168, type: !40)
!1549 = !DILocalVariable(name: "res", scope: !1541, file: !3, line: 169, type: !57)
!1550 = !DILocalVariable(name: "ap", scope: !1541, file: !3, line: 170, type: !103)
!1551 = !DILocation(line: 0, scope: !1541)
!1552 = !DILocation(line: 172, column: 17, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 172, column: 2)
!1554 = !DILocation(line: 0, scope: !1553)
!1555 = !DILocation(line: 172, column: 2, scope: !1553)
!1556 = !DILocation(line: 173, column: 23, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 172, column: 49)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 172, column: 2)
!1559 = !DILocation(line: 173, column: 30, scope: !1557)
!1560 = !DILocation(line: 173, column: 17, scope: !1557)
!1561 = !DILocation(line: 173, column: 14, scope: !1557)
!1562 = !DILocation(line: 174, column: 23, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 174, column: 3)
!1564 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 174, column: 3)
!1565 = !DILocation(line: 174, column: 17, scope: !1563)
!1566 = !DILocation(line: 174, column: 3, scope: !1564)
!1567 = !DILocation(line: 0, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 174, column: 41)
!1569 = !DILocation(line: 175, column: 10, scope: !1568)
!1570 = !DILocation(line: 176, column: 26, scope: !1568)
!1571 = !DILocation(line: 176, column: 33, scope: !1568)
!1572 = !DILocation(line: 176, column: 19, scope: !1568)
!1573 = !DILocation(line: 176, column: 16, scope: !1568)
!1574 = !DILocation(line: 178, column: 25, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 178, column: 4)
!1576 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 178, column: 4)
!1577 = !DILocation(line: 178, column: 18, scope: !1575)
!1578 = !DILocation(line: 178, column: 4, scope: !1576)
!1579 = !DILocation(line: 0, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 178, column: 40)
!1581 = !DILocation(line: 180, column: 25, scope: !1580)
!1582 = !DILocation(line: 180, column: 32, scope: !1580)
!1583 = !DILocation(line: 180, column: 19, scope: !1580)
!1584 = !DILocation(line: 180, column: 16, scope: !1580)
!1585 = !DILocation(line: 178, column: 36, scope: !1575)
!1586 = distinct !{!1586, !1578, !1587}
!1587 = !DILocation(line: 182, column: 4, scope: !1576)
!1588 = !DILocation(line: 174, column: 37, scope: !1563)
!1589 = distinct !{!1589, !1566, !1590}
!1590 = !DILocation(line: 183, column: 3, scope: !1564)
!1591 = !DILocation(line: 172, column: 41, scope: !1558)
!1592 = distinct !{!1592, !1555, !1593}
!1593 = !DILocation(line: 184, column: 2, scope: !1553)
!1594 = !DILocation(line: 185, column: 1, scope: !1541)
!1595 = distinct !DISubprogram(name: "clear_attr", scope: !3, file: !3, line: 187, type: !1596, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !270, !25}
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604}
!1599 = !DILocalVariable(name: "mol", arg: 1, scope: !1595, file: !3, line: 187, type: !270)
!1600 = !DILocalVariable(name: "attr", arg: 2, scope: !1595, file: !3, line: 187, type: !25)
!1601 = !DILocalVariable(name: "a", scope: !1595, file: !3, line: 189, type: !25)
!1602 = !DILocalVariable(name: "r", scope: !1595, file: !3, line: 189, type: !25)
!1603 = !DILocalVariable(name: "sp", scope: !1595, file: !3, line: 190, type: !40)
!1604 = !DILocalVariable(name: "res", scope: !1595, file: !3, line: 191, type: !57)
!1605 = !DILocation(line: 0, scope: !1595)
!1606 = !DILocation(line: 193, column: 17, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 193, column: 2)
!1608 = !DILocation(line: 0, scope: !1607)
!1609 = !DILocation(line: 193, column: 2, scope: !1607)
!1610 = !DILocation(line: 0, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 193, column: 49)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 193, column: 2)
!1613 = !DILocation(line: 194, column: 7, scope: !1611)
!1614 = !DILocation(line: 194, column: 14, scope: !1611)
!1615 = !DILocation(line: 195, column: 23, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 195, column: 3)
!1617 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 195, column: 3)
!1618 = !DILocation(line: 195, column: 17, scope: !1616)
!1619 = !DILocation(line: 195, column: 3, scope: !1617)
!1620 = !DILocation(line: 0, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 195, column: 41)
!1622 = !DILocation(line: 196, column: 10, scope: !1621)
!1623 = !DILocation(line: 197, column: 9, scope: !1621)
!1624 = !DILocation(line: 197, column: 16, scope: !1621)
!1625 = !DILocation(line: 198, column: 25, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 198, column: 4)
!1627 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 198, column: 4)
!1628 = !DILocation(line: 198, column: 18, scope: !1626)
!1629 = !DILocation(line: 198, column: 4, scope: !1627)
!1630 = !DILocation(line: 0, scope: !1626)
!1631 = !DILocation(line: 199, column: 23, scope: !1626)
!1632 = !DILocation(line: 199, column: 30, scope: !1626)
!1633 = !DILocation(line: 198, column: 36, scope: !1626)
!1634 = distinct !{!1634, !1629, !1635}
!1635 = !DILocation(line: 199, column: 34, scope: !1627)
!1636 = !DILocation(line: 195, column: 37, scope: !1616)
!1637 = distinct !{!1637, !1619, !1638}
!1638 = !DILocation(line: 200, column: 3, scope: !1617)
!1639 = !DILocation(line: 193, column: 41, scope: !1612)
!1640 = distinct !{!1640, !1609, !1641}
!1641 = !DILocation(line: 201, column: 2, scope: !1607)
!1642 = !DILocation(line: 202, column: 1, scope: !1595)
!1643 = distinct !DISubprogram(name: "is_pattern", scope: !3, file: !3, line: 357, type: !1644, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1647)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!25, !238, !1646, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1647 = !{!1648, !1649, !1650, !1651, !1652}
!1648 = !DILocalVariable(name: "item", arg: 1, scope: !1643, file: !3, line: 357, type: !238)
!1649 = !DILocalVariable(name: "lo", arg: 2, scope: !1643, file: !3, line: 357, type: !1646)
!1650 = !DILocalVariable(name: "hi", arg: 3, scope: !1643, file: !3, line: 357, type: !1646)
!1651 = !DILocalVariable(name: "val", scope: !1643, file: !3, line: 359, type: !25)
!1652 = !DILocalVariable(name: "ip", scope: !1643, file: !3, line: 360, type: !238)
!1653 = !DILocation(line: 0, scope: !1643)
!1654 = !DILocation(line: 362, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 362, column: 6)
!1656 = !{!1657, !1657, i64 0}
!1657 = !{!"short", !292, i64 0}
!1658 = !DILocation(line: 362, column: 33, scope: !1655)
!1659 = !DILocation(line: 362, column: 24, scope: !1655)
!1660 = !DILocation(line: 364, column: 6, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 364, column: 6)
!1662 = !DILocation(line: 364, column: 6, scope: !1643)
!1663 = !DILocation(line: 365, column: 28, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 365, column: 3)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 365, column: 3)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 364, column: 24)
!1667 = !DILocation(line: 366, column: 13, scope: !1664)
!1668 = !DILocation(line: 366, column: 19, scope: !1664)
!1669 = !DILocation(line: 366, column: 25, scope: !1664)
!1670 = !DILocation(line: 365, column: 46, scope: !1664)
!1671 = !DILocation(line: 365, column: 3, scope: !1665)
!1672 = distinct !{!1672, !1671, !1673}
!1673 = !DILocation(line: 366, column: 27, scope: !1665)
!1674 = !DILocation(line: 367, column: 7, scope: !1666)
!1675 = !DILocation(line: 368, column: 8, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 368, column: 7)
!1677 = !DILocation(line: 368, column: 7, scope: !1666)
!1678 = !DILocation(line: 369, column: 8, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 368, column: 13)
!1680 = !DILocation(line: 370, column: 4, scope: !1679)
!1681 = !DILocation(line: 372, column: 6, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 371, column: 13)
!1683 = !DILocation(line: 373, column: 8, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 373, column: 7)
!1685 = !DILocation(line: 372, column: 4, scope: !1682)
!1686 = !DILocation(line: 0, scope: !1666)
!1687 = !DILocation(line: 373, column: 7, scope: !1666)
!1688 = !DILocation(line: 374, column: 8, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 373, column: 13)
!1690 = !DILocation(line: 375, column: 4, scope: !1689)
!1691 = !DILocation(line: 376, column: 14, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 376, column: 13)
!1693 = !DILocation(line: 376, column: 13, scope: !1684)
!1694 = !DILocation(line: 378, column: 17, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 378, column: 3)
!1696 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 378, column: 3)
!1697 = !DILocation(line: 379, column: 13, scope: !1695)
!1698 = !DILocation(line: 379, column: 19, scope: !1695)
!1699 = !DILocation(line: 379, column: 25, scope: !1695)
!1700 = !DILocation(line: 378, column: 35, scope: !1695)
!1701 = !DILocation(line: 378, column: 3, scope: !1696)
!1702 = distinct !{!1702, !1701, !1703}
!1703 = !DILocation(line: 379, column: 27, scope: !1696)
!1704 = !DILocation(line: 380, column: 7, scope: !1666)
!1705 = !DILocation(line: 381, column: 11, scope: !1666)
!1706 = !DILocation(line: 381, column: 9, scope: !1666)
!1707 = !DILocation(line: 381, column: 3, scope: !1666)
!1708 = !DILocation(line: 383, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 382, column: 7)
!1710 = !DILocation(line: 384, column: 9, scope: !1709)
!1711 = !DILocation(line: 386, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 386, column: 6)
!1713 = !DILocation(line: 386, column: 6, scope: !1643)
!1714 = !DILocation(line: 387, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 386, column: 12)
!1716 = !DILocation(line: 388, column: 3, scope: !1715)
!1717 = !DILocation(line: 389, column: 12, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 389, column: 12)
!1719 = !DILocation(line: 389, column: 12, scope: !1712)
!1720 = !DILocation(line: 390, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 390, column: 3)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 390, column: 3)
!1723 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 389, column: 28)
!1724 = !DILocation(line: 391, column: 13, scope: !1721)
!1725 = !DILocation(line: 391, column: 19, scope: !1721)
!1726 = !DILocation(line: 391, column: 25, scope: !1721)
!1727 = !DILocation(line: 390, column: 35, scope: !1721)
!1728 = !DILocation(line: 390, column: 3, scope: !1722)
!1729 = distinct !{!1729, !1728, !1730}
!1730 = !DILocation(line: 391, column: 27, scope: !1722)
!1731 = !DILocation(line: 392, column: 7, scope: !1723)
!1732 = !DILocation(line: 393, column: 11, scope: !1723)
!1733 = !DILocation(line: 393, column: 9, scope: !1723)
!1734 = !DILocation(line: 393, column: 3, scope: !1723)
!1735 = !DILocation(line: 396, column: 1, scope: !1643)
!1736 = distinct !DISubprogram(name: "match_res_pat", scope: !3, file: !3, line: 565, type: !613, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1737)
!1737 = !{!1738, !1739, !1740, !1741, !1742}
!1738 = !DILocalVariable(name: "mol", arg: 1, scope: !1736, file: !3, line: 565, type: !270)
!1739 = !DILocalVariable(name: "pat", arg: 2, scope: !1736, file: !3, line: 565, type: !238)
!1740 = !DILocalVariable(name: "r", scope: !1736, file: !3, line: 567, type: !25)
!1741 = !DILocalVariable(name: "sp", scope: !1736, file: !3, line: 568, type: !40)
!1742 = !DILocalVariable(name: "res", scope: !1736, file: !3, line: 569, type: !57)
!1743 = !DILocation(line: 0, scope: !1736)
!1744 = !DILocation(line: 0, scope: !621, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 571, column: 2, scope: !1736)
!1746 = !DILocation(line: 700, column: 9, scope: !621, inlinedAt: !1745)
!1747 = !DILocation(line: 701, column: 7, scope: !632, inlinedAt: !1745)
!1748 = !DILocation(line: 0, scope: !632, inlinedAt: !1745)
!1749 = !DILocation(line: 701, column: 20, scope: !635, inlinedAt: !1745)
!1750 = !DILocation(line: 701, column: 2, scope: !632, inlinedAt: !1745)
!1751 = !DILocation(line: 703, column: 8, scope: !638, inlinedAt: !1745)
!1752 = !DILocation(line: 703, column: 11, scope: !638, inlinedAt: !1745)
!1753 = !DILocation(line: 704, column: 8, scope: !638, inlinedAt: !1745)
!1754 = !DILocation(line: 704, column: 11, scope: !638, inlinedAt: !1745)
!1755 = !DILocation(line: 705, column: 3, scope: !638, inlinedAt: !1745)
!1756 = !DILocation(line: 706, column: 8, scope: !646, inlinedAt: !1745)
!1757 = !DILocation(line: 706, column: 11, scope: !646, inlinedAt: !1745)
!1758 = !DILocation(line: 706, column: 4, scope: !646, inlinedAt: !1745)
!1759 = !DILocation(line: 708, column: 8, scope: !646, inlinedAt: !1745)
!1760 = !DILocation(line: 708, column: 11, scope: !646, inlinedAt: !1745)
!1761 = !DILocation(line: 0, scope: !639, inlinedAt: !1745)
!1762 = !DILocation(line: 701, column: 29, scope: !635, inlinedAt: !1745)
!1763 = !DILocation(line: 701, column: 2, scope: !635, inlinedAt: !1745)
!1764 = distinct !{!1764, !1750, !1765}
!1765 = !DILocation(line: 709, column: 2, scope: !632, inlinedAt: !1745)
!1766 = !DILocation(line: 710, column: 6, scope: !621, inlinedAt: !1745)
!1767 = !DILocation(line: 710, column: 9, scope: !621, inlinedAt: !1745)
!1768 = !DILocation(line: 711, column: 7, scope: !621, inlinedAt: !1745)
!1769 = !DILocation(line: 575, column: 2, scope: !1736)
!1770 = !DILocation(line: 577, column: 17, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 577, column: 2)
!1772 = !DILocation(line: 0, scope: !1771)
!1773 = !DILocation(line: 577, column: 2, scope: !1771)
!1774 = !DILocation(line: 578, column: 23, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 578, column: 7)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 577, column: 49)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 577, column: 2)
!1778 = !DILocation(line: 578, column: 17, scope: !1775)
!1779 = !DILocation(line: 578, column: 7, scope: !1776)
!1780 = !DILocation(line: 579, column: 24, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 579, column: 4)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 579, column: 4)
!1783 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 578, column: 31)
!1784 = !DILocation(line: 579, column: 18, scope: !1781)
!1785 = !DILocation(line: 579, column: 4, scope: !1782)
!1786 = !DILocation(line: 0, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 579, column: 42)
!1788 = !DILocation(line: 580, column: 15, scope: !1787)
!1789 = !DILocation(line: 580, column: 11, scope: !1787)
!1790 = !DILocation(line: 585, column: 31, scope: !1787)
!1791 = !DILocation(line: 585, column: 20, scope: !1787)
!1792 = !DILocation(line: 585, column: 10, scope: !1787)
!1793 = !DILocation(line: 585, column: 17, scope: !1787)
!1794 = !DILocation(line: 579, column: 38, scope: !1781)
!1795 = distinct !{!1795, !1785, !1796}
!1796 = !DILocation(line: 588, column: 4, scope: !1782)
!1797 = !DILocation(line: 577, column: 41, scope: !1777)
!1798 = distinct !{!1798, !1773, !1799}
!1799 = !DILocation(line: 590, column: 2, scope: !1771)
!1800 = !DILocation(line: 591, column: 1, scope: !1736)
!1801 = distinct !DISubprogram(name: "match_atom_pat", scope: !3, file: !3, line: 646, type: !613, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809}
!1803 = !DILocalVariable(name: "mol", arg: 1, scope: !1801, file: !3, line: 646, type: !270)
!1804 = !DILocalVariable(name: "pat", arg: 2, scope: !1801, file: !3, line: 646, type: !238)
!1805 = !DILocalVariable(name: "r", scope: !1801, file: !3, line: 648, type: !25)
!1806 = !DILocalVariable(name: "a", scope: !1801, file: !3, line: 648, type: !25)
!1807 = !DILocalVariable(name: "sp", scope: !1801, file: !3, line: 649, type: !40)
!1808 = !DILocalVariable(name: "res", scope: !1801, file: !3, line: 650, type: !57)
!1809 = !DILocalVariable(name: "ap", scope: !1801, file: !3, line: 651, type: !103)
!1810 = !DILocation(line: 0, scope: !1801)
!1811 = !DILocation(line: 653, column: 2, scope: !1801)
!1812 = !DILocation(line: 657, column: 2, scope: !1801)
!1813 = !DILocation(line: 659, column: 17, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 659, column: 2)
!1815 = !DILocation(line: 0, scope: !1814)
!1816 = !DILocation(line: 659, column: 2, scope: !1814)
!1817 = !DILocation(line: 660, column: 23, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 660, column: 7)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 659, column: 49)
!1820 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 659, column: 2)
!1821 = !DILocation(line: 660, column: 17, scope: !1818)
!1822 = !DILocation(line: 660, column: 7, scope: !1819)
!1823 = !DILocation(line: 661, column: 24, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 661, column: 4)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 661, column: 4)
!1826 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 660, column: 31)
!1827 = !DILocation(line: 661, column: 18, scope: !1824)
!1828 = !DILocation(line: 661, column: 4, scope: !1825)
!1829 = !DILocation(line: 0, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 661, column: 42)
!1831 = !DILocation(line: 662, column: 15, scope: !1830)
!1832 = !DILocation(line: 662, column: 11, scope: !1830)
!1833 = !DILocation(line: 663, column: 26, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 663, column: 9)
!1835 = !DILocation(line: 663, column: 19, scope: !1834)
!1836 = !DILocation(line: 663, column: 9, scope: !1830)
!1837 = !DILocation(line: 664, column: 27, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 664, column: 6)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 664, column: 6)
!1840 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 663, column: 34)
!1841 = !DILocation(line: 664, column: 20, scope: !1838)
!1842 = !DILocation(line: 664, column: 6, scope: !1839)
!1843 = !DILocation(line: 0, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 664, column: 42)
!1845 = !DILocation(line: 665, column: 18, scope: !1844)
!1846 = !DILocation(line: 672, column: 20, scope: !1844)
!1847 = !DILocation(line: 672, column: 11, scope: !1844)
!1848 = !DILocation(line: 671, column: 11, scope: !1844)
!1849 = !DILocation(line: 671, column: 18, scope: !1844)
!1850 = !DILocation(line: 664, column: 38, scope: !1838)
!1851 = distinct !{!1851, !1842, !1852}
!1852 = !DILocation(line: 675, column: 6, scope: !1839)
!1853 = !DILocation(line: 661, column: 38, scope: !1824)
!1854 = distinct !{!1854, !1828, !1855}
!1855 = !DILocation(line: 677, column: 4, scope: !1825)
!1856 = !DILocation(line: 659, column: 41, scope: !1820)
!1857 = distinct !{!1857, !1816, !1858}
!1858 = !DILocation(line: 679, column: 2, scope: !1814)
!1859 = !DILocation(line: 680, column: 1, scope: !1801)
!1860 = !DILocation(line: 0, scope: !621)
!1861 = !DILocation(line: 700, column: 9, scope: !621)
!1862 = !DILocation(line: 701, column: 7, scope: !632)
!1863 = !DILocation(line: 0, scope: !632)
!1864 = !DILocation(line: 701, column: 20, scope: !635)
!1865 = !DILocation(line: 701, column: 2, scope: !632)
!1866 = !DILocation(line: 703, column: 8, scope: !638)
!1867 = !DILocation(line: 703, column: 11, scope: !638)
!1868 = !DILocation(line: 704, column: 8, scope: !638)
!1869 = !DILocation(line: 704, column: 11, scope: !638)
!1870 = !DILocation(line: 705, column: 3, scope: !638)
!1871 = !DILocation(line: 706, column: 8, scope: !646)
!1872 = !DILocation(line: 706, column: 11, scope: !646)
!1873 = !DILocation(line: 706, column: 4, scope: !646)
!1874 = !DILocation(line: 708, column: 8, scope: !646)
!1875 = !DILocation(line: 708, column: 11, scope: !646)
!1876 = !DILocation(line: 0, scope: !639)
!1877 = !DILocation(line: 701, column: 29, scope: !635)
!1878 = !DILocation(line: 701, column: 2, scope: !635)
!1879 = distinct !{!1879, !1865, !1880}
!1880 = !DILocation(line: 709, column: 2, scope: !632)
!1881 = !DILocation(line: 710, column: 6, scope: !621)
!1882 = !DILocation(line: 710, column: 9, scope: !621)
!1883 = !DILocation(line: 711, column: 7, scope: !621)
!1884 = !DILocation(line: 712, column: 1, scope: !621)
