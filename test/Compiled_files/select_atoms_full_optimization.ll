; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/select_atoms.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/select_atoms.c"
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
@spart = internal unnamed_addr global i8* null, align 8, !dbg !251
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@rpart = internal unnamed_addr global i8* null, align 8, !dbg !253
@apart = internal unnamed_addr global i8* null, align 8, !dbg !255
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"atom range not allowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rexpr = internal global [1000 x i8] zeroinitializer, align 16, !dbg !257
@expbuf = internal global [1000 x i8] zeroinitializer, align 16, !dbg !262

; Function Attrs: nounwind uwtable
define dso_local i32 @setpoint(%struct.molecule_t* readonly %0, i8* %1, double* nocapture %2) local_unnamed_addr #0 !dbg !268 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !274, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i8* %1, metadata !275, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double* %2, metadata !276, metadata !DIExpression()), !dbg !286
  %4 = tail call i32 @select_atoms(%struct.molecule_t* %0, i8* %1), !dbg !287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 0, metadata !279, metadata !DIExpression()), !dbg !286
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !288
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !280, metadata !DIExpression()), !dbg !286
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !290, !tbaa !291
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !280, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 0, metadata !279, metadata !DIExpression()), !dbg !286
  %7 = icmp eq %struct.strand_t* %6, null, !dbg !295
  br i1 %7, label %83, label %8, !dbg !295

8:                                                ; preds = %3, %74
  %9 = phi %struct.strand_t* [ %79, %74 ], [ %6, %3 ]
  %10 = phi double [ %76, %74 ], [ 0.000000e+00, %3 ]
  %11 = phi i32 [ %75, %74 ], [ 0, %3 ]
  %12 = phi <2 x double> [ %77, %74 ], [ zeroinitializer, %3 ]
  call void @llvm.dbg.value(metadata double %10, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %11, metadata !279, metadata !DIExpression()), !dbg !286
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 2, !dbg !296
  %14 = load i32, i32* %13, align 4, !dbg !296, !tbaa !300
  %15 = and i32 %14, 1, !dbg !303
  %16 = icmp eq i32 %15, 0, !dbg !303
  br i1 %16, label %74, label %17, !dbg !304

17:                                               ; preds = %8
  call void @llvm.dbg.value(metadata double %10, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 0, metadata !277, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %11, metadata !279, metadata !DIExpression()), !dbg !286
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 5, !dbg !305
  %19 = load i32, i32* %18, align 8, !dbg !305, !tbaa !309
  %20 = icmp sgt i32 %19, 0, !dbg !310
  br i1 %20, label %21, label %74, !dbg !311

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 7, !dbg !312
  %23 = load %struct.residue_t**, %struct.residue_t*** %22, align 8, !dbg !312, !tbaa !314
  %24 = zext i32 %19 to i64, !dbg !311
  br label %25, !dbg !311

25:                                               ; preds = %21, %68
  %26 = phi i64 [ 0, %21 ], [ %72, %68 ]
  %27 = phi double [ %10, %21 ], [ %70, %68 ]
  %28 = phi i32 [ %11, %21 ], [ %69, %68 ]
  %29 = phi <2 x double> [ %12, %21 ], [ %71, %68 ]
  call void @llvm.dbg.value(metadata double %27, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 %26, metadata !277, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %28, metadata !279, metadata !DIExpression()), !dbg !286
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %23, i64 %26, !dbg !315
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8, !dbg !315, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %31, metadata !281, metadata !DIExpression()), !dbg !286
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 6, !dbg !316
  %33 = load i32, i32* %32, align 8, !dbg !316, !tbaa !318
  %34 = and i32 %33, 1, !dbg !320
  %35 = icmp eq i32 %34, 0, !dbg !320
  br i1 %35, label %68, label %36, !dbg !321

36:                                               ; preds = %25
  call void @llvm.dbg.value(metadata double %27, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %28, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !286
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 15, !dbg !322
  %38 = load i32, i32* %37, align 8, !dbg !322, !tbaa !326
  %39 = icmp sgt i32 %38, 0, !dbg !327
  br i1 %39, label %40, label %68, !dbg !328

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 17, !dbg !329
  %42 = load %struct.atom_t*, %struct.atom_t** %41, align 8, !dbg !329, !tbaa !331
  %43 = zext i32 %38 to i64, !dbg !328
  br label %44, !dbg !328

44:                                               ; preds = %40, %62
  %45 = phi i64 [ 0, %40 ], [ %66, %62 ]
  %46 = phi double [ %27, %40 ], [ %64, %62 ]
  %47 = phi i32 [ %28, %40 ], [ %63, %62 ]
  %48 = phi <2 x double> [ %29, %40 ], [ %65, %62 ]
  call void @llvm.dbg.value(metadata double %46, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %47, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 %45, metadata !278, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !282, metadata !DIExpression()), !dbg !286
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %45, i32 2, !dbg !332
  %50 = load i32, i32* %49, align 8, !dbg !332, !tbaa !334
  %51 = and i32 %50, 1, !dbg !337
  %52 = icmp eq i32 %51, 0, !dbg !337
  br i1 %52, label %62, label %53, !dbg !338

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %45, i32 17, i64 0, !dbg !339
  %55 = bitcast double* %54 to <2 x double>*, !dbg !339
  %56 = load <2 x double>, <2 x double>* %55, align 8, !dbg !339, !tbaa !341
  %57 = fadd <2 x double> %48, %56, !dbg !342
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %45, i32 17, i64 2, !dbg !343
  %59 = load double, double* %58, align 8, !dbg !343, !tbaa !341
  %60 = fadd double %46, %59, !dbg !344
  call void @llvm.dbg.value(metadata double %60, metadata !285, metadata !DIExpression()), !dbg !286
  %61 = add nsw i32 %47, 1, !dbg !345
  call void @llvm.dbg.value(metadata i32 %61, metadata !279, metadata !DIExpression()), !dbg !286
  br label %62, !dbg !346

62:                                               ; preds = %44, %53
  %63 = phi i32 [ %61, %53 ], [ %47, %44 ], !dbg !290
  %64 = phi double [ %60, %53 ], [ %46, %44 ], !dbg !286
  %65 = phi <2 x double> [ %57, %53 ], [ %48, %44 ], !dbg !286
  call void @llvm.dbg.value(metadata double %64, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %63, metadata !279, metadata !DIExpression()), !dbg !286
  %66 = add nuw nsw i64 %45, 1, !dbg !347
  call void @llvm.dbg.value(metadata i64 %66, metadata !278, metadata !DIExpression()), !dbg !286
  %67 = icmp ult i64 %66, %43, !dbg !327
  br i1 %67, label %44, label %68, !dbg !328, !llvm.loop !348

68:                                               ; preds = %62, %36, %25
  %69 = phi i32 [ %28, %25 ], [ %28, %36 ], [ %63, %62 ], !dbg !350
  %70 = phi double [ %27, %25 ], [ %27, %36 ], [ %64, %62 ], !dbg !351
  %71 = phi <2 x double> [ %29, %25 ], [ %29, %36 ], [ %65, %62 ], !dbg !352
  call void @llvm.dbg.value(metadata double %70, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %69, metadata !279, metadata !DIExpression()), !dbg !286
  %72 = add nuw nsw i64 %26, 1, !dbg !353
  call void @llvm.dbg.value(metadata i64 %72, metadata !277, metadata !DIExpression()), !dbg !286
  %73 = icmp ult i64 %72, %24, !dbg !310
  br i1 %73, label %25, label %74, !dbg !311, !llvm.loop !354

74:                                               ; preds = %68, %17, %8
  %75 = phi i32 [ %11, %8 ], [ %11, %17 ], [ %69, %68 ], !dbg !350
  %76 = phi double [ %10, %8 ], [ %10, %17 ], [ %70, %68 ], !dbg !351
  %77 = phi <2 x double> [ %12, %8 ], [ %12, %17 ], [ %71, %68 ], !dbg !352
  call void @llvm.dbg.value(metadata double %76, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %75, metadata !279, metadata !DIExpression()), !dbg !286
  %78 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 4, !dbg !356
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !280, metadata !DIExpression()), !dbg !286
  %79 = load %struct.strand_t*, %struct.strand_t** %78, align 8, !dbg !290, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %79, metadata !280, metadata !DIExpression()), !dbg !286
  %80 = icmp eq %struct.strand_t* %79, null, !dbg !295
  br i1 %80, label %81, label %8, !dbg !295, !llvm.loop !357

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i32 %75, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %76, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %75, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %76, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %75, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %76, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %75, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %76, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %75, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %76, metadata !285, metadata !DIExpression()), !dbg !286
  %82 = icmp eq i32 %75, 0, !dbg !359
  br i1 %82, label %83, label %86, !dbg !361

83:                                               ; preds = %3, %81
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !362, !tbaa !291
  %85 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %1) #11, !dbg !364
  br label %94, !dbg !365

86:                                               ; preds = %81
  %87 = sitofp i32 %75 to double, !dbg !366
  %88 = insertelement <2 x double> undef, double %87, i32 0, !dbg !368
  %89 = shufflevector <2 x double> %88, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !368
  %90 = fdiv <2 x double> %77, %89, !dbg !368
  %91 = bitcast double* %2 to <2 x double>*, !dbg !369
  store <2 x double> %90, <2 x double>* %91, align 8, !dbg !369, !tbaa !341
  %92 = fdiv double %76, %87, !dbg !370
  %93 = getelementptr inbounds double, double* %2, i64 2, !dbg !371
  store double %92, double* %93, align 8, !dbg !372, !tbaa !341
  br label %94, !dbg !373

94:                                               ; preds = %86, %83
  %95 = phi i32 [ 1, %83 ], [ 0, %86 ], !dbg !286
  ret i32 %95, !dbg !374
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* readonly %0, i8* %1) local_unnamed_addr #0 !dbg !375 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !379, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8* %1, metadata !380, metadata !DIExpression()), !dbg !384
  %5 = icmp eq i8* %1, null, !dbg !385
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !384
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !384, !tbaa !291
  %8 = icmp eq %struct.strand_t* %7, null, !dbg !384
  br i1 %5, label %9, label %81, !dbg !387

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !388, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !395, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !395, metadata !DIExpression()), !dbg !397
  br i1 %8, label %1054, label %10, !dbg !400

10:                                               ; preds = %9, %77
  %11 = phi %struct.strand_t* [ %79, %77 ], [ %7, %9 ]
  %12 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 2, !dbg !402
  %13 = load i32, i32* %12, align 4, !dbg !405, !tbaa !300
  %14 = or i32 %13, 1, !dbg !405
  store i32 %14, i32* %12, align 4, !dbg !405, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !394, metadata !DIExpression()), !dbg !397
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 5, !dbg !406
  %16 = load i32, i32* %15, align 8, !dbg !406, !tbaa !309
  %17 = icmp sgt i32 %16, 0, !dbg !409
  br i1 %17, label %18, label %77, !dbg !410

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 7, !dbg !411
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !411, !tbaa !314
  %21 = zext i32 %16 to i64, !dbg !410
  br label %22, !dbg !410

22:                                               ; preds = %74, %18
  %23 = phi i64 [ 0, %18 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !394, metadata !DIExpression()), !dbg !397
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %23, !dbg !413
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !413, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !396, metadata !DIExpression()), !dbg !397
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 6, !dbg !414
  %27 = load i32, i32* %26, align 8, !dbg !415, !tbaa !318
  %28 = or i32 %27, 1, !dbg !415
  store i32 %28, i32* %26, align 8, !dbg !415, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !393, metadata !DIExpression()), !dbg !397
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 15, !dbg !416
  %30 = load i32, i32* %29, align 8, !dbg !416, !tbaa !326
  %31 = icmp sgt i32 %30, 0, !dbg !419
  br i1 %31, label %32, label %74, !dbg !420

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 17, !dbg !421
  %34 = load %struct.atom_t*, %struct.atom_t** %33, align 8, !dbg !421, !tbaa !331
  %35 = zext i32 %30 to i64, !dbg !420
  %36 = add nsw i64 %35, -1, !dbg !420
  %37 = and i64 %35, 3, !dbg !420
  %38 = icmp ult i64 %36, 3, !dbg !420
  br i1 %38, label %62, label %39, !dbg !420

39:                                               ; preds = %32
  %40 = sub nsw i64 %35, %37, !dbg !420
  br label %41, !dbg !420

41:                                               ; preds = %41, %39
  %42 = phi i64 [ 0, %39 ], [ %59, %41 ]
  %43 = phi i64 [ %40, %39 ], [ %60, %41 ]
  call void @llvm.dbg.value(metadata i64 %42, metadata !393, metadata !DIExpression()), !dbg !397
  %44 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %42, i32 2, !dbg !422
  %45 = load i32, i32* %44, align 8, !dbg !423, !tbaa !334
  %46 = or i32 %45, 1, !dbg !423
  store i32 %46, i32* %44, align 8, !dbg !423, !tbaa !334
  %47 = or i64 %42, 1, !dbg !424
  call void @llvm.dbg.value(metadata i64 %47, metadata !393, metadata !DIExpression()), !dbg !397
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %47, i32 2, !dbg !422
  %49 = load i32, i32* %48, align 8, !dbg !423, !tbaa !334
  %50 = or i32 %49, 1, !dbg !423
  store i32 %50, i32* %48, align 8, !dbg !423, !tbaa !334
  %51 = or i64 %42, 2, !dbg !424
  call void @llvm.dbg.value(metadata i64 %51, metadata !393, metadata !DIExpression()), !dbg !397
  %52 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %51, i32 2, !dbg !422
  %53 = load i32, i32* %52, align 8, !dbg !423, !tbaa !334
  %54 = or i32 %53, 1, !dbg !423
  store i32 %54, i32* %52, align 8, !dbg !423, !tbaa !334
  %55 = or i64 %42, 3, !dbg !424
  call void @llvm.dbg.value(metadata i64 %55, metadata !393, metadata !DIExpression()), !dbg !397
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %55, i32 2, !dbg !422
  %57 = load i32, i32* %56, align 8, !dbg !423, !tbaa !334
  %58 = or i32 %57, 1, !dbg !423
  store i32 %58, i32* %56, align 8, !dbg !423, !tbaa !334
  %59 = add nuw nsw i64 %42, 4, !dbg !424
  call void @llvm.dbg.value(metadata i64 %59, metadata !393, metadata !DIExpression()), !dbg !397
  %60 = add i64 %43, -4, !dbg !420
  %61 = icmp eq i64 %60, 0, !dbg !420
  br i1 %61, label %62, label %41, !dbg !420, !llvm.loop !425

62:                                               ; preds = %41, %32
  %63 = phi i64 [ 0, %32 ], [ %59, %41 ]
  %64 = icmp eq i64 %37, 0, !dbg !420
  br i1 %64, label %74, label %65, !dbg !420

65:                                               ; preds = %62, %65
  %66 = phi i64 [ %71, %65 ], [ %63, %62 ]
  %67 = phi i64 [ %72, %65 ], [ %37, %62 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !393, metadata !DIExpression()), !dbg !397
  %68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %66, i32 2, !dbg !422
  %69 = load i32, i32* %68, align 8, !dbg !423, !tbaa !334
  %70 = or i32 %69, 1, !dbg !423
  store i32 %70, i32* %68, align 8, !dbg !423, !tbaa !334
  %71 = add nuw nsw i64 %66, 1, !dbg !424
  call void @llvm.dbg.value(metadata i64 %71, metadata !393, metadata !DIExpression()), !dbg !397
  %72 = add i64 %67, -1, !dbg !420
  %73 = icmp eq i64 %72, 0, !dbg !420
  br i1 %73, label %74, label %65, !dbg !420, !llvm.loop !427

74:                                               ; preds = %62, %65, %22
  %75 = add nuw nsw i64 %23, 1, !dbg !429
  call void @llvm.dbg.value(metadata i64 %75, metadata !394, metadata !DIExpression()), !dbg !397
  %76 = icmp eq i64 %75, %21, !dbg !409
  br i1 %76, label %77, label %22, !dbg !410, !llvm.loop !430

77:                                               ; preds = %74, %10
  %78 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 4, !dbg !432
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !395, metadata !DIExpression()), !dbg !397
  %79 = load %struct.strand_t*, %struct.strand_t** %78, align 8, !dbg !433, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %79, metadata !395, metadata !DIExpression()), !dbg !397
  %80 = icmp eq %struct.strand_t* %79, null, !dbg !400
  br i1 %80, label %1054, label %10, !dbg !400, !llvm.loop !434

81:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !436, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !441, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !441, metadata !DIExpression()), !dbg !443
  br i1 %8, label %224, label %82, !dbg !445

82:                                               ; preds = %81, %149
  %83 = phi %struct.strand_t* [ %151, %149 ], [ %7, %81 ]
  %84 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %83, i64 0, i32 2, !dbg !447
  %85 = load i32, i32* %84, align 4, !dbg !450, !tbaa !300
  %86 = and i32 %85, -129, !dbg !450
  store i32 %86, i32* %84, align 4, !dbg !450, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !440, metadata !DIExpression()), !dbg !443
  %87 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %83, i64 0, i32 5, !dbg !451
  %88 = load i32, i32* %87, align 8, !dbg !451, !tbaa !309
  %89 = icmp sgt i32 %88, 0, !dbg !454
  br i1 %89, label %90, label %149, !dbg !455

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %83, i64 0, i32 7, !dbg !456
  %92 = load %struct.residue_t**, %struct.residue_t*** %91, align 8, !dbg !456, !tbaa !314
  %93 = zext i32 %88 to i64, !dbg !455
  br label %94, !dbg !455

94:                                               ; preds = %146, %90
  %95 = phi i64 [ 0, %90 ], [ %147, %146 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !440, metadata !DIExpression()), !dbg !443
  %96 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %92, i64 %95, !dbg !458
  %97 = load %struct.residue_t*, %struct.residue_t** %96, align 8, !dbg !458, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %97, metadata !442, metadata !DIExpression()), !dbg !443
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %97, i64 0, i32 6, !dbg !459
  %99 = load i32, i32* %98, align 8, !dbg !460, !tbaa !318
  %100 = and i32 %99, -129, !dbg !460
  store i32 %100, i32* %98, align 8, !dbg !460, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !439, metadata !DIExpression()), !dbg !443
  %101 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %97, i64 0, i32 15, !dbg !461
  %102 = load i32, i32* %101, align 8, !dbg !461, !tbaa !326
  %103 = icmp sgt i32 %102, 0, !dbg !464
  br i1 %103, label %104, label %146, !dbg !465

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %97, i64 0, i32 17, !dbg !466
  %106 = load %struct.atom_t*, %struct.atom_t** %105, align 8, !dbg !466, !tbaa !331
  %107 = zext i32 %102 to i64, !dbg !465
  %108 = add nsw i64 %107, -1, !dbg !465
  %109 = and i64 %107, 3, !dbg !465
  %110 = icmp ult i64 %108, 3, !dbg !465
  br i1 %110, label %134, label %111, !dbg !465

111:                                              ; preds = %104
  %112 = sub nsw i64 %107, %109, !dbg !465
  br label %113, !dbg !465

113:                                              ; preds = %113, %111
  %114 = phi i64 [ 0, %111 ], [ %131, %113 ]
  %115 = phi i64 [ %112, %111 ], [ %132, %113 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !439, metadata !DIExpression()), !dbg !443
  %116 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i64 %114, i32 2, !dbg !467
  %117 = load i32, i32* %116, align 8, !dbg !468, !tbaa !334
  %118 = and i32 %117, -129, !dbg !468
  store i32 %118, i32* %116, align 8, !dbg !468, !tbaa !334
  %119 = or i64 %114, 1, !dbg !469
  call void @llvm.dbg.value(metadata i64 %119, metadata !439, metadata !DIExpression()), !dbg !443
  %120 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i64 %119, i32 2, !dbg !467
  %121 = load i32, i32* %120, align 8, !dbg !468, !tbaa !334
  %122 = and i32 %121, -129, !dbg !468
  store i32 %122, i32* %120, align 8, !dbg !468, !tbaa !334
  %123 = or i64 %114, 2, !dbg !469
  call void @llvm.dbg.value(metadata i64 %123, metadata !439, metadata !DIExpression()), !dbg !443
  %124 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i64 %123, i32 2, !dbg !467
  %125 = load i32, i32* %124, align 8, !dbg !468, !tbaa !334
  %126 = and i32 %125, -129, !dbg !468
  store i32 %126, i32* %124, align 8, !dbg !468, !tbaa !334
  %127 = or i64 %114, 3, !dbg !469
  call void @llvm.dbg.value(metadata i64 %127, metadata !439, metadata !DIExpression()), !dbg !443
  %128 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i64 %127, i32 2, !dbg !467
  %129 = load i32, i32* %128, align 8, !dbg !468, !tbaa !334
  %130 = and i32 %129, -129, !dbg !468
  store i32 %130, i32* %128, align 8, !dbg !468, !tbaa !334
  %131 = add nuw nsw i64 %114, 4, !dbg !469
  call void @llvm.dbg.value(metadata i64 %131, metadata !439, metadata !DIExpression()), !dbg !443
  %132 = add i64 %115, -4, !dbg !465
  %133 = icmp eq i64 %132, 0, !dbg !465
  br i1 %133, label %134, label %113, !dbg !465, !llvm.loop !470

134:                                              ; preds = %113, %104
  %135 = phi i64 [ 0, %104 ], [ %131, %113 ]
  %136 = icmp eq i64 %109, 0, !dbg !465
  br i1 %136, label %146, label %137, !dbg !465

137:                                              ; preds = %134, %137
  %138 = phi i64 [ %143, %137 ], [ %135, %134 ]
  %139 = phi i64 [ %144, %137 ], [ %109, %134 ]
  call void @llvm.dbg.value(metadata i64 %138, metadata !439, metadata !DIExpression()), !dbg !443
  %140 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i64 %138, i32 2, !dbg !467
  %141 = load i32, i32* %140, align 8, !dbg !468, !tbaa !334
  %142 = and i32 %141, -129, !dbg !468
  store i32 %142, i32* %140, align 8, !dbg !468, !tbaa !334
  %143 = add nuw nsw i64 %138, 1, !dbg !469
  call void @llvm.dbg.value(metadata i64 %143, metadata !439, metadata !DIExpression()), !dbg !443
  %144 = add i64 %139, -1, !dbg !465
  %145 = icmp eq i64 %144, 0, !dbg !465
  br i1 %145, label %146, label %137, !dbg !465, !llvm.loop !472

146:                                              ; preds = %134, %137, %94
  %147 = add nuw nsw i64 %95, 1, !dbg !473
  call void @llvm.dbg.value(metadata i64 %147, metadata !440, metadata !DIExpression()), !dbg !443
  %148 = icmp eq i64 %147, %93, !dbg !454
  br i1 %148, label %149, label %94, !dbg !455, !llvm.loop !474

149:                                              ; preds = %146, %82
  %150 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %83, i64 0, i32 4, !dbg !476
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !441, metadata !DIExpression()), !dbg !443
  %151 = load %struct.strand_t*, %struct.strand_t** %150, align 8, !dbg !477, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %151, metadata !441, metadata !DIExpression()), !dbg !443
  %152 = icmp eq %struct.strand_t* %151, null, !dbg !445
  br i1 %152, label %153, label %82, !dbg !445, !llvm.loop !478

153:                                              ; preds = %149, %220
  %154 = phi %struct.strand_t* [ %222, %220 ], [ %7, %149 ]
  %155 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %154, i64 0, i32 2, !dbg !480
  %156 = load i32, i32* %155, align 4, !dbg !492, !tbaa !300
  %157 = and i32 %156, -2, !dbg !492
  store i32 %157, i32* %155, align 4, !dbg !492, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !488, metadata !DIExpression()), !dbg !493
  %158 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %154, i64 0, i32 5, !dbg !494
  %159 = load i32, i32* %158, align 8, !dbg !494, !tbaa !309
  %160 = icmp sgt i32 %159, 0, !dbg !497
  br i1 %160, label %161, label %220, !dbg !498

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %154, i64 0, i32 7, !dbg !499
  %163 = load %struct.residue_t**, %struct.residue_t*** %162, align 8, !dbg !499, !tbaa !314
  %164 = zext i32 %159 to i64, !dbg !498
  br label %165, !dbg !498

165:                                              ; preds = %217, %161
  %166 = phi i64 [ 0, %161 ], [ %218, %217 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !488, metadata !DIExpression()), !dbg !493
  %167 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %163, i64 %166, !dbg !501
  %168 = load %struct.residue_t*, %struct.residue_t** %167, align 8, !dbg !501, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %168, metadata !490, metadata !DIExpression()), !dbg !493
  %169 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %168, i64 0, i32 6, !dbg !502
  %170 = load i32, i32* %169, align 8, !dbg !503, !tbaa !318
  %171 = and i32 %170, -2, !dbg !503
  store i32 %171, i32* %169, align 8, !dbg !503, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !487, metadata !DIExpression()), !dbg !493
  %172 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %168, i64 0, i32 15, !dbg !504
  %173 = load i32, i32* %172, align 8, !dbg !504, !tbaa !326
  %174 = icmp sgt i32 %173, 0, !dbg !507
  br i1 %174, label %175, label %217, !dbg !508

175:                                              ; preds = %165
  %176 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %168, i64 0, i32 17, !dbg !509
  %177 = load %struct.atom_t*, %struct.atom_t** %176, align 8, !dbg !509, !tbaa !331
  %178 = zext i32 %173 to i64, !dbg !508
  %179 = add nsw i64 %178, -1, !dbg !508
  %180 = and i64 %178, 3, !dbg !508
  %181 = icmp ult i64 %179, 3, !dbg !508
  br i1 %181, label %205, label %182, !dbg !508

182:                                              ; preds = %175
  %183 = sub nsw i64 %178, %180, !dbg !508
  br label %184, !dbg !508

184:                                              ; preds = %184, %182
  %185 = phi i64 [ 0, %182 ], [ %202, %184 ]
  %186 = phi i64 [ %183, %182 ], [ %203, %184 ]
  call void @llvm.dbg.value(metadata i64 %185, metadata !487, metadata !DIExpression()), !dbg !493
  %187 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i64 %185, i32 2, !dbg !510
  %188 = load i32, i32* %187, align 8, !dbg !511, !tbaa !334
  %189 = and i32 %188, -2, !dbg !511
  store i32 %189, i32* %187, align 8, !dbg !511, !tbaa !334
  %190 = or i64 %185, 1, !dbg !512
  call void @llvm.dbg.value(metadata i64 %190, metadata !487, metadata !DIExpression()), !dbg !493
  %191 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i64 %190, i32 2, !dbg !510
  %192 = load i32, i32* %191, align 8, !dbg !511, !tbaa !334
  %193 = and i32 %192, -2, !dbg !511
  store i32 %193, i32* %191, align 8, !dbg !511, !tbaa !334
  %194 = or i64 %185, 2, !dbg !512
  call void @llvm.dbg.value(metadata i64 %194, metadata !487, metadata !DIExpression()), !dbg !493
  %195 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i64 %194, i32 2, !dbg !510
  %196 = load i32, i32* %195, align 8, !dbg !511, !tbaa !334
  %197 = and i32 %196, -2, !dbg !511
  store i32 %197, i32* %195, align 8, !dbg !511, !tbaa !334
  %198 = or i64 %185, 3, !dbg !512
  call void @llvm.dbg.value(metadata i64 %198, metadata !487, metadata !DIExpression()), !dbg !493
  %199 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i64 %198, i32 2, !dbg !510
  %200 = load i32, i32* %199, align 8, !dbg !511, !tbaa !334
  %201 = and i32 %200, -2, !dbg !511
  store i32 %201, i32* %199, align 8, !dbg !511, !tbaa !334
  %202 = add nuw nsw i64 %185, 4, !dbg !512
  call void @llvm.dbg.value(metadata i64 %202, metadata !487, metadata !DIExpression()), !dbg !493
  %203 = add i64 %186, -4, !dbg !508
  %204 = icmp eq i64 %203, 0, !dbg !508
  br i1 %204, label %205, label %184, !dbg !508, !llvm.loop !513

205:                                              ; preds = %184, %175
  %206 = phi i64 [ 0, %175 ], [ %202, %184 ]
  %207 = icmp eq i64 %180, 0, !dbg !508
  br i1 %207, label %217, label %208, !dbg !508

208:                                              ; preds = %205, %208
  %209 = phi i64 [ %214, %208 ], [ %206, %205 ]
  %210 = phi i64 [ %215, %208 ], [ %180, %205 ]
  call void @llvm.dbg.value(metadata i64 %209, metadata !487, metadata !DIExpression()), !dbg !493
  %211 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i64 %209, i32 2, !dbg !510
  %212 = load i32, i32* %211, align 8, !dbg !511, !tbaa !334
  %213 = and i32 %212, -2, !dbg !511
  store i32 %213, i32* %211, align 8, !dbg !511, !tbaa !334
  %214 = add nuw nsw i64 %209, 1, !dbg !512
  call void @llvm.dbg.value(metadata i64 %214, metadata !487, metadata !DIExpression()), !dbg !493
  %215 = add i64 %210, -1, !dbg !508
  %216 = icmp eq i64 %215, 0, !dbg !508
  br i1 %216, label %217, label %208, !dbg !508, !llvm.loop !515

217:                                              ; preds = %205, %208, %165
  %218 = add nuw nsw i64 %166, 1, !dbg !516
  call void @llvm.dbg.value(metadata i64 %218, metadata !488, metadata !DIExpression()), !dbg !493
  %219 = icmp eq i64 %218, %164, !dbg !497
  br i1 %219, label %220, label %165, !dbg !498, !llvm.loop !517

220:                                              ; preds = %217, %153
  %221 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %154, i64 0, i32 4, !dbg !519
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !489, metadata !DIExpression()), !dbg !493
  %222 = load %struct.strand_t*, %struct.strand_t** %221, align 8, !dbg !520, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %222, metadata !489, metadata !DIExpression()), !dbg !493
  %223 = icmp eq %struct.strand_t* %222, null, !dbg !521
  br i1 %223, label %224, label %153, !dbg !521, !llvm.loop !522

224:                                              ; preds = %220, %81
  call void @llvm.dbg.value(metadata i8* %1, metadata !381, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8* undef, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8* %1, metadata !381, metadata !DIExpression()), !dbg !384
  %225 = tail call i8* @strchr(i8* nonnull %1, i32 124) #12, !dbg !524
  call void @llvm.dbg.value(metadata i8* %225, metadata !382, metadata !DIExpression()), !dbg !384
  %226 = bitcast i32* %3 to i8*, !dbg !526
  %227 = bitcast i32* %4 to i8*, !dbg !526
  %228 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !538
  br label %229, !dbg !552

229:                                              ; preds = %224, %984
  %230 = phi i8* [ %225, %224 ], [ %912, %984 ]
  %231 = phi i8* [ %1, %224 ], [ %241, %984 ]
  call void @llvm.dbg.value(metadata i8* %230, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8* %231, metadata !381, metadata !DIExpression()), !dbg !384
  %232 = icmp eq i8* %230, null, !dbg !553
  br i1 %232, label %238, label %233, !dbg !555

233:                                              ; preds = %229
  %234 = ptrtoint i8* %230 to i64, !dbg !556
  %235 = ptrtoint i8* %231 to i64, !dbg !556
  %236 = sub i64 %234, %235, !dbg !556
  call void @llvm.dbg.value(metadata i64 %236, metadata !383, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !384
  %237 = getelementptr inbounds i8, i8* %230, i64 1, !dbg !558
  call void @llvm.dbg.value(metadata i8* %237, metadata !382, metadata !DIExpression()), !dbg !384
  br label %240, !dbg !559

238:                                              ; preds = %229
  %239 = tail call i64 @strlen(i8* nonnull %231) #12, !dbg !560
  call void @llvm.dbg.value(metadata i64 %239, metadata !383, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !384
  br label %240

240:                                              ; preds = %238, %233
  %241 = phi i8* [ %237, %233 ], [ null, %238 ], !dbg !561
  %242 = phi i64 [ %236, %233 ], [ %239, %238 ]
  %243 = trunc i64 %242 to i32, !dbg !562
  call void @llvm.dbg.value(metadata i32 %243, metadata !383, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8* %241, metadata !382, metadata !DIExpression()), !dbg !384
  %244 = icmp sgt i32 %243, 999, !dbg !563
  br i1 %244, label %245, label %248, !dbg !565

245:                                              ; preds = %240
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !566, !tbaa !291
  %247 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %246) #11, !dbg !568
  br label %1054, !dbg !569

248:                                              ; preds = %240
  %249 = shl i64 %242, 32, !dbg !570
  %250 = ashr exact i64 %249, 32, !dbg !570
  %251 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* nonnull %231, i64 %250) #13, !dbg !571
  %252 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %250, !dbg !572
  store i8 0, i8* %252, align 1, !dbg !573, !tbaa !574
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !529, metadata !DIExpression()) #13, !dbg !526
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !530, metadata !DIExpression()) #13, !dbg !526
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %226) #13, !dbg !575
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %227) #13, !dbg !575
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !531, metadata !DIExpression()) #13, !dbg !526
  %253 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !576, !tbaa !574
  %254 = icmp eq i8 %253, 58, !dbg !578
  br i1 %254, label %255, label %256, !dbg !579

255:                                              ; preds = %248
  store i8* null, i8** @spart, align 8, !dbg !580, !tbaa !291
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), metadata !531, metadata !DIExpression()) #13, !dbg !526
  br label %261, !dbg !582

256:                                              ; preds = %248
  %257 = tail call i8* @strtok(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !583
  store i8* %257, i8** @spart, align 8, !dbg !585, !tbaa !291
  %258 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %257) #12, !dbg !586
  %259 = add i64 %258, 1, !dbg !587
  %260 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %259, !dbg !588
  call void @llvm.dbg.value(metadata i8* %260, metadata !531, metadata !DIExpression()) #13, !dbg !526
  br label %261

261:                                              ; preds = %256, %255
  %262 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), %255 ], [ %260, %256 ], !dbg !589
  call void @llvm.dbg.value(metadata i8* %262, metadata !531, metadata !DIExpression()) #13, !dbg !526
  %263 = load i8, i8* %262, align 1, !dbg !590, !tbaa !574
  %264 = icmp eq i8 %263, 58, !dbg !592
  br i1 %264, label %265, label %266, !dbg !593

265:                                              ; preds = %261
  store i8* null, i8** @rpart, align 8, !dbg !594, !tbaa !291
  br label %270, !dbg !596

266:                                              ; preds = %261
  %267 = tail call i8* @strtok(i8* nonnull %262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !597
  store i8* %267, i8** @rpart, align 8, !dbg !599, !tbaa !291
  %268 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %267) #12, !dbg !600
  %269 = add i64 %268, 1, !dbg !601
  call void @llvm.dbg.value(metadata i8* %272, metadata !531, metadata !DIExpression()) #13, !dbg !526
  br label %270

270:                                              ; preds = %266, %265
  %271 = phi i64 [ %269, %266 ], [ 1, %265 ]
  %272 = getelementptr inbounds i8, i8* %262, i64 %271, !dbg !602
  call void @llvm.dbg.value(metadata i8* %272, metadata !531, metadata !DIExpression()) #13, !dbg !526
  %273 = tail call i8* @strtok(i8* nonnull %272, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !603
  store i8* %273, i8** @apart, align 8, !dbg !604, !tbaa !291
  %274 = load i8*, i8** @spart, align 8, !dbg !605, !tbaa !291
  %275 = icmp eq i8* %274, null, !dbg !605
  br i1 %275, label %444, label %276, !dbg !606

276:                                              ; preds = %270
  %277 = tail call i8* @strtok(i8* nonnull %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !607
  call void @llvm.dbg.value(metadata i8* %277, metadata !532, metadata !DIExpression()) #13, !dbg !526
  call void @llvm.dbg.value(metadata i32* %3, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  call void @llvm.dbg.value(metadata i32* %4, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  %278 = call fastcc i32 @is_pattern(i8* %277, i32* nonnull %3, i32* nonnull %4) #13, !dbg !608
  %279 = icmp eq i32 %278, 0, !dbg !608
  br i1 %279, label %313, label %280, !dbg !609

280:                                              ; preds = %276
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !610, metadata !DIExpression()) #13, !dbg !617
  call void @llvm.dbg.value(metadata i8* %277, metadata !615, metadata !DIExpression()) #13, !dbg !617
  call void @llvm.dbg.value(metadata i8* %277, metadata !619, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !624, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !626, metadata !DIExpression()) #13, !dbg !627
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !629, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %277, metadata !625, metadata !DIExpression()) #13, !dbg !627
  br label %281, !dbg !630

281:                                              ; preds = %292, %280
  %282 = phi i8* [ %277, %280 ], [ %294, %292 ], !dbg !632
  %283 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %280 ], [ %293, %292 ], !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %282, metadata !625, metadata !DIExpression()) #13, !dbg !627
  %284 = load i8, i8* %282, align 1, !dbg !633, !tbaa !574
  switch i8 %284, label %290 [
    i8 0, label %295
    i8 42, label %285
    i8 63, label %288
  ], !dbg !635

285:                                              ; preds = %281
  %286 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !636
  call void @llvm.dbg.value(metadata i8* %286, metadata !626, metadata !DIExpression()) #13, !dbg !627
  store i8 46, i8* %283, align 1, !dbg !640, !tbaa !574
  %287 = getelementptr inbounds i8, i8* %283, i64 2, !dbg !641
  call void @llvm.dbg.value(metadata i8* %287, metadata !626, metadata !DIExpression()) #13, !dbg !627
  store i8 42, i8* %286, align 1, !dbg !642, !tbaa !574
  br label %292, !dbg !643

288:                                              ; preds = %281
  %289 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !644
  call void @llvm.dbg.value(metadata i8* %289, metadata !626, metadata !DIExpression()) #13, !dbg !627
  store i8 46, i8* %283, align 1, !dbg !646, !tbaa !574
  br label %292, !dbg !647

290:                                              ; preds = %281
  %291 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !648
  call void @llvm.dbg.value(metadata i8* %291, metadata !626, metadata !DIExpression()) #13, !dbg !627
  store i8 %284, i8* %283, align 1, !dbg !649, !tbaa !574
  br label %292

292:                                              ; preds = %290, %288, %285
  %293 = phi i8* [ %287, %285 ], [ %289, %288 ], [ %291, %290 ], !dbg !650
  call void @llvm.dbg.value(metadata i8* %293, metadata !626, metadata !DIExpression()) #13, !dbg !627
  %294 = getelementptr inbounds i8, i8* %282, i64 1, !dbg !651
  call void @llvm.dbg.value(metadata i8* %294, metadata !625, metadata !DIExpression()) #13, !dbg !627
  br label %281, !dbg !652, !llvm.loop !653

295:                                              ; preds = %281
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  call void @llvm.dbg.value(metadata i8* %283, metadata !626, metadata !DIExpression()) #13, !dbg !627
  %296 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !655
  call void @llvm.dbg.value(metadata i8* %296, metadata !626, metadata !DIExpression()) #13, !dbg !627
  store i8 36, i8* %283, align 1, !dbg !656, !tbaa !574
  store i8 0, i8* %296, align 1, !dbg !657, !tbaa !574
  %297 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !658
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !616, metadata !DIExpression()) #13, !dbg !617
  %298 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !659, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %298, metadata !616, metadata !DIExpression()) #13, !dbg !617
  %299 = icmp eq %struct.strand_t* %298, null, !dbg !661
  br i1 %299, label %357, label %300, !dbg !661

300:                                              ; preds = %295, %300
  %301 = phi %struct.strand_t* [ %311, %300 ], [ %298, %295 ]
  %302 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %301, i64 0, i32 0, !dbg !662
  %303 = load i8*, i8** %302, align 8, !dbg !662, !tbaa !665
  %304 = tail call i32 @step(i8* %303, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !666
  %305 = icmp ne i32 %304, 0, !dbg !666
  %306 = zext i1 %305 to i32, !dbg !666
  %307 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %301, i64 0, i32 2, !dbg !667
  %308 = load i32, i32* %307, align 4, !dbg !668, !tbaa !300
  %309 = or i32 %308, %306, !dbg !668
  store i32 %309, i32* %307, align 4, !dbg !668, !tbaa !300
  %310 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %301, i64 0, i32 4, !dbg !669
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !616, metadata !DIExpression()) #13, !dbg !617
  %311 = load %struct.strand_t*, %struct.strand_t** %310, align 8, !dbg !659, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %311, metadata !616, metadata !DIExpression()) #13, !dbg !617
  %312 = icmp eq %struct.strand_t* %311, null, !dbg !661
  br i1 %312, label %357, label %300, !dbg !661, !llvm.loop !670

313:                                              ; preds = %276
  %314 = load i32, i32* %3, align 4, !dbg !672, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %314, metadata !533, metadata !DIExpression()) #13, !dbg !526
  %315 = load i32, i32* %4, align 4, !dbg !674, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %315, metadata !534, metadata !DIExpression()) #13, !dbg !526
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !543, metadata !DIExpression()) #13, !dbg !538
  call void @llvm.dbg.value(metadata i32 %314, metadata !544, metadata !DIExpression()) #13, !dbg !538
  call void @llvm.dbg.value(metadata i32 %315, metadata !545, metadata !DIExpression()) #13, !dbg !538
  %316 = icmp eq i32 %315, -1, !dbg !675
  %317 = load i32, i32* %228, align 8, !dbg !538, !tbaa !677
  %318 = select i1 %316, i32 %317, i32 %315, !dbg !538
  call void @llvm.dbg.value(metadata i32 %318, metadata !545, metadata !DIExpression()) #13, !dbg !538
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !538
  call void @llvm.dbg.value(metadata i32 1, metadata !546, metadata !DIExpression()) #13, !dbg !538
  %319 = icmp slt i32 %317, 1, !dbg !679
  br i1 %319, label %357, label %320, !dbg !682

320:                                              ; preds = %313
  %321 = and i32 %317, 1, !dbg !682
  %322 = icmp eq i32 %317, 1, !dbg !682
  br i1 %322, label %344, label %323, !dbg !682

323:                                              ; preds = %320
  %324 = sub i32 %317, %321, !dbg !682
  br label %325, !dbg !682

325:                                              ; preds = %1060, %323
  %326 = phi %struct.strand_t** [ %6, %323 ], [ %1062, %1060 ]
  %327 = phi i32 [ 1, %323 ], [ %1061, %1060 ]
  %328 = phi i32 [ %324, %323 ], [ %1063, %1060 ]
  %329 = load %struct.strand_t*, %struct.strand_t** %326, align 8, !dbg !683, !tbaa !291
  call void @llvm.dbg.value(metadata i32 %327, metadata !546, metadata !DIExpression()) #13, !dbg !538
  %330 = icmp slt i32 %327, %314, !dbg !684
  %331 = icmp sgt i32 %327, %318, !dbg !687
  %332 = or i1 %330, %331, !dbg !688
  br i1 %332, label %337, label %333, !dbg !688

333:                                              ; preds = %325
  %334 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %329, i64 0, i32 2, !dbg !689
  %335 = load i32, i32* %334, align 4, !dbg !690, !tbaa !300
  %336 = or i32 %335, 1, !dbg !690
  store i32 %336, i32* %334, align 4, !dbg !690, !tbaa !300
  br label %337, !dbg !691

337:                                              ; preds = %333, %325
  %338 = add nuw i32 %327, 1, !dbg !692
  call void @llvm.dbg.value(metadata i32 %338, metadata !546, metadata !DIExpression()) #13, !dbg !538
  %339 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %329, i64 0, i32 4, !dbg !693
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !538
  %340 = load %struct.strand_t*, %struct.strand_t** %339, align 8, !dbg !683, !tbaa !291
  %341 = icmp slt i32 %338, %314, !dbg !684
  %342 = icmp sgt i32 %338, %318, !dbg !687
  %343 = or i1 %341, %342, !dbg !688
  br i1 %343, label %1060, label %1056, !dbg !688

344:                                              ; preds = %1060, %320
  %345 = phi %struct.strand_t** [ %6, %320 ], [ %1062, %1060 ]
  %346 = phi i32 [ 1, %320 ], [ %1061, %1060 ]
  %347 = icmp eq i32 %321, 0, !dbg !688
  br i1 %347, label %357, label %348, !dbg !688

348:                                              ; preds = %344
  call void @llvm.dbg.value(metadata i32 %346, metadata !546, metadata !DIExpression()) #13, !dbg !538
  %349 = icmp slt i32 %346, %314, !dbg !684
  %350 = icmp sgt i32 %346, %318, !dbg !687
  %351 = or i1 %349, %350, !dbg !688
  br i1 %351, label %357, label %352, !dbg !688

352:                                              ; preds = %348
  %353 = load %struct.strand_t*, %struct.strand_t** %345, align 8, !dbg !683, !tbaa !291
  %354 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %353, i64 0, i32 2, !dbg !689
  %355 = load i32, i32* %354, align 4, !dbg !690, !tbaa !300
  %356 = or i32 %355, 1, !dbg !690
  store i32 %356, i32* %354, align 4, !dbg !690, !tbaa !300
  br label %357, !dbg !691

357:                                              ; preds = %300, %344, %348, %352, %313, %295
  %358 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !694
  call void @llvm.dbg.value(metadata i8* %358, metadata !532, metadata !DIExpression()) #13, !dbg !526
  %359 = icmp eq i8* %358, null, !dbg !695
  br i1 %359, label %491, label %360, !dbg !695

360:                                              ; preds = %357, %441
  %361 = phi i8* [ %442, %441 ], [ %358, %357 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  call void @llvm.dbg.value(metadata i32* %4, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  %362 = call fastcc i32 @is_pattern(i8* nonnull %361, i32* nonnull %3, i32* nonnull %4) #13, !dbg !696
  %363 = icmp eq i32 %362, 0, !dbg !696
  br i1 %363, label %397, label %364, !dbg !699

364:                                              ; preds = %360
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !610, metadata !DIExpression()) #13, !dbg !700
  call void @llvm.dbg.value(metadata i8* %361, metadata !615, metadata !DIExpression()) #13, !dbg !700
  call void @llvm.dbg.value(metadata i8* %361, metadata !619, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !624, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !626, metadata !DIExpression()) #13, !dbg !702
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !704, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %361, metadata !625, metadata !DIExpression()) #13, !dbg !702
  br label %365, !dbg !705

365:                                              ; preds = %376, %364
  %366 = phi i8* [ %361, %364 ], [ %378, %376 ], !dbg !706
  %367 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %364 ], [ %377, %376 ], !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %366, metadata !625, metadata !DIExpression()) #13, !dbg !702
  %368 = load i8, i8* %366, align 1, !dbg !707, !tbaa !574
  switch i8 %368, label %374 [
    i8 0, label %379
    i8 42, label %369
    i8 63, label %372
  ], !dbg !708

369:                                              ; preds = %365
  %370 = getelementptr inbounds i8, i8* %367, i64 1, !dbg !709
  call void @llvm.dbg.value(metadata i8* %370, metadata !626, metadata !DIExpression()) #13, !dbg !702
  store i8 46, i8* %367, align 1, !dbg !710, !tbaa !574
  %371 = getelementptr inbounds i8, i8* %367, i64 2, !dbg !711
  call void @llvm.dbg.value(metadata i8* %371, metadata !626, metadata !DIExpression()) #13, !dbg !702
  store i8 42, i8* %370, align 1, !dbg !712, !tbaa !574
  br label %376, !dbg !713

372:                                              ; preds = %365
  %373 = getelementptr inbounds i8, i8* %367, i64 1, !dbg !714
  call void @llvm.dbg.value(metadata i8* %373, metadata !626, metadata !DIExpression()) #13, !dbg !702
  store i8 46, i8* %367, align 1, !dbg !715, !tbaa !574
  br label %376, !dbg !716

374:                                              ; preds = %365
  %375 = getelementptr inbounds i8, i8* %367, i64 1, !dbg !717
  call void @llvm.dbg.value(metadata i8* %375, metadata !626, metadata !DIExpression()) #13, !dbg !702
  store i8 %368, i8* %367, align 1, !dbg !718, !tbaa !574
  br label %376

376:                                              ; preds = %374, %372, %369
  %377 = phi i8* [ %371, %369 ], [ %373, %372 ], [ %375, %374 ], !dbg !719
  call void @llvm.dbg.value(metadata i8* %377, metadata !626, metadata !DIExpression()) #13, !dbg !702
  %378 = getelementptr inbounds i8, i8* %366, i64 1, !dbg !720
  call void @llvm.dbg.value(metadata i8* %378, metadata !625, metadata !DIExpression()) #13, !dbg !702
  br label %365, !dbg !721, !llvm.loop !722

379:                                              ; preds = %365
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  call void @llvm.dbg.value(metadata i8* %367, metadata !626, metadata !DIExpression()) #13, !dbg !702
  %380 = getelementptr inbounds i8, i8* %367, i64 1, !dbg !724
  call void @llvm.dbg.value(metadata i8* %380, metadata !626, metadata !DIExpression()) #13, !dbg !702
  store i8 36, i8* %367, align 1, !dbg !725, !tbaa !574
  store i8 0, i8* %380, align 1, !dbg !726, !tbaa !574
  %381 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !727
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !616, metadata !DIExpression()) #13, !dbg !700
  %382 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !728, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %382, metadata !616, metadata !DIExpression()) #13, !dbg !700
  %383 = icmp eq %struct.strand_t* %382, null, !dbg !729
  br i1 %383, label %441, label %384, !dbg !729

384:                                              ; preds = %379, %384
  %385 = phi %struct.strand_t* [ %395, %384 ], [ %382, %379 ]
  %386 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %385, i64 0, i32 0, !dbg !730
  %387 = load i8*, i8** %386, align 8, !dbg !730, !tbaa !665
  %388 = tail call i32 @step(i8* %387, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !731
  %389 = icmp ne i32 %388, 0, !dbg !731
  %390 = zext i1 %389 to i32, !dbg !731
  %391 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %385, i64 0, i32 2, !dbg !732
  %392 = load i32, i32* %391, align 4, !dbg !733, !tbaa !300
  %393 = or i32 %392, %390, !dbg !733
  store i32 %393, i32* %391, align 4, !dbg !733, !tbaa !300
  %394 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %385, i64 0, i32 4, !dbg !734
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !616, metadata !DIExpression()) #13, !dbg !700
  %395 = load %struct.strand_t*, %struct.strand_t** %394, align 8, !dbg !728, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %395, metadata !616, metadata !DIExpression()) #13, !dbg !700
  %396 = icmp eq %struct.strand_t* %395, null, !dbg !729
  br i1 %396, label %441, label %384, !dbg !729, !llvm.loop !735

397:                                              ; preds = %360
  %398 = load i32, i32* %3, align 4, !dbg !737, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %398, metadata !533, metadata !DIExpression()) #13, !dbg !526
  %399 = load i32, i32* %4, align 4, !dbg !738, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %399, metadata !534, metadata !DIExpression()) #13, !dbg !526
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !543, metadata !DIExpression()) #13, !dbg !739
  call void @llvm.dbg.value(metadata i32 %398, metadata !544, metadata !DIExpression()) #13, !dbg !739
  call void @llvm.dbg.value(metadata i32 %399, metadata !545, metadata !DIExpression()) #13, !dbg !739
  %400 = icmp eq i32 %399, -1, !dbg !741
  %401 = load i32, i32* %228, align 8, !dbg !739, !tbaa !677
  %402 = select i1 %400, i32 %401, i32 %399, !dbg !739
  call void @llvm.dbg.value(metadata i32 %402, metadata !545, metadata !DIExpression()) #13, !dbg !739
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !739
  call void @llvm.dbg.value(metadata i32 1, metadata !546, metadata !DIExpression()) #13, !dbg !739
  %403 = icmp slt i32 %401, 1, !dbg !742
  br i1 %403, label %441, label %404, !dbg !743

404:                                              ; preds = %397
  %405 = and i32 %401, 1, !dbg !743
  %406 = icmp eq i32 %401, 1, !dbg !743
  br i1 %406, label %428, label %407, !dbg !743

407:                                              ; preds = %404
  %408 = sub i32 %401, %405, !dbg !743
  br label %409, !dbg !743

409:                                              ; preds = %1069, %407
  %410 = phi %struct.strand_t** [ %6, %407 ], [ %1071, %1069 ]
  %411 = phi i32 [ 1, %407 ], [ %1070, %1069 ]
  %412 = phi i32 [ %408, %407 ], [ %1072, %1069 ]
  %413 = load %struct.strand_t*, %struct.strand_t** %410, align 8, !dbg !744, !tbaa !291
  call void @llvm.dbg.value(metadata i32 %411, metadata !546, metadata !DIExpression()) #13, !dbg !739
  %414 = icmp slt i32 %411, %398, !dbg !745
  %415 = icmp sgt i32 %411, %402, !dbg !746
  %416 = or i1 %414, %415, !dbg !747
  br i1 %416, label %421, label %417, !dbg !747

417:                                              ; preds = %409
  %418 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %413, i64 0, i32 2, !dbg !748
  %419 = load i32, i32* %418, align 4, !dbg !749, !tbaa !300
  %420 = or i32 %419, 1, !dbg !749
  store i32 %420, i32* %418, align 4, !dbg !749, !tbaa !300
  br label %421, !dbg !750

421:                                              ; preds = %417, %409
  %422 = add nuw i32 %411, 1, !dbg !751
  call void @llvm.dbg.value(metadata i32 %422, metadata !546, metadata !DIExpression()) #13, !dbg !739
  %423 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %413, i64 0, i32 4, !dbg !752
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !739
  %424 = load %struct.strand_t*, %struct.strand_t** %423, align 8, !dbg !744, !tbaa !291
  %425 = icmp slt i32 %422, %398, !dbg !745
  %426 = icmp sgt i32 %422, %402, !dbg !746
  %427 = or i1 %425, %426, !dbg !747
  br i1 %427, label %1069, label %1065, !dbg !747

428:                                              ; preds = %1069, %404
  %429 = phi %struct.strand_t** [ %6, %404 ], [ %1071, %1069 ]
  %430 = phi i32 [ 1, %404 ], [ %1070, %1069 ]
  %431 = icmp eq i32 %405, 0, !dbg !747
  br i1 %431, label %441, label %432, !dbg !747

432:                                              ; preds = %428
  call void @llvm.dbg.value(metadata i32 %430, metadata !546, metadata !DIExpression()) #13, !dbg !739
  %433 = icmp slt i32 %430, %398, !dbg !745
  %434 = icmp sgt i32 %430, %402, !dbg !746
  %435 = or i1 %433, %434, !dbg !747
  br i1 %435, label %441, label %436, !dbg !747

436:                                              ; preds = %432
  %437 = load %struct.strand_t*, %struct.strand_t** %429, align 8, !dbg !744, !tbaa !291
  %438 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %437, i64 0, i32 2, !dbg !748
  %439 = load i32, i32* %438, align 4, !dbg !749, !tbaa !300
  %440 = or i32 %439, 1, !dbg !749
  store i32 %440, i32* %438, align 4, !dbg !749, !tbaa !300
  br label %441, !dbg !750

441:                                              ; preds = %384, %428, %432, %436, %397, %379
  %442 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !694
  call void @llvm.dbg.value(metadata i8* %442, metadata !532, metadata !DIExpression()) #13, !dbg !526
  %443 = icmp eq i8* %442, null, !dbg !695
  br i1 %443, label %491, label %360, !dbg !695, !llvm.loop !753

444:                                              ; preds = %270
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !543, metadata !DIExpression()) #13, !dbg !755
  call void @llvm.dbg.value(metadata i32 1, metadata !544, metadata !DIExpression()) #13, !dbg !755
  call void @llvm.dbg.value(metadata i32 -1, metadata !545, metadata !DIExpression()) #13, !dbg !755
  %445 = load i32, i32* %228, align 8, !dbg !755, !tbaa !677
  call void @llvm.dbg.value(metadata i32 %445, metadata !545, metadata !DIExpression()) #13, !dbg !755
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !755
  call void @llvm.dbg.value(metadata i32 1, metadata !546, metadata !DIExpression()) #13, !dbg !755
  %446 = icmp slt i32 %445, 1, !dbg !757
  br i1 %446, label %491, label %447, !dbg !758

447:                                              ; preds = %444
  %448 = add i32 %445, -1, !dbg !758
  %449 = and i32 %445, 3, !dbg !758
  %450 = icmp ult i32 %448, 3, !dbg !758
  br i1 %450, label %478, label %451, !dbg !758

451:                                              ; preds = %447
  %452 = sub i32 %445, %449, !dbg !758
  br label %453, !dbg !758

453:                                              ; preds = %453, %451
  %454 = phi %struct.strand_t** [ %6, %451 ], [ %475, %453 ]
  %455 = phi i32 [ %452, %451 ], [ %476, %453 ]
  %456 = load %struct.strand_t*, %struct.strand_t** %454, align 8, !dbg !759, !tbaa !291
  call void @llvm.dbg.value(metadata i32 undef, metadata !546, metadata !DIExpression()) #13, !dbg !755
  %457 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %456, i64 0, i32 2, !dbg !760
  %458 = load i32, i32* %457, align 4, !dbg !761, !tbaa !300
  %459 = or i32 %458, 1, !dbg !761
  store i32 %459, i32* %457, align 4, !dbg !761, !tbaa !300
  call void @llvm.dbg.value(metadata i32 undef, metadata !546, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #13, !dbg !755
  %460 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %456, i64 0, i32 4, !dbg !762
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !755
  %461 = load %struct.strand_t*, %struct.strand_t** %460, align 8, !dbg !759, !tbaa !291
  %462 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %461, i64 0, i32 2, !dbg !760
  %463 = load i32, i32* %462, align 4, !dbg !761, !tbaa !300
  %464 = or i32 %463, 1, !dbg !761
  store i32 %464, i32* %462, align 4, !dbg !761, !tbaa !300
  call void @llvm.dbg.value(metadata i32 undef, metadata !546, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #13, !dbg !755
  %465 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %461, i64 0, i32 4, !dbg !762
  %466 = load %struct.strand_t*, %struct.strand_t** %465, align 8, !dbg !759, !tbaa !291
  %467 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %466, i64 0, i32 2, !dbg !760
  %468 = load i32, i32* %467, align 4, !dbg !761, !tbaa !300
  %469 = or i32 %468, 1, !dbg !761
  store i32 %469, i32* %467, align 4, !dbg !761, !tbaa !300
  call void @llvm.dbg.value(metadata i32 undef, metadata !546, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #13, !dbg !755
  %470 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %466, i64 0, i32 4, !dbg !762
  %471 = load %struct.strand_t*, %struct.strand_t** %470, align 8, !dbg !759, !tbaa !291
  %472 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %471, i64 0, i32 2, !dbg !760
  %473 = load i32, i32* %472, align 4, !dbg !761, !tbaa !300
  %474 = or i32 %473, 1, !dbg !761
  store i32 %474, i32* %472, align 4, !dbg !761, !tbaa !300
  call void @llvm.dbg.value(metadata i32 undef, metadata !546, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #13, !dbg !755
  %475 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %471, i64 0, i32 4, !dbg !762
  %476 = add i32 %455, -4, !dbg !758
  %477 = icmp eq i32 %476, 0, !dbg !758
  br i1 %477, label %478, label %453, !dbg !758, !llvm.loop !763

478:                                              ; preds = %453, %447
  %479 = phi %struct.strand_t** [ %6, %447 ], [ %475, %453 ]
  %480 = icmp eq i32 %449, 0, !dbg !758
  br i1 %480, label %491, label %481, !dbg !758

481:                                              ; preds = %478, %481
  %482 = phi %struct.strand_t** [ %488, %481 ], [ %479, %478 ]
  %483 = phi i32 [ %489, %481 ], [ %449, %478 ]
  %484 = load %struct.strand_t*, %struct.strand_t** %482, align 8, !dbg !759, !tbaa !291
  call void @llvm.dbg.value(metadata i32 undef, metadata !546, metadata !DIExpression()) #13, !dbg !755
  %485 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %484, i64 0, i32 2, !dbg !760
  %486 = load i32, i32* %485, align 4, !dbg !761, !tbaa !300
  %487 = or i32 %486, 1, !dbg !761
  store i32 %487, i32* %485, align 4, !dbg !761, !tbaa !300
  call void @llvm.dbg.value(metadata i32 undef, metadata !546, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #13, !dbg !755
  %488 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %484, i64 0, i32 4, !dbg !762
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !755
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !755
  %489 = add i32 %483, -1, !dbg !758
  %490 = icmp eq i32 %489, 0, !dbg !758
  br i1 %490, label %491, label %481, !dbg !758, !llvm.loop !765

491:                                              ; preds = %441, %478, %481, %444, %357
  %492 = load i8*, i8** @rpart, align 8, !dbg !766, !tbaa !291
  %493 = icmp eq i8* %492, null, !dbg !766
  br i1 %493, label %742, label %494, !dbg !768

494:                                              ; preds = %491
  %495 = tail call i8* @strtok(i8* nonnull %492, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !769
  call void @llvm.dbg.value(metadata i8* %495, metadata !532, metadata !DIExpression()) #13, !dbg !526
  call void @llvm.dbg.value(metadata i32* %3, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  call void @llvm.dbg.value(metadata i32* %4, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  %496 = call fastcc i32 @is_pattern(i8* %495, i32* nonnull %3, i32* nonnull %4) #13, !dbg !771
  %497 = icmp eq i32 %496, 0, !dbg !771
  br i1 %497, label %499, label %498, !dbg !773

498:                                              ; preds = %494
  tail call fastcc void @match_res_pat(%struct.molecule_t* %0, i8* %495) #13, !dbg !774
  br label %615, !dbg !774

499:                                              ; preds = %494
  %500 = load i32, i32* %3, align 4, !dbg !775, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %500, metadata !533, metadata !DIExpression()) #13, !dbg !526
  %501 = load i32, i32* %4, align 4, !dbg !776, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %501, metadata !534, metadata !DIExpression()) #13, !dbg !526
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !777, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata i32 %500, metadata !780, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata i32 %501, metadata !781, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !786
  %502 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !788, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %502, metadata !784, metadata !DIExpression()) #13, !dbg !786
  %503 = icmp eq %struct.strand_t* %502, null, !dbg !790
  br i1 %503, label %615, label %504, !dbg !790

504:                                              ; preds = %499
  %505 = icmp eq i32 %501, -1, !dbg !791
  br i1 %505, label %509, label %506, !dbg !790

506:                                              ; preds = %504
  %507 = sext i32 %501 to i64, !dbg !790
  %508 = sext i32 %500 to i64, !dbg !790
  br label %560, !dbg !790

509:                                              ; preds = %504
  %510 = sext i32 %500 to i64, !dbg !790
  br label %511, !dbg !790

511:                                              ; preds = %549, %509
  %512 = phi %struct.strand_t* [ %551, %549 ], [ %502, %509 ]
  %513 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %512, i64 0, i32 2, !dbg !796
  %514 = load i32, i32* %513, align 4, !dbg !796, !tbaa !300
  %515 = and i32 %514, 1, !dbg !797
  %516 = icmp eq i32 %515, 0, !dbg !797
  br i1 %516, label %549, label %517, !dbg !798

517:                                              ; preds = %511
  %518 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %512, i64 0, i32 5, !dbg !799
  %519 = load i32, i32* %518, align 8, !dbg !799, !tbaa !309
  call void @llvm.dbg.value(metadata i32 %519, metadata !783, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata i32 0, metadata !782, metadata !DIExpression()) #13, !dbg !786
  %520 = icmp sgt i32 %519, 0, !dbg !800
  br i1 %520, label %553, label %549, !dbg !803

521:                                              ; preds = %1091, %558
  %522 = phi i64 [ 0, %558 ], [ %534, %1091 ]
  %523 = phi i64 [ %559, %558 ], [ %1092, %1091 ]
  call void @llvm.dbg.value(metadata i64 %522, metadata !782, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %524 = or i64 %522, 1, !dbg !804
  %525 = icmp slt i64 %524, %510, !dbg !807
  br i1 %525, label %533, label %526, !dbg !808

526:                                              ; preds = %521
  %527 = load %struct.residue_t**, %struct.residue_t*** %554, align 8, !dbg !809, !tbaa !314
  %528 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %527, i64 %522, !dbg !810
  %529 = load %struct.residue_t*, %struct.residue_t** %528, align 8, !dbg !810, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %529, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %530 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %529, i64 0, i32 6, !dbg !811
  %531 = load i32, i32* %530, align 8, !dbg !812, !tbaa !318
  %532 = or i32 %531, 1, !dbg !812
  store i32 %532, i32* %530, align 8, !dbg !812, !tbaa !318
  br label %533, !dbg !813

533:                                              ; preds = %526, %521
  call void @llvm.dbg.value(metadata i64 %524, metadata !782, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %534 = add nuw nsw i64 %522, 2, !dbg !804
  %535 = icmp slt i64 %534, %510, !dbg !807
  br i1 %535, label %1091, label %1084, !dbg !808

536:                                              ; preds = %1091, %553
  %537 = phi i64 [ 0, %553 ], [ %534, %1091 ]
  %538 = icmp eq i64 %556, 0, !dbg !808
  %539 = add nuw nsw i64 %537, 1, !dbg !804
  %540 = icmp slt i64 %539, %510, !dbg !807
  %541 = or i1 %538, %540, !dbg !808
  call void @llvm.dbg.value(metadata i64 %537, metadata !782, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !786
  br i1 %541, label %549, label %542, !dbg !808

542:                                              ; preds = %536
  %543 = load %struct.residue_t**, %struct.residue_t*** %554, align 8, !dbg !809, !tbaa !314
  %544 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %543, i64 %537, !dbg !810
  %545 = load %struct.residue_t*, %struct.residue_t** %544, align 8, !dbg !810, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %545, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %546 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %545, i64 0, i32 6, !dbg !811
  %547 = load i32, i32* %546, align 8, !dbg !812, !tbaa !318
  %548 = or i32 %547, 1, !dbg !812
  store i32 %548, i32* %546, align 8, !dbg !812, !tbaa !318
  br label %549, !dbg !813

549:                                              ; preds = %536, %542, %517, %511
  %550 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %512, i64 0, i32 4, !dbg !814
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !786
  %551 = load %struct.strand_t*, %struct.strand_t** %550, align 8, !dbg !788, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %551, metadata !784, metadata !DIExpression()) #13, !dbg !786
  %552 = icmp eq %struct.strand_t* %551, null, !dbg !790
  br i1 %552, label %615, label %511, !dbg !790, !llvm.loop !815

553:                                              ; preds = %517
  %554 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %512, i64 0, i32 7, !dbg !817
  %555 = zext i32 %519 to i64, !dbg !803
  %556 = and i64 %555, 1, !dbg !803
  %557 = icmp eq i32 %519, 1, !dbg !803
  br i1 %557, label %536, label %558, !dbg !803

558:                                              ; preds = %553
  %559 = sub nsw i64 %555, %556, !dbg !803
  br label %521, !dbg !803

560:                                              ; preds = %611, %506
  %561 = phi %struct.strand_t* [ %613, %611 ], [ %502, %506 ]
  %562 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %561, i64 0, i32 2, !dbg !796
  %563 = load i32, i32* %562, align 4, !dbg !796, !tbaa !300
  %564 = and i32 %563, 1, !dbg !797
  %565 = icmp eq i32 %564, 0, !dbg !797
  br i1 %565, label %611, label %566, !dbg !798

566:                                              ; preds = %560
  call void @llvm.dbg.value(metadata i32 %501, metadata !783, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata i32 0, metadata !782, metadata !DIExpression()) #13, !dbg !786
  %567 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %561, i64 0, i32 5, !dbg !818
  %568 = load i32, i32* %567, align 8, !dbg !818, !tbaa !309
  %569 = icmp sgt i32 %568, 0, !dbg !800
  br i1 %569, label %570, label %611, !dbg !803

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %561, i64 0, i32 7, !dbg !817
  %572 = zext i32 %568 to i64, !dbg !803
  %573 = and i64 %572, 1, !dbg !803
  %574 = icmp eq i32 %568, 1, !dbg !803
  br i1 %574, label %596, label %575, !dbg !803

575:                                              ; preds = %570
  %576 = sub nsw i64 %572, %573, !dbg !803
  br label %577, !dbg !803

577:                                              ; preds = %1081, %575
  %578 = phi i64 [ 0, %575 ], [ %592, %1081 ]
  %579 = phi i64 [ %576, %575 ], [ %1082, %1081 ]
  call void @llvm.dbg.value(metadata i64 %578, metadata !782, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %580 = or i64 %578, 1, !dbg !804
  %581 = icmp sge i64 %580, %508, !dbg !807
  %582 = icmp slt i64 %578, %507, !dbg !819
  %583 = and i1 %582, %581, !dbg !808
  br i1 %583, label %584, label %591, !dbg !808

584:                                              ; preds = %577
  %585 = load %struct.residue_t**, %struct.residue_t*** %571, align 8, !dbg !809, !tbaa !314
  %586 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %585, i64 %578, !dbg !810
  %587 = load %struct.residue_t*, %struct.residue_t** %586, align 8, !dbg !810, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %587, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %588 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %587, i64 0, i32 6, !dbg !811
  %589 = load i32, i32* %588, align 8, !dbg !812, !tbaa !318
  %590 = or i32 %589, 1, !dbg !812
  store i32 %590, i32* %588, align 8, !dbg !812, !tbaa !318
  br label %591, !dbg !813

591:                                              ; preds = %584, %577
  call void @llvm.dbg.value(metadata i64 %580, metadata !782, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %592 = add nuw nsw i64 %578, 2, !dbg !804
  %593 = icmp sge i64 %592, %508, !dbg !807
  %594 = icmp slt i64 %580, %507, !dbg !819
  %595 = and i1 %594, %593, !dbg !808
  br i1 %595, label %1074, label %1081, !dbg !808

596:                                              ; preds = %1081, %570
  %597 = phi i64 [ 0, %570 ], [ %592, %1081 ]
  %598 = icmp eq i64 %573, 0, !dbg !808
  br i1 %598, label %611, label %599, !dbg !808

599:                                              ; preds = %596
  call void @llvm.dbg.value(metadata i64 %597, metadata !782, metadata !DIExpression()) #13, !dbg !786
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %600 = add nuw nsw i64 %597, 1, !dbg !804
  %601 = icmp sge i64 %600, %508, !dbg !807
  %602 = icmp slt i64 %597, %507, !dbg !819
  %603 = and i1 %602, %601, !dbg !808
  br i1 %603, label %604, label %611, !dbg !808

604:                                              ; preds = %599
  %605 = load %struct.residue_t**, %struct.residue_t*** %571, align 8, !dbg !809, !tbaa !314
  %606 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %605, i64 %597, !dbg !810
  %607 = load %struct.residue_t*, %struct.residue_t** %606, align 8, !dbg !810, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %607, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %608 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %607, i64 0, i32 6, !dbg !811
  %609 = load i32, i32* %608, align 8, !dbg !812, !tbaa !318
  %610 = or i32 %609, 1, !dbg !812
  store i32 %610, i32* %608, align 8, !dbg !812, !tbaa !318
  br label %611, !dbg !813

611:                                              ; preds = %596, %599, %604, %566, %560
  %612 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %561, i64 0, i32 4, !dbg !814
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !786
  %613 = load %struct.strand_t*, %struct.strand_t** %612, align 8, !dbg !788, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %613, metadata !784, metadata !DIExpression()) #13, !dbg !786
  %614 = icmp eq %struct.strand_t* %613, null, !dbg !790
  br i1 %614, label %615, label %560, !dbg !790, !llvm.loop !820

615:                                              ; preds = %611, %549, %499, %498
  %616 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !821
  call void @llvm.dbg.value(metadata i8* %616, metadata !532, metadata !DIExpression()) #13, !dbg !526
  %617 = icmp eq i8* %616, null, !dbg !822
  br i1 %617, label %811, label %618, !dbg !822

618:                                              ; preds = %615, %739
  %619 = phi i8* [ %740, %739 ], [ %616, %615 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  call void @llvm.dbg.value(metadata i32* %4, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  %620 = call fastcc i32 @is_pattern(i8* nonnull %619, i32* nonnull %3, i32* nonnull %4) #13, !dbg !823
  %621 = icmp eq i32 %620, 0, !dbg !823
  br i1 %621, label %623, label %622, !dbg !826

622:                                              ; preds = %618
  tail call fastcc void @match_res_pat(%struct.molecule_t* %0, i8* nonnull %619) #13, !dbg !827
  br label %739, !dbg !827

623:                                              ; preds = %618
  %624 = load i32, i32* %3, align 4, !dbg !828, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %624, metadata !533, metadata !DIExpression()) #13, !dbg !526
  %625 = load i32, i32* %4, align 4, !dbg !829, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %625, metadata !534, metadata !DIExpression()) #13, !dbg !526
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !777, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata i32 %624, metadata !780, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata i32 %625, metadata !781, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !830
  %626 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !832, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %626, metadata !784, metadata !DIExpression()) #13, !dbg !830
  %627 = icmp eq %struct.strand_t* %626, null, !dbg !833
  br i1 %627, label %739, label %628, !dbg !833

628:                                              ; preds = %623
  %629 = icmp eq i32 %625, -1, !dbg !834
  br i1 %629, label %633, label %630, !dbg !833

630:                                              ; preds = %628
  %631 = sext i32 %625 to i64, !dbg !833
  %632 = sext i32 %624 to i64, !dbg !833
  br label %684, !dbg !833

633:                                              ; preds = %628
  %634 = sext i32 %624 to i64, !dbg !833
  br label %635, !dbg !833

635:                                              ; preds = %673, %633
  %636 = phi %struct.strand_t* [ %675, %673 ], [ %626, %633 ]
  %637 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %636, i64 0, i32 2, !dbg !835
  %638 = load i32, i32* %637, align 4, !dbg !835, !tbaa !300
  %639 = and i32 %638, 1, !dbg !836
  %640 = icmp eq i32 %639, 0, !dbg !836
  br i1 %640, label %673, label %641, !dbg !837

641:                                              ; preds = %635
  %642 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %636, i64 0, i32 5, !dbg !838
  %643 = load i32, i32* %642, align 8, !dbg !838, !tbaa !309
  call void @llvm.dbg.value(metadata i32 %643, metadata !783, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata i32 0, metadata !782, metadata !DIExpression()) #13, !dbg !830
  %644 = icmp sgt i32 %643, 0, !dbg !839
  br i1 %644, label %677, label %673, !dbg !840

645:                                              ; preds = %1111, %682
  %646 = phi i64 [ 0, %682 ], [ %658, %1111 ]
  %647 = phi i64 [ %683, %682 ], [ %1112, %1111 ]
  call void @llvm.dbg.value(metadata i64 %646, metadata !782, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %648 = or i64 %646, 1, !dbg !841
  %649 = icmp slt i64 %648, %634, !dbg !842
  br i1 %649, label %657, label %650, !dbg !843

650:                                              ; preds = %645
  %651 = load %struct.residue_t**, %struct.residue_t*** %678, align 8, !dbg !844, !tbaa !314
  %652 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %651, i64 %646, !dbg !845
  %653 = load %struct.residue_t*, %struct.residue_t** %652, align 8, !dbg !845, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %653, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %654 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %653, i64 0, i32 6, !dbg !846
  %655 = load i32, i32* %654, align 8, !dbg !847, !tbaa !318
  %656 = or i32 %655, 1, !dbg !847
  store i32 %656, i32* %654, align 8, !dbg !847, !tbaa !318
  br label %657, !dbg !848

657:                                              ; preds = %650, %645
  call void @llvm.dbg.value(metadata i64 %648, metadata !782, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %658 = add nuw nsw i64 %646, 2, !dbg !841
  %659 = icmp slt i64 %658, %634, !dbg !842
  br i1 %659, label %1111, label %1104, !dbg !843

660:                                              ; preds = %1111, %677
  %661 = phi i64 [ 0, %677 ], [ %658, %1111 ]
  %662 = icmp eq i64 %680, 0, !dbg !843
  %663 = add nuw nsw i64 %661, 1, !dbg !841
  %664 = icmp slt i64 %663, %634, !dbg !842
  %665 = or i1 %662, %664, !dbg !843
  call void @llvm.dbg.value(metadata i64 %661, metadata !782, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !830
  br i1 %665, label %673, label %666, !dbg !843

666:                                              ; preds = %660
  %667 = load %struct.residue_t**, %struct.residue_t*** %678, align 8, !dbg !844, !tbaa !314
  %668 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %667, i64 %661, !dbg !845
  %669 = load %struct.residue_t*, %struct.residue_t** %668, align 8, !dbg !845, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %669, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %670 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %669, i64 0, i32 6, !dbg !846
  %671 = load i32, i32* %670, align 8, !dbg !847, !tbaa !318
  %672 = or i32 %671, 1, !dbg !847
  store i32 %672, i32* %670, align 8, !dbg !847, !tbaa !318
  br label %673, !dbg !848

673:                                              ; preds = %660, %666, %641, %635
  %674 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %636, i64 0, i32 4, !dbg !849
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !830
  %675 = load %struct.strand_t*, %struct.strand_t** %674, align 8, !dbg !832, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %675, metadata !784, metadata !DIExpression()) #13, !dbg !830
  %676 = icmp eq %struct.strand_t* %675, null, !dbg !833
  br i1 %676, label %739, label %635, !dbg !833, !llvm.loop !850

677:                                              ; preds = %641
  %678 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %636, i64 0, i32 7, !dbg !852
  %679 = zext i32 %643 to i64, !dbg !840
  %680 = and i64 %679, 1, !dbg !840
  %681 = icmp eq i32 %643, 1, !dbg !840
  br i1 %681, label %660, label %682, !dbg !840

682:                                              ; preds = %677
  %683 = sub nsw i64 %679, %680, !dbg !840
  br label %645, !dbg !840

684:                                              ; preds = %735, %630
  %685 = phi %struct.strand_t* [ %737, %735 ], [ %626, %630 ]
  %686 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %685, i64 0, i32 2, !dbg !835
  %687 = load i32, i32* %686, align 4, !dbg !835, !tbaa !300
  %688 = and i32 %687, 1, !dbg !836
  %689 = icmp eq i32 %688, 0, !dbg !836
  br i1 %689, label %735, label %690, !dbg !837

690:                                              ; preds = %684
  call void @llvm.dbg.value(metadata i32 %625, metadata !783, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata i32 0, metadata !782, metadata !DIExpression()) #13, !dbg !830
  %691 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %685, i64 0, i32 5, !dbg !853
  %692 = load i32, i32* %691, align 8, !dbg !853, !tbaa !309
  %693 = icmp sgt i32 %692, 0, !dbg !839
  br i1 %693, label %694, label %735, !dbg !840

694:                                              ; preds = %690
  %695 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %685, i64 0, i32 7, !dbg !852
  %696 = zext i32 %692 to i64, !dbg !840
  %697 = and i64 %696, 1, !dbg !840
  %698 = icmp eq i32 %692, 1, !dbg !840
  br i1 %698, label %720, label %699, !dbg !840

699:                                              ; preds = %694
  %700 = sub nsw i64 %696, %697, !dbg !840
  br label %701, !dbg !840

701:                                              ; preds = %1101, %699
  %702 = phi i64 [ 0, %699 ], [ %716, %1101 ]
  %703 = phi i64 [ %700, %699 ], [ %1102, %1101 ]
  call void @llvm.dbg.value(metadata i64 %702, metadata !782, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %704 = or i64 %702, 1, !dbg !841
  %705 = icmp sge i64 %704, %632, !dbg !842
  %706 = icmp slt i64 %702, %631, !dbg !854
  %707 = and i1 %706, %705, !dbg !843
  br i1 %707, label %708, label %715, !dbg !843

708:                                              ; preds = %701
  %709 = load %struct.residue_t**, %struct.residue_t*** %695, align 8, !dbg !844, !tbaa !314
  %710 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %709, i64 %702, !dbg !845
  %711 = load %struct.residue_t*, %struct.residue_t** %710, align 8, !dbg !845, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %711, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %712 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %711, i64 0, i32 6, !dbg !846
  %713 = load i32, i32* %712, align 8, !dbg !847, !tbaa !318
  %714 = or i32 %713, 1, !dbg !847
  store i32 %714, i32* %712, align 8, !dbg !847, !tbaa !318
  br label %715, !dbg !848

715:                                              ; preds = %708, %701
  call void @llvm.dbg.value(metadata i64 %704, metadata !782, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %716 = add nuw nsw i64 %702, 2, !dbg !841
  %717 = icmp sge i64 %716, %632, !dbg !842
  %718 = icmp slt i64 %704, %631, !dbg !854
  %719 = and i1 %718, %717, !dbg !843
  br i1 %719, label %1094, label %1101, !dbg !843

720:                                              ; preds = %1101, %694
  %721 = phi i64 [ 0, %694 ], [ %716, %1101 ]
  %722 = icmp eq i64 %697, 0, !dbg !843
  br i1 %722, label %735, label %723, !dbg !843

723:                                              ; preds = %720
  call void @llvm.dbg.value(metadata i64 %721, metadata !782, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %724 = add nuw nsw i64 %721, 1, !dbg !841
  %725 = icmp sge i64 %724, %632, !dbg !842
  %726 = icmp slt i64 %721, %631, !dbg !854
  %727 = and i1 %726, %725, !dbg !843
  br i1 %727, label %728, label %735, !dbg !843

728:                                              ; preds = %723
  %729 = load %struct.residue_t**, %struct.residue_t*** %695, align 8, !dbg !844, !tbaa !314
  %730 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %729, i64 %721, !dbg !845
  %731 = load %struct.residue_t*, %struct.residue_t** %730, align 8, !dbg !845, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %731, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %732 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %731, i64 0, i32 6, !dbg !846
  %733 = load i32, i32* %732, align 8, !dbg !847, !tbaa !318
  %734 = or i32 %733, 1, !dbg !847
  store i32 %734, i32* %732, align 8, !dbg !847, !tbaa !318
  br label %735, !dbg !848

735:                                              ; preds = %720, %723, %728, %690, %684
  %736 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %685, i64 0, i32 4, !dbg !849
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !830
  %737 = load %struct.strand_t*, %struct.strand_t** %736, align 8, !dbg !832, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %737, metadata !784, metadata !DIExpression()) #13, !dbg !830
  %738 = icmp eq %struct.strand_t* %737, null, !dbg !833
  br i1 %738, label %739, label %684, !dbg !833, !llvm.loop !855

739:                                              ; preds = %735, %673, %623, %622
  %740 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !821
  call void @llvm.dbg.value(metadata i8* %740, metadata !532, metadata !DIExpression()) #13, !dbg !526
  %741 = icmp eq i8* %740, null, !dbg !822
  br i1 %741, label %811, label %618, !dbg !822, !llvm.loop !856

742:                                              ; preds = %491
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !777, metadata !DIExpression()) #13, !dbg !858
  call void @llvm.dbg.value(metadata i32 1, metadata !780, metadata !DIExpression()) #13, !dbg !858
  call void @llvm.dbg.value(metadata i32 -1, metadata !781, metadata !DIExpression()) #13, !dbg !858
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !858
  %743 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !860, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %743, metadata !784, metadata !DIExpression()) #13, !dbg !858
  %744 = icmp eq %struct.strand_t* %743, null, !dbg !861
  br i1 %744, label %811, label %745, !dbg !861

745:                                              ; preds = %742, %798
  %746 = phi %struct.strand_t* [ %800, %798 ], [ %743, %742 ]
  %747 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %746, i64 0, i32 2, !dbg !862
  %748 = load i32, i32* %747, align 4, !dbg !862, !tbaa !300
  %749 = and i32 %748, 1, !dbg !863
  %750 = icmp eq i32 %749, 0, !dbg !863
  br i1 %750, label %798, label %751, !dbg !864

751:                                              ; preds = %745
  %752 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %746, i64 0, i32 5, !dbg !865
  %753 = load i32, i32* %752, align 8, !dbg !865, !tbaa !309
  call void @llvm.dbg.value(metadata i32 %753, metadata !783, metadata !DIExpression()) #13, !dbg !858
  call void @llvm.dbg.value(metadata i32 0, metadata !782, metadata !DIExpression()) #13, !dbg !858
  %754 = icmp sgt i32 %753, 0, !dbg !866
  br i1 %754, label %802, label %798, !dbg !867

755:                                              ; preds = %755, %809
  %756 = phi i64 [ 0, %809 ], [ %776, %755 ]
  %757 = phi i64 [ %810, %809 ], [ %782, %755 ]
  call void @llvm.dbg.value(metadata i64 %756, metadata !782, metadata !DIExpression()) #13, !dbg !858
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !858
  %758 = or i64 %756, 1, !dbg !868
  %759 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %805, i64 %756, !dbg !869
  %760 = load %struct.residue_t*, %struct.residue_t** %759, align 8, !dbg !869, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %760, metadata !785, metadata !DIExpression()) #13, !dbg !858
  %761 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %760, i64 0, i32 6, !dbg !870
  %762 = load i32, i32* %761, align 8, !dbg !871, !tbaa !318
  %763 = or i32 %762, 1, !dbg !871
  store i32 %763, i32* %761, align 8, !dbg !871, !tbaa !318
  call void @llvm.dbg.value(metadata i64 %758, metadata !782, metadata !DIExpression()) #13, !dbg !858
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !858
  %764 = or i64 %756, 2, !dbg !868
  %765 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %805, i64 %758, !dbg !869
  %766 = load %struct.residue_t*, %struct.residue_t** %765, align 8, !dbg !869, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %766, metadata !785, metadata !DIExpression()) #13, !dbg !858
  %767 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %766, i64 0, i32 6, !dbg !870
  %768 = load i32, i32* %767, align 8, !dbg !871, !tbaa !318
  %769 = or i32 %768, 1, !dbg !871
  store i32 %769, i32* %767, align 8, !dbg !871, !tbaa !318
  call void @llvm.dbg.value(metadata i64 %764, metadata !782, metadata !DIExpression()) #13, !dbg !858
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !858
  %770 = or i64 %756, 3, !dbg !868
  %771 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %805, i64 %764, !dbg !869
  %772 = load %struct.residue_t*, %struct.residue_t** %771, align 8, !dbg !869, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %772, metadata !785, metadata !DIExpression()) #13, !dbg !858
  %773 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %772, i64 0, i32 6, !dbg !870
  %774 = load i32, i32* %773, align 8, !dbg !871, !tbaa !318
  %775 = or i32 %774, 1, !dbg !871
  store i32 %775, i32* %773, align 8, !dbg !871, !tbaa !318
  call void @llvm.dbg.value(metadata i64 %770, metadata !782, metadata !DIExpression()) #13, !dbg !858
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !858
  %776 = add nuw nsw i64 %756, 4, !dbg !868
  %777 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %805, i64 %770, !dbg !869
  %778 = load %struct.residue_t*, %struct.residue_t** %777, align 8, !dbg !869, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %778, metadata !785, metadata !DIExpression()) #13, !dbg !858
  %779 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %778, i64 0, i32 6, !dbg !870
  %780 = load i32, i32* %779, align 8, !dbg !871, !tbaa !318
  %781 = or i32 %780, 1, !dbg !871
  store i32 %781, i32* %779, align 8, !dbg !871, !tbaa !318
  call void @llvm.dbg.value(metadata i64 %776, metadata !782, metadata !DIExpression()) #13, !dbg !858
  %782 = add i64 %757, -4, !dbg !867
  %783 = icmp eq i64 %782, 0, !dbg !867
  br i1 %783, label %784, label %755, !dbg !867, !llvm.loop !872

784:                                              ; preds = %755, %802
  %785 = phi i64 [ 0, %802 ], [ %776, %755 ]
  %786 = icmp eq i64 %807, 0, !dbg !867
  br i1 %786, label %798, label %787, !dbg !867

787:                                              ; preds = %784, %787
  %788 = phi i64 [ %790, %787 ], [ %785, %784 ]
  %789 = phi i64 [ %796, %787 ], [ %807, %784 ]
  call void @llvm.dbg.value(metadata i64 %788, metadata !782, metadata !DIExpression()) #13, !dbg !858
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !785, metadata !DIExpression()) #13, !dbg !858
  %790 = add nuw nsw i64 %788, 1, !dbg !868
  %791 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %805, i64 %788, !dbg !869
  %792 = load %struct.residue_t*, %struct.residue_t** %791, align 8, !dbg !869, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %792, metadata !785, metadata !DIExpression()) #13, !dbg !858
  %793 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %792, i64 0, i32 6, !dbg !870
  %794 = load i32, i32* %793, align 8, !dbg !871, !tbaa !318
  %795 = or i32 %794, 1, !dbg !871
  store i32 %795, i32* %793, align 8, !dbg !871, !tbaa !318
  call void @llvm.dbg.value(metadata i64 %790, metadata !782, metadata !DIExpression()) #13, !dbg !858
  %796 = add i64 %789, -1, !dbg !867
  %797 = icmp eq i64 %796, 0, !dbg !867
  br i1 %797, label %798, label %787, !dbg !867, !llvm.loop !874

798:                                              ; preds = %784, %787, %751, %745
  %799 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %746, i64 0, i32 4, !dbg !875
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !784, metadata !DIExpression()) #13, !dbg !858
  %800 = load %struct.strand_t*, %struct.strand_t** %799, align 8, !dbg !860, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %800, metadata !784, metadata !DIExpression()) #13, !dbg !858
  %801 = icmp eq %struct.strand_t* %800, null, !dbg !861
  br i1 %801, label %811, label %745, !dbg !861, !llvm.loop !876

802:                                              ; preds = %751
  %803 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %746, i64 0, i32 7, !dbg !878
  %804 = zext i32 %753 to i64, !dbg !867
  %805 = load %struct.residue_t**, %struct.residue_t*** %803, align 8, !dbg !878, !tbaa !314
  %806 = add nsw i64 %804, -1, !dbg !867
  %807 = and i64 %804, 3, !dbg !867
  %808 = icmp ult i64 %806, 3, !dbg !867
  br i1 %808, label %784, label %809, !dbg !867

809:                                              ; preds = %802
  %810 = sub nsw i64 %804, %807, !dbg !867
  br label %755, !dbg !867

811:                                              ; preds = %739, %798, %742, %615
  %812 = load i8*, i8** @apart, align 8, !dbg !879, !tbaa !291
  %813 = icmp eq i8* %812, null, !dbg !879
  br i1 %813, label %836, label %814, !dbg !881

814:                                              ; preds = %811
  %815 = tail call i8* @strtok(i8* nonnull %812, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !882
  call void @llvm.dbg.value(metadata i8* %815, metadata !532, metadata !DIExpression()) #13, !dbg !526
  call void @llvm.dbg.value(metadata i32* %3, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  call void @llvm.dbg.value(metadata i32* %4, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  %816 = call fastcc i32 @is_pattern(i8* %815, i32* nonnull %3, i32* nonnull %4) #13, !dbg !884
  %817 = icmp eq i32 %816, 0, !dbg !884
  br i1 %817, label %819, label %818, !dbg !886

818:                                              ; preds = %814
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* %815) #13, !dbg !887
  br label %822, !dbg !887

819:                                              ; preds = %814
  %820 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !888, !tbaa !291
  %821 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %820) #14, !dbg !890
  br label %822

822:                                              ; preds = %819, %818
  %823 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !891
  call void @llvm.dbg.value(metadata i8* %823, metadata !532, metadata !DIExpression()) #13, !dbg !526
  %824 = icmp eq i8* %823, null, !dbg !892
  br i1 %824, label %837, label %825, !dbg !892

825:                                              ; preds = %822, %833
  %826 = phi i8* [ %834, %833 ], [ %823, %822 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !533, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  call void @llvm.dbg.value(metadata i32* %4, metadata !534, metadata !DIExpression(DW_OP_deref)) #13, !dbg !526
  %827 = call fastcc i32 @is_pattern(i8* nonnull %826, i32* nonnull %3, i32* nonnull %4) #13, !dbg !893
  %828 = icmp eq i32 %827, 0, !dbg !893
  br i1 %828, label %830, label %829, !dbg !896

829:                                              ; preds = %825
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* nonnull %826) #13, !dbg !897
  br label %833, !dbg !897

830:                                              ; preds = %825
  %831 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !898, !tbaa !291
  %832 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %831) #14, !dbg !900
  br label %833

833:                                              ; preds = %830, %829
  %834 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !891
  call void @llvm.dbg.value(metadata i8* %834, metadata !532, metadata !DIExpression()) #13, !dbg !526
  %835 = icmp eq i8* %834, null, !dbg !892
  br i1 %835, label %837, label %825, !dbg !892, !llvm.loop !901

836:                                              ; preds = %811
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !903
  br label %837

837:                                              ; preds = %833, %822, %836
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %227) #13, !dbg !904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %226) #13, !dbg !904
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !905, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !910, metadata !DIExpression()), !dbg !913
  %838 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !915, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %838, metadata !910, metadata !DIExpression()), !dbg !913
  %839 = icmp eq %struct.strand_t* %838, null, !dbg !917
  br i1 %839, label %907, label %840, !dbg !917

840:                                              ; preds = %837, %903
  %841 = phi %struct.strand_t* [ %905, %903 ], [ %838, %837 ]
  %842 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %841, i64 0, i32 2, !dbg !918
  %843 = load i32, i32* %842, align 4, !dbg !918, !tbaa !300
  %844 = shl i32 %843, 7, !dbg !921
  %845 = and i32 %844, 128, !dbg !921
  %846 = or i32 %845, %843, !dbg !922
  store i32 %846, i32* %842, align 4, !dbg !922, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !909, metadata !DIExpression()), !dbg !913
  %847 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %841, i64 0, i32 5, !dbg !923
  %848 = load i32, i32* %847, align 8, !dbg !923, !tbaa !309
  %849 = icmp sgt i32 %848, 0, !dbg !926
  br i1 %849, label %850, label %903, !dbg !927

850:                                              ; preds = %840
  %851 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %841, i64 0, i32 7, !dbg !928
  %852 = load %struct.residue_t**, %struct.residue_t*** %851, align 8, !dbg !928, !tbaa !314
  %853 = zext i32 %848 to i64, !dbg !927
  br label %854, !dbg !927

854:                                              ; preds = %900, %850
  %855 = phi i64 [ 0, %850 ], [ %901, %900 ]
  call void @llvm.dbg.value(metadata i64 %855, metadata !909, metadata !DIExpression()), !dbg !913
  %856 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %852, i64 %855, !dbg !930
  %857 = load %struct.residue_t*, %struct.residue_t** %856, align 8, !dbg !930, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %857, metadata !911, metadata !DIExpression()), !dbg !913
  %858 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %857, i64 0, i32 6, !dbg !931
  %859 = load i32, i32* %858, align 8, !dbg !931, !tbaa !318
  %860 = shl i32 %859, 7, !dbg !932
  %861 = and i32 %860, 128, !dbg !932
  %862 = or i32 %861, %859, !dbg !933
  store i32 %862, i32* %858, align 8, !dbg !933, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !908, metadata !DIExpression()), !dbg !913
  %863 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %857, i64 0, i32 15, !dbg !934
  %864 = load i32, i32* %863, align 8, !dbg !934, !tbaa !326
  %865 = icmp sgt i32 %864, 0, !dbg !937
  br i1 %865, label %866, label %900, !dbg !938

866:                                              ; preds = %854
  %867 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %857, i64 0, i32 17, !dbg !939
  %868 = load %struct.atom_t*, %struct.atom_t** %867, align 8, !dbg !939, !tbaa !331
  %869 = zext i32 %864 to i64, !dbg !938
  %870 = and i64 %869, 1, !dbg !938
  %871 = icmp eq i32 %864, 1, !dbg !938
  br i1 %871, label %891, label %872, !dbg !938

872:                                              ; preds = %866
  %873 = sub nsw i64 %869, %870, !dbg !938
  br label %874, !dbg !938

874:                                              ; preds = %874, %872
  %875 = phi i64 [ 0, %872 ], [ %888, %874 ]
  %876 = phi i64 [ %873, %872 ], [ %889, %874 ]
  call void @llvm.dbg.value(metadata i64 %875, metadata !908, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !912, metadata !DIExpression()), !dbg !913
  %877 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %868, i64 %875, i32 2, !dbg !941
  %878 = load i32, i32* %877, align 8, !dbg !941, !tbaa !334
  %879 = shl i32 %878, 7, !dbg !942
  %880 = and i32 %879, 128, !dbg !942
  %881 = or i32 %880, %878, !dbg !943
  store i32 %881, i32* %877, align 8, !dbg !943, !tbaa !334
  %882 = or i64 %875, 1, !dbg !944
  call void @llvm.dbg.value(metadata i64 %882, metadata !908, metadata !DIExpression()), !dbg !913
  %883 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %868, i64 %882, i32 2, !dbg !941
  %884 = load i32, i32* %883, align 8, !dbg !941, !tbaa !334
  %885 = shl i32 %884, 7, !dbg !942
  %886 = and i32 %885, 128, !dbg !942
  %887 = or i32 %886, %884, !dbg !943
  store i32 %887, i32* %883, align 8, !dbg !943, !tbaa !334
  %888 = add nuw nsw i64 %875, 2, !dbg !944
  call void @llvm.dbg.value(metadata i64 %888, metadata !908, metadata !DIExpression()), !dbg !913
  %889 = add i64 %876, -2, !dbg !938
  %890 = icmp eq i64 %889, 0, !dbg !938
  br i1 %890, label %891, label %874, !dbg !938, !llvm.loop !945

891:                                              ; preds = %874, %866
  %892 = phi i64 [ 0, %866 ], [ %888, %874 ]
  %893 = icmp eq i64 %870, 0, !dbg !938
  br i1 %893, label %900, label %894, !dbg !938

894:                                              ; preds = %891
  call void @llvm.dbg.value(metadata i64 %892, metadata !908, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !912, metadata !DIExpression()), !dbg !913
  %895 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %868, i64 %892, i32 2, !dbg !941
  %896 = load i32, i32* %895, align 8, !dbg !941, !tbaa !334
  %897 = shl i32 %896, 7, !dbg !942
  %898 = and i32 %897, 128, !dbg !942
  %899 = or i32 %898, %896, !dbg !943
  store i32 %899, i32* %895, align 8, !dbg !943, !tbaa !334
  call void @llvm.dbg.value(metadata i64 %892, metadata !908, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !913
  br label %900, !dbg !947

900:                                              ; preds = %894, %891, %854
  %901 = add nuw nsw i64 %855, 1, !dbg !947
  call void @llvm.dbg.value(metadata i64 %901, metadata !909, metadata !DIExpression()), !dbg !913
  %902 = icmp eq i64 %901, %853, !dbg !926
  br i1 %902, label %903, label %854, !dbg !927, !llvm.loop !948

903:                                              ; preds = %900, %840
  %904 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %841, i64 0, i32 4, !dbg !950
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !910, metadata !DIExpression()), !dbg !913
  %905 = load %struct.strand_t*, %struct.strand_t** %904, align 8, !dbg !915, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %905, metadata !910, metadata !DIExpression()), !dbg !913
  %906 = icmp eq %struct.strand_t* %905, null, !dbg !917
  br i1 %906, label %907, label %840, !dbg !917, !llvm.loop !951

907:                                              ; preds = %903, %837
  call void @llvm.dbg.value(metadata i8* %241, metadata !381, metadata !DIExpression()), !dbg !384
  %908 = icmp eq i8* %241, null, !dbg !953
  br i1 %908, label %911, label %909, !dbg !955

909:                                              ; preds = %907
  %910 = tail call i8* @strchr(i8* nonnull %241, i32 124) #12, !dbg !956
  call void @llvm.dbg.value(metadata i8* %910, metadata !382, metadata !DIExpression()), !dbg !384
  br label %911, !dbg !957

911:                                              ; preds = %907, %909
  %912 = phi i8* [ %910, %909 ], [ null, %907 ], !dbg !958
  call void @llvm.dbg.value(metadata i8* %912, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !486, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !489, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata %struct.strand_t* %838, metadata !489, metadata !DIExpression()), !dbg !959
  br i1 %839, label %984, label %913, !dbg !961

913:                                              ; preds = %911, %980
  %914 = phi %struct.strand_t* [ %982, %980 ], [ %838, %911 ]
  %915 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %914, i64 0, i32 2, !dbg !962
  %916 = load i32, i32* %915, align 4, !dbg !963, !tbaa !300
  %917 = and i32 %916, -2, !dbg !963
  store i32 %917, i32* %915, align 4, !dbg !963, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !488, metadata !DIExpression()), !dbg !959
  %918 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %914, i64 0, i32 5, !dbg !964
  %919 = load i32, i32* %918, align 8, !dbg !964, !tbaa !309
  %920 = icmp sgt i32 %919, 0, !dbg !965
  br i1 %920, label %921, label %980, !dbg !966

921:                                              ; preds = %913
  %922 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %914, i64 0, i32 7, !dbg !967
  %923 = load %struct.residue_t**, %struct.residue_t*** %922, align 8, !dbg !967, !tbaa !314
  %924 = zext i32 %919 to i64, !dbg !966
  br label %925, !dbg !966

925:                                              ; preds = %977, %921
  %926 = phi i64 [ 0, %921 ], [ %978, %977 ]
  call void @llvm.dbg.value(metadata i64 %926, metadata !488, metadata !DIExpression()), !dbg !959
  %927 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %923, i64 %926, !dbg !968
  %928 = load %struct.residue_t*, %struct.residue_t** %927, align 8, !dbg !968, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %928, metadata !490, metadata !DIExpression()), !dbg !959
  %929 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %928, i64 0, i32 6, !dbg !969
  %930 = load i32, i32* %929, align 8, !dbg !970, !tbaa !318
  %931 = and i32 %930, -2, !dbg !970
  store i32 %931, i32* %929, align 8, !dbg !970, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !487, metadata !DIExpression()), !dbg !959
  %932 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %928, i64 0, i32 15, !dbg !971
  %933 = load i32, i32* %932, align 8, !dbg !971, !tbaa !326
  %934 = icmp sgt i32 %933, 0, !dbg !972
  br i1 %934, label %935, label %977, !dbg !973

935:                                              ; preds = %925
  %936 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %928, i64 0, i32 17, !dbg !974
  %937 = load %struct.atom_t*, %struct.atom_t** %936, align 8, !dbg !974, !tbaa !331
  %938 = zext i32 %933 to i64, !dbg !973
  %939 = add nsw i64 %938, -1, !dbg !973
  %940 = and i64 %938, 3, !dbg !973
  %941 = icmp ult i64 %939, 3, !dbg !973
  br i1 %941, label %965, label %942, !dbg !973

942:                                              ; preds = %935
  %943 = sub nsw i64 %938, %940, !dbg !973
  br label %944, !dbg !973

944:                                              ; preds = %944, %942
  %945 = phi i64 [ 0, %942 ], [ %962, %944 ]
  %946 = phi i64 [ %943, %942 ], [ %963, %944 ]
  call void @llvm.dbg.value(metadata i64 %945, metadata !487, metadata !DIExpression()), !dbg !959
  %947 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %937, i64 %945, i32 2, !dbg !975
  %948 = load i32, i32* %947, align 8, !dbg !976, !tbaa !334
  %949 = and i32 %948, -2, !dbg !976
  store i32 %949, i32* %947, align 8, !dbg !976, !tbaa !334
  %950 = or i64 %945, 1, !dbg !977
  call void @llvm.dbg.value(metadata i64 %950, metadata !487, metadata !DIExpression()), !dbg !959
  %951 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %937, i64 %950, i32 2, !dbg !975
  %952 = load i32, i32* %951, align 8, !dbg !976, !tbaa !334
  %953 = and i32 %952, -2, !dbg !976
  store i32 %953, i32* %951, align 8, !dbg !976, !tbaa !334
  %954 = or i64 %945, 2, !dbg !977
  call void @llvm.dbg.value(metadata i64 %954, metadata !487, metadata !DIExpression()), !dbg !959
  %955 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %937, i64 %954, i32 2, !dbg !975
  %956 = load i32, i32* %955, align 8, !dbg !976, !tbaa !334
  %957 = and i32 %956, -2, !dbg !976
  store i32 %957, i32* %955, align 8, !dbg !976, !tbaa !334
  %958 = or i64 %945, 3, !dbg !977
  call void @llvm.dbg.value(metadata i64 %958, metadata !487, metadata !DIExpression()), !dbg !959
  %959 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %937, i64 %958, i32 2, !dbg !975
  %960 = load i32, i32* %959, align 8, !dbg !976, !tbaa !334
  %961 = and i32 %960, -2, !dbg !976
  store i32 %961, i32* %959, align 8, !dbg !976, !tbaa !334
  %962 = add nuw nsw i64 %945, 4, !dbg !977
  call void @llvm.dbg.value(metadata i64 %962, metadata !487, metadata !DIExpression()), !dbg !959
  %963 = add i64 %946, -4, !dbg !973
  %964 = icmp eq i64 %963, 0, !dbg !973
  br i1 %964, label %965, label %944, !dbg !973, !llvm.loop !978

965:                                              ; preds = %944, %935
  %966 = phi i64 [ 0, %935 ], [ %962, %944 ]
  %967 = icmp eq i64 %940, 0, !dbg !973
  br i1 %967, label %977, label %968, !dbg !973

968:                                              ; preds = %965, %968
  %969 = phi i64 [ %974, %968 ], [ %966, %965 ]
  %970 = phi i64 [ %975, %968 ], [ %940, %965 ]
  call void @llvm.dbg.value(metadata i64 %969, metadata !487, metadata !DIExpression()), !dbg !959
  %971 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %937, i64 %969, i32 2, !dbg !975
  %972 = load i32, i32* %971, align 8, !dbg !976, !tbaa !334
  %973 = and i32 %972, -2, !dbg !976
  store i32 %973, i32* %971, align 8, !dbg !976, !tbaa !334
  %974 = add nuw nsw i64 %969, 1, !dbg !977
  call void @llvm.dbg.value(metadata i64 %974, metadata !487, metadata !DIExpression()), !dbg !959
  %975 = add i64 %970, -1, !dbg !973
  %976 = icmp eq i64 %975, 0, !dbg !973
  br i1 %976, label %977, label %968, !dbg !973, !llvm.loop !980

977:                                              ; preds = %965, %968, %925
  %978 = add nuw nsw i64 %926, 1, !dbg !981
  call void @llvm.dbg.value(metadata i64 %978, metadata !488, metadata !DIExpression()), !dbg !959
  %979 = icmp eq i64 %978, %924, !dbg !965
  br i1 %979, label %980, label %925, !dbg !966, !llvm.loop !982

980:                                              ; preds = %977, %913
  %981 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %914, i64 0, i32 4, !dbg !984
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !489, metadata !DIExpression()), !dbg !959
  %982 = load %struct.strand_t*, %struct.strand_t** %981, align 8, !dbg !985, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %982, metadata !489, metadata !DIExpression()), !dbg !959
  %983 = icmp eq %struct.strand_t* %982, null, !dbg !961
  br i1 %983, label %984, label %913, !dbg !961, !llvm.loop !986

984:                                              ; preds = %980, %911
  call void @llvm.dbg.value(metadata i8* %912, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8* %241, metadata !381, metadata !DIExpression()), !dbg !384
  br i1 %908, label %985, label %229, !dbg !552, !llvm.loop !988

985:                                              ; preds = %984
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !990, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !995, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata %struct.strand_t* %838, metadata !995, metadata !DIExpression()), !dbg !998
  %986 = icmp eq %struct.strand_t* %838, null, !dbg !1000
  br i1 %986, label %1054, label %987, !dbg !1000

987:                                              ; preds = %985, %1050
  %988 = phi %struct.strand_t* [ %1052, %1050 ], [ %838, %985 ]
  %989 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %988, i64 0, i32 2, !dbg !1002
  %990 = load i32, i32* %989, align 4, !dbg !1002, !tbaa !300
  %991 = lshr i32 %990, 7, !dbg !1005
  %992 = and i32 %991, 1, !dbg !1005
  %993 = or i32 %992, %990, !dbg !1006
  store i32 %993, i32* %989, align 4, !dbg !1006, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !994, metadata !DIExpression()), !dbg !998
  %994 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %988, i64 0, i32 5, !dbg !1007
  %995 = load i32, i32* %994, align 8, !dbg !1007, !tbaa !309
  %996 = icmp sgt i32 %995, 0, !dbg !1010
  br i1 %996, label %997, label %1050, !dbg !1011

997:                                              ; preds = %987
  %998 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %988, i64 0, i32 7, !dbg !1012
  %999 = load %struct.residue_t**, %struct.residue_t*** %998, align 8, !dbg !1012, !tbaa !314
  %1000 = zext i32 %995 to i64, !dbg !1011
  br label %1001, !dbg !1011

1001:                                             ; preds = %1047, %997
  %1002 = phi i64 [ 0, %997 ], [ %1048, %1047 ]
  call void @llvm.dbg.value(metadata i64 %1002, metadata !994, metadata !DIExpression()), !dbg !998
  %1003 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %999, i64 %1002, !dbg !1014
  %1004 = load %struct.residue_t*, %struct.residue_t** %1003, align 8, !dbg !1014, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %1004, metadata !996, metadata !DIExpression()), !dbg !998
  %1005 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1004, i64 0, i32 6, !dbg !1015
  %1006 = load i32, i32* %1005, align 8, !dbg !1015, !tbaa !318
  %1007 = lshr i32 %1006, 7, !dbg !1016
  %1008 = and i32 %1007, 1, !dbg !1016
  %1009 = or i32 %1008, %1006, !dbg !1017
  store i32 %1009, i32* %1005, align 8, !dbg !1017, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !993, metadata !DIExpression()), !dbg !998
  %1010 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1004, i64 0, i32 15, !dbg !1018
  %1011 = load i32, i32* %1010, align 8, !dbg !1018, !tbaa !326
  %1012 = icmp sgt i32 %1011, 0, !dbg !1021
  br i1 %1012, label %1013, label %1047, !dbg !1022

1013:                                             ; preds = %1001
  %1014 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1004, i64 0, i32 17, !dbg !1023
  %1015 = load %struct.atom_t*, %struct.atom_t** %1014, align 8, !dbg !1023, !tbaa !331
  %1016 = zext i32 %1011 to i64, !dbg !1022
  %1017 = and i64 %1016, 1, !dbg !1022
  %1018 = icmp eq i32 %1011, 1, !dbg !1022
  br i1 %1018, label %1038, label %1019, !dbg !1022

1019:                                             ; preds = %1013
  %1020 = sub nsw i64 %1016, %1017, !dbg !1022
  br label %1021, !dbg !1022

1021:                                             ; preds = %1021, %1019
  %1022 = phi i64 [ 0, %1019 ], [ %1035, %1021 ]
  %1023 = phi i64 [ %1020, %1019 ], [ %1036, %1021 ]
  call void @llvm.dbg.value(metadata i64 %1022, metadata !993, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !997, metadata !DIExpression()), !dbg !998
  %1024 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1015, i64 %1022, i32 2, !dbg !1025
  %1025 = load i32, i32* %1024, align 8, !dbg !1025, !tbaa !334
  %1026 = lshr i32 %1025, 7, !dbg !1026
  %1027 = and i32 %1026, 1, !dbg !1026
  %1028 = or i32 %1027, %1025, !dbg !1027
  store i32 %1028, i32* %1024, align 8, !dbg !1027, !tbaa !334
  %1029 = or i64 %1022, 1, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %1029, metadata !993, metadata !DIExpression()), !dbg !998
  %1030 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1015, i64 %1029, i32 2, !dbg !1025
  %1031 = load i32, i32* %1030, align 8, !dbg !1025, !tbaa !334
  %1032 = lshr i32 %1031, 7, !dbg !1026
  %1033 = and i32 %1032, 1, !dbg !1026
  %1034 = or i32 %1033, %1031, !dbg !1027
  store i32 %1034, i32* %1030, align 8, !dbg !1027, !tbaa !334
  %1035 = add nuw nsw i64 %1022, 2, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %1035, metadata !993, metadata !DIExpression()), !dbg !998
  %1036 = add i64 %1023, -2, !dbg !1022
  %1037 = icmp eq i64 %1036, 0, !dbg !1022
  br i1 %1037, label %1038, label %1021, !dbg !1022, !llvm.loop !1029

1038:                                             ; preds = %1021, %1013
  %1039 = phi i64 [ 0, %1013 ], [ %1035, %1021 ]
  %1040 = icmp eq i64 %1017, 0, !dbg !1022
  br i1 %1040, label %1047, label %1041, !dbg !1022

1041:                                             ; preds = %1038
  call void @llvm.dbg.value(metadata i64 %1039, metadata !993, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !997, metadata !DIExpression()), !dbg !998
  %1042 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1015, i64 %1039, i32 2, !dbg !1025
  %1043 = load i32, i32* %1042, align 8, !dbg !1025, !tbaa !334
  %1044 = lshr i32 %1043, 7, !dbg !1026
  %1045 = and i32 %1044, 1, !dbg !1026
  %1046 = or i32 %1045, %1043, !dbg !1027
  store i32 %1046, i32* %1042, align 8, !dbg !1027, !tbaa !334
  call void @llvm.dbg.value(metadata i64 %1039, metadata !993, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !998
  br label %1047, !dbg !1031

1047:                                             ; preds = %1041, %1038, %1001
  %1048 = add nuw nsw i64 %1002, 1, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %1048, metadata !994, metadata !DIExpression()), !dbg !998
  %1049 = icmp eq i64 %1048, %1000, !dbg !1010
  br i1 %1049, label %1050, label %1001, !dbg !1011, !llvm.loop !1032

1050:                                             ; preds = %1047, %987
  %1051 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %988, i64 0, i32 4, !dbg !1034
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !995, metadata !DIExpression()), !dbg !998
  %1052 = load %struct.strand_t*, %struct.strand_t** %1051, align 8, !dbg !1035, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %1052, metadata !995, metadata !DIExpression()), !dbg !998
  %1053 = icmp eq %struct.strand_t* %1052, null, !dbg !1000
  br i1 %1053, label %1054, label %987, !dbg !1000, !llvm.loop !1036

1054:                                             ; preds = %1050, %77, %985, %9, %245
  %1055 = phi i32 [ 1, %245 ], [ 0, %9 ], [ 0, %985 ], [ 0, %77 ], [ 0, %1050 ], !dbg !384
  ret i32 %1055, !dbg !1038

1056:                                             ; preds = %337
  %1057 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %340, i64 0, i32 2, !dbg !689
  %1058 = load i32, i32* %1057, align 4, !dbg !690, !tbaa !300
  %1059 = or i32 %1058, 1, !dbg !690
  store i32 %1059, i32* %1057, align 4, !dbg !690, !tbaa !300
  br label %1060, !dbg !691

1060:                                             ; preds = %1056, %337
  %1061 = add nuw i32 %327, 2, !dbg !692
  call void @llvm.dbg.value(metadata i32 %1061, metadata !546, metadata !DIExpression()) #13, !dbg !538
  %1062 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %340, i64 0, i32 4, !dbg !693
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !538
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !538
  %1063 = add i32 %328, -2, !dbg !682
  %1064 = icmp eq i32 %1063, 0, !dbg !682
  br i1 %1064, label %344, label %325, !dbg !682, !llvm.loop !1039

1065:                                             ; preds = %421
  %1066 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %424, i64 0, i32 2, !dbg !748
  %1067 = load i32, i32* %1066, align 4, !dbg !749, !tbaa !300
  %1068 = or i32 %1067, 1, !dbg !749
  store i32 %1068, i32* %1066, align 4, !dbg !749, !tbaa !300
  br label %1069, !dbg !750

1069:                                             ; preds = %1065, %421
  %1070 = add nuw i32 %411, 2, !dbg !751
  call void @llvm.dbg.value(metadata i32 %1070, metadata !546, metadata !DIExpression()) #13, !dbg !739
  %1071 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %424, i64 0, i32 4, !dbg !752
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !739
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !547, metadata !DIExpression()) #13, !dbg !739
  %1072 = add i32 %412, -2, !dbg !743
  %1073 = icmp eq i32 %1072, 0, !dbg !743
  br i1 %1073, label %428, label %409, !dbg !743, !llvm.loop !1041

1074:                                             ; preds = %591
  %1075 = load %struct.residue_t**, %struct.residue_t*** %571, align 8, !dbg !809, !tbaa !314
  %1076 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %1075, i64 %580, !dbg !810
  %1077 = load %struct.residue_t*, %struct.residue_t** %1076, align 8, !dbg !810, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %1077, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %1078 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1077, i64 0, i32 6, !dbg !811
  %1079 = load i32, i32* %1078, align 8, !dbg !812, !tbaa !318
  %1080 = or i32 %1079, 1, !dbg !812
  store i32 %1080, i32* %1078, align 8, !dbg !812, !tbaa !318
  br label %1081, !dbg !813

1081:                                             ; preds = %1074, %591
  call void @llvm.dbg.value(metadata i64 %592, metadata !782, metadata !DIExpression()) #13, !dbg !786
  %1082 = add i64 %579, -2, !dbg !803
  %1083 = icmp eq i64 %1082, 0, !dbg !803
  br i1 %1083, label %596, label %577, !dbg !803, !llvm.loop !1043

1084:                                             ; preds = %533
  %1085 = load %struct.residue_t**, %struct.residue_t*** %554, align 8, !dbg !809, !tbaa !314
  %1086 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %1085, i64 %524, !dbg !810
  %1087 = load %struct.residue_t*, %struct.residue_t** %1086, align 8, !dbg !810, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %1087, metadata !785, metadata !DIExpression()) #13, !dbg !786
  %1088 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1087, i64 0, i32 6, !dbg !811
  %1089 = load i32, i32* %1088, align 8, !dbg !812, !tbaa !318
  %1090 = or i32 %1089, 1, !dbg !812
  store i32 %1090, i32* %1088, align 8, !dbg !812, !tbaa !318
  br label %1091, !dbg !813

1091:                                             ; preds = %1084, %533
  call void @llvm.dbg.value(metadata i64 %534, metadata !782, metadata !DIExpression()) #13, !dbg !786
  %1092 = add i64 %523, -2, !dbg !803
  %1093 = icmp eq i64 %1092, 0, !dbg !803
  br i1 %1093, label %536, label %521, !dbg !803, !llvm.loop !1045

1094:                                             ; preds = %715
  %1095 = load %struct.residue_t**, %struct.residue_t*** %695, align 8, !dbg !844, !tbaa !314
  %1096 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %1095, i64 %704, !dbg !845
  %1097 = load %struct.residue_t*, %struct.residue_t** %1096, align 8, !dbg !845, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %1097, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %1098 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1097, i64 0, i32 6, !dbg !846
  %1099 = load i32, i32* %1098, align 8, !dbg !847, !tbaa !318
  %1100 = or i32 %1099, 1, !dbg !847
  store i32 %1100, i32* %1098, align 8, !dbg !847, !tbaa !318
  br label %1101, !dbg !848

1101:                                             ; preds = %1094, %715
  call void @llvm.dbg.value(metadata i64 %716, metadata !782, metadata !DIExpression()) #13, !dbg !830
  %1102 = add i64 %703, -2, !dbg !840
  %1103 = icmp eq i64 %1102, 0, !dbg !840
  br i1 %1103, label %720, label %701, !dbg !840, !llvm.loop !1046

1104:                                             ; preds = %657
  %1105 = load %struct.residue_t**, %struct.residue_t*** %678, align 8, !dbg !844, !tbaa !314
  %1106 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %1105, i64 %648, !dbg !845
  %1107 = load %struct.residue_t*, %struct.residue_t** %1106, align 8, !dbg !845, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %1107, metadata !785, metadata !DIExpression()) #13, !dbg !830
  %1108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1107, i64 0, i32 6, !dbg !846
  %1109 = load i32, i32* %1108, align 8, !dbg !847, !tbaa !318
  %1110 = or i32 %1109, 1, !dbg !847
  store i32 %1110, i32* %1108, align 8, !dbg !847, !tbaa !318
  br label %1111, !dbg !848

1111:                                             ; preds = %1104, %657
  call void @llvm.dbg.value(metadata i64 %658, metadata !782, metadata !DIExpression()) #13, !dbg !830
  %1112 = add i64 %647, -2, !dbg !840
  %1113 = icmp eq i64 %1112, 0, !dbg !840
  br i1 %1113, label %660, label %645, !dbg !840, !llvm.loop !1048
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
define dso_local i32 @atom_in_aexpr(%struct.atom_t* nocapture readonly %0, i8* %1) local_unnamed_addr #0 !dbg !1049 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1053, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %1, metadata !1054, metadata !DIExpression()), !dbg !1058
  %5 = icmp eq i8* %1, null, !dbg !1059
  br i1 %5, label %362, label %6, !dbg !1061

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %1, metadata !1055, metadata !DIExpression()), !dbg !1058
  %7 = tail call i8* @strchr(i8* nonnull %1, i32 124) #12, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %7, metadata !1056, metadata !DIExpression()), !dbg !1058
  %8 = bitcast i32* %3 to i8*, !dbg !1064
  %9 = bitcast i32* %4 to i8*, !dbg !1064
  %10 = getelementptr %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !1079
  %11 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 0, !dbg !1085
  br label %12, !dbg !1096

12:                                               ; preds = %360, %6
  %13 = phi i8* [ %7, %6 ], [ %361, %360 ]
  %14 = phi i8* [ %1, %6 ], [ %24, %360 ]
  call void @llvm.dbg.value(metadata i8* %13, metadata !1056, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %14, metadata !1055, metadata !DIExpression()), !dbg !1058
  %15 = icmp eq i8* %13, null, !dbg !1097
  br i1 %15, label %21, label %16, !dbg !1099

16:                                               ; preds = %12
  %17 = ptrtoint i8* %13 to i64, !dbg !1100
  %18 = ptrtoint i8* %14 to i64, !dbg !1100
  %19 = sub i64 %17, %18, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %19, metadata !1057, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1058
  %20 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1102
  call void @llvm.dbg.value(metadata i8* %20, metadata !1056, metadata !DIExpression()), !dbg !1058
  br label %23, !dbg !1103

21:                                               ; preds = %12
  %22 = tail call i64 @strlen(i8* nonnull %14) #12, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %22, metadata !1057, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1058
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i8* [ %20, %16 ], [ null, %21 ], !dbg !1105
  %25 = phi i64 [ %19, %16 ], [ %22, %21 ]
  %26 = trunc i64 %25 to i32, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %26, metadata !1057, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %24, metadata !1056, metadata !DIExpression()), !dbg !1058
  %27 = icmp sgt i32 %26, 999, !dbg !1107
  br i1 %27, label %28, label %31, !dbg !1109

28:                                               ; preds = %23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1110, !tbaa !291
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %29) #11, !dbg !1112
  br label %362, !dbg !1113

31:                                               ; preds = %23
  %32 = shl i64 %25, 32, !dbg !1114
  %33 = ashr exact i64 %32, 32, !dbg !1114
  %34 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* nonnull %14, i64 %33) #13, !dbg !1115
  %35 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %33, !dbg !1116
  store i8 0, i8* %35, align 1, !dbg !1117, !tbaa !574
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1067, metadata !DIExpression()) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1068, metadata !DIExpression()) #13, !dbg !1064
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #13, !dbg !1118
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #13, !dbg !1118
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1069, metadata !DIExpression()) #13, !dbg !1064
  %36 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !1119, !tbaa !574
  %37 = icmp eq i8 %36, 58, !dbg !1121
  br i1 %37, label %38, label %39, !dbg !1122

38:                                               ; preds = %31
  store i8* null, i8** @spart, align 8, !dbg !1123, !tbaa !291
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), metadata !1069, metadata !DIExpression()) #13, !dbg !1064
  br label %44, !dbg !1125

39:                                               ; preds = %31
  %40 = tail call i8* @strtok(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !1126
  store i8* %40, i8** @spart, align 8, !dbg !1128, !tbaa !291
  %41 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %40) #12, !dbg !1129
  %42 = add i64 %41, 1, !dbg !1130
  %43 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %42, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %43, metadata !1069, metadata !DIExpression()) #13, !dbg !1064
  br label %44

44:                                               ; preds = %39, %38
  %45 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), %38 ], [ %43, %39 ], !dbg !1132
  call void @llvm.dbg.value(metadata i8* %45, metadata !1069, metadata !DIExpression()) #13, !dbg !1064
  %46 = load i8, i8* %45, align 1, !dbg !1133, !tbaa !574
  %47 = icmp eq i8 %46, 58, !dbg !1135
  br i1 %47, label %48, label %49, !dbg !1136

48:                                               ; preds = %44
  store i8* null, i8** @rpart, align 8, !dbg !1137, !tbaa !291
  br label %53, !dbg !1139

49:                                               ; preds = %44
  %50 = tail call i8* @strtok(i8* nonnull %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !1140
  store i8* %50, i8** @rpart, align 8, !dbg !1142, !tbaa !291
  %51 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %50) #12, !dbg !1143
  %52 = add i64 %51, 1, !dbg !1144
  call void @llvm.dbg.value(metadata i8* %55, metadata !1069, metadata !DIExpression()) #13, !dbg !1064
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi i64 [ %52, %49 ], [ 1, %48 ]
  %55 = getelementptr inbounds i8, i8* %45, i64 %54, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %55, metadata !1069, metadata !DIExpression()) #13, !dbg !1064
  %56 = tail call i8* @strtok(i8* nonnull %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !1146
  store i8* %56, i8** @apart, align 8, !dbg !1147, !tbaa !291
  %57 = load i8*, i8** @spart, align 8, !dbg !1148, !tbaa !291
  %58 = icmp eq i8* %57, null, !dbg !1148
  br i1 %58, label %179, label %59, !dbg !1149

59:                                               ; preds = %53
  %60 = tail call i8* @strtok(i8* nonnull %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1150
  call void @llvm.dbg.value(metadata i8* %60, metadata !1070, metadata !DIExpression()) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i32* %3, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i32* %4, metadata !1072, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  %61 = call fastcc i32 @is_pattern(i8* %60, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1151
  %62 = icmp eq i32 %61, 0, !dbg !1151
  br i1 %62, label %88, label %63, !dbg !1152

63:                                               ; preds = %59
  %64 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1153, !tbaa !1154
  %65 = getelementptr %struct.residue_t, %struct.residue_t* %64, i64 0, i32 9, !dbg !1153
  %66 = load %struct.strand_t*, %struct.strand_t** %65, align 8, !dbg !1153, !tbaa !1155
  call void @llvm.dbg.value(metadata i8* %60, metadata !1156, metadata !DIExpression()) #13, !dbg !1162
  call void @llvm.dbg.value(metadata %struct.strand_t* %66, metadata !1161, metadata !DIExpression()) #13, !dbg !1162
  call void @llvm.dbg.value(metadata i8* %60, metadata !619, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !624, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !626, metadata !DIExpression()) #13, !dbg !1164
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1166, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %60, metadata !625, metadata !DIExpression()) #13, !dbg !1164
  br label %67, !dbg !1167

67:                                               ; preds = %78, %63
  %68 = phi i8* [ %60, %63 ], [ %80, %78 ], !dbg !1168
  %69 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %63 ], [ %79, %78 ], !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %68, metadata !625, metadata !DIExpression()) #13, !dbg !1164
  %70 = load i8, i8* %68, align 1, !dbg !1169, !tbaa !574
  switch i8 %70, label %76 [
    i8 0, label %81
    i8 42, label %71
    i8 63, label %74
  ], !dbg !1170

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %72, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  store i8 46, i8* %69, align 1, !dbg !1172, !tbaa !574
  %73 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !1173
  call void @llvm.dbg.value(metadata i8* %73, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  store i8 42, i8* %72, align 1, !dbg !1174, !tbaa !574
  br label %78, !dbg !1175

74:                                               ; preds = %67
  %75 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1176
  call void @llvm.dbg.value(metadata i8* %75, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  store i8 46, i8* %69, align 1, !dbg !1177, !tbaa !574
  br label %78, !dbg !1178

76:                                               ; preds = %67
  %77 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %77, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  store i8 %70, i8* %69, align 1, !dbg !1180, !tbaa !574
  br label %78

78:                                               ; preds = %76, %74, %71
  %79 = phi i8* [ %73, %71 ], [ %75, %74 ], [ %77, %76 ], !dbg !1181
  call void @llvm.dbg.value(metadata i8* %79, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  %80 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1182
  call void @llvm.dbg.value(metadata i8* %80, metadata !625, metadata !DIExpression()) #13, !dbg !1164
  br label %67, !dbg !1183, !llvm.loop !1184

81:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  %82 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %82, metadata !626, metadata !DIExpression()) #13, !dbg !1164
  store i8 36, i8* %69, align 1, !dbg !1187, !tbaa !574
  store i8 0, i8* %82, align 1, !dbg !1188, !tbaa !574
  %83 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1189
  %84 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %66, i64 0, i32 0, !dbg !1190
  %85 = load i8*, i8** %84, align 8, !dbg !1190, !tbaa !665
  %86 = tail call i32 @step(i8* %85, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1191
  %87 = icmp eq i32 %86, 0, !dbg !1153
  br i1 %87, label %116, label %179, !dbg !1192

88:                                               ; preds = %59
  %89 = load i32, i32* %3, align 4, !dbg !1193, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %89, metadata !1071, metadata !DIExpression()) #13, !dbg !1064
  %90 = load i32, i32* %4, align 4, !dbg !1195, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %90, metadata !1072, metadata !DIExpression()) #13, !dbg !1064
  %91 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1196, !tbaa !1154
  %92 = getelementptr %struct.residue_t, %struct.residue_t* %91, i64 0, i32 9, !dbg !1196
  %93 = load %struct.strand_t*, %struct.strand_t** %92, align 8, !dbg !1196, !tbaa !1155
  call void @llvm.dbg.value(metadata i32 %89, metadata !1197, metadata !DIExpression()) #13, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %90, metadata !1203, metadata !DIExpression()) #13, !dbg !1209
  call void @llvm.dbg.value(metadata %struct.strand_t* %93, metadata !1206, metadata !DIExpression()) #13, !dbg !1209
  %94 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %93, i64 0, i32 3, !dbg !1211
  %95 = load %struct.molecule_t*, %struct.molecule_t** %94, align 8, !dbg !1211, !tbaa !1212
  call void @llvm.dbg.value(metadata %struct.molecule_t* %95, metadata !1208, metadata !DIExpression()) #13, !dbg !1209
  %96 = icmp eq i32 %90, -1, !dbg !1213
  %97 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %95, i64 0, i32 1, !dbg !1209
  %98 = load i32, i32* %97, align 8, !dbg !1209, !tbaa !677
  %99 = select i1 %96, i32 %98, i32 %90, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %99, metadata !1203, metadata !DIExpression()) #13, !dbg !1209
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1207, metadata !DIExpression()) #13, !dbg !1209
  call void @llvm.dbg.value(metadata i32 1, metadata !1204, metadata !DIExpression()) #13, !dbg !1209
  %100 = icmp slt i32 %98, 1, !dbg !1215
  br i1 %100, label %116, label %101, !dbg !1218

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %95, i64 0, i32 2, !dbg !1219
  br label %103, !dbg !1218

103:                                              ; preds = %112, %101
  %104 = phi %struct.strand_t** [ %114, %112 ], [ %102, %101 ]
  %105 = phi i32 [ %113, %112 ], [ 1, %101 ]
  %106 = load %struct.strand_t*, %struct.strand_t** %104, align 8, !dbg !1220, !tbaa !291
  call void @llvm.dbg.value(metadata i32 %105, metadata !1204, metadata !DIExpression()) #13, !dbg !1209
  %107 = icmp ne %struct.strand_t* %106, %93, !dbg !1221
  %108 = icmp slt i32 %105, %89, !dbg !1224
  %109 = or i1 %108, %107, !dbg !1227
  %110 = icmp sgt i32 %105, %99, !dbg !1228
  %111 = or i1 %110, %109, !dbg !1227
  br i1 %111, label %112, label %179, !dbg !1227

112:                                              ; preds = %103
  %113 = add nuw i32 %105, 1, !dbg !1229
  call void @llvm.dbg.value(metadata i32 %113, metadata !1204, metadata !DIExpression()) #13, !dbg !1209
  %114 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %106, i64 0, i32 4, !dbg !1230
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1207, metadata !DIExpression()) #13, !dbg !1209
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1207, metadata !DIExpression()) #13, !dbg !1209
  %115 = icmp eq i32 %105, %98, !dbg !1215
  br i1 %115, label %116, label %103, !dbg !1218, !llvm.loop !1231

116:                                              ; preds = %112, %88, %81
  %117 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1233
  call void @llvm.dbg.value(metadata i8* %117, metadata !1070, metadata !DIExpression()) #13, !dbg !1064
  %118 = icmp eq i8* %117, null, !dbg !1234
  br i1 %118, label %358, label %119, !dbg !1234

119:                                              ; preds = %116, %176
  %120 = phi i8* [ %177, %176 ], [ %117, %116 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i32* %4, metadata !1072, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  %121 = call fastcc i32 @is_pattern(i8* nonnull %120, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1235
  %122 = icmp eq i32 %121, 0, !dbg !1235
  br i1 %122, label %148, label %123, !dbg !1238

123:                                              ; preds = %119
  %124 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1239, !tbaa !1154
  %125 = getelementptr %struct.residue_t, %struct.residue_t* %124, i64 0, i32 9, !dbg !1239
  %126 = load %struct.strand_t*, %struct.strand_t** %125, align 8, !dbg !1239, !tbaa !1155
  call void @llvm.dbg.value(metadata i8* %120, metadata !1156, metadata !DIExpression()) #13, !dbg !1242
  call void @llvm.dbg.value(metadata %struct.strand_t* %126, metadata !1161, metadata !DIExpression()) #13, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %120, metadata !619, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !624, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !626, metadata !DIExpression()) #13, !dbg !1244
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1246, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %120, metadata !625, metadata !DIExpression()) #13, !dbg !1244
  br label %127, !dbg !1247

127:                                              ; preds = %138, %123
  %128 = phi i8* [ %120, %123 ], [ %140, %138 ], !dbg !1248
  %129 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %123 ], [ %139, %138 ], !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %128, metadata !625, metadata !DIExpression()) #13, !dbg !1244
  %130 = load i8, i8* %128, align 1, !dbg !1249, !tbaa !574
  switch i8 %130, label %136 [
    i8 0, label %141
    i8 42, label %131
    i8 63, label %134
  ], !dbg !1250

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %132, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  store i8 46, i8* %129, align 1, !dbg !1252, !tbaa !574
  %133 = getelementptr inbounds i8, i8* %129, i64 2, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %133, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  store i8 42, i8* %132, align 1, !dbg !1254, !tbaa !574
  br label %138, !dbg !1255

134:                                              ; preds = %127
  %135 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %135, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  store i8 46, i8* %129, align 1, !dbg !1257, !tbaa !574
  br label %138, !dbg !1258

136:                                              ; preds = %127
  %137 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1259
  call void @llvm.dbg.value(metadata i8* %137, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  store i8 %130, i8* %129, align 1, !dbg !1260, !tbaa !574
  br label %138

138:                                              ; preds = %136, %134, %131
  %139 = phi i8* [ %133, %131 ], [ %135, %134 ], [ %137, %136 ], !dbg !1261
  call void @llvm.dbg.value(metadata i8* %139, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  %140 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %140, metadata !625, metadata !DIExpression()) #13, !dbg !1244
  br label %127, !dbg !1263, !llvm.loop !1264

141:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  %142 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %142, metadata !626, metadata !DIExpression()) #13, !dbg !1244
  store i8 36, i8* %129, align 1, !dbg !1267, !tbaa !574
  store i8 0, i8* %142, align 1, !dbg !1268, !tbaa !574
  %143 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1269
  %144 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %126, i64 0, i32 0, !dbg !1270
  %145 = load i8*, i8** %144, align 8, !dbg !1270, !tbaa !665
  %146 = tail call i32 @step(i8* %145, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1271
  %147 = icmp eq i32 %146, 0, !dbg !1239
  br i1 %147, label %176, label %179, !dbg !1272

148:                                              ; preds = %119
  %149 = load i32, i32* %3, align 4, !dbg !1273, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %149, metadata !1071, metadata !DIExpression()) #13, !dbg !1064
  %150 = load i32, i32* %4, align 4, !dbg !1275, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %150, metadata !1072, metadata !DIExpression()) #13, !dbg !1064
  %151 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1276, !tbaa !1154
  %152 = getelementptr %struct.residue_t, %struct.residue_t* %151, i64 0, i32 9, !dbg !1276
  %153 = load %struct.strand_t*, %struct.strand_t** %152, align 8, !dbg !1276, !tbaa !1155
  call void @llvm.dbg.value(metadata i32 %149, metadata !1197, metadata !DIExpression()) #13, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %150, metadata !1203, metadata !DIExpression()) #13, !dbg !1277
  call void @llvm.dbg.value(metadata %struct.strand_t* %153, metadata !1206, metadata !DIExpression()) #13, !dbg !1277
  %154 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %153, i64 0, i32 3, !dbg !1279
  %155 = load %struct.molecule_t*, %struct.molecule_t** %154, align 8, !dbg !1279, !tbaa !1212
  call void @llvm.dbg.value(metadata %struct.molecule_t* %155, metadata !1208, metadata !DIExpression()) #13, !dbg !1277
  %156 = icmp eq i32 %150, -1, !dbg !1280
  %157 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %155, i64 0, i32 1, !dbg !1277
  %158 = load i32, i32* %157, align 8, !dbg !1277, !tbaa !677
  %159 = select i1 %156, i32 %158, i32 %150, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %159, metadata !1203, metadata !DIExpression()) #13, !dbg !1277
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1207, metadata !DIExpression()) #13, !dbg !1277
  call void @llvm.dbg.value(metadata i32 1, metadata !1204, metadata !DIExpression()) #13, !dbg !1277
  %160 = icmp slt i32 %158, 1, !dbg !1281
  br i1 %160, label %176, label %161, !dbg !1282

161:                                              ; preds = %148
  %162 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %155, i64 0, i32 2, !dbg !1283
  br label %163, !dbg !1282

163:                                              ; preds = %172, %161
  %164 = phi %struct.strand_t** [ %174, %172 ], [ %162, %161 ]
  %165 = phi i32 [ %173, %172 ], [ 1, %161 ]
  %166 = load %struct.strand_t*, %struct.strand_t** %164, align 8, !dbg !1284, !tbaa !291
  call void @llvm.dbg.value(metadata i32 %165, metadata !1204, metadata !DIExpression()) #13, !dbg !1277
  %167 = icmp ne %struct.strand_t* %166, %153, !dbg !1285
  %168 = icmp slt i32 %165, %149, !dbg !1286
  %169 = or i1 %168, %167, !dbg !1287
  %170 = icmp sgt i32 %165, %159, !dbg !1288
  %171 = or i1 %170, %169, !dbg !1287
  br i1 %171, label %172, label %179, !dbg !1287

172:                                              ; preds = %163
  %173 = add nuw i32 %165, 1, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %173, metadata !1204, metadata !DIExpression()) #13, !dbg !1277
  %174 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %166, i64 0, i32 4, !dbg !1290
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1207, metadata !DIExpression()) #13, !dbg !1277
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1207, metadata !DIExpression()) #13, !dbg !1277
  %175 = icmp eq i32 %165, %158, !dbg !1281
  br i1 %175, label %176, label %163, !dbg !1282, !llvm.loop !1291

176:                                              ; preds = %172, %148, %141
  %177 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1233
  call void @llvm.dbg.value(metadata i8* %177, metadata !1070, metadata !DIExpression()) #13, !dbg !1064
  %178 = icmp eq i8* %177, null, !dbg !1234
  br i1 %178, label %358, label %119, !dbg !1234, !llvm.loop !1293

179:                                              ; preds = %103, %141, %163, %81, %53
  call void @llvm.dbg.label(metadata !1073) #13, !dbg !1295
  %180 = load i8*, i8** @rpart, align 8, !dbg !1296, !tbaa !291
  %181 = icmp eq i8* %180, null, !dbg !1296
  br i1 %181, label %296, label %182, !dbg !1298

182:                                              ; preds = %179
  %183 = tail call i8* @strtok(i8* nonnull %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1299
  call void @llvm.dbg.value(metadata i8* %183, metadata !1070, metadata !DIExpression()) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i32* %3, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i32* %4, metadata !1072, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  %184 = call fastcc i32 @is_pattern(i8* %183, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1301
  %185 = icmp eq i32 %184, 0, !dbg !1301
  br i1 %185, label %209, label %186, !dbg !1303

186:                                              ; preds = %182
  %187 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1304, !tbaa !1154
  call void @llvm.dbg.value(metadata i8* %183, metadata !1307, metadata !DIExpression()) #13, !dbg !1312
  call void @llvm.dbg.value(metadata %struct.residue_t* %187, metadata !1311, metadata !DIExpression()) #13, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %183, metadata !619, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !624, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !626, metadata !DIExpression()) #13, !dbg !1314
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1316, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %183, metadata !625, metadata !DIExpression()) #13, !dbg !1314
  br label %188, !dbg !1317

188:                                              ; preds = %199, %186
  %189 = phi i8* [ %183, %186 ], [ %201, %199 ], !dbg !1318
  %190 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %186 ], [ %200, %199 ], !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %189, metadata !625, metadata !DIExpression()) #13, !dbg !1314
  %191 = load i8, i8* %189, align 1, !dbg !1319, !tbaa !574
  switch i8 %191, label %197 [
    i8 0, label %202
    i8 42, label %192
    i8 63, label %195
  ], !dbg !1320

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %193, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  store i8 46, i8* %190, align 1, !dbg !1322, !tbaa !574
  %194 = getelementptr inbounds i8, i8* %190, i64 2, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %194, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  store i8 42, i8* %193, align 1, !dbg !1324, !tbaa !574
  br label %199, !dbg !1325

195:                                              ; preds = %188
  %196 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %196, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  store i8 46, i8* %190, align 1, !dbg !1327, !tbaa !574
  br label %199, !dbg !1328

197:                                              ; preds = %188
  %198 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1329
  call void @llvm.dbg.value(metadata i8* %198, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  store i8 %191, i8* %190, align 1, !dbg !1330, !tbaa !574
  br label %199

199:                                              ; preds = %197, %195, %192
  %200 = phi i8* [ %194, %192 ], [ %196, %195 ], [ %198, %197 ], !dbg !1331
  call void @llvm.dbg.value(metadata i8* %200, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  %201 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %201, metadata !625, metadata !DIExpression()) #13, !dbg !1314
  br label %188, !dbg !1333, !llvm.loop !1334

202:                                              ; preds = %188
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  %203 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %203, metadata !626, metadata !DIExpression()) #13, !dbg !1314
  store i8 36, i8* %190, align 1, !dbg !1337, !tbaa !574
  store i8 0, i8* %203, align 1, !dbg !1338, !tbaa !574
  %204 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1339
  %205 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %187, i64 0, i32 4, !dbg !1340
  %206 = load i8*, i8** %205, align 8, !dbg !1340, !tbaa !1341
  %207 = tail call i32 @step(i8* %206, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1342
  %208 = icmp eq i32 %207, 0, !dbg !1304
  br i1 %208, label %236, label %296, !dbg !1343

209:                                              ; preds = %182
  %210 = load i32, i32* %3, align 4, !dbg !1344, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %210, metadata !1071, metadata !DIExpression()) #13, !dbg !1064
  %211 = load i32, i32* %4, align 4, !dbg !1346, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %211, metadata !1072, metadata !DIExpression()) #13, !dbg !1064
  %212 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1347, !tbaa !1154
  call void @llvm.dbg.value(metadata i32 %210, metadata !1348, metadata !DIExpression()) #13, !dbg !1358
  call void @llvm.dbg.value(metadata i32 %211, metadata !1352, metadata !DIExpression()) #13, !dbg !1358
  call void @llvm.dbg.value(metadata %struct.residue_t* %212, metadata !1356, metadata !DIExpression()) #13, !dbg !1358
  %213 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %212, i64 0, i32 9, !dbg !1360
  %214 = load %struct.strand_t*, %struct.strand_t** %213, align 8, !dbg !1360, !tbaa !1155
  call void @llvm.dbg.value(metadata %struct.strand_t* %214, metadata !1355, metadata !DIExpression()) #13, !dbg !1358
  %215 = icmp eq i32 %211, -1, !dbg !1361
  %216 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %214, i64 0, i32 5, !dbg !1358
  %217 = load i32, i32* %216, align 8, !dbg !1358, !tbaa !309
  %218 = select i1 %215, i32 %217, i32 %211, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %218, metadata !1354, metadata !DIExpression()) #13, !dbg !1358
  call void @llvm.dbg.value(metadata i32 0, metadata !1353, metadata !DIExpression()) #13, !dbg !1358
  %219 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %214, i64 0, i32 7, !dbg !1363
  %220 = sext i32 %217 to i64, !dbg !1367
  %221 = sext i32 %218 to i64, !dbg !1367
  br label %222, !dbg !1367

222:                                              ; preds = %225, %209
  %223 = phi i64 [ %230, %225 ], [ 0, %209 ], !dbg !1368
  call void @llvm.dbg.value(metadata i64 %223, metadata !1353, metadata !DIExpression()) #13, !dbg !1358
  %224 = icmp slt i64 %223, %220, !dbg !1369
  br i1 %224, label %225, label %236, !dbg !1370

225:                                              ; preds = %222
  %226 = load %struct.residue_t**, %struct.residue_t*** %219, align 8, !dbg !1371, !tbaa !314
  %227 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %226, i64 %223, !dbg !1372
  %228 = load %struct.residue_t*, %struct.residue_t** %227, align 8, !dbg !1372, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %228, metadata !1357, metadata !DIExpression()) #13, !dbg !1358
  %229 = icmp eq %struct.residue_t* %228, %212, !dbg !1373
  %230 = add nuw nsw i64 %223, 1, !dbg !1375
  %231 = trunc i64 %230 to i32, !dbg !1378
  %232 = icmp sle i32 %210, %231, !dbg !1378
  %233 = and i1 %232, %229, !dbg !1379
  %234 = icmp slt i64 %223, %221, !dbg !1380
  %235 = and i1 %234, %233, !dbg !1379
  br i1 %235, label %296, label %222, !dbg !1379, !llvm.loop !1381

236:                                              ; preds = %222, %202
  %237 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1383
  call void @llvm.dbg.value(metadata i8* %237, metadata !1070, metadata !DIExpression()) #13, !dbg !1064
  %238 = icmp eq i8* %237, null, !dbg !1384
  br i1 %238, label %358, label %239, !dbg !1384

239:                                              ; preds = %236, %293
  %240 = phi i8* [ %294, %293 ], [ %237, %236 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i32* %4, metadata !1072, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  %241 = call fastcc i32 @is_pattern(i8* nonnull %240, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1385
  %242 = icmp eq i32 %241, 0, !dbg !1385
  br i1 %242, label %266, label %243, !dbg !1388

243:                                              ; preds = %239
  %244 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1389, !tbaa !1154
  call void @llvm.dbg.value(metadata i8* %240, metadata !1307, metadata !DIExpression()) #13, !dbg !1392
  call void @llvm.dbg.value(metadata %struct.residue_t* %244, metadata !1311, metadata !DIExpression()) #13, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %240, metadata !619, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !624, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !626, metadata !DIExpression()) #13, !dbg !1394
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1396, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %240, metadata !625, metadata !DIExpression()) #13, !dbg !1394
  br label %245, !dbg !1397

245:                                              ; preds = %256, %243
  %246 = phi i8* [ %240, %243 ], [ %258, %256 ], !dbg !1398
  %247 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %243 ], [ %257, %256 ], !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %246, metadata !625, metadata !DIExpression()) #13, !dbg !1394
  %248 = load i8, i8* %246, align 1, !dbg !1399, !tbaa !574
  switch i8 %248, label %254 [
    i8 0, label %259
    i8 42, label %249
    i8 63, label %252
  ], !dbg !1400

249:                                              ; preds = %245
  %250 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %250, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  store i8 46, i8* %247, align 1, !dbg !1402, !tbaa !574
  %251 = getelementptr inbounds i8, i8* %247, i64 2, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %251, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  store i8 42, i8* %250, align 1, !dbg !1404, !tbaa !574
  br label %256, !dbg !1405

252:                                              ; preds = %245
  %253 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1406
  call void @llvm.dbg.value(metadata i8* %253, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  store i8 46, i8* %247, align 1, !dbg !1407, !tbaa !574
  br label %256, !dbg !1408

254:                                              ; preds = %245
  %255 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %255, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  store i8 %248, i8* %247, align 1, !dbg !1410, !tbaa !574
  br label %256

256:                                              ; preds = %254, %252, %249
  %257 = phi i8* [ %251, %249 ], [ %253, %252 ], [ %255, %254 ], !dbg !1411
  call void @llvm.dbg.value(metadata i8* %257, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  %258 = getelementptr inbounds i8, i8* %246, i64 1, !dbg !1412
  call void @llvm.dbg.value(metadata i8* %258, metadata !625, metadata !DIExpression()) #13, !dbg !1394
  br label %245, !dbg !1413, !llvm.loop !1414

259:                                              ; preds = %245
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  %260 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %260, metadata !626, metadata !DIExpression()) #13, !dbg !1394
  store i8 36, i8* %247, align 1, !dbg !1417, !tbaa !574
  store i8 0, i8* %260, align 1, !dbg !1418, !tbaa !574
  %261 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1419
  %262 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %244, i64 0, i32 4, !dbg !1420
  %263 = load i8*, i8** %262, align 8, !dbg !1420, !tbaa !1341
  %264 = tail call i32 @step(i8* %263, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1421
  %265 = icmp eq i32 %264, 0, !dbg !1389
  br i1 %265, label %293, label %296, !dbg !1422

266:                                              ; preds = %239
  %267 = load i32, i32* %3, align 4, !dbg !1423, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %267, metadata !1071, metadata !DIExpression()) #13, !dbg !1064
  %268 = load i32, i32* %4, align 4, !dbg !1425, !tbaa !673
  call void @llvm.dbg.value(metadata i32 %268, metadata !1072, metadata !DIExpression()) #13, !dbg !1064
  %269 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1426, !tbaa !1154
  call void @llvm.dbg.value(metadata i32 %267, metadata !1348, metadata !DIExpression()) #13, !dbg !1427
  call void @llvm.dbg.value(metadata i32 %268, metadata !1352, metadata !DIExpression()) #13, !dbg !1427
  call void @llvm.dbg.value(metadata %struct.residue_t* %269, metadata !1356, metadata !DIExpression()) #13, !dbg !1427
  %270 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %269, i64 0, i32 9, !dbg !1429
  %271 = load %struct.strand_t*, %struct.strand_t** %270, align 8, !dbg !1429, !tbaa !1155
  call void @llvm.dbg.value(metadata %struct.strand_t* %271, metadata !1355, metadata !DIExpression()) #13, !dbg !1427
  %272 = icmp eq i32 %268, -1, !dbg !1430
  %273 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %271, i64 0, i32 5, !dbg !1427
  %274 = load i32, i32* %273, align 8, !dbg !1427, !tbaa !309
  %275 = select i1 %272, i32 %274, i32 %268, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %275, metadata !1354, metadata !DIExpression()) #13, !dbg !1427
  call void @llvm.dbg.value(metadata i32 0, metadata !1353, metadata !DIExpression()) #13, !dbg !1427
  %276 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %271, i64 0, i32 7, !dbg !1432
  %277 = sext i32 %274 to i64, !dbg !1433
  %278 = sext i32 %275 to i64, !dbg !1433
  br label %279, !dbg !1433

279:                                              ; preds = %282, %266
  %280 = phi i64 [ %287, %282 ], [ 0, %266 ], !dbg !1434
  call void @llvm.dbg.value(metadata i64 %280, metadata !1353, metadata !DIExpression()) #13, !dbg !1427
  %281 = icmp slt i64 %280, %277, !dbg !1435
  br i1 %281, label %282, label %293, !dbg !1436

282:                                              ; preds = %279
  %283 = load %struct.residue_t**, %struct.residue_t*** %276, align 8, !dbg !1437, !tbaa !314
  %284 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %283, i64 %280, !dbg !1438
  %285 = load %struct.residue_t*, %struct.residue_t** %284, align 8, !dbg !1438, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %285, metadata !1357, metadata !DIExpression()) #13, !dbg !1427
  %286 = icmp eq %struct.residue_t* %285, %269, !dbg !1439
  %287 = add nuw nsw i64 %280, 1, !dbg !1440
  %288 = trunc i64 %287 to i32, !dbg !1441
  %289 = icmp sle i32 %267, %288, !dbg !1441
  %290 = and i1 %289, %286, !dbg !1442
  %291 = icmp slt i64 %280, %278, !dbg !1443
  %292 = and i1 %291, %290, !dbg !1442
  br i1 %292, label %296, label %279, !dbg !1442, !llvm.loop !1444

293:                                              ; preds = %279, %259
  %294 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1383
  call void @llvm.dbg.value(metadata i8* %294, metadata !1070, metadata !DIExpression()) #13, !dbg !1064
  %295 = icmp eq i8* %294, null, !dbg !1384
  br i1 %295, label %358, label %239, !dbg !1384, !llvm.loop !1446

296:                                              ; preds = %225, %259, %282, %202, %179
  call void @llvm.dbg.label(metadata !1074) #13, !dbg !1448
  %297 = load i8*, i8** @apart, align 8, !dbg !1449, !tbaa !291
  %298 = icmp eq i8* %297, null, !dbg !1449
  br i1 %298, label %357, label %299, !dbg !1450

299:                                              ; preds = %296
  %300 = tail call i8* @strtok(i8* nonnull %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %300, metadata !1070, metadata !DIExpression()) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i32* %3, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i32* %4, metadata !1072, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  %301 = call fastcc i32 @is_pattern(i8* %300, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1452
  %302 = icmp eq i32 %301, 0, !dbg !1452
  br i1 %302, label %324, label %303, !dbg !1453

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1088, metadata !DIExpression()) #13, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %300, metadata !1089, metadata !DIExpression()) #13, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %300, metadata !619, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !624, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !626, metadata !DIExpression()) #13, !dbg !1454
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1456, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %300, metadata !625, metadata !DIExpression()) #13, !dbg !1454
  br label %304, !dbg !1457

304:                                              ; preds = %315, %303
  %305 = phi i8* [ %300, %303 ], [ %317, %315 ], !dbg !1458
  %306 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %303 ], [ %316, %315 ], !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %305, metadata !625, metadata !DIExpression()) #13, !dbg !1454
  %307 = load i8, i8* %305, align 1, !dbg !1459, !tbaa !574
  switch i8 %307, label %313 [
    i8 0, label %318
    i8 42, label %308
    i8 63, label %311
  ], !dbg !1460

308:                                              ; preds = %304
  %309 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1461
  call void @llvm.dbg.value(metadata i8* %309, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  store i8 46, i8* %306, align 1, !dbg !1462, !tbaa !574
  %310 = getelementptr inbounds i8, i8* %306, i64 2, !dbg !1463
  call void @llvm.dbg.value(metadata i8* %310, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  store i8 42, i8* %309, align 1, !dbg !1464, !tbaa !574
  br label %315, !dbg !1465

311:                                              ; preds = %304
  %312 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1466
  call void @llvm.dbg.value(metadata i8* %312, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  store i8 46, i8* %306, align 1, !dbg !1467, !tbaa !574
  br label %315, !dbg !1468

313:                                              ; preds = %304
  %314 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1469
  call void @llvm.dbg.value(metadata i8* %314, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  store i8 %307, i8* %306, align 1, !dbg !1470, !tbaa !574
  br label %315

315:                                              ; preds = %313, %311, %308
  %316 = phi i8* [ %310, %308 ], [ %312, %311 ], [ %314, %313 ], !dbg !1471
  call void @llvm.dbg.value(metadata i8* %316, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  %317 = getelementptr inbounds i8, i8* %305, i64 1, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %317, metadata !625, metadata !DIExpression()) #13, !dbg !1454
  br label %304, !dbg !1473, !llvm.loop !1474

318:                                              ; preds = %304
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  %319 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1476
  call void @llvm.dbg.value(metadata i8* %319, metadata !626, metadata !DIExpression()) #13, !dbg !1454
  store i8 36, i8* %306, align 1, !dbg !1477, !tbaa !574
  store i8 0, i8* %319, align 1, !dbg !1478, !tbaa !574
  %320 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1479
  %321 = load i8*, i8** %11, align 8, !dbg !1480, !tbaa !1481
  %322 = tail call i32 @step(i8* %321, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1482
  %323 = icmp eq i32 %322, 0, !dbg !1483
  br i1 %323, label %327, label %357, !dbg !1484

324:                                              ; preds = %299
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1485, !tbaa !291
  %326 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %325) #14, !dbg !1487
  br label %358, !dbg !1488

327:                                              ; preds = %318, %348
  %328 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1489
  call void @llvm.dbg.value(metadata i8* %328, metadata !1070, metadata !DIExpression()) #13, !dbg !1064
  %329 = icmp eq i8* %328, null, !dbg !1490
  br i1 %329, label %358, label %330, !dbg !1490

330:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i32* %3, metadata !1071, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i32* %4, metadata !1072, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1064
  %331 = call fastcc i32 @is_pattern(i8* nonnull %328, i32* nonnull %3, i32* nonnull %4) #13, !dbg !1491
  %332 = icmp eq i32 %331, 0, !dbg !1491
  br i1 %332, label %354, label %333, !dbg !1494

333:                                              ; preds = %330
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1088, metadata !DIExpression()) #13, !dbg !1495
  call void @llvm.dbg.value(metadata i8* %328, metadata !1089, metadata !DIExpression()) #13, !dbg !1495
  call void @llvm.dbg.value(metadata i8* %328, metadata !619, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !624, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !626, metadata !DIExpression()) #13, !dbg !1499
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1501, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %328, metadata !625, metadata !DIExpression()) #13, !dbg !1499
  br label %334, !dbg !1502

334:                                              ; preds = %345, %333
  %335 = phi i8* [ %328, %333 ], [ %347, %345 ], !dbg !1503
  %336 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %333 ], [ %346, %345 ], !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %335, metadata !625, metadata !DIExpression()) #13, !dbg !1499
  %337 = load i8, i8* %335, align 1, !dbg !1504, !tbaa !574
  switch i8 %337, label %343 [
    i8 0, label %348
    i8 42, label %338
    i8 63, label %341
  ], !dbg !1505

338:                                              ; preds = %334
  %339 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1506
  call void @llvm.dbg.value(metadata i8* %339, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  store i8 46, i8* %336, align 1, !dbg !1507, !tbaa !574
  %340 = getelementptr inbounds i8, i8* %336, i64 2, !dbg !1508
  call void @llvm.dbg.value(metadata i8* %340, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  store i8 42, i8* %339, align 1, !dbg !1509, !tbaa !574
  br label %345, !dbg !1510

341:                                              ; preds = %334
  %342 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1511
  call void @llvm.dbg.value(metadata i8* %342, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  store i8 46, i8* %336, align 1, !dbg !1512, !tbaa !574
  br label %345, !dbg !1513

343:                                              ; preds = %334
  %344 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1514
  call void @llvm.dbg.value(metadata i8* %344, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  store i8 %337, i8* %336, align 1, !dbg !1515, !tbaa !574
  br label %345

345:                                              ; preds = %343, %341, %338
  %346 = phi i8* [ %340, %338 ], [ %342, %341 ], [ %344, %343 ], !dbg !1516
  call void @llvm.dbg.value(metadata i8* %346, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  %347 = getelementptr inbounds i8, i8* %335, i64 1, !dbg !1517
  call void @llvm.dbg.value(metadata i8* %347, metadata !625, metadata !DIExpression()) #13, !dbg !1499
  br label %334, !dbg !1518, !llvm.loop !1519

348:                                              ; preds = %334
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  %349 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1521
  call void @llvm.dbg.value(metadata i8* %349, metadata !626, metadata !DIExpression()) #13, !dbg !1499
  store i8 36, i8* %336, align 1, !dbg !1522, !tbaa !574
  store i8 0, i8* %349, align 1, !dbg !1523, !tbaa !574
  %350 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1524
  %351 = load i8*, i8** %11, align 8, !dbg !1525, !tbaa !1481
  %352 = tail call i32 @step(i8* %351, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1526
  %353 = icmp eq i32 %352, 0, !dbg !1527
  br i1 %353, label %327, label %357, !dbg !1528, !llvm.loop !1529

354:                                              ; preds = %330
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1531, !tbaa !291
  %356 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %355) #14, !dbg !1533
  br label %358, !dbg !1534

357:                                              ; preds = %296, %318, %348
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #13, !dbg !1535
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #13, !dbg !1535
  br label %362, !dbg !1536

358:                                              ; preds = %176, %293, %327, %354, %324, %236, %116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #13, !dbg !1535
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #13, !dbg !1535
  call void @llvm.dbg.value(metadata i8* %24, metadata !1055, metadata !DIExpression()), !dbg !1058
  %359 = icmp eq i8* %24, null, !dbg !1537
  br i1 %359, label %362, label %360, !dbg !1539

360:                                              ; preds = %358
  %361 = tail call i8* @strchr(i8* nonnull %24, i32 124) #12, !dbg !1540
  call void @llvm.dbg.value(metadata i8* %361, metadata !1056, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %361, metadata !1056, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %24, metadata !1055, metadata !DIExpression()), !dbg !1058
  br label %12, !dbg !1096

362:                                              ; preds = %358, %357, %2, %28
  %363 = phi i32 [ 0, %28 ], [ 0, %2 ], [ 1, %357 ], [ 0, %358 ], !dbg !1058
  ret i32 %363, !dbg !1541
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @set_attr_if(%struct.molecule_t* nocapture readonly %0, i32 %1, i32 %2) local_unnamed_addr #5 !dbg !1542 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1544, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %1, metadata !1545, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %2, metadata !1546, metadata !DIExpression()), !dbg !1552
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1553
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1549, metadata !DIExpression()), !dbg !1552
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1555, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1549, metadata !DIExpression()), !dbg !1552
  %6 = icmp eq %struct.strand_t* %5, null, !dbg !1556
  br i1 %6, label %79, label %7, !dbg !1556

7:                                                ; preds = %3, %75
  %8 = phi %struct.strand_t* [ %77, %75 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 2, !dbg !1557
  %10 = load i32, i32* %9, align 4, !dbg !1557, !tbaa !300
  %11 = and i32 %10, %2, !dbg !1560
  %12 = icmp eq i32 %11, 0, !dbg !1560
  %13 = select i1 %12, i32 0, i32 %1, !dbg !1561
  %14 = or i32 %13, %10, !dbg !1562
  store i32 %14, i32* %9, align 4, !dbg !1562, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !1548, metadata !DIExpression()), !dbg !1552
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 5, !dbg !1563
  %16 = load i32, i32* %15, align 8, !dbg !1563, !tbaa !309
  %17 = icmp sgt i32 %16, 0, !dbg !1566
  br i1 %17, label %18, label %75, !dbg !1567

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 7, !dbg !1568
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !1568, !tbaa !314
  %21 = zext i32 %16 to i64, !dbg !1567
  br label %22, !dbg !1567

22:                                               ; preds = %18, %72
  %23 = phi i64 [ 0, %18 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1548, metadata !DIExpression()), !dbg !1552
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %23, !dbg !1570
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !1570, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !1550, metadata !DIExpression()), !dbg !1552
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 6, !dbg !1571
  %27 = load i32, i32* %26, align 8, !dbg !1571, !tbaa !318
  %28 = and i32 %27, %2, !dbg !1572
  %29 = icmp eq i32 %28, 0, !dbg !1572
  %30 = select i1 %29, i32 0, i32 %1, !dbg !1573
  %31 = or i32 %30, %27, !dbg !1574
  store i32 %31, i32* %26, align 8, !dbg !1574, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !1547, metadata !DIExpression()), !dbg !1552
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 15, !dbg !1575
  %33 = load i32, i32* %32, align 8, !dbg !1575, !tbaa !326
  %34 = icmp sgt i32 %33, 0, !dbg !1578
  br i1 %34, label %35, label %72, !dbg !1579

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 17, !dbg !1580
  %37 = load %struct.atom_t*, %struct.atom_t** %36, align 8, !dbg !1580, !tbaa !331
  %38 = zext i32 %33 to i64, !dbg !1579
  %39 = and i64 %38, 1, !dbg !1579
  %40 = icmp eq i32 %33, 1, !dbg !1579
  br i1 %40, label %62, label %41, !dbg !1579

41:                                               ; preds = %35
  %42 = sub nsw i64 %38, %39, !dbg !1579
  br label %43, !dbg !1579

43:                                               ; preds = %43, %41
  %44 = phi i64 [ 0, %41 ], [ %59, %43 ]
  %45 = phi i64 [ %42, %41 ], [ %60, %43 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !1547, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1551, metadata !DIExpression()), !dbg !1552
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %44, i32 2, !dbg !1582
  %47 = load i32, i32* %46, align 8, !dbg !1582, !tbaa !334
  %48 = and i32 %47, %2, !dbg !1583
  %49 = icmp eq i32 %48, 0, !dbg !1583
  %50 = select i1 %49, i32 0, i32 %1, !dbg !1584
  %51 = or i32 %50, %47, !dbg !1585
  store i32 %51, i32* %46, align 8, !dbg !1585, !tbaa !334
  %52 = or i64 %44, 1, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %52, metadata !1547, metadata !DIExpression()), !dbg !1552
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %52, i32 2, !dbg !1582
  %54 = load i32, i32* %53, align 8, !dbg !1582, !tbaa !334
  %55 = and i32 %54, %2, !dbg !1583
  %56 = icmp eq i32 %55, 0, !dbg !1583
  %57 = select i1 %56, i32 0, i32 %1, !dbg !1584
  %58 = or i32 %57, %54, !dbg !1585
  store i32 %58, i32* %53, align 8, !dbg !1585, !tbaa !334
  %59 = add nuw nsw i64 %44, 2, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %59, metadata !1547, metadata !DIExpression()), !dbg !1552
  %60 = add i64 %45, -2, !dbg !1579
  %61 = icmp eq i64 %60, 0, !dbg !1579
  br i1 %61, label %62, label %43, !dbg !1579, !llvm.loop !1587

62:                                               ; preds = %43, %35
  %63 = phi i64 [ 0, %35 ], [ %59, %43 ]
  %64 = icmp eq i64 %39, 0, !dbg !1579
  br i1 %64, label %72, label %65, !dbg !1579

65:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 %63, metadata !1547, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1551, metadata !DIExpression()), !dbg !1552
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %63, i32 2, !dbg !1582
  %67 = load i32, i32* %66, align 8, !dbg !1582, !tbaa !334
  %68 = and i32 %67, %2, !dbg !1583
  %69 = icmp eq i32 %68, 0, !dbg !1583
  %70 = select i1 %69, i32 0, i32 %1, !dbg !1584
  %71 = or i32 %70, %67, !dbg !1585
  store i32 %71, i32* %66, align 8, !dbg !1585, !tbaa !334
  call void @llvm.dbg.value(metadata i64 %63, metadata !1547, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1552
  br label %72, !dbg !1589

72:                                               ; preds = %65, %62, %22
  %73 = add nuw nsw i64 %23, 1, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %73, metadata !1548, metadata !DIExpression()), !dbg !1552
  %74 = icmp ult i64 %73, %21, !dbg !1566
  br i1 %74, label %22, label %75, !dbg !1567, !llvm.loop !1590

75:                                               ; preds = %72, %7
  %76 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 4, !dbg !1592
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1549, metadata !DIExpression()), !dbg !1552
  %77 = load %struct.strand_t*, %struct.strand_t** %76, align 8, !dbg !1555, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %77, metadata !1549, metadata !DIExpression()), !dbg !1552
  %78 = icmp eq %struct.strand_t* %77, null, !dbg !1556
  br i1 %78, label %79, label %7, !dbg !1556, !llvm.loop !1593

79:                                               ; preds = %75, %3
  ret void, !dbg !1595
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @clear_attr(%struct.molecule_t* nocapture readonly %0, i32 %1) local_unnamed_addr #5 !dbg !1596 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1600, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 %1, metadata !1601, metadata !DIExpression()), !dbg !1606
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1607
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1604, metadata !DIExpression()), !dbg !1606
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1609, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %4, metadata !1604, metadata !DIExpression()), !dbg !1606
  %5 = icmp eq %struct.strand_t* %4, null, !dbg !1610
  br i1 %5, label %79, label %6, !dbg !1610

6:                                                ; preds = %2
  %7 = xor i32 %1, -1, !dbg !1611
  br label %8, !dbg !1610

8:                                                ; preds = %6, %75
  %9 = phi %struct.strand_t* [ %4, %6 ], [ %77, %75 ]
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 2, !dbg !1614
  %11 = load i32, i32* %10, align 4, !dbg !1615, !tbaa !300
  %12 = and i32 %11, %7, !dbg !1615
  store i32 %12, i32* %10, align 4, !dbg !1615, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !1603, metadata !DIExpression()), !dbg !1606
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 5, !dbg !1616
  %14 = load i32, i32* %13, align 8, !dbg !1616, !tbaa !309
  %15 = icmp sgt i32 %14, 0, !dbg !1619
  br i1 %15, label %16, label %75, !dbg !1620

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 7, !dbg !1621
  %18 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1621, !tbaa !314
  %19 = zext i32 %14 to i64, !dbg !1620
  br label %20, !dbg !1620

20:                                               ; preds = %16, %72
  %21 = phi i64 [ 0, %16 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1603, metadata !DIExpression()), !dbg !1606
  %22 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %18, i64 %21, !dbg !1623
  %23 = load %struct.residue_t*, %struct.residue_t** %22, align 8, !dbg !1623, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %23, metadata !1605, metadata !DIExpression()), !dbg !1606
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %23, i64 0, i32 6, !dbg !1624
  %25 = load i32, i32* %24, align 8, !dbg !1625, !tbaa !318
  %26 = and i32 %25, %7, !dbg !1625
  store i32 %26, i32* %24, align 8, !dbg !1625, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !1602, metadata !DIExpression()), !dbg !1606
  %27 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %23, i64 0, i32 15, !dbg !1626
  %28 = load i32, i32* %27, align 8, !dbg !1626, !tbaa !326
  %29 = icmp sgt i32 %28, 0, !dbg !1629
  br i1 %29, label %30, label %72, !dbg !1630

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %23, i64 0, i32 17, !dbg !1631
  %32 = load %struct.atom_t*, %struct.atom_t** %31, align 8, !dbg !1631, !tbaa !331
  %33 = zext i32 %28 to i64, !dbg !1630
  %34 = add nsw i64 %33, -1, !dbg !1630
  %35 = and i64 %33, 3, !dbg !1630
  %36 = icmp ult i64 %34, 3, !dbg !1630
  br i1 %36, label %60, label %37, !dbg !1630

37:                                               ; preds = %30
  %38 = sub nsw i64 %33, %35, !dbg !1630
  br label %39, !dbg !1630

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %57, %39 ]
  %41 = phi i64 [ %38, %37 ], [ %58, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1602, metadata !DIExpression()), !dbg !1606
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %40, i32 2, !dbg !1632
  %43 = load i32, i32* %42, align 8, !dbg !1633, !tbaa !334
  %44 = and i32 %43, %7, !dbg !1633
  store i32 %44, i32* %42, align 8, !dbg !1633, !tbaa !334
  %45 = or i64 %40, 1, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %45, metadata !1602, metadata !DIExpression()), !dbg !1606
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %45, i32 2, !dbg !1632
  %47 = load i32, i32* %46, align 8, !dbg !1633, !tbaa !334
  %48 = and i32 %47, %7, !dbg !1633
  store i32 %48, i32* %46, align 8, !dbg !1633, !tbaa !334
  %49 = or i64 %40, 2, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %49, metadata !1602, metadata !DIExpression()), !dbg !1606
  %50 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %49, i32 2, !dbg !1632
  %51 = load i32, i32* %50, align 8, !dbg !1633, !tbaa !334
  %52 = and i32 %51, %7, !dbg !1633
  store i32 %52, i32* %50, align 8, !dbg !1633, !tbaa !334
  %53 = or i64 %40, 3, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %53, metadata !1602, metadata !DIExpression()), !dbg !1606
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %53, i32 2, !dbg !1632
  %55 = load i32, i32* %54, align 8, !dbg !1633, !tbaa !334
  %56 = and i32 %55, %7, !dbg !1633
  store i32 %56, i32* %54, align 8, !dbg !1633, !tbaa !334
  %57 = add nuw nsw i64 %40, 4, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %57, metadata !1602, metadata !DIExpression()), !dbg !1606
  %58 = add i64 %41, -4, !dbg !1630
  %59 = icmp eq i64 %58, 0, !dbg !1630
  br i1 %59, label %60, label %39, !dbg !1630, !llvm.loop !1635

60:                                               ; preds = %39, %30
  %61 = phi i64 [ 0, %30 ], [ %57, %39 ]
  %62 = icmp eq i64 %35, 0, !dbg !1630
  br i1 %62, label %72, label %63, !dbg !1630

63:                                               ; preds = %60, %63
  %64 = phi i64 [ %69, %63 ], [ %61, %60 ]
  %65 = phi i64 [ %70, %63 ], [ %35, %60 ]
  call void @llvm.dbg.value(metadata i64 %64, metadata !1602, metadata !DIExpression()), !dbg !1606
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %64, i32 2, !dbg !1632
  %67 = load i32, i32* %66, align 8, !dbg !1633, !tbaa !334
  %68 = and i32 %67, %7, !dbg !1633
  store i32 %68, i32* %66, align 8, !dbg !1633, !tbaa !334
  %69 = add nuw nsw i64 %64, 1, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %69, metadata !1602, metadata !DIExpression()), !dbg !1606
  %70 = add i64 %65, -1, !dbg !1630
  %71 = icmp eq i64 %70, 0, !dbg !1630
  br i1 %71, label %72, label %63, !dbg !1630, !llvm.loop !1637

72:                                               ; preds = %60, %63, %20
  %73 = add nuw nsw i64 %21, 1, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %73, metadata !1603, metadata !DIExpression()), !dbg !1606
  %74 = icmp ult i64 %73, %19, !dbg !1619
  br i1 %74, label %20, label %75, !dbg !1620, !llvm.loop !1639

75:                                               ; preds = %72, %8
  %76 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 4, !dbg !1641
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1604, metadata !DIExpression()), !dbg !1606
  %77 = load %struct.strand_t*, %struct.strand_t** %76, align 8, !dbg !1609, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %77, metadata !1604, metadata !DIExpression()), !dbg !1606
  %78 = icmp eq %struct.strand_t* %77, null, !dbg !1610
  br i1 %78, label %79, label %8, !dbg !1610, !llvm.loop !1642

79:                                               ; preds = %75, %2
  ret void, !dbg !1644
}

; Function Attrs: nofree nounwind
declare dso_local i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @is_pattern(i8* nocapture readonly %0, i32* nocapture %1, i32* nocapture %2) unnamed_addr #6 !dbg !1645 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1650, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32* %1, metadata !1651, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32* %2, metadata !1652, metadata !DIExpression()), !dbg !1655
  %4 = tail call i16** @__ctype_b_loc() #15, !dbg !1656
  %5 = load i16*, i16** %4, align 8, !dbg !1656, !tbaa !291
  %6 = load i8, i8* %0, align 1, !dbg !1656, !tbaa !574
  %7 = sext i8 %6 to i64, !dbg !1656
  %8 = getelementptr inbounds i16, i16* %5, i64 %7, !dbg !1656
  %9 = load i16, i16* %8, align 2, !dbg !1656, !tbaa !1658
  %10 = and i16 %9, 2048, !dbg !1656
  %11 = icmp ne i16 %10, 0, !dbg !1656
  %12 = icmp eq i8 %6, 45, !dbg !1660
  %13 = or i1 %12, %11, !dbg !1661
  br i1 %13, label %14, label %95, !dbg !1661

14:                                               ; preds = %3
  %15 = icmp eq i16 %10, 0, !dbg !1662
  br i1 %15, label %66, label %16, !dbg !1664

16:                                               ; preds = %14, %16
  %17 = phi i8 [ %25, %16 ], [ %6, %14 ]
  %18 = phi i8* [ %24, %16 ], [ %0, %14 ]
  %19 = phi i32 [ %23, %16 ], [ 0, %14 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %19, metadata !1653, metadata !DIExpression()), !dbg !1655
  %20 = sext i8 %17 to i32, !dbg !1665
  %21 = mul nsw i32 %19, 10, !dbg !1669
  %22 = add i32 %21, -48, !dbg !1670
  %23 = add i32 %22, %20, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %23, metadata !1653, metadata !DIExpression()), !dbg !1655
  %24 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1672
  call void @llvm.dbg.value(metadata i8* %24, metadata !1654, metadata !DIExpression()), !dbg !1655
  %25 = load i8, i8* %24, align 1, !dbg !1665, !tbaa !574
  %26 = sext i8 %25 to i64, !dbg !1665
  %27 = getelementptr inbounds i16, i16* %5, i64 %26, !dbg !1665
  %28 = load i16, i16* %27, align 2, !dbg !1665, !tbaa !1658
  %29 = and i16 %28, 2048, !dbg !1665
  %30 = icmp eq i16 %29, 0, !dbg !1673
  br i1 %30, label %31, label %16, !dbg !1673, !llvm.loop !1674

31:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8* %18, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %18, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %18, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %23, metadata !1653, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %24, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i32 %23, i32* %1, align 4, !dbg !1676, !tbaa !673
  %32 = load i8, i8* %24, align 1, !dbg !1677, !tbaa !574
  switch i8 %32, label %37 [
    i8 0, label %33
    i8 45, label %34
  ], !dbg !1679

33:                                               ; preds = %31
  store i32 %23, i32* %2, align 4, !dbg !1680, !tbaa !673
  br label %95, !dbg !1682

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !1683
  call void @llvm.dbg.value(metadata i8* %35, metadata !1654, metadata !DIExpression()), !dbg !1655
  %36 = load i8, i8* %35, align 1, !dbg !1685, !tbaa !574
  br label %37, !dbg !1687

37:                                               ; preds = %31, %34
  %38 = phi i8 [ %32, %31 ], [ %36, %34 ], !dbg !1685
  %39 = phi i8* [ %24, %31 ], [ %35, %34 ], !dbg !1688
  call void @llvm.dbg.value(metadata i8* %39, metadata !1654, metadata !DIExpression()), !dbg !1655
  %40 = icmp eq i8 %38, 0, !dbg !1685
  br i1 %40, label %41, label %42, !dbg !1689

41:                                               ; preds = %37
  store i32 -1, i32* %2, align 4, !dbg !1690, !tbaa !673
  br label %95, !dbg !1692

42:                                               ; preds = %37
  %43 = sext i8 %38 to i64, !dbg !1693
  %44 = getelementptr inbounds i16, i16* %5, i64 %43, !dbg !1693
  %45 = load i16, i16* %44, align 2, !dbg !1693, !tbaa !1658
  %46 = and i16 %45, 2048, !dbg !1693
  %47 = icmp eq i16 %46, 0, !dbg !1693
  br i1 %47, label %95, label %48, !dbg !1695

48:                                               ; preds = %42, %48
  %49 = phi i8 [ %57, %48 ], [ %38, %42 ]
  %50 = phi i8* [ %56, %48 ], [ %39, %42 ]
  %51 = phi i32 [ %55, %48 ], [ 0, %42 ]
  call void @llvm.dbg.value(metadata i8* %50, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %51, metadata !1653, metadata !DIExpression()), !dbg !1655
  %52 = sext i8 %49 to i32, !dbg !1696
  %53 = mul nsw i32 %51, 10, !dbg !1699
  %54 = add i32 %53, -48, !dbg !1700
  %55 = add i32 %54, %52, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %55, metadata !1653, metadata !DIExpression()), !dbg !1655
  %56 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1702
  call void @llvm.dbg.value(metadata i8* %56, metadata !1654, metadata !DIExpression()), !dbg !1655
  %57 = load i8, i8* %56, align 1, !dbg !1696, !tbaa !574
  %58 = sext i8 %57 to i64, !dbg !1696
  %59 = getelementptr inbounds i16, i16* %5, i64 %58, !dbg !1696
  %60 = load i16, i16* %59, align 2, !dbg !1696, !tbaa !1658
  %61 = and i16 %60, 2048, !dbg !1696
  %62 = icmp eq i16 %61, 0, !dbg !1703
  br i1 %62, label %63, label %48, !dbg !1703, !llvm.loop !1704

63:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %55, metadata !1653, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %56, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i32 %55, i32* %2, align 4, !dbg !1706, !tbaa !673
  %64 = load i8, i8* %56, align 1, !dbg !1707, !tbaa !574
  %65 = sext i8 %64 to i32, !dbg !1708
  br label %95, !dbg !1709

66:                                               ; preds = %14
  store i32 1, i32* %1, align 4, !dbg !1710, !tbaa !673
  %67 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1712
  call void @llvm.dbg.value(metadata i8* %67, metadata !1654, metadata !DIExpression()), !dbg !1655
  %68 = load i8, i8* %67, align 1, !dbg !1713, !tbaa !574
  %69 = icmp eq i8 %68, 0, !dbg !1713
  br i1 %69, label %70, label %71, !dbg !1715

70:                                               ; preds = %66
  store i32 -1, i32* %2, align 4, !dbg !1716, !tbaa !673
  br label %95, !dbg !1718

71:                                               ; preds = %66
  %72 = sext i8 %68 to i64, !dbg !1719
  %73 = getelementptr inbounds i16, i16* %5, i64 %72, !dbg !1719
  %74 = load i16, i16* %73, align 2, !dbg !1719, !tbaa !1658
  %75 = and i16 %74, 2048, !dbg !1719
  %76 = icmp eq i16 %75, 0, !dbg !1719
  br i1 %76, label %95, label %77, !dbg !1721

77:                                               ; preds = %71, %77
  %78 = phi i8 [ %86, %77 ], [ %68, %71 ]
  %79 = phi i8* [ %85, %77 ], [ %67, %71 ]
  %80 = phi i32 [ %84, %77 ], [ 0, %71 ]
  call void @llvm.dbg.value(metadata i8* %79, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %80, metadata !1653, metadata !DIExpression()), !dbg !1655
  %81 = sext i8 %78 to i32, !dbg !1722
  %82 = mul nsw i32 %80, 10, !dbg !1726
  %83 = add i32 %82, -48, !dbg !1727
  %84 = add i32 %83, %81, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %84, metadata !1653, metadata !DIExpression()), !dbg !1655
  %85 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1729
  call void @llvm.dbg.value(metadata i8* %85, metadata !1654, metadata !DIExpression()), !dbg !1655
  %86 = load i8, i8* %85, align 1, !dbg !1722, !tbaa !574
  %87 = sext i8 %86 to i64, !dbg !1722
  %88 = getelementptr inbounds i16, i16* %5, i64 %87, !dbg !1722
  %89 = load i16, i16* %88, align 2, !dbg !1722, !tbaa !1658
  %90 = and i16 %89, 2048, !dbg !1722
  %91 = icmp eq i16 %90, 0, !dbg !1730
  br i1 %91, label %92, label %77, !dbg !1730, !llvm.loop !1731

92:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 %84, metadata !1653, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %85, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i32 %84, i32* %2, align 4, !dbg !1733, !tbaa !673
  %93 = load i8, i8* %85, align 1, !dbg !1734, !tbaa !574
  %94 = sext i8 %93 to i32, !dbg !1735
  br label %95, !dbg !1736

95:                                               ; preds = %71, %42, %3, %92, %70, %63, %41, %33
  %96 = phi i32 [ %65, %63 ], [ 0, %41 ], [ 0, %33 ], [ %94, %92 ], [ 0, %70 ], [ 1, %3 ], [ 1, %42 ], [ 0, %71 ], !dbg !1655
  ret i32 %96, !dbg !1737
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_res_pat(%struct.molecule_t* nocapture readonly %0, i8* nocapture readonly %1) unnamed_addr #0 !dbg !1738 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1740, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %1, metadata !1741, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %1, metadata !619, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !624, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !626, metadata !DIExpression()), !dbg !1746
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1748, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %1, metadata !625, metadata !DIExpression()), !dbg !1746
  br label %3, !dbg !1749

3:                                                ; preds = %14, %2
  %4 = phi i8* [ %1, %2 ], [ %16, %14 ], !dbg !1750
  %5 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %2 ], [ %15, %14 ], !dbg !1746
  call void @llvm.dbg.value(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %4, metadata !625, metadata !DIExpression()), !dbg !1746
  %6 = load i8, i8* %4, align 1, !dbg !1751, !tbaa !574
  switch i8 %6, label %12 [
    i8 0, label %17
    i8 42, label %7
    i8 63, label %10
  ], !dbg !1752

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1753
  call void @llvm.dbg.value(metadata i8* %8, metadata !626, metadata !DIExpression()), !dbg !1746
  store i8 46, i8* %5, align 1, !dbg !1754, !tbaa !574
  %9 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !1755
  call void @llvm.dbg.value(metadata i8* %9, metadata !626, metadata !DIExpression()), !dbg !1746
  store i8 42, i8* %8, align 1, !dbg !1756, !tbaa !574
  br label %14, !dbg !1757

10:                                               ; preds = %3
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1758
  call void @llvm.dbg.value(metadata i8* %11, metadata !626, metadata !DIExpression()), !dbg !1746
  store i8 46, i8* %5, align 1, !dbg !1759, !tbaa !574
  br label %14, !dbg !1760

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1761
  call void @llvm.dbg.value(metadata i8* %13, metadata !626, metadata !DIExpression()), !dbg !1746
  store i8 %6, i8* %5, align 1, !dbg !1762, !tbaa !574
  br label %14

14:                                               ; preds = %12, %10, %7
  %15 = phi i8* [ %9, %7 ], [ %11, %10 ], [ %13, %12 ], !dbg !1763
  call void @llvm.dbg.value(metadata i8* %15, metadata !626, metadata !DIExpression()), !dbg !1746
  %16 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1764
  call void @llvm.dbg.value(metadata i8* %16, metadata !625, metadata !DIExpression()), !dbg !1746
  br label %3, !dbg !1765, !llvm.loop !1766

17:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !1746
  %18 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1768
  call void @llvm.dbg.value(metadata i8* %18, metadata !626, metadata !DIExpression()), !dbg !1746
  store i8 36, i8* %5, align 1, !dbg !1769, !tbaa !574
  store i8 0, i8* %18, align 1, !dbg !1770, !tbaa !574
  %19 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1771
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1772
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1743, metadata !DIExpression()), !dbg !1745
  %21 = load %struct.strand_t*, %struct.strand_t** %20, align 8, !dbg !1774, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %21, metadata !1743, metadata !DIExpression()), !dbg !1745
  %22 = icmp eq %struct.strand_t* %21, null, !dbg !1775
  br i1 %22, label %56, label %23, !dbg !1775

23:                                               ; preds = %17, %52
  %24 = phi %struct.strand_t* [ %54, %52 ], [ %21, %17 ]
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 2, !dbg !1776
  %26 = load i32, i32* %25, align 4, !dbg !1776, !tbaa !300
  %27 = and i32 %26, 1, !dbg !1780
  %28 = icmp eq i32 %27, 0, !dbg !1780
  br i1 %28, label %52, label %29, !dbg !1781

29:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 0, metadata !1742, metadata !DIExpression()), !dbg !1745
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 5, !dbg !1782
  %31 = load i32, i32* %30, align 8, !dbg !1782, !tbaa !309
  %32 = icmp sgt i32 %31, 0, !dbg !1786
  br i1 %32, label %33, label %52, !dbg !1787

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 7, !dbg !1788
  br label %35, !dbg !1787

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %48, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !1742, metadata !DIExpression()), !dbg !1745
  %37 = load %struct.residue_t**, %struct.residue_t*** %34, align 8, !dbg !1790, !tbaa !314
  %38 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %37, i64 %36, !dbg !1791
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8, !dbg !1791, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %39, metadata !1744, metadata !DIExpression()), !dbg !1745
  %40 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i64 0, i32 4, !dbg !1792
  %41 = load i8*, i8** %40, align 8, !dbg !1792, !tbaa !1341
  %42 = tail call i32 @step(i8* %41, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1793
  %43 = icmp ne i32 %42, 0, !dbg !1793
  %44 = zext i1 %43 to i32, !dbg !1793
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i64 0, i32 6, !dbg !1794
  %46 = load i32, i32* %45, align 8, !dbg !1795, !tbaa !318
  %47 = or i32 %46, %44, !dbg !1795
  store i32 %47, i32* %45, align 8, !dbg !1795, !tbaa !318
  %48 = add nuw nsw i64 %36, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %48, metadata !1742, metadata !DIExpression()), !dbg !1745
  %49 = load i32, i32* %30, align 8, !dbg !1782, !tbaa !309
  %50 = sext i32 %49 to i64, !dbg !1786
  %51 = icmp slt i64 %48, %50, !dbg !1786
  br i1 %51, label %35, label %52, !dbg !1787, !llvm.loop !1797

52:                                               ; preds = %35, %29, %23
  %53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 4, !dbg !1799
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1743, metadata !DIExpression()), !dbg !1745
  %54 = load %struct.strand_t*, %struct.strand_t** %53, align 8, !dbg !1774, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %54, metadata !1743, metadata !DIExpression()), !dbg !1745
  %55 = icmp eq %struct.strand_t* %54, null, !dbg !1775
  br i1 %55, label %56, label %23, !dbg !1775, !llvm.loop !1800

56:                                               ; preds = %52, %17
  ret void, !dbg !1802
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_atom_pat(%struct.molecule_t* nocapture readonly %0, i8* nocapture readonly %1) unnamed_addr #0 !dbg !1803 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1805, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8* %1, metadata !1806, metadata !DIExpression()), !dbg !1812
  tail call fastcc void @aexpr2rexpr(i8* %1), !dbg !1813
  %3 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1814
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1815
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1809, metadata !DIExpression()), !dbg !1812
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1817, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1809, metadata !DIExpression()), !dbg !1812
  %6 = icmp eq %struct.strand_t* %5, null, !dbg !1818
  br i1 %6, label %61, label %7, !dbg !1818

7:                                                ; preds = %2, %57
  %8 = phi %struct.strand_t* [ %59, %57 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 2, !dbg !1819
  %10 = load i32, i32* %9, align 4, !dbg !1819, !tbaa !300
  %11 = and i32 %10, 1, !dbg !1823
  %12 = icmp eq i32 %11, 0, !dbg !1823
  br i1 %12, label %57, label %13, !dbg !1824

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1807, metadata !DIExpression()), !dbg !1812
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 5, !dbg !1825
  %15 = load i32, i32* %14, align 8, !dbg !1825, !tbaa !309
  %16 = icmp sgt i32 %15, 0, !dbg !1829
  br i1 %16, label %17, label %57, !dbg !1830

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 7, !dbg !1831
  br label %19, !dbg !1830

19:                                               ; preds = %17, %52
  %20 = phi i32 [ %15, %17 ], [ %53, %52 ]
  %21 = phi i64 [ 0, %17 ], [ %54, %52 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1807, metadata !DIExpression()), !dbg !1812
  %22 = load %struct.residue_t**, %struct.residue_t*** %18, align 8, !dbg !1833, !tbaa !314
  %23 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %22, i64 %21, !dbg !1834
  %24 = load %struct.residue_t*, %struct.residue_t** %23, align 8, !dbg !1834, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %24, metadata !1810, metadata !DIExpression()), !dbg !1812
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 6, !dbg !1835
  %26 = load i32, i32* %25, align 8, !dbg !1835, !tbaa !318
  %27 = and i32 %26, 1, !dbg !1837
  %28 = icmp eq i32 %27, 0, !dbg !1837
  br i1 %28, label %52, label %29, !dbg !1838

29:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !1808, metadata !DIExpression()), !dbg !1812
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 15, !dbg !1839
  %31 = load i32, i32* %30, align 8, !dbg !1839, !tbaa !326
  %32 = icmp sgt i32 %31, 0, !dbg !1843
  br i1 %32, label %33, label %52, !dbg !1844

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 17, !dbg !1845
  br label %35, !dbg !1844

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !1808, metadata !DIExpression()), !dbg !1812
  %37 = load %struct.atom_t*, %struct.atom_t** %34, align 8, !dbg !1847, !tbaa !331
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1811, metadata !DIExpression()), !dbg !1812
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %36, i32 0, !dbg !1848
  %39 = load i8*, i8** %38, align 8, !dbg !1848, !tbaa !1481
  %40 = tail call i32 @step(i8* %39, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1849
  %41 = icmp ne i32 %40, 0, !dbg !1849
  %42 = zext i1 %41 to i32, !dbg !1849
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %36, i32 2, !dbg !1850
  %44 = load i32, i32* %43, align 8, !dbg !1851, !tbaa !334
  %45 = or i32 %44, %42, !dbg !1851
  store i32 %45, i32* %43, align 8, !dbg !1851, !tbaa !334
  %46 = add nuw nsw i64 %36, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %46, metadata !1808, metadata !DIExpression()), !dbg !1812
  %47 = load i32, i32* %30, align 8, !dbg !1839, !tbaa !326
  %48 = sext i32 %47 to i64, !dbg !1843
  %49 = icmp slt i64 %46, %48, !dbg !1843
  br i1 %49, label %35, label %50, !dbg !1844, !llvm.loop !1853

50:                                               ; preds = %35
  %51 = load i32, i32* %14, align 8, !dbg !1825, !tbaa !309
  br label %52, !dbg !1855

52:                                               ; preds = %50, %29, %19
  %53 = phi i32 [ %51, %50 ], [ %20, %29 ], [ %20, %19 ], !dbg !1825
  %54 = add nuw nsw i64 %21, 1, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %54, metadata !1807, metadata !DIExpression()), !dbg !1812
  %55 = sext i32 %53 to i64, !dbg !1829
  %56 = icmp slt i64 %54, %55, !dbg !1829
  br i1 %56, label %19, label %57, !dbg !1830, !llvm.loop !1856

57:                                               ; preds = %52, %13, %7
  %58 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 4, !dbg !1858
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1809, metadata !DIExpression()), !dbg !1812
  %59 = load %struct.strand_t*, %struct.strand_t** %58, align 8, !dbg !1817, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %59, metadata !1809, metadata !DIExpression()), !dbg !1812
  %60 = icmp eq %struct.strand_t* %59, null, !dbg !1818
  br i1 %60, label %61, label %7, !dbg !1818, !llvm.loop !1859

61:                                               ; preds = %57, %2
  ret void, !dbg !1861
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc void @aexpr2rexpr(i8* nocapture readonly %0) unnamed_addr #5 !dbg !620 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !619, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !624, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !626, metadata !DIExpression()), !dbg !1862
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1863, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %0, metadata !625, metadata !DIExpression()), !dbg !1862
  br label %2, !dbg !1864

2:                                                ; preds = %13, %1
  %3 = phi i8* [ %0, %1 ], [ %15, %13 ], !dbg !1865
  %4 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %1 ], [ %14, %13 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8* %4, metadata !626, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %3, metadata !625, metadata !DIExpression()), !dbg !1862
  %5 = load i8, i8* %3, align 1, !dbg !1866, !tbaa !574
  switch i8 %5, label %11 [
    i8 0, label %16
    i8 42, label %6
    i8 63, label %9
  ], !dbg !1867

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1868
  call void @llvm.dbg.value(metadata i8* %7, metadata !626, metadata !DIExpression()), !dbg !1862
  store i8 46, i8* %4, align 1, !dbg !1869, !tbaa !574
  %8 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %8, metadata !626, metadata !DIExpression()), !dbg !1862
  store i8 42, i8* %7, align 1, !dbg !1871, !tbaa !574
  br label %13, !dbg !1872

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1873
  call void @llvm.dbg.value(metadata i8* %10, metadata !626, metadata !DIExpression()), !dbg !1862
  store i8 46, i8* %4, align 1, !dbg !1874, !tbaa !574
  br label %13, !dbg !1875

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1876
  call void @llvm.dbg.value(metadata i8* %12, metadata !626, metadata !DIExpression()), !dbg !1862
  store i8 %5, i8* %4, align 1, !dbg !1877, !tbaa !574
  br label %13

13:                                               ; preds = %6, %11, %9
  %14 = phi i8* [ %8, %6 ], [ %10, %9 ], [ %12, %11 ], !dbg !1878
  call void @llvm.dbg.value(metadata i8* %14, metadata !626, metadata !DIExpression()), !dbg !1862
  %15 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1879
  call void @llvm.dbg.value(metadata i8* %15, metadata !625, metadata !DIExpression()), !dbg !1862
  br label %2, !dbg !1880, !llvm.loop !1881

16:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !626, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %4, metadata !626, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %4, metadata !626, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %4, metadata !626, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %4, metadata !626, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %4, metadata !626, metadata !DIExpression()), !dbg !1862
  %17 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1883
  call void @llvm.dbg.value(metadata i8* %17, metadata !626, metadata !DIExpression()), !dbg !1862
  store i8 36, i8* %4, align 1, !dbg !1884, !tbaa !574
  store i8 0, i8* %17, align 1, !dbg !1885, !tbaa !574
  ret void, !dbg !1886
}

declare !dbg !243 dso_local i8* @compile(i8*, i8*, i8*, i32) local_unnamed_addr #8

declare !dbg !247 dso_local i32 @step(i8*, i8*) local_unnamed_addr #8

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
!llvm.module.flags = !{!264, !265, !266}
!llvm.ident = !{!267}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aexpr", scope: !2, file: !23, line: 14, type: !259, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !250, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/select_atoms.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files")
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
!21 = !{!22, !241, !26, !242, !243, !247}
!22 = !DISubprogram(name: "select_atoms", scope: !23, file: !23, line: 29, type: !24, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !240)
!23 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/select_atoms.c", directory: "/home/rouzbeh/Graduate/Research")
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27, !239}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !29, line: 118, size: 1088, elements: !30)
!29 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/Research")
!30 = !{!31, !38, !40, !133, !134, !135, !136}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !28, file: !29, line: 119, baseType: !32, size: 768)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !29, line: 13, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 768, elements: !35)
!34 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!35 = !{!36, !37}
!36 = !DISubrange(count: 4)
!37 = !DISubrange(count: 3)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !28, file: !29, line: 120, baseType: !39, size: 32, offset: 768)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !29, line: 6, baseType: !26)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !28, file: !29, line: 121, baseType: !41, size: 64, offset: 832)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !29, line: 93, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !29, line: 84, size: 384, elements: !44)
!44 = !{!45, !49, !50, !51, !52, !54, !55, !56}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !43, file: !29, line: 85, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !29, line: 17, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !43, file: !29, line: 86, baseType: !39, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !43, file: !29, line: 87, baseType: !39, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !43, file: !29, line: 88, baseType: !27, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !43, file: !29, line: 89, baseType: !53, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !43, file: !29, line: 90, baseType: !39, size: 32, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !43, file: !29, line: 91, baseType: !39, size: 32, offset: 288)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !43, file: !29, line: 92, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !29, line: 82, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !29, line: 63, size: 1024, elements: !61)
!61 = !{!62, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !83, !84, !90, !91, !100, !101, !103}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !60, file: !29, line: 64, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !60, file: !29, line: 65, baseType: !39, size: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !60, file: !29, line: 66, baseType: !39, size: 32, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !60, file: !29, line: 67, baseType: !39, size: 32, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !60, file: !29, line: 68, baseType: !46, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !60, file: !29, line: 69, baseType: !46, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !60, file: !29, line: 70, baseType: !39, size: 32, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !60, file: !29, line: 71, baseType: !39, size: 32, offset: 352)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !60, file: !29, line: 72, baseType: !39, size: 32, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !60, file: !29, line: 73, baseType: !53, size: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !60, file: !29, line: 74, baseType: !74, size: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !29, line: 52, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !29, line: 47, size: 192, elements: !77)
!77 = !{!78, !80, !81, !82}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !76, file: !29, line: 48, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !76, file: !29, line: 49, baseType: !39, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !76, file: !29, line: 50, baseType: !39, size: 32, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !76, file: !29, line: 51, baseType: !39, size: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !60, file: !29, line: 75, baseType: !39, size: 32, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !60, file: !29, line: 76, baseType: !85, size: 64, offset: 640)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !29, line: 54, baseType: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 2)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !60, file: !29, line: 77, baseType: !39, size: 32, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !60, file: !29, line: 78, baseType: !92, size: 64, offset: 768)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !29, line: 61, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !29, line: 58, size: 192, elements: !95)
!95 = !{!96, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !94, file: !29, line: 59, baseType: !97, size: 128)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !98)
!98 = !{!36}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !94, file: !29, line: 60, baseType: !34, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !60, file: !29, line: 79, baseType: !39, size: 32, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !60, file: !29, line: 80, baseType: !102, size: 64, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !60, file: !29, line: 81, baseType: !104, size: 64, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !29, line: 45, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !29, line: 25, size: 1408, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !132}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !106, file: !29, line: 26, baseType: !46, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !106, file: !29, line: 27, baseType: !46, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !106, file: !29, line: 28, baseType: !39, size: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !106, file: !29, line: 29, baseType: !39, size: 32, offset: 160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !106, file: !29, line: 30, baseType: !113, size: 256, offset: 192)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !106, file: !29, line: 31, baseType: !63, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !106, file: !29, line: 32, baseType: !34, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !106, file: !29, line: 33, baseType: !34, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !106, file: !29, line: 34, baseType: !34, size: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !106, file: !29, line: 35, baseType: !34, size: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !106, file: !29, line: 36, baseType: !46, size: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !106, file: !29, line: 37, baseType: !39, size: 32, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !106, file: !29, line: 38, baseType: !34, size: 64, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !106, file: !29, line: 39, baseType: !34, size: 64, offset: 960)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !106, file: !29, line: 40, baseType: !39, size: 32, offset: 1024)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !106, file: !29, line: 41, baseType: !39, size: 32, offset: 1056)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !106, file: !29, line: 42, baseType: !46, size: 64, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !106, file: !29, line: 43, baseType: !129, size: 192, offset: 1152)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !29, line: 12, baseType: !130)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 192, elements: !131)
!131 = !{!37}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !106, file: !29, line: 44, baseType: !34, size: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !28, file: !29, line: 122, baseType: !39, size: 32, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !28, file: !29, line: 123, baseType: !39, size: 32, offset: 928)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !28, file: !29, line: 124, baseType: !39, size: 32, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !28, file: !29, line: 125, baseType: !137, size: 64, offset: 1024)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !29, line: 115, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !29, line: 95, size: 5760, elements: !140)
!140 = !{!141, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !139, file: !29, line: 96, baseType: !142, size: 648)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 648, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 81)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !139, file: !29, line: 97, baseType: !39, size: 32, offset: 672)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !139, file: !29, line: 97, baseType: !39, size: 32, offset: 704)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !139, file: !29, line: 97, baseType: !39, size: 32, offset: 736)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !139, file: !29, line: 98, baseType: !39, size: 32, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !139, file: !29, line: 98, baseType: !39, size: 32, offset: 800)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !139, file: !29, line: 98, baseType: !39, size: 32, offset: 832)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !139, file: !29, line: 98, baseType: !39, size: 32, offset: 864)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !139, file: !29, line: 98, baseType: !39, size: 32, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !139, file: !29, line: 98, baseType: !39, size: 32, offset: 928)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !139, file: !29, line: 99, baseType: !39, size: 32, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !139, file: !29, line: 99, baseType: !39, size: 32, offset: 992)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !139, file: !29, line: 99, baseType: !39, size: 32, offset: 1024)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !139, file: !29, line: 99, baseType: !39, size: 32, offset: 1056)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !139, file: !29, line: 99, baseType: !39, size: 32, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !139, file: !29, line: 99, baseType: !39, size: 32, offset: 1120)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !139, file: !29, line: 100, baseType: !39, size: 32, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !139, file: !29, line: 100, baseType: !39, size: 32, offset: 1184)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !139, file: !29, line: 100, baseType: !39, size: 32, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !139, file: !29, line: 100, baseType: !39, size: 32, offset: 1248)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !139, file: !29, line: 100, baseType: !39, size: 32, offset: 1280)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !139, file: !29, line: 100, baseType: !39, size: 32, offset: 1312)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !139, file: !29, line: 101, baseType: !39, size: 32, offset: 1344)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !139, file: !29, line: 101, baseType: !39, size: 32, offset: 1376)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !139, file: !29, line: 101, baseType: !39, size: 32, offset: 1408)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !139, file: !29, line: 101, baseType: !39, size: 32, offset: 1440)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !139, file: !29, line: 101, baseType: !39, size: 32, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !139, file: !29, line: 101, baseType: !39, size: 32, offset: 1504)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !139, file: !29, line: 101, baseType: !39, size: 32, offset: 1536)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !139, file: !29, line: 101, baseType: !39, size: 32, offset: 1568)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !139, file: !29, line: 102, baseType: !39, size: 32, offset: 1600)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !139, file: !29, line: 102, baseType: !39, size: 32, offset: 1632)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !139, file: !29, line: 102, baseType: !39, size: 32, offset: 1664)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !139, file: !29, line: 103, baseType: !46, size: 64, offset: 1728)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !139, file: !29, line: 103, baseType: !46, size: 64, offset: 1792)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !139, file: !29, line: 103, baseType: !46, size: 64, offset: 1856)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !139, file: !29, line: 103, baseType: !46, size: 64, offset: 1920)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !139, file: !29, line: 104, baseType: !182, size: 64, offset: 1984)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !139, file: !29, line: 104, baseType: !182, size: 64, offset: 2048)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !139, file: !29, line: 104, baseType: !182, size: 64, offset: 2112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !139, file: !29, line: 104, baseType: !182, size: 64, offset: 2176)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !139, file: !29, line: 104, baseType: !182, size: 64, offset: 2240)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !139, file: !29, line: 104, baseType: !182, size: 64, offset: 2304)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !139, file: !29, line: 104, baseType: !182, size: 64, offset: 2368)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !139, file: !29, line: 104, baseType: !182, size: 64, offset: 2432)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !139, file: !29, line: 104, baseType: !182, size: 64, offset: 2496)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !139, file: !29, line: 105, baseType: !182, size: 64, offset: 2560)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !139, file: !29, line: 105, baseType: !182, size: 64, offset: 2624)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !139, file: !29, line: 105, baseType: !182, size: 64, offset: 2688)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !139, file: !29, line: 105, baseType: !182, size: 64, offset: 2752)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !139, file: !29, line: 105, baseType: !182, size: 64, offset: 2816)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !139, file: !29, line: 105, baseType: !182, size: 64, offset: 2880)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !139, file: !29, line: 105, baseType: !182, size: 64, offset: 2944)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !139, file: !29, line: 106, baseType: !130, size: 192, offset: 3008)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !139, file: !29, line: 106, baseType: !34, size: 64, offset: 3200)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !139, file: !29, line: 106, baseType: !34, size: 64, offset: 3264)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !139, file: !29, line: 106, baseType: !34, size: 64, offset: 3328)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !139, file: !29, line: 106, baseType: !34, size: 64, offset: 3392)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !139, file: !29, line: 106, baseType: !34, size: 64, offset: 3456)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !139, file: !29, line: 107, baseType: !102, size: 64, offset: 3520)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !139, file: !29, line: 107, baseType: !102, size: 64, offset: 3584)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !139, file: !29, line: 107, baseType: !102, size: 64, offset: 3648)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !139, file: !29, line: 107, baseType: !102, size: 64, offset: 3712)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !139, file: !29, line: 107, baseType: !102, size: 64, offset: 3776)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !139, file: !29, line: 107, baseType: !102, size: 64, offset: 3840)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !139, file: !29, line: 108, baseType: !102, size: 64, offset: 3904)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !139, file: !29, line: 108, baseType: !102, size: 64, offset: 3968)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !139, file: !29, line: 108, baseType: !102, size: 64, offset: 4032)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !139, file: !29, line: 108, baseType: !102, size: 64, offset: 4096)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !139, file: !29, line: 108, baseType: !102, size: 64, offset: 4160)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !139, file: !29, line: 108, baseType: !102, size: 64, offset: 4224)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !139, file: !29, line: 109, baseType: !102, size: 64, offset: 4288)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !139, file: !29, line: 109, baseType: !102, size: 64, offset: 4352)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !139, file: !29, line: 109, baseType: !102, size: 64, offset: 4416)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !139, file: !29, line: 109, baseType: !102, size: 64, offset: 4480)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !139, file: !29, line: 109, baseType: !102, size: 64, offset: 4544)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !139, file: !29, line: 110, baseType: !102, size: 64, offset: 4608)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !139, file: !29, line: 110, baseType: !102, size: 64, offset: 4672)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !139, file: !29, line: 110, baseType: !102, size: 64, offset: 4736)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !139, file: !29, line: 110, baseType: !102, size: 64, offset: 4800)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !139, file: !29, line: 110, baseType: !102, size: 64, offset: 4864)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !139, file: !29, line: 111, baseType: !102, size: 64, offset: 4928)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !139, file: !29, line: 111, baseType: !102, size: 64, offset: 4992)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !139, file: !29, line: 111, baseType: !102, size: 64, offset: 5056)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !139, file: !29, line: 111, baseType: !102, size: 64, offset: 5120)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !139, file: !29, line: 111, baseType: !102, size: 64, offset: 5184)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !139, file: !29, line: 111, baseType: !102, size: 64, offset: 5248)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !139, file: !29, line: 112, baseType: !102, size: 64, offset: 5312)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !139, file: !29, line: 112, baseType: !102, size: 64, offset: 5376)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !139, file: !29, line: 112, baseType: !102, size: 64, offset: 5440)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !139, file: !29, line: 112, baseType: !102, size: 64, offset: 5504)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !139, file: !29, line: 113, baseType: !102, size: 64, offset: 5568)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !139, file: !29, line: 113, baseType: !102, size: 64, offset: 5632)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !139, file: !29, line: 114, baseType: !182, size: 64, offset: 5696)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!240 = !{}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!242 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!243 = !DISubprogram(name: "compile", scope: !244, file: !244, line: 257, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !240)
!244 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nab.h", directory: "/home/rouzbeh/Graduate/Research")
!245 = !DISubroutineType(types: !246)
!246 = !{!239, !239, !239, !239, !26}
!247 = !DISubprogram(name: "step", scope: !244, file: !244, line: 258, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !240)
!248 = !DISubroutineType(types: !249)
!249 = !{!26, !239, !239}
!250 = !{!0, !251, !253, !255, !257, !262}
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "spart", scope: !2, file: !23, line: 15, type: !239, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "rpart", scope: !2, file: !23, line: 16, type: !239, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "apart", scope: !2, file: !23, line: 17, type: !239, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "rexpr", scope: !2, file: !23, line: 20, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8000, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 1000)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "expbuf", scope: !2, file: !23, line: 26, type: !259, isLocal: true, isDefinition: true)
!264 = !{i32 7, !"Dwarf Version", i32 4}
!265 = !{i32 2, !"Debug Info Version", i32 3}
!266 = !{i32 1, !"wchar_size", i32 4}
!267 = !{!"clang version 10.0.0-4ubuntu1 "}
!268 = distinct !DISubprogram(name: "setpoint", scope: !23, file: !23, line: 54, type: !269, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !273)
!269 = !DISubroutineType(types: !270)
!270 = !{!26, !271, !239, !182}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !29, line: 126, baseType: !28)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!274 = !DILocalVariable(name: "mol", arg: 1, scope: !268, file: !23, line: 54, type: !271)
!275 = !DILocalVariable(name: "aexpr", arg: 2, scope: !268, file: !23, line: 54, type: !239)
!276 = !DILocalVariable(name: "point", arg: 3, scope: !268, file: !23, line: 54, type: !182)
!277 = !DILocalVariable(name: "r", scope: !268, file: !23, line: 56, type: !26)
!278 = !DILocalVariable(name: "a", scope: !268, file: !23, line: 56, type: !26)
!279 = !DILocalVariable(name: "ta", scope: !268, file: !23, line: 56, type: !26)
!280 = !DILocalVariable(name: "sp", scope: !268, file: !23, line: 57, type: !41)
!281 = !DILocalVariable(name: "res", scope: !268, file: !23, line: 58, type: !58)
!282 = !DILocalVariable(name: "ap", scope: !268, file: !23, line: 59, type: !104)
!283 = !DILocalVariable(name: "x", scope: !268, file: !23, line: 60, type: !34)
!284 = !DILocalVariable(name: "y", scope: !268, file: !23, line: 60, type: !34)
!285 = !DILocalVariable(name: "z", scope: !268, file: !23, line: 60, type: !34)
!286 = !DILocation(line: 0, scope: !268)
!287 = !DILocation(line: 62, column: 2, scope: !268)
!288 = !DILocation(line: 66, column: 25, scope: !289)
!289 = distinct !DILexicalBlock(scope: !268, file: !23, line: 66, column: 2)
!290 = !DILocation(line: 0, scope: !289)
!291 = !{!292, !292, i64 0}
!292 = !{!"any pointer", !293, i64 0}
!293 = !{!"omnipotent char", !294, i64 0}
!294 = !{!"Simple C/C++ TBAA"}
!295 = !DILocation(line: 66, column: 2, scope: !289)
!296 = !DILocation(line: 67, column: 23, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !23, line: 67, column: 7)
!298 = distinct !DILexicalBlock(scope: !299, file: !23, line: 66, column: 57)
!299 = distinct !DILexicalBlock(scope: !289, file: !23, line: 66, column: 2)
!300 = !{!301, !302, i64 12}
!301 = !{!"strand_t", !292, i64 0, !302, i64 8, !302, i64 12, !292, i64 16, !292, i64 24, !302, i64 32, !302, i64 36, !292, i64 40}
!302 = !{!"int", !293, i64 0}
!303 = !DILocation(line: 67, column: 17, scope: !297)
!304 = !DILocation(line: 67, column: 7, scope: !298)
!305 = !DILocation(line: 68, column: 24, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !23, line: 68, column: 4)
!307 = distinct !DILexicalBlock(scope: !308, file: !23, line: 68, column: 4)
!308 = distinct !DILexicalBlock(scope: !297, file: !23, line: 67, column: 31)
!309 = !{!301, !302, i64 32}
!310 = !DILocation(line: 68, column: 18, scope: !306)
!311 = !DILocation(line: 68, column: 4, scope: !307)
!312 = !DILocation(line: 0, scope: !313)
!313 = distinct !DILexicalBlock(scope: !306, file: !23, line: 68, column: 42)
!314 = !{!301, !292, i64 40}
!315 = !DILocation(line: 69, column: 11, scope: !313)
!316 = !DILocation(line: 70, column: 26, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !23, line: 70, column: 9)
!318 = !{!319, !302, i64 40}
!319 = !{!"residue_t", !292, i64 0, !302, i64 8, !302, i64 12, !302, i64 16, !292, i64 24, !292, i64 32, !302, i64 40, !302, i64 44, !302, i64 48, !292, i64 56, !292, i64 64, !302, i64 72, !292, i64 80, !302, i64 88, !292, i64 96, !302, i64 104, !292, i64 112, !292, i64 120}
!320 = !DILocation(line: 70, column: 19, scope: !317)
!321 = !DILocation(line: 70, column: 9, scope: !313)
!322 = !DILocation(line: 71, column: 27, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !23, line: 71, column: 6)
!324 = distinct !DILexicalBlock(scope: !325, file: !23, line: 71, column: 6)
!325 = distinct !DILexicalBlock(scope: !317, file: !23, line: 70, column: 34)
!326 = !{!319, !302, i64 104}
!327 = !DILocation(line: 71, column: 20, scope: !323)
!328 = !DILocation(line: 71, column: 6, scope: !324)
!329 = !DILocation(line: 0, scope: !330)
!330 = distinct !DILexicalBlock(scope: !323, file: !23, line: 71, column: 42)
!331 = !{!319, !292, i64 120}
!332 = !DILocation(line: 73, column: 27, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !23, line: 73, column: 11)
!334 = !{!335, !302, i64 16}
!335 = !{!"atom_t", !292, i64 0, !292, i64 8, !302, i64 16, !302, i64 20, !293, i64 24, !292, i64 56, !336, i64 64, !336, i64 72, !336, i64 80, !336, i64 88, !292, i64 96, !302, i64 104, !336, i64 112, !336, i64 120, !302, i64 128, !302, i64 132, !292, i64 136, !293, i64 144, !336, i64 168}
!336 = !{!"double", !293, i64 0}
!337 = !DILocation(line: 73, column: 21, scope: !333)
!338 = !DILocation(line: 73, column: 11, scope: !330)
!339 = !DILocation(line: 74, column: 13, scope: !340)
!340 = distinct !DILexicalBlock(scope: !333, file: !23, line: 73, column: 35)
!341 = !{!336, !336, i64 0}
!342 = !DILocation(line: 74, column: 10, scope: !340)
!343 = !DILocation(line: 76, column: 13, scope: !340)
!344 = !DILocation(line: 76, column: 10, scope: !340)
!345 = !DILocation(line: 77, column: 10, scope: !340)
!346 = !DILocation(line: 78, column: 7, scope: !340)
!347 = !DILocation(line: 71, column: 38, scope: !323)
!348 = distinct !{!348, !328, !349}
!349 = !DILocation(line: 79, column: 6, scope: !324)
!350 = !DILocation(line: 66, column: 10, scope: !289)
!351 = !DILocation(line: 65, column: 12, scope: !268)
!352 = !DILocation(line: 65, column: 4, scope: !268)
!353 = !DILocation(line: 68, column: 38, scope: !306)
!354 = distinct !{!354, !311, !355}
!355 = !DILocation(line: 81, column: 4, scope: !307)
!356 = !DILocation(line: 66, column: 49, scope: !299)
!357 = distinct !{!357, !295, !358}
!358 = !DILocation(line: 83, column: 2, scope: !289)
!359 = !DILocation(line: 85, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !268, file: !23, line: 85, column: 6)
!361 = !DILocation(line: 85, column: 6, scope: !268)
!362 = !DILocation(line: 86, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !23, line: 85, column: 15)
!364 = !DILocation(line: 86, column: 3, scope: !363)
!365 = !DILocation(line: 87, column: 3, scope: !363)
!366 = !DILocation(line: 89, column: 20, scope: !367)
!367 = distinct !DILexicalBlock(scope: !360, file: !23, line: 88, column: 7)
!368 = !DILocation(line: 89, column: 18, scope: !367)
!369 = !DILocation(line: 89, column: 14, scope: !367)
!370 = !DILocation(line: 91, column: 18, scope: !367)
!371 = !DILocation(line: 91, column: 3, scope: !367)
!372 = !DILocation(line: 91, column: 14, scope: !367)
!373 = !DILocation(line: 94, column: 2, scope: !268)
!374 = !DILocation(line: 95, column: 1, scope: !268)
!375 = distinct !DISubprogram(name: "select_atoms", scope: !23, file: !23, line: 97, type: !376, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!376 = !DISubroutineType(types: !377)
!377 = !{!26, !271, !239}
!378 = !{!379, !380, !381, !382, !383}
!379 = !DILocalVariable(name: "mol", arg: 1, scope: !375, file: !23, line: 97, type: !271)
!380 = !DILocalVariable(name: "aex", arg: 2, scope: !375, file: !23, line: 97, type: !239)
!381 = !DILocalVariable(name: "aep", scope: !375, file: !23, line: 99, type: !239)
!382 = !DILocalVariable(name: "n_aep", scope: !375, file: !23, line: 99, type: !239)
!383 = !DILocalVariable(name: "ael", scope: !375, file: !23, line: 100, type: !26)
!384 = !DILocation(line: 0, scope: !375)
!385 = !DILocation(line: 102, column: 10, scope: !386)
!386 = distinct !DILexicalBlock(scope: !375, file: !23, line: 102, column: 6)
!387 = !DILocation(line: 102, column: 6, scope: !375)
!388 = !DILocalVariable(name: "mol", arg: 1, scope: !389, file: !23, line: 398, type: !271)
!389 = distinct !DISubprogram(name: "select_all", scope: !23, file: !23, line: 398, type: !390, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !271}
!392 = !{!388, !393, !394, !395, !396}
!393 = !DILocalVariable(name: "a", scope: !389, file: !23, line: 400, type: !26)
!394 = !DILocalVariable(name: "r", scope: !389, file: !23, line: 400, type: !26)
!395 = !DILocalVariable(name: "sp", scope: !389, file: !23, line: 401, type: !41)
!396 = !DILocalVariable(name: "res", scope: !389, file: !23, line: 402, type: !58)
!397 = !DILocation(line: 0, scope: !389, inlinedAt: !398)
!398 = distinct !DILocation(line: 103, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !386, file: !23, line: 102, column: 19)
!400 = !DILocation(line: 404, column: 2, scope: !401, inlinedAt: !398)
!401 = distinct !DILexicalBlock(scope: !389, file: !23, line: 404, column: 2)
!402 = !DILocation(line: 405, column: 7, scope: !403, inlinedAt: !398)
!403 = distinct !DILexicalBlock(scope: !404, file: !23, line: 404, column: 49)
!404 = distinct !DILexicalBlock(scope: !401, file: !23, line: 404, column: 2)
!405 = !DILocation(line: 405, column: 14, scope: !403, inlinedAt: !398)
!406 = !DILocation(line: 406, column: 23, scope: !407, inlinedAt: !398)
!407 = distinct !DILexicalBlock(scope: !408, file: !23, line: 406, column: 3)
!408 = distinct !DILexicalBlock(scope: !403, file: !23, line: 406, column: 3)
!409 = !DILocation(line: 406, column: 17, scope: !407, inlinedAt: !398)
!410 = !DILocation(line: 406, column: 3, scope: !408, inlinedAt: !398)
!411 = !DILocation(line: 0, scope: !412, inlinedAt: !398)
!412 = distinct !DILexicalBlock(scope: !407, file: !23, line: 406, column: 41)
!413 = !DILocation(line: 407, column: 10, scope: !412, inlinedAt: !398)
!414 = !DILocation(line: 408, column: 9, scope: !412, inlinedAt: !398)
!415 = !DILocation(line: 408, column: 16, scope: !412, inlinedAt: !398)
!416 = !DILocation(line: 409, column: 25, scope: !417, inlinedAt: !398)
!417 = distinct !DILexicalBlock(scope: !418, file: !23, line: 409, column: 4)
!418 = distinct !DILexicalBlock(scope: !412, file: !23, line: 409, column: 4)
!419 = !DILocation(line: 409, column: 18, scope: !417, inlinedAt: !398)
!420 = !DILocation(line: 409, column: 4, scope: !418, inlinedAt: !398)
!421 = !DILocation(line: 0, scope: !417, inlinedAt: !398)
!422 = !DILocation(line: 410, column: 23, scope: !417, inlinedAt: !398)
!423 = !DILocation(line: 410, column: 30, scope: !417, inlinedAt: !398)
!424 = !DILocation(line: 409, column: 36, scope: !417, inlinedAt: !398)
!425 = distinct !{!425, !420, !426}
!426 = !DILocation(line: 410, column: 33, scope: !418, inlinedAt: !398)
!427 = distinct !{!427, !428}
!428 = !{!"llvm.loop.unroll.disable"}
!429 = !DILocation(line: 406, column: 37, scope: !407, inlinedAt: !398)
!430 = distinct !{!430, !410, !431}
!431 = !DILocation(line: 411, column: 3, scope: !408, inlinedAt: !398)
!432 = !DILocation(line: 404, column: 41, scope: !404, inlinedAt: !398)
!433 = !DILocation(line: 0, scope: !401, inlinedAt: !398)
!434 = distinct !{!434, !400, !435}
!435 = !DILocation(line: 412, column: 2, scope: !401, inlinedAt: !398)
!436 = !DILocalVariable(name: "mol", arg: 1, scope: !437, file: !23, line: 432, type: !271)
!437 = distinct !DISubprogram(name: "clear_work", scope: !23, file: !23, line: 432, type: !390, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !438)
!438 = !{!436, !439, !440, !441, !442}
!439 = !DILocalVariable(name: "a", scope: !437, file: !23, line: 434, type: !26)
!440 = !DILocalVariable(name: "r", scope: !437, file: !23, line: 434, type: !26)
!441 = !DILocalVariable(name: "sp", scope: !437, file: !23, line: 435, type: !41)
!442 = !DILocalVariable(name: "res", scope: !437, file: !23, line: 436, type: !58)
!443 = !DILocation(line: 0, scope: !437, inlinedAt: !444)
!444 = distinct !DILocation(line: 107, column: 2, scope: !375)
!445 = !DILocation(line: 438, column: 2, scope: !446, inlinedAt: !444)
!446 = distinct !DILexicalBlock(scope: !437, file: !23, line: 438, column: 2)
!447 = !DILocation(line: 439, column: 7, scope: !448, inlinedAt: !444)
!448 = distinct !DILexicalBlock(scope: !449, file: !23, line: 438, column: 49)
!449 = distinct !DILexicalBlock(scope: !446, file: !23, line: 438, column: 2)
!450 = !DILocation(line: 439, column: 14, scope: !448, inlinedAt: !444)
!451 = !DILocation(line: 440, column: 23, scope: !452, inlinedAt: !444)
!452 = distinct !DILexicalBlock(scope: !453, file: !23, line: 440, column: 3)
!453 = distinct !DILexicalBlock(scope: !448, file: !23, line: 440, column: 3)
!454 = !DILocation(line: 440, column: 17, scope: !452, inlinedAt: !444)
!455 = !DILocation(line: 440, column: 3, scope: !453, inlinedAt: !444)
!456 = !DILocation(line: 0, scope: !457, inlinedAt: !444)
!457 = distinct !DILexicalBlock(scope: !452, file: !23, line: 440, column: 41)
!458 = !DILocation(line: 441, column: 10, scope: !457, inlinedAt: !444)
!459 = !DILocation(line: 442, column: 9, scope: !457, inlinedAt: !444)
!460 = !DILocation(line: 442, column: 16, scope: !457, inlinedAt: !444)
!461 = !DILocation(line: 443, column: 25, scope: !462, inlinedAt: !444)
!462 = distinct !DILexicalBlock(scope: !463, file: !23, line: 443, column: 4)
!463 = distinct !DILexicalBlock(scope: !457, file: !23, line: 443, column: 4)
!464 = !DILocation(line: 443, column: 18, scope: !462, inlinedAt: !444)
!465 = !DILocation(line: 443, column: 4, scope: !463, inlinedAt: !444)
!466 = !DILocation(line: 0, scope: !462, inlinedAt: !444)
!467 = !DILocation(line: 444, column: 23, scope: !462, inlinedAt: !444)
!468 = !DILocation(line: 444, column: 30, scope: !462, inlinedAt: !444)
!469 = !DILocation(line: 443, column: 36, scope: !462, inlinedAt: !444)
!470 = distinct !{!470, !465, !471}
!471 = !DILocation(line: 444, column: 34, scope: !463, inlinedAt: !444)
!472 = distinct !{!472, !428}
!473 = !DILocation(line: 440, column: 37, scope: !452, inlinedAt: !444)
!474 = distinct !{!474, !455, !475}
!475 = !DILocation(line: 445, column: 3, scope: !453, inlinedAt: !444)
!476 = !DILocation(line: 438, column: 41, scope: !449, inlinedAt: !444)
!477 = !DILocation(line: 0, scope: !446, inlinedAt: !444)
!478 = distinct !{!478, !445, !479}
!479 = !DILocation(line: 446, column: 2, scope: !446, inlinedAt: !444)
!480 = !DILocation(line: 422, column: 7, scope: !481, inlinedAt: !491)
!481 = distinct !DILexicalBlock(scope: !482, file: !23, line: 421, column: 49)
!482 = distinct !DILexicalBlock(scope: !483, file: !23, line: 421, column: 2)
!483 = distinct !DILexicalBlock(scope: !484, file: !23, line: 421, column: 2)
!484 = distinct !DISubprogram(name: "clear_select", scope: !23, file: !23, line: 415, type: !390, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!485 = !{!486, !487, !488, !489, !490}
!486 = !DILocalVariable(name: "mol", arg: 1, scope: !484, file: !23, line: 415, type: !271)
!487 = !DILocalVariable(name: "a", scope: !484, file: !23, line: 417, type: !26)
!488 = !DILocalVariable(name: "r", scope: !484, file: !23, line: 417, type: !26)
!489 = !DILocalVariable(name: "sp", scope: !484, file: !23, line: 418, type: !41)
!490 = !DILocalVariable(name: "res", scope: !484, file: !23, line: 419, type: !58)
!491 = distinct !DILocation(line: 108, column: 2, scope: !375)
!492 = !DILocation(line: 422, column: 14, scope: !481, inlinedAt: !491)
!493 = !DILocation(line: 0, scope: !484, inlinedAt: !491)
!494 = !DILocation(line: 423, column: 23, scope: !495, inlinedAt: !491)
!495 = distinct !DILexicalBlock(scope: !496, file: !23, line: 423, column: 3)
!496 = distinct !DILexicalBlock(scope: !481, file: !23, line: 423, column: 3)
!497 = !DILocation(line: 423, column: 17, scope: !495, inlinedAt: !491)
!498 = !DILocation(line: 423, column: 3, scope: !496, inlinedAt: !491)
!499 = !DILocation(line: 0, scope: !500, inlinedAt: !491)
!500 = distinct !DILexicalBlock(scope: !495, file: !23, line: 423, column: 41)
!501 = !DILocation(line: 424, column: 10, scope: !500, inlinedAt: !491)
!502 = !DILocation(line: 425, column: 9, scope: !500, inlinedAt: !491)
!503 = !DILocation(line: 425, column: 16, scope: !500, inlinedAt: !491)
!504 = !DILocation(line: 426, column: 25, scope: !505, inlinedAt: !491)
!505 = distinct !DILexicalBlock(scope: !506, file: !23, line: 426, column: 4)
!506 = distinct !DILexicalBlock(scope: !500, file: !23, line: 426, column: 4)
!507 = !DILocation(line: 426, column: 18, scope: !505, inlinedAt: !491)
!508 = !DILocation(line: 426, column: 4, scope: !506, inlinedAt: !491)
!509 = !DILocation(line: 0, scope: !505, inlinedAt: !491)
!510 = !DILocation(line: 427, column: 23, scope: !505, inlinedAt: !491)
!511 = !DILocation(line: 427, column: 30, scope: !505, inlinedAt: !491)
!512 = !DILocation(line: 426, column: 36, scope: !505, inlinedAt: !491)
!513 = distinct !{!513, !508, !514}
!514 = !DILocation(line: 427, column: 34, scope: !506, inlinedAt: !491)
!515 = distinct !{!515, !428}
!516 = !DILocation(line: 423, column: 37, scope: !495, inlinedAt: !491)
!517 = distinct !{!517, !498, !518}
!518 = !DILocation(line: 428, column: 3, scope: !496, inlinedAt: !491)
!519 = !DILocation(line: 421, column: 41, scope: !482, inlinedAt: !491)
!520 = !DILocation(line: 0, scope: !483, inlinedAt: !491)
!521 = !DILocation(line: 421, column: 2, scope: !483, inlinedAt: !491)
!522 = distinct !{!522, !521, !523}
!523 = !DILocation(line: 429, column: 2, scope: !483, inlinedAt: !491)
!524 = !DILocation(line: 110, column: 26, scope: !525)
!525 = distinct !DILexicalBlock(scope: !375, file: !23, line: 110, column: 2)
!526 = !DILocation(line: 0, scope: !527, inlinedAt: !535)
!527 = distinct !DISubprogram(name: "eval_1_aexpr", scope: !23, file: !23, line: 204, type: !376, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!528 = !{!529, !530, !531, !532, !533, !534}
!529 = !DILocalVariable(name: "mol", arg: 1, scope: !527, file: !23, line: 204, type: !271)
!530 = !DILocalVariable(name: "aex", arg: 2, scope: !527, file: !23, line: 204, type: !239)
!531 = !DILocalVariable(name: "aep", scope: !527, file: !23, line: 206, type: !239)
!532 = !DILocalVariable(name: "wp", scope: !527, file: !23, line: 207, type: !239)
!533 = !DILocalVariable(name: "lo", scope: !527, file: !23, line: 208, type: !26)
!534 = !DILocalVariable(name: "hi", scope: !527, file: !23, line: 208, type: !26)
!535 = distinct !DILocation(line: 123, column: 3, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !23, line: 110, column: 52)
!537 = distinct !DILexicalBlock(scope: !525, file: !23, line: 110, column: 2)
!538 = !DILocation(line: 0, scope: !539, inlinedAt: !548)
!539 = distinct !DISubprogram(name: "match_str_range", scope: !23, file: !23, line: 529, type: !540, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !271, !26, !26}
!542 = !{!543, !544, !545, !546, !547}
!543 = !DILocalVariable(name: "mol", arg: 1, scope: !539, file: !23, line: 529, type: !271)
!544 = !DILocalVariable(name: "lo", arg: 2, scope: !539, file: !23, line: 529, type: !26)
!545 = !DILocalVariable(name: "hi", arg: 3, scope: !539, file: !23, line: 529, type: !26)
!546 = !DILocalVariable(name: "m", scope: !539, file: !23, line: 531, type: !26)
!547 = !DILocalVariable(name: "sp", scope: !539, file: !23, line: 532, type: !41)
!548 = distinct !DILocation(line: 232, column: 4, scope: !549, inlinedAt: !535)
!549 = distinct !DILexicalBlock(scope: !550, file: !23, line: 229, column: 7)
!550 = distinct !DILexicalBlock(scope: !551, file: !23, line: 227, column: 13)
!551 = distinct !DILexicalBlock(scope: !527, file: !23, line: 227, column: 6)
!552 = !DILocation(line: 110, column: 2, scope: !525)
!553 = !DILocation(line: 111, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !536, file: !23, line: 111, column: 7)
!555 = !DILocation(line: 111, column: 7, scope: !536)
!556 = !DILocation(line: 112, column: 16, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !23, line: 111, column: 14)
!558 = !DILocation(line: 113, column: 9, scope: !557)
!559 = !DILocation(line: 114, column: 3, scope: !557)
!560 = !DILocation(line: 115, column: 10, scope: !554)
!561 = !DILocation(line: 0, scope: !525)
!562 = !DILocation(line: 0, scope: !554)
!563 = !DILocation(line: 116, column: 11, scope: !564)
!564 = distinct !DILexicalBlock(scope: !536, file: !23, line: 116, column: 7)
!565 = !DILocation(line: 116, column: 7, scope: !536)
!566 = !DILocation(line: 117, column: 13, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !23, line: 116, column: 26)
!568 = !DILocation(line: 117, column: 4, scope: !567)
!569 = !DILocation(line: 119, column: 4, scope: !567)
!570 = !DILocation(line: 121, column: 24, scope: !536)
!571 = !DILocation(line: 121, column: 3, scope: !536)
!572 = !DILocation(line: 122, column: 3, scope: !536)
!573 = !DILocation(line: 122, column: 16, scope: !536)
!574 = !{!293, !293, i64 0}
!575 = !DILocation(line: 208, column: 2, scope: !527, inlinedAt: !535)
!576 = !DILocation(line: 211, column: 6, scope: !577, inlinedAt: !535)
!577 = distinct !DILexicalBlock(scope: !527, file: !23, line: 211, column: 6)
!578 = !DILocation(line: 211, column: 11, scope: !577, inlinedAt: !535)
!579 = !DILocation(line: 211, column: 6, scope: !527, inlinedAt: !535)
!580 = !DILocation(line: 212, column: 9, scope: !581, inlinedAt: !535)
!581 = distinct !DILexicalBlock(scope: !577, file: !23, line: 211, column: 19)
!582 = !DILocation(line: 214, column: 2, scope: !581, inlinedAt: !535)
!583 = !DILocation(line: 215, column: 11, scope: !584, inlinedAt: !535)
!584 = distinct !DILexicalBlock(scope: !577, file: !23, line: 214, column: 7)
!585 = !DILocation(line: 215, column: 9, scope: !584, inlinedAt: !535)
!586 = !DILocation(line: 216, column: 10, scope: !584, inlinedAt: !535)
!587 = !DILocation(line: 216, column: 26, scope: !584, inlinedAt: !535)
!588 = !DILocation(line: 216, column: 7, scope: !584, inlinedAt: !535)
!589 = !DILocation(line: 0, scope: !577, inlinedAt: !535)
!590 = !DILocation(line: 218, column: 6, scope: !591, inlinedAt: !535)
!591 = distinct !DILexicalBlock(scope: !527, file: !23, line: 218, column: 6)
!592 = !DILocation(line: 218, column: 11, scope: !591, inlinedAt: !535)
!593 = !DILocation(line: 218, column: 6, scope: !527, inlinedAt: !535)
!594 = !DILocation(line: 219, column: 9, scope: !595, inlinedAt: !535)
!595 = distinct !DILexicalBlock(scope: !591, file: !23, line: 218, column: 19)
!596 = !DILocation(line: 221, column: 2, scope: !595, inlinedAt: !535)
!597 = !DILocation(line: 222, column: 11, scope: !598, inlinedAt: !535)
!598 = distinct !DILexicalBlock(scope: !591, file: !23, line: 221, column: 7)
!599 = !DILocation(line: 222, column: 9, scope: !598, inlinedAt: !535)
!600 = !DILocation(line: 223, column: 10, scope: !598, inlinedAt: !535)
!601 = !DILocation(line: 223, column: 26, scope: !598, inlinedAt: !535)
!602 = !DILocation(line: 0, scope: !591, inlinedAt: !535)
!603 = !DILocation(line: 225, column: 10, scope: !527, inlinedAt: !535)
!604 = !DILocation(line: 225, column: 8, scope: !527, inlinedAt: !535)
!605 = !DILocation(line: 227, column: 6, scope: !551, inlinedAt: !535)
!606 = !DILocation(line: 227, column: 6, scope: !527, inlinedAt: !535)
!607 = !DILocation(line: 228, column: 8, scope: !550, inlinedAt: !535)
!608 = !DILocation(line: 229, column: 7, scope: !549, inlinedAt: !535)
!609 = !DILocation(line: 229, column: 7, scope: !550, inlinedAt: !535)
!610 = !DILocalVariable(name: "mol", arg: 1, scope: !611, file: !23, line: 493, type: !271)
!611 = distinct !DISubprogram(name: "match_str_pat", scope: !23, file: !23, line: 493, type: !612, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !271, !239}
!614 = !{!610, !615, !616}
!615 = !DILocalVariable(name: "pat", arg: 2, scope: !611, file: !23, line: 493, type: !239)
!616 = !DILocalVariable(name: "sp", scope: !611, file: !23, line: 495, type: !41)
!617 = !DILocation(line: 0, scope: !611, inlinedAt: !618)
!618 = distinct !DILocation(line: 230, column: 4, scope: !549, inlinedAt: !535)
!619 = !DILocalVariable(name: "aexpr", arg: 1, scope: !620, file: !23, line: 695, type: !239)
!620 = distinct !DISubprogram(name: "aexpr2rexpr", scope: !23, file: !23, line: 695, type: !621, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !239, !239}
!623 = !{!619, !624, !625, !626}
!624 = !DILocalVariable(name: "rexpr", arg: 2, scope: !620, file: !23, line: 695, type: !239)
!625 = !DILocalVariable(name: "aep", scope: !620, file: !23, line: 697, type: !239)
!626 = !DILocalVariable(name: "rep", scope: !620, file: !23, line: 697, type: !239)
!627 = !DILocation(line: 0, scope: !620, inlinedAt: !628)
!628 = distinct !DILocation(line: 497, column: 2, scope: !611, inlinedAt: !618)
!629 = !DILocation(line: 700, column: 9, scope: !620, inlinedAt: !628)
!630 = !DILocation(line: 701, column: 7, scope: !631, inlinedAt: !628)
!631 = distinct !DILexicalBlock(scope: !620, file: !23, line: 701, column: 2)
!632 = !DILocation(line: 0, scope: !631, inlinedAt: !628)
!633 = !DILocation(line: 701, column: 20, scope: !634, inlinedAt: !628)
!634 = distinct !DILexicalBlock(scope: !631, file: !23, line: 701, column: 2)
!635 = !DILocation(line: 701, column: 2, scope: !631, inlinedAt: !628)
!636 = !DILocation(line: 703, column: 8, scope: !637, inlinedAt: !628)
!637 = distinct !DILexicalBlock(scope: !638, file: !23, line: 702, column: 20)
!638 = distinct !DILexicalBlock(scope: !639, file: !23, line: 702, column: 7)
!639 = distinct !DILexicalBlock(scope: !634, file: !23, line: 701, column: 33)
!640 = !DILocation(line: 703, column: 11, scope: !637, inlinedAt: !628)
!641 = !DILocation(line: 704, column: 8, scope: !637, inlinedAt: !628)
!642 = !DILocation(line: 704, column: 11, scope: !637, inlinedAt: !628)
!643 = !DILocation(line: 705, column: 3, scope: !637, inlinedAt: !628)
!644 = !DILocation(line: 706, column: 8, scope: !645, inlinedAt: !628)
!645 = distinct !DILexicalBlock(scope: !638, file: !23, line: 705, column: 13)
!646 = !DILocation(line: 706, column: 11, scope: !645, inlinedAt: !628)
!647 = !DILocation(line: 706, column: 4, scope: !645, inlinedAt: !628)
!648 = !DILocation(line: 708, column: 8, scope: !645, inlinedAt: !628)
!649 = !DILocation(line: 708, column: 11, scope: !645, inlinedAt: !628)
!650 = !DILocation(line: 0, scope: !638, inlinedAt: !628)
!651 = !DILocation(line: 701, column: 29, scope: !634, inlinedAt: !628)
!652 = !DILocation(line: 701, column: 2, scope: !634, inlinedAt: !628)
!653 = distinct !{!653, !635, !654}
!654 = !DILocation(line: 709, column: 2, scope: !631, inlinedAt: !628)
!655 = !DILocation(line: 710, column: 6, scope: !620, inlinedAt: !628)
!656 = !DILocation(line: 710, column: 9, scope: !620, inlinedAt: !628)
!657 = !DILocation(line: 711, column: 7, scope: !620, inlinedAt: !628)
!658 = !DILocation(line: 501, column: 2, scope: !611, inlinedAt: !618)
!659 = !DILocation(line: 0, scope: !660, inlinedAt: !618)
!660 = distinct !DILexicalBlock(scope: !611, file: !23, line: 503, column: 2)
!661 = !DILocation(line: 503, column: 2, scope: !660, inlinedAt: !618)
!662 = !DILocation(line: 507, column: 27, scope: !663, inlinedAt: !618)
!663 = distinct !DILexicalBlock(scope: !664, file: !23, line: 503, column: 49)
!664 = distinct !DILexicalBlock(scope: !660, file: !23, line: 503, column: 2)
!665 = !{!301, !292, i64 0}
!666 = !DILocation(line: 507, column: 17, scope: !663, inlinedAt: !618)
!667 = !DILocation(line: 507, column: 7, scope: !663, inlinedAt: !618)
!668 = !DILocation(line: 507, column: 14, scope: !663, inlinedAt: !618)
!669 = !DILocation(line: 503, column: 41, scope: !664, inlinedAt: !618)
!670 = distinct !{!670, !661, !671}
!671 = !DILocation(line: 509, column: 2, scope: !660, inlinedAt: !618)
!672 = !DILocation(line: 232, column: 26, scope: !549, inlinedAt: !535)
!673 = !{!302, !302, i64 0}
!674 = !DILocation(line: 232, column: 30, scope: !549, inlinedAt: !535)
!675 = !DILocation(line: 534, column: 9, scope: !676, inlinedAt: !548)
!676 = distinct !DILexicalBlock(scope: !539, file: !23, line: 534, column: 6)
!677 = !{!678, !302, i64 96}
!678 = !{!"molecule_t", !293, i64 0, !302, i64 96, !292, i64 104, !302, i64 112, !302, i64 116, !302, i64 120, !292, i64 128}
!679 = !DILocation(line: 536, column: 37, scope: !680, inlinedAt: !548)
!680 = distinct !DILexicalBlock(scope: !681, file: !23, line: 536, column: 2)
!681 = distinct !DILexicalBlock(scope: !539, file: !23, line: 536, column: 2)
!682 = !DILocation(line: 536, column: 2, scope: !681, inlinedAt: !548)
!683 = !DILocation(line: 0, scope: !681, inlinedAt: !548)
!684 = !DILocation(line: 538, column: 10, scope: !685, inlinedAt: !548)
!685 = distinct !DILexicalBlock(scope: !686, file: !23, line: 538, column: 7)
!686 = distinct !DILexicalBlock(scope: !680, file: !23, line: 537, column: 25)
!687 = !DILocation(line: 538, column: 20, scope: !685, inlinedAt: !548)
!688 = !DILocation(line: 538, column: 15, scope: !685, inlinedAt: !548)
!689 = !DILocation(line: 539, column: 8, scope: !685, inlinedAt: !548)
!690 = !DILocation(line: 539, column: 15, scope: !685, inlinedAt: !548)
!691 = !DILocation(line: 539, column: 4, scope: !685, inlinedAt: !548)
!692 = !DILocation(line: 537, column: 4, scope: !680, inlinedAt: !548)
!693 = !DILocation(line: 537, column: 17, scope: !680, inlinedAt: !548)
!694 = !DILocation(line: 233, column: 16, scope: !550, inlinedAt: !535)
!695 = !DILocation(line: 233, column: 3, scope: !550, inlinedAt: !535)
!696 = !DILocation(line: 234, column: 8, scope: !697, inlinedAt: !535)
!697 = distinct !DILexicalBlock(scope: !698, file: !23, line: 234, column: 8)
!698 = distinct !DILexicalBlock(scope: !550, file: !23, line: 233, column: 38)
!699 = !DILocation(line: 234, column: 8, scope: !698, inlinedAt: !535)
!700 = !DILocation(line: 0, scope: !611, inlinedAt: !701)
!701 = distinct !DILocation(line: 235, column: 5, scope: !697, inlinedAt: !535)
!702 = !DILocation(line: 0, scope: !620, inlinedAt: !703)
!703 = distinct !DILocation(line: 497, column: 2, scope: !611, inlinedAt: !701)
!704 = !DILocation(line: 700, column: 9, scope: !620, inlinedAt: !703)
!705 = !DILocation(line: 701, column: 7, scope: !631, inlinedAt: !703)
!706 = !DILocation(line: 0, scope: !631, inlinedAt: !703)
!707 = !DILocation(line: 701, column: 20, scope: !634, inlinedAt: !703)
!708 = !DILocation(line: 701, column: 2, scope: !631, inlinedAt: !703)
!709 = !DILocation(line: 703, column: 8, scope: !637, inlinedAt: !703)
!710 = !DILocation(line: 703, column: 11, scope: !637, inlinedAt: !703)
!711 = !DILocation(line: 704, column: 8, scope: !637, inlinedAt: !703)
!712 = !DILocation(line: 704, column: 11, scope: !637, inlinedAt: !703)
!713 = !DILocation(line: 705, column: 3, scope: !637, inlinedAt: !703)
!714 = !DILocation(line: 706, column: 8, scope: !645, inlinedAt: !703)
!715 = !DILocation(line: 706, column: 11, scope: !645, inlinedAt: !703)
!716 = !DILocation(line: 706, column: 4, scope: !645, inlinedAt: !703)
!717 = !DILocation(line: 708, column: 8, scope: !645, inlinedAt: !703)
!718 = !DILocation(line: 708, column: 11, scope: !645, inlinedAt: !703)
!719 = !DILocation(line: 0, scope: !638, inlinedAt: !703)
!720 = !DILocation(line: 701, column: 29, scope: !634, inlinedAt: !703)
!721 = !DILocation(line: 701, column: 2, scope: !634, inlinedAt: !703)
!722 = distinct !{!722, !708, !723}
!723 = !DILocation(line: 709, column: 2, scope: !631, inlinedAt: !703)
!724 = !DILocation(line: 710, column: 6, scope: !620, inlinedAt: !703)
!725 = !DILocation(line: 710, column: 9, scope: !620, inlinedAt: !703)
!726 = !DILocation(line: 711, column: 7, scope: !620, inlinedAt: !703)
!727 = !DILocation(line: 501, column: 2, scope: !611, inlinedAt: !701)
!728 = !DILocation(line: 0, scope: !660, inlinedAt: !701)
!729 = !DILocation(line: 503, column: 2, scope: !660, inlinedAt: !701)
!730 = !DILocation(line: 507, column: 27, scope: !663, inlinedAt: !701)
!731 = !DILocation(line: 507, column: 17, scope: !663, inlinedAt: !701)
!732 = !DILocation(line: 507, column: 7, scope: !663, inlinedAt: !701)
!733 = !DILocation(line: 507, column: 14, scope: !663, inlinedAt: !701)
!734 = !DILocation(line: 503, column: 41, scope: !664, inlinedAt: !701)
!735 = distinct !{!735, !729, !736}
!736 = !DILocation(line: 509, column: 2, scope: !660, inlinedAt: !701)
!737 = !DILocation(line: 237, column: 27, scope: !697, inlinedAt: !535)
!738 = !DILocation(line: 237, column: 31, scope: !697, inlinedAt: !535)
!739 = !DILocation(line: 0, scope: !539, inlinedAt: !740)
!740 = distinct !DILocation(line: 237, column: 5, scope: !697, inlinedAt: !535)
!741 = !DILocation(line: 534, column: 9, scope: !676, inlinedAt: !740)
!742 = !DILocation(line: 536, column: 37, scope: !680, inlinedAt: !740)
!743 = !DILocation(line: 536, column: 2, scope: !681, inlinedAt: !740)
!744 = !DILocation(line: 0, scope: !681, inlinedAt: !740)
!745 = !DILocation(line: 538, column: 10, scope: !685, inlinedAt: !740)
!746 = !DILocation(line: 538, column: 20, scope: !685, inlinedAt: !740)
!747 = !DILocation(line: 538, column: 15, scope: !685, inlinedAt: !740)
!748 = !DILocation(line: 539, column: 8, scope: !685, inlinedAt: !740)
!749 = !DILocation(line: 539, column: 15, scope: !685, inlinedAt: !740)
!750 = !DILocation(line: 539, column: 4, scope: !685, inlinedAt: !740)
!751 = !DILocation(line: 537, column: 4, scope: !680, inlinedAt: !740)
!752 = !DILocation(line: 537, column: 17, scope: !680, inlinedAt: !740)
!753 = distinct !{!753, !695, !754}
!754 = !DILocation(line: 238, column: 3, scope: !550, inlinedAt: !535)
!755 = !DILocation(line: 0, scope: !539, inlinedAt: !756)
!756 = distinct !DILocation(line: 240, column: 3, scope: !551, inlinedAt: !535)
!757 = !DILocation(line: 536, column: 37, scope: !680, inlinedAt: !756)
!758 = !DILocation(line: 536, column: 2, scope: !681, inlinedAt: !756)
!759 = !DILocation(line: 0, scope: !681, inlinedAt: !756)
!760 = !DILocation(line: 539, column: 8, scope: !685, inlinedAt: !756)
!761 = !DILocation(line: 539, column: 15, scope: !685, inlinedAt: !756)
!762 = !DILocation(line: 537, column: 17, scope: !680, inlinedAt: !756)
!763 = distinct !{!763, !758, !764}
!764 = !DILocation(line: 540, column: 2, scope: !681, inlinedAt: !756)
!765 = distinct !{!765, !428}
!766 = !DILocation(line: 242, column: 6, scope: !767, inlinedAt: !535)
!767 = distinct !DILexicalBlock(scope: !527, file: !23, line: 242, column: 6)
!768 = !DILocation(line: 242, column: 6, scope: !527, inlinedAt: !535)
!769 = !DILocation(line: 243, column: 8, scope: !770, inlinedAt: !535)
!770 = distinct !DILexicalBlock(scope: !767, file: !23, line: 242, column: 13)
!771 = !DILocation(line: 244, column: 7, scope: !772, inlinedAt: !535)
!772 = distinct !DILexicalBlock(scope: !770, file: !23, line: 244, column: 7)
!773 = !DILocation(line: 244, column: 7, scope: !770, inlinedAt: !535)
!774 = !DILocation(line: 245, column: 4, scope: !772, inlinedAt: !535)
!775 = !DILocation(line: 247, column: 26, scope: !772, inlinedAt: !535)
!776 = !DILocation(line: 247, column: 30, scope: !772, inlinedAt: !535)
!777 = !DILocalVariable(name: "mol", arg: 1, scope: !778, file: !23, line: 608, type: !271)
!778 = distinct !DISubprogram(name: "match_res_range", scope: !23, file: !23, line: 608, type: !540, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !779)
!779 = !{!777, !780, !781, !782, !783, !784, !785}
!780 = !DILocalVariable(name: "lo", arg: 2, scope: !778, file: !23, line: 608, type: !26)
!781 = !DILocalVariable(name: "hi", arg: 3, scope: !778, file: !23, line: 608, type: !26)
!782 = !DILocalVariable(name: "r", scope: !778, file: !23, line: 610, type: !26)
!783 = !DILocalVariable(name: "rhi", scope: !778, file: !23, line: 610, type: !26)
!784 = !DILocalVariable(name: "sp", scope: !778, file: !23, line: 611, type: !41)
!785 = !DILocalVariable(name: "res", scope: !778, file: !23, line: 612, type: !58)
!786 = !DILocation(line: 0, scope: !778, inlinedAt: !787)
!787 = distinct !DILocation(line: 247, column: 4, scope: !772, inlinedAt: !535)
!788 = !DILocation(line: 0, scope: !789, inlinedAt: !787)
!789 = distinct !DILexicalBlock(scope: !778, file: !23, line: 614, column: 2)
!790 = !DILocation(line: 614, column: 2, scope: !789, inlinedAt: !787)
!791 = !DILocation(line: 0, scope: !792, inlinedAt: !787)
!792 = distinct !DILexicalBlock(scope: !793, file: !23, line: 615, column: 31)
!793 = distinct !DILexicalBlock(scope: !794, file: !23, line: 615, column: 7)
!794 = distinct !DILexicalBlock(scope: !795, file: !23, line: 614, column: 49)
!795 = distinct !DILexicalBlock(scope: !789, file: !23, line: 614, column: 2)
!796 = !DILocation(line: 615, column: 23, scope: !793, inlinedAt: !787)
!797 = !DILocation(line: 615, column: 17, scope: !793, inlinedAt: !787)
!798 = !DILocation(line: 615, column: 7, scope: !794, inlinedAt: !787)
!799 = !DILocation(line: 616, column: 32, scope: !792, inlinedAt: !787)
!800 = !DILocation(line: 617, column: 18, scope: !801, inlinedAt: !787)
!801 = distinct !DILexicalBlock(scope: !802, file: !23, line: 617, column: 4)
!802 = distinct !DILexicalBlock(scope: !792, file: !23, line: 617, column: 4)
!803 = !DILocation(line: 617, column: 4, scope: !802, inlinedAt: !787)
!804 = !DILocation(line: 619, column: 17, scope: !805, inlinedAt: !787)
!805 = distinct !DILexicalBlock(scope: !806, file: !23, line: 619, column: 9)
!806 = distinct !DILexicalBlock(scope: !801, file: !23, line: 617, column: 42)
!807 = !DILocation(line: 619, column: 12, scope: !805, inlinedAt: !787)
!808 = !DILocation(line: 619, column: 21, scope: !805, inlinedAt: !787)
!809 = !DILocation(line: 618, column: 15, scope: !806, inlinedAt: !787)
!810 = !DILocation(line: 618, column: 11, scope: !806, inlinedAt: !787)
!811 = !DILocation(line: 620, column: 11, scope: !805, inlinedAt: !787)
!812 = !DILocation(line: 620, column: 18, scope: !805, inlinedAt: !787)
!813 = !DILocation(line: 620, column: 6, scope: !805, inlinedAt: !787)
!814 = !DILocation(line: 614, column: 41, scope: !795, inlinedAt: !787)
!815 = distinct !{!815, !790, !816}
!816 = !DILocation(line: 623, column: 2, scope: !789, inlinedAt: !787)
!817 = !DILocation(line: 0, scope: !806, inlinedAt: !787)
!818 = !DILocation(line: 617, column: 24, scope: !801, inlinedAt: !787)
!819 = !DILocation(line: 619, column: 30, scope: !805, inlinedAt: !787)
!820 = distinct !{!820, !790, !816}
!821 = !DILocation(line: 248, column: 16, scope: !770, inlinedAt: !535)
!822 = !DILocation(line: 248, column: 3, scope: !770, inlinedAt: !535)
!823 = !DILocation(line: 249, column: 8, scope: !824, inlinedAt: !535)
!824 = distinct !DILexicalBlock(scope: !825, file: !23, line: 249, column: 8)
!825 = distinct !DILexicalBlock(scope: !770, file: !23, line: 248, column: 38)
!826 = !DILocation(line: 249, column: 8, scope: !825, inlinedAt: !535)
!827 = !DILocation(line: 250, column: 5, scope: !824, inlinedAt: !535)
!828 = !DILocation(line: 252, column: 27, scope: !824, inlinedAt: !535)
!829 = !DILocation(line: 252, column: 31, scope: !824, inlinedAt: !535)
!830 = !DILocation(line: 0, scope: !778, inlinedAt: !831)
!831 = distinct !DILocation(line: 252, column: 5, scope: !824, inlinedAt: !535)
!832 = !DILocation(line: 0, scope: !789, inlinedAt: !831)
!833 = !DILocation(line: 614, column: 2, scope: !789, inlinedAt: !831)
!834 = !DILocation(line: 0, scope: !792, inlinedAt: !831)
!835 = !DILocation(line: 615, column: 23, scope: !793, inlinedAt: !831)
!836 = !DILocation(line: 615, column: 17, scope: !793, inlinedAt: !831)
!837 = !DILocation(line: 615, column: 7, scope: !794, inlinedAt: !831)
!838 = !DILocation(line: 616, column: 32, scope: !792, inlinedAt: !831)
!839 = !DILocation(line: 617, column: 18, scope: !801, inlinedAt: !831)
!840 = !DILocation(line: 617, column: 4, scope: !802, inlinedAt: !831)
!841 = !DILocation(line: 619, column: 17, scope: !805, inlinedAt: !831)
!842 = !DILocation(line: 619, column: 12, scope: !805, inlinedAt: !831)
!843 = !DILocation(line: 619, column: 21, scope: !805, inlinedAt: !831)
!844 = !DILocation(line: 618, column: 15, scope: !806, inlinedAt: !831)
!845 = !DILocation(line: 618, column: 11, scope: !806, inlinedAt: !831)
!846 = !DILocation(line: 620, column: 11, scope: !805, inlinedAt: !831)
!847 = !DILocation(line: 620, column: 18, scope: !805, inlinedAt: !831)
!848 = !DILocation(line: 620, column: 6, scope: !805, inlinedAt: !831)
!849 = !DILocation(line: 614, column: 41, scope: !795, inlinedAt: !831)
!850 = distinct !{!850, !833, !851}
!851 = !DILocation(line: 623, column: 2, scope: !789, inlinedAt: !831)
!852 = !DILocation(line: 0, scope: !806, inlinedAt: !831)
!853 = !DILocation(line: 617, column: 24, scope: !801, inlinedAt: !831)
!854 = !DILocation(line: 619, column: 30, scope: !805, inlinedAt: !831)
!855 = distinct !{!855, !833, !851}
!856 = distinct !{!856, !822, !857}
!857 = !DILocation(line: 253, column: 3, scope: !770, inlinedAt: !535)
!858 = !DILocation(line: 0, scope: !778, inlinedAt: !859)
!859 = distinct !DILocation(line: 255, column: 3, scope: !767, inlinedAt: !535)
!860 = !DILocation(line: 0, scope: !789, inlinedAt: !859)
!861 = !DILocation(line: 614, column: 2, scope: !789, inlinedAt: !859)
!862 = !DILocation(line: 615, column: 23, scope: !793, inlinedAt: !859)
!863 = !DILocation(line: 615, column: 17, scope: !793, inlinedAt: !859)
!864 = !DILocation(line: 615, column: 7, scope: !794, inlinedAt: !859)
!865 = !DILocation(line: 616, column: 32, scope: !792, inlinedAt: !859)
!866 = !DILocation(line: 617, column: 18, scope: !801, inlinedAt: !859)
!867 = !DILocation(line: 617, column: 4, scope: !802, inlinedAt: !859)
!868 = !DILocation(line: 619, column: 17, scope: !805, inlinedAt: !859)
!869 = !DILocation(line: 618, column: 11, scope: !806, inlinedAt: !859)
!870 = !DILocation(line: 620, column: 11, scope: !805, inlinedAt: !859)
!871 = !DILocation(line: 620, column: 18, scope: !805, inlinedAt: !859)
!872 = distinct !{!872, !867, !873}
!873 = !DILocation(line: 621, column: 4, scope: !802, inlinedAt: !859)
!874 = distinct !{!874, !428}
!875 = !DILocation(line: 614, column: 41, scope: !795, inlinedAt: !859)
!876 = distinct !{!876, !861, !877}
!877 = !DILocation(line: 623, column: 2, scope: !789, inlinedAt: !859)
!878 = !DILocation(line: 0, scope: !806, inlinedAt: !859)
!879 = !DILocation(line: 257, column: 6, scope: !880, inlinedAt: !535)
!880 = distinct !DILexicalBlock(scope: !527, file: !23, line: 257, column: 6)
!881 = !DILocation(line: 257, column: 6, scope: !527, inlinedAt: !535)
!882 = !DILocation(line: 258, column: 8, scope: !883, inlinedAt: !535)
!883 = distinct !DILexicalBlock(scope: !880, file: !23, line: 257, column: 13)
!884 = !DILocation(line: 259, column: 7, scope: !885, inlinedAt: !535)
!885 = distinct !DILexicalBlock(scope: !883, file: !23, line: 259, column: 7)
!886 = !DILocation(line: 259, column: 7, scope: !883, inlinedAt: !535)
!887 = !DILocation(line: 260, column: 4, scope: !885, inlinedAt: !535)
!888 = !DILocation(line: 262, column: 13, scope: !889, inlinedAt: !535)
!889 = distinct !DILexicalBlock(scope: !885, file: !23, line: 261, column: 7)
!890 = !DILocation(line: 262, column: 4, scope: !889, inlinedAt: !535)
!891 = !DILocation(line: 264, column: 16, scope: !883, inlinedAt: !535)
!892 = !DILocation(line: 264, column: 3, scope: !883, inlinedAt: !535)
!893 = !DILocation(line: 265, column: 8, scope: !894, inlinedAt: !535)
!894 = distinct !DILexicalBlock(scope: !895, file: !23, line: 265, column: 8)
!895 = distinct !DILexicalBlock(scope: !883, file: !23, line: 264, column: 38)
!896 = !DILocation(line: 265, column: 8, scope: !895, inlinedAt: !535)
!897 = !DILocation(line: 266, column: 5, scope: !894, inlinedAt: !535)
!898 = !DILocation(line: 268, column: 14, scope: !899, inlinedAt: !535)
!899 = distinct !DILexicalBlock(scope: !894, file: !23, line: 267, column: 8)
!900 = !DILocation(line: 268, column: 5, scope: !899, inlinedAt: !535)
!901 = distinct !{!901, !892, !902}
!902 = !DILocation(line: 270, column: 3, scope: !883, inlinedAt: !535)
!903 = !DILocation(line: 272, column: 3, scope: !880, inlinedAt: !535)
!904 = !DILocation(line: 274, column: 1, scope: !527, inlinedAt: !535)
!905 = !DILocalVariable(name: "mol", arg: 1, scope: !906, file: !23, line: 449, type: !271)
!906 = distinct !DISubprogram(name: "or_select", scope: !23, file: !23, line: 449, type: !390, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !907)
!907 = !{!905, !908, !909, !910, !911, !912}
!908 = !DILocalVariable(name: "a", scope: !906, file: !23, line: 451, type: !26)
!909 = !DILocalVariable(name: "r", scope: !906, file: !23, line: 451, type: !26)
!910 = !DILocalVariable(name: "sp", scope: !906, file: !23, line: 452, type: !41)
!911 = !DILocalVariable(name: "res", scope: !906, file: !23, line: 453, type: !58)
!912 = !DILocalVariable(name: "ap", scope: !906, file: !23, line: 454, type: !104)
!913 = !DILocation(line: 0, scope: !906, inlinedAt: !914)
!914 = distinct !DILocation(line: 124, column: 3, scope: !536)
!915 = !DILocation(line: 0, scope: !916, inlinedAt: !914)
!916 = distinct !DILexicalBlock(scope: !906, file: !23, line: 456, column: 2)
!917 = !DILocation(line: 456, column: 2, scope: !916, inlinedAt: !914)
!918 = !DILocation(line: 457, column: 23, scope: !919, inlinedAt: !914)
!919 = distinct !DILexicalBlock(scope: !920, file: !23, line: 456, column: 49)
!920 = distinct !DILexicalBlock(scope: !916, file: !23, line: 456, column: 2)
!921 = !DILocation(line: 457, column: 17, scope: !919, inlinedAt: !914)
!922 = !DILocation(line: 457, column: 14, scope: !919, inlinedAt: !914)
!923 = !DILocation(line: 458, column: 23, scope: !924, inlinedAt: !914)
!924 = distinct !DILexicalBlock(scope: !925, file: !23, line: 458, column: 3)
!925 = distinct !DILexicalBlock(scope: !919, file: !23, line: 458, column: 3)
!926 = !DILocation(line: 458, column: 17, scope: !924, inlinedAt: !914)
!927 = !DILocation(line: 458, column: 3, scope: !925, inlinedAt: !914)
!928 = !DILocation(line: 0, scope: !929, inlinedAt: !914)
!929 = distinct !DILexicalBlock(scope: !924, file: !23, line: 458, column: 41)
!930 = !DILocation(line: 459, column: 10, scope: !929, inlinedAt: !914)
!931 = !DILocation(line: 460, column: 26, scope: !929, inlinedAt: !914)
!932 = !DILocation(line: 460, column: 19, scope: !929, inlinedAt: !914)
!933 = !DILocation(line: 460, column: 16, scope: !929, inlinedAt: !914)
!934 = !DILocation(line: 462, column: 25, scope: !935, inlinedAt: !914)
!935 = distinct !DILexicalBlock(scope: !936, file: !23, line: 462, column: 4)
!936 = distinct !DILexicalBlock(scope: !929, file: !23, line: 462, column: 4)
!937 = !DILocation(line: 462, column: 18, scope: !935, inlinedAt: !914)
!938 = !DILocation(line: 462, column: 4, scope: !936, inlinedAt: !914)
!939 = !DILocation(line: 0, scope: !940, inlinedAt: !914)
!940 = distinct !DILexicalBlock(scope: !935, file: !23, line: 462, column: 40)
!941 = !DILocation(line: 464, column: 25, scope: !940, inlinedAt: !914)
!942 = !DILocation(line: 464, column: 19, scope: !940, inlinedAt: !914)
!943 = !DILocation(line: 464, column: 16, scope: !940, inlinedAt: !914)
!944 = !DILocation(line: 462, column: 36, scope: !935, inlinedAt: !914)
!945 = distinct !{!945, !938, !946}
!946 = !DILocation(line: 466, column: 4, scope: !936, inlinedAt: !914)
!947 = !DILocation(line: 458, column: 37, scope: !924, inlinedAt: !914)
!948 = distinct !{!948, !927, !949}
!949 = !DILocation(line: 467, column: 3, scope: !925, inlinedAt: !914)
!950 = !DILocation(line: 456, column: 41, scope: !920, inlinedAt: !914)
!951 = distinct !{!951, !917, !952}
!952 = !DILocation(line: 468, column: 2, scope: !916, inlinedAt: !914)
!953 = !DILocation(line: 126, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !536, file: !23, line: 126, column: 7)
!955 = !DILocation(line: 126, column: 7, scope: !536)
!956 = !DILocation(line: 127, column: 12, scope: !954)
!957 = !DILocation(line: 127, column: 4, scope: !954)
!958 = !DILocation(line: 0, scope: !536)
!959 = !DILocation(line: 0, scope: !484, inlinedAt: !960)
!960 = distinct !DILocation(line: 128, column: 3, scope: !536)
!961 = !DILocation(line: 421, column: 2, scope: !483, inlinedAt: !960)
!962 = !DILocation(line: 422, column: 7, scope: !481, inlinedAt: !960)
!963 = !DILocation(line: 422, column: 14, scope: !481, inlinedAt: !960)
!964 = !DILocation(line: 423, column: 23, scope: !495, inlinedAt: !960)
!965 = !DILocation(line: 423, column: 17, scope: !495, inlinedAt: !960)
!966 = !DILocation(line: 423, column: 3, scope: !496, inlinedAt: !960)
!967 = !DILocation(line: 0, scope: !500, inlinedAt: !960)
!968 = !DILocation(line: 424, column: 10, scope: !500, inlinedAt: !960)
!969 = !DILocation(line: 425, column: 9, scope: !500, inlinedAt: !960)
!970 = !DILocation(line: 425, column: 16, scope: !500, inlinedAt: !960)
!971 = !DILocation(line: 426, column: 25, scope: !505, inlinedAt: !960)
!972 = !DILocation(line: 426, column: 18, scope: !505, inlinedAt: !960)
!973 = !DILocation(line: 426, column: 4, scope: !506, inlinedAt: !960)
!974 = !DILocation(line: 0, scope: !505, inlinedAt: !960)
!975 = !DILocation(line: 427, column: 23, scope: !505, inlinedAt: !960)
!976 = !DILocation(line: 427, column: 30, scope: !505, inlinedAt: !960)
!977 = !DILocation(line: 426, column: 36, scope: !505, inlinedAt: !960)
!978 = distinct !{!978, !973, !979}
!979 = !DILocation(line: 427, column: 34, scope: !506, inlinedAt: !960)
!980 = distinct !{!980, !428}
!981 = !DILocation(line: 423, column: 37, scope: !495, inlinedAt: !960)
!982 = distinct !{!982, !966, !983}
!983 = !DILocation(line: 428, column: 3, scope: !496, inlinedAt: !960)
!984 = !DILocation(line: 421, column: 41, scope: !482, inlinedAt: !960)
!985 = !DILocation(line: 0, scope: !483, inlinedAt: !960)
!986 = distinct !{!986, !961, !987}
!987 = !DILocation(line: 429, column: 2, scope: !483, inlinedAt: !960)
!988 = distinct !{!988, !552, !989}
!989 = !DILocation(line: 129, column: 2, scope: !525)
!990 = !DILocalVariable(name: "mol", arg: 1, scope: !991, file: !23, line: 471, type: !271)
!991 = distinct !DISubprogram(name: "set_select", scope: !23, file: !23, line: 471, type: !390, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !992)
!992 = !{!990, !993, !994, !995, !996, !997}
!993 = !DILocalVariable(name: "a", scope: !991, file: !23, line: 473, type: !26)
!994 = !DILocalVariable(name: "r", scope: !991, file: !23, line: 473, type: !26)
!995 = !DILocalVariable(name: "sp", scope: !991, file: !23, line: 474, type: !41)
!996 = !DILocalVariable(name: "res", scope: !991, file: !23, line: 475, type: !58)
!997 = !DILocalVariable(name: "ap", scope: !991, file: !23, line: 476, type: !104)
!998 = !DILocation(line: 0, scope: !991, inlinedAt: !999)
!999 = distinct !DILocation(line: 130, column: 2, scope: !375)
!1000 = !DILocation(line: 478, column: 2, scope: !1001, inlinedAt: !999)
!1001 = distinct !DILexicalBlock(scope: !991, file: !23, line: 478, column: 2)
!1002 = !DILocation(line: 479, column: 23, scope: !1003, inlinedAt: !999)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !23, line: 478, column: 49)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !23, line: 478, column: 2)
!1005 = !DILocation(line: 479, column: 17, scope: !1003, inlinedAt: !999)
!1006 = !DILocation(line: 479, column: 14, scope: !1003, inlinedAt: !999)
!1007 = !DILocation(line: 480, column: 23, scope: !1008, inlinedAt: !999)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !23, line: 480, column: 3)
!1009 = distinct !DILexicalBlock(scope: !1003, file: !23, line: 480, column: 3)
!1010 = !DILocation(line: 480, column: 17, scope: !1008, inlinedAt: !999)
!1011 = !DILocation(line: 480, column: 3, scope: !1009, inlinedAt: !999)
!1012 = !DILocation(line: 0, scope: !1013, inlinedAt: !999)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !23, line: 480, column: 41)
!1014 = !DILocation(line: 481, column: 10, scope: !1013, inlinedAt: !999)
!1015 = !DILocation(line: 482, column: 26, scope: !1013, inlinedAt: !999)
!1016 = !DILocation(line: 482, column: 19, scope: !1013, inlinedAt: !999)
!1017 = !DILocation(line: 482, column: 16, scope: !1013, inlinedAt: !999)
!1018 = !DILocation(line: 484, column: 25, scope: !1019, inlinedAt: !999)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !23, line: 484, column: 4)
!1020 = distinct !DILexicalBlock(scope: !1013, file: !23, line: 484, column: 4)
!1021 = !DILocation(line: 484, column: 18, scope: !1019, inlinedAt: !999)
!1022 = !DILocation(line: 484, column: 4, scope: !1020, inlinedAt: !999)
!1023 = !DILocation(line: 0, scope: !1024, inlinedAt: !999)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !23, line: 484, column: 40)
!1025 = !DILocation(line: 486, column: 25, scope: !1024, inlinedAt: !999)
!1026 = !DILocation(line: 486, column: 19, scope: !1024, inlinedAt: !999)
!1027 = !DILocation(line: 486, column: 16, scope: !1024, inlinedAt: !999)
!1028 = !DILocation(line: 484, column: 36, scope: !1019, inlinedAt: !999)
!1029 = distinct !{!1029, !1022, !1030}
!1030 = !DILocation(line: 488, column: 4, scope: !1020, inlinedAt: !999)
!1031 = !DILocation(line: 480, column: 37, scope: !1008, inlinedAt: !999)
!1032 = distinct !{!1032, !1011, !1033}
!1033 = !DILocation(line: 489, column: 3, scope: !1009, inlinedAt: !999)
!1034 = !DILocation(line: 478, column: 41, scope: !1004, inlinedAt: !999)
!1035 = !DILocation(line: 0, scope: !1001, inlinedAt: !999)
!1036 = distinct !{!1036, !1000, !1037}
!1037 = !DILocation(line: 490, column: 2, scope: !1001, inlinedAt: !999)
!1038 = !DILocation(line: 133, column: 1, scope: !375)
!1039 = distinct !{!1039, !682, !1040}
!1040 = !DILocation(line: 540, column: 2, scope: !681, inlinedAt: !548)
!1041 = distinct !{!1041, !743, !1042}
!1042 = !DILocation(line: 540, column: 2, scope: !681, inlinedAt: !740)
!1043 = distinct !{!1043, !803, !1044}
!1044 = !DILocation(line: 621, column: 4, scope: !802, inlinedAt: !787)
!1045 = distinct !{!1045, !803, !1044}
!1046 = distinct !{!1046, !840, !1047}
!1047 = !DILocation(line: 621, column: 4, scope: !802, inlinedAt: !831)
!1048 = distinct !{!1048, !840, !1047}
!1049 = distinct !DISubprogram(name: "atom_in_aexpr", scope: !23, file: !23, line: 135, type: !1050, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!26, !104, !239}
!1052 = !{!1053, !1054, !1055, !1056, !1057}
!1053 = !DILocalVariable(name: "ap", arg: 1, scope: !1049, file: !23, line: 135, type: !104)
!1054 = !DILocalVariable(name: "aex", arg: 2, scope: !1049, file: !23, line: 135, type: !239)
!1055 = !DILocalVariable(name: "aep", scope: !1049, file: !23, line: 137, type: !239)
!1056 = !DILocalVariable(name: "n_aep", scope: !1049, file: !23, line: 137, type: !239)
!1057 = !DILocalVariable(name: "ael", scope: !1049, file: !23, line: 138, type: !26)
!1058 = !DILocation(line: 0, scope: !1049)
!1059 = !DILocation(line: 140, column: 10, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1049, file: !23, line: 140, column: 6)
!1061 = !DILocation(line: 140, column: 6, scope: !1049)
!1062 = !DILocation(line: 143, column: 26, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1049, file: !23, line: 143, column: 2)
!1064 = !DILocation(line: 0, scope: !1065, inlinedAt: !1075)
!1065 = distinct !DISubprogram(name: "atom_in_1_aexpr", scope: !23, file: !23, line: 276, type: !1050, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1067 = !DILocalVariable(name: "ap", arg: 1, scope: !1065, file: !23, line: 276, type: !104)
!1068 = !DILocalVariable(name: "aex", arg: 2, scope: !1065, file: !23, line: 276, type: !239)
!1069 = !DILocalVariable(name: "aep", scope: !1065, file: !23, line: 278, type: !239)
!1070 = !DILocalVariable(name: "wp", scope: !1065, file: !23, line: 279, type: !239)
!1071 = !DILocalVariable(name: "lo", scope: !1065, file: !23, line: 280, type: !26)
!1072 = !DILocalVariable(name: "hi", scope: !1065, file: !23, line: 280, type: !26)
!1073 = !DILabel(scope: !1065, name: "RPART", file: !23, line: 316)
!1074 = !DILabel(scope: !1065, name: "APART", file: !23, line: 333)
!1075 = distinct !DILocation(line: 156, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !23, line: 156, column: 7)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !23, line: 143, column: 52)
!1078 = distinct !DILexicalBlock(scope: !1063, file: !23, line: 143, column: 2)
!1079 = !DILocation(line: 0, scope: !1080, inlinedAt: !1075)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !23, line: 302, column: 8)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !23, line: 301, column: 35)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !23, line: 301, column: 7)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !23, line: 299, column: 13)
!1084 = distinct !DILexicalBlock(scope: !1065, file: !23, line: 299, column: 6)
!1085 = !DILocation(line: 0, scope: !1086, inlinedAt: !1090)
!1086 = distinct !DISubprogram(name: "atom_in_atom_pat", scope: !23, file: !23, line: 682, type: !1050, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1087)
!1087 = !{!1088, !1089}
!1088 = !DILocalVariable(name: "ap", arg: 1, scope: !1086, file: !23, line: 682, type: !104)
!1089 = !DILocalVariable(name: "pat", arg: 2, scope: !1086, file: !23, line: 682, type: !239)
!1090 = distinct !DILocation(line: 336, column: 8, scope: !1091, inlinedAt: !1075)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !23, line: 336, column: 8)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !23, line: 335, column: 35)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !23, line: 335, column: 7)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !23, line: 333, column: 20)
!1095 = distinct !DILexicalBlock(scope: !1065, file: !23, line: 333, column: 13)
!1096 = !DILocation(line: 143, column: 2, scope: !1063)
!1097 = !DILocation(line: 144, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1077, file: !23, line: 144, column: 7)
!1099 = !DILocation(line: 144, column: 7, scope: !1077)
!1100 = !DILocation(line: 145, column: 16, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !23, line: 144, column: 14)
!1102 = !DILocation(line: 146, column: 9, scope: !1101)
!1103 = !DILocation(line: 147, column: 3, scope: !1101)
!1104 = !DILocation(line: 148, column: 10, scope: !1098)
!1105 = !DILocation(line: 0, scope: !1063)
!1106 = !DILocation(line: 0, scope: !1098)
!1107 = !DILocation(line: 149, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1077, file: !23, line: 149, column: 7)
!1109 = !DILocation(line: 149, column: 7, scope: !1077)
!1110 = !DILocation(line: 150, column: 13, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !23, line: 149, column: 26)
!1112 = !DILocation(line: 150, column: 4, scope: !1111)
!1113 = !DILocation(line: 152, column: 4, scope: !1111)
!1114 = !DILocation(line: 154, column: 24, scope: !1077)
!1115 = !DILocation(line: 154, column: 3, scope: !1077)
!1116 = !DILocation(line: 155, column: 3, scope: !1077)
!1117 = !DILocation(line: 155, column: 16, scope: !1077)
!1118 = !DILocation(line: 280, column: 2, scope: !1065, inlinedAt: !1075)
!1119 = !DILocation(line: 283, column: 6, scope: !1120, inlinedAt: !1075)
!1120 = distinct !DILexicalBlock(scope: !1065, file: !23, line: 283, column: 6)
!1121 = !DILocation(line: 283, column: 11, scope: !1120, inlinedAt: !1075)
!1122 = !DILocation(line: 283, column: 6, scope: !1065, inlinedAt: !1075)
!1123 = !DILocation(line: 284, column: 9, scope: !1124, inlinedAt: !1075)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !23, line: 283, column: 19)
!1125 = !DILocation(line: 286, column: 2, scope: !1124, inlinedAt: !1075)
!1126 = !DILocation(line: 287, column: 11, scope: !1127, inlinedAt: !1075)
!1127 = distinct !DILexicalBlock(scope: !1120, file: !23, line: 286, column: 7)
!1128 = !DILocation(line: 287, column: 9, scope: !1127, inlinedAt: !1075)
!1129 = !DILocation(line: 288, column: 10, scope: !1127, inlinedAt: !1075)
!1130 = !DILocation(line: 288, column: 26, scope: !1127, inlinedAt: !1075)
!1131 = !DILocation(line: 288, column: 7, scope: !1127, inlinedAt: !1075)
!1132 = !DILocation(line: 0, scope: !1120, inlinedAt: !1075)
!1133 = !DILocation(line: 290, column: 6, scope: !1134, inlinedAt: !1075)
!1134 = distinct !DILexicalBlock(scope: !1065, file: !23, line: 290, column: 6)
!1135 = !DILocation(line: 290, column: 11, scope: !1134, inlinedAt: !1075)
!1136 = !DILocation(line: 290, column: 6, scope: !1065, inlinedAt: !1075)
!1137 = !DILocation(line: 291, column: 9, scope: !1138, inlinedAt: !1075)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !23, line: 290, column: 19)
!1139 = !DILocation(line: 293, column: 2, scope: !1138, inlinedAt: !1075)
!1140 = !DILocation(line: 294, column: 11, scope: !1141, inlinedAt: !1075)
!1141 = distinct !DILexicalBlock(scope: !1134, file: !23, line: 293, column: 7)
!1142 = !DILocation(line: 294, column: 9, scope: !1141, inlinedAt: !1075)
!1143 = !DILocation(line: 295, column: 10, scope: !1141, inlinedAt: !1075)
!1144 = !DILocation(line: 295, column: 26, scope: !1141, inlinedAt: !1075)
!1145 = !DILocation(line: 0, scope: !1134, inlinedAt: !1075)
!1146 = !DILocation(line: 297, column: 10, scope: !1065, inlinedAt: !1075)
!1147 = !DILocation(line: 297, column: 8, scope: !1065, inlinedAt: !1075)
!1148 = !DILocation(line: 299, column: 6, scope: !1084, inlinedAt: !1075)
!1149 = !DILocation(line: 299, column: 6, scope: !1065, inlinedAt: !1075)
!1150 = !DILocation(line: 300, column: 8, scope: !1083, inlinedAt: !1075)
!1151 = !DILocation(line: 301, column: 7, scope: !1082, inlinedAt: !1075)
!1152 = !DILocation(line: 301, column: 7, scope: !1083, inlinedAt: !1075)
!1153 = !DILocation(line: 302, column: 8, scope: !1080, inlinedAt: !1075)
!1154 = !{!335, !292, i64 56}
!1155 = !{!319, !292, i64 56}
!1156 = !DILocalVariable(name: "pat", arg: 2, scope: !1157, file: !23, line: 512, type: !239)
!1157 = distinct !DISubprogram(name: "atom_in_str_pat", scope: !23, file: !23, line: 512, type: !1050, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1158)
!1158 = !{!1159, !1156, !1160, !1161}
!1159 = !DILocalVariable(name: "ap", arg: 1, scope: !1157, file: !23, line: 512, type: !104)
!1160 = !DILocalVariable(name: "res", scope: !1157, file: !23, line: 514, type: !58)
!1161 = !DILocalVariable(name: "sp", scope: !1157, file: !23, line: 515, type: !41)
!1162 = !DILocation(line: 0, scope: !1157, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 302, column: 8, scope: !1080, inlinedAt: !1075)
!1164 = !DILocation(line: 0, scope: !620, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 519, column: 2, scope: !1157, inlinedAt: !1163)
!1166 = !DILocation(line: 700, column: 9, scope: !620, inlinedAt: !1165)
!1167 = !DILocation(line: 701, column: 7, scope: !631, inlinedAt: !1165)
!1168 = !DILocation(line: 0, scope: !631, inlinedAt: !1165)
!1169 = !DILocation(line: 701, column: 20, scope: !634, inlinedAt: !1165)
!1170 = !DILocation(line: 701, column: 2, scope: !631, inlinedAt: !1165)
!1171 = !DILocation(line: 703, column: 8, scope: !637, inlinedAt: !1165)
!1172 = !DILocation(line: 703, column: 11, scope: !637, inlinedAt: !1165)
!1173 = !DILocation(line: 704, column: 8, scope: !637, inlinedAt: !1165)
!1174 = !DILocation(line: 704, column: 11, scope: !637, inlinedAt: !1165)
!1175 = !DILocation(line: 705, column: 3, scope: !637, inlinedAt: !1165)
!1176 = !DILocation(line: 706, column: 8, scope: !645, inlinedAt: !1165)
!1177 = !DILocation(line: 706, column: 11, scope: !645, inlinedAt: !1165)
!1178 = !DILocation(line: 706, column: 4, scope: !645, inlinedAt: !1165)
!1179 = !DILocation(line: 708, column: 8, scope: !645, inlinedAt: !1165)
!1180 = !DILocation(line: 708, column: 11, scope: !645, inlinedAt: !1165)
!1181 = !DILocation(line: 0, scope: !638, inlinedAt: !1165)
!1182 = !DILocation(line: 701, column: 29, scope: !634, inlinedAt: !1165)
!1183 = !DILocation(line: 701, column: 2, scope: !634, inlinedAt: !1165)
!1184 = distinct !{!1184, !1170, !1185}
!1185 = !DILocation(line: 709, column: 2, scope: !631, inlinedAt: !1165)
!1186 = !DILocation(line: 710, column: 6, scope: !620, inlinedAt: !1165)
!1187 = !DILocation(line: 710, column: 9, scope: !620, inlinedAt: !1165)
!1188 = !DILocation(line: 711, column: 7, scope: !620, inlinedAt: !1165)
!1189 = !DILocation(line: 524, column: 2, scope: !1157, inlinedAt: !1163)
!1190 = !DILocation(line: 525, column: 20, scope: !1157, inlinedAt: !1163)
!1191 = !DILocation(line: 525, column: 10, scope: !1157, inlinedAt: !1163)
!1192 = !DILocation(line: 302, column: 8, scope: !1081, inlinedAt: !1075)
!1193 = !DILocation(line: 304, column: 36, scope: !1194, inlinedAt: !1075)
!1194 = distinct !DILexicalBlock(scope: !1082, file: !23, line: 304, column: 13)
!1195 = !DILocation(line: 304, column: 40, scope: !1194, inlinedAt: !1075)
!1196 = !DILocation(line: 304, column: 13, scope: !1194, inlinedAt: !1075)
!1197 = !DILocalVariable(name: "lo", arg: 2, scope: !1198, file: !23, line: 543, type: !26)
!1198 = distinct !DISubprogram(name: "atom_in_str_range", scope: !23, file: !23, line: 543, type: !1199, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1201)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!26, !104, !26, !26}
!1201 = !{!1202, !1197, !1203, !1204, !1205, !1206, !1207, !1208}
!1202 = !DILocalVariable(name: "ap", arg: 1, scope: !1198, file: !23, line: 543, type: !104)
!1203 = !DILocalVariable(name: "hi", arg: 3, scope: !1198, file: !23, line: 543, type: !26)
!1204 = !DILocalVariable(name: "m", scope: !1198, file: !23, line: 545, type: !26)
!1205 = !DILocalVariable(name: "res", scope: !1198, file: !23, line: 546, type: !58)
!1206 = !DILocalVariable(name: "sp", scope: !1198, file: !23, line: 547, type: !41)
!1207 = !DILocalVariable(name: "sp1", scope: !1198, file: !23, line: 547, type: !41)
!1208 = !DILocalVariable(name: "mol", scope: !1198, file: !23, line: 548, type: !271)
!1209 = !DILocation(line: 0, scope: !1198, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 304, column: 13, scope: !1194, inlinedAt: !1075)
!1211 = !DILocation(line: 552, column: 12, scope: !1198, inlinedAt: !1210)
!1212 = !{!301, !292, i64 16}
!1213 = !DILocation(line: 553, column: 9, scope: !1214, inlinedAt: !1210)
!1214 = distinct !DILexicalBlock(scope: !1198, file: !23, line: 553, column: 6)
!1215 = !DILocation(line: 555, column: 38, scope: !1216, inlinedAt: !1210)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !23, line: 555, column: 2)
!1217 = distinct !DILexicalBlock(scope: !1198, file: !23, line: 555, column: 2)
!1218 = !DILocation(line: 555, column: 2, scope: !1217, inlinedAt: !1210)
!1219 = !DILocation(line: 555, column: 25, scope: !1217, inlinedAt: !1210)
!1220 = !DILocation(line: 0, scope: !1217, inlinedAt: !1210)
!1221 = !DILocation(line: 557, column: 10, scope: !1222, inlinedAt: !1210)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !23, line: 557, column: 7)
!1223 = distinct !DILexicalBlock(scope: !1216, file: !23, line: 556, column: 27)
!1224 = !DILocation(line: 558, column: 11, scope: !1225, inlinedAt: !1210)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !23, line: 558, column: 8)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !23, line: 557, column: 18)
!1227 = !DILocation(line: 557, column: 7, scope: !1223, inlinedAt: !1210)
!1228 = !DILocation(line: 558, column: 21, scope: !1225, inlinedAt: !1210)
!1229 = !DILocation(line: 556, column: 4, scope: !1216, inlinedAt: !1210)
!1230 = !DILocation(line: 556, column: 19, scope: !1216, inlinedAt: !1210)
!1231 = distinct !{!1231, !1218, !1232}
!1232 = !DILocation(line: 561, column: 2, scope: !1217, inlinedAt: !1210)
!1233 = !DILocation(line: 306, column: 16, scope: !1083, inlinedAt: !1075)
!1234 = !DILocation(line: 306, column: 3, scope: !1083, inlinedAt: !1075)
!1235 = !DILocation(line: 307, column: 8, scope: !1236, inlinedAt: !1075)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !23, line: 307, column: 8)
!1237 = distinct !DILexicalBlock(scope: !1083, file: !23, line: 306, column: 38)
!1238 = !DILocation(line: 307, column: 8, scope: !1237, inlinedAt: !1075)
!1239 = !DILocation(line: 308, column: 9, scope: !1240, inlinedAt: !1075)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !23, line: 308, column: 9)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !23, line: 307, column: 36)
!1242 = !DILocation(line: 0, scope: !1157, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 308, column: 9, scope: !1240, inlinedAt: !1075)
!1244 = !DILocation(line: 0, scope: !620, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 519, column: 2, scope: !1157, inlinedAt: !1243)
!1246 = !DILocation(line: 700, column: 9, scope: !620, inlinedAt: !1245)
!1247 = !DILocation(line: 701, column: 7, scope: !631, inlinedAt: !1245)
!1248 = !DILocation(line: 0, scope: !631, inlinedAt: !1245)
!1249 = !DILocation(line: 701, column: 20, scope: !634, inlinedAt: !1245)
!1250 = !DILocation(line: 701, column: 2, scope: !631, inlinedAt: !1245)
!1251 = !DILocation(line: 703, column: 8, scope: !637, inlinedAt: !1245)
!1252 = !DILocation(line: 703, column: 11, scope: !637, inlinedAt: !1245)
!1253 = !DILocation(line: 704, column: 8, scope: !637, inlinedAt: !1245)
!1254 = !DILocation(line: 704, column: 11, scope: !637, inlinedAt: !1245)
!1255 = !DILocation(line: 705, column: 3, scope: !637, inlinedAt: !1245)
!1256 = !DILocation(line: 706, column: 8, scope: !645, inlinedAt: !1245)
!1257 = !DILocation(line: 706, column: 11, scope: !645, inlinedAt: !1245)
!1258 = !DILocation(line: 706, column: 4, scope: !645, inlinedAt: !1245)
!1259 = !DILocation(line: 708, column: 8, scope: !645, inlinedAt: !1245)
!1260 = !DILocation(line: 708, column: 11, scope: !645, inlinedAt: !1245)
!1261 = !DILocation(line: 0, scope: !638, inlinedAt: !1245)
!1262 = !DILocation(line: 701, column: 29, scope: !634, inlinedAt: !1245)
!1263 = !DILocation(line: 701, column: 2, scope: !634, inlinedAt: !1245)
!1264 = distinct !{!1264, !1250, !1265}
!1265 = !DILocation(line: 709, column: 2, scope: !631, inlinedAt: !1245)
!1266 = !DILocation(line: 710, column: 6, scope: !620, inlinedAt: !1245)
!1267 = !DILocation(line: 710, column: 9, scope: !620, inlinedAt: !1245)
!1268 = !DILocation(line: 711, column: 7, scope: !620, inlinedAt: !1245)
!1269 = !DILocation(line: 524, column: 2, scope: !1157, inlinedAt: !1243)
!1270 = !DILocation(line: 525, column: 20, scope: !1157, inlinedAt: !1243)
!1271 = !DILocation(line: 525, column: 10, scope: !1157, inlinedAt: !1243)
!1272 = !DILocation(line: 308, column: 9, scope: !1241, inlinedAt: !1075)
!1273 = !DILocation(line: 310, column: 37, scope: !1274, inlinedAt: !1075)
!1274 = distinct !DILexicalBlock(scope: !1236, file: !23, line: 310, column: 14)
!1275 = !DILocation(line: 310, column: 41, scope: !1274, inlinedAt: !1075)
!1276 = !DILocation(line: 310, column: 14, scope: !1274, inlinedAt: !1075)
!1277 = !DILocation(line: 0, scope: !1198, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 310, column: 14, scope: !1274, inlinedAt: !1075)
!1279 = !DILocation(line: 552, column: 12, scope: !1198, inlinedAt: !1278)
!1280 = !DILocation(line: 553, column: 9, scope: !1214, inlinedAt: !1278)
!1281 = !DILocation(line: 555, column: 38, scope: !1216, inlinedAt: !1278)
!1282 = !DILocation(line: 555, column: 2, scope: !1217, inlinedAt: !1278)
!1283 = !DILocation(line: 555, column: 25, scope: !1217, inlinedAt: !1278)
!1284 = !DILocation(line: 0, scope: !1217, inlinedAt: !1278)
!1285 = !DILocation(line: 557, column: 10, scope: !1222, inlinedAt: !1278)
!1286 = !DILocation(line: 558, column: 11, scope: !1225, inlinedAt: !1278)
!1287 = !DILocation(line: 557, column: 7, scope: !1223, inlinedAt: !1278)
!1288 = !DILocation(line: 558, column: 21, scope: !1225, inlinedAt: !1278)
!1289 = !DILocation(line: 556, column: 4, scope: !1216, inlinedAt: !1278)
!1290 = !DILocation(line: 556, column: 19, scope: !1216, inlinedAt: !1278)
!1291 = distinct !{!1291, !1282, !1292}
!1292 = !DILocation(line: 561, column: 2, scope: !1217, inlinedAt: !1278)
!1293 = distinct !{!1293, !1234, !1294}
!1294 = !DILocation(line: 312, column: 3, scope: !1083, inlinedAt: !1075)
!1295 = !DILocation(line: 316, column: 1, scope: !1065, inlinedAt: !1075)
!1296 = !DILocation(line: 316, column: 13, scope: !1297, inlinedAt: !1075)
!1297 = distinct !DILexicalBlock(scope: !1065, file: !23, line: 316, column: 13)
!1298 = !DILocation(line: 316, column: 13, scope: !1065, inlinedAt: !1075)
!1299 = !DILocation(line: 317, column: 8, scope: !1300, inlinedAt: !1075)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !23, line: 316, column: 20)
!1301 = !DILocation(line: 318, column: 7, scope: !1302, inlinedAt: !1075)
!1302 = distinct !DILexicalBlock(scope: !1300, file: !23, line: 318, column: 7)
!1303 = !DILocation(line: 318, column: 7, scope: !1300, inlinedAt: !1075)
!1304 = !DILocation(line: 319, column: 8, scope: !1305, inlinedAt: !1075)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !23, line: 319, column: 8)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !23, line: 318, column: 35)
!1307 = !DILocalVariable(name: "pat", arg: 2, scope: !1308, file: !23, line: 593, type: !239)
!1308 = distinct !DISubprogram(name: "atom_in_res_pat", scope: !23, file: !23, line: 593, type: !1050, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1309)
!1309 = !{!1310, !1307, !1311}
!1310 = !DILocalVariable(name: "ap", arg: 1, scope: !1308, file: !23, line: 593, type: !104)
!1311 = !DILocalVariable(name: "res", scope: !1308, file: !23, line: 595, type: !58)
!1312 = !DILocation(line: 0, scope: !1308, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 319, column: 8, scope: !1305, inlinedAt: !1075)
!1314 = !DILocation(line: 0, scope: !620, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 598, column: 2, scope: !1308, inlinedAt: !1313)
!1316 = !DILocation(line: 700, column: 9, scope: !620, inlinedAt: !1315)
!1317 = !DILocation(line: 701, column: 7, scope: !631, inlinedAt: !1315)
!1318 = !DILocation(line: 0, scope: !631, inlinedAt: !1315)
!1319 = !DILocation(line: 701, column: 20, scope: !634, inlinedAt: !1315)
!1320 = !DILocation(line: 701, column: 2, scope: !631, inlinedAt: !1315)
!1321 = !DILocation(line: 703, column: 8, scope: !637, inlinedAt: !1315)
!1322 = !DILocation(line: 703, column: 11, scope: !637, inlinedAt: !1315)
!1323 = !DILocation(line: 704, column: 8, scope: !637, inlinedAt: !1315)
!1324 = !DILocation(line: 704, column: 11, scope: !637, inlinedAt: !1315)
!1325 = !DILocation(line: 705, column: 3, scope: !637, inlinedAt: !1315)
!1326 = !DILocation(line: 706, column: 8, scope: !645, inlinedAt: !1315)
!1327 = !DILocation(line: 706, column: 11, scope: !645, inlinedAt: !1315)
!1328 = !DILocation(line: 706, column: 4, scope: !645, inlinedAt: !1315)
!1329 = !DILocation(line: 708, column: 8, scope: !645, inlinedAt: !1315)
!1330 = !DILocation(line: 708, column: 11, scope: !645, inlinedAt: !1315)
!1331 = !DILocation(line: 0, scope: !638, inlinedAt: !1315)
!1332 = !DILocation(line: 701, column: 29, scope: !634, inlinedAt: !1315)
!1333 = !DILocation(line: 701, column: 2, scope: !634, inlinedAt: !1315)
!1334 = distinct !{!1334, !1320, !1335}
!1335 = !DILocation(line: 709, column: 2, scope: !631, inlinedAt: !1315)
!1336 = !DILocation(line: 710, column: 6, scope: !620, inlinedAt: !1315)
!1337 = !DILocation(line: 710, column: 9, scope: !620, inlinedAt: !1315)
!1338 = !DILocation(line: 711, column: 7, scope: !620, inlinedAt: !1315)
!1339 = !DILocation(line: 603, column: 2, scope: !1308, inlinedAt: !1313)
!1340 = !DILocation(line: 604, column: 21, scope: !1308, inlinedAt: !1313)
!1341 = !{!319, !292, i64 24}
!1342 = !DILocation(line: 604, column: 10, scope: !1308, inlinedAt: !1313)
!1343 = !DILocation(line: 319, column: 8, scope: !1306, inlinedAt: !1075)
!1344 = !DILocation(line: 321, column: 36, scope: !1345, inlinedAt: !1075)
!1345 = distinct !DILexicalBlock(scope: !1302, file: !23, line: 321, column: 13)
!1346 = !DILocation(line: 321, column: 40, scope: !1345, inlinedAt: !1075)
!1347 = !DILocation(line: 321, column: 13, scope: !1345, inlinedAt: !1075)
!1348 = !DILocalVariable(name: "lo", arg: 2, scope: !1349, file: !23, line: 626, type: !26)
!1349 = distinct !DISubprogram(name: "atom_in_res_range", scope: !23, file: !23, line: 626, type: !1199, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1350)
!1350 = !{!1351, !1348, !1352, !1353, !1354, !1355, !1356, !1357}
!1351 = !DILocalVariable(name: "ap", arg: 1, scope: !1349, file: !23, line: 626, type: !104)
!1352 = !DILocalVariable(name: "hi", arg: 3, scope: !1349, file: !23, line: 626, type: !26)
!1353 = !DILocalVariable(name: "r", scope: !1349, file: !23, line: 628, type: !26)
!1354 = !DILocalVariable(name: "rhi", scope: !1349, file: !23, line: 628, type: !26)
!1355 = !DILocalVariable(name: "sp", scope: !1349, file: !23, line: 629, type: !41)
!1356 = !DILocalVariable(name: "res", scope: !1349, file: !23, line: 630, type: !58)
!1357 = !DILocalVariable(name: "res1", scope: !1349, file: !23, line: 630, type: !58)
!1358 = !DILocation(line: 0, scope: !1349, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 321, column: 13, scope: !1345, inlinedAt: !1075)
!1360 = !DILocation(line: 633, column: 12, scope: !1349, inlinedAt: !1359)
!1361 = !DILocation(line: 635, column: 13, scope: !1349, inlinedAt: !1359)
!1362 = !DILocation(line: 635, column: 8, scope: !1349, inlinedAt: !1359)
!1363 = !DILocation(line: 0, scope: !1364, inlinedAt: !1359)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !23, line: 636, column: 40)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !23, line: 636, column: 2)
!1366 = distinct !DILexicalBlock(scope: !1349, file: !23, line: 636, column: 2)
!1367 = !DILocation(line: 636, column: 7, scope: !1366, inlinedAt: !1359)
!1368 = !DILocation(line: 0, scope: !1366, inlinedAt: !1359)
!1369 = !DILocation(line: 636, column: 16, scope: !1365, inlinedAt: !1359)
!1370 = !DILocation(line: 636, column: 2, scope: !1366, inlinedAt: !1359)
!1371 = !DILocation(line: 637, column: 14, scope: !1364, inlinedAt: !1359)
!1372 = !DILocation(line: 637, column: 10, scope: !1364, inlinedAt: !1359)
!1373 = !DILocation(line: 638, column: 11, scope: !1374, inlinedAt: !1359)
!1374 = distinct !DILexicalBlock(scope: !1364, file: !23, line: 638, column: 7)
!1375 = !DILocation(line: 639, column: 16, scope: !1376, inlinedAt: !1359)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !23, line: 639, column: 8)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !23, line: 638, column: 20)
!1378 = !DILocation(line: 639, column: 11, scope: !1376, inlinedAt: !1359)
!1379 = !DILocation(line: 638, column: 7, scope: !1364, inlinedAt: !1359)
!1380 = !DILocation(line: 639, column: 29, scope: !1376, inlinedAt: !1359)
!1381 = distinct !{!1381, !1370, !1382}
!1382 = !DILocation(line: 642, column: 2, scope: !1366, inlinedAt: !1359)
!1383 = !DILocation(line: 323, column: 16, scope: !1300, inlinedAt: !1075)
!1384 = !DILocation(line: 323, column: 3, scope: !1300, inlinedAt: !1075)
!1385 = !DILocation(line: 324, column: 8, scope: !1386, inlinedAt: !1075)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !23, line: 324, column: 8)
!1387 = distinct !DILexicalBlock(scope: !1300, file: !23, line: 323, column: 38)
!1388 = !DILocation(line: 324, column: 8, scope: !1387, inlinedAt: !1075)
!1389 = !DILocation(line: 325, column: 9, scope: !1390, inlinedAt: !1075)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !23, line: 325, column: 9)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !23, line: 324, column: 36)
!1392 = !DILocation(line: 0, scope: !1308, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 325, column: 9, scope: !1390, inlinedAt: !1075)
!1394 = !DILocation(line: 0, scope: !620, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 598, column: 2, scope: !1308, inlinedAt: !1393)
!1396 = !DILocation(line: 700, column: 9, scope: !620, inlinedAt: !1395)
!1397 = !DILocation(line: 701, column: 7, scope: !631, inlinedAt: !1395)
!1398 = !DILocation(line: 0, scope: !631, inlinedAt: !1395)
!1399 = !DILocation(line: 701, column: 20, scope: !634, inlinedAt: !1395)
!1400 = !DILocation(line: 701, column: 2, scope: !631, inlinedAt: !1395)
!1401 = !DILocation(line: 703, column: 8, scope: !637, inlinedAt: !1395)
!1402 = !DILocation(line: 703, column: 11, scope: !637, inlinedAt: !1395)
!1403 = !DILocation(line: 704, column: 8, scope: !637, inlinedAt: !1395)
!1404 = !DILocation(line: 704, column: 11, scope: !637, inlinedAt: !1395)
!1405 = !DILocation(line: 705, column: 3, scope: !637, inlinedAt: !1395)
!1406 = !DILocation(line: 706, column: 8, scope: !645, inlinedAt: !1395)
!1407 = !DILocation(line: 706, column: 11, scope: !645, inlinedAt: !1395)
!1408 = !DILocation(line: 706, column: 4, scope: !645, inlinedAt: !1395)
!1409 = !DILocation(line: 708, column: 8, scope: !645, inlinedAt: !1395)
!1410 = !DILocation(line: 708, column: 11, scope: !645, inlinedAt: !1395)
!1411 = !DILocation(line: 0, scope: !638, inlinedAt: !1395)
!1412 = !DILocation(line: 701, column: 29, scope: !634, inlinedAt: !1395)
!1413 = !DILocation(line: 701, column: 2, scope: !634, inlinedAt: !1395)
!1414 = distinct !{!1414, !1400, !1415}
!1415 = !DILocation(line: 709, column: 2, scope: !631, inlinedAt: !1395)
!1416 = !DILocation(line: 710, column: 6, scope: !620, inlinedAt: !1395)
!1417 = !DILocation(line: 710, column: 9, scope: !620, inlinedAt: !1395)
!1418 = !DILocation(line: 711, column: 7, scope: !620, inlinedAt: !1395)
!1419 = !DILocation(line: 603, column: 2, scope: !1308, inlinedAt: !1393)
!1420 = !DILocation(line: 604, column: 21, scope: !1308, inlinedAt: !1393)
!1421 = !DILocation(line: 604, column: 10, scope: !1308, inlinedAt: !1393)
!1422 = !DILocation(line: 325, column: 9, scope: !1391, inlinedAt: !1075)
!1423 = !DILocation(line: 327, column: 37, scope: !1424, inlinedAt: !1075)
!1424 = distinct !DILexicalBlock(scope: !1386, file: !23, line: 327, column: 14)
!1425 = !DILocation(line: 327, column: 41, scope: !1424, inlinedAt: !1075)
!1426 = !DILocation(line: 327, column: 14, scope: !1424, inlinedAt: !1075)
!1427 = !DILocation(line: 0, scope: !1349, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 327, column: 14, scope: !1424, inlinedAt: !1075)
!1429 = !DILocation(line: 633, column: 12, scope: !1349, inlinedAt: !1428)
!1430 = !DILocation(line: 635, column: 13, scope: !1349, inlinedAt: !1428)
!1431 = !DILocation(line: 635, column: 8, scope: !1349, inlinedAt: !1428)
!1432 = !DILocation(line: 0, scope: !1364, inlinedAt: !1428)
!1433 = !DILocation(line: 636, column: 7, scope: !1366, inlinedAt: !1428)
!1434 = !DILocation(line: 0, scope: !1366, inlinedAt: !1428)
!1435 = !DILocation(line: 636, column: 16, scope: !1365, inlinedAt: !1428)
!1436 = !DILocation(line: 636, column: 2, scope: !1366, inlinedAt: !1428)
!1437 = !DILocation(line: 637, column: 14, scope: !1364, inlinedAt: !1428)
!1438 = !DILocation(line: 637, column: 10, scope: !1364, inlinedAt: !1428)
!1439 = !DILocation(line: 638, column: 11, scope: !1374, inlinedAt: !1428)
!1440 = !DILocation(line: 639, column: 16, scope: !1376, inlinedAt: !1428)
!1441 = !DILocation(line: 639, column: 11, scope: !1376, inlinedAt: !1428)
!1442 = !DILocation(line: 638, column: 7, scope: !1364, inlinedAt: !1428)
!1443 = !DILocation(line: 639, column: 29, scope: !1376, inlinedAt: !1428)
!1444 = distinct !{!1444, !1436, !1445}
!1445 = !DILocation(line: 642, column: 2, scope: !1366, inlinedAt: !1428)
!1446 = distinct !{!1446, !1384, !1447}
!1447 = !DILocation(line: 329, column: 3, scope: !1300, inlinedAt: !1075)
!1448 = !DILocation(line: 333, column: 1, scope: !1065, inlinedAt: !1075)
!1449 = !DILocation(line: 333, column: 13, scope: !1095, inlinedAt: !1075)
!1450 = !DILocation(line: 333, column: 13, scope: !1065, inlinedAt: !1075)
!1451 = !DILocation(line: 334, column: 8, scope: !1094, inlinedAt: !1075)
!1452 = !DILocation(line: 335, column: 7, scope: !1093, inlinedAt: !1075)
!1453 = !DILocation(line: 335, column: 7, scope: !1094, inlinedAt: !1075)
!1454 = !DILocation(line: 0, scope: !620, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 685, column: 2, scope: !1086, inlinedAt: !1090)
!1456 = !DILocation(line: 700, column: 9, scope: !620, inlinedAt: !1455)
!1457 = !DILocation(line: 701, column: 7, scope: !631, inlinedAt: !1455)
!1458 = !DILocation(line: 0, scope: !631, inlinedAt: !1455)
!1459 = !DILocation(line: 701, column: 20, scope: !634, inlinedAt: !1455)
!1460 = !DILocation(line: 701, column: 2, scope: !631, inlinedAt: !1455)
!1461 = !DILocation(line: 703, column: 8, scope: !637, inlinedAt: !1455)
!1462 = !DILocation(line: 703, column: 11, scope: !637, inlinedAt: !1455)
!1463 = !DILocation(line: 704, column: 8, scope: !637, inlinedAt: !1455)
!1464 = !DILocation(line: 704, column: 11, scope: !637, inlinedAt: !1455)
!1465 = !DILocation(line: 705, column: 3, scope: !637, inlinedAt: !1455)
!1466 = !DILocation(line: 706, column: 8, scope: !645, inlinedAt: !1455)
!1467 = !DILocation(line: 706, column: 11, scope: !645, inlinedAt: !1455)
!1468 = !DILocation(line: 706, column: 4, scope: !645, inlinedAt: !1455)
!1469 = !DILocation(line: 708, column: 8, scope: !645, inlinedAt: !1455)
!1470 = !DILocation(line: 708, column: 11, scope: !645, inlinedAt: !1455)
!1471 = !DILocation(line: 0, scope: !638, inlinedAt: !1455)
!1472 = !DILocation(line: 701, column: 29, scope: !634, inlinedAt: !1455)
!1473 = !DILocation(line: 701, column: 2, scope: !634, inlinedAt: !1455)
!1474 = distinct !{!1474, !1460, !1475}
!1475 = !DILocation(line: 709, column: 2, scope: !631, inlinedAt: !1455)
!1476 = !DILocation(line: 710, column: 6, scope: !620, inlinedAt: !1455)
!1477 = !DILocation(line: 710, column: 9, scope: !620, inlinedAt: !1455)
!1478 = !DILocation(line: 711, column: 7, scope: !620, inlinedAt: !1455)
!1479 = !DILocation(line: 690, column: 2, scope: !1086, inlinedAt: !1090)
!1480 = !DILocation(line: 691, column: 20, scope: !1086, inlinedAt: !1090)
!1481 = !{!335, !292, i64 0}
!1482 = !DILocation(line: 691, column: 10, scope: !1086, inlinedAt: !1090)
!1483 = !DILocation(line: 336, column: 8, scope: !1091, inlinedAt: !1075)
!1484 = !DILocation(line: 336, column: 8, scope: !1092, inlinedAt: !1075)
!1485 = !DILocation(line: 339, column: 13, scope: !1486, inlinedAt: !1075)
!1486 = distinct !DILexicalBlock(scope: !1093, file: !23, line: 338, column: 8)
!1487 = !DILocation(line: 339, column: 4, scope: !1486, inlinedAt: !1075)
!1488 = !DILocation(line: 340, column: 4, scope: !1486, inlinedAt: !1075)
!1489 = !DILocation(line: 342, column: 16, scope: !1094, inlinedAt: !1075)
!1490 = !DILocation(line: 342, column: 3, scope: !1094, inlinedAt: !1075)
!1491 = !DILocation(line: 343, column: 8, scope: !1492, inlinedAt: !1075)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !23, line: 343, column: 8)
!1493 = distinct !DILexicalBlock(scope: !1094, file: !23, line: 342, column: 38)
!1494 = !DILocation(line: 343, column: 8, scope: !1493, inlinedAt: !1075)
!1495 = !DILocation(line: 0, scope: !1086, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 344, column: 9, scope: !1497, inlinedAt: !1075)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !23, line: 344, column: 9)
!1498 = distinct !DILexicalBlock(scope: !1492, file: !23, line: 343, column: 36)
!1499 = !DILocation(line: 0, scope: !620, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 685, column: 2, scope: !1086, inlinedAt: !1496)
!1501 = !DILocation(line: 700, column: 9, scope: !620, inlinedAt: !1500)
!1502 = !DILocation(line: 701, column: 7, scope: !631, inlinedAt: !1500)
!1503 = !DILocation(line: 0, scope: !631, inlinedAt: !1500)
!1504 = !DILocation(line: 701, column: 20, scope: !634, inlinedAt: !1500)
!1505 = !DILocation(line: 701, column: 2, scope: !631, inlinedAt: !1500)
!1506 = !DILocation(line: 703, column: 8, scope: !637, inlinedAt: !1500)
!1507 = !DILocation(line: 703, column: 11, scope: !637, inlinedAt: !1500)
!1508 = !DILocation(line: 704, column: 8, scope: !637, inlinedAt: !1500)
!1509 = !DILocation(line: 704, column: 11, scope: !637, inlinedAt: !1500)
!1510 = !DILocation(line: 705, column: 3, scope: !637, inlinedAt: !1500)
!1511 = !DILocation(line: 706, column: 8, scope: !645, inlinedAt: !1500)
!1512 = !DILocation(line: 706, column: 11, scope: !645, inlinedAt: !1500)
!1513 = !DILocation(line: 706, column: 4, scope: !645, inlinedAt: !1500)
!1514 = !DILocation(line: 708, column: 8, scope: !645, inlinedAt: !1500)
!1515 = !DILocation(line: 708, column: 11, scope: !645, inlinedAt: !1500)
!1516 = !DILocation(line: 0, scope: !638, inlinedAt: !1500)
!1517 = !DILocation(line: 701, column: 29, scope: !634, inlinedAt: !1500)
!1518 = !DILocation(line: 701, column: 2, scope: !634, inlinedAt: !1500)
!1519 = distinct !{!1519, !1505, !1520}
!1520 = !DILocation(line: 709, column: 2, scope: !631, inlinedAt: !1500)
!1521 = !DILocation(line: 710, column: 6, scope: !620, inlinedAt: !1500)
!1522 = !DILocation(line: 710, column: 9, scope: !620, inlinedAt: !1500)
!1523 = !DILocation(line: 711, column: 7, scope: !620, inlinedAt: !1500)
!1524 = !DILocation(line: 690, column: 2, scope: !1086, inlinedAt: !1496)
!1525 = !DILocation(line: 691, column: 20, scope: !1086, inlinedAt: !1496)
!1526 = !DILocation(line: 691, column: 10, scope: !1086, inlinedAt: !1496)
!1527 = !DILocation(line: 344, column: 9, scope: !1497, inlinedAt: !1075)
!1528 = !DILocation(line: 344, column: 9, scope: !1498, inlinedAt: !1075)
!1529 = distinct !{!1529, !1490, !1530}
!1530 = !DILocation(line: 350, column: 3, scope: !1094, inlinedAt: !1075)
!1531 = !DILocation(line: 347, column: 14, scope: !1532, inlinedAt: !1075)
!1532 = distinct !DILexicalBlock(scope: !1492, file: !23, line: 346, column: 9)
!1533 = !DILocation(line: 347, column: 5, scope: !1532, inlinedAt: !1075)
!1534 = !DILocation(line: 348, column: 5, scope: !1532, inlinedAt: !1075)
!1535 = !DILocation(line: 355, column: 1, scope: !1065, inlinedAt: !1075)
!1536 = !DILocation(line: 156, column: 7, scope: !1077)
!1537 = !DILocation(line: 159, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1077, file: !23, line: 159, column: 7)
!1539 = !DILocation(line: 159, column: 7, scope: !1077)
!1540 = !DILocation(line: 160, column: 12, scope: !1538)
!1541 = !DILocation(line: 163, column: 1, scope: !1049)
!1542 = distinct !DISubprogram(name: "set_attr_if", scope: !23, file: !23, line: 165, type: !540, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1544 = !DILocalVariable(name: "mol", arg: 1, scope: !1542, file: !23, line: 165, type: !271)
!1545 = !DILocalVariable(name: "attr", arg: 2, scope: !1542, file: !23, line: 165, type: !26)
!1546 = !DILocalVariable(name: "i_attr", arg: 3, scope: !1542, file: !23, line: 165, type: !26)
!1547 = !DILocalVariable(name: "a", scope: !1542, file: !23, line: 167, type: !26)
!1548 = !DILocalVariable(name: "r", scope: !1542, file: !23, line: 167, type: !26)
!1549 = !DILocalVariable(name: "sp", scope: !1542, file: !23, line: 168, type: !41)
!1550 = !DILocalVariable(name: "res", scope: !1542, file: !23, line: 169, type: !58)
!1551 = !DILocalVariable(name: "ap", scope: !1542, file: !23, line: 170, type: !104)
!1552 = !DILocation(line: 0, scope: !1542)
!1553 = !DILocation(line: 172, column: 17, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1542, file: !23, line: 172, column: 2)
!1555 = !DILocation(line: 0, scope: !1554)
!1556 = !DILocation(line: 172, column: 2, scope: !1554)
!1557 = !DILocation(line: 173, column: 23, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !23, line: 172, column: 49)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !23, line: 172, column: 2)
!1560 = !DILocation(line: 173, column: 30, scope: !1558)
!1561 = !DILocation(line: 173, column: 17, scope: !1558)
!1562 = !DILocation(line: 173, column: 14, scope: !1558)
!1563 = !DILocation(line: 174, column: 23, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !23, line: 174, column: 3)
!1565 = distinct !DILexicalBlock(scope: !1558, file: !23, line: 174, column: 3)
!1566 = !DILocation(line: 174, column: 17, scope: !1564)
!1567 = !DILocation(line: 174, column: 3, scope: !1565)
!1568 = !DILocation(line: 0, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !23, line: 174, column: 41)
!1570 = !DILocation(line: 175, column: 10, scope: !1569)
!1571 = !DILocation(line: 176, column: 26, scope: !1569)
!1572 = !DILocation(line: 176, column: 33, scope: !1569)
!1573 = !DILocation(line: 176, column: 19, scope: !1569)
!1574 = !DILocation(line: 176, column: 16, scope: !1569)
!1575 = !DILocation(line: 178, column: 25, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !23, line: 178, column: 4)
!1577 = distinct !DILexicalBlock(scope: !1569, file: !23, line: 178, column: 4)
!1578 = !DILocation(line: 178, column: 18, scope: !1576)
!1579 = !DILocation(line: 178, column: 4, scope: !1577)
!1580 = !DILocation(line: 0, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !23, line: 178, column: 40)
!1582 = !DILocation(line: 180, column: 25, scope: !1581)
!1583 = !DILocation(line: 180, column: 32, scope: !1581)
!1584 = !DILocation(line: 180, column: 19, scope: !1581)
!1585 = !DILocation(line: 180, column: 16, scope: !1581)
!1586 = !DILocation(line: 178, column: 36, scope: !1576)
!1587 = distinct !{!1587, !1579, !1588}
!1588 = !DILocation(line: 182, column: 4, scope: !1577)
!1589 = !DILocation(line: 174, column: 37, scope: !1564)
!1590 = distinct !{!1590, !1567, !1591}
!1591 = !DILocation(line: 183, column: 3, scope: !1565)
!1592 = !DILocation(line: 172, column: 41, scope: !1559)
!1593 = distinct !{!1593, !1556, !1594}
!1594 = !DILocation(line: 184, column: 2, scope: !1554)
!1595 = !DILocation(line: 185, column: 1, scope: !1542)
!1596 = distinct !DISubprogram(name: "clear_attr", scope: !23, file: !23, line: 187, type: !1597, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1599)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{null, !271, !26}
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605}
!1600 = !DILocalVariable(name: "mol", arg: 1, scope: !1596, file: !23, line: 187, type: !271)
!1601 = !DILocalVariable(name: "attr", arg: 2, scope: !1596, file: !23, line: 187, type: !26)
!1602 = !DILocalVariable(name: "a", scope: !1596, file: !23, line: 189, type: !26)
!1603 = !DILocalVariable(name: "r", scope: !1596, file: !23, line: 189, type: !26)
!1604 = !DILocalVariable(name: "sp", scope: !1596, file: !23, line: 190, type: !41)
!1605 = !DILocalVariable(name: "res", scope: !1596, file: !23, line: 191, type: !58)
!1606 = !DILocation(line: 0, scope: !1596)
!1607 = !DILocation(line: 193, column: 17, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1596, file: !23, line: 193, column: 2)
!1609 = !DILocation(line: 0, scope: !1608)
!1610 = !DILocation(line: 193, column: 2, scope: !1608)
!1611 = !DILocation(line: 0, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !23, line: 193, column: 49)
!1613 = distinct !DILexicalBlock(scope: !1608, file: !23, line: 193, column: 2)
!1614 = !DILocation(line: 194, column: 7, scope: !1612)
!1615 = !DILocation(line: 194, column: 14, scope: !1612)
!1616 = !DILocation(line: 195, column: 23, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !23, line: 195, column: 3)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !23, line: 195, column: 3)
!1619 = !DILocation(line: 195, column: 17, scope: !1617)
!1620 = !DILocation(line: 195, column: 3, scope: !1618)
!1621 = !DILocation(line: 0, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !23, line: 195, column: 41)
!1623 = !DILocation(line: 196, column: 10, scope: !1622)
!1624 = !DILocation(line: 197, column: 9, scope: !1622)
!1625 = !DILocation(line: 197, column: 16, scope: !1622)
!1626 = !DILocation(line: 198, column: 25, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !23, line: 198, column: 4)
!1628 = distinct !DILexicalBlock(scope: !1622, file: !23, line: 198, column: 4)
!1629 = !DILocation(line: 198, column: 18, scope: !1627)
!1630 = !DILocation(line: 198, column: 4, scope: !1628)
!1631 = !DILocation(line: 0, scope: !1627)
!1632 = !DILocation(line: 199, column: 23, scope: !1627)
!1633 = !DILocation(line: 199, column: 30, scope: !1627)
!1634 = !DILocation(line: 198, column: 36, scope: !1627)
!1635 = distinct !{!1635, !1630, !1636}
!1636 = !DILocation(line: 199, column: 34, scope: !1628)
!1637 = distinct !{!1637, !428}
!1638 = !DILocation(line: 195, column: 37, scope: !1617)
!1639 = distinct !{!1639, !1620, !1640}
!1640 = !DILocation(line: 200, column: 3, scope: !1618)
!1641 = !DILocation(line: 193, column: 41, scope: !1613)
!1642 = distinct !{!1642, !1610, !1643}
!1643 = !DILocation(line: 201, column: 2, scope: !1608)
!1644 = !DILocation(line: 202, column: 1, scope: !1596)
!1645 = distinct !DISubprogram(name: "is_pattern", scope: !23, file: !23, line: 357, type: !1646, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1649)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!26, !239, !1648, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1649 = !{!1650, !1651, !1652, !1653, !1654}
!1650 = !DILocalVariable(name: "item", arg: 1, scope: !1645, file: !23, line: 357, type: !239)
!1651 = !DILocalVariable(name: "lo", arg: 2, scope: !1645, file: !23, line: 357, type: !1648)
!1652 = !DILocalVariable(name: "hi", arg: 3, scope: !1645, file: !23, line: 357, type: !1648)
!1653 = !DILocalVariable(name: "val", scope: !1645, file: !23, line: 359, type: !26)
!1654 = !DILocalVariable(name: "ip", scope: !1645, file: !23, line: 360, type: !239)
!1655 = !DILocation(line: 0, scope: !1645)
!1656 = !DILocation(line: 362, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1645, file: !23, line: 362, column: 6)
!1658 = !{!1659, !1659, i64 0}
!1659 = !{!"short", !293, i64 0}
!1660 = !DILocation(line: 362, column: 33, scope: !1657)
!1661 = !DILocation(line: 362, column: 24, scope: !1657)
!1662 = !DILocation(line: 364, column: 6, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1645, file: !23, line: 364, column: 6)
!1664 = !DILocation(line: 364, column: 6, scope: !1645)
!1665 = !DILocation(line: 365, column: 28, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !23, line: 365, column: 3)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !23, line: 365, column: 3)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !23, line: 364, column: 24)
!1669 = !DILocation(line: 366, column: 13, scope: !1666)
!1670 = !DILocation(line: 366, column: 19, scope: !1666)
!1671 = !DILocation(line: 366, column: 25, scope: !1666)
!1672 = !DILocation(line: 365, column: 46, scope: !1666)
!1673 = !DILocation(line: 365, column: 3, scope: !1667)
!1674 = distinct !{!1674, !1673, !1675}
!1675 = !DILocation(line: 366, column: 27, scope: !1667)
!1676 = !DILocation(line: 367, column: 7, scope: !1668)
!1677 = !DILocation(line: 368, column: 8, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1668, file: !23, line: 368, column: 7)
!1679 = !DILocation(line: 368, column: 7, scope: !1668)
!1680 = !DILocation(line: 369, column: 8, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !23, line: 368, column: 13)
!1682 = !DILocation(line: 370, column: 4, scope: !1681)
!1683 = !DILocation(line: 372, column: 6, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1678, file: !23, line: 371, column: 13)
!1685 = !DILocation(line: 373, column: 8, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1668, file: !23, line: 373, column: 7)
!1687 = !DILocation(line: 372, column: 4, scope: !1684)
!1688 = !DILocation(line: 0, scope: !1668)
!1689 = !DILocation(line: 373, column: 7, scope: !1668)
!1690 = !DILocation(line: 374, column: 8, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !23, line: 373, column: 13)
!1692 = !DILocation(line: 375, column: 4, scope: !1691)
!1693 = !DILocation(line: 376, column: 14, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1686, file: !23, line: 376, column: 13)
!1695 = !DILocation(line: 376, column: 13, scope: !1686)
!1696 = !DILocation(line: 378, column: 17, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !23, line: 378, column: 3)
!1698 = distinct !DILexicalBlock(scope: !1668, file: !23, line: 378, column: 3)
!1699 = !DILocation(line: 379, column: 13, scope: !1697)
!1700 = !DILocation(line: 379, column: 19, scope: !1697)
!1701 = !DILocation(line: 379, column: 25, scope: !1697)
!1702 = !DILocation(line: 378, column: 35, scope: !1697)
!1703 = !DILocation(line: 378, column: 3, scope: !1698)
!1704 = distinct !{!1704, !1703, !1705}
!1705 = !DILocation(line: 379, column: 27, scope: !1698)
!1706 = !DILocation(line: 380, column: 7, scope: !1668)
!1707 = !DILocation(line: 381, column: 11, scope: !1668)
!1708 = !DILocation(line: 381, column: 9, scope: !1668)
!1709 = !DILocation(line: 381, column: 3, scope: !1668)
!1710 = !DILocation(line: 383, column: 7, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1663, file: !23, line: 382, column: 7)
!1712 = !DILocation(line: 384, column: 9, scope: !1711)
!1713 = !DILocation(line: 386, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1645, file: !23, line: 386, column: 6)
!1715 = !DILocation(line: 386, column: 6, scope: !1645)
!1716 = !DILocation(line: 387, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1714, file: !23, line: 386, column: 12)
!1718 = !DILocation(line: 388, column: 3, scope: !1717)
!1719 = !DILocation(line: 389, column: 12, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1714, file: !23, line: 389, column: 12)
!1721 = !DILocation(line: 389, column: 12, scope: !1714)
!1722 = !DILocation(line: 390, column: 17, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !23, line: 390, column: 3)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !23, line: 390, column: 3)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !23, line: 389, column: 28)
!1726 = !DILocation(line: 391, column: 13, scope: !1723)
!1727 = !DILocation(line: 391, column: 19, scope: !1723)
!1728 = !DILocation(line: 391, column: 25, scope: !1723)
!1729 = !DILocation(line: 390, column: 35, scope: !1723)
!1730 = !DILocation(line: 390, column: 3, scope: !1724)
!1731 = distinct !{!1731, !1730, !1732}
!1732 = !DILocation(line: 391, column: 27, scope: !1724)
!1733 = !DILocation(line: 392, column: 7, scope: !1725)
!1734 = !DILocation(line: 393, column: 11, scope: !1725)
!1735 = !DILocation(line: 393, column: 9, scope: !1725)
!1736 = !DILocation(line: 393, column: 3, scope: !1725)
!1737 = !DILocation(line: 396, column: 1, scope: !1645)
!1738 = distinct !DISubprogram(name: "match_res_pat", scope: !23, file: !23, line: 565, type: !612, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1739)
!1739 = !{!1740, !1741, !1742, !1743, !1744}
!1740 = !DILocalVariable(name: "mol", arg: 1, scope: !1738, file: !23, line: 565, type: !271)
!1741 = !DILocalVariable(name: "pat", arg: 2, scope: !1738, file: !23, line: 565, type: !239)
!1742 = !DILocalVariable(name: "r", scope: !1738, file: !23, line: 567, type: !26)
!1743 = !DILocalVariable(name: "sp", scope: !1738, file: !23, line: 568, type: !41)
!1744 = !DILocalVariable(name: "res", scope: !1738, file: !23, line: 569, type: !58)
!1745 = !DILocation(line: 0, scope: !1738)
!1746 = !DILocation(line: 0, scope: !620, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 571, column: 2, scope: !1738)
!1748 = !DILocation(line: 700, column: 9, scope: !620, inlinedAt: !1747)
!1749 = !DILocation(line: 701, column: 7, scope: !631, inlinedAt: !1747)
!1750 = !DILocation(line: 0, scope: !631, inlinedAt: !1747)
!1751 = !DILocation(line: 701, column: 20, scope: !634, inlinedAt: !1747)
!1752 = !DILocation(line: 701, column: 2, scope: !631, inlinedAt: !1747)
!1753 = !DILocation(line: 703, column: 8, scope: !637, inlinedAt: !1747)
!1754 = !DILocation(line: 703, column: 11, scope: !637, inlinedAt: !1747)
!1755 = !DILocation(line: 704, column: 8, scope: !637, inlinedAt: !1747)
!1756 = !DILocation(line: 704, column: 11, scope: !637, inlinedAt: !1747)
!1757 = !DILocation(line: 705, column: 3, scope: !637, inlinedAt: !1747)
!1758 = !DILocation(line: 706, column: 8, scope: !645, inlinedAt: !1747)
!1759 = !DILocation(line: 706, column: 11, scope: !645, inlinedAt: !1747)
!1760 = !DILocation(line: 706, column: 4, scope: !645, inlinedAt: !1747)
!1761 = !DILocation(line: 708, column: 8, scope: !645, inlinedAt: !1747)
!1762 = !DILocation(line: 708, column: 11, scope: !645, inlinedAt: !1747)
!1763 = !DILocation(line: 0, scope: !638, inlinedAt: !1747)
!1764 = !DILocation(line: 701, column: 29, scope: !634, inlinedAt: !1747)
!1765 = !DILocation(line: 701, column: 2, scope: !634, inlinedAt: !1747)
!1766 = distinct !{!1766, !1752, !1767}
!1767 = !DILocation(line: 709, column: 2, scope: !631, inlinedAt: !1747)
!1768 = !DILocation(line: 710, column: 6, scope: !620, inlinedAt: !1747)
!1769 = !DILocation(line: 710, column: 9, scope: !620, inlinedAt: !1747)
!1770 = !DILocation(line: 711, column: 7, scope: !620, inlinedAt: !1747)
!1771 = !DILocation(line: 575, column: 2, scope: !1738)
!1772 = !DILocation(line: 577, column: 17, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1738, file: !23, line: 577, column: 2)
!1774 = !DILocation(line: 0, scope: !1773)
!1775 = !DILocation(line: 577, column: 2, scope: !1773)
!1776 = !DILocation(line: 578, column: 23, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !23, line: 578, column: 7)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !23, line: 577, column: 49)
!1779 = distinct !DILexicalBlock(scope: !1773, file: !23, line: 577, column: 2)
!1780 = !DILocation(line: 578, column: 17, scope: !1777)
!1781 = !DILocation(line: 578, column: 7, scope: !1778)
!1782 = !DILocation(line: 579, column: 24, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !23, line: 579, column: 4)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !23, line: 579, column: 4)
!1785 = distinct !DILexicalBlock(scope: !1777, file: !23, line: 578, column: 31)
!1786 = !DILocation(line: 579, column: 18, scope: !1783)
!1787 = !DILocation(line: 579, column: 4, scope: !1784)
!1788 = !DILocation(line: 0, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1783, file: !23, line: 579, column: 42)
!1790 = !DILocation(line: 580, column: 15, scope: !1789)
!1791 = !DILocation(line: 580, column: 11, scope: !1789)
!1792 = !DILocation(line: 585, column: 31, scope: !1789)
!1793 = !DILocation(line: 585, column: 20, scope: !1789)
!1794 = !DILocation(line: 585, column: 10, scope: !1789)
!1795 = !DILocation(line: 585, column: 17, scope: !1789)
!1796 = !DILocation(line: 579, column: 38, scope: !1783)
!1797 = distinct !{!1797, !1787, !1798}
!1798 = !DILocation(line: 588, column: 4, scope: !1784)
!1799 = !DILocation(line: 577, column: 41, scope: !1779)
!1800 = distinct !{!1800, !1775, !1801}
!1801 = !DILocation(line: 590, column: 2, scope: !1773)
!1802 = !DILocation(line: 591, column: 1, scope: !1738)
!1803 = distinct !DISubprogram(name: "match_atom_pat", scope: !23, file: !23, line: 646, type: !612, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811}
!1805 = !DILocalVariable(name: "mol", arg: 1, scope: !1803, file: !23, line: 646, type: !271)
!1806 = !DILocalVariable(name: "pat", arg: 2, scope: !1803, file: !23, line: 646, type: !239)
!1807 = !DILocalVariable(name: "r", scope: !1803, file: !23, line: 648, type: !26)
!1808 = !DILocalVariable(name: "a", scope: !1803, file: !23, line: 648, type: !26)
!1809 = !DILocalVariable(name: "sp", scope: !1803, file: !23, line: 649, type: !41)
!1810 = !DILocalVariable(name: "res", scope: !1803, file: !23, line: 650, type: !58)
!1811 = !DILocalVariable(name: "ap", scope: !1803, file: !23, line: 651, type: !104)
!1812 = !DILocation(line: 0, scope: !1803)
!1813 = !DILocation(line: 653, column: 2, scope: !1803)
!1814 = !DILocation(line: 657, column: 2, scope: !1803)
!1815 = !DILocation(line: 659, column: 17, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1803, file: !23, line: 659, column: 2)
!1817 = !DILocation(line: 0, scope: !1816)
!1818 = !DILocation(line: 659, column: 2, scope: !1816)
!1819 = !DILocation(line: 660, column: 23, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !23, line: 660, column: 7)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !23, line: 659, column: 49)
!1822 = distinct !DILexicalBlock(scope: !1816, file: !23, line: 659, column: 2)
!1823 = !DILocation(line: 660, column: 17, scope: !1820)
!1824 = !DILocation(line: 660, column: 7, scope: !1821)
!1825 = !DILocation(line: 661, column: 24, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !23, line: 661, column: 4)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !23, line: 661, column: 4)
!1828 = distinct !DILexicalBlock(scope: !1820, file: !23, line: 660, column: 31)
!1829 = !DILocation(line: 661, column: 18, scope: !1826)
!1830 = !DILocation(line: 661, column: 4, scope: !1827)
!1831 = !DILocation(line: 0, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1826, file: !23, line: 661, column: 42)
!1833 = !DILocation(line: 662, column: 15, scope: !1832)
!1834 = !DILocation(line: 662, column: 11, scope: !1832)
!1835 = !DILocation(line: 663, column: 26, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !23, line: 663, column: 9)
!1837 = !DILocation(line: 663, column: 19, scope: !1836)
!1838 = !DILocation(line: 663, column: 9, scope: !1832)
!1839 = !DILocation(line: 664, column: 27, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !23, line: 664, column: 6)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !23, line: 664, column: 6)
!1842 = distinct !DILexicalBlock(scope: !1836, file: !23, line: 663, column: 34)
!1843 = !DILocation(line: 664, column: 20, scope: !1840)
!1844 = !DILocation(line: 664, column: 6, scope: !1841)
!1845 = !DILocation(line: 0, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1840, file: !23, line: 664, column: 42)
!1847 = !DILocation(line: 665, column: 18, scope: !1846)
!1848 = !DILocation(line: 672, column: 20, scope: !1846)
!1849 = !DILocation(line: 672, column: 11, scope: !1846)
!1850 = !DILocation(line: 671, column: 11, scope: !1846)
!1851 = !DILocation(line: 671, column: 18, scope: !1846)
!1852 = !DILocation(line: 664, column: 38, scope: !1840)
!1853 = distinct !{!1853, !1844, !1854}
!1854 = !DILocation(line: 675, column: 6, scope: !1841)
!1855 = !DILocation(line: 661, column: 38, scope: !1826)
!1856 = distinct !{!1856, !1830, !1857}
!1857 = !DILocation(line: 677, column: 4, scope: !1827)
!1858 = !DILocation(line: 659, column: 41, scope: !1822)
!1859 = distinct !{!1859, !1818, !1860}
!1860 = !DILocation(line: 679, column: 2, scope: !1816)
!1861 = !DILocation(line: 680, column: 1, scope: !1803)
!1862 = !DILocation(line: 0, scope: !620)
!1863 = !DILocation(line: 700, column: 9, scope: !620)
!1864 = !DILocation(line: 701, column: 7, scope: !631)
!1865 = !DILocation(line: 0, scope: !631)
!1866 = !DILocation(line: 701, column: 20, scope: !634)
!1867 = !DILocation(line: 701, column: 2, scope: !631)
!1868 = !DILocation(line: 703, column: 8, scope: !637)
!1869 = !DILocation(line: 703, column: 11, scope: !637)
!1870 = !DILocation(line: 704, column: 8, scope: !637)
!1871 = !DILocation(line: 704, column: 11, scope: !637)
!1872 = !DILocation(line: 705, column: 3, scope: !637)
!1873 = !DILocation(line: 706, column: 8, scope: !645)
!1874 = !DILocation(line: 706, column: 11, scope: !645)
!1875 = !DILocation(line: 706, column: 4, scope: !645)
!1876 = !DILocation(line: 708, column: 8, scope: !645)
!1877 = !DILocation(line: 708, column: 11, scope: !645)
!1878 = !DILocation(line: 0, scope: !638)
!1879 = !DILocation(line: 701, column: 29, scope: !634)
!1880 = !DILocation(line: 701, column: 2, scope: !634)
!1881 = distinct !{!1881, !1867, !1882}
!1882 = !DILocation(line: 709, column: 2, scope: !631)
!1883 = !DILocation(line: 710, column: 6, scope: !620)
!1884 = !DILocation(line: 710, column: 9, scope: !620)
!1885 = !DILocation(line: 711, column: 7, scope: !620)
!1886 = !DILocation(line: 712, column: 1, scope: !620)
