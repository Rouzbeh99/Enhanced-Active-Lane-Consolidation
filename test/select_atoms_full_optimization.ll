; ModuleID = 'select_atoms.c'
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
  br i1 %7, label %83, label %8, !dbg !294

8:                                                ; preds = %3, %74
  %9 = phi %struct.strand_t* [ %79, %74 ], [ %6, %3 ]
  %10 = phi double [ %76, %74 ], [ 0.000000e+00, %3 ]
  %11 = phi i32 [ %75, %74 ], [ 0, %3 ]
  %12 = phi <2 x double> [ %77, %74 ], [ zeroinitializer, %3 ]
  call void @llvm.dbg.value(metadata double %10, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %11, metadata !278, metadata !DIExpression()), !dbg !285
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 2, !dbg !295
  %14 = load i32, i32* %13, align 4, !dbg !295, !tbaa !299
  %15 = and i32 %14, 1, !dbg !302
  %16 = icmp eq i32 %15, 0, !dbg !302
  br i1 %16, label %74, label %17, !dbg !303

17:                                               ; preds = %8
  call void @llvm.dbg.value(metadata double %10, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %11, metadata !278, metadata !DIExpression()), !dbg !285
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 5, !dbg !304
  %19 = load i32, i32* %18, align 8, !dbg !304, !tbaa !308
  %20 = icmp sgt i32 %19, 0, !dbg !309
  br i1 %20, label %21, label %74, !dbg !310

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 7, !dbg !311
  %23 = load %struct.residue_t**, %struct.residue_t*** %22, align 8, !dbg !311, !tbaa !313
  %24 = zext i32 %19 to i64, !dbg !310
  br label %25, !dbg !310

25:                                               ; preds = %21, %68
  %26 = phi i64 [ 0, %21 ], [ %72, %68 ]
  %27 = phi double [ %10, %21 ], [ %70, %68 ]
  %28 = phi i32 [ %11, %21 ], [ %69, %68 ]
  %29 = phi <2 x double> [ %12, %21 ], [ %71, %68 ]
  call void @llvm.dbg.value(metadata double %27, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %26, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %28, metadata !278, metadata !DIExpression()), !dbg !285
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %23, i64 %26, !dbg !314
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8, !dbg !314, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %31, metadata !280, metadata !DIExpression()), !dbg !285
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 6, !dbg !315
  %33 = load i32, i32* %32, align 8, !dbg !315, !tbaa !317
  %34 = and i32 %33, 1, !dbg !319
  %35 = icmp eq i32 %34, 0, !dbg !319
  br i1 %35, label %68, label %36, !dbg !320

36:                                               ; preds = %25
  call void @llvm.dbg.value(metadata double %27, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %28, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !277, metadata !DIExpression()), !dbg !285
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 15, !dbg !321
  %38 = load i32, i32* %37, align 8, !dbg !321, !tbaa !325
  %39 = icmp sgt i32 %38, 0, !dbg !326
  br i1 %39, label %40, label %68, !dbg !327

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 17, !dbg !328
  %42 = load %struct.atom_t*, %struct.atom_t** %41, align 8, !dbg !328, !tbaa !330
  %43 = zext i32 %38 to i64, !dbg !327
  br label %44, !dbg !327

44:                                               ; preds = %40, %62
  %45 = phi i64 [ 0, %40 ], [ %66, %62 ]
  %46 = phi double [ %27, %40 ], [ %64, %62 ]
  %47 = phi i32 [ %28, %40 ], [ %63, %62 ]
  %48 = phi <2 x double> [ %29, %40 ], [ %65, %62 ]
  call void @llvm.dbg.value(metadata double %46, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %47, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %45, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !281, metadata !DIExpression()), !dbg !285
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %45, i32 2, !dbg !331
  %50 = load i32, i32* %49, align 8, !dbg !331, !tbaa !333
  %51 = and i32 %50, 1, !dbg !336
  %52 = icmp eq i32 %51, 0, !dbg !336
  br i1 %52, label %62, label %53, !dbg !337

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %45, i32 17, i64 0, !dbg !338
  %55 = bitcast double* %54 to <2 x double>*, !dbg !338
  %56 = load <2 x double>, <2 x double>* %55, align 8, !dbg !338, !tbaa !340
  %57 = fadd <2 x double> %48, %56, !dbg !341
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %45, i32 17, i64 2, !dbg !342
  %59 = load double, double* %58, align 8, !dbg !342, !tbaa !340
  %60 = fadd double %46, %59, !dbg !343
  call void @llvm.dbg.value(metadata double %60, metadata !284, metadata !DIExpression()), !dbg !285
  %61 = add nsw i32 %47, 1, !dbg !344
  call void @llvm.dbg.value(metadata i32 %61, metadata !278, metadata !DIExpression()), !dbg !285
  br label %62, !dbg !345

62:                                               ; preds = %44, %53
  %63 = phi i32 [ %61, %53 ], [ %47, %44 ], !dbg !289
  %64 = phi double [ %60, %53 ], [ %46, %44 ], !dbg !285
  %65 = phi <2 x double> [ %57, %53 ], [ %48, %44 ], !dbg !285
  call void @llvm.dbg.value(metadata double %64, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %63, metadata !278, metadata !DIExpression()), !dbg !285
  %66 = add nuw nsw i64 %45, 1, !dbg !346
  call void @llvm.dbg.value(metadata i64 %66, metadata !277, metadata !DIExpression()), !dbg !285
  %67 = icmp ult i64 %66, %43, !dbg !326
  br i1 %67, label %44, label %68, !dbg !327, !llvm.loop !347

68:                                               ; preds = %62, %36, %25
  %69 = phi i32 [ %28, %25 ], [ %28, %36 ], [ %63, %62 ], !dbg !349
  %70 = phi double [ %27, %25 ], [ %27, %36 ], [ %64, %62 ], !dbg !350
  %71 = phi <2 x double> [ %29, %25 ], [ %29, %36 ], [ %65, %62 ], !dbg !351
  call void @llvm.dbg.value(metadata double %70, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %69, metadata !278, metadata !DIExpression()), !dbg !285
  %72 = add nuw nsw i64 %26, 1, !dbg !352
  call void @llvm.dbg.value(metadata i64 %72, metadata !276, metadata !DIExpression()), !dbg !285
  %73 = icmp ult i64 %72, %24, !dbg !309
  br i1 %73, label %25, label %74, !dbg !310, !llvm.loop !353

74:                                               ; preds = %68, %17, %8
  %75 = phi i32 [ %11, %8 ], [ %11, %17 ], [ %69, %68 ], !dbg !349
  %76 = phi double [ %10, %8 ], [ %10, %17 ], [ %70, %68 ], !dbg !350
  %77 = phi <2 x double> [ %12, %8 ], [ %12, %17 ], [ %71, %68 ], !dbg !351
  call void @llvm.dbg.value(metadata double %76, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %75, metadata !278, metadata !DIExpression()), !dbg !285
  %78 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 4, !dbg !355
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !279, metadata !DIExpression()), !dbg !285
  %79 = load %struct.strand_t*, %struct.strand_t** %78, align 8, !dbg !289, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %79, metadata !279, metadata !DIExpression()), !dbg !285
  %80 = icmp eq %struct.strand_t* %79, null, !dbg !294
  br i1 %80, label %81, label %8, !dbg !294, !llvm.loop !356

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i32 %75, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %76, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %75, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %76, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %75, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %76, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %75, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %76, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %75, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double %76, metadata !284, metadata !DIExpression()), !dbg !285
  %82 = icmp eq i32 %75, 0, !dbg !358
  br i1 %82, label %83, label %86, !dbg !360

83:                                               ; preds = %3, %81
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !361, !tbaa !290
  %85 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %1) #11, !dbg !363
  br label %94, !dbg !364

86:                                               ; preds = %81
  %87 = sitofp i32 %75 to double, !dbg !365
  %88 = insertelement <2 x double> undef, double %87, i32 0, !dbg !367
  %89 = shufflevector <2 x double> %88, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !367
  %90 = fdiv <2 x double> %77, %89, !dbg !367
  %91 = bitcast double* %2 to <2 x double>*, !dbg !368
  store <2 x double> %90, <2 x double>* %91, align 8, !dbg !368, !tbaa !340
  %92 = fdiv double %76, %87, !dbg !369
  %93 = getelementptr inbounds double, double* %2, i64 2, !dbg !370
  store double %92, double* %93, align 8, !dbg !371, !tbaa !340
  br label %94, !dbg !372

94:                                               ; preds = %86, %83
  %95 = phi i32 [ 1, %83 ], [ 0, %86 ], !dbg !285
  ret i32 %95, !dbg !373
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* readonly %0, i8* %1) local_unnamed_addr #0 !dbg !374 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !378, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* %1, metadata !379, metadata !DIExpression()), !dbg !383
  %5 = icmp eq i8* %1, null, !dbg !384
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !383
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !383, !tbaa !290
  %8 = icmp eq %struct.strand_t* %7, null, !dbg !383
  br i1 %5, label %9, label %81, !dbg !386

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !387, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !394, metadata !DIExpression()), !dbg !396
  br i1 %8, label %1054, label %10, !dbg !399

10:                                               ; preds = %9, %77
  %11 = phi %struct.strand_t* [ %79, %77 ], [ %7, %9 ]
  %12 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 2, !dbg !401
  %13 = load i32, i32* %12, align 4, !dbg !404, !tbaa !299
  %14 = or i32 %13, 1, !dbg !404
  store i32 %14, i32* %12, align 4, !dbg !404, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !393, metadata !DIExpression()), !dbg !396
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 5, !dbg !405
  %16 = load i32, i32* %15, align 8, !dbg !405, !tbaa !308
  %17 = icmp sgt i32 %16, 0, !dbg !408
  br i1 %17, label %18, label %77, !dbg !409

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 7, !dbg !410
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !410, !tbaa !313
  %21 = zext i32 %16 to i64, !dbg !409
  br label %22, !dbg !409

22:                                               ; preds = %74, %18
  %23 = phi i64 [ 0, %18 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !393, metadata !DIExpression()), !dbg !396
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %23, !dbg !412
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !412, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !395, metadata !DIExpression()), !dbg !396
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 6, !dbg !413
  %27 = load i32, i32* %26, align 8, !dbg !414, !tbaa !317
  %28 = or i32 %27, 1, !dbg !414
  store i32 %28, i32* %26, align 8, !dbg !414, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !392, metadata !DIExpression()), !dbg !396
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 15, !dbg !415
  %30 = load i32, i32* %29, align 8, !dbg !415, !tbaa !325
  %31 = icmp sgt i32 %30, 0, !dbg !418
  br i1 %31, label %32, label %74, !dbg !419

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 17, !dbg !420
  %34 = load %struct.atom_t*, %struct.atom_t** %33, align 8, !dbg !420, !tbaa !330
  %35 = zext i32 %30 to i64, !dbg !419
  %36 = add nsw i64 %35, -1, !dbg !419
  %37 = and i64 %35, 3, !dbg !419
  %38 = icmp ult i64 %36, 3, !dbg !419
  br i1 %38, label %62, label %39, !dbg !419

39:                                               ; preds = %32
  %40 = sub nsw i64 %35, %37, !dbg !419
  br label %41, !dbg !419

41:                                               ; preds = %41, %39
  %42 = phi i64 [ 0, %39 ], [ %59, %41 ]
  %43 = phi i64 [ %40, %39 ], [ %60, %41 ]
  call void @llvm.dbg.value(metadata i64 %42, metadata !392, metadata !DIExpression()), !dbg !396
  %44 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %42, i32 2, !dbg !421
  %45 = load i32, i32* %44, align 8, !dbg !422, !tbaa !333
  %46 = or i32 %45, 1, !dbg !422
  store i32 %46, i32* %44, align 8, !dbg !422, !tbaa !333
  %47 = or i64 %42, 1, !dbg !423
  call void @llvm.dbg.value(metadata i64 %47, metadata !392, metadata !DIExpression()), !dbg !396
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %47, i32 2, !dbg !421
  %49 = load i32, i32* %48, align 8, !dbg !422, !tbaa !333
  %50 = or i32 %49, 1, !dbg !422
  store i32 %50, i32* %48, align 8, !dbg !422, !tbaa !333
  %51 = or i64 %42, 2, !dbg !423
  call void @llvm.dbg.value(metadata i64 %51, metadata !392, metadata !DIExpression()), !dbg !396
  %52 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %51, i32 2, !dbg !421
  %53 = load i32, i32* %52, align 8, !dbg !422, !tbaa !333
  %54 = or i32 %53, 1, !dbg !422
  store i32 %54, i32* %52, align 8, !dbg !422, !tbaa !333
  %55 = or i64 %42, 3, !dbg !423
  call void @llvm.dbg.value(metadata i64 %55, metadata !392, metadata !DIExpression()), !dbg !396
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %55, i32 2, !dbg !421
  %57 = load i32, i32* %56, align 8, !dbg !422, !tbaa !333
  %58 = or i32 %57, 1, !dbg !422
  store i32 %58, i32* %56, align 8, !dbg !422, !tbaa !333
  %59 = add nuw nsw i64 %42, 4, !dbg !423
  call void @llvm.dbg.value(metadata i64 %59, metadata !392, metadata !DIExpression()), !dbg !396
  %60 = add i64 %43, -4, !dbg !419
  %61 = icmp eq i64 %60, 0, !dbg !419
  br i1 %61, label %62, label %41, !dbg !419, !llvm.loop !424

62:                                               ; preds = %41, %32
  %63 = phi i64 [ 0, %32 ], [ %59, %41 ]
  %64 = icmp eq i64 %37, 0, !dbg !419
  br i1 %64, label %74, label %65, !dbg !419

65:                                               ; preds = %62, %65
  %66 = phi i64 [ %71, %65 ], [ %63, %62 ]
  %67 = phi i64 [ %72, %65 ], [ %37, %62 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !392, metadata !DIExpression()), !dbg !396
  %68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %66, i32 2, !dbg !421
  %69 = load i32, i32* %68, align 8, !dbg !422, !tbaa !333
  %70 = or i32 %69, 1, !dbg !422
  store i32 %70, i32* %68, align 8, !dbg !422, !tbaa !333
  %71 = add nuw nsw i64 %66, 1, !dbg !423
  call void @llvm.dbg.value(metadata i64 %71, metadata !392, metadata !DIExpression()), !dbg !396
  %72 = add i64 %67, -1, !dbg !419
  %73 = icmp eq i64 %72, 0, !dbg !419
  br i1 %73, label %74, label %65, !dbg !419, !llvm.loop !426

74:                                               ; preds = %62, %65, %22
  %75 = add nuw nsw i64 %23, 1, !dbg !428
  call void @llvm.dbg.value(metadata i64 %75, metadata !393, metadata !DIExpression()), !dbg !396
  %76 = icmp eq i64 %75, %21, !dbg !408
  br i1 %76, label %77, label %22, !dbg !409, !llvm.loop !429

77:                                               ; preds = %74, %10
  %78 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 4, !dbg !431
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !394, metadata !DIExpression()), !dbg !396
  %79 = load %struct.strand_t*, %struct.strand_t** %78, align 8, !dbg !432, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %79, metadata !394, metadata !DIExpression()), !dbg !396
  %80 = icmp eq %struct.strand_t* %79, null, !dbg !399
  br i1 %80, label %1054, label %10, !dbg !399, !llvm.loop !433

81:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !435, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !440, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !440, metadata !DIExpression()), !dbg !442
  br i1 %8, label %224, label %82, !dbg !444

82:                                               ; preds = %81, %149
  %83 = phi %struct.strand_t* [ %151, %149 ], [ %7, %81 ]
  %84 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %83, i64 0, i32 2, !dbg !446
  %85 = load i32, i32* %84, align 4, !dbg !449, !tbaa !299
  %86 = and i32 %85, -129, !dbg !449
  store i32 %86, i32* %84, align 4, !dbg !449, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !439, metadata !DIExpression()), !dbg !442
  %87 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %83, i64 0, i32 5, !dbg !450
  %88 = load i32, i32* %87, align 8, !dbg !450, !tbaa !308
  %89 = icmp sgt i32 %88, 0, !dbg !453
  br i1 %89, label %90, label %149, !dbg !454

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %83, i64 0, i32 7, !dbg !455
  %92 = load %struct.residue_t**, %struct.residue_t*** %91, align 8, !dbg !455, !tbaa !313
  %93 = zext i32 %88 to i64, !dbg !454
  br label %94, !dbg !454

94:                                               ; preds = %146, %90
  %95 = phi i64 [ 0, %90 ], [ %147, %146 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !439, metadata !DIExpression()), !dbg !442
  %96 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %92, i64 %95, !dbg !457
  %97 = load %struct.residue_t*, %struct.residue_t** %96, align 8, !dbg !457, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %97, metadata !441, metadata !DIExpression()), !dbg !442
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %97, i64 0, i32 6, !dbg !458
  %99 = load i32, i32* %98, align 8, !dbg !459, !tbaa !317
  %100 = and i32 %99, -129, !dbg !459
  store i32 %100, i32* %98, align 8, !dbg !459, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !442
  %101 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %97, i64 0, i32 15, !dbg !460
  %102 = load i32, i32* %101, align 8, !dbg !460, !tbaa !325
  %103 = icmp sgt i32 %102, 0, !dbg !463
  br i1 %103, label %104, label %146, !dbg !464

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %97, i64 0, i32 17, !dbg !465
  %106 = load %struct.atom_t*, %struct.atom_t** %105, align 8, !dbg !465, !tbaa !330
  %107 = zext i32 %102 to i64, !dbg !464
  %108 = add nsw i64 %107, -1, !dbg !464
  %109 = and i64 %107, 3, !dbg !464
  %110 = icmp ult i64 %108, 3, !dbg !464
  br i1 %110, label %134, label %111, !dbg !464

111:                                              ; preds = %104
  %112 = sub nsw i64 %107, %109, !dbg !464
  br label %113, !dbg !464

113:                                              ; preds = %113, %111
  %114 = phi i64 [ 0, %111 ], [ %131, %113 ]
  %115 = phi i64 [ %112, %111 ], [ %132, %113 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !438, metadata !DIExpression()), !dbg !442
  %116 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i64 %114, i32 2, !dbg !466
  %117 = load i32, i32* %116, align 8, !dbg !467, !tbaa !333
  %118 = and i32 %117, -129, !dbg !467
  store i32 %118, i32* %116, align 8, !dbg !467, !tbaa !333
  %119 = or i64 %114, 1, !dbg !468
  call void @llvm.dbg.value(metadata i64 %119, metadata !438, metadata !DIExpression()), !dbg !442
  %120 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i64 %119, i32 2, !dbg !466
  %121 = load i32, i32* %120, align 8, !dbg !467, !tbaa !333
  %122 = and i32 %121, -129, !dbg !467
  store i32 %122, i32* %120, align 8, !dbg !467, !tbaa !333
  %123 = or i64 %114, 2, !dbg !468
  call void @llvm.dbg.value(metadata i64 %123, metadata !438, metadata !DIExpression()), !dbg !442
  %124 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i64 %123, i32 2, !dbg !466
  %125 = load i32, i32* %124, align 8, !dbg !467, !tbaa !333
  %126 = and i32 %125, -129, !dbg !467
  store i32 %126, i32* %124, align 8, !dbg !467, !tbaa !333
  %127 = or i64 %114, 3, !dbg !468
  call void @llvm.dbg.value(metadata i64 %127, metadata !438, metadata !DIExpression()), !dbg !442
  %128 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i64 %127, i32 2, !dbg !466
  %129 = load i32, i32* %128, align 8, !dbg !467, !tbaa !333
  %130 = and i32 %129, -129, !dbg !467
  store i32 %130, i32* %128, align 8, !dbg !467, !tbaa !333
  %131 = add nuw nsw i64 %114, 4, !dbg !468
  call void @llvm.dbg.value(metadata i64 %131, metadata !438, metadata !DIExpression()), !dbg !442
  %132 = add i64 %115, -4, !dbg !464
  %133 = icmp eq i64 %132, 0, !dbg !464
  br i1 %133, label %134, label %113, !dbg !464, !llvm.loop !469

134:                                              ; preds = %113, %104
  %135 = phi i64 [ 0, %104 ], [ %131, %113 ]
  %136 = icmp eq i64 %109, 0, !dbg !464
  br i1 %136, label %146, label %137, !dbg !464

137:                                              ; preds = %134, %137
  %138 = phi i64 [ %143, %137 ], [ %135, %134 ]
  %139 = phi i64 [ %144, %137 ], [ %109, %134 ]
  call void @llvm.dbg.value(metadata i64 %138, metadata !438, metadata !DIExpression()), !dbg !442
  %140 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i64 %138, i32 2, !dbg !466
  %141 = load i32, i32* %140, align 8, !dbg !467, !tbaa !333
  %142 = and i32 %141, -129, !dbg !467
  store i32 %142, i32* %140, align 8, !dbg !467, !tbaa !333
  %143 = add nuw nsw i64 %138, 1, !dbg !468
  call void @llvm.dbg.value(metadata i64 %143, metadata !438, metadata !DIExpression()), !dbg !442
  %144 = add i64 %139, -1, !dbg !464
  %145 = icmp eq i64 %144, 0, !dbg !464
  br i1 %145, label %146, label %137, !dbg !464, !llvm.loop !471

146:                                              ; preds = %134, %137, %94
  %147 = add nuw nsw i64 %95, 1, !dbg !472
  call void @llvm.dbg.value(metadata i64 %147, metadata !439, metadata !DIExpression()), !dbg !442
  %148 = icmp eq i64 %147, %93, !dbg !453
  br i1 %148, label %149, label %94, !dbg !454, !llvm.loop !473

149:                                              ; preds = %146, %82
  %150 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %83, i64 0, i32 4, !dbg !475
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !440, metadata !DIExpression()), !dbg !442
  %151 = load %struct.strand_t*, %struct.strand_t** %150, align 8, !dbg !476, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %151, metadata !440, metadata !DIExpression()), !dbg !442
  %152 = icmp eq %struct.strand_t* %151, null, !dbg !444
  br i1 %152, label %153, label %82, !dbg !444, !llvm.loop !477

153:                                              ; preds = %149, %220
  %154 = phi %struct.strand_t* [ %222, %220 ], [ %7, %149 ]
  %155 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %154, i64 0, i32 2, !dbg !479
  %156 = load i32, i32* %155, align 4, !dbg !491, !tbaa !299
  %157 = and i32 %156, -2, !dbg !491
  store i32 %157, i32* %155, align 4, !dbg !491, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !487, metadata !DIExpression()), !dbg !492
  %158 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %154, i64 0, i32 5, !dbg !493
  %159 = load i32, i32* %158, align 8, !dbg !493, !tbaa !308
  %160 = icmp sgt i32 %159, 0, !dbg !496
  br i1 %160, label %161, label %220, !dbg !497

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %154, i64 0, i32 7, !dbg !498
  %163 = load %struct.residue_t**, %struct.residue_t*** %162, align 8, !dbg !498, !tbaa !313
  %164 = zext i32 %159 to i64, !dbg !497
  br label %165, !dbg !497

165:                                              ; preds = %217, %161
  %166 = phi i64 [ 0, %161 ], [ %218, %217 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !487, metadata !DIExpression()), !dbg !492
  %167 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %163, i64 %166, !dbg !500
  %168 = load %struct.residue_t*, %struct.residue_t** %167, align 8, !dbg !500, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %168, metadata !489, metadata !DIExpression()), !dbg !492
  %169 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %168, i64 0, i32 6, !dbg !501
  %170 = load i32, i32* %169, align 8, !dbg !502, !tbaa !317
  %171 = and i32 %170, -2, !dbg !502
  store i32 %171, i32* %169, align 8, !dbg !502, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !492
  %172 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %168, i64 0, i32 15, !dbg !503
  %173 = load i32, i32* %172, align 8, !dbg !503, !tbaa !325
  %174 = icmp sgt i32 %173, 0, !dbg !506
  br i1 %174, label %175, label %217, !dbg !507

175:                                              ; preds = %165
  %176 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %168, i64 0, i32 17, !dbg !508
  %177 = load %struct.atom_t*, %struct.atom_t** %176, align 8, !dbg !508, !tbaa !330
  %178 = zext i32 %173 to i64, !dbg !507
  %179 = add nsw i64 %178, -1, !dbg !507
  %180 = and i64 %178, 3, !dbg !507
  %181 = icmp ult i64 %179, 3, !dbg !507
  br i1 %181, label %205, label %182, !dbg !507

182:                                              ; preds = %175
  %183 = sub nsw i64 %178, %180, !dbg !507
  br label %184, !dbg !507

184:                                              ; preds = %184, %182
  %185 = phi i64 [ 0, %182 ], [ %202, %184 ]
  %186 = phi i64 [ %183, %182 ], [ %203, %184 ]
  call void @llvm.dbg.value(metadata i64 %185, metadata !486, metadata !DIExpression()), !dbg !492
  %187 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i64 %185, i32 2, !dbg !509
  %188 = load i32, i32* %187, align 8, !dbg !510, !tbaa !333
  %189 = and i32 %188, -2, !dbg !510
  store i32 %189, i32* %187, align 8, !dbg !510, !tbaa !333
  %190 = or i64 %185, 1, !dbg !511
  call void @llvm.dbg.value(metadata i64 %190, metadata !486, metadata !DIExpression()), !dbg !492
  %191 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i64 %190, i32 2, !dbg !509
  %192 = load i32, i32* %191, align 8, !dbg !510, !tbaa !333
  %193 = and i32 %192, -2, !dbg !510
  store i32 %193, i32* %191, align 8, !dbg !510, !tbaa !333
  %194 = or i64 %185, 2, !dbg !511
  call void @llvm.dbg.value(metadata i64 %194, metadata !486, metadata !DIExpression()), !dbg !492
  %195 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i64 %194, i32 2, !dbg !509
  %196 = load i32, i32* %195, align 8, !dbg !510, !tbaa !333
  %197 = and i32 %196, -2, !dbg !510
  store i32 %197, i32* %195, align 8, !dbg !510, !tbaa !333
  %198 = or i64 %185, 3, !dbg !511
  call void @llvm.dbg.value(metadata i64 %198, metadata !486, metadata !DIExpression()), !dbg !492
  %199 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i64 %198, i32 2, !dbg !509
  %200 = load i32, i32* %199, align 8, !dbg !510, !tbaa !333
  %201 = and i32 %200, -2, !dbg !510
  store i32 %201, i32* %199, align 8, !dbg !510, !tbaa !333
  %202 = add nuw nsw i64 %185, 4, !dbg !511
  call void @llvm.dbg.value(metadata i64 %202, metadata !486, metadata !DIExpression()), !dbg !492
  %203 = add i64 %186, -4, !dbg !507
  %204 = icmp eq i64 %203, 0, !dbg !507
  br i1 %204, label %205, label %184, !dbg !507, !llvm.loop !512

205:                                              ; preds = %184, %175
  %206 = phi i64 [ 0, %175 ], [ %202, %184 ]
  %207 = icmp eq i64 %180, 0, !dbg !507
  br i1 %207, label %217, label %208, !dbg !507

208:                                              ; preds = %205, %208
  %209 = phi i64 [ %214, %208 ], [ %206, %205 ]
  %210 = phi i64 [ %215, %208 ], [ %180, %205 ]
  call void @llvm.dbg.value(metadata i64 %209, metadata !486, metadata !DIExpression()), !dbg !492
  %211 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i64 %209, i32 2, !dbg !509
  %212 = load i32, i32* %211, align 8, !dbg !510, !tbaa !333
  %213 = and i32 %212, -2, !dbg !510
  store i32 %213, i32* %211, align 8, !dbg !510, !tbaa !333
  %214 = add nuw nsw i64 %209, 1, !dbg !511
  call void @llvm.dbg.value(metadata i64 %214, metadata !486, metadata !DIExpression()), !dbg !492
  %215 = add i64 %210, -1, !dbg !507
  %216 = icmp eq i64 %215, 0, !dbg !507
  br i1 %216, label %217, label %208, !dbg !507, !llvm.loop !514

217:                                              ; preds = %205, %208, %165
  %218 = add nuw nsw i64 %166, 1, !dbg !515
  call void @llvm.dbg.value(metadata i64 %218, metadata !487, metadata !DIExpression()), !dbg !492
  %219 = icmp eq i64 %218, %164, !dbg !496
  br i1 %219, label %220, label %165, !dbg !497, !llvm.loop !516

220:                                              ; preds = %217, %153
  %221 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %154, i64 0, i32 4, !dbg !518
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !488, metadata !DIExpression()), !dbg !492
  %222 = load %struct.strand_t*, %struct.strand_t** %221, align 8, !dbg !519, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %222, metadata !488, metadata !DIExpression()), !dbg !492
  %223 = icmp eq %struct.strand_t* %222, null, !dbg !520
  br i1 %223, label %224, label %153, !dbg !520, !llvm.loop !521

224:                                              ; preds = %220, %81
  call void @llvm.dbg.value(metadata i8* %1, metadata !380, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* undef, metadata !381, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* %1, metadata !380, metadata !DIExpression()), !dbg !383
  %225 = tail call i8* @strchr(i8* nonnull %1, i32 124) #12, !dbg !523
  call void @llvm.dbg.value(metadata i8* %225, metadata !381, metadata !DIExpression()), !dbg !383
  %226 = bitcast i32* %3 to i8*, !dbg !525
  %227 = bitcast i32* %4 to i8*, !dbg !525
  %228 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !537
  br label %229, !dbg !551

229:                                              ; preds = %224, %984
  %230 = phi i8* [ %225, %224 ], [ %912, %984 ]
  %231 = phi i8* [ %1, %224 ], [ %241, %984 ]
  call void @llvm.dbg.value(metadata i8* %230, metadata !381, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* %231, metadata !380, metadata !DIExpression()), !dbg !383
  %232 = icmp eq i8* %230, null, !dbg !552
  br i1 %232, label %238, label %233, !dbg !554

233:                                              ; preds = %229
  %234 = ptrtoint i8* %230 to i64, !dbg !555
  %235 = ptrtoint i8* %231 to i64, !dbg !555
  %236 = sub i64 %234, %235, !dbg !555
  call void @llvm.dbg.value(metadata i64 %236, metadata !382, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !383
  %237 = getelementptr inbounds i8, i8* %230, i64 1, !dbg !557
  call void @llvm.dbg.value(metadata i8* %237, metadata !381, metadata !DIExpression()), !dbg !383
  br label %240, !dbg !558

238:                                              ; preds = %229
  %239 = tail call i64 @strlen(i8* nonnull %231) #12, !dbg !559
  call void @llvm.dbg.value(metadata i64 %239, metadata !382, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !383
  br label %240

240:                                              ; preds = %238, %233
  %241 = phi i8* [ %237, %233 ], [ null, %238 ], !dbg !560
  %242 = phi i64 [ %236, %233 ], [ %239, %238 ]
  %243 = trunc i64 %242 to i32, !dbg !561
  call void @llvm.dbg.value(metadata i32 %243, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* %241, metadata !381, metadata !DIExpression()), !dbg !383
  %244 = icmp sgt i32 %243, 999, !dbg !562
  br i1 %244, label %245, label %248, !dbg !564

245:                                              ; preds = %240
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !565, !tbaa !290
  %247 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %246) #11, !dbg !567
  br label %1054, !dbg !568

248:                                              ; preds = %240
  %249 = shl i64 %242, 32, !dbg !569
  %250 = ashr exact i64 %249, 32, !dbg !569
  %251 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* nonnull %231, i64 %250) #13, !dbg !570
  %252 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %250, !dbg !571
  store i8 0, i8* %252, align 1, !dbg !572, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !528, metadata !DIExpression()) #13, !dbg !525
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !529, metadata !DIExpression()) #13, !dbg !525
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %226) #13, !dbg !574
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %227) #13, !dbg !574
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !530, metadata !DIExpression()) #13, !dbg !525
  %253 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !575, !tbaa !573
  %254 = icmp eq i8 %253, 58, !dbg !577
  br i1 %254, label %255, label %256, !dbg !578

255:                                              ; preds = %248
  store i8* null, i8** @spart, align 8, !dbg !579, !tbaa !290
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), metadata !530, metadata !DIExpression()) #13, !dbg !525
  br label %261, !dbg !581

256:                                              ; preds = %248
  %257 = tail call i8* @strtok(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !582
  store i8* %257, i8** @spart, align 8, !dbg !584, !tbaa !290
  %258 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %257) #12, !dbg !585
  %259 = add i64 %258, 1, !dbg !586
  %260 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %259, !dbg !587
  call void @llvm.dbg.value(metadata i8* %260, metadata !530, metadata !DIExpression()) #13, !dbg !525
  br label %261

261:                                              ; preds = %256, %255
  %262 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), %255 ], [ %260, %256 ], !dbg !588
  call void @llvm.dbg.value(metadata i8* %262, metadata !530, metadata !DIExpression()) #13, !dbg !525
  %263 = load i8, i8* %262, align 1, !dbg !589, !tbaa !573
  %264 = icmp eq i8 %263, 58, !dbg !591
  br i1 %264, label %265, label %266, !dbg !592

265:                                              ; preds = %261
  store i8* null, i8** @rpart, align 8, !dbg !593, !tbaa !290
  br label %270, !dbg !595

266:                                              ; preds = %261
  %267 = tail call i8* @strtok(i8* nonnull %262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !596
  store i8* %267, i8** @rpart, align 8, !dbg !598, !tbaa !290
  %268 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %267) #12, !dbg !599
  %269 = add i64 %268, 1, !dbg !600
  call void @llvm.dbg.value(metadata i8* %272, metadata !530, metadata !DIExpression()) #13, !dbg !525
  br label %270

270:                                              ; preds = %266, %265
  %271 = phi i64 [ %269, %266 ], [ 1, %265 ]
  %272 = getelementptr inbounds i8, i8* %262, i64 %271, !dbg !601
  call void @llvm.dbg.value(metadata i8* %272, metadata !530, metadata !DIExpression()) #13, !dbg !525
  %273 = tail call i8* @strtok(i8* nonnull %272, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !602
  store i8* %273, i8** @apart, align 8, !dbg !603, !tbaa !290
  %274 = load i8*, i8** @spart, align 8, !dbg !604, !tbaa !290
  %275 = icmp eq i8* %274, null, !dbg !604
  br i1 %275, label %444, label %276, !dbg !605

276:                                              ; preds = %270
  %277 = tail call i8* @strtok(i8* nonnull %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !606
  call void @llvm.dbg.value(metadata i8* %277, metadata !531, metadata !DIExpression()) #13, !dbg !525
  call void @llvm.dbg.value(metadata i32* %3, metadata !532, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  call void @llvm.dbg.value(metadata i32* %4, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  %278 = call fastcc i32 @is_pattern(i8* %277, i32* nonnull %3, i32* nonnull %4) #13, !dbg !607
  %279 = icmp eq i32 %278, 0, !dbg !607
  br i1 %279, label %313, label %280, !dbg !608

280:                                              ; preds = %276
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !609, metadata !DIExpression()) #13, !dbg !616
  call void @llvm.dbg.value(metadata i8* %277, metadata !614, metadata !DIExpression()) #13, !dbg !616
  call void @llvm.dbg.value(metadata i8* %277, metadata !618, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !623, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !625, metadata !DIExpression()) #13, !dbg !626
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !628, !tbaa !573
  call void @llvm.dbg.value(metadata i8* %277, metadata !624, metadata !DIExpression()) #13, !dbg !626
  br label %281, !dbg !629

281:                                              ; preds = %292, %280
  %282 = phi i8* [ %277, %280 ], [ %294, %292 ], !dbg !631
  %283 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %280 ], [ %293, %292 ], !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %282, metadata !624, metadata !DIExpression()) #13, !dbg !626
  %284 = load i8, i8* %282, align 1, !dbg !632, !tbaa !573
  switch i8 %284, label %290 [
    i8 0, label %295
    i8 42, label %285
    i8 63, label %288
  ], !dbg !634

285:                                              ; preds = %281
  %286 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !635
  call void @llvm.dbg.value(metadata i8* %286, metadata !625, metadata !DIExpression()) #13, !dbg !626
  store i8 46, i8* %283, align 1, !dbg !639, !tbaa !573
  %287 = getelementptr inbounds i8, i8* %283, i64 2, !dbg !640
  call void @llvm.dbg.value(metadata i8* %287, metadata !625, metadata !DIExpression()) #13, !dbg !626
  store i8 42, i8* %286, align 1, !dbg !641, !tbaa !573
  br label %292, !dbg !642

288:                                              ; preds = %281
  %289 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !643
  call void @llvm.dbg.value(metadata i8* %289, metadata !625, metadata !DIExpression()) #13, !dbg !626
  store i8 46, i8* %283, align 1, !dbg !645, !tbaa !573
  br label %292, !dbg !646

290:                                              ; preds = %281
  %291 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !647
  call void @llvm.dbg.value(metadata i8* %291, metadata !625, metadata !DIExpression()) #13, !dbg !626
  store i8 %284, i8* %283, align 1, !dbg !648, !tbaa !573
  br label %292

292:                                              ; preds = %290, %288, %285
  %293 = phi i8* [ %287, %285 ], [ %289, %288 ], [ %291, %290 ], !dbg !649
  call void @llvm.dbg.value(metadata i8* %293, metadata !625, metadata !DIExpression()) #13, !dbg !626
  %294 = getelementptr inbounds i8, i8* %282, i64 1, !dbg !650
  call void @llvm.dbg.value(metadata i8* %294, metadata !624, metadata !DIExpression()) #13, !dbg !626
  br label %281, !dbg !651, !llvm.loop !652

295:                                              ; preds = %281
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  call void @llvm.dbg.value(metadata i8* %283, metadata !625, metadata !DIExpression()) #13, !dbg !626
  %296 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !654
  call void @llvm.dbg.value(metadata i8* %296, metadata !625, metadata !DIExpression()) #13, !dbg !626
  store i8 36, i8* %283, align 1, !dbg !655, !tbaa !573
  store i8 0, i8* %296, align 1, !dbg !656, !tbaa !573
  %297 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !657
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !615, metadata !DIExpression()) #13, !dbg !616
  %298 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !658, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %298, metadata !615, metadata !DIExpression()) #13, !dbg !616
  %299 = icmp eq %struct.strand_t* %298, null, !dbg !660
  br i1 %299, label %357, label %300, !dbg !660

300:                                              ; preds = %295, %300
  %301 = phi %struct.strand_t* [ %311, %300 ], [ %298, %295 ]
  %302 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %301, i64 0, i32 0, !dbg !661
  %303 = load i8*, i8** %302, align 8, !dbg !661, !tbaa !664
  %304 = tail call i32 @step(i8* %303, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !665
  %305 = icmp ne i32 %304, 0, !dbg !665
  %306 = zext i1 %305 to i32, !dbg !665
  %307 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %301, i64 0, i32 2, !dbg !666
  %308 = load i32, i32* %307, align 4, !dbg !667, !tbaa !299
  %309 = or i32 %308, %306, !dbg !667
  store i32 %309, i32* %307, align 4, !dbg !667, !tbaa !299
  %310 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %301, i64 0, i32 4, !dbg !668
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !615, metadata !DIExpression()) #13, !dbg !616
  %311 = load %struct.strand_t*, %struct.strand_t** %310, align 8, !dbg !658, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %311, metadata !615, metadata !DIExpression()) #13, !dbg !616
  %312 = icmp eq %struct.strand_t* %311, null, !dbg !660
  br i1 %312, label %357, label %300, !dbg !660, !llvm.loop !669

313:                                              ; preds = %276
  %314 = load i32, i32* %3, align 4, !dbg !671, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %314, metadata !532, metadata !DIExpression()) #13, !dbg !525
  %315 = load i32, i32* %4, align 4, !dbg !673, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %315, metadata !533, metadata !DIExpression()) #13, !dbg !525
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !542, metadata !DIExpression()) #13, !dbg !537
  call void @llvm.dbg.value(metadata i32 %314, metadata !543, metadata !DIExpression()) #13, !dbg !537
  call void @llvm.dbg.value(metadata i32 %315, metadata !544, metadata !DIExpression()) #13, !dbg !537
  %316 = icmp eq i32 %315, -1, !dbg !674
  %317 = load i32, i32* %228, align 8, !dbg !537, !tbaa !676
  %318 = select i1 %316, i32 %317, i32 %315, !dbg !537
  call void @llvm.dbg.value(metadata i32 %318, metadata !544, metadata !DIExpression()) #13, !dbg !537
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !537
  call void @llvm.dbg.value(metadata i32 1, metadata !545, metadata !DIExpression()) #13, !dbg !537
  %319 = icmp slt i32 %317, 1, !dbg !678
  br i1 %319, label %357, label %320, !dbg !681

320:                                              ; preds = %313
  %321 = and i32 %317, 1, !dbg !681
  %322 = icmp eq i32 %317, 1, !dbg !681
  br i1 %322, label %344, label %323, !dbg !681

323:                                              ; preds = %320
  %324 = sub i32 %317, %321, !dbg !681
  br label %325, !dbg !681

325:                                              ; preds = %1060, %323
  %326 = phi %struct.strand_t** [ %6, %323 ], [ %1062, %1060 ]
  %327 = phi i32 [ 1, %323 ], [ %1061, %1060 ]
  %328 = phi i32 [ %324, %323 ], [ %1063, %1060 ]
  %329 = load %struct.strand_t*, %struct.strand_t** %326, align 8, !dbg !682, !tbaa !290
  call void @llvm.dbg.value(metadata i32 %327, metadata !545, metadata !DIExpression()) #13, !dbg !537
  %330 = icmp slt i32 %327, %314, !dbg !683
  %331 = icmp sgt i32 %327, %318, !dbg !686
  %332 = or i1 %330, %331, !dbg !687
  br i1 %332, label %337, label %333, !dbg !687

333:                                              ; preds = %325
  %334 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %329, i64 0, i32 2, !dbg !688
  %335 = load i32, i32* %334, align 4, !dbg !689, !tbaa !299
  %336 = or i32 %335, 1, !dbg !689
  store i32 %336, i32* %334, align 4, !dbg !689, !tbaa !299
  br label %337, !dbg !690

337:                                              ; preds = %333, %325
  %338 = add nuw i32 %327, 1, !dbg !691
  call void @llvm.dbg.value(metadata i32 %338, metadata !545, metadata !DIExpression()) #13, !dbg !537
  %339 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %329, i64 0, i32 4, !dbg !692
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !537
  %340 = load %struct.strand_t*, %struct.strand_t** %339, align 8, !dbg !682, !tbaa !290
  %341 = icmp slt i32 %338, %314, !dbg !683
  %342 = icmp sgt i32 %338, %318, !dbg !686
  %343 = or i1 %341, %342, !dbg !687
  br i1 %343, label %1060, label %1056, !dbg !687

344:                                              ; preds = %1060, %320
  %345 = phi %struct.strand_t** [ %6, %320 ], [ %1062, %1060 ]
  %346 = phi i32 [ 1, %320 ], [ %1061, %1060 ]
  %347 = icmp eq i32 %321, 0, !dbg !687
  br i1 %347, label %357, label %348, !dbg !687

348:                                              ; preds = %344
  call void @llvm.dbg.value(metadata i32 %346, metadata !545, metadata !DIExpression()) #13, !dbg !537
  %349 = icmp slt i32 %346, %314, !dbg !683
  %350 = icmp sgt i32 %346, %318, !dbg !686
  %351 = or i1 %349, %350, !dbg !687
  br i1 %351, label %357, label %352, !dbg !687

352:                                              ; preds = %348
  %353 = load %struct.strand_t*, %struct.strand_t** %345, align 8, !dbg !682, !tbaa !290
  %354 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %353, i64 0, i32 2, !dbg !688
  %355 = load i32, i32* %354, align 4, !dbg !689, !tbaa !299
  %356 = or i32 %355, 1, !dbg !689
  store i32 %356, i32* %354, align 4, !dbg !689, !tbaa !299
  br label %357, !dbg !690

357:                                              ; preds = %300, %344, %348, %352, %313, %295
  %358 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !693
  call void @llvm.dbg.value(metadata i8* %358, metadata !531, metadata !DIExpression()) #13, !dbg !525
  %359 = icmp eq i8* %358, null, !dbg !694
  br i1 %359, label %491, label %360, !dbg !694

360:                                              ; preds = %357, %441
  %361 = phi i8* [ %442, %441 ], [ %358, %357 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !532, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  call void @llvm.dbg.value(metadata i32* %4, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  %362 = call fastcc i32 @is_pattern(i8* nonnull %361, i32* nonnull %3, i32* nonnull %4) #13, !dbg !695
  %363 = icmp eq i32 %362, 0, !dbg !695
  br i1 %363, label %397, label %364, !dbg !698

364:                                              ; preds = %360
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !609, metadata !DIExpression()) #13, !dbg !699
  call void @llvm.dbg.value(metadata i8* %361, metadata !614, metadata !DIExpression()) #13, !dbg !699
  call void @llvm.dbg.value(metadata i8* %361, metadata !618, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !623, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !625, metadata !DIExpression()) #13, !dbg !701
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !703, !tbaa !573
  call void @llvm.dbg.value(metadata i8* %361, metadata !624, metadata !DIExpression()) #13, !dbg !701
  br label %365, !dbg !704

365:                                              ; preds = %376, %364
  %366 = phi i8* [ %361, %364 ], [ %378, %376 ], !dbg !705
  %367 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %364 ], [ %377, %376 ], !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %366, metadata !624, metadata !DIExpression()) #13, !dbg !701
  %368 = load i8, i8* %366, align 1, !dbg !706, !tbaa !573
  switch i8 %368, label %374 [
    i8 0, label %379
    i8 42, label %369
    i8 63, label %372
  ], !dbg !707

369:                                              ; preds = %365
  %370 = getelementptr inbounds i8, i8* %367, i64 1, !dbg !708
  call void @llvm.dbg.value(metadata i8* %370, metadata !625, metadata !DIExpression()) #13, !dbg !701
  store i8 46, i8* %367, align 1, !dbg !709, !tbaa !573
  %371 = getelementptr inbounds i8, i8* %367, i64 2, !dbg !710
  call void @llvm.dbg.value(metadata i8* %371, metadata !625, metadata !DIExpression()) #13, !dbg !701
  store i8 42, i8* %370, align 1, !dbg !711, !tbaa !573
  br label %376, !dbg !712

372:                                              ; preds = %365
  %373 = getelementptr inbounds i8, i8* %367, i64 1, !dbg !713
  call void @llvm.dbg.value(metadata i8* %373, metadata !625, metadata !DIExpression()) #13, !dbg !701
  store i8 46, i8* %367, align 1, !dbg !714, !tbaa !573
  br label %376, !dbg !715

374:                                              ; preds = %365
  %375 = getelementptr inbounds i8, i8* %367, i64 1, !dbg !716
  call void @llvm.dbg.value(metadata i8* %375, metadata !625, metadata !DIExpression()) #13, !dbg !701
  store i8 %368, i8* %367, align 1, !dbg !717, !tbaa !573
  br label %376

376:                                              ; preds = %374, %372, %369
  %377 = phi i8* [ %371, %369 ], [ %373, %372 ], [ %375, %374 ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %377, metadata !625, metadata !DIExpression()) #13, !dbg !701
  %378 = getelementptr inbounds i8, i8* %366, i64 1, !dbg !719
  call void @llvm.dbg.value(metadata i8* %378, metadata !624, metadata !DIExpression()) #13, !dbg !701
  br label %365, !dbg !720, !llvm.loop !721

379:                                              ; preds = %365
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  call void @llvm.dbg.value(metadata i8* %367, metadata !625, metadata !DIExpression()) #13, !dbg !701
  %380 = getelementptr inbounds i8, i8* %367, i64 1, !dbg !723
  call void @llvm.dbg.value(metadata i8* %380, metadata !625, metadata !DIExpression()) #13, !dbg !701
  store i8 36, i8* %367, align 1, !dbg !724, !tbaa !573
  store i8 0, i8* %380, align 1, !dbg !725, !tbaa !573
  %381 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !726
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !615, metadata !DIExpression()) #13, !dbg !699
  %382 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !727, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %382, metadata !615, metadata !DIExpression()) #13, !dbg !699
  %383 = icmp eq %struct.strand_t* %382, null, !dbg !728
  br i1 %383, label %441, label %384, !dbg !728

384:                                              ; preds = %379, %384
  %385 = phi %struct.strand_t* [ %395, %384 ], [ %382, %379 ]
  %386 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %385, i64 0, i32 0, !dbg !729
  %387 = load i8*, i8** %386, align 8, !dbg !729, !tbaa !664
  %388 = tail call i32 @step(i8* %387, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !730
  %389 = icmp ne i32 %388, 0, !dbg !730
  %390 = zext i1 %389 to i32, !dbg !730
  %391 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %385, i64 0, i32 2, !dbg !731
  %392 = load i32, i32* %391, align 4, !dbg !732, !tbaa !299
  %393 = or i32 %392, %390, !dbg !732
  store i32 %393, i32* %391, align 4, !dbg !732, !tbaa !299
  %394 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %385, i64 0, i32 4, !dbg !733
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !615, metadata !DIExpression()) #13, !dbg !699
  %395 = load %struct.strand_t*, %struct.strand_t** %394, align 8, !dbg !727, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %395, metadata !615, metadata !DIExpression()) #13, !dbg !699
  %396 = icmp eq %struct.strand_t* %395, null, !dbg !728
  br i1 %396, label %441, label %384, !dbg !728, !llvm.loop !734

397:                                              ; preds = %360
  %398 = load i32, i32* %3, align 4, !dbg !736, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %398, metadata !532, metadata !DIExpression()) #13, !dbg !525
  %399 = load i32, i32* %4, align 4, !dbg !737, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %399, metadata !533, metadata !DIExpression()) #13, !dbg !525
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !542, metadata !DIExpression()) #13, !dbg !738
  call void @llvm.dbg.value(metadata i32 %398, metadata !543, metadata !DIExpression()) #13, !dbg !738
  call void @llvm.dbg.value(metadata i32 %399, metadata !544, metadata !DIExpression()) #13, !dbg !738
  %400 = icmp eq i32 %399, -1, !dbg !740
  %401 = load i32, i32* %228, align 8, !dbg !738, !tbaa !676
  %402 = select i1 %400, i32 %401, i32 %399, !dbg !738
  call void @llvm.dbg.value(metadata i32 %402, metadata !544, metadata !DIExpression()) #13, !dbg !738
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !738
  call void @llvm.dbg.value(metadata i32 1, metadata !545, metadata !DIExpression()) #13, !dbg !738
  %403 = icmp slt i32 %401, 1, !dbg !741
  br i1 %403, label %441, label %404, !dbg !742

404:                                              ; preds = %397
  %405 = and i32 %401, 1, !dbg !742
  %406 = icmp eq i32 %401, 1, !dbg !742
  br i1 %406, label %428, label %407, !dbg !742

407:                                              ; preds = %404
  %408 = sub i32 %401, %405, !dbg !742
  br label %409, !dbg !742

409:                                              ; preds = %1069, %407
  %410 = phi %struct.strand_t** [ %6, %407 ], [ %1071, %1069 ]
  %411 = phi i32 [ 1, %407 ], [ %1070, %1069 ]
  %412 = phi i32 [ %408, %407 ], [ %1072, %1069 ]
  %413 = load %struct.strand_t*, %struct.strand_t** %410, align 8, !dbg !743, !tbaa !290
  call void @llvm.dbg.value(metadata i32 %411, metadata !545, metadata !DIExpression()) #13, !dbg !738
  %414 = icmp slt i32 %411, %398, !dbg !744
  %415 = icmp sgt i32 %411, %402, !dbg !745
  %416 = or i1 %414, %415, !dbg !746
  br i1 %416, label %421, label %417, !dbg !746

417:                                              ; preds = %409
  %418 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %413, i64 0, i32 2, !dbg !747
  %419 = load i32, i32* %418, align 4, !dbg !748, !tbaa !299
  %420 = or i32 %419, 1, !dbg !748
  store i32 %420, i32* %418, align 4, !dbg !748, !tbaa !299
  br label %421, !dbg !749

421:                                              ; preds = %417, %409
  %422 = add nuw i32 %411, 1, !dbg !750
  call void @llvm.dbg.value(metadata i32 %422, metadata !545, metadata !DIExpression()) #13, !dbg !738
  %423 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %413, i64 0, i32 4, !dbg !751
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !738
  %424 = load %struct.strand_t*, %struct.strand_t** %423, align 8, !dbg !743, !tbaa !290
  %425 = icmp slt i32 %422, %398, !dbg !744
  %426 = icmp sgt i32 %422, %402, !dbg !745
  %427 = or i1 %425, %426, !dbg !746
  br i1 %427, label %1069, label %1065, !dbg !746

428:                                              ; preds = %1069, %404
  %429 = phi %struct.strand_t** [ %6, %404 ], [ %1071, %1069 ]
  %430 = phi i32 [ 1, %404 ], [ %1070, %1069 ]
  %431 = icmp eq i32 %405, 0, !dbg !746
  br i1 %431, label %441, label %432, !dbg !746

432:                                              ; preds = %428
  call void @llvm.dbg.value(metadata i32 %430, metadata !545, metadata !DIExpression()) #13, !dbg !738
  %433 = icmp slt i32 %430, %398, !dbg !744
  %434 = icmp sgt i32 %430, %402, !dbg !745
  %435 = or i1 %433, %434, !dbg !746
  br i1 %435, label %441, label %436, !dbg !746

436:                                              ; preds = %432
  %437 = load %struct.strand_t*, %struct.strand_t** %429, align 8, !dbg !743, !tbaa !290
  %438 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %437, i64 0, i32 2, !dbg !747
  %439 = load i32, i32* %438, align 4, !dbg !748, !tbaa !299
  %440 = or i32 %439, 1, !dbg !748
  store i32 %440, i32* %438, align 4, !dbg !748, !tbaa !299
  br label %441, !dbg !749

441:                                              ; preds = %384, %428, %432, %436, %397, %379
  %442 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !693
  call void @llvm.dbg.value(metadata i8* %442, metadata !531, metadata !DIExpression()) #13, !dbg !525
  %443 = icmp eq i8* %442, null, !dbg !694
  br i1 %443, label %491, label %360, !dbg !694, !llvm.loop !752

444:                                              ; preds = %270
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !542, metadata !DIExpression()) #13, !dbg !754
  call void @llvm.dbg.value(metadata i32 1, metadata !543, metadata !DIExpression()) #13, !dbg !754
  call void @llvm.dbg.value(metadata i32 -1, metadata !544, metadata !DIExpression()) #13, !dbg !754
  %445 = load i32, i32* %228, align 8, !dbg !754, !tbaa !676
  call void @llvm.dbg.value(metadata i32 %445, metadata !544, metadata !DIExpression()) #13, !dbg !754
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !754
  call void @llvm.dbg.value(metadata i32 1, metadata !545, metadata !DIExpression()) #13, !dbg !754
  %446 = icmp slt i32 %445, 1, !dbg !756
  br i1 %446, label %491, label %447, !dbg !757

447:                                              ; preds = %444
  %448 = add i32 %445, -1, !dbg !757
  %449 = and i32 %445, 3, !dbg !757
  %450 = icmp ult i32 %448, 3, !dbg !757
  br i1 %450, label %478, label %451, !dbg !757

451:                                              ; preds = %447
  %452 = sub i32 %445, %449, !dbg !757
  br label %453, !dbg !757

453:                                              ; preds = %453, %451
  %454 = phi %struct.strand_t** [ %6, %451 ], [ %475, %453 ]
  %455 = phi i32 [ %452, %451 ], [ %476, %453 ]
  %456 = load %struct.strand_t*, %struct.strand_t** %454, align 8, !dbg !758, !tbaa !290
  call void @llvm.dbg.value(metadata i32 undef, metadata !545, metadata !DIExpression()) #13, !dbg !754
  %457 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %456, i64 0, i32 2, !dbg !759
  %458 = load i32, i32* %457, align 4, !dbg !760, !tbaa !299
  %459 = or i32 %458, 1, !dbg !760
  store i32 %459, i32* %457, align 4, !dbg !760, !tbaa !299
  call void @llvm.dbg.value(metadata i32 undef, metadata !545, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #13, !dbg !754
  %460 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %456, i64 0, i32 4, !dbg !761
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !754
  %461 = load %struct.strand_t*, %struct.strand_t** %460, align 8, !dbg !758, !tbaa !290
  %462 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %461, i64 0, i32 2, !dbg !759
  %463 = load i32, i32* %462, align 4, !dbg !760, !tbaa !299
  %464 = or i32 %463, 1, !dbg !760
  store i32 %464, i32* %462, align 4, !dbg !760, !tbaa !299
  call void @llvm.dbg.value(metadata i32 undef, metadata !545, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #13, !dbg !754
  %465 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %461, i64 0, i32 4, !dbg !761
  %466 = load %struct.strand_t*, %struct.strand_t** %465, align 8, !dbg !758, !tbaa !290
  %467 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %466, i64 0, i32 2, !dbg !759
  %468 = load i32, i32* %467, align 4, !dbg !760, !tbaa !299
  %469 = or i32 %468, 1, !dbg !760
  store i32 %469, i32* %467, align 4, !dbg !760, !tbaa !299
  call void @llvm.dbg.value(metadata i32 undef, metadata !545, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #13, !dbg !754
  %470 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %466, i64 0, i32 4, !dbg !761
  %471 = load %struct.strand_t*, %struct.strand_t** %470, align 8, !dbg !758, !tbaa !290
  %472 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %471, i64 0, i32 2, !dbg !759
  %473 = load i32, i32* %472, align 4, !dbg !760, !tbaa !299
  %474 = or i32 %473, 1, !dbg !760
  store i32 %474, i32* %472, align 4, !dbg !760, !tbaa !299
  call void @llvm.dbg.value(metadata i32 undef, metadata !545, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #13, !dbg !754
  %475 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %471, i64 0, i32 4, !dbg !761
  %476 = add i32 %455, -4, !dbg !757
  %477 = icmp eq i32 %476, 0, !dbg !757
  br i1 %477, label %478, label %453, !dbg !757, !llvm.loop !762

478:                                              ; preds = %453, %447
  %479 = phi %struct.strand_t** [ %6, %447 ], [ %475, %453 ]
  %480 = icmp eq i32 %449, 0, !dbg !757
  br i1 %480, label %491, label %481, !dbg !757

481:                                              ; preds = %478, %481
  %482 = phi %struct.strand_t** [ %488, %481 ], [ %479, %478 ]
  %483 = phi i32 [ %489, %481 ], [ %449, %478 ]
  %484 = load %struct.strand_t*, %struct.strand_t** %482, align 8, !dbg !758, !tbaa !290
  call void @llvm.dbg.value(metadata i32 undef, metadata !545, metadata !DIExpression()) #13, !dbg !754
  %485 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %484, i64 0, i32 2, !dbg !759
  %486 = load i32, i32* %485, align 4, !dbg !760, !tbaa !299
  %487 = or i32 %486, 1, !dbg !760
  store i32 %487, i32* %485, align 4, !dbg !760, !tbaa !299
  call void @llvm.dbg.value(metadata i32 undef, metadata !545, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #13, !dbg !754
  %488 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %484, i64 0, i32 4, !dbg !761
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !754
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !754
  %489 = add i32 %483, -1, !dbg !757
  %490 = icmp eq i32 %489, 0, !dbg !757
  br i1 %490, label %491, label %481, !dbg !757, !llvm.loop !764

491:                                              ; preds = %441, %478, %481, %444, %357
  %492 = load i8*, i8** @rpart, align 8, !dbg !765, !tbaa !290
  %493 = icmp eq i8* %492, null, !dbg !765
  br i1 %493, label %742, label %494, !dbg !767

494:                                              ; preds = %491
  %495 = tail call i8* @strtok(i8* nonnull %492, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !768
  call void @llvm.dbg.value(metadata i8* %495, metadata !531, metadata !DIExpression()) #13, !dbg !525
  call void @llvm.dbg.value(metadata i32* %3, metadata !532, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  call void @llvm.dbg.value(metadata i32* %4, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  %496 = call fastcc i32 @is_pattern(i8* %495, i32* nonnull %3, i32* nonnull %4) #13, !dbg !770
  %497 = icmp eq i32 %496, 0, !dbg !770
  br i1 %497, label %499, label %498, !dbg !772

498:                                              ; preds = %494
  tail call fastcc void @match_res_pat(%struct.molecule_t* %0, i8* %495) #13, !dbg !773
  br label %615, !dbg !773

499:                                              ; preds = %494
  %500 = load i32, i32* %3, align 4, !dbg !774, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %500, metadata !532, metadata !DIExpression()) #13, !dbg !525
  %501 = load i32, i32* %4, align 4, !dbg !775, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %501, metadata !533, metadata !DIExpression()) #13, !dbg !525
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !776, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata i32 %500, metadata !779, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata i32 %501, metadata !780, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !783, metadata !DIExpression()) #13, !dbg !785
  %502 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !787, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %502, metadata !783, metadata !DIExpression()) #13, !dbg !785
  %503 = icmp eq %struct.strand_t* %502, null, !dbg !789
  br i1 %503, label %615, label %504, !dbg !789

504:                                              ; preds = %499
  %505 = icmp eq i32 %501, -1, !dbg !790
  br i1 %505, label %509, label %506, !dbg !789

506:                                              ; preds = %504
  %507 = sext i32 %501 to i64, !dbg !789
  %508 = sext i32 %500 to i64, !dbg !789
  br label %560, !dbg !789

509:                                              ; preds = %504
  %510 = sext i32 %500 to i64, !dbg !789
  br label %511, !dbg !789

511:                                              ; preds = %549, %509
  %512 = phi %struct.strand_t* [ %551, %549 ], [ %502, %509 ]
  %513 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %512, i64 0, i32 2, !dbg !795
  %514 = load i32, i32* %513, align 4, !dbg !795, !tbaa !299
  %515 = and i32 %514, 1, !dbg !796
  %516 = icmp eq i32 %515, 0, !dbg !796
  br i1 %516, label %549, label %517, !dbg !797

517:                                              ; preds = %511
  %518 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %512, i64 0, i32 5, !dbg !798
  %519 = load i32, i32* %518, align 8, !dbg !798, !tbaa !308
  call void @llvm.dbg.value(metadata i32 %519, metadata !782, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata i32 0, metadata !781, metadata !DIExpression()) #13, !dbg !785
  %520 = icmp sgt i32 %519, 0, !dbg !799
  br i1 %520, label %553, label %549, !dbg !802

521:                                              ; preds = %1091, %558
  %522 = phi i64 [ 0, %558 ], [ %534, %1091 ]
  %523 = phi i64 [ %559, %558 ], [ %1092, %1091 ]
  call void @llvm.dbg.value(metadata i64 %522, metadata !781, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %524 = or i64 %522, 1, !dbg !803
  %525 = icmp slt i64 %524, %510, !dbg !806
  br i1 %525, label %533, label %526, !dbg !807

526:                                              ; preds = %521
  %527 = load %struct.residue_t**, %struct.residue_t*** %554, align 8, !dbg !808, !tbaa !313
  %528 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %527, i64 %522, !dbg !809
  %529 = load %struct.residue_t*, %struct.residue_t** %528, align 8, !dbg !809, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %529, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %530 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %529, i64 0, i32 6, !dbg !810
  %531 = load i32, i32* %530, align 8, !dbg !811, !tbaa !317
  %532 = or i32 %531, 1, !dbg !811
  store i32 %532, i32* %530, align 8, !dbg !811, !tbaa !317
  br label %533, !dbg !812

533:                                              ; preds = %526, %521
  call void @llvm.dbg.value(metadata i64 %524, metadata !781, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %534 = add nuw nsw i64 %522, 2, !dbg !803
  %535 = icmp slt i64 %534, %510, !dbg !806
  br i1 %535, label %1091, label %1084, !dbg !807

536:                                              ; preds = %1091, %553
  %537 = phi i64 [ 0, %553 ], [ %534, %1091 ]
  %538 = icmp eq i64 %556, 0, !dbg !807
  %539 = add nuw nsw i64 %537, 1, !dbg !803
  %540 = icmp slt i64 %539, %510, !dbg !806
  %541 = or i1 %538, %540, !dbg !807
  call void @llvm.dbg.value(metadata i64 %537, metadata !781, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !785
  br i1 %541, label %549, label %542, !dbg !807

542:                                              ; preds = %536
  %543 = load %struct.residue_t**, %struct.residue_t*** %554, align 8, !dbg !808, !tbaa !313
  %544 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %543, i64 %537, !dbg !809
  %545 = load %struct.residue_t*, %struct.residue_t** %544, align 8, !dbg !809, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %545, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %546 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %545, i64 0, i32 6, !dbg !810
  %547 = load i32, i32* %546, align 8, !dbg !811, !tbaa !317
  %548 = or i32 %547, 1, !dbg !811
  store i32 %548, i32* %546, align 8, !dbg !811, !tbaa !317
  br label %549, !dbg !812

549:                                              ; preds = %536, %542, %517, %511
  %550 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %512, i64 0, i32 4, !dbg !813
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !783, metadata !DIExpression()) #13, !dbg !785
  %551 = load %struct.strand_t*, %struct.strand_t** %550, align 8, !dbg !787, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %551, metadata !783, metadata !DIExpression()) #13, !dbg !785
  %552 = icmp eq %struct.strand_t* %551, null, !dbg !789
  br i1 %552, label %615, label %511, !dbg !789, !llvm.loop !814

553:                                              ; preds = %517
  %554 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %512, i64 0, i32 7, !dbg !816
  %555 = zext i32 %519 to i64, !dbg !802
  %556 = and i64 %555, 1, !dbg !802
  %557 = icmp eq i32 %519, 1, !dbg !802
  br i1 %557, label %536, label %558, !dbg !802

558:                                              ; preds = %553
  %559 = sub nsw i64 %555, %556, !dbg !802
  br label %521, !dbg !802

560:                                              ; preds = %611, %506
  %561 = phi %struct.strand_t* [ %613, %611 ], [ %502, %506 ]
  %562 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %561, i64 0, i32 2, !dbg !795
  %563 = load i32, i32* %562, align 4, !dbg !795, !tbaa !299
  %564 = and i32 %563, 1, !dbg !796
  %565 = icmp eq i32 %564, 0, !dbg !796
  br i1 %565, label %611, label %566, !dbg !797

566:                                              ; preds = %560
  call void @llvm.dbg.value(metadata i32 %501, metadata !782, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata i32 0, metadata !781, metadata !DIExpression()) #13, !dbg !785
  %567 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %561, i64 0, i32 5, !dbg !817
  %568 = load i32, i32* %567, align 8, !dbg !817, !tbaa !308
  %569 = icmp sgt i32 %568, 0, !dbg !799
  br i1 %569, label %570, label %611, !dbg !802

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %561, i64 0, i32 7, !dbg !816
  %572 = zext i32 %568 to i64, !dbg !802
  %573 = and i64 %572, 1, !dbg !802
  %574 = icmp eq i32 %568, 1, !dbg !802
  br i1 %574, label %596, label %575, !dbg !802

575:                                              ; preds = %570
  %576 = sub nsw i64 %572, %573, !dbg !802
  br label %577, !dbg !802

577:                                              ; preds = %1081, %575
  %578 = phi i64 [ 0, %575 ], [ %592, %1081 ]
  %579 = phi i64 [ %576, %575 ], [ %1082, %1081 ]
  call void @llvm.dbg.value(metadata i64 %578, metadata !781, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %580 = or i64 %578, 1, !dbg !803
  %581 = icmp sge i64 %580, %508, !dbg !806
  %582 = icmp slt i64 %578, %507, !dbg !818
  %583 = and i1 %582, %581, !dbg !807
  br i1 %583, label %584, label %591, !dbg !807

584:                                              ; preds = %577
  %585 = load %struct.residue_t**, %struct.residue_t*** %571, align 8, !dbg !808, !tbaa !313
  %586 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %585, i64 %578, !dbg !809
  %587 = load %struct.residue_t*, %struct.residue_t** %586, align 8, !dbg !809, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %587, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %588 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %587, i64 0, i32 6, !dbg !810
  %589 = load i32, i32* %588, align 8, !dbg !811, !tbaa !317
  %590 = or i32 %589, 1, !dbg !811
  store i32 %590, i32* %588, align 8, !dbg !811, !tbaa !317
  br label %591, !dbg !812

591:                                              ; preds = %584, %577
  call void @llvm.dbg.value(metadata i64 %580, metadata !781, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %592 = add nuw nsw i64 %578, 2, !dbg !803
  %593 = icmp sge i64 %592, %508, !dbg !806
  %594 = icmp slt i64 %580, %507, !dbg !818
  %595 = and i1 %594, %593, !dbg !807
  br i1 %595, label %1074, label %1081, !dbg !807

596:                                              ; preds = %1081, %570
  %597 = phi i64 [ 0, %570 ], [ %592, %1081 ]
  %598 = icmp eq i64 %573, 0, !dbg !807
  br i1 %598, label %611, label %599, !dbg !807

599:                                              ; preds = %596
  call void @llvm.dbg.value(metadata i64 %597, metadata !781, metadata !DIExpression()) #13, !dbg !785
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %600 = add nuw nsw i64 %597, 1, !dbg !803
  %601 = icmp sge i64 %600, %508, !dbg !806
  %602 = icmp slt i64 %597, %507, !dbg !818
  %603 = and i1 %602, %601, !dbg !807
  br i1 %603, label %604, label %611, !dbg !807

604:                                              ; preds = %599
  %605 = load %struct.residue_t**, %struct.residue_t*** %571, align 8, !dbg !808, !tbaa !313
  %606 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %605, i64 %597, !dbg !809
  %607 = load %struct.residue_t*, %struct.residue_t** %606, align 8, !dbg !809, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %607, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %608 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %607, i64 0, i32 6, !dbg !810
  %609 = load i32, i32* %608, align 8, !dbg !811, !tbaa !317
  %610 = or i32 %609, 1, !dbg !811
  store i32 %610, i32* %608, align 8, !dbg !811, !tbaa !317
  br label %611, !dbg !812

611:                                              ; preds = %596, %599, %604, %566, %560
  %612 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %561, i64 0, i32 4, !dbg !813
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !783, metadata !DIExpression()) #13, !dbg !785
  %613 = load %struct.strand_t*, %struct.strand_t** %612, align 8, !dbg !787, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %613, metadata !783, metadata !DIExpression()) #13, !dbg !785
  %614 = icmp eq %struct.strand_t* %613, null, !dbg !789
  br i1 %614, label %615, label %560, !dbg !789, !llvm.loop !819

615:                                              ; preds = %611, %549, %499, %498
  %616 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !820
  call void @llvm.dbg.value(metadata i8* %616, metadata !531, metadata !DIExpression()) #13, !dbg !525
  %617 = icmp eq i8* %616, null, !dbg !821
  br i1 %617, label %811, label %618, !dbg !821

618:                                              ; preds = %615, %739
  %619 = phi i8* [ %740, %739 ], [ %616, %615 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !532, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  call void @llvm.dbg.value(metadata i32* %4, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  %620 = call fastcc i32 @is_pattern(i8* nonnull %619, i32* nonnull %3, i32* nonnull %4) #13, !dbg !822
  %621 = icmp eq i32 %620, 0, !dbg !822
  br i1 %621, label %623, label %622, !dbg !825

622:                                              ; preds = %618
  tail call fastcc void @match_res_pat(%struct.molecule_t* %0, i8* nonnull %619) #13, !dbg !826
  br label %739, !dbg !826

623:                                              ; preds = %618
  %624 = load i32, i32* %3, align 4, !dbg !827, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %624, metadata !532, metadata !DIExpression()) #13, !dbg !525
  %625 = load i32, i32* %4, align 4, !dbg !828, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %625, metadata !533, metadata !DIExpression()) #13, !dbg !525
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !776, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata i32 %624, metadata !779, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata i32 %625, metadata !780, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !783, metadata !DIExpression()) #13, !dbg !829
  %626 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !831, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %626, metadata !783, metadata !DIExpression()) #13, !dbg !829
  %627 = icmp eq %struct.strand_t* %626, null, !dbg !832
  br i1 %627, label %739, label %628, !dbg !832

628:                                              ; preds = %623
  %629 = icmp eq i32 %625, -1, !dbg !833
  br i1 %629, label %633, label %630, !dbg !832

630:                                              ; preds = %628
  %631 = sext i32 %625 to i64, !dbg !832
  %632 = sext i32 %624 to i64, !dbg !832
  br label %684, !dbg !832

633:                                              ; preds = %628
  %634 = sext i32 %624 to i64, !dbg !832
  br label %635, !dbg !832

635:                                              ; preds = %673, %633
  %636 = phi %struct.strand_t* [ %675, %673 ], [ %626, %633 ]
  %637 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %636, i64 0, i32 2, !dbg !834
  %638 = load i32, i32* %637, align 4, !dbg !834, !tbaa !299
  %639 = and i32 %638, 1, !dbg !835
  %640 = icmp eq i32 %639, 0, !dbg !835
  br i1 %640, label %673, label %641, !dbg !836

641:                                              ; preds = %635
  %642 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %636, i64 0, i32 5, !dbg !837
  %643 = load i32, i32* %642, align 8, !dbg !837, !tbaa !308
  call void @llvm.dbg.value(metadata i32 %643, metadata !782, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata i32 0, metadata !781, metadata !DIExpression()) #13, !dbg !829
  %644 = icmp sgt i32 %643, 0, !dbg !838
  br i1 %644, label %677, label %673, !dbg !839

645:                                              ; preds = %1111, %682
  %646 = phi i64 [ 0, %682 ], [ %658, %1111 ]
  %647 = phi i64 [ %683, %682 ], [ %1112, %1111 ]
  call void @llvm.dbg.value(metadata i64 %646, metadata !781, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %648 = or i64 %646, 1, !dbg !840
  %649 = icmp slt i64 %648, %634, !dbg !841
  br i1 %649, label %657, label %650, !dbg !842

650:                                              ; preds = %645
  %651 = load %struct.residue_t**, %struct.residue_t*** %678, align 8, !dbg !843, !tbaa !313
  %652 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %651, i64 %646, !dbg !844
  %653 = load %struct.residue_t*, %struct.residue_t** %652, align 8, !dbg !844, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %653, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %654 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %653, i64 0, i32 6, !dbg !845
  %655 = load i32, i32* %654, align 8, !dbg !846, !tbaa !317
  %656 = or i32 %655, 1, !dbg !846
  store i32 %656, i32* %654, align 8, !dbg !846, !tbaa !317
  br label %657, !dbg !847

657:                                              ; preds = %650, %645
  call void @llvm.dbg.value(metadata i64 %648, metadata !781, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %658 = add nuw nsw i64 %646, 2, !dbg !840
  %659 = icmp slt i64 %658, %634, !dbg !841
  br i1 %659, label %1111, label %1104, !dbg !842

660:                                              ; preds = %1111, %677
  %661 = phi i64 [ 0, %677 ], [ %658, %1111 ]
  %662 = icmp eq i64 %680, 0, !dbg !842
  %663 = add nuw nsw i64 %661, 1, !dbg !840
  %664 = icmp slt i64 %663, %634, !dbg !841
  %665 = or i1 %662, %664, !dbg !842
  call void @llvm.dbg.value(metadata i64 %661, metadata !781, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !829
  br i1 %665, label %673, label %666, !dbg !842

666:                                              ; preds = %660
  %667 = load %struct.residue_t**, %struct.residue_t*** %678, align 8, !dbg !843, !tbaa !313
  %668 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %667, i64 %661, !dbg !844
  %669 = load %struct.residue_t*, %struct.residue_t** %668, align 8, !dbg !844, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %669, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %670 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %669, i64 0, i32 6, !dbg !845
  %671 = load i32, i32* %670, align 8, !dbg !846, !tbaa !317
  %672 = or i32 %671, 1, !dbg !846
  store i32 %672, i32* %670, align 8, !dbg !846, !tbaa !317
  br label %673, !dbg !847

673:                                              ; preds = %660, %666, %641, %635
  %674 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %636, i64 0, i32 4, !dbg !848
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !783, metadata !DIExpression()) #13, !dbg !829
  %675 = load %struct.strand_t*, %struct.strand_t** %674, align 8, !dbg !831, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %675, metadata !783, metadata !DIExpression()) #13, !dbg !829
  %676 = icmp eq %struct.strand_t* %675, null, !dbg !832
  br i1 %676, label %739, label %635, !dbg !832, !llvm.loop !849

677:                                              ; preds = %641
  %678 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %636, i64 0, i32 7, !dbg !851
  %679 = zext i32 %643 to i64, !dbg !839
  %680 = and i64 %679, 1, !dbg !839
  %681 = icmp eq i32 %643, 1, !dbg !839
  br i1 %681, label %660, label %682, !dbg !839

682:                                              ; preds = %677
  %683 = sub nsw i64 %679, %680, !dbg !839
  br label %645, !dbg !839

684:                                              ; preds = %735, %630
  %685 = phi %struct.strand_t* [ %737, %735 ], [ %626, %630 ]
  %686 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %685, i64 0, i32 2, !dbg !834
  %687 = load i32, i32* %686, align 4, !dbg !834, !tbaa !299
  %688 = and i32 %687, 1, !dbg !835
  %689 = icmp eq i32 %688, 0, !dbg !835
  br i1 %689, label %735, label %690, !dbg !836

690:                                              ; preds = %684
  call void @llvm.dbg.value(metadata i32 %625, metadata !782, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata i32 0, metadata !781, metadata !DIExpression()) #13, !dbg !829
  %691 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %685, i64 0, i32 5, !dbg !852
  %692 = load i32, i32* %691, align 8, !dbg !852, !tbaa !308
  %693 = icmp sgt i32 %692, 0, !dbg !838
  br i1 %693, label %694, label %735, !dbg !839

694:                                              ; preds = %690
  %695 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %685, i64 0, i32 7, !dbg !851
  %696 = zext i32 %692 to i64, !dbg !839
  %697 = and i64 %696, 1, !dbg !839
  %698 = icmp eq i32 %692, 1, !dbg !839
  br i1 %698, label %720, label %699, !dbg !839

699:                                              ; preds = %694
  %700 = sub nsw i64 %696, %697, !dbg !839
  br label %701, !dbg !839

701:                                              ; preds = %1101, %699
  %702 = phi i64 [ 0, %699 ], [ %716, %1101 ]
  %703 = phi i64 [ %700, %699 ], [ %1102, %1101 ]
  call void @llvm.dbg.value(metadata i64 %702, metadata !781, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %704 = or i64 %702, 1, !dbg !840
  %705 = icmp sge i64 %704, %632, !dbg !841
  %706 = icmp slt i64 %702, %631, !dbg !853
  %707 = and i1 %706, %705, !dbg !842
  br i1 %707, label %708, label %715, !dbg !842

708:                                              ; preds = %701
  %709 = load %struct.residue_t**, %struct.residue_t*** %695, align 8, !dbg !843, !tbaa !313
  %710 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %709, i64 %702, !dbg !844
  %711 = load %struct.residue_t*, %struct.residue_t** %710, align 8, !dbg !844, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %711, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %712 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %711, i64 0, i32 6, !dbg !845
  %713 = load i32, i32* %712, align 8, !dbg !846, !tbaa !317
  %714 = or i32 %713, 1, !dbg !846
  store i32 %714, i32* %712, align 8, !dbg !846, !tbaa !317
  br label %715, !dbg !847

715:                                              ; preds = %708, %701
  call void @llvm.dbg.value(metadata i64 %704, metadata !781, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %716 = add nuw nsw i64 %702, 2, !dbg !840
  %717 = icmp sge i64 %716, %632, !dbg !841
  %718 = icmp slt i64 %704, %631, !dbg !853
  %719 = and i1 %718, %717, !dbg !842
  br i1 %719, label %1094, label %1101, !dbg !842

720:                                              ; preds = %1101, %694
  %721 = phi i64 [ 0, %694 ], [ %716, %1101 ]
  %722 = icmp eq i64 %697, 0, !dbg !842
  br i1 %722, label %735, label %723, !dbg !842

723:                                              ; preds = %720
  call void @llvm.dbg.value(metadata i64 %721, metadata !781, metadata !DIExpression()) #13, !dbg !829
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %724 = add nuw nsw i64 %721, 1, !dbg !840
  %725 = icmp sge i64 %724, %632, !dbg !841
  %726 = icmp slt i64 %721, %631, !dbg !853
  %727 = and i1 %726, %725, !dbg !842
  br i1 %727, label %728, label %735, !dbg !842

728:                                              ; preds = %723
  %729 = load %struct.residue_t**, %struct.residue_t*** %695, align 8, !dbg !843, !tbaa !313
  %730 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %729, i64 %721, !dbg !844
  %731 = load %struct.residue_t*, %struct.residue_t** %730, align 8, !dbg !844, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %731, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %732 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %731, i64 0, i32 6, !dbg !845
  %733 = load i32, i32* %732, align 8, !dbg !846, !tbaa !317
  %734 = or i32 %733, 1, !dbg !846
  store i32 %734, i32* %732, align 8, !dbg !846, !tbaa !317
  br label %735, !dbg !847

735:                                              ; preds = %720, %723, %728, %690, %684
  %736 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %685, i64 0, i32 4, !dbg !848
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !783, metadata !DIExpression()) #13, !dbg !829
  %737 = load %struct.strand_t*, %struct.strand_t** %736, align 8, !dbg !831, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %737, metadata !783, metadata !DIExpression()) #13, !dbg !829
  %738 = icmp eq %struct.strand_t* %737, null, !dbg !832
  br i1 %738, label %739, label %684, !dbg !832, !llvm.loop !854

739:                                              ; preds = %735, %673, %623, %622
  %740 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !820
  call void @llvm.dbg.value(metadata i8* %740, metadata !531, metadata !DIExpression()) #13, !dbg !525
  %741 = icmp eq i8* %740, null, !dbg !821
  br i1 %741, label %811, label %618, !dbg !821, !llvm.loop !855

742:                                              ; preds = %491
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !776, metadata !DIExpression()) #13, !dbg !857
  call void @llvm.dbg.value(metadata i32 1, metadata !779, metadata !DIExpression()) #13, !dbg !857
  call void @llvm.dbg.value(metadata i32 -1, metadata !780, metadata !DIExpression()) #13, !dbg !857
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !783, metadata !DIExpression()) #13, !dbg !857
  %743 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !859, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %743, metadata !783, metadata !DIExpression()) #13, !dbg !857
  %744 = icmp eq %struct.strand_t* %743, null, !dbg !860
  br i1 %744, label %811, label %745, !dbg !860

745:                                              ; preds = %742, %798
  %746 = phi %struct.strand_t* [ %800, %798 ], [ %743, %742 ]
  %747 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %746, i64 0, i32 2, !dbg !861
  %748 = load i32, i32* %747, align 4, !dbg !861, !tbaa !299
  %749 = and i32 %748, 1, !dbg !862
  %750 = icmp eq i32 %749, 0, !dbg !862
  br i1 %750, label %798, label %751, !dbg !863

751:                                              ; preds = %745
  %752 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %746, i64 0, i32 5, !dbg !864
  %753 = load i32, i32* %752, align 8, !dbg !864, !tbaa !308
  call void @llvm.dbg.value(metadata i32 %753, metadata !782, metadata !DIExpression()) #13, !dbg !857
  call void @llvm.dbg.value(metadata i32 0, metadata !781, metadata !DIExpression()) #13, !dbg !857
  %754 = icmp sgt i32 %753, 0, !dbg !865
  br i1 %754, label %802, label %798, !dbg !866

755:                                              ; preds = %755, %809
  %756 = phi i64 [ 0, %809 ], [ %776, %755 ]
  %757 = phi i64 [ %810, %809 ], [ %782, %755 ]
  call void @llvm.dbg.value(metadata i64 %756, metadata !781, metadata !DIExpression()) #13, !dbg !857
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !857
  %758 = or i64 %756, 1, !dbg !867
  %759 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %805, i64 %756, !dbg !868
  %760 = load %struct.residue_t*, %struct.residue_t** %759, align 8, !dbg !868, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %760, metadata !784, metadata !DIExpression()) #13, !dbg !857
  %761 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %760, i64 0, i32 6, !dbg !869
  %762 = load i32, i32* %761, align 8, !dbg !870, !tbaa !317
  %763 = or i32 %762, 1, !dbg !870
  store i32 %763, i32* %761, align 8, !dbg !870, !tbaa !317
  call void @llvm.dbg.value(metadata i64 %758, metadata !781, metadata !DIExpression()) #13, !dbg !857
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !857
  %764 = or i64 %756, 2, !dbg !867
  %765 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %805, i64 %758, !dbg !868
  %766 = load %struct.residue_t*, %struct.residue_t** %765, align 8, !dbg !868, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %766, metadata !784, metadata !DIExpression()) #13, !dbg !857
  %767 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %766, i64 0, i32 6, !dbg !869
  %768 = load i32, i32* %767, align 8, !dbg !870, !tbaa !317
  %769 = or i32 %768, 1, !dbg !870
  store i32 %769, i32* %767, align 8, !dbg !870, !tbaa !317
  call void @llvm.dbg.value(metadata i64 %764, metadata !781, metadata !DIExpression()) #13, !dbg !857
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !857
  %770 = or i64 %756, 3, !dbg !867
  %771 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %805, i64 %764, !dbg !868
  %772 = load %struct.residue_t*, %struct.residue_t** %771, align 8, !dbg !868, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %772, metadata !784, metadata !DIExpression()) #13, !dbg !857
  %773 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %772, i64 0, i32 6, !dbg !869
  %774 = load i32, i32* %773, align 8, !dbg !870, !tbaa !317
  %775 = or i32 %774, 1, !dbg !870
  store i32 %775, i32* %773, align 8, !dbg !870, !tbaa !317
  call void @llvm.dbg.value(metadata i64 %770, metadata !781, metadata !DIExpression()) #13, !dbg !857
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !857
  %776 = add nuw nsw i64 %756, 4, !dbg !867
  %777 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %805, i64 %770, !dbg !868
  %778 = load %struct.residue_t*, %struct.residue_t** %777, align 8, !dbg !868, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %778, metadata !784, metadata !DIExpression()) #13, !dbg !857
  %779 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %778, i64 0, i32 6, !dbg !869
  %780 = load i32, i32* %779, align 8, !dbg !870, !tbaa !317
  %781 = or i32 %780, 1, !dbg !870
  store i32 %781, i32* %779, align 8, !dbg !870, !tbaa !317
  call void @llvm.dbg.value(metadata i64 %776, metadata !781, metadata !DIExpression()) #13, !dbg !857
  %782 = add i64 %757, -4, !dbg !866
  %783 = icmp eq i64 %782, 0, !dbg !866
  br i1 %783, label %784, label %755, !dbg !866, !llvm.loop !871

784:                                              ; preds = %755, %802
  %785 = phi i64 [ 0, %802 ], [ %776, %755 ]
  %786 = icmp eq i64 %807, 0, !dbg !866
  br i1 %786, label %798, label %787, !dbg !866

787:                                              ; preds = %784, %787
  %788 = phi i64 [ %790, %787 ], [ %785, %784 ]
  %789 = phi i64 [ %796, %787 ], [ %807, %784 ]
  call void @llvm.dbg.value(metadata i64 %788, metadata !781, metadata !DIExpression()) #13, !dbg !857
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !857
  %790 = add nuw nsw i64 %788, 1, !dbg !867
  %791 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %805, i64 %788, !dbg !868
  %792 = load %struct.residue_t*, %struct.residue_t** %791, align 8, !dbg !868, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %792, metadata !784, metadata !DIExpression()) #13, !dbg !857
  %793 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %792, i64 0, i32 6, !dbg !869
  %794 = load i32, i32* %793, align 8, !dbg !870, !tbaa !317
  %795 = or i32 %794, 1, !dbg !870
  store i32 %795, i32* %793, align 8, !dbg !870, !tbaa !317
  call void @llvm.dbg.value(metadata i64 %790, metadata !781, metadata !DIExpression()) #13, !dbg !857
  %796 = add i64 %789, -1, !dbg !866
  %797 = icmp eq i64 %796, 0, !dbg !866
  br i1 %797, label %798, label %787, !dbg !866, !llvm.loop !873

798:                                              ; preds = %784, %787, %751, %745
  %799 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %746, i64 0, i32 4, !dbg !874
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !783, metadata !DIExpression()) #13, !dbg !857
  %800 = load %struct.strand_t*, %struct.strand_t** %799, align 8, !dbg !859, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %800, metadata !783, metadata !DIExpression()) #13, !dbg !857
  %801 = icmp eq %struct.strand_t* %800, null, !dbg !860
  br i1 %801, label %811, label %745, !dbg !860, !llvm.loop !875

802:                                              ; preds = %751
  %803 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %746, i64 0, i32 7, !dbg !877
  %804 = zext i32 %753 to i64, !dbg !866
  %805 = load %struct.residue_t**, %struct.residue_t*** %803, align 8, !dbg !877, !tbaa !313
  %806 = add nsw i64 %804, -1, !dbg !866
  %807 = and i64 %804, 3, !dbg !866
  %808 = icmp ult i64 %806, 3, !dbg !866
  br i1 %808, label %784, label %809, !dbg !866

809:                                              ; preds = %802
  %810 = sub nsw i64 %804, %807, !dbg !866
  br label %755, !dbg !866

811:                                              ; preds = %739, %798, %742, %615
  %812 = load i8*, i8** @apart, align 8, !dbg !878, !tbaa !290
  %813 = icmp eq i8* %812, null, !dbg !878
  br i1 %813, label %836, label %814, !dbg !880

814:                                              ; preds = %811
  %815 = tail call i8* @strtok(i8* nonnull %812, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !881
  call void @llvm.dbg.value(metadata i8* %815, metadata !531, metadata !DIExpression()) #13, !dbg !525
  call void @llvm.dbg.value(metadata i32* %3, metadata !532, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  call void @llvm.dbg.value(metadata i32* %4, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  %816 = call fastcc i32 @is_pattern(i8* %815, i32* nonnull %3, i32* nonnull %4) #13, !dbg !883
  %817 = icmp eq i32 %816, 0, !dbg !883
  br i1 %817, label %819, label %818, !dbg !885

818:                                              ; preds = %814
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* %815) #13, !dbg !886
  br label %822, !dbg !886

819:                                              ; preds = %814
  %820 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !887, !tbaa !290
  %821 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %820) #14, !dbg !889
  br label %822

822:                                              ; preds = %819, %818
  %823 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !890
  call void @llvm.dbg.value(metadata i8* %823, metadata !531, metadata !DIExpression()) #13, !dbg !525
  %824 = icmp eq i8* %823, null, !dbg !891
  br i1 %824, label %837, label %825, !dbg !891

825:                                              ; preds = %822, %833
  %826 = phi i8* [ %834, %833 ], [ %823, %822 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !532, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  call void @llvm.dbg.value(metadata i32* %4, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !525
  %827 = call fastcc i32 @is_pattern(i8* nonnull %826, i32* nonnull %3, i32* nonnull %4) #13, !dbg !892
  %828 = icmp eq i32 %827, 0, !dbg !892
  br i1 %828, label %830, label %829, !dbg !895

829:                                              ; preds = %825
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* nonnull %826) #13, !dbg !896
  br label %833, !dbg !896

830:                                              ; preds = %825
  %831 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !897, !tbaa !290
  %832 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %831) #14, !dbg !899
  br label %833

833:                                              ; preds = %830, %829
  %834 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !890
  call void @llvm.dbg.value(metadata i8* %834, metadata !531, metadata !DIExpression()) #13, !dbg !525
  %835 = icmp eq i8* %834, null, !dbg !891
  br i1 %835, label %837, label %825, !dbg !891, !llvm.loop !900

836:                                              ; preds = %811
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !902
  br label %837

837:                                              ; preds = %833, %822, %836
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %227) #13, !dbg !903
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %226) #13, !dbg !903
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !904, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !909, metadata !DIExpression()), !dbg !912
  %838 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !914, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %838, metadata !909, metadata !DIExpression()), !dbg !912
  %839 = icmp eq %struct.strand_t* %838, null, !dbg !916
  br i1 %839, label %907, label %840, !dbg !916

840:                                              ; preds = %837, %903
  %841 = phi %struct.strand_t* [ %905, %903 ], [ %838, %837 ]
  %842 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %841, i64 0, i32 2, !dbg !917
  %843 = load i32, i32* %842, align 4, !dbg !917, !tbaa !299
  %844 = shl i32 %843, 7, !dbg !920
  %845 = and i32 %844, 128, !dbg !920
  %846 = or i32 %845, %843, !dbg !921
  store i32 %846, i32* %842, align 4, !dbg !921, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !908, metadata !DIExpression()), !dbg !912
  %847 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %841, i64 0, i32 5, !dbg !922
  %848 = load i32, i32* %847, align 8, !dbg !922, !tbaa !308
  %849 = icmp sgt i32 %848, 0, !dbg !925
  br i1 %849, label %850, label %903, !dbg !926

850:                                              ; preds = %840
  %851 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %841, i64 0, i32 7, !dbg !927
  %852 = load %struct.residue_t**, %struct.residue_t*** %851, align 8, !dbg !927, !tbaa !313
  %853 = zext i32 %848 to i64, !dbg !926
  br label %854, !dbg !926

854:                                              ; preds = %900, %850
  %855 = phi i64 [ 0, %850 ], [ %901, %900 ]
  call void @llvm.dbg.value(metadata i64 %855, metadata !908, metadata !DIExpression()), !dbg !912
  %856 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %852, i64 %855, !dbg !929
  %857 = load %struct.residue_t*, %struct.residue_t** %856, align 8, !dbg !929, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %857, metadata !910, metadata !DIExpression()), !dbg !912
  %858 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %857, i64 0, i32 6, !dbg !930
  %859 = load i32, i32* %858, align 8, !dbg !930, !tbaa !317
  %860 = shl i32 %859, 7, !dbg !931
  %861 = and i32 %860, 128, !dbg !931
  %862 = or i32 %861, %859, !dbg !932
  store i32 %862, i32* %858, align 8, !dbg !932, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !907, metadata !DIExpression()), !dbg !912
  %863 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %857, i64 0, i32 15, !dbg !933
  %864 = load i32, i32* %863, align 8, !dbg !933, !tbaa !325
  %865 = icmp sgt i32 %864, 0, !dbg !936
  br i1 %865, label %866, label %900, !dbg !937

866:                                              ; preds = %854
  %867 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %857, i64 0, i32 17, !dbg !938
  %868 = load %struct.atom_t*, %struct.atom_t** %867, align 8, !dbg !938, !tbaa !330
  %869 = zext i32 %864 to i64, !dbg !937
  %870 = and i64 %869, 1, !dbg !937
  %871 = icmp eq i32 %864, 1, !dbg !937
  br i1 %871, label %891, label %872, !dbg !937

872:                                              ; preds = %866
  %873 = sub nsw i64 %869, %870, !dbg !937
  br label %874, !dbg !937

874:                                              ; preds = %874, %872
  %875 = phi i64 [ 0, %872 ], [ %888, %874 ]
  %876 = phi i64 [ %873, %872 ], [ %889, %874 ]
  call void @llvm.dbg.value(metadata i64 %875, metadata !907, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !911, metadata !DIExpression()), !dbg !912
  %877 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %868, i64 %875, i32 2, !dbg !940
  %878 = load i32, i32* %877, align 8, !dbg !940, !tbaa !333
  %879 = shl i32 %878, 7, !dbg !941
  %880 = and i32 %879, 128, !dbg !941
  %881 = or i32 %880, %878, !dbg !942
  store i32 %881, i32* %877, align 8, !dbg !942, !tbaa !333
  %882 = or i64 %875, 1, !dbg !943
  call void @llvm.dbg.value(metadata i64 %882, metadata !907, metadata !DIExpression()), !dbg !912
  %883 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %868, i64 %882, i32 2, !dbg !940
  %884 = load i32, i32* %883, align 8, !dbg !940, !tbaa !333
  %885 = shl i32 %884, 7, !dbg !941
  %886 = and i32 %885, 128, !dbg !941
  %887 = or i32 %886, %884, !dbg !942
  store i32 %887, i32* %883, align 8, !dbg !942, !tbaa !333
  %888 = add nuw nsw i64 %875, 2, !dbg !943
  call void @llvm.dbg.value(metadata i64 %888, metadata !907, metadata !DIExpression()), !dbg !912
  %889 = add i64 %876, -2, !dbg !937
  %890 = icmp eq i64 %889, 0, !dbg !937
  br i1 %890, label %891, label %874, !dbg !937, !llvm.loop !944

891:                                              ; preds = %874, %866
  %892 = phi i64 [ 0, %866 ], [ %888, %874 ]
  %893 = icmp eq i64 %870, 0, !dbg !937
  br i1 %893, label %900, label %894, !dbg !937

894:                                              ; preds = %891
  call void @llvm.dbg.value(metadata i64 %892, metadata !907, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !911, metadata !DIExpression()), !dbg !912
  %895 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %868, i64 %892, i32 2, !dbg !940
  %896 = load i32, i32* %895, align 8, !dbg !940, !tbaa !333
  %897 = shl i32 %896, 7, !dbg !941
  %898 = and i32 %897, 128, !dbg !941
  %899 = or i32 %898, %896, !dbg !942
  store i32 %899, i32* %895, align 8, !dbg !942, !tbaa !333
  call void @llvm.dbg.value(metadata i64 %892, metadata !907, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !912
  br label %900, !dbg !946

900:                                              ; preds = %894, %891, %854
  %901 = add nuw nsw i64 %855, 1, !dbg !946
  call void @llvm.dbg.value(metadata i64 %901, metadata !908, metadata !DIExpression()), !dbg !912
  %902 = icmp eq i64 %901, %853, !dbg !925
  br i1 %902, label %903, label %854, !dbg !926, !llvm.loop !947

903:                                              ; preds = %900, %840
  %904 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %841, i64 0, i32 4, !dbg !949
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !909, metadata !DIExpression()), !dbg !912
  %905 = load %struct.strand_t*, %struct.strand_t** %904, align 8, !dbg !914, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %905, metadata !909, metadata !DIExpression()), !dbg !912
  %906 = icmp eq %struct.strand_t* %905, null, !dbg !916
  br i1 %906, label %907, label %840, !dbg !916, !llvm.loop !950

907:                                              ; preds = %903, %837
  call void @llvm.dbg.value(metadata i8* %241, metadata !380, metadata !DIExpression()), !dbg !383
  %908 = icmp eq i8* %241, null, !dbg !952
  br i1 %908, label %911, label %909, !dbg !954

909:                                              ; preds = %907
  %910 = tail call i8* @strchr(i8* nonnull %241, i32 124) #12, !dbg !955
  call void @llvm.dbg.value(metadata i8* %910, metadata !381, metadata !DIExpression()), !dbg !383
  br label %911, !dbg !956

911:                                              ; preds = %907, %909
  %912 = phi i8* [ %910, %909 ], [ null, %907 ], !dbg !957
  call void @llvm.dbg.value(metadata i8* %912, metadata !381, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !485, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !488, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata %struct.strand_t* %838, metadata !488, metadata !DIExpression()), !dbg !958
  br i1 %839, label %984, label %913, !dbg !960

913:                                              ; preds = %911, %980
  %914 = phi %struct.strand_t* [ %982, %980 ], [ %838, %911 ]
  %915 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %914, i64 0, i32 2, !dbg !961
  %916 = load i32, i32* %915, align 4, !dbg !962, !tbaa !299
  %917 = and i32 %916, -2, !dbg !962
  store i32 %917, i32* %915, align 4, !dbg !962, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !487, metadata !DIExpression()), !dbg !958
  %918 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %914, i64 0, i32 5, !dbg !963
  %919 = load i32, i32* %918, align 8, !dbg !963, !tbaa !308
  %920 = icmp sgt i32 %919, 0, !dbg !964
  br i1 %920, label %921, label %980, !dbg !965

921:                                              ; preds = %913
  %922 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %914, i64 0, i32 7, !dbg !966
  %923 = load %struct.residue_t**, %struct.residue_t*** %922, align 8, !dbg !966, !tbaa !313
  %924 = zext i32 %919 to i64, !dbg !965
  br label %925, !dbg !965

925:                                              ; preds = %977, %921
  %926 = phi i64 [ 0, %921 ], [ %978, %977 ]
  call void @llvm.dbg.value(metadata i64 %926, metadata !487, metadata !DIExpression()), !dbg !958
  %927 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %923, i64 %926, !dbg !967
  %928 = load %struct.residue_t*, %struct.residue_t** %927, align 8, !dbg !967, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %928, metadata !489, metadata !DIExpression()), !dbg !958
  %929 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %928, i64 0, i32 6, !dbg !968
  %930 = load i32, i32* %929, align 8, !dbg !969, !tbaa !317
  %931 = and i32 %930, -2, !dbg !969
  store i32 %931, i32* %929, align 8, !dbg !969, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !958
  %932 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %928, i64 0, i32 15, !dbg !970
  %933 = load i32, i32* %932, align 8, !dbg !970, !tbaa !325
  %934 = icmp sgt i32 %933, 0, !dbg !971
  br i1 %934, label %935, label %977, !dbg !972

935:                                              ; preds = %925
  %936 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %928, i64 0, i32 17, !dbg !973
  %937 = load %struct.atom_t*, %struct.atom_t** %936, align 8, !dbg !973, !tbaa !330
  %938 = zext i32 %933 to i64, !dbg !972
  %939 = add nsw i64 %938, -1, !dbg !972
  %940 = and i64 %938, 3, !dbg !972
  %941 = icmp ult i64 %939, 3, !dbg !972
  br i1 %941, label %965, label %942, !dbg !972

942:                                              ; preds = %935
  %943 = sub nsw i64 %938, %940, !dbg !972
  br label %944, !dbg !972

944:                                              ; preds = %944, %942
  %945 = phi i64 [ 0, %942 ], [ %962, %944 ]
  %946 = phi i64 [ %943, %942 ], [ %963, %944 ]
  call void @llvm.dbg.value(metadata i64 %945, metadata !486, metadata !DIExpression()), !dbg !958
  %947 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %937, i64 %945, i32 2, !dbg !974
  %948 = load i32, i32* %947, align 8, !dbg !975, !tbaa !333
  %949 = and i32 %948, -2, !dbg !975
  store i32 %949, i32* %947, align 8, !dbg !975, !tbaa !333
  %950 = or i64 %945, 1, !dbg !976
  call void @llvm.dbg.value(metadata i64 %950, metadata !486, metadata !DIExpression()), !dbg !958
  %951 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %937, i64 %950, i32 2, !dbg !974
  %952 = load i32, i32* %951, align 8, !dbg !975, !tbaa !333
  %953 = and i32 %952, -2, !dbg !975
  store i32 %953, i32* %951, align 8, !dbg !975, !tbaa !333
  %954 = or i64 %945, 2, !dbg !976
  call void @llvm.dbg.value(metadata i64 %954, metadata !486, metadata !DIExpression()), !dbg !958
  %955 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %937, i64 %954, i32 2, !dbg !974
  %956 = load i32, i32* %955, align 8, !dbg !975, !tbaa !333
  %957 = and i32 %956, -2, !dbg !975
  store i32 %957, i32* %955, align 8, !dbg !975, !tbaa !333
  %958 = or i64 %945, 3, !dbg !976
  call void @llvm.dbg.value(metadata i64 %958, metadata !486, metadata !DIExpression()), !dbg !958
  %959 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %937, i64 %958, i32 2, !dbg !974
  %960 = load i32, i32* %959, align 8, !dbg !975, !tbaa !333
  %961 = and i32 %960, -2, !dbg !975
  store i32 %961, i32* %959, align 8, !dbg !975, !tbaa !333
  %962 = add nuw nsw i64 %945, 4, !dbg !976
  call void @llvm.dbg.value(metadata i64 %962, metadata !486, metadata !DIExpression()), !dbg !958
  %963 = add i64 %946, -4, !dbg !972
  %964 = icmp eq i64 %963, 0, !dbg !972
  br i1 %964, label %965, label %944, !dbg !972, !llvm.loop !977

965:                                              ; preds = %944, %935
  %966 = phi i64 [ 0, %935 ], [ %962, %944 ]
  %967 = icmp eq i64 %940, 0, !dbg !972
  br i1 %967, label %977, label %968, !dbg !972

968:                                              ; preds = %965, %968
  %969 = phi i64 [ %974, %968 ], [ %966, %965 ]
  %970 = phi i64 [ %975, %968 ], [ %940, %965 ]
  call void @llvm.dbg.value(metadata i64 %969, metadata !486, metadata !DIExpression()), !dbg !958
  %971 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %937, i64 %969, i32 2, !dbg !974
  %972 = load i32, i32* %971, align 8, !dbg !975, !tbaa !333
  %973 = and i32 %972, -2, !dbg !975
  store i32 %973, i32* %971, align 8, !dbg !975, !tbaa !333
  %974 = add nuw nsw i64 %969, 1, !dbg !976
  call void @llvm.dbg.value(metadata i64 %974, metadata !486, metadata !DIExpression()), !dbg !958
  %975 = add i64 %970, -1, !dbg !972
  %976 = icmp eq i64 %975, 0, !dbg !972
  br i1 %976, label %977, label %968, !dbg !972, !llvm.loop !979

977:                                              ; preds = %965, %968, %925
  %978 = add nuw nsw i64 %926, 1, !dbg !980
  call void @llvm.dbg.value(metadata i64 %978, metadata !487, metadata !DIExpression()), !dbg !958
  %979 = icmp eq i64 %978, %924, !dbg !964
  br i1 %979, label %980, label %925, !dbg !965, !llvm.loop !981

980:                                              ; preds = %977, %913
  %981 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %914, i64 0, i32 4, !dbg !983
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !488, metadata !DIExpression()), !dbg !958
  %982 = load %struct.strand_t*, %struct.strand_t** %981, align 8, !dbg !984, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %982, metadata !488, metadata !DIExpression()), !dbg !958
  %983 = icmp eq %struct.strand_t* %982, null, !dbg !960
  br i1 %983, label %984, label %913, !dbg !960, !llvm.loop !985

984:                                              ; preds = %980, %911
  call void @llvm.dbg.value(metadata i8* %912, metadata !381, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* %241, metadata !380, metadata !DIExpression()), !dbg !383
  br i1 %908, label %985, label %229, !dbg !551, !llvm.loop !987

985:                                              ; preds = %984
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !989, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !994, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata %struct.strand_t* %838, metadata !994, metadata !DIExpression()), !dbg !997
  %986 = icmp eq %struct.strand_t* %838, null, !dbg !999
  br i1 %986, label %1054, label %987, !dbg !999

987:                                              ; preds = %985, %1050
  %988 = phi %struct.strand_t* [ %1052, %1050 ], [ %838, %985 ]
  %989 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %988, i64 0, i32 2, !dbg !1001
  %990 = load i32, i32* %989, align 4, !dbg !1001, !tbaa !299
  %991 = lshr i32 %990, 7, !dbg !1004
  %992 = and i32 %991, 1, !dbg !1004
  %993 = or i32 %992, %990, !dbg !1005
  store i32 %993, i32* %989, align 4, !dbg !1005, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !993, metadata !DIExpression()), !dbg !997
  %994 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %988, i64 0, i32 5, !dbg !1006
  %995 = load i32, i32* %994, align 8, !dbg !1006, !tbaa !308
  %996 = icmp sgt i32 %995, 0, !dbg !1009
  br i1 %996, label %997, label %1050, !dbg !1010

997:                                              ; preds = %987
  %998 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %988, i64 0, i32 7, !dbg !1011
  %999 = load %struct.residue_t**, %struct.residue_t*** %998, align 8, !dbg !1011, !tbaa !313
  %1000 = zext i32 %995 to i64, !dbg !1010
  br label %1001, !dbg !1010

1001:                                             ; preds = %1047, %997
  %1002 = phi i64 [ 0, %997 ], [ %1048, %1047 ]
  call void @llvm.dbg.value(metadata i64 %1002, metadata !993, metadata !DIExpression()), !dbg !997
  %1003 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %999, i64 %1002, !dbg !1013
  %1004 = load %struct.residue_t*, %struct.residue_t** %1003, align 8, !dbg !1013, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %1004, metadata !995, metadata !DIExpression()), !dbg !997
  %1005 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1004, i64 0, i32 6, !dbg !1014
  %1006 = load i32, i32* %1005, align 8, !dbg !1014, !tbaa !317
  %1007 = lshr i32 %1006, 7, !dbg !1015
  %1008 = and i32 %1007, 1, !dbg !1015
  %1009 = or i32 %1008, %1006, !dbg !1016
  store i32 %1009, i32* %1005, align 8, !dbg !1016, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !992, metadata !DIExpression()), !dbg !997
  %1010 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1004, i64 0, i32 15, !dbg !1017
  %1011 = load i32, i32* %1010, align 8, !dbg !1017, !tbaa !325
  %1012 = icmp sgt i32 %1011, 0, !dbg !1020
  br i1 %1012, label %1013, label %1047, !dbg !1021

1013:                                             ; preds = %1001
  %1014 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1004, i64 0, i32 17, !dbg !1022
  %1015 = load %struct.atom_t*, %struct.atom_t** %1014, align 8, !dbg !1022, !tbaa !330
  %1016 = zext i32 %1011 to i64, !dbg !1021
  %1017 = and i64 %1016, 1, !dbg !1021
  %1018 = icmp eq i32 %1011, 1, !dbg !1021
  br i1 %1018, label %1038, label %1019, !dbg !1021

1019:                                             ; preds = %1013
  %1020 = sub nsw i64 %1016, %1017, !dbg !1021
  br label %1021, !dbg !1021

1021:                                             ; preds = %1021, %1019
  %1022 = phi i64 [ 0, %1019 ], [ %1035, %1021 ]
  %1023 = phi i64 [ %1020, %1019 ], [ %1036, %1021 ]
  call void @llvm.dbg.value(metadata i64 %1022, metadata !992, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !996, metadata !DIExpression()), !dbg !997
  %1024 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1015, i64 %1022, i32 2, !dbg !1024
  %1025 = load i32, i32* %1024, align 8, !dbg !1024, !tbaa !333
  %1026 = lshr i32 %1025, 7, !dbg !1025
  %1027 = and i32 %1026, 1, !dbg !1025
  %1028 = or i32 %1027, %1025, !dbg !1026
  store i32 %1028, i32* %1024, align 8, !dbg !1026, !tbaa !333
  %1029 = or i64 %1022, 1, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %1029, metadata !992, metadata !DIExpression()), !dbg !997
  %1030 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1015, i64 %1029, i32 2, !dbg !1024
  %1031 = load i32, i32* %1030, align 8, !dbg !1024, !tbaa !333
  %1032 = lshr i32 %1031, 7, !dbg !1025
  %1033 = and i32 %1032, 1, !dbg !1025
  %1034 = or i32 %1033, %1031, !dbg !1026
  store i32 %1034, i32* %1030, align 8, !dbg !1026, !tbaa !333
  %1035 = add nuw nsw i64 %1022, 2, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %1035, metadata !992, metadata !DIExpression()), !dbg !997
  %1036 = add i64 %1023, -2, !dbg !1021
  %1037 = icmp eq i64 %1036, 0, !dbg !1021
  br i1 %1037, label %1038, label %1021, !dbg !1021, !llvm.loop !1028

1038:                                             ; preds = %1021, %1013
  %1039 = phi i64 [ 0, %1013 ], [ %1035, %1021 ]
  %1040 = icmp eq i64 %1017, 0, !dbg !1021
  br i1 %1040, label %1047, label %1041, !dbg !1021

1041:                                             ; preds = %1038
  call void @llvm.dbg.value(metadata i64 %1039, metadata !992, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !996, metadata !DIExpression()), !dbg !997
  %1042 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1015, i64 %1039, i32 2, !dbg !1024
  %1043 = load i32, i32* %1042, align 8, !dbg !1024, !tbaa !333
  %1044 = lshr i32 %1043, 7, !dbg !1025
  %1045 = and i32 %1044, 1, !dbg !1025
  %1046 = or i32 %1045, %1043, !dbg !1026
  store i32 %1046, i32* %1042, align 8, !dbg !1026, !tbaa !333
  call void @llvm.dbg.value(metadata i64 %1039, metadata !992, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !997
  br label %1047, !dbg !1030

1047:                                             ; preds = %1041, %1038, %1001
  %1048 = add nuw nsw i64 %1002, 1, !dbg !1030
  call void @llvm.dbg.value(metadata i64 %1048, metadata !993, metadata !DIExpression()), !dbg !997
  %1049 = icmp eq i64 %1048, %1000, !dbg !1009
  br i1 %1049, label %1050, label %1001, !dbg !1010, !llvm.loop !1031

1050:                                             ; preds = %1047, %987
  %1051 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %988, i64 0, i32 4, !dbg !1033
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !994, metadata !DIExpression()), !dbg !997
  %1052 = load %struct.strand_t*, %struct.strand_t** %1051, align 8, !dbg !1034, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %1052, metadata !994, metadata !DIExpression()), !dbg !997
  %1053 = icmp eq %struct.strand_t* %1052, null, !dbg !999
  br i1 %1053, label %1054, label %987, !dbg !999, !llvm.loop !1035

1054:                                             ; preds = %1050, %77, %985, %9, %245
  %1055 = phi i32 [ 1, %245 ], [ 0, %9 ], [ 0, %985 ], [ 0, %77 ], [ 0, %1050 ], !dbg !383
  ret i32 %1055, !dbg !1037

1056:                                             ; preds = %337
  %1057 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %340, i64 0, i32 2, !dbg !688
  %1058 = load i32, i32* %1057, align 4, !dbg !689, !tbaa !299
  %1059 = or i32 %1058, 1, !dbg !689
  store i32 %1059, i32* %1057, align 4, !dbg !689, !tbaa !299
  br label %1060, !dbg !690

1060:                                             ; preds = %1056, %337
  %1061 = add nuw i32 %327, 2, !dbg !691
  call void @llvm.dbg.value(metadata i32 %1061, metadata !545, metadata !DIExpression()) #13, !dbg !537
  %1062 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %340, i64 0, i32 4, !dbg !692
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !537
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !537
  %1063 = add i32 %328, -2, !dbg !681
  %1064 = icmp eq i32 %1063, 0, !dbg !681
  br i1 %1064, label %344, label %325, !dbg !681, !llvm.loop !1038

1065:                                             ; preds = %421
  %1066 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %424, i64 0, i32 2, !dbg !747
  %1067 = load i32, i32* %1066, align 4, !dbg !748, !tbaa !299
  %1068 = or i32 %1067, 1, !dbg !748
  store i32 %1068, i32* %1066, align 4, !dbg !748, !tbaa !299
  br label %1069, !dbg !749

1069:                                             ; preds = %1065, %421
  %1070 = add nuw i32 %411, 2, !dbg !750
  call void @llvm.dbg.value(metadata i32 %1070, metadata !545, metadata !DIExpression()) #13, !dbg !738
  %1071 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %424, i64 0, i32 4, !dbg !751
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !738
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !546, metadata !DIExpression()) #13, !dbg !738
  %1072 = add i32 %412, -2, !dbg !742
  %1073 = icmp eq i32 %1072, 0, !dbg !742
  br i1 %1073, label %428, label %409, !dbg !742, !llvm.loop !1040

1074:                                             ; preds = %591
  %1075 = load %struct.residue_t**, %struct.residue_t*** %571, align 8, !dbg !808, !tbaa !313
  %1076 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %1075, i64 %580, !dbg !809
  %1077 = load %struct.residue_t*, %struct.residue_t** %1076, align 8, !dbg !809, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %1077, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %1078 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1077, i64 0, i32 6, !dbg !810
  %1079 = load i32, i32* %1078, align 8, !dbg !811, !tbaa !317
  %1080 = or i32 %1079, 1, !dbg !811
  store i32 %1080, i32* %1078, align 8, !dbg !811, !tbaa !317
  br label %1081, !dbg !812

1081:                                             ; preds = %1074, %591
  call void @llvm.dbg.value(metadata i64 %592, metadata !781, metadata !DIExpression()) #13, !dbg !785
  %1082 = add i64 %579, -2, !dbg !802
  %1083 = icmp eq i64 %1082, 0, !dbg !802
  br i1 %1083, label %596, label %577, !dbg !802, !llvm.loop !1042

1084:                                             ; preds = %533
  %1085 = load %struct.residue_t**, %struct.residue_t*** %554, align 8, !dbg !808, !tbaa !313
  %1086 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %1085, i64 %524, !dbg !809
  %1087 = load %struct.residue_t*, %struct.residue_t** %1086, align 8, !dbg !809, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %1087, metadata !784, metadata !DIExpression()) #13, !dbg !785
  %1088 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1087, i64 0, i32 6, !dbg !810
  %1089 = load i32, i32* %1088, align 8, !dbg !811, !tbaa !317
  %1090 = or i32 %1089, 1, !dbg !811
  store i32 %1090, i32* %1088, align 8, !dbg !811, !tbaa !317
  br label %1091, !dbg !812

1091:                                             ; preds = %1084, %533
  call void @llvm.dbg.value(metadata i64 %534, metadata !781, metadata !DIExpression()) #13, !dbg !785
  %1092 = add i64 %523, -2, !dbg !802
  %1093 = icmp eq i64 %1092, 0, !dbg !802
  br i1 %1093, label %536, label %521, !dbg !802, !llvm.loop !1044

1094:                                             ; preds = %715
  %1095 = load %struct.residue_t**, %struct.residue_t*** %695, align 8, !dbg !843, !tbaa !313
  %1096 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %1095, i64 %704, !dbg !844
  %1097 = load %struct.residue_t*, %struct.residue_t** %1096, align 8, !dbg !844, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %1097, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %1098 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1097, i64 0, i32 6, !dbg !845
  %1099 = load i32, i32* %1098, align 8, !dbg !846, !tbaa !317
  %1100 = or i32 %1099, 1, !dbg !846
  store i32 %1100, i32* %1098, align 8, !dbg !846, !tbaa !317
  br label %1101, !dbg !847

1101:                                             ; preds = %1094, %715
  call void @llvm.dbg.value(metadata i64 %716, metadata !781, metadata !DIExpression()) #13, !dbg !829
  %1102 = add i64 %703, -2, !dbg !839
  %1103 = icmp eq i64 %1102, 0, !dbg !839
  br i1 %1103, label %720, label %701, !dbg !839, !llvm.loop !1045

1104:                                             ; preds = %657
  %1105 = load %struct.residue_t**, %struct.residue_t*** %678, align 8, !dbg !843, !tbaa !313
  %1106 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %1105, i64 %648, !dbg !844
  %1107 = load %struct.residue_t*, %struct.residue_t** %1106, align 8, !dbg !844, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %1107, metadata !784, metadata !DIExpression()) #13, !dbg !829
  %1108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1107, i64 0, i32 6, !dbg !845
  %1109 = load i32, i32* %1108, align 8, !dbg !846, !tbaa !317
  %1110 = or i32 %1109, 1, !dbg !846
  store i32 %1110, i32* %1108, align 8, !dbg !846, !tbaa !317
  br label %1111, !dbg !847

1111:                                             ; preds = %1104, %657
  call void @llvm.dbg.value(metadata i64 %658, metadata !781, metadata !DIExpression()) #13, !dbg !829
  %1112 = add i64 %647, -2, !dbg !839
  %1113 = icmp eq i64 %1112, 0, !dbg !839
  br i1 %1113, label %660, label %645, !dbg !839, !llvm.loop !1047
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
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
  store i8 0, i8* %35, align 1, !dbg !1116, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1066, metadata !DIExpression()) #13, !dbg !1063
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1067, metadata !DIExpression()) #13, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #13, !dbg !1117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #13, !dbg !1117
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1068, metadata !DIExpression()) #13, !dbg !1063
  %36 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !1118, !tbaa !573
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
  %46 = load i8, i8* %45, align 1, !dbg !1132, !tbaa !573
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
  call void @llvm.dbg.value(metadata i8* %60, metadata !618, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !623, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !625, metadata !DIExpression()) #13, !dbg !1163
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1165, !tbaa !573
  call void @llvm.dbg.value(metadata i8* %60, metadata !624, metadata !DIExpression()) #13, !dbg !1163
  br label %67, !dbg !1166

67:                                               ; preds = %78, %63
  %68 = phi i8* [ %60, %63 ], [ %80, %78 ], !dbg !1167
  %69 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %63 ], [ %79, %78 ], !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %68, metadata !624, metadata !DIExpression()) #13, !dbg !1163
  %70 = load i8, i8* %68, align 1, !dbg !1168, !tbaa !573
  switch i8 %70, label %76 [
    i8 0, label %81
    i8 42, label %71
    i8 63, label %74
  ], !dbg !1169

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1170
  call void @llvm.dbg.value(metadata i8* %72, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  store i8 46, i8* %69, align 1, !dbg !1171, !tbaa !573
  %73 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !1172
  call void @llvm.dbg.value(metadata i8* %73, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  store i8 42, i8* %72, align 1, !dbg !1173, !tbaa !573
  br label %78, !dbg !1174

74:                                               ; preds = %67
  %75 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1175
  call void @llvm.dbg.value(metadata i8* %75, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  store i8 46, i8* %69, align 1, !dbg !1176, !tbaa !573
  br label %78, !dbg !1177

76:                                               ; preds = %67
  %77 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1178
  call void @llvm.dbg.value(metadata i8* %77, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  store i8 %70, i8* %69, align 1, !dbg !1179, !tbaa !573
  br label %78

78:                                               ; preds = %76, %74, %71
  %79 = phi i8* [ %73, %71 ], [ %75, %74 ], [ %77, %76 ], !dbg !1180
  call void @llvm.dbg.value(metadata i8* %79, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  %80 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %80, metadata !624, metadata !DIExpression()) #13, !dbg !1163
  br label %67, !dbg !1182, !llvm.loop !1183

81:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %69, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  %82 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %82, metadata !625, metadata !DIExpression()) #13, !dbg !1163
  store i8 36, i8* %69, align 1, !dbg !1186, !tbaa !573
  store i8 0, i8* %82, align 1, !dbg !1187, !tbaa !573
  %83 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1188
  %84 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %66, i64 0, i32 0, !dbg !1189
  %85 = load i8*, i8** %84, align 8, !dbg !1189, !tbaa !664
  %86 = tail call i32 @step(i8* %85, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1190
  %87 = icmp eq i32 %86, 0, !dbg !1152
  br i1 %87, label %116, label %179, !dbg !1191

88:                                               ; preds = %59
  %89 = load i32, i32* %3, align 4, !dbg !1192, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %89, metadata !1070, metadata !DIExpression()) #13, !dbg !1063
  %90 = load i32, i32* %4, align 4, !dbg !1194, !tbaa !672
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
  %98 = load i32, i32* %97, align 8, !dbg !1208, !tbaa !676
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

119:                                              ; preds = %116, %176
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
  call void @llvm.dbg.value(metadata i8* %120, metadata !618, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !623, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !625, metadata !DIExpression()) #13, !dbg !1243
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1245, !tbaa !573
  call void @llvm.dbg.value(metadata i8* %120, metadata !624, metadata !DIExpression()) #13, !dbg !1243
  br label %127, !dbg !1246

127:                                              ; preds = %138, %123
  %128 = phi i8* [ %120, %123 ], [ %140, %138 ], !dbg !1247
  %129 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %123 ], [ %139, %138 ], !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %128, metadata !624, metadata !DIExpression()) #13, !dbg !1243
  %130 = load i8, i8* %128, align 1, !dbg !1248, !tbaa !573
  switch i8 %130, label %136 [
    i8 0, label %141
    i8 42, label %131
    i8 63, label %134
  ], !dbg !1249

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1250
  call void @llvm.dbg.value(metadata i8* %132, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  store i8 46, i8* %129, align 1, !dbg !1251, !tbaa !573
  %133 = getelementptr inbounds i8, i8* %129, i64 2, !dbg !1252
  call void @llvm.dbg.value(metadata i8* %133, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  store i8 42, i8* %132, align 1, !dbg !1253, !tbaa !573
  br label %138, !dbg !1254

134:                                              ; preds = %127
  %135 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %135, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  store i8 46, i8* %129, align 1, !dbg !1256, !tbaa !573
  br label %138, !dbg !1257

136:                                              ; preds = %127
  %137 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1258
  call void @llvm.dbg.value(metadata i8* %137, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  store i8 %130, i8* %129, align 1, !dbg !1259, !tbaa !573
  br label %138

138:                                              ; preds = %136, %134, %131
  %139 = phi i8* [ %133, %131 ], [ %135, %134 ], [ %137, %136 ], !dbg !1260
  call void @llvm.dbg.value(metadata i8* %139, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  %140 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !1261
  call void @llvm.dbg.value(metadata i8* %140, metadata !624, metadata !DIExpression()) #13, !dbg !1243
  br label %127, !dbg !1262, !llvm.loop !1263

141:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %129, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  %142 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1265
  call void @llvm.dbg.value(metadata i8* %142, metadata !625, metadata !DIExpression()) #13, !dbg !1243
  store i8 36, i8* %129, align 1, !dbg !1266, !tbaa !573
  store i8 0, i8* %142, align 1, !dbg !1267, !tbaa !573
  %143 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1268
  %144 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %126, i64 0, i32 0, !dbg !1269
  %145 = load i8*, i8** %144, align 8, !dbg !1269, !tbaa !664
  %146 = tail call i32 @step(i8* %145, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1270
  %147 = icmp eq i32 %146, 0, !dbg !1238
  br i1 %147, label %176, label %179, !dbg !1271

148:                                              ; preds = %119
  %149 = load i32, i32* %3, align 4, !dbg !1272, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %149, metadata !1070, metadata !DIExpression()) #13, !dbg !1063
  %150 = load i32, i32* %4, align 4, !dbg !1274, !tbaa !672
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
  %158 = load i32, i32* %157, align 8, !dbg !1276, !tbaa !676
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

179:                                              ; preds = %103, %141, %163, %81, %53
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
  call void @llvm.dbg.value(metadata i8* %183, metadata !618, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !623, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !625, metadata !DIExpression()) #13, !dbg !1313
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1315, !tbaa !573
  call void @llvm.dbg.value(metadata i8* %183, metadata !624, metadata !DIExpression()) #13, !dbg !1313
  br label %188, !dbg !1316

188:                                              ; preds = %199, %186
  %189 = phi i8* [ %183, %186 ], [ %201, %199 ], !dbg !1317
  %190 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %186 ], [ %200, %199 ], !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %189, metadata !624, metadata !DIExpression()) #13, !dbg !1313
  %191 = load i8, i8* %189, align 1, !dbg !1318, !tbaa !573
  switch i8 %191, label %197 [
    i8 0, label %202
    i8 42, label %192
    i8 63, label %195
  ], !dbg !1319

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %193, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  store i8 46, i8* %190, align 1, !dbg !1321, !tbaa !573
  %194 = getelementptr inbounds i8, i8* %190, i64 2, !dbg !1322
  call void @llvm.dbg.value(metadata i8* %194, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  store i8 42, i8* %193, align 1, !dbg !1323, !tbaa !573
  br label %199, !dbg !1324

195:                                              ; preds = %188
  %196 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1325
  call void @llvm.dbg.value(metadata i8* %196, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  store i8 46, i8* %190, align 1, !dbg !1326, !tbaa !573
  br label %199, !dbg !1327

197:                                              ; preds = %188
  %198 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %198, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  store i8 %191, i8* %190, align 1, !dbg !1329, !tbaa !573
  br label %199

199:                                              ; preds = %197, %195, %192
  %200 = phi i8* [ %194, %192 ], [ %196, %195 ], [ %198, %197 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8* %200, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  %201 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %201, metadata !624, metadata !DIExpression()) #13, !dbg !1313
  br label %188, !dbg !1332, !llvm.loop !1333

202:                                              ; preds = %188
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %190, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  %203 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %203, metadata !625, metadata !DIExpression()) #13, !dbg !1313
  store i8 36, i8* %190, align 1, !dbg !1336, !tbaa !573
  store i8 0, i8* %203, align 1, !dbg !1337, !tbaa !573
  %204 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1338
  %205 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %187, i64 0, i32 4, !dbg !1339
  %206 = load i8*, i8** %205, align 8, !dbg !1339, !tbaa !1340
  %207 = tail call i32 @step(i8* %206, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1341
  %208 = icmp eq i32 %207, 0, !dbg !1303
  br i1 %208, label %236, label %296, !dbg !1342

209:                                              ; preds = %182
  %210 = load i32, i32* %3, align 4, !dbg !1343, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %210, metadata !1070, metadata !DIExpression()) #13, !dbg !1063
  %211 = load i32, i32* %4, align 4, !dbg !1345, !tbaa !672
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

239:                                              ; preds = %236, %293
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
  call void @llvm.dbg.value(metadata i8* %240, metadata !618, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !623, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !625, metadata !DIExpression()) #13, !dbg !1393
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1395, !tbaa !573
  call void @llvm.dbg.value(metadata i8* %240, metadata !624, metadata !DIExpression()) #13, !dbg !1393
  br label %245, !dbg !1396

245:                                              ; preds = %256, %243
  %246 = phi i8* [ %240, %243 ], [ %258, %256 ], !dbg !1397
  %247 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %243 ], [ %257, %256 ], !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %246, metadata !624, metadata !DIExpression()) #13, !dbg !1393
  %248 = load i8, i8* %246, align 1, !dbg !1398, !tbaa !573
  switch i8 %248, label %254 [
    i8 0, label %259
    i8 42, label %249
    i8 63, label %252
  ], !dbg !1399

249:                                              ; preds = %245
  %250 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1400
  call void @llvm.dbg.value(metadata i8* %250, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  store i8 46, i8* %247, align 1, !dbg !1401, !tbaa !573
  %251 = getelementptr inbounds i8, i8* %247, i64 2, !dbg !1402
  call void @llvm.dbg.value(metadata i8* %251, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  store i8 42, i8* %250, align 1, !dbg !1403, !tbaa !573
  br label %256, !dbg !1404

252:                                              ; preds = %245
  %253 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %253, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  store i8 46, i8* %247, align 1, !dbg !1406, !tbaa !573
  br label %256, !dbg !1407

254:                                              ; preds = %245
  %255 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %255, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  store i8 %248, i8* %247, align 1, !dbg !1409, !tbaa !573
  br label %256

256:                                              ; preds = %254, %252, %249
  %257 = phi i8* [ %251, %249 ], [ %253, %252 ], [ %255, %254 ], !dbg !1410
  call void @llvm.dbg.value(metadata i8* %257, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  %258 = getelementptr inbounds i8, i8* %246, i64 1, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %258, metadata !624, metadata !DIExpression()) #13, !dbg !1393
  br label %245, !dbg !1412, !llvm.loop !1413

259:                                              ; preds = %245
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %247, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  %260 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1415
  call void @llvm.dbg.value(metadata i8* %260, metadata !625, metadata !DIExpression()) #13, !dbg !1393
  store i8 36, i8* %247, align 1, !dbg !1416, !tbaa !573
  store i8 0, i8* %260, align 1, !dbg !1417, !tbaa !573
  %261 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1418
  %262 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %244, i64 0, i32 4, !dbg !1419
  %263 = load i8*, i8** %262, align 8, !dbg !1419, !tbaa !1340
  %264 = tail call i32 @step(i8* %263, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1420
  %265 = icmp eq i32 %264, 0, !dbg !1388
  br i1 %265, label %293, label %296, !dbg !1421

266:                                              ; preds = %239
  %267 = load i32, i32* %3, align 4, !dbg !1422, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %267, metadata !1070, metadata !DIExpression()) #13, !dbg !1063
  %268 = load i32, i32* %4, align 4, !dbg !1424, !tbaa !672
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

296:                                              ; preds = %225, %259, %282, %202, %179
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
  call void @llvm.dbg.value(metadata i8* %300, metadata !618, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !623, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !625, metadata !DIExpression()) #13, !dbg !1453
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1455, !tbaa !573
  call void @llvm.dbg.value(metadata i8* %300, metadata !624, metadata !DIExpression()) #13, !dbg !1453
  br label %304, !dbg !1456

304:                                              ; preds = %315, %303
  %305 = phi i8* [ %300, %303 ], [ %317, %315 ], !dbg !1457
  %306 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %303 ], [ %316, %315 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %305, metadata !624, metadata !DIExpression()) #13, !dbg !1453
  %307 = load i8, i8* %305, align 1, !dbg !1458, !tbaa !573
  switch i8 %307, label %313 [
    i8 0, label %318
    i8 42, label %308
    i8 63, label %311
  ], !dbg !1459

308:                                              ; preds = %304
  %309 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1460
  call void @llvm.dbg.value(metadata i8* %309, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  store i8 46, i8* %306, align 1, !dbg !1461, !tbaa !573
  %310 = getelementptr inbounds i8, i8* %306, i64 2, !dbg !1462
  call void @llvm.dbg.value(metadata i8* %310, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  store i8 42, i8* %309, align 1, !dbg !1463, !tbaa !573
  br label %315, !dbg !1464

311:                                              ; preds = %304
  %312 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1465
  call void @llvm.dbg.value(metadata i8* %312, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  store i8 46, i8* %306, align 1, !dbg !1466, !tbaa !573
  br label %315, !dbg !1467

313:                                              ; preds = %304
  %314 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1468
  call void @llvm.dbg.value(metadata i8* %314, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  store i8 %307, i8* %306, align 1, !dbg !1469, !tbaa !573
  br label %315

315:                                              ; preds = %313, %311, %308
  %316 = phi i8* [ %310, %308 ], [ %312, %311 ], [ %314, %313 ], !dbg !1470
  call void @llvm.dbg.value(metadata i8* %316, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  %317 = getelementptr inbounds i8, i8* %305, i64 1, !dbg !1471
  call void @llvm.dbg.value(metadata i8* %317, metadata !624, metadata !DIExpression()) #13, !dbg !1453
  br label %304, !dbg !1472, !llvm.loop !1473

318:                                              ; preds = %304
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %306, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  %319 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1475
  call void @llvm.dbg.value(metadata i8* %319, metadata !625, metadata !DIExpression()) #13, !dbg !1453
  store i8 36, i8* %306, align 1, !dbg !1476, !tbaa !573
  store i8 0, i8* %319, align 1, !dbg !1477, !tbaa !573
  %320 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1478
  %321 = load i8*, i8** %11, align 8, !dbg !1479, !tbaa !1480
  %322 = tail call i32 @step(i8* %321, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1481
  %323 = icmp eq i32 %322, 0, !dbg !1482
  br i1 %323, label %327, label %357, !dbg !1483

324:                                              ; preds = %299
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1484, !tbaa !290
  %326 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %325) #14, !dbg !1486
  br label %358, !dbg !1487

327:                                              ; preds = %318, %348
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
  call void @llvm.dbg.value(metadata i8* %328, metadata !618, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !623, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !625, metadata !DIExpression()) #13, !dbg !1498
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1500, !tbaa !573
  call void @llvm.dbg.value(metadata i8* %328, metadata !624, metadata !DIExpression()) #13, !dbg !1498
  br label %334, !dbg !1501

334:                                              ; preds = %345, %333
  %335 = phi i8* [ %328, %333 ], [ %347, %345 ], !dbg !1502
  %336 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %333 ], [ %346, %345 ], !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %335, metadata !624, metadata !DIExpression()) #13, !dbg !1498
  %337 = load i8, i8* %335, align 1, !dbg !1503, !tbaa !573
  switch i8 %337, label %343 [
    i8 0, label %348
    i8 42, label %338
    i8 63, label %341
  ], !dbg !1504

338:                                              ; preds = %334
  %339 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1505
  call void @llvm.dbg.value(metadata i8* %339, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  store i8 46, i8* %336, align 1, !dbg !1506, !tbaa !573
  %340 = getelementptr inbounds i8, i8* %336, i64 2, !dbg !1507
  call void @llvm.dbg.value(metadata i8* %340, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  store i8 42, i8* %339, align 1, !dbg !1508, !tbaa !573
  br label %345, !dbg !1509

341:                                              ; preds = %334
  %342 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1510
  call void @llvm.dbg.value(metadata i8* %342, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  store i8 46, i8* %336, align 1, !dbg !1511, !tbaa !573
  br label %345, !dbg !1512

343:                                              ; preds = %334
  %344 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1513
  call void @llvm.dbg.value(metadata i8* %344, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  store i8 %337, i8* %336, align 1, !dbg !1514, !tbaa !573
  br label %345

345:                                              ; preds = %343, %341, %338
  %346 = phi i8* [ %340, %338 ], [ %342, %341 ], [ %344, %343 ], !dbg !1515
  call void @llvm.dbg.value(metadata i8* %346, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  %347 = getelementptr inbounds i8, i8* %335, i64 1, !dbg !1516
  call void @llvm.dbg.value(metadata i8* %347, metadata !624, metadata !DIExpression()) #13, !dbg !1498
  br label %334, !dbg !1517, !llvm.loop !1518

348:                                              ; preds = %334
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %336, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  %349 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1520
  call void @llvm.dbg.value(metadata i8* %349, metadata !625, metadata !DIExpression()) #13, !dbg !1498
  store i8 36, i8* %336, align 1, !dbg !1521, !tbaa !573
  store i8 0, i8* %349, align 1, !dbg !1522, !tbaa !573
  %350 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1523
  %351 = load i8*, i8** %11, align 8, !dbg !1524, !tbaa !1480
  %352 = tail call i32 @step(i8* %351, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1525
  %353 = icmp eq i32 %352, 0, !dbg !1526
  br i1 %353, label %327, label %357, !dbg !1527, !llvm.loop !1528

354:                                              ; preds = %330
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1530, !tbaa !290
  %356 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %355) #14, !dbg !1532
  br label %358, !dbg !1533

357:                                              ; preds = %296, %318, %348
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #13, !dbg !1534
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #13, !dbg !1534
  br label %362, !dbg !1535

358:                                              ; preds = %176, %293, %327, %354, %324, %236, %116
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

362:                                              ; preds = %358, %357, %2, %28
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
  br i1 %6, label %79, label %7, !dbg !1555

7:                                                ; preds = %3, %75
  %8 = phi %struct.strand_t* [ %77, %75 ], [ %5, %3 ]
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
  br i1 %17, label %18, label %75, !dbg !1566

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 7, !dbg !1567
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !1567, !tbaa !313
  %21 = zext i32 %16 to i64, !dbg !1566
  br label %22, !dbg !1566

22:                                               ; preds = %18, %72
  %23 = phi i64 [ 0, %18 ], [ %73, %72 ]
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
  br i1 %34, label %35, label %72, !dbg !1578

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 17, !dbg !1579
  %37 = load %struct.atom_t*, %struct.atom_t** %36, align 8, !dbg !1579, !tbaa !330
  %38 = zext i32 %33 to i64, !dbg !1578
  %39 = and i64 %38, 1, !dbg !1578
  %40 = icmp eq i32 %33, 1, !dbg !1578
  br i1 %40, label %62, label %41, !dbg !1578

41:                                               ; preds = %35
  %42 = sub nsw i64 %38, %39, !dbg !1578
  br label %43, !dbg !1578

43:                                               ; preds = %43, %41
  %44 = phi i64 [ 0, %41 ], [ %59, %43 ]
  %45 = phi i64 [ %42, %41 ], [ %60, %43 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !1546, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1550, metadata !DIExpression()), !dbg !1551
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %44, i32 2, !dbg !1581
  %47 = load i32, i32* %46, align 8, !dbg !1581, !tbaa !333
  %48 = and i32 %47, %2, !dbg !1582
  %49 = icmp eq i32 %48, 0, !dbg !1582
  %50 = select i1 %49, i32 0, i32 %1, !dbg !1583
  %51 = or i32 %50, %47, !dbg !1584
  store i32 %51, i32* %46, align 8, !dbg !1584, !tbaa !333
  %52 = or i64 %44, 1, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %52, metadata !1546, metadata !DIExpression()), !dbg !1551
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %52, i32 2, !dbg !1581
  %54 = load i32, i32* %53, align 8, !dbg !1581, !tbaa !333
  %55 = and i32 %54, %2, !dbg !1582
  %56 = icmp eq i32 %55, 0, !dbg !1582
  %57 = select i1 %56, i32 0, i32 %1, !dbg !1583
  %58 = or i32 %57, %54, !dbg !1584
  store i32 %58, i32* %53, align 8, !dbg !1584, !tbaa !333
  %59 = add nuw nsw i64 %44, 2, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %59, metadata !1546, metadata !DIExpression()), !dbg !1551
  %60 = add i64 %45, -2, !dbg !1578
  %61 = icmp eq i64 %60, 0, !dbg !1578
  br i1 %61, label %62, label %43, !dbg !1578, !llvm.loop !1586

62:                                               ; preds = %43, %35
  %63 = phi i64 [ 0, %35 ], [ %59, %43 ]
  %64 = icmp eq i64 %39, 0, !dbg !1578
  br i1 %64, label %72, label %65, !dbg !1578

65:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 %63, metadata !1546, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1550, metadata !DIExpression()), !dbg !1551
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %63, i32 2, !dbg !1581
  %67 = load i32, i32* %66, align 8, !dbg !1581, !tbaa !333
  %68 = and i32 %67, %2, !dbg !1582
  %69 = icmp eq i32 %68, 0, !dbg !1582
  %70 = select i1 %69, i32 0, i32 %1, !dbg !1583
  %71 = or i32 %70, %67, !dbg !1584
  store i32 %71, i32* %66, align 8, !dbg !1584, !tbaa !333
  call void @llvm.dbg.value(metadata i64 %63, metadata !1546, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1551
  br label %72, !dbg !1588

72:                                               ; preds = %65, %62, %22
  %73 = add nuw nsw i64 %23, 1, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %73, metadata !1547, metadata !DIExpression()), !dbg !1551
  %74 = icmp ult i64 %73, %21, !dbg !1565
  br i1 %74, label %22, label %75, !dbg !1566, !llvm.loop !1589

75:                                               ; preds = %72, %7
  %76 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 4, !dbg !1591
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1548, metadata !DIExpression()), !dbg !1551
  %77 = load %struct.strand_t*, %struct.strand_t** %76, align 8, !dbg !1554, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %77, metadata !1548, metadata !DIExpression()), !dbg !1551
  %78 = icmp eq %struct.strand_t* %77, null, !dbg !1555
  br i1 %78, label %79, label %7, !dbg !1555, !llvm.loop !1592

79:                                               ; preds = %75, %3
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
  br i1 %5, label %79, label %6, !dbg !1609

6:                                                ; preds = %2
  %7 = xor i32 %1, -1, !dbg !1610
  br label %8, !dbg !1609

8:                                                ; preds = %6, %75
  %9 = phi %struct.strand_t* [ %4, %6 ], [ %77, %75 ]
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 2, !dbg !1613
  %11 = load i32, i32* %10, align 4, !dbg !1614, !tbaa !299
  %12 = and i32 %11, %7, !dbg !1614
  store i32 %12, i32* %10, align 4, !dbg !1614, !tbaa !299
  call void @llvm.dbg.value(metadata i32 0, metadata !1602, metadata !DIExpression()), !dbg !1605
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 5, !dbg !1615
  %14 = load i32, i32* %13, align 8, !dbg !1615, !tbaa !308
  %15 = icmp sgt i32 %14, 0, !dbg !1618
  br i1 %15, label %16, label %75, !dbg !1619

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 7, !dbg !1620
  %18 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1620, !tbaa !313
  %19 = zext i32 %14 to i64, !dbg !1619
  br label %20, !dbg !1619

20:                                               ; preds = %16, %72
  %21 = phi i64 [ 0, %16 ], [ %73, %72 ]
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
  br i1 %29, label %30, label %72, !dbg !1629

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %23, i64 0, i32 17, !dbg !1630
  %32 = load %struct.atom_t*, %struct.atom_t** %31, align 8, !dbg !1630, !tbaa !330
  %33 = zext i32 %28 to i64, !dbg !1629
  %34 = add nsw i64 %33, -1, !dbg !1629
  %35 = and i64 %33, 3, !dbg !1629
  %36 = icmp ult i64 %34, 3, !dbg !1629
  br i1 %36, label %60, label %37, !dbg !1629

37:                                               ; preds = %30
  %38 = sub nsw i64 %33, %35, !dbg !1629
  br label %39, !dbg !1629

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %57, %39 ]
  %41 = phi i64 [ %38, %37 ], [ %58, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1601, metadata !DIExpression()), !dbg !1605
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %40, i32 2, !dbg !1631
  %43 = load i32, i32* %42, align 8, !dbg !1632, !tbaa !333
  %44 = and i32 %43, %7, !dbg !1632
  store i32 %44, i32* %42, align 8, !dbg !1632, !tbaa !333
  %45 = or i64 %40, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %45, metadata !1601, metadata !DIExpression()), !dbg !1605
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %45, i32 2, !dbg !1631
  %47 = load i32, i32* %46, align 8, !dbg !1632, !tbaa !333
  %48 = and i32 %47, %7, !dbg !1632
  store i32 %48, i32* %46, align 8, !dbg !1632, !tbaa !333
  %49 = or i64 %40, 2, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %49, metadata !1601, metadata !DIExpression()), !dbg !1605
  %50 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %49, i32 2, !dbg !1631
  %51 = load i32, i32* %50, align 8, !dbg !1632, !tbaa !333
  %52 = and i32 %51, %7, !dbg !1632
  store i32 %52, i32* %50, align 8, !dbg !1632, !tbaa !333
  %53 = or i64 %40, 3, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %53, metadata !1601, metadata !DIExpression()), !dbg !1605
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %53, i32 2, !dbg !1631
  %55 = load i32, i32* %54, align 8, !dbg !1632, !tbaa !333
  %56 = and i32 %55, %7, !dbg !1632
  store i32 %56, i32* %54, align 8, !dbg !1632, !tbaa !333
  %57 = add nuw nsw i64 %40, 4, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %57, metadata !1601, metadata !DIExpression()), !dbg !1605
  %58 = add i64 %41, -4, !dbg !1629
  %59 = icmp eq i64 %58, 0, !dbg !1629
  br i1 %59, label %60, label %39, !dbg !1629, !llvm.loop !1634

60:                                               ; preds = %39, %30
  %61 = phi i64 [ 0, %30 ], [ %57, %39 ]
  %62 = icmp eq i64 %35, 0, !dbg !1629
  br i1 %62, label %72, label %63, !dbg !1629

63:                                               ; preds = %60, %63
  %64 = phi i64 [ %69, %63 ], [ %61, %60 ]
  %65 = phi i64 [ %70, %63 ], [ %35, %60 ]
  call void @llvm.dbg.value(metadata i64 %64, metadata !1601, metadata !DIExpression()), !dbg !1605
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %64, i32 2, !dbg !1631
  %67 = load i32, i32* %66, align 8, !dbg !1632, !tbaa !333
  %68 = and i32 %67, %7, !dbg !1632
  store i32 %68, i32* %66, align 8, !dbg !1632, !tbaa !333
  %69 = add nuw nsw i64 %64, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %69, metadata !1601, metadata !DIExpression()), !dbg !1605
  %70 = add i64 %65, -1, !dbg !1629
  %71 = icmp eq i64 %70, 0, !dbg !1629
  br i1 %71, label %72, label %63, !dbg !1629, !llvm.loop !1636

72:                                               ; preds = %60, %63, %20
  %73 = add nuw nsw i64 %21, 1, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %73, metadata !1602, metadata !DIExpression()), !dbg !1605
  %74 = icmp ult i64 %73, %19, !dbg !1618
  br i1 %74, label %20, label %75, !dbg !1619, !llvm.loop !1638

75:                                               ; preds = %72, %8
  %76 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 4, !dbg !1640
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1603, metadata !DIExpression()), !dbg !1605
  %77 = load %struct.strand_t*, %struct.strand_t** %76, align 8, !dbg !1608, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %77, metadata !1603, metadata !DIExpression()), !dbg !1605
  %78 = icmp eq %struct.strand_t* %77, null, !dbg !1609
  br i1 %78, label %79, label %8, !dbg !1609, !llvm.loop !1641

79:                                               ; preds = %75, %2
  ret void, !dbg !1643
}

; Function Attrs: nofree nounwind
declare dso_local i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @is_pattern(i8* nocapture readonly %0, i32* nocapture %1, i32* nocapture %2) unnamed_addr #6 !dbg !1644 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1649, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32* %1, metadata !1650, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32* %2, metadata !1651, metadata !DIExpression()), !dbg !1654
  %4 = tail call i16** @__ctype_b_loc() #15, !dbg !1655
  %5 = load i16*, i16** %4, align 8, !dbg !1655, !tbaa !290
  %6 = load i8, i8* %0, align 1, !dbg !1655, !tbaa !573
  %7 = sext i8 %6 to i64, !dbg !1655
  %8 = getelementptr inbounds i16, i16* %5, i64 %7, !dbg !1655
  %9 = load i16, i16* %8, align 2, !dbg !1655, !tbaa !1657
  %10 = and i16 %9, 2048, !dbg !1655
  %11 = icmp ne i16 %10, 0, !dbg !1655
  %12 = icmp eq i8 %6, 45, !dbg !1659
  %13 = or i1 %12, %11, !dbg !1660
  br i1 %13, label %14, label %95, !dbg !1660

14:                                               ; preds = %3
  %15 = icmp eq i16 %10, 0, !dbg !1661
  br i1 %15, label %66, label %16, !dbg !1663

16:                                               ; preds = %14, %16
  %17 = phi i8 [ %25, %16 ], [ %6, %14 ]
  %18 = phi i8* [ %24, %16 ], [ %0, %14 ]
  %19 = phi i32 [ %23, %16 ], [ 0, %14 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %19, metadata !1652, metadata !DIExpression()), !dbg !1654
  %20 = sext i8 %17 to i32, !dbg !1664
  %21 = mul nsw i32 %19, 10, !dbg !1668
  %22 = add i32 %21, -48, !dbg !1669
  %23 = add i32 %22, %20, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %23, metadata !1652, metadata !DIExpression()), !dbg !1654
  %24 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1671
  call void @llvm.dbg.value(metadata i8* %24, metadata !1653, metadata !DIExpression()), !dbg !1654
  %25 = load i8, i8* %24, align 1, !dbg !1664, !tbaa !573
  %26 = sext i8 %25 to i64, !dbg !1664
  %27 = getelementptr inbounds i16, i16* %5, i64 %26, !dbg !1664
  %28 = load i16, i16* %27, align 2, !dbg !1664, !tbaa !1657
  %29 = and i16 %28, 2048, !dbg !1664
  %30 = icmp eq i16 %29, 0, !dbg !1672
  br i1 %30, label %31, label %16, !dbg !1672, !llvm.loop !1673

31:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8* %18, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %18, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %18, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %23, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %24, metadata !1653, metadata !DIExpression()), !dbg !1654
  store i32 %23, i32* %1, align 4, !dbg !1675, !tbaa !672
  %32 = load i8, i8* %24, align 1, !dbg !1676, !tbaa !573
  switch i8 %32, label %37 [
    i8 0, label %33
    i8 45, label %34
  ], !dbg !1678

33:                                               ; preds = %31
  store i32 %23, i32* %2, align 4, !dbg !1679, !tbaa !672
  br label %95, !dbg !1681

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %35, metadata !1653, metadata !DIExpression()), !dbg !1654
  %36 = load i8, i8* %35, align 1, !dbg !1684, !tbaa !573
  br label %37, !dbg !1686

37:                                               ; preds = %31, %34
  %38 = phi i8 [ %32, %31 ], [ %36, %34 ], !dbg !1684
  %39 = phi i8* [ %24, %31 ], [ %35, %34 ], !dbg !1687
  call void @llvm.dbg.value(metadata i8* %39, metadata !1653, metadata !DIExpression()), !dbg !1654
  %40 = icmp eq i8 %38, 0, !dbg !1684
  br i1 %40, label %41, label %42, !dbg !1688

41:                                               ; preds = %37
  store i32 -1, i32* %2, align 4, !dbg !1689, !tbaa !672
  br label %95, !dbg !1691

42:                                               ; preds = %37
  %43 = sext i8 %38 to i64, !dbg !1692
  %44 = getelementptr inbounds i16, i16* %5, i64 %43, !dbg !1692
  %45 = load i16, i16* %44, align 2, !dbg !1692, !tbaa !1657
  %46 = and i16 %45, 2048, !dbg !1692
  %47 = icmp eq i16 %46, 0, !dbg !1692
  br i1 %47, label %95, label %48, !dbg !1694

48:                                               ; preds = %42, %48
  %49 = phi i8 [ %57, %48 ], [ %38, %42 ]
  %50 = phi i8* [ %56, %48 ], [ %39, %42 ]
  %51 = phi i32 [ %55, %48 ], [ 0, %42 ]
  call void @llvm.dbg.value(metadata i8* %50, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %51, metadata !1652, metadata !DIExpression()), !dbg !1654
  %52 = sext i8 %49 to i32, !dbg !1695
  %53 = mul nsw i32 %51, 10, !dbg !1698
  %54 = add i32 %53, -48, !dbg !1699
  %55 = add i32 %54, %52, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %55, metadata !1652, metadata !DIExpression()), !dbg !1654
  %56 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1701
  call void @llvm.dbg.value(metadata i8* %56, metadata !1653, metadata !DIExpression()), !dbg !1654
  %57 = load i8, i8* %56, align 1, !dbg !1695, !tbaa !573
  %58 = sext i8 %57 to i64, !dbg !1695
  %59 = getelementptr inbounds i16, i16* %5, i64 %58, !dbg !1695
  %60 = load i16, i16* %59, align 2, !dbg !1695, !tbaa !1657
  %61 = and i16 %60, 2048, !dbg !1695
  %62 = icmp eq i16 %61, 0, !dbg !1702
  br i1 %62, label %63, label %48, !dbg !1702, !llvm.loop !1703

63:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %55, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %56, metadata !1653, metadata !DIExpression()), !dbg !1654
  store i32 %55, i32* %2, align 4, !dbg !1705, !tbaa !672
  %64 = load i8, i8* %56, align 1, !dbg !1706, !tbaa !573
  %65 = sext i8 %64 to i32, !dbg !1707
  br label %95, !dbg !1708

66:                                               ; preds = %14
  store i32 1, i32* %1, align 4, !dbg !1709, !tbaa !672
  %67 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %67, metadata !1653, metadata !DIExpression()), !dbg !1654
  %68 = load i8, i8* %67, align 1, !dbg !1712, !tbaa !573
  %69 = icmp eq i8 %68, 0, !dbg !1712
  br i1 %69, label %70, label %71, !dbg !1714

70:                                               ; preds = %66
  store i32 -1, i32* %2, align 4, !dbg !1715, !tbaa !672
  br label %95, !dbg !1717

71:                                               ; preds = %66
  %72 = sext i8 %68 to i64, !dbg !1718
  %73 = getelementptr inbounds i16, i16* %5, i64 %72, !dbg !1718
  %74 = load i16, i16* %73, align 2, !dbg !1718, !tbaa !1657
  %75 = and i16 %74, 2048, !dbg !1718
  %76 = icmp eq i16 %75, 0, !dbg !1718
  br i1 %76, label %95, label %77, !dbg !1720

77:                                               ; preds = %71, %77
  %78 = phi i8 [ %86, %77 ], [ %68, %71 ]
  %79 = phi i8* [ %85, %77 ], [ %67, %71 ]
  %80 = phi i32 [ %84, %77 ], [ 0, %71 ]
  call void @llvm.dbg.value(metadata i8* %79, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %80, metadata !1652, metadata !DIExpression()), !dbg !1654
  %81 = sext i8 %78 to i32, !dbg !1721
  %82 = mul nsw i32 %80, 10, !dbg !1725
  %83 = add i32 %82, -48, !dbg !1726
  %84 = add i32 %83, %81, !dbg !1727
  call void @llvm.dbg.value(metadata i32 %84, metadata !1652, metadata !DIExpression()), !dbg !1654
  %85 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1728
  call void @llvm.dbg.value(metadata i8* %85, metadata !1653, metadata !DIExpression()), !dbg !1654
  %86 = load i8, i8* %85, align 1, !dbg !1721, !tbaa !573
  %87 = sext i8 %86 to i64, !dbg !1721
  %88 = getelementptr inbounds i16, i16* %5, i64 %87, !dbg !1721
  %89 = load i16, i16* %88, align 2, !dbg !1721, !tbaa !1657
  %90 = and i16 %89, 2048, !dbg !1721
  %91 = icmp eq i16 %90, 0, !dbg !1729
  br i1 %91, label %92, label %77, !dbg !1729, !llvm.loop !1730

92:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 %84, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %85, metadata !1653, metadata !DIExpression()), !dbg !1654
  store i32 %84, i32* %2, align 4, !dbg !1732, !tbaa !672
  %93 = load i8, i8* %85, align 1, !dbg !1733, !tbaa !573
  %94 = sext i8 %93 to i32, !dbg !1734
  br label %95, !dbg !1735

95:                                               ; preds = %71, %42, %3, %92, %70, %63, %41, %33
  %96 = phi i32 [ %65, %63 ], [ 0, %41 ], [ 0, %33 ], [ %94, %92 ], [ 0, %70 ], [ 1, %3 ], [ 1, %42 ], [ 0, %71 ], !dbg !1654
  ret i32 %96, !dbg !1736
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_res_pat(%struct.molecule_t* nocapture readonly %0, i8* nocapture readonly %1) unnamed_addr #0 !dbg !1737 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1739, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %1, metadata !1740, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %1, metadata !618, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !623, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !625, metadata !DIExpression()), !dbg !1745
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1747, !tbaa !573
  call void @llvm.dbg.value(metadata i8* %1, metadata !624, metadata !DIExpression()), !dbg !1745
  br label %3, !dbg !1748

3:                                                ; preds = %14, %2
  %4 = phi i8* [ %1, %2 ], [ %16, %14 ], !dbg !1749
  %5 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %2 ], [ %15, %14 ], !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !625, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %4, metadata !624, metadata !DIExpression()), !dbg !1745
  %6 = load i8, i8* %4, align 1, !dbg !1750, !tbaa !573
  switch i8 %6, label %12 [
    i8 0, label %17
    i8 42, label %7
    i8 63, label %10
  ], !dbg !1751

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1752
  call void @llvm.dbg.value(metadata i8* %8, metadata !625, metadata !DIExpression()), !dbg !1745
  store i8 46, i8* %5, align 1, !dbg !1753, !tbaa !573
  %9 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !1754
  call void @llvm.dbg.value(metadata i8* %9, metadata !625, metadata !DIExpression()), !dbg !1745
  store i8 42, i8* %8, align 1, !dbg !1755, !tbaa !573
  br label %14, !dbg !1756

10:                                               ; preds = %3
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1757
  call void @llvm.dbg.value(metadata i8* %11, metadata !625, metadata !DIExpression()), !dbg !1745
  store i8 46, i8* %5, align 1, !dbg !1758, !tbaa !573
  br label %14, !dbg !1759

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1760
  call void @llvm.dbg.value(metadata i8* %13, metadata !625, metadata !DIExpression()), !dbg !1745
  store i8 %6, i8* %5, align 1, !dbg !1761, !tbaa !573
  br label %14

14:                                               ; preds = %12, %10, %7
  %15 = phi i8* [ %9, %7 ], [ %11, %10 ], [ %13, %12 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8* %15, metadata !625, metadata !DIExpression()), !dbg !1745
  %16 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1763
  call void @llvm.dbg.value(metadata i8* %16, metadata !624, metadata !DIExpression()), !dbg !1745
  br label %3, !dbg !1764, !llvm.loop !1765

17:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8* %5, metadata !625, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !625, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !625, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !625, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !625, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !625, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !625, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !625, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !625, metadata !DIExpression()), !dbg !1745
  %18 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1767
  call void @llvm.dbg.value(metadata i8* %18, metadata !625, metadata !DIExpression()), !dbg !1745
  store i8 36, i8* %5, align 1, !dbg !1768, !tbaa !573
  store i8 0, i8* %18, align 1, !dbg !1769, !tbaa !573
  %19 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1770
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1771
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1742, metadata !DIExpression()), !dbg !1744
  %21 = load %struct.strand_t*, %struct.strand_t** %20, align 8, !dbg !1773, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %21, metadata !1742, metadata !DIExpression()), !dbg !1744
  %22 = icmp eq %struct.strand_t* %21, null, !dbg !1774
  br i1 %22, label %56, label %23, !dbg !1774

23:                                               ; preds = %17, %52
  %24 = phi %struct.strand_t* [ %54, %52 ], [ %21, %17 ]
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 2, !dbg !1775
  %26 = load i32, i32* %25, align 4, !dbg !1775, !tbaa !299
  %27 = and i32 %26, 1, !dbg !1779
  %28 = icmp eq i32 %27, 0, !dbg !1779
  br i1 %28, label %52, label %29, !dbg !1780

29:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 0, metadata !1741, metadata !DIExpression()), !dbg !1744
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 5, !dbg !1781
  %31 = load i32, i32* %30, align 8, !dbg !1781, !tbaa !308
  %32 = icmp sgt i32 %31, 0, !dbg !1785
  br i1 %32, label %33, label %52, !dbg !1786

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 7, !dbg !1787
  br label %35, !dbg !1786

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %48, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !1741, metadata !DIExpression()), !dbg !1744
  %37 = load %struct.residue_t**, %struct.residue_t*** %34, align 8, !dbg !1789, !tbaa !313
  %38 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %37, i64 %36, !dbg !1790
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8, !dbg !1790, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %39, metadata !1743, metadata !DIExpression()), !dbg !1744
  %40 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i64 0, i32 4, !dbg !1791
  %41 = load i8*, i8** %40, align 8, !dbg !1791, !tbaa !1340
  %42 = tail call i32 @step(i8* %41, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1792
  %43 = icmp ne i32 %42, 0, !dbg !1792
  %44 = zext i1 %43 to i32, !dbg !1792
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i64 0, i32 6, !dbg !1793
  %46 = load i32, i32* %45, align 8, !dbg !1794, !tbaa !317
  %47 = or i32 %46, %44, !dbg !1794
  store i32 %47, i32* %45, align 8, !dbg !1794, !tbaa !317
  %48 = add nuw nsw i64 %36, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %48, metadata !1741, metadata !DIExpression()), !dbg !1744
  %49 = load i32, i32* %30, align 8, !dbg !1781, !tbaa !308
  %50 = sext i32 %49 to i64, !dbg !1785
  %51 = icmp slt i64 %48, %50, !dbg !1785
  br i1 %51, label %35, label %52, !dbg !1786, !llvm.loop !1796

52:                                               ; preds = %35, %29, %23
  %53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 4, !dbg !1798
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1742, metadata !DIExpression()), !dbg !1744
  %54 = load %struct.strand_t*, %struct.strand_t** %53, align 8, !dbg !1773, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %54, metadata !1742, metadata !DIExpression()), !dbg !1744
  %55 = icmp eq %struct.strand_t* %54, null, !dbg !1774
  br i1 %55, label %56, label %23, !dbg !1774, !llvm.loop !1799

56:                                               ; preds = %52, %17
  ret void, !dbg !1801
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_atom_pat(%struct.molecule_t* nocapture readonly %0, i8* nocapture readonly %1) unnamed_addr #0 !dbg !1802 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1804, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8* %1, metadata !1805, metadata !DIExpression()), !dbg !1811
  tail call fastcc void @aexpr2rexpr(i8* %1), !dbg !1812
  %3 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1813
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1814
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1808, metadata !DIExpression()), !dbg !1811
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1816, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1808, metadata !DIExpression()), !dbg !1811
  %6 = icmp eq %struct.strand_t* %5, null, !dbg !1817
  br i1 %6, label %61, label %7, !dbg !1817

7:                                                ; preds = %2, %57
  %8 = phi %struct.strand_t* [ %59, %57 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 2, !dbg !1818
  %10 = load i32, i32* %9, align 4, !dbg !1818, !tbaa !299
  %11 = and i32 %10, 1, !dbg !1822
  %12 = icmp eq i32 %11, 0, !dbg !1822
  br i1 %12, label %57, label %13, !dbg !1823

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1806, metadata !DIExpression()), !dbg !1811
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 5, !dbg !1824
  %15 = load i32, i32* %14, align 8, !dbg !1824, !tbaa !308
  %16 = icmp sgt i32 %15, 0, !dbg !1828
  br i1 %16, label %17, label %57, !dbg !1829

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 7, !dbg !1830
  br label %19, !dbg !1829

19:                                               ; preds = %17, %52
  %20 = phi i32 [ %15, %17 ], [ %53, %52 ]
  %21 = phi i64 [ 0, %17 ], [ %54, %52 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1806, metadata !DIExpression()), !dbg !1811
  %22 = load %struct.residue_t**, %struct.residue_t*** %18, align 8, !dbg !1832, !tbaa !313
  %23 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %22, i64 %21, !dbg !1833
  %24 = load %struct.residue_t*, %struct.residue_t** %23, align 8, !dbg !1833, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.residue_t* %24, metadata !1809, metadata !DIExpression()), !dbg !1811
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 6, !dbg !1834
  %26 = load i32, i32* %25, align 8, !dbg !1834, !tbaa !317
  %27 = and i32 %26, 1, !dbg !1836
  %28 = icmp eq i32 %27, 0, !dbg !1836
  br i1 %28, label %52, label %29, !dbg !1837

29:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !1807, metadata !DIExpression()), !dbg !1811
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 15, !dbg !1838
  %31 = load i32, i32* %30, align 8, !dbg !1838, !tbaa !325
  %32 = icmp sgt i32 %31, 0, !dbg !1842
  br i1 %32, label %33, label %52, !dbg !1843

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 17, !dbg !1844
  br label %35, !dbg !1843

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !1807, metadata !DIExpression()), !dbg !1811
  %37 = load %struct.atom_t*, %struct.atom_t** %34, align 8, !dbg !1846, !tbaa !330
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1810, metadata !DIExpression()), !dbg !1811
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %36, i32 0, !dbg !1847
  %39 = load i8*, i8** %38, align 8, !dbg !1847, !tbaa !1480
  %40 = tail call i32 @step(i8* %39, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1848
  %41 = icmp ne i32 %40, 0, !dbg !1848
  %42 = zext i1 %41 to i32, !dbg !1848
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %36, i32 2, !dbg !1849
  %44 = load i32, i32* %43, align 8, !dbg !1850, !tbaa !333
  %45 = or i32 %44, %42, !dbg !1850
  store i32 %45, i32* %43, align 8, !dbg !1850, !tbaa !333
  %46 = add nuw nsw i64 %36, 1, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %46, metadata !1807, metadata !DIExpression()), !dbg !1811
  %47 = load i32, i32* %30, align 8, !dbg !1838, !tbaa !325
  %48 = sext i32 %47 to i64, !dbg !1842
  %49 = icmp slt i64 %46, %48, !dbg !1842
  br i1 %49, label %35, label %50, !dbg !1843, !llvm.loop !1852

50:                                               ; preds = %35
  %51 = load i32, i32* %14, align 8, !dbg !1824, !tbaa !308
  br label %52, !dbg !1854

52:                                               ; preds = %50, %29, %19
  %53 = phi i32 [ %51, %50 ], [ %20, %29 ], [ %20, %19 ], !dbg !1824
  %54 = add nuw nsw i64 %21, 1, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %54, metadata !1806, metadata !DIExpression()), !dbg !1811
  %55 = sext i32 %53 to i64, !dbg !1828
  %56 = icmp slt i64 %54, %55, !dbg !1828
  br i1 %56, label %19, label %57, !dbg !1829, !llvm.loop !1855

57:                                               ; preds = %52, %13, %7
  %58 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 4, !dbg !1857
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1808, metadata !DIExpression()), !dbg !1811
  %59 = load %struct.strand_t*, %struct.strand_t** %58, align 8, !dbg !1816, !tbaa !290
  call void @llvm.dbg.value(metadata %struct.strand_t* %59, metadata !1808, metadata !DIExpression()), !dbg !1811
  %60 = icmp eq %struct.strand_t* %59, null, !dbg !1817
  br i1 %60, label %61, label %7, !dbg !1817, !llvm.loop !1858

61:                                               ; preds = %57, %2
  ret void, !dbg !1860
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc void @aexpr2rexpr(i8* nocapture readonly %0) unnamed_addr #5 !dbg !619 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !618, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !623, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !625, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !625, metadata !DIExpression()), !dbg !1861
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1862, !tbaa !573
  call void @llvm.dbg.value(metadata i8* %0, metadata !624, metadata !DIExpression()), !dbg !1861
  br label %2, !dbg !1863

2:                                                ; preds = %13, %1
  %3 = phi i8* [ %0, %1 ], [ %15, %13 ], !dbg !1864
  %4 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %1 ], [ %14, %13 ], !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !625, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %3, metadata !624, metadata !DIExpression()), !dbg !1861
  %5 = load i8, i8* %3, align 1, !dbg !1865, !tbaa !573
  switch i8 %5, label %11 [
    i8 0, label %16
    i8 42, label %6
    i8 63, label %9
  ], !dbg !1866

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1867
  call void @llvm.dbg.value(metadata i8* %7, metadata !625, metadata !DIExpression()), !dbg !1861
  store i8 46, i8* %4, align 1, !dbg !1868, !tbaa !573
  %8 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !1869
  call void @llvm.dbg.value(metadata i8* %8, metadata !625, metadata !DIExpression()), !dbg !1861
  store i8 42, i8* %7, align 1, !dbg !1870, !tbaa !573
  br label %13, !dbg !1871

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1872
  call void @llvm.dbg.value(metadata i8* %10, metadata !625, metadata !DIExpression()), !dbg !1861
  store i8 46, i8* %4, align 1, !dbg !1873, !tbaa !573
  br label %13, !dbg !1874

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1875
  call void @llvm.dbg.value(metadata i8* %12, metadata !625, metadata !DIExpression()), !dbg !1861
  store i8 %5, i8* %4, align 1, !dbg !1876, !tbaa !573
  br label %13

13:                                               ; preds = %6, %11, %9
  %14 = phi i8* [ %8, %6 ], [ %10, %9 ], [ %12, %11 ], !dbg !1877
  call void @llvm.dbg.value(metadata i8* %14, metadata !625, metadata !DIExpression()), !dbg !1861
  %15 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %15, metadata !624, metadata !DIExpression()), !dbg !1861
  br label %2, !dbg !1879, !llvm.loop !1880

16:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !625, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !625, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !625, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !625, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !625, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !625, metadata !DIExpression()), !dbg !1861
  %17 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1882
  call void @llvm.dbg.value(metadata i8* %17, metadata !625, metadata !DIExpression()), !dbg !1861
  store i8 36, i8* %4, align 1, !dbg !1883, !tbaa !573
  store i8 0, i8* %17, align 1, !dbg !1884, !tbaa !573
  ret void, !dbg !1885
}

declare !dbg !242 dso_local i8* @compile(i8*, i8*, i8*, i32) local_unnamed_addr #8

declare !dbg !246 dso_local i32 @step(i8*, i8*) local_unnamed_addr #8

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #9

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone speculatable willreturn }
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
!342 = !DILocation(line: 76, column: 13, scope: !339)
!343 = !DILocation(line: 76, column: 10, scope: !339)
!344 = !DILocation(line: 77, column: 10, scope: !339)
!345 = !DILocation(line: 78, column: 7, scope: !339)
!346 = !DILocation(line: 71, column: 38, scope: !322)
!347 = distinct !{!347, !327, !348}
!348 = !DILocation(line: 79, column: 6, scope: !323)
!349 = !DILocation(line: 66, column: 10, scope: !288)
!350 = !DILocation(line: 65, column: 12, scope: !267)
!351 = !DILocation(line: 65, column: 4, scope: !267)
!352 = !DILocation(line: 68, column: 38, scope: !305)
!353 = distinct !{!353, !310, !354}
!354 = !DILocation(line: 81, column: 4, scope: !306)
!355 = !DILocation(line: 66, column: 49, scope: !298)
!356 = distinct !{!356, !294, !357}
!357 = !DILocation(line: 83, column: 2, scope: !288)
!358 = !DILocation(line: 85, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !267, file: !3, line: 85, column: 6)
!360 = !DILocation(line: 85, column: 6, scope: !267)
!361 = !DILocation(line: 86, column: 12, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !3, line: 85, column: 15)
!363 = !DILocation(line: 86, column: 3, scope: !362)
!364 = !DILocation(line: 87, column: 3, scope: !362)
!365 = !DILocation(line: 89, column: 20, scope: !366)
!366 = distinct !DILexicalBlock(scope: !359, file: !3, line: 88, column: 7)
!367 = !DILocation(line: 89, column: 18, scope: !366)
!368 = !DILocation(line: 89, column: 14, scope: !366)
!369 = !DILocation(line: 91, column: 18, scope: !366)
!370 = !DILocation(line: 91, column: 3, scope: !366)
!371 = !DILocation(line: 91, column: 14, scope: !366)
!372 = !DILocation(line: 94, column: 2, scope: !267)
!373 = !DILocation(line: 95, column: 1, scope: !267)
!374 = distinct !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 97, type: !375, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!25, !270, !238}
!377 = !{!378, !379, !380, !381, !382}
!378 = !DILocalVariable(name: "mol", arg: 1, scope: !374, file: !3, line: 97, type: !270)
!379 = !DILocalVariable(name: "aex", arg: 2, scope: !374, file: !3, line: 97, type: !238)
!380 = !DILocalVariable(name: "aep", scope: !374, file: !3, line: 99, type: !238)
!381 = !DILocalVariable(name: "n_aep", scope: !374, file: !3, line: 99, type: !238)
!382 = !DILocalVariable(name: "ael", scope: !374, file: !3, line: 100, type: !25)
!383 = !DILocation(line: 0, scope: !374)
!384 = !DILocation(line: 102, column: 10, scope: !385)
!385 = distinct !DILexicalBlock(scope: !374, file: !3, line: 102, column: 6)
!386 = !DILocation(line: 102, column: 6, scope: !374)
!387 = !DILocalVariable(name: "mol", arg: 1, scope: !388, file: !3, line: 398, type: !270)
!388 = distinct !DISubprogram(name: "select_all", scope: !3, file: !3, line: 398, type: !389, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !270}
!391 = !{!387, !392, !393, !394, !395}
!392 = !DILocalVariable(name: "a", scope: !388, file: !3, line: 400, type: !25)
!393 = !DILocalVariable(name: "r", scope: !388, file: !3, line: 400, type: !25)
!394 = !DILocalVariable(name: "sp", scope: !388, file: !3, line: 401, type: !40)
!395 = !DILocalVariable(name: "res", scope: !388, file: !3, line: 402, type: !57)
!396 = !DILocation(line: 0, scope: !388, inlinedAt: !397)
!397 = distinct !DILocation(line: 103, column: 3, scope: !398)
!398 = distinct !DILexicalBlock(scope: !385, file: !3, line: 102, column: 19)
!399 = !DILocation(line: 404, column: 2, scope: !400, inlinedAt: !397)
!400 = distinct !DILexicalBlock(scope: !388, file: !3, line: 404, column: 2)
!401 = !DILocation(line: 405, column: 7, scope: !402, inlinedAt: !397)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 404, column: 49)
!403 = distinct !DILexicalBlock(scope: !400, file: !3, line: 404, column: 2)
!404 = !DILocation(line: 405, column: 14, scope: !402, inlinedAt: !397)
!405 = !DILocation(line: 406, column: 23, scope: !406, inlinedAt: !397)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 406, column: 3)
!407 = distinct !DILexicalBlock(scope: !402, file: !3, line: 406, column: 3)
!408 = !DILocation(line: 406, column: 17, scope: !406, inlinedAt: !397)
!409 = !DILocation(line: 406, column: 3, scope: !407, inlinedAt: !397)
!410 = !DILocation(line: 0, scope: !411, inlinedAt: !397)
!411 = distinct !DILexicalBlock(scope: !406, file: !3, line: 406, column: 41)
!412 = !DILocation(line: 407, column: 10, scope: !411, inlinedAt: !397)
!413 = !DILocation(line: 408, column: 9, scope: !411, inlinedAt: !397)
!414 = !DILocation(line: 408, column: 16, scope: !411, inlinedAt: !397)
!415 = !DILocation(line: 409, column: 25, scope: !416, inlinedAt: !397)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 409, column: 4)
!417 = distinct !DILexicalBlock(scope: !411, file: !3, line: 409, column: 4)
!418 = !DILocation(line: 409, column: 18, scope: !416, inlinedAt: !397)
!419 = !DILocation(line: 409, column: 4, scope: !417, inlinedAt: !397)
!420 = !DILocation(line: 0, scope: !416, inlinedAt: !397)
!421 = !DILocation(line: 410, column: 23, scope: !416, inlinedAt: !397)
!422 = !DILocation(line: 410, column: 30, scope: !416, inlinedAt: !397)
!423 = !DILocation(line: 409, column: 36, scope: !416, inlinedAt: !397)
!424 = distinct !{!424, !419, !425}
!425 = !DILocation(line: 410, column: 33, scope: !417, inlinedAt: !397)
!426 = distinct !{!426, !427}
!427 = !{!"llvm.loop.unroll.disable"}
!428 = !DILocation(line: 406, column: 37, scope: !406, inlinedAt: !397)
!429 = distinct !{!429, !409, !430}
!430 = !DILocation(line: 411, column: 3, scope: !407, inlinedAt: !397)
!431 = !DILocation(line: 404, column: 41, scope: !403, inlinedAt: !397)
!432 = !DILocation(line: 0, scope: !400, inlinedAt: !397)
!433 = distinct !{!433, !399, !434}
!434 = !DILocation(line: 412, column: 2, scope: !400, inlinedAt: !397)
!435 = !DILocalVariable(name: "mol", arg: 1, scope: !436, file: !3, line: 432, type: !270)
!436 = distinct !DISubprogram(name: "clear_work", scope: !3, file: !3, line: 432, type: !389, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!437 = !{!435, !438, !439, !440, !441}
!438 = !DILocalVariable(name: "a", scope: !436, file: !3, line: 434, type: !25)
!439 = !DILocalVariable(name: "r", scope: !436, file: !3, line: 434, type: !25)
!440 = !DILocalVariable(name: "sp", scope: !436, file: !3, line: 435, type: !40)
!441 = !DILocalVariable(name: "res", scope: !436, file: !3, line: 436, type: !57)
!442 = !DILocation(line: 0, scope: !436, inlinedAt: !443)
!443 = distinct !DILocation(line: 107, column: 2, scope: !374)
!444 = !DILocation(line: 438, column: 2, scope: !445, inlinedAt: !443)
!445 = distinct !DILexicalBlock(scope: !436, file: !3, line: 438, column: 2)
!446 = !DILocation(line: 439, column: 7, scope: !447, inlinedAt: !443)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 438, column: 49)
!448 = distinct !DILexicalBlock(scope: !445, file: !3, line: 438, column: 2)
!449 = !DILocation(line: 439, column: 14, scope: !447, inlinedAt: !443)
!450 = !DILocation(line: 440, column: 23, scope: !451, inlinedAt: !443)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 440, column: 3)
!452 = distinct !DILexicalBlock(scope: !447, file: !3, line: 440, column: 3)
!453 = !DILocation(line: 440, column: 17, scope: !451, inlinedAt: !443)
!454 = !DILocation(line: 440, column: 3, scope: !452, inlinedAt: !443)
!455 = !DILocation(line: 0, scope: !456, inlinedAt: !443)
!456 = distinct !DILexicalBlock(scope: !451, file: !3, line: 440, column: 41)
!457 = !DILocation(line: 441, column: 10, scope: !456, inlinedAt: !443)
!458 = !DILocation(line: 442, column: 9, scope: !456, inlinedAt: !443)
!459 = !DILocation(line: 442, column: 16, scope: !456, inlinedAt: !443)
!460 = !DILocation(line: 443, column: 25, scope: !461, inlinedAt: !443)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 443, column: 4)
!462 = distinct !DILexicalBlock(scope: !456, file: !3, line: 443, column: 4)
!463 = !DILocation(line: 443, column: 18, scope: !461, inlinedAt: !443)
!464 = !DILocation(line: 443, column: 4, scope: !462, inlinedAt: !443)
!465 = !DILocation(line: 0, scope: !461, inlinedAt: !443)
!466 = !DILocation(line: 444, column: 23, scope: !461, inlinedAt: !443)
!467 = !DILocation(line: 444, column: 30, scope: !461, inlinedAt: !443)
!468 = !DILocation(line: 443, column: 36, scope: !461, inlinedAt: !443)
!469 = distinct !{!469, !464, !470}
!470 = !DILocation(line: 444, column: 34, scope: !462, inlinedAt: !443)
!471 = distinct !{!471, !427}
!472 = !DILocation(line: 440, column: 37, scope: !451, inlinedAt: !443)
!473 = distinct !{!473, !454, !474}
!474 = !DILocation(line: 445, column: 3, scope: !452, inlinedAt: !443)
!475 = !DILocation(line: 438, column: 41, scope: !448, inlinedAt: !443)
!476 = !DILocation(line: 0, scope: !445, inlinedAt: !443)
!477 = distinct !{!477, !444, !478}
!478 = !DILocation(line: 446, column: 2, scope: !445, inlinedAt: !443)
!479 = !DILocation(line: 422, column: 7, scope: !480, inlinedAt: !490)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 421, column: 49)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 421, column: 2)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 421, column: 2)
!483 = distinct !DISubprogram(name: "clear_select", scope: !3, file: !3, line: 415, type: !389, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!484 = !{!485, !486, !487, !488, !489}
!485 = !DILocalVariable(name: "mol", arg: 1, scope: !483, file: !3, line: 415, type: !270)
!486 = !DILocalVariable(name: "a", scope: !483, file: !3, line: 417, type: !25)
!487 = !DILocalVariable(name: "r", scope: !483, file: !3, line: 417, type: !25)
!488 = !DILocalVariable(name: "sp", scope: !483, file: !3, line: 418, type: !40)
!489 = !DILocalVariable(name: "res", scope: !483, file: !3, line: 419, type: !57)
!490 = distinct !DILocation(line: 108, column: 2, scope: !374)
!491 = !DILocation(line: 422, column: 14, scope: !480, inlinedAt: !490)
!492 = !DILocation(line: 0, scope: !483, inlinedAt: !490)
!493 = !DILocation(line: 423, column: 23, scope: !494, inlinedAt: !490)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 423, column: 3)
!495 = distinct !DILexicalBlock(scope: !480, file: !3, line: 423, column: 3)
!496 = !DILocation(line: 423, column: 17, scope: !494, inlinedAt: !490)
!497 = !DILocation(line: 423, column: 3, scope: !495, inlinedAt: !490)
!498 = !DILocation(line: 0, scope: !499, inlinedAt: !490)
!499 = distinct !DILexicalBlock(scope: !494, file: !3, line: 423, column: 41)
!500 = !DILocation(line: 424, column: 10, scope: !499, inlinedAt: !490)
!501 = !DILocation(line: 425, column: 9, scope: !499, inlinedAt: !490)
!502 = !DILocation(line: 425, column: 16, scope: !499, inlinedAt: !490)
!503 = !DILocation(line: 426, column: 25, scope: !504, inlinedAt: !490)
!504 = distinct !DILexicalBlock(scope: !505, file: !3, line: 426, column: 4)
!505 = distinct !DILexicalBlock(scope: !499, file: !3, line: 426, column: 4)
!506 = !DILocation(line: 426, column: 18, scope: !504, inlinedAt: !490)
!507 = !DILocation(line: 426, column: 4, scope: !505, inlinedAt: !490)
!508 = !DILocation(line: 0, scope: !504, inlinedAt: !490)
!509 = !DILocation(line: 427, column: 23, scope: !504, inlinedAt: !490)
!510 = !DILocation(line: 427, column: 30, scope: !504, inlinedAt: !490)
!511 = !DILocation(line: 426, column: 36, scope: !504, inlinedAt: !490)
!512 = distinct !{!512, !507, !513}
!513 = !DILocation(line: 427, column: 34, scope: !505, inlinedAt: !490)
!514 = distinct !{!514, !427}
!515 = !DILocation(line: 423, column: 37, scope: !494, inlinedAt: !490)
!516 = distinct !{!516, !497, !517}
!517 = !DILocation(line: 428, column: 3, scope: !495, inlinedAt: !490)
!518 = !DILocation(line: 421, column: 41, scope: !481, inlinedAt: !490)
!519 = !DILocation(line: 0, scope: !482, inlinedAt: !490)
!520 = !DILocation(line: 421, column: 2, scope: !482, inlinedAt: !490)
!521 = distinct !{!521, !520, !522}
!522 = !DILocation(line: 429, column: 2, scope: !482, inlinedAt: !490)
!523 = !DILocation(line: 110, column: 26, scope: !524)
!524 = distinct !DILexicalBlock(scope: !374, file: !3, line: 110, column: 2)
!525 = !DILocation(line: 0, scope: !526, inlinedAt: !534)
!526 = distinct !DISubprogram(name: "eval_1_aexpr", scope: !3, file: !3, line: 204, type: !375, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!527 = !{!528, !529, !530, !531, !532, !533}
!528 = !DILocalVariable(name: "mol", arg: 1, scope: !526, file: !3, line: 204, type: !270)
!529 = !DILocalVariable(name: "aex", arg: 2, scope: !526, file: !3, line: 204, type: !238)
!530 = !DILocalVariable(name: "aep", scope: !526, file: !3, line: 206, type: !238)
!531 = !DILocalVariable(name: "wp", scope: !526, file: !3, line: 207, type: !238)
!532 = !DILocalVariable(name: "lo", scope: !526, file: !3, line: 208, type: !25)
!533 = !DILocalVariable(name: "hi", scope: !526, file: !3, line: 208, type: !25)
!534 = distinct !DILocation(line: 123, column: 3, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 110, column: 52)
!536 = distinct !DILexicalBlock(scope: !524, file: !3, line: 110, column: 2)
!537 = !DILocation(line: 0, scope: !538, inlinedAt: !547)
!538 = distinct !DISubprogram(name: "match_str_range", scope: !3, file: !3, line: 529, type: !539, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !270, !25, !25}
!541 = !{!542, !543, !544, !545, !546}
!542 = !DILocalVariable(name: "mol", arg: 1, scope: !538, file: !3, line: 529, type: !270)
!543 = !DILocalVariable(name: "lo", arg: 2, scope: !538, file: !3, line: 529, type: !25)
!544 = !DILocalVariable(name: "hi", arg: 3, scope: !538, file: !3, line: 529, type: !25)
!545 = !DILocalVariable(name: "m", scope: !538, file: !3, line: 531, type: !25)
!546 = !DILocalVariable(name: "sp", scope: !538, file: !3, line: 532, type: !40)
!547 = distinct !DILocation(line: 232, column: 4, scope: !548, inlinedAt: !534)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 229, column: 7)
!549 = distinct !DILexicalBlock(scope: !550, file: !3, line: 227, column: 13)
!550 = distinct !DILexicalBlock(scope: !526, file: !3, line: 227, column: 6)
!551 = !DILocation(line: 110, column: 2, scope: !524)
!552 = !DILocation(line: 111, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !535, file: !3, line: 111, column: 7)
!554 = !DILocation(line: 111, column: 7, scope: !535)
!555 = !DILocation(line: 112, column: 16, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !3, line: 111, column: 14)
!557 = !DILocation(line: 113, column: 9, scope: !556)
!558 = !DILocation(line: 114, column: 3, scope: !556)
!559 = !DILocation(line: 115, column: 10, scope: !553)
!560 = !DILocation(line: 0, scope: !524)
!561 = !DILocation(line: 0, scope: !553)
!562 = !DILocation(line: 116, column: 11, scope: !563)
!563 = distinct !DILexicalBlock(scope: !535, file: !3, line: 116, column: 7)
!564 = !DILocation(line: 116, column: 7, scope: !535)
!565 = !DILocation(line: 117, column: 13, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !3, line: 116, column: 26)
!567 = !DILocation(line: 117, column: 4, scope: !566)
!568 = !DILocation(line: 119, column: 4, scope: !566)
!569 = !DILocation(line: 121, column: 24, scope: !535)
!570 = !DILocation(line: 121, column: 3, scope: !535)
!571 = !DILocation(line: 122, column: 3, scope: !535)
!572 = !DILocation(line: 122, column: 16, scope: !535)
!573 = !{!292, !292, i64 0}
!574 = !DILocation(line: 208, column: 2, scope: !526, inlinedAt: !534)
!575 = !DILocation(line: 211, column: 6, scope: !576, inlinedAt: !534)
!576 = distinct !DILexicalBlock(scope: !526, file: !3, line: 211, column: 6)
!577 = !DILocation(line: 211, column: 11, scope: !576, inlinedAt: !534)
!578 = !DILocation(line: 211, column: 6, scope: !526, inlinedAt: !534)
!579 = !DILocation(line: 212, column: 9, scope: !580, inlinedAt: !534)
!580 = distinct !DILexicalBlock(scope: !576, file: !3, line: 211, column: 19)
!581 = !DILocation(line: 214, column: 2, scope: !580, inlinedAt: !534)
!582 = !DILocation(line: 215, column: 11, scope: !583, inlinedAt: !534)
!583 = distinct !DILexicalBlock(scope: !576, file: !3, line: 214, column: 7)
!584 = !DILocation(line: 215, column: 9, scope: !583, inlinedAt: !534)
!585 = !DILocation(line: 216, column: 10, scope: !583, inlinedAt: !534)
!586 = !DILocation(line: 216, column: 26, scope: !583, inlinedAt: !534)
!587 = !DILocation(line: 216, column: 7, scope: !583, inlinedAt: !534)
!588 = !DILocation(line: 0, scope: !576, inlinedAt: !534)
!589 = !DILocation(line: 218, column: 6, scope: !590, inlinedAt: !534)
!590 = distinct !DILexicalBlock(scope: !526, file: !3, line: 218, column: 6)
!591 = !DILocation(line: 218, column: 11, scope: !590, inlinedAt: !534)
!592 = !DILocation(line: 218, column: 6, scope: !526, inlinedAt: !534)
!593 = !DILocation(line: 219, column: 9, scope: !594, inlinedAt: !534)
!594 = distinct !DILexicalBlock(scope: !590, file: !3, line: 218, column: 19)
!595 = !DILocation(line: 221, column: 2, scope: !594, inlinedAt: !534)
!596 = !DILocation(line: 222, column: 11, scope: !597, inlinedAt: !534)
!597 = distinct !DILexicalBlock(scope: !590, file: !3, line: 221, column: 7)
!598 = !DILocation(line: 222, column: 9, scope: !597, inlinedAt: !534)
!599 = !DILocation(line: 223, column: 10, scope: !597, inlinedAt: !534)
!600 = !DILocation(line: 223, column: 26, scope: !597, inlinedAt: !534)
!601 = !DILocation(line: 0, scope: !590, inlinedAt: !534)
!602 = !DILocation(line: 225, column: 10, scope: !526, inlinedAt: !534)
!603 = !DILocation(line: 225, column: 8, scope: !526, inlinedAt: !534)
!604 = !DILocation(line: 227, column: 6, scope: !550, inlinedAt: !534)
!605 = !DILocation(line: 227, column: 6, scope: !526, inlinedAt: !534)
!606 = !DILocation(line: 228, column: 8, scope: !549, inlinedAt: !534)
!607 = !DILocation(line: 229, column: 7, scope: !548, inlinedAt: !534)
!608 = !DILocation(line: 229, column: 7, scope: !549, inlinedAt: !534)
!609 = !DILocalVariable(name: "mol", arg: 1, scope: !610, file: !3, line: 493, type: !270)
!610 = distinct !DISubprogram(name: "match_str_pat", scope: !3, file: !3, line: 493, type: !611, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !270, !238}
!613 = !{!609, !614, !615}
!614 = !DILocalVariable(name: "pat", arg: 2, scope: !610, file: !3, line: 493, type: !238)
!615 = !DILocalVariable(name: "sp", scope: !610, file: !3, line: 495, type: !40)
!616 = !DILocation(line: 0, scope: !610, inlinedAt: !617)
!617 = distinct !DILocation(line: 230, column: 4, scope: !548, inlinedAt: !534)
!618 = !DILocalVariable(name: "aexpr", arg: 1, scope: !619, file: !3, line: 695, type: !238)
!619 = distinct !DISubprogram(name: "aexpr2rexpr", scope: !3, file: !3, line: 695, type: !620, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !238, !238}
!622 = !{!618, !623, !624, !625}
!623 = !DILocalVariable(name: "rexpr", arg: 2, scope: !619, file: !3, line: 695, type: !238)
!624 = !DILocalVariable(name: "aep", scope: !619, file: !3, line: 697, type: !238)
!625 = !DILocalVariable(name: "rep", scope: !619, file: !3, line: 697, type: !238)
!626 = !DILocation(line: 0, scope: !619, inlinedAt: !627)
!627 = distinct !DILocation(line: 497, column: 2, scope: !610, inlinedAt: !617)
!628 = !DILocation(line: 700, column: 9, scope: !619, inlinedAt: !627)
!629 = !DILocation(line: 701, column: 7, scope: !630, inlinedAt: !627)
!630 = distinct !DILexicalBlock(scope: !619, file: !3, line: 701, column: 2)
!631 = !DILocation(line: 0, scope: !630, inlinedAt: !627)
!632 = !DILocation(line: 701, column: 20, scope: !633, inlinedAt: !627)
!633 = distinct !DILexicalBlock(scope: !630, file: !3, line: 701, column: 2)
!634 = !DILocation(line: 701, column: 2, scope: !630, inlinedAt: !627)
!635 = !DILocation(line: 703, column: 8, scope: !636, inlinedAt: !627)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 702, column: 20)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 702, column: 7)
!638 = distinct !DILexicalBlock(scope: !633, file: !3, line: 701, column: 33)
!639 = !DILocation(line: 703, column: 11, scope: !636, inlinedAt: !627)
!640 = !DILocation(line: 704, column: 8, scope: !636, inlinedAt: !627)
!641 = !DILocation(line: 704, column: 11, scope: !636, inlinedAt: !627)
!642 = !DILocation(line: 705, column: 3, scope: !636, inlinedAt: !627)
!643 = !DILocation(line: 706, column: 8, scope: !644, inlinedAt: !627)
!644 = distinct !DILexicalBlock(scope: !637, file: !3, line: 705, column: 13)
!645 = !DILocation(line: 706, column: 11, scope: !644, inlinedAt: !627)
!646 = !DILocation(line: 706, column: 4, scope: !644, inlinedAt: !627)
!647 = !DILocation(line: 708, column: 8, scope: !644, inlinedAt: !627)
!648 = !DILocation(line: 708, column: 11, scope: !644, inlinedAt: !627)
!649 = !DILocation(line: 0, scope: !637, inlinedAt: !627)
!650 = !DILocation(line: 701, column: 29, scope: !633, inlinedAt: !627)
!651 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !627)
!652 = distinct !{!652, !634, !653}
!653 = !DILocation(line: 709, column: 2, scope: !630, inlinedAt: !627)
!654 = !DILocation(line: 710, column: 6, scope: !619, inlinedAt: !627)
!655 = !DILocation(line: 710, column: 9, scope: !619, inlinedAt: !627)
!656 = !DILocation(line: 711, column: 7, scope: !619, inlinedAt: !627)
!657 = !DILocation(line: 501, column: 2, scope: !610, inlinedAt: !617)
!658 = !DILocation(line: 0, scope: !659, inlinedAt: !617)
!659 = distinct !DILexicalBlock(scope: !610, file: !3, line: 503, column: 2)
!660 = !DILocation(line: 503, column: 2, scope: !659, inlinedAt: !617)
!661 = !DILocation(line: 507, column: 27, scope: !662, inlinedAt: !617)
!662 = distinct !DILexicalBlock(scope: !663, file: !3, line: 503, column: 49)
!663 = distinct !DILexicalBlock(scope: !659, file: !3, line: 503, column: 2)
!664 = !{!300, !291, i64 0}
!665 = !DILocation(line: 507, column: 17, scope: !662, inlinedAt: !617)
!666 = !DILocation(line: 507, column: 7, scope: !662, inlinedAt: !617)
!667 = !DILocation(line: 507, column: 14, scope: !662, inlinedAt: !617)
!668 = !DILocation(line: 503, column: 41, scope: !663, inlinedAt: !617)
!669 = distinct !{!669, !660, !670}
!670 = !DILocation(line: 509, column: 2, scope: !659, inlinedAt: !617)
!671 = !DILocation(line: 232, column: 26, scope: !548, inlinedAt: !534)
!672 = !{!301, !301, i64 0}
!673 = !DILocation(line: 232, column: 30, scope: !548, inlinedAt: !534)
!674 = !DILocation(line: 534, column: 9, scope: !675, inlinedAt: !547)
!675 = distinct !DILexicalBlock(scope: !538, file: !3, line: 534, column: 6)
!676 = !{!677, !301, i64 96}
!677 = !{!"molecule_t", !292, i64 0, !301, i64 96, !291, i64 104, !301, i64 112, !301, i64 116, !301, i64 120, !291, i64 128}
!678 = !DILocation(line: 536, column: 37, scope: !679, inlinedAt: !547)
!679 = distinct !DILexicalBlock(scope: !680, file: !3, line: 536, column: 2)
!680 = distinct !DILexicalBlock(scope: !538, file: !3, line: 536, column: 2)
!681 = !DILocation(line: 536, column: 2, scope: !680, inlinedAt: !547)
!682 = !DILocation(line: 0, scope: !680, inlinedAt: !547)
!683 = !DILocation(line: 538, column: 10, scope: !684, inlinedAt: !547)
!684 = distinct !DILexicalBlock(scope: !685, file: !3, line: 538, column: 7)
!685 = distinct !DILexicalBlock(scope: !679, file: !3, line: 537, column: 25)
!686 = !DILocation(line: 538, column: 20, scope: !684, inlinedAt: !547)
!687 = !DILocation(line: 538, column: 15, scope: !684, inlinedAt: !547)
!688 = !DILocation(line: 539, column: 8, scope: !684, inlinedAt: !547)
!689 = !DILocation(line: 539, column: 15, scope: !684, inlinedAt: !547)
!690 = !DILocation(line: 539, column: 4, scope: !684, inlinedAt: !547)
!691 = !DILocation(line: 537, column: 4, scope: !679, inlinedAt: !547)
!692 = !DILocation(line: 537, column: 17, scope: !679, inlinedAt: !547)
!693 = !DILocation(line: 233, column: 16, scope: !549, inlinedAt: !534)
!694 = !DILocation(line: 233, column: 3, scope: !549, inlinedAt: !534)
!695 = !DILocation(line: 234, column: 8, scope: !696, inlinedAt: !534)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 234, column: 8)
!697 = distinct !DILexicalBlock(scope: !549, file: !3, line: 233, column: 38)
!698 = !DILocation(line: 234, column: 8, scope: !697, inlinedAt: !534)
!699 = !DILocation(line: 0, scope: !610, inlinedAt: !700)
!700 = distinct !DILocation(line: 235, column: 5, scope: !696, inlinedAt: !534)
!701 = !DILocation(line: 0, scope: !619, inlinedAt: !702)
!702 = distinct !DILocation(line: 497, column: 2, scope: !610, inlinedAt: !700)
!703 = !DILocation(line: 700, column: 9, scope: !619, inlinedAt: !702)
!704 = !DILocation(line: 701, column: 7, scope: !630, inlinedAt: !702)
!705 = !DILocation(line: 0, scope: !630, inlinedAt: !702)
!706 = !DILocation(line: 701, column: 20, scope: !633, inlinedAt: !702)
!707 = !DILocation(line: 701, column: 2, scope: !630, inlinedAt: !702)
!708 = !DILocation(line: 703, column: 8, scope: !636, inlinedAt: !702)
!709 = !DILocation(line: 703, column: 11, scope: !636, inlinedAt: !702)
!710 = !DILocation(line: 704, column: 8, scope: !636, inlinedAt: !702)
!711 = !DILocation(line: 704, column: 11, scope: !636, inlinedAt: !702)
!712 = !DILocation(line: 705, column: 3, scope: !636, inlinedAt: !702)
!713 = !DILocation(line: 706, column: 8, scope: !644, inlinedAt: !702)
!714 = !DILocation(line: 706, column: 11, scope: !644, inlinedAt: !702)
!715 = !DILocation(line: 706, column: 4, scope: !644, inlinedAt: !702)
!716 = !DILocation(line: 708, column: 8, scope: !644, inlinedAt: !702)
!717 = !DILocation(line: 708, column: 11, scope: !644, inlinedAt: !702)
!718 = !DILocation(line: 0, scope: !637, inlinedAt: !702)
!719 = !DILocation(line: 701, column: 29, scope: !633, inlinedAt: !702)
!720 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !702)
!721 = distinct !{!721, !707, !722}
!722 = !DILocation(line: 709, column: 2, scope: !630, inlinedAt: !702)
!723 = !DILocation(line: 710, column: 6, scope: !619, inlinedAt: !702)
!724 = !DILocation(line: 710, column: 9, scope: !619, inlinedAt: !702)
!725 = !DILocation(line: 711, column: 7, scope: !619, inlinedAt: !702)
!726 = !DILocation(line: 501, column: 2, scope: !610, inlinedAt: !700)
!727 = !DILocation(line: 0, scope: !659, inlinedAt: !700)
!728 = !DILocation(line: 503, column: 2, scope: !659, inlinedAt: !700)
!729 = !DILocation(line: 507, column: 27, scope: !662, inlinedAt: !700)
!730 = !DILocation(line: 507, column: 17, scope: !662, inlinedAt: !700)
!731 = !DILocation(line: 507, column: 7, scope: !662, inlinedAt: !700)
!732 = !DILocation(line: 507, column: 14, scope: !662, inlinedAt: !700)
!733 = !DILocation(line: 503, column: 41, scope: !663, inlinedAt: !700)
!734 = distinct !{!734, !728, !735}
!735 = !DILocation(line: 509, column: 2, scope: !659, inlinedAt: !700)
!736 = !DILocation(line: 237, column: 27, scope: !696, inlinedAt: !534)
!737 = !DILocation(line: 237, column: 31, scope: !696, inlinedAt: !534)
!738 = !DILocation(line: 0, scope: !538, inlinedAt: !739)
!739 = distinct !DILocation(line: 237, column: 5, scope: !696, inlinedAt: !534)
!740 = !DILocation(line: 534, column: 9, scope: !675, inlinedAt: !739)
!741 = !DILocation(line: 536, column: 37, scope: !679, inlinedAt: !739)
!742 = !DILocation(line: 536, column: 2, scope: !680, inlinedAt: !739)
!743 = !DILocation(line: 0, scope: !680, inlinedAt: !739)
!744 = !DILocation(line: 538, column: 10, scope: !684, inlinedAt: !739)
!745 = !DILocation(line: 538, column: 20, scope: !684, inlinedAt: !739)
!746 = !DILocation(line: 538, column: 15, scope: !684, inlinedAt: !739)
!747 = !DILocation(line: 539, column: 8, scope: !684, inlinedAt: !739)
!748 = !DILocation(line: 539, column: 15, scope: !684, inlinedAt: !739)
!749 = !DILocation(line: 539, column: 4, scope: !684, inlinedAt: !739)
!750 = !DILocation(line: 537, column: 4, scope: !679, inlinedAt: !739)
!751 = !DILocation(line: 537, column: 17, scope: !679, inlinedAt: !739)
!752 = distinct !{!752, !694, !753}
!753 = !DILocation(line: 238, column: 3, scope: !549, inlinedAt: !534)
!754 = !DILocation(line: 0, scope: !538, inlinedAt: !755)
!755 = distinct !DILocation(line: 240, column: 3, scope: !550, inlinedAt: !534)
!756 = !DILocation(line: 536, column: 37, scope: !679, inlinedAt: !755)
!757 = !DILocation(line: 536, column: 2, scope: !680, inlinedAt: !755)
!758 = !DILocation(line: 0, scope: !680, inlinedAt: !755)
!759 = !DILocation(line: 539, column: 8, scope: !684, inlinedAt: !755)
!760 = !DILocation(line: 539, column: 15, scope: !684, inlinedAt: !755)
!761 = !DILocation(line: 537, column: 17, scope: !679, inlinedAt: !755)
!762 = distinct !{!762, !757, !763}
!763 = !DILocation(line: 540, column: 2, scope: !680, inlinedAt: !755)
!764 = distinct !{!764, !427}
!765 = !DILocation(line: 242, column: 6, scope: !766, inlinedAt: !534)
!766 = distinct !DILexicalBlock(scope: !526, file: !3, line: 242, column: 6)
!767 = !DILocation(line: 242, column: 6, scope: !526, inlinedAt: !534)
!768 = !DILocation(line: 243, column: 8, scope: !769, inlinedAt: !534)
!769 = distinct !DILexicalBlock(scope: !766, file: !3, line: 242, column: 13)
!770 = !DILocation(line: 244, column: 7, scope: !771, inlinedAt: !534)
!771 = distinct !DILexicalBlock(scope: !769, file: !3, line: 244, column: 7)
!772 = !DILocation(line: 244, column: 7, scope: !769, inlinedAt: !534)
!773 = !DILocation(line: 245, column: 4, scope: !771, inlinedAt: !534)
!774 = !DILocation(line: 247, column: 26, scope: !771, inlinedAt: !534)
!775 = !DILocation(line: 247, column: 30, scope: !771, inlinedAt: !534)
!776 = !DILocalVariable(name: "mol", arg: 1, scope: !777, file: !3, line: 608, type: !270)
!777 = distinct !DISubprogram(name: "match_res_range", scope: !3, file: !3, line: 608, type: !539, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!778 = !{!776, !779, !780, !781, !782, !783, !784}
!779 = !DILocalVariable(name: "lo", arg: 2, scope: !777, file: !3, line: 608, type: !25)
!780 = !DILocalVariable(name: "hi", arg: 3, scope: !777, file: !3, line: 608, type: !25)
!781 = !DILocalVariable(name: "r", scope: !777, file: !3, line: 610, type: !25)
!782 = !DILocalVariable(name: "rhi", scope: !777, file: !3, line: 610, type: !25)
!783 = !DILocalVariable(name: "sp", scope: !777, file: !3, line: 611, type: !40)
!784 = !DILocalVariable(name: "res", scope: !777, file: !3, line: 612, type: !57)
!785 = !DILocation(line: 0, scope: !777, inlinedAt: !786)
!786 = distinct !DILocation(line: 247, column: 4, scope: !771, inlinedAt: !534)
!787 = !DILocation(line: 0, scope: !788, inlinedAt: !786)
!788 = distinct !DILexicalBlock(scope: !777, file: !3, line: 614, column: 2)
!789 = !DILocation(line: 614, column: 2, scope: !788, inlinedAt: !786)
!790 = !DILocation(line: 0, scope: !791, inlinedAt: !786)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 615, column: 31)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 615, column: 7)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 614, column: 49)
!794 = distinct !DILexicalBlock(scope: !788, file: !3, line: 614, column: 2)
!795 = !DILocation(line: 615, column: 23, scope: !792, inlinedAt: !786)
!796 = !DILocation(line: 615, column: 17, scope: !792, inlinedAt: !786)
!797 = !DILocation(line: 615, column: 7, scope: !793, inlinedAt: !786)
!798 = !DILocation(line: 616, column: 32, scope: !791, inlinedAt: !786)
!799 = !DILocation(line: 617, column: 18, scope: !800, inlinedAt: !786)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 617, column: 4)
!801 = distinct !DILexicalBlock(scope: !791, file: !3, line: 617, column: 4)
!802 = !DILocation(line: 617, column: 4, scope: !801, inlinedAt: !786)
!803 = !DILocation(line: 619, column: 17, scope: !804, inlinedAt: !786)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 619, column: 9)
!805 = distinct !DILexicalBlock(scope: !800, file: !3, line: 617, column: 42)
!806 = !DILocation(line: 619, column: 12, scope: !804, inlinedAt: !786)
!807 = !DILocation(line: 619, column: 21, scope: !804, inlinedAt: !786)
!808 = !DILocation(line: 618, column: 15, scope: !805, inlinedAt: !786)
!809 = !DILocation(line: 618, column: 11, scope: !805, inlinedAt: !786)
!810 = !DILocation(line: 620, column: 11, scope: !804, inlinedAt: !786)
!811 = !DILocation(line: 620, column: 18, scope: !804, inlinedAt: !786)
!812 = !DILocation(line: 620, column: 6, scope: !804, inlinedAt: !786)
!813 = !DILocation(line: 614, column: 41, scope: !794, inlinedAt: !786)
!814 = distinct !{!814, !789, !815}
!815 = !DILocation(line: 623, column: 2, scope: !788, inlinedAt: !786)
!816 = !DILocation(line: 0, scope: !805, inlinedAt: !786)
!817 = !DILocation(line: 617, column: 24, scope: !800, inlinedAt: !786)
!818 = !DILocation(line: 619, column: 30, scope: !804, inlinedAt: !786)
!819 = distinct !{!819, !789, !815}
!820 = !DILocation(line: 248, column: 16, scope: !769, inlinedAt: !534)
!821 = !DILocation(line: 248, column: 3, scope: !769, inlinedAt: !534)
!822 = !DILocation(line: 249, column: 8, scope: !823, inlinedAt: !534)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 249, column: 8)
!824 = distinct !DILexicalBlock(scope: !769, file: !3, line: 248, column: 38)
!825 = !DILocation(line: 249, column: 8, scope: !824, inlinedAt: !534)
!826 = !DILocation(line: 250, column: 5, scope: !823, inlinedAt: !534)
!827 = !DILocation(line: 252, column: 27, scope: !823, inlinedAt: !534)
!828 = !DILocation(line: 252, column: 31, scope: !823, inlinedAt: !534)
!829 = !DILocation(line: 0, scope: !777, inlinedAt: !830)
!830 = distinct !DILocation(line: 252, column: 5, scope: !823, inlinedAt: !534)
!831 = !DILocation(line: 0, scope: !788, inlinedAt: !830)
!832 = !DILocation(line: 614, column: 2, scope: !788, inlinedAt: !830)
!833 = !DILocation(line: 0, scope: !791, inlinedAt: !830)
!834 = !DILocation(line: 615, column: 23, scope: !792, inlinedAt: !830)
!835 = !DILocation(line: 615, column: 17, scope: !792, inlinedAt: !830)
!836 = !DILocation(line: 615, column: 7, scope: !793, inlinedAt: !830)
!837 = !DILocation(line: 616, column: 32, scope: !791, inlinedAt: !830)
!838 = !DILocation(line: 617, column: 18, scope: !800, inlinedAt: !830)
!839 = !DILocation(line: 617, column: 4, scope: !801, inlinedAt: !830)
!840 = !DILocation(line: 619, column: 17, scope: !804, inlinedAt: !830)
!841 = !DILocation(line: 619, column: 12, scope: !804, inlinedAt: !830)
!842 = !DILocation(line: 619, column: 21, scope: !804, inlinedAt: !830)
!843 = !DILocation(line: 618, column: 15, scope: !805, inlinedAt: !830)
!844 = !DILocation(line: 618, column: 11, scope: !805, inlinedAt: !830)
!845 = !DILocation(line: 620, column: 11, scope: !804, inlinedAt: !830)
!846 = !DILocation(line: 620, column: 18, scope: !804, inlinedAt: !830)
!847 = !DILocation(line: 620, column: 6, scope: !804, inlinedAt: !830)
!848 = !DILocation(line: 614, column: 41, scope: !794, inlinedAt: !830)
!849 = distinct !{!849, !832, !850}
!850 = !DILocation(line: 623, column: 2, scope: !788, inlinedAt: !830)
!851 = !DILocation(line: 0, scope: !805, inlinedAt: !830)
!852 = !DILocation(line: 617, column: 24, scope: !800, inlinedAt: !830)
!853 = !DILocation(line: 619, column: 30, scope: !804, inlinedAt: !830)
!854 = distinct !{!854, !832, !850}
!855 = distinct !{!855, !821, !856}
!856 = !DILocation(line: 253, column: 3, scope: !769, inlinedAt: !534)
!857 = !DILocation(line: 0, scope: !777, inlinedAt: !858)
!858 = distinct !DILocation(line: 255, column: 3, scope: !766, inlinedAt: !534)
!859 = !DILocation(line: 0, scope: !788, inlinedAt: !858)
!860 = !DILocation(line: 614, column: 2, scope: !788, inlinedAt: !858)
!861 = !DILocation(line: 615, column: 23, scope: !792, inlinedAt: !858)
!862 = !DILocation(line: 615, column: 17, scope: !792, inlinedAt: !858)
!863 = !DILocation(line: 615, column: 7, scope: !793, inlinedAt: !858)
!864 = !DILocation(line: 616, column: 32, scope: !791, inlinedAt: !858)
!865 = !DILocation(line: 617, column: 18, scope: !800, inlinedAt: !858)
!866 = !DILocation(line: 617, column: 4, scope: !801, inlinedAt: !858)
!867 = !DILocation(line: 619, column: 17, scope: !804, inlinedAt: !858)
!868 = !DILocation(line: 618, column: 11, scope: !805, inlinedAt: !858)
!869 = !DILocation(line: 620, column: 11, scope: !804, inlinedAt: !858)
!870 = !DILocation(line: 620, column: 18, scope: !804, inlinedAt: !858)
!871 = distinct !{!871, !866, !872}
!872 = !DILocation(line: 621, column: 4, scope: !801, inlinedAt: !858)
!873 = distinct !{!873, !427}
!874 = !DILocation(line: 614, column: 41, scope: !794, inlinedAt: !858)
!875 = distinct !{!875, !860, !876}
!876 = !DILocation(line: 623, column: 2, scope: !788, inlinedAt: !858)
!877 = !DILocation(line: 0, scope: !805, inlinedAt: !858)
!878 = !DILocation(line: 257, column: 6, scope: !879, inlinedAt: !534)
!879 = distinct !DILexicalBlock(scope: !526, file: !3, line: 257, column: 6)
!880 = !DILocation(line: 257, column: 6, scope: !526, inlinedAt: !534)
!881 = !DILocation(line: 258, column: 8, scope: !882, inlinedAt: !534)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 257, column: 13)
!883 = !DILocation(line: 259, column: 7, scope: !884, inlinedAt: !534)
!884 = distinct !DILexicalBlock(scope: !882, file: !3, line: 259, column: 7)
!885 = !DILocation(line: 259, column: 7, scope: !882, inlinedAt: !534)
!886 = !DILocation(line: 260, column: 4, scope: !884, inlinedAt: !534)
!887 = !DILocation(line: 262, column: 13, scope: !888, inlinedAt: !534)
!888 = distinct !DILexicalBlock(scope: !884, file: !3, line: 261, column: 7)
!889 = !DILocation(line: 262, column: 4, scope: !888, inlinedAt: !534)
!890 = !DILocation(line: 264, column: 16, scope: !882, inlinedAt: !534)
!891 = !DILocation(line: 264, column: 3, scope: !882, inlinedAt: !534)
!892 = !DILocation(line: 265, column: 8, scope: !893, inlinedAt: !534)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 265, column: 8)
!894 = distinct !DILexicalBlock(scope: !882, file: !3, line: 264, column: 38)
!895 = !DILocation(line: 265, column: 8, scope: !894, inlinedAt: !534)
!896 = !DILocation(line: 266, column: 5, scope: !893, inlinedAt: !534)
!897 = !DILocation(line: 268, column: 14, scope: !898, inlinedAt: !534)
!898 = distinct !DILexicalBlock(scope: !893, file: !3, line: 267, column: 8)
!899 = !DILocation(line: 268, column: 5, scope: !898, inlinedAt: !534)
!900 = distinct !{!900, !891, !901}
!901 = !DILocation(line: 270, column: 3, scope: !882, inlinedAt: !534)
!902 = !DILocation(line: 272, column: 3, scope: !879, inlinedAt: !534)
!903 = !DILocation(line: 274, column: 1, scope: !526, inlinedAt: !534)
!904 = !DILocalVariable(name: "mol", arg: 1, scope: !905, file: !3, line: 449, type: !270)
!905 = distinct !DISubprogram(name: "or_select", scope: !3, file: !3, line: 449, type: !389, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !906)
!906 = !{!904, !907, !908, !909, !910, !911}
!907 = !DILocalVariable(name: "a", scope: !905, file: !3, line: 451, type: !25)
!908 = !DILocalVariable(name: "r", scope: !905, file: !3, line: 451, type: !25)
!909 = !DILocalVariable(name: "sp", scope: !905, file: !3, line: 452, type: !40)
!910 = !DILocalVariable(name: "res", scope: !905, file: !3, line: 453, type: !57)
!911 = !DILocalVariable(name: "ap", scope: !905, file: !3, line: 454, type: !103)
!912 = !DILocation(line: 0, scope: !905, inlinedAt: !913)
!913 = distinct !DILocation(line: 124, column: 3, scope: !535)
!914 = !DILocation(line: 0, scope: !915, inlinedAt: !913)
!915 = distinct !DILexicalBlock(scope: !905, file: !3, line: 456, column: 2)
!916 = !DILocation(line: 456, column: 2, scope: !915, inlinedAt: !913)
!917 = !DILocation(line: 457, column: 23, scope: !918, inlinedAt: !913)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 456, column: 49)
!919 = distinct !DILexicalBlock(scope: !915, file: !3, line: 456, column: 2)
!920 = !DILocation(line: 457, column: 17, scope: !918, inlinedAt: !913)
!921 = !DILocation(line: 457, column: 14, scope: !918, inlinedAt: !913)
!922 = !DILocation(line: 458, column: 23, scope: !923, inlinedAt: !913)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 458, column: 3)
!924 = distinct !DILexicalBlock(scope: !918, file: !3, line: 458, column: 3)
!925 = !DILocation(line: 458, column: 17, scope: !923, inlinedAt: !913)
!926 = !DILocation(line: 458, column: 3, scope: !924, inlinedAt: !913)
!927 = !DILocation(line: 0, scope: !928, inlinedAt: !913)
!928 = distinct !DILexicalBlock(scope: !923, file: !3, line: 458, column: 41)
!929 = !DILocation(line: 459, column: 10, scope: !928, inlinedAt: !913)
!930 = !DILocation(line: 460, column: 26, scope: !928, inlinedAt: !913)
!931 = !DILocation(line: 460, column: 19, scope: !928, inlinedAt: !913)
!932 = !DILocation(line: 460, column: 16, scope: !928, inlinedAt: !913)
!933 = !DILocation(line: 462, column: 25, scope: !934, inlinedAt: !913)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 462, column: 4)
!935 = distinct !DILexicalBlock(scope: !928, file: !3, line: 462, column: 4)
!936 = !DILocation(line: 462, column: 18, scope: !934, inlinedAt: !913)
!937 = !DILocation(line: 462, column: 4, scope: !935, inlinedAt: !913)
!938 = !DILocation(line: 0, scope: !939, inlinedAt: !913)
!939 = distinct !DILexicalBlock(scope: !934, file: !3, line: 462, column: 40)
!940 = !DILocation(line: 464, column: 25, scope: !939, inlinedAt: !913)
!941 = !DILocation(line: 464, column: 19, scope: !939, inlinedAt: !913)
!942 = !DILocation(line: 464, column: 16, scope: !939, inlinedAt: !913)
!943 = !DILocation(line: 462, column: 36, scope: !934, inlinedAt: !913)
!944 = distinct !{!944, !937, !945}
!945 = !DILocation(line: 466, column: 4, scope: !935, inlinedAt: !913)
!946 = !DILocation(line: 458, column: 37, scope: !923, inlinedAt: !913)
!947 = distinct !{!947, !926, !948}
!948 = !DILocation(line: 467, column: 3, scope: !924, inlinedAt: !913)
!949 = !DILocation(line: 456, column: 41, scope: !919, inlinedAt: !913)
!950 = distinct !{!950, !916, !951}
!951 = !DILocation(line: 468, column: 2, scope: !915, inlinedAt: !913)
!952 = !DILocation(line: 126, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !535, file: !3, line: 126, column: 7)
!954 = !DILocation(line: 126, column: 7, scope: !535)
!955 = !DILocation(line: 127, column: 12, scope: !953)
!956 = !DILocation(line: 127, column: 4, scope: !953)
!957 = !DILocation(line: 0, scope: !535)
!958 = !DILocation(line: 0, scope: !483, inlinedAt: !959)
!959 = distinct !DILocation(line: 128, column: 3, scope: !535)
!960 = !DILocation(line: 421, column: 2, scope: !482, inlinedAt: !959)
!961 = !DILocation(line: 422, column: 7, scope: !480, inlinedAt: !959)
!962 = !DILocation(line: 422, column: 14, scope: !480, inlinedAt: !959)
!963 = !DILocation(line: 423, column: 23, scope: !494, inlinedAt: !959)
!964 = !DILocation(line: 423, column: 17, scope: !494, inlinedAt: !959)
!965 = !DILocation(line: 423, column: 3, scope: !495, inlinedAt: !959)
!966 = !DILocation(line: 0, scope: !499, inlinedAt: !959)
!967 = !DILocation(line: 424, column: 10, scope: !499, inlinedAt: !959)
!968 = !DILocation(line: 425, column: 9, scope: !499, inlinedAt: !959)
!969 = !DILocation(line: 425, column: 16, scope: !499, inlinedAt: !959)
!970 = !DILocation(line: 426, column: 25, scope: !504, inlinedAt: !959)
!971 = !DILocation(line: 426, column: 18, scope: !504, inlinedAt: !959)
!972 = !DILocation(line: 426, column: 4, scope: !505, inlinedAt: !959)
!973 = !DILocation(line: 0, scope: !504, inlinedAt: !959)
!974 = !DILocation(line: 427, column: 23, scope: !504, inlinedAt: !959)
!975 = !DILocation(line: 427, column: 30, scope: !504, inlinedAt: !959)
!976 = !DILocation(line: 426, column: 36, scope: !504, inlinedAt: !959)
!977 = distinct !{!977, !972, !978}
!978 = !DILocation(line: 427, column: 34, scope: !505, inlinedAt: !959)
!979 = distinct !{!979, !427}
!980 = !DILocation(line: 423, column: 37, scope: !494, inlinedAt: !959)
!981 = distinct !{!981, !965, !982}
!982 = !DILocation(line: 428, column: 3, scope: !495, inlinedAt: !959)
!983 = !DILocation(line: 421, column: 41, scope: !481, inlinedAt: !959)
!984 = !DILocation(line: 0, scope: !482, inlinedAt: !959)
!985 = distinct !{!985, !960, !986}
!986 = !DILocation(line: 429, column: 2, scope: !482, inlinedAt: !959)
!987 = distinct !{!987, !551, !988}
!988 = !DILocation(line: 129, column: 2, scope: !524)
!989 = !DILocalVariable(name: "mol", arg: 1, scope: !990, file: !3, line: 471, type: !270)
!990 = distinct !DISubprogram(name: "set_select", scope: !3, file: !3, line: 471, type: !389, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !991)
!991 = !{!989, !992, !993, !994, !995, !996}
!992 = !DILocalVariable(name: "a", scope: !990, file: !3, line: 473, type: !25)
!993 = !DILocalVariable(name: "r", scope: !990, file: !3, line: 473, type: !25)
!994 = !DILocalVariable(name: "sp", scope: !990, file: !3, line: 474, type: !40)
!995 = !DILocalVariable(name: "res", scope: !990, file: !3, line: 475, type: !57)
!996 = !DILocalVariable(name: "ap", scope: !990, file: !3, line: 476, type: !103)
!997 = !DILocation(line: 0, scope: !990, inlinedAt: !998)
!998 = distinct !DILocation(line: 130, column: 2, scope: !374)
!999 = !DILocation(line: 478, column: 2, scope: !1000, inlinedAt: !998)
!1000 = distinct !DILexicalBlock(scope: !990, file: !3, line: 478, column: 2)
!1001 = !DILocation(line: 479, column: 23, scope: !1002, inlinedAt: !998)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 478, column: 49)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 478, column: 2)
!1004 = !DILocation(line: 479, column: 17, scope: !1002, inlinedAt: !998)
!1005 = !DILocation(line: 479, column: 14, scope: !1002, inlinedAt: !998)
!1006 = !DILocation(line: 480, column: 23, scope: !1007, inlinedAt: !998)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 480, column: 3)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 480, column: 3)
!1009 = !DILocation(line: 480, column: 17, scope: !1007, inlinedAt: !998)
!1010 = !DILocation(line: 480, column: 3, scope: !1008, inlinedAt: !998)
!1011 = !DILocation(line: 0, scope: !1012, inlinedAt: !998)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 480, column: 41)
!1013 = !DILocation(line: 481, column: 10, scope: !1012, inlinedAt: !998)
!1014 = !DILocation(line: 482, column: 26, scope: !1012, inlinedAt: !998)
!1015 = !DILocation(line: 482, column: 19, scope: !1012, inlinedAt: !998)
!1016 = !DILocation(line: 482, column: 16, scope: !1012, inlinedAt: !998)
!1017 = !DILocation(line: 484, column: 25, scope: !1018, inlinedAt: !998)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 484, column: 4)
!1019 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 484, column: 4)
!1020 = !DILocation(line: 484, column: 18, scope: !1018, inlinedAt: !998)
!1021 = !DILocation(line: 484, column: 4, scope: !1019, inlinedAt: !998)
!1022 = !DILocation(line: 0, scope: !1023, inlinedAt: !998)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 484, column: 40)
!1024 = !DILocation(line: 486, column: 25, scope: !1023, inlinedAt: !998)
!1025 = !DILocation(line: 486, column: 19, scope: !1023, inlinedAt: !998)
!1026 = !DILocation(line: 486, column: 16, scope: !1023, inlinedAt: !998)
!1027 = !DILocation(line: 484, column: 36, scope: !1018, inlinedAt: !998)
!1028 = distinct !{!1028, !1021, !1029}
!1029 = !DILocation(line: 488, column: 4, scope: !1019, inlinedAt: !998)
!1030 = !DILocation(line: 480, column: 37, scope: !1007, inlinedAt: !998)
!1031 = distinct !{!1031, !1010, !1032}
!1032 = !DILocation(line: 489, column: 3, scope: !1008, inlinedAt: !998)
!1033 = !DILocation(line: 478, column: 41, scope: !1003, inlinedAt: !998)
!1034 = !DILocation(line: 0, scope: !1000, inlinedAt: !998)
!1035 = distinct !{!1035, !999, !1036}
!1036 = !DILocation(line: 490, column: 2, scope: !1000, inlinedAt: !998)
!1037 = !DILocation(line: 133, column: 1, scope: !374)
!1038 = distinct !{!1038, !681, !1039}
!1039 = !DILocation(line: 540, column: 2, scope: !680, inlinedAt: !547)
!1040 = distinct !{!1040, !742, !1041}
!1041 = !DILocation(line: 540, column: 2, scope: !680, inlinedAt: !739)
!1042 = distinct !{!1042, !802, !1043}
!1043 = !DILocation(line: 621, column: 4, scope: !801, inlinedAt: !786)
!1044 = distinct !{!1044, !802, !1043}
!1045 = distinct !{!1045, !839, !1046}
!1046 = !DILocation(line: 621, column: 4, scope: !801, inlinedAt: !830)
!1047 = distinct !{!1047, !839, !1046}
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
!1163 = !DILocation(line: 0, scope: !619, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 519, column: 2, scope: !1156, inlinedAt: !1162)
!1165 = !DILocation(line: 700, column: 9, scope: !619, inlinedAt: !1164)
!1166 = !DILocation(line: 701, column: 7, scope: !630, inlinedAt: !1164)
!1167 = !DILocation(line: 0, scope: !630, inlinedAt: !1164)
!1168 = !DILocation(line: 701, column: 20, scope: !633, inlinedAt: !1164)
!1169 = !DILocation(line: 701, column: 2, scope: !630, inlinedAt: !1164)
!1170 = !DILocation(line: 703, column: 8, scope: !636, inlinedAt: !1164)
!1171 = !DILocation(line: 703, column: 11, scope: !636, inlinedAt: !1164)
!1172 = !DILocation(line: 704, column: 8, scope: !636, inlinedAt: !1164)
!1173 = !DILocation(line: 704, column: 11, scope: !636, inlinedAt: !1164)
!1174 = !DILocation(line: 705, column: 3, scope: !636, inlinedAt: !1164)
!1175 = !DILocation(line: 706, column: 8, scope: !644, inlinedAt: !1164)
!1176 = !DILocation(line: 706, column: 11, scope: !644, inlinedAt: !1164)
!1177 = !DILocation(line: 706, column: 4, scope: !644, inlinedAt: !1164)
!1178 = !DILocation(line: 708, column: 8, scope: !644, inlinedAt: !1164)
!1179 = !DILocation(line: 708, column: 11, scope: !644, inlinedAt: !1164)
!1180 = !DILocation(line: 0, scope: !637, inlinedAt: !1164)
!1181 = !DILocation(line: 701, column: 29, scope: !633, inlinedAt: !1164)
!1182 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1164)
!1183 = distinct !{!1183, !1169, !1184}
!1184 = !DILocation(line: 709, column: 2, scope: !630, inlinedAt: !1164)
!1185 = !DILocation(line: 710, column: 6, scope: !619, inlinedAt: !1164)
!1186 = !DILocation(line: 710, column: 9, scope: !619, inlinedAt: !1164)
!1187 = !DILocation(line: 711, column: 7, scope: !619, inlinedAt: !1164)
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
!1243 = !DILocation(line: 0, scope: !619, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 519, column: 2, scope: !1156, inlinedAt: !1242)
!1245 = !DILocation(line: 700, column: 9, scope: !619, inlinedAt: !1244)
!1246 = !DILocation(line: 701, column: 7, scope: !630, inlinedAt: !1244)
!1247 = !DILocation(line: 0, scope: !630, inlinedAt: !1244)
!1248 = !DILocation(line: 701, column: 20, scope: !633, inlinedAt: !1244)
!1249 = !DILocation(line: 701, column: 2, scope: !630, inlinedAt: !1244)
!1250 = !DILocation(line: 703, column: 8, scope: !636, inlinedAt: !1244)
!1251 = !DILocation(line: 703, column: 11, scope: !636, inlinedAt: !1244)
!1252 = !DILocation(line: 704, column: 8, scope: !636, inlinedAt: !1244)
!1253 = !DILocation(line: 704, column: 11, scope: !636, inlinedAt: !1244)
!1254 = !DILocation(line: 705, column: 3, scope: !636, inlinedAt: !1244)
!1255 = !DILocation(line: 706, column: 8, scope: !644, inlinedAt: !1244)
!1256 = !DILocation(line: 706, column: 11, scope: !644, inlinedAt: !1244)
!1257 = !DILocation(line: 706, column: 4, scope: !644, inlinedAt: !1244)
!1258 = !DILocation(line: 708, column: 8, scope: !644, inlinedAt: !1244)
!1259 = !DILocation(line: 708, column: 11, scope: !644, inlinedAt: !1244)
!1260 = !DILocation(line: 0, scope: !637, inlinedAt: !1244)
!1261 = !DILocation(line: 701, column: 29, scope: !633, inlinedAt: !1244)
!1262 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1244)
!1263 = distinct !{!1263, !1249, !1264}
!1264 = !DILocation(line: 709, column: 2, scope: !630, inlinedAt: !1244)
!1265 = !DILocation(line: 710, column: 6, scope: !619, inlinedAt: !1244)
!1266 = !DILocation(line: 710, column: 9, scope: !619, inlinedAt: !1244)
!1267 = !DILocation(line: 711, column: 7, scope: !619, inlinedAt: !1244)
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
!1313 = !DILocation(line: 0, scope: !619, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 598, column: 2, scope: !1307, inlinedAt: !1312)
!1315 = !DILocation(line: 700, column: 9, scope: !619, inlinedAt: !1314)
!1316 = !DILocation(line: 701, column: 7, scope: !630, inlinedAt: !1314)
!1317 = !DILocation(line: 0, scope: !630, inlinedAt: !1314)
!1318 = !DILocation(line: 701, column: 20, scope: !633, inlinedAt: !1314)
!1319 = !DILocation(line: 701, column: 2, scope: !630, inlinedAt: !1314)
!1320 = !DILocation(line: 703, column: 8, scope: !636, inlinedAt: !1314)
!1321 = !DILocation(line: 703, column: 11, scope: !636, inlinedAt: !1314)
!1322 = !DILocation(line: 704, column: 8, scope: !636, inlinedAt: !1314)
!1323 = !DILocation(line: 704, column: 11, scope: !636, inlinedAt: !1314)
!1324 = !DILocation(line: 705, column: 3, scope: !636, inlinedAt: !1314)
!1325 = !DILocation(line: 706, column: 8, scope: !644, inlinedAt: !1314)
!1326 = !DILocation(line: 706, column: 11, scope: !644, inlinedAt: !1314)
!1327 = !DILocation(line: 706, column: 4, scope: !644, inlinedAt: !1314)
!1328 = !DILocation(line: 708, column: 8, scope: !644, inlinedAt: !1314)
!1329 = !DILocation(line: 708, column: 11, scope: !644, inlinedAt: !1314)
!1330 = !DILocation(line: 0, scope: !637, inlinedAt: !1314)
!1331 = !DILocation(line: 701, column: 29, scope: !633, inlinedAt: !1314)
!1332 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1314)
!1333 = distinct !{!1333, !1319, !1334}
!1334 = !DILocation(line: 709, column: 2, scope: !630, inlinedAt: !1314)
!1335 = !DILocation(line: 710, column: 6, scope: !619, inlinedAt: !1314)
!1336 = !DILocation(line: 710, column: 9, scope: !619, inlinedAt: !1314)
!1337 = !DILocation(line: 711, column: 7, scope: !619, inlinedAt: !1314)
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
!1393 = !DILocation(line: 0, scope: !619, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 598, column: 2, scope: !1307, inlinedAt: !1392)
!1395 = !DILocation(line: 700, column: 9, scope: !619, inlinedAt: !1394)
!1396 = !DILocation(line: 701, column: 7, scope: !630, inlinedAt: !1394)
!1397 = !DILocation(line: 0, scope: !630, inlinedAt: !1394)
!1398 = !DILocation(line: 701, column: 20, scope: !633, inlinedAt: !1394)
!1399 = !DILocation(line: 701, column: 2, scope: !630, inlinedAt: !1394)
!1400 = !DILocation(line: 703, column: 8, scope: !636, inlinedAt: !1394)
!1401 = !DILocation(line: 703, column: 11, scope: !636, inlinedAt: !1394)
!1402 = !DILocation(line: 704, column: 8, scope: !636, inlinedAt: !1394)
!1403 = !DILocation(line: 704, column: 11, scope: !636, inlinedAt: !1394)
!1404 = !DILocation(line: 705, column: 3, scope: !636, inlinedAt: !1394)
!1405 = !DILocation(line: 706, column: 8, scope: !644, inlinedAt: !1394)
!1406 = !DILocation(line: 706, column: 11, scope: !644, inlinedAt: !1394)
!1407 = !DILocation(line: 706, column: 4, scope: !644, inlinedAt: !1394)
!1408 = !DILocation(line: 708, column: 8, scope: !644, inlinedAt: !1394)
!1409 = !DILocation(line: 708, column: 11, scope: !644, inlinedAt: !1394)
!1410 = !DILocation(line: 0, scope: !637, inlinedAt: !1394)
!1411 = !DILocation(line: 701, column: 29, scope: !633, inlinedAt: !1394)
!1412 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1394)
!1413 = distinct !{!1413, !1399, !1414}
!1414 = !DILocation(line: 709, column: 2, scope: !630, inlinedAt: !1394)
!1415 = !DILocation(line: 710, column: 6, scope: !619, inlinedAt: !1394)
!1416 = !DILocation(line: 710, column: 9, scope: !619, inlinedAt: !1394)
!1417 = !DILocation(line: 711, column: 7, scope: !619, inlinedAt: !1394)
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
!1453 = !DILocation(line: 0, scope: !619, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 685, column: 2, scope: !1085, inlinedAt: !1089)
!1455 = !DILocation(line: 700, column: 9, scope: !619, inlinedAt: !1454)
!1456 = !DILocation(line: 701, column: 7, scope: !630, inlinedAt: !1454)
!1457 = !DILocation(line: 0, scope: !630, inlinedAt: !1454)
!1458 = !DILocation(line: 701, column: 20, scope: !633, inlinedAt: !1454)
!1459 = !DILocation(line: 701, column: 2, scope: !630, inlinedAt: !1454)
!1460 = !DILocation(line: 703, column: 8, scope: !636, inlinedAt: !1454)
!1461 = !DILocation(line: 703, column: 11, scope: !636, inlinedAt: !1454)
!1462 = !DILocation(line: 704, column: 8, scope: !636, inlinedAt: !1454)
!1463 = !DILocation(line: 704, column: 11, scope: !636, inlinedAt: !1454)
!1464 = !DILocation(line: 705, column: 3, scope: !636, inlinedAt: !1454)
!1465 = !DILocation(line: 706, column: 8, scope: !644, inlinedAt: !1454)
!1466 = !DILocation(line: 706, column: 11, scope: !644, inlinedAt: !1454)
!1467 = !DILocation(line: 706, column: 4, scope: !644, inlinedAt: !1454)
!1468 = !DILocation(line: 708, column: 8, scope: !644, inlinedAt: !1454)
!1469 = !DILocation(line: 708, column: 11, scope: !644, inlinedAt: !1454)
!1470 = !DILocation(line: 0, scope: !637, inlinedAt: !1454)
!1471 = !DILocation(line: 701, column: 29, scope: !633, inlinedAt: !1454)
!1472 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1454)
!1473 = distinct !{!1473, !1459, !1474}
!1474 = !DILocation(line: 709, column: 2, scope: !630, inlinedAt: !1454)
!1475 = !DILocation(line: 710, column: 6, scope: !619, inlinedAt: !1454)
!1476 = !DILocation(line: 710, column: 9, scope: !619, inlinedAt: !1454)
!1477 = !DILocation(line: 711, column: 7, scope: !619, inlinedAt: !1454)
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
!1498 = !DILocation(line: 0, scope: !619, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 685, column: 2, scope: !1085, inlinedAt: !1495)
!1500 = !DILocation(line: 700, column: 9, scope: !619, inlinedAt: !1499)
!1501 = !DILocation(line: 701, column: 7, scope: !630, inlinedAt: !1499)
!1502 = !DILocation(line: 0, scope: !630, inlinedAt: !1499)
!1503 = !DILocation(line: 701, column: 20, scope: !633, inlinedAt: !1499)
!1504 = !DILocation(line: 701, column: 2, scope: !630, inlinedAt: !1499)
!1505 = !DILocation(line: 703, column: 8, scope: !636, inlinedAt: !1499)
!1506 = !DILocation(line: 703, column: 11, scope: !636, inlinedAt: !1499)
!1507 = !DILocation(line: 704, column: 8, scope: !636, inlinedAt: !1499)
!1508 = !DILocation(line: 704, column: 11, scope: !636, inlinedAt: !1499)
!1509 = !DILocation(line: 705, column: 3, scope: !636, inlinedAt: !1499)
!1510 = !DILocation(line: 706, column: 8, scope: !644, inlinedAt: !1499)
!1511 = !DILocation(line: 706, column: 11, scope: !644, inlinedAt: !1499)
!1512 = !DILocation(line: 706, column: 4, scope: !644, inlinedAt: !1499)
!1513 = !DILocation(line: 708, column: 8, scope: !644, inlinedAt: !1499)
!1514 = !DILocation(line: 708, column: 11, scope: !644, inlinedAt: !1499)
!1515 = !DILocation(line: 0, scope: !637, inlinedAt: !1499)
!1516 = !DILocation(line: 701, column: 29, scope: !633, inlinedAt: !1499)
!1517 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1499)
!1518 = distinct !{!1518, !1504, !1519}
!1519 = !DILocation(line: 709, column: 2, scope: !630, inlinedAt: !1499)
!1520 = !DILocation(line: 710, column: 6, scope: !619, inlinedAt: !1499)
!1521 = !DILocation(line: 710, column: 9, scope: !619, inlinedAt: !1499)
!1522 = !DILocation(line: 711, column: 7, scope: !619, inlinedAt: !1499)
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
!1541 = distinct !DISubprogram(name: "set_attr_if", scope: !3, file: !3, line: 165, type: !539, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1542)
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
!1636 = distinct !{!1636, !427}
!1637 = !DILocation(line: 195, column: 37, scope: !1616)
!1638 = distinct !{!1638, !1619, !1639}
!1639 = !DILocation(line: 200, column: 3, scope: !1617)
!1640 = !DILocation(line: 193, column: 41, scope: !1612)
!1641 = distinct !{!1641, !1609, !1642}
!1642 = !DILocation(line: 201, column: 2, scope: !1607)
!1643 = !DILocation(line: 202, column: 1, scope: !1595)
!1644 = distinct !DISubprogram(name: "is_pattern", scope: !3, file: !3, line: 357, type: !1645, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1648)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!25, !238, !1647, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1648 = !{!1649, !1650, !1651, !1652, !1653}
!1649 = !DILocalVariable(name: "item", arg: 1, scope: !1644, file: !3, line: 357, type: !238)
!1650 = !DILocalVariable(name: "lo", arg: 2, scope: !1644, file: !3, line: 357, type: !1647)
!1651 = !DILocalVariable(name: "hi", arg: 3, scope: !1644, file: !3, line: 357, type: !1647)
!1652 = !DILocalVariable(name: "val", scope: !1644, file: !3, line: 359, type: !25)
!1653 = !DILocalVariable(name: "ip", scope: !1644, file: !3, line: 360, type: !238)
!1654 = !DILocation(line: 0, scope: !1644)
!1655 = !DILocation(line: 362, column: 7, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 362, column: 6)
!1657 = !{!1658, !1658, i64 0}
!1658 = !{!"short", !292, i64 0}
!1659 = !DILocation(line: 362, column: 33, scope: !1656)
!1660 = !DILocation(line: 362, column: 24, scope: !1656)
!1661 = !DILocation(line: 364, column: 6, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 364, column: 6)
!1663 = !DILocation(line: 364, column: 6, scope: !1644)
!1664 = !DILocation(line: 365, column: 28, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 365, column: 3)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 365, column: 3)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 364, column: 24)
!1668 = !DILocation(line: 366, column: 13, scope: !1665)
!1669 = !DILocation(line: 366, column: 19, scope: !1665)
!1670 = !DILocation(line: 366, column: 25, scope: !1665)
!1671 = !DILocation(line: 365, column: 46, scope: !1665)
!1672 = !DILocation(line: 365, column: 3, scope: !1666)
!1673 = distinct !{!1673, !1672, !1674}
!1674 = !DILocation(line: 366, column: 27, scope: !1666)
!1675 = !DILocation(line: 367, column: 7, scope: !1667)
!1676 = !DILocation(line: 368, column: 8, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 368, column: 7)
!1678 = !DILocation(line: 368, column: 7, scope: !1667)
!1679 = !DILocation(line: 369, column: 8, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 368, column: 13)
!1681 = !DILocation(line: 370, column: 4, scope: !1680)
!1682 = !DILocation(line: 372, column: 6, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 371, column: 13)
!1684 = !DILocation(line: 373, column: 8, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 373, column: 7)
!1686 = !DILocation(line: 372, column: 4, scope: !1683)
!1687 = !DILocation(line: 0, scope: !1667)
!1688 = !DILocation(line: 373, column: 7, scope: !1667)
!1689 = !DILocation(line: 374, column: 8, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 373, column: 13)
!1691 = !DILocation(line: 375, column: 4, scope: !1690)
!1692 = !DILocation(line: 376, column: 14, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 376, column: 13)
!1694 = !DILocation(line: 376, column: 13, scope: !1685)
!1695 = !DILocation(line: 378, column: 17, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 378, column: 3)
!1697 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 378, column: 3)
!1698 = !DILocation(line: 379, column: 13, scope: !1696)
!1699 = !DILocation(line: 379, column: 19, scope: !1696)
!1700 = !DILocation(line: 379, column: 25, scope: !1696)
!1701 = !DILocation(line: 378, column: 35, scope: !1696)
!1702 = !DILocation(line: 378, column: 3, scope: !1697)
!1703 = distinct !{!1703, !1702, !1704}
!1704 = !DILocation(line: 379, column: 27, scope: !1697)
!1705 = !DILocation(line: 380, column: 7, scope: !1667)
!1706 = !DILocation(line: 381, column: 11, scope: !1667)
!1707 = !DILocation(line: 381, column: 9, scope: !1667)
!1708 = !DILocation(line: 381, column: 3, scope: !1667)
!1709 = !DILocation(line: 383, column: 7, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 382, column: 7)
!1711 = !DILocation(line: 384, column: 9, scope: !1710)
!1712 = !DILocation(line: 386, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 386, column: 6)
!1714 = !DILocation(line: 386, column: 6, scope: !1644)
!1715 = !DILocation(line: 387, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 386, column: 12)
!1717 = !DILocation(line: 388, column: 3, scope: !1716)
!1718 = !DILocation(line: 389, column: 12, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 389, column: 12)
!1720 = !DILocation(line: 389, column: 12, scope: !1713)
!1721 = !DILocation(line: 390, column: 17, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 390, column: 3)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 390, column: 3)
!1724 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 389, column: 28)
!1725 = !DILocation(line: 391, column: 13, scope: !1722)
!1726 = !DILocation(line: 391, column: 19, scope: !1722)
!1727 = !DILocation(line: 391, column: 25, scope: !1722)
!1728 = !DILocation(line: 390, column: 35, scope: !1722)
!1729 = !DILocation(line: 390, column: 3, scope: !1723)
!1730 = distinct !{!1730, !1729, !1731}
!1731 = !DILocation(line: 391, column: 27, scope: !1723)
!1732 = !DILocation(line: 392, column: 7, scope: !1724)
!1733 = !DILocation(line: 393, column: 11, scope: !1724)
!1734 = !DILocation(line: 393, column: 9, scope: !1724)
!1735 = !DILocation(line: 393, column: 3, scope: !1724)
!1736 = !DILocation(line: 396, column: 1, scope: !1644)
!1737 = distinct !DISubprogram(name: "match_res_pat", scope: !3, file: !3, line: 565, type: !611, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743}
!1739 = !DILocalVariable(name: "mol", arg: 1, scope: !1737, file: !3, line: 565, type: !270)
!1740 = !DILocalVariable(name: "pat", arg: 2, scope: !1737, file: !3, line: 565, type: !238)
!1741 = !DILocalVariable(name: "r", scope: !1737, file: !3, line: 567, type: !25)
!1742 = !DILocalVariable(name: "sp", scope: !1737, file: !3, line: 568, type: !40)
!1743 = !DILocalVariable(name: "res", scope: !1737, file: !3, line: 569, type: !57)
!1744 = !DILocation(line: 0, scope: !1737)
!1745 = !DILocation(line: 0, scope: !619, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 571, column: 2, scope: !1737)
!1747 = !DILocation(line: 700, column: 9, scope: !619, inlinedAt: !1746)
!1748 = !DILocation(line: 701, column: 7, scope: !630, inlinedAt: !1746)
!1749 = !DILocation(line: 0, scope: !630, inlinedAt: !1746)
!1750 = !DILocation(line: 701, column: 20, scope: !633, inlinedAt: !1746)
!1751 = !DILocation(line: 701, column: 2, scope: !630, inlinedAt: !1746)
!1752 = !DILocation(line: 703, column: 8, scope: !636, inlinedAt: !1746)
!1753 = !DILocation(line: 703, column: 11, scope: !636, inlinedAt: !1746)
!1754 = !DILocation(line: 704, column: 8, scope: !636, inlinedAt: !1746)
!1755 = !DILocation(line: 704, column: 11, scope: !636, inlinedAt: !1746)
!1756 = !DILocation(line: 705, column: 3, scope: !636, inlinedAt: !1746)
!1757 = !DILocation(line: 706, column: 8, scope: !644, inlinedAt: !1746)
!1758 = !DILocation(line: 706, column: 11, scope: !644, inlinedAt: !1746)
!1759 = !DILocation(line: 706, column: 4, scope: !644, inlinedAt: !1746)
!1760 = !DILocation(line: 708, column: 8, scope: !644, inlinedAt: !1746)
!1761 = !DILocation(line: 708, column: 11, scope: !644, inlinedAt: !1746)
!1762 = !DILocation(line: 0, scope: !637, inlinedAt: !1746)
!1763 = !DILocation(line: 701, column: 29, scope: !633, inlinedAt: !1746)
!1764 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1746)
!1765 = distinct !{!1765, !1751, !1766}
!1766 = !DILocation(line: 709, column: 2, scope: !630, inlinedAt: !1746)
!1767 = !DILocation(line: 710, column: 6, scope: !619, inlinedAt: !1746)
!1768 = !DILocation(line: 710, column: 9, scope: !619, inlinedAt: !1746)
!1769 = !DILocation(line: 711, column: 7, scope: !619, inlinedAt: !1746)
!1770 = !DILocation(line: 575, column: 2, scope: !1737)
!1771 = !DILocation(line: 577, column: 17, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 577, column: 2)
!1773 = !DILocation(line: 0, scope: !1772)
!1774 = !DILocation(line: 577, column: 2, scope: !1772)
!1775 = !DILocation(line: 578, column: 23, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 578, column: 7)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 577, column: 49)
!1778 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 577, column: 2)
!1779 = !DILocation(line: 578, column: 17, scope: !1776)
!1780 = !DILocation(line: 578, column: 7, scope: !1777)
!1781 = !DILocation(line: 579, column: 24, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 579, column: 4)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 579, column: 4)
!1784 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 578, column: 31)
!1785 = !DILocation(line: 579, column: 18, scope: !1782)
!1786 = !DILocation(line: 579, column: 4, scope: !1783)
!1787 = !DILocation(line: 0, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 579, column: 42)
!1789 = !DILocation(line: 580, column: 15, scope: !1788)
!1790 = !DILocation(line: 580, column: 11, scope: !1788)
!1791 = !DILocation(line: 585, column: 31, scope: !1788)
!1792 = !DILocation(line: 585, column: 20, scope: !1788)
!1793 = !DILocation(line: 585, column: 10, scope: !1788)
!1794 = !DILocation(line: 585, column: 17, scope: !1788)
!1795 = !DILocation(line: 579, column: 38, scope: !1782)
!1796 = distinct !{!1796, !1786, !1797}
!1797 = !DILocation(line: 588, column: 4, scope: !1783)
!1798 = !DILocation(line: 577, column: 41, scope: !1778)
!1799 = distinct !{!1799, !1774, !1800}
!1800 = !DILocation(line: 590, column: 2, scope: !1772)
!1801 = !DILocation(line: 591, column: 1, scope: !1737)
!1802 = distinct !DISubprogram(name: "match_atom_pat", scope: !3, file: !3, line: 646, type: !611, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809, !1810}
!1804 = !DILocalVariable(name: "mol", arg: 1, scope: !1802, file: !3, line: 646, type: !270)
!1805 = !DILocalVariable(name: "pat", arg: 2, scope: !1802, file: !3, line: 646, type: !238)
!1806 = !DILocalVariable(name: "r", scope: !1802, file: !3, line: 648, type: !25)
!1807 = !DILocalVariable(name: "a", scope: !1802, file: !3, line: 648, type: !25)
!1808 = !DILocalVariable(name: "sp", scope: !1802, file: !3, line: 649, type: !40)
!1809 = !DILocalVariable(name: "res", scope: !1802, file: !3, line: 650, type: !57)
!1810 = !DILocalVariable(name: "ap", scope: !1802, file: !3, line: 651, type: !103)
!1811 = !DILocation(line: 0, scope: !1802)
!1812 = !DILocation(line: 653, column: 2, scope: !1802)
!1813 = !DILocation(line: 657, column: 2, scope: !1802)
!1814 = !DILocation(line: 659, column: 17, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 659, column: 2)
!1816 = !DILocation(line: 0, scope: !1815)
!1817 = !DILocation(line: 659, column: 2, scope: !1815)
!1818 = !DILocation(line: 660, column: 23, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 660, column: 7)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 659, column: 49)
!1821 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 659, column: 2)
!1822 = !DILocation(line: 660, column: 17, scope: !1819)
!1823 = !DILocation(line: 660, column: 7, scope: !1820)
!1824 = !DILocation(line: 661, column: 24, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 661, column: 4)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 661, column: 4)
!1827 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 660, column: 31)
!1828 = !DILocation(line: 661, column: 18, scope: !1825)
!1829 = !DILocation(line: 661, column: 4, scope: !1826)
!1830 = !DILocation(line: 0, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 661, column: 42)
!1832 = !DILocation(line: 662, column: 15, scope: !1831)
!1833 = !DILocation(line: 662, column: 11, scope: !1831)
!1834 = !DILocation(line: 663, column: 26, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 663, column: 9)
!1836 = !DILocation(line: 663, column: 19, scope: !1835)
!1837 = !DILocation(line: 663, column: 9, scope: !1831)
!1838 = !DILocation(line: 664, column: 27, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 664, column: 6)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 664, column: 6)
!1841 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 663, column: 34)
!1842 = !DILocation(line: 664, column: 20, scope: !1839)
!1843 = !DILocation(line: 664, column: 6, scope: !1840)
!1844 = !DILocation(line: 0, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 664, column: 42)
!1846 = !DILocation(line: 665, column: 18, scope: !1845)
!1847 = !DILocation(line: 672, column: 20, scope: !1845)
!1848 = !DILocation(line: 672, column: 11, scope: !1845)
!1849 = !DILocation(line: 671, column: 11, scope: !1845)
!1850 = !DILocation(line: 671, column: 18, scope: !1845)
!1851 = !DILocation(line: 664, column: 38, scope: !1839)
!1852 = distinct !{!1852, !1843, !1853}
!1853 = !DILocation(line: 675, column: 6, scope: !1840)
!1854 = !DILocation(line: 661, column: 38, scope: !1825)
!1855 = distinct !{!1855, !1829, !1856}
!1856 = !DILocation(line: 677, column: 4, scope: !1826)
!1857 = !DILocation(line: 659, column: 41, scope: !1821)
!1858 = distinct !{!1858, !1817, !1859}
!1859 = !DILocation(line: 679, column: 2, scope: !1815)
!1860 = !DILocation(line: 680, column: 1, scope: !1802)
!1861 = !DILocation(line: 0, scope: !619)
!1862 = !DILocation(line: 700, column: 9, scope: !619)
!1863 = !DILocation(line: 701, column: 7, scope: !630)
!1864 = !DILocation(line: 0, scope: !630)
!1865 = !DILocation(line: 701, column: 20, scope: !633)
!1866 = !DILocation(line: 701, column: 2, scope: !630)
!1867 = !DILocation(line: 703, column: 8, scope: !636)
!1868 = !DILocation(line: 703, column: 11, scope: !636)
!1869 = !DILocation(line: 704, column: 8, scope: !636)
!1870 = !DILocation(line: 704, column: 11, scope: !636)
!1871 = !DILocation(line: 705, column: 3, scope: !636)
!1872 = !DILocation(line: 706, column: 8, scope: !644)
!1873 = !DILocation(line: 706, column: 11, scope: !644)
!1874 = !DILocation(line: 706, column: 4, scope: !644)
!1875 = !DILocation(line: 708, column: 8, scope: !644)
!1876 = !DILocation(line: 708, column: 11, scope: !644)
!1877 = !DILocation(line: 0, scope: !637)
!1878 = !DILocation(line: 701, column: 29, scope: !633)
!1879 = !DILocation(line: 701, column: 2, scope: !633)
!1880 = distinct !{!1880, !1866, !1881}
!1881 = !DILocation(line: 709, column: 2, scope: !630)
!1882 = !DILocation(line: 710, column: 6, scope: !619)
!1883 = !DILocation(line: 710, column: 9, scope: !619)
!1884 = !DILocation(line: 711, column: 7, scope: !619)
!1885 = !DILocation(line: 712, column: 1, scope: !619)
