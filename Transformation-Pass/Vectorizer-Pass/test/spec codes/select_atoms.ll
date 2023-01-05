; ModuleID = '/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/select_atoms.c'
source_filename = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/select_atoms.c"
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
  br i1 %7, label %91, label %8, !dbg !295

8:                                                ; preds = %3, %81
  %9 = phi %struct.strand_t* [ %87, %81 ], [ %6, %3 ]
  %10 = phi double [ %85, %81 ], [ 0.000000e+00, %3 ]
  %11 = phi double [ %84, %81 ], [ 0.000000e+00, %3 ]
  %12 = phi double [ %83, %81 ], [ 0.000000e+00, %3 ]
  %13 = phi i32 [ %82, %81 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata double %10, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %11, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %12, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %13, metadata !279, metadata !DIExpression()), !dbg !286
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 2, !dbg !296
  %15 = load i32, i32* %14, align 4, !dbg !296, !tbaa !300
  %16 = and i32 %15, 1, !dbg !303
  %17 = icmp eq i32 %16, 0, !dbg !303
  br i1 %17, label %81, label %18, !dbg !304

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata double %10, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %11, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %12, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 0, metadata !277, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %13, metadata !279, metadata !DIExpression()), !dbg !286
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 5, !dbg !305
  %20 = load i32, i32* %19, align 8, !dbg !305, !tbaa !309
  %21 = icmp sgt i32 %20, 0, !dbg !310
  br i1 %21, label %22, label %81, !dbg !311

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 7, !dbg !312
  %24 = load %struct.residue_t**, %struct.residue_t*** %23, align 8, !dbg !312, !tbaa !314
  %25 = zext i32 %20 to i64, !dbg !311
  br label %26, !dbg !311

26:                                               ; preds = %22, %74
  %27 = phi i64 [ 0, %22 ], [ %79, %74 ]
  %28 = phi double [ %10, %22 ], [ %78, %74 ]
  %29 = phi double [ %11, %22 ], [ %77, %74 ]
  %30 = phi double [ %12, %22 ], [ %76, %74 ]
  %31 = phi i32 [ %13, %22 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata double %28, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %29, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %30, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 %27, metadata !277, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %31, metadata !279, metadata !DIExpression()), !dbg !286
  %32 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %24, i64 %27, !dbg !315
  %33 = load %struct.residue_t*, %struct.residue_t** %32, align 8, !dbg !315, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %33, metadata !281, metadata !DIExpression()), !dbg !286
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i64 0, i32 6, !dbg !316
  %35 = load i32, i32* %34, align 8, !dbg !316, !tbaa !318
  %36 = and i32 %35, 1, !dbg !320
  %37 = icmp eq i32 %36, 0, !dbg !320
  br i1 %37, label %74, label %38, !dbg !321

38:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double %28, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %29, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %30, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %31, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !286
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i64 0, i32 15, !dbg !322
  %40 = load i32, i32* %39, align 8, !dbg !322, !tbaa !326
  %41 = icmp sgt i32 %40, 0, !dbg !327
  br i1 %41, label %42, label %74, !dbg !328

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i64 0, i32 17, !dbg !329
  %44 = load %struct.atom_t*, %struct.atom_t** %43, align 8, !dbg !329, !tbaa !331
  %45 = zext i32 %40 to i64, !dbg !328
  br label %46, !dbg !328

46:                                               ; preds = %42, %67
  %47 = phi i64 [ 0, %42 ], [ %72, %67 ]
  %48 = phi double [ %28, %42 ], [ %71, %67 ]
  %49 = phi double [ %29, %42 ], [ %70, %67 ]
  %50 = phi double [ %30, %42 ], [ %69, %67 ]
  %51 = phi i32 [ %31, %42 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata double %48, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %49, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %50, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %51, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 %47, metadata !278, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !282, metadata !DIExpression()), !dbg !286
  %52 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %44, i64 %47, i32 2, !dbg !332
  %53 = load i32, i32* %52, align 8, !dbg !332, !tbaa !334
  %54 = and i32 %53, 1, !dbg !337
  %55 = icmp eq i32 %54, 0, !dbg !337
  br i1 %55, label %67, label %56, !dbg !338

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %44, i64 %47, i32 17, i64 0, !dbg !339
  %58 = load double, double* %57, align 8, !dbg !339, !tbaa !341
  %59 = fadd double %50, %58, !dbg !342
  call void @llvm.dbg.value(metadata double %59, metadata !283, metadata !DIExpression()), !dbg !286
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %44, i64 %47, i32 17, i64 1, !dbg !343
  %61 = load double, double* %60, align 8, !dbg !343, !tbaa !341
  %62 = fadd double %49, %61, !dbg !344
  call void @llvm.dbg.value(metadata double %62, metadata !284, metadata !DIExpression()), !dbg !286
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %44, i64 %47, i32 17, i64 2, !dbg !345
  %64 = load double, double* %63, align 8, !dbg !345, !tbaa !341
  %65 = fadd double %48, %64, !dbg !346
  call void @llvm.dbg.value(metadata double %65, metadata !285, metadata !DIExpression()), !dbg !286
  %66 = add nsw i32 %51, 1, !dbg !347
  call void @llvm.dbg.value(metadata i32 %66, metadata !279, metadata !DIExpression()), !dbg !286
  br label %67, !dbg !348

67:                                               ; preds = %46, %56
  %68 = phi i32 [ %66, %56 ], [ %51, %46 ], !dbg !290
  %69 = phi double [ %59, %56 ], [ %50, %46 ], !dbg !286
  %70 = phi double [ %62, %56 ], [ %49, %46 ], !dbg !286
  %71 = phi double [ %65, %56 ], [ %48, %46 ], !dbg !286
  call void @llvm.dbg.value(metadata double %71, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %70, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %69, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %68, metadata !279, metadata !DIExpression()), !dbg !286
  %72 = add nuw nsw i64 %47, 1, !dbg !349
  call void @llvm.dbg.value(metadata i64 %72, metadata !278, metadata !DIExpression()), !dbg !286
  %73 = icmp ult i64 %72, %45, !dbg !327
  br i1 %73, label %46, label %74, !dbg !328, !llvm.loop !350

74:                                               ; preds = %67, %38, %26
  %75 = phi i32 [ %31, %26 ], [ %31, %38 ], [ %68, %67 ], !dbg !352
  %76 = phi double [ %30, %26 ], [ %30, %38 ], [ %69, %67 ], !dbg !353
  %77 = phi double [ %29, %26 ], [ %29, %38 ], [ %70, %67 ], !dbg !354
  %78 = phi double [ %28, %26 ], [ %28, %38 ], [ %71, %67 ], !dbg !355
  call void @llvm.dbg.value(metadata double %78, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %77, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %76, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %75, metadata !279, metadata !DIExpression()), !dbg !286
  %79 = add nuw nsw i64 %27, 1, !dbg !356
  call void @llvm.dbg.value(metadata i64 %79, metadata !277, metadata !DIExpression()), !dbg !286
  %80 = icmp ult i64 %79, %25, !dbg !310
  br i1 %80, label %26, label %81, !dbg !311, !llvm.loop !357

81:                                               ; preds = %74, %18, %8
  %82 = phi i32 [ %13, %8 ], [ %13, %18 ], [ %75, %74 ], !dbg !352
  %83 = phi double [ %12, %8 ], [ %12, %18 ], [ %76, %74 ], !dbg !353
  %84 = phi double [ %11, %8 ], [ %11, %18 ], [ %77, %74 ], !dbg !354
  %85 = phi double [ %10, %8 ], [ %10, %18 ], [ %78, %74 ], !dbg !355
  call void @llvm.dbg.value(metadata double %85, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %84, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %83, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %82, metadata !279, metadata !DIExpression()), !dbg !286
  %86 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 4, !dbg !359
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !280, metadata !DIExpression()), !dbg !286
  %87 = load %struct.strand_t*, %struct.strand_t** %86, align 8, !dbg !290, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %87, metadata !280, metadata !DIExpression()), !dbg !286
  %88 = icmp eq %struct.strand_t* %87, null, !dbg !295
  br i1 %88, label %89, label %8, !dbg !295, !llvm.loop !360

89:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i32 %82, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %83, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %84, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %85, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %82, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %83, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %84, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %85, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %82, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %83, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %84, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %85, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %82, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %83, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %84, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %85, metadata !285, metadata !DIExpression()), !dbg !286
  %90 = icmp eq i32 %82, 0, !dbg !362
  br i1 %90, label %91, label %94, !dbg !364

91:                                               ; preds = %3, %89
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !365, !tbaa !291
  %93 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %1) #11, !dbg !367
  br label %101, !dbg !368

94:                                               ; preds = %89
  %95 = sitofp i32 %82 to double, !dbg !369
  %96 = fdiv double %83, %95, !dbg !371
  store double %96, double* %2, align 8, !dbg !372, !tbaa !341
  %97 = fdiv double %84, %95, !dbg !373
  %98 = getelementptr inbounds double, double* %2, i64 1, !dbg !374
  store double %97, double* %98, align 8, !dbg !375, !tbaa !341
  %99 = fdiv double %85, %95, !dbg !376
  %100 = getelementptr inbounds double, double* %2, i64 2, !dbg !377
  store double %99, double* %100, align 8, !dbg !378, !tbaa !341
  br label %101, !dbg !379

101:                                              ; preds = %94, %91
  %102 = phi i32 [ 1, %91 ], [ 0, %94 ], !dbg !286
  ret i32 %102, !dbg !380
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* readonly %0, i8* %1) local_unnamed_addr #0 !dbg !381 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !385, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i8* %1, metadata !386, metadata !DIExpression()), !dbg !390
  %5 = icmp eq i8* %1, null, !dbg !391
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !390
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !390, !tbaa !291
  %8 = icmp eq %struct.strand_t* %7, null, !dbg !390
  br i1 %5, label %9, label %50, !dbg !393

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !394, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !401, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !401, metadata !DIExpression()), !dbg !403
  br i1 %8, label %687, label %10, !dbg !406

10:                                               ; preds = %9, %46
  %11 = phi %struct.strand_t* [ %48, %46 ], [ %7, %9 ]
  %12 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 2, !dbg !408
  %13 = load i32, i32* %12, align 4, !dbg !411, !tbaa !300
  %14 = or i32 %13, 1, !dbg !411
  store i32 %14, i32* %12, align 4, !dbg !411, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !400, metadata !DIExpression()), !dbg !403
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 5, !dbg !412
  %16 = load i32, i32* %15, align 8, !dbg !412, !tbaa !309
  %17 = icmp sgt i32 %16, 0, !dbg !415
  br i1 %17, label %18, label %46, !dbg !416

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 7, !dbg !417
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !417, !tbaa !314
  %21 = zext i32 %16 to i64, !dbg !416
  br label %22, !dbg !416

22:                                               ; preds = %43, %18
  %23 = phi i64 [ 0, %18 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !400, metadata !DIExpression()), !dbg !403
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %23, !dbg !419
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !419, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !402, metadata !DIExpression()), !dbg !403
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 6, !dbg !420
  %27 = load i32, i32* %26, align 8, !dbg !421, !tbaa !318
  %28 = or i32 %27, 1, !dbg !421
  store i32 %28, i32* %26, align 8, !dbg !421, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !399, metadata !DIExpression()), !dbg !403
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 15, !dbg !422
  %30 = load i32, i32* %29, align 8, !dbg !422, !tbaa !326
  %31 = icmp sgt i32 %30, 0, !dbg !425
  br i1 %31, label %32, label %43, !dbg !426

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 17, !dbg !427
  %34 = load %struct.atom_t*, %struct.atom_t** %33, align 8, !dbg !427, !tbaa !331
  %35 = zext i32 %30 to i64, !dbg !426
  br label %36, !dbg !426

36:                                               ; preds = %36, %32
  %37 = phi i64 [ 0, %32 ], [ %41, %36 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !399, metadata !DIExpression()), !dbg !403
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %37, i32 2, !dbg !428
  %39 = load i32, i32* %38, align 8, !dbg !429, !tbaa !334
  %40 = or i32 %39, 1, !dbg !429
  store i32 %40, i32* %38, align 8, !dbg !429, !tbaa !334
  %41 = add nuw nsw i64 %37, 1, !dbg !430
  call void @llvm.dbg.value(metadata i64 %41, metadata !399, metadata !DIExpression()), !dbg !403
  %42 = icmp eq i64 %41, %35, !dbg !425
  br i1 %42, label %43, label %36, !dbg !426, !llvm.loop !431

43:                                               ; preds = %36, %22
  %44 = add nuw nsw i64 %23, 1, !dbg !433
  call void @llvm.dbg.value(metadata i64 %44, metadata !400, metadata !DIExpression()), !dbg !403
  %45 = icmp eq i64 %44, %21, !dbg !415
  br i1 %45, label %46, label %22, !dbg !416, !llvm.loop !434

46:                                               ; preds = %43, %10
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i64 0, i32 4, !dbg !436
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !401, metadata !DIExpression()), !dbg !403
  %48 = load %struct.strand_t*, %struct.strand_t** %47, align 8, !dbg !437, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %48, metadata !401, metadata !DIExpression()), !dbg !403
  %49 = icmp eq %struct.strand_t* %48, null, !dbg !406
  br i1 %49, label %687, label %10, !dbg !406, !llvm.loop !438

50:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !440, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !445, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !445, metadata !DIExpression()), !dbg !447
  br i1 %8, label %131, label %51, !dbg !449

51:                                               ; preds = %50, %87
  %52 = phi %struct.strand_t* [ %89, %87 ], [ %7, %50 ]
  %53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %52, i64 0, i32 2, !dbg !451
  %54 = load i32, i32* %53, align 4, !dbg !454, !tbaa !300
  %55 = and i32 %54, -129, !dbg !454
  store i32 %55, i32* %53, align 4, !dbg !454, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !444, metadata !DIExpression()), !dbg !447
  %56 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %52, i64 0, i32 5, !dbg !455
  %57 = load i32, i32* %56, align 8, !dbg !455, !tbaa !309
  %58 = icmp sgt i32 %57, 0, !dbg !458
  br i1 %58, label %59, label %87, !dbg !459

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %52, i64 0, i32 7, !dbg !460
  %61 = load %struct.residue_t**, %struct.residue_t*** %60, align 8, !dbg !460, !tbaa !314
  %62 = zext i32 %57 to i64, !dbg !459
  br label %63, !dbg !459

63:                                               ; preds = %84, %59
  %64 = phi i64 [ 0, %59 ], [ %85, %84 ]
  call void @llvm.dbg.value(metadata i64 %64, metadata !444, metadata !DIExpression()), !dbg !447
  %65 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %61, i64 %64, !dbg !462
  %66 = load %struct.residue_t*, %struct.residue_t** %65, align 8, !dbg !462, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %66, metadata !446, metadata !DIExpression()), !dbg !447
  %67 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %66, i64 0, i32 6, !dbg !463
  %68 = load i32, i32* %67, align 8, !dbg !464, !tbaa !318
  %69 = and i32 %68, -129, !dbg !464
  store i32 %69, i32* %67, align 8, !dbg !464, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !443, metadata !DIExpression()), !dbg !447
  %70 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %66, i64 0, i32 15, !dbg !465
  %71 = load i32, i32* %70, align 8, !dbg !465, !tbaa !326
  %72 = icmp sgt i32 %71, 0, !dbg !468
  br i1 %72, label %73, label %84, !dbg !469

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %66, i64 0, i32 17, !dbg !470
  %75 = load %struct.atom_t*, %struct.atom_t** %74, align 8, !dbg !470, !tbaa !331
  %76 = zext i32 %71 to i64, !dbg !469
  br label %77, !dbg !469

77:                                               ; preds = %77, %73
  %78 = phi i64 [ 0, %73 ], [ %82, %77 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !443, metadata !DIExpression()), !dbg !447
  %79 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %75, i64 %78, i32 2, !dbg !471
  %80 = load i32, i32* %79, align 8, !dbg !472, !tbaa !334
  %81 = and i32 %80, -129, !dbg !472
  store i32 %81, i32* %79, align 8, !dbg !472, !tbaa !334
  %82 = add nuw nsw i64 %78, 1, !dbg !473
  call void @llvm.dbg.value(metadata i64 %82, metadata !443, metadata !DIExpression()), !dbg !447
  %83 = icmp eq i64 %82, %76, !dbg !468
  br i1 %83, label %84, label %77, !dbg !469, !llvm.loop !474

84:                                               ; preds = %77, %63
  %85 = add nuw nsw i64 %64, 1, !dbg !476
  call void @llvm.dbg.value(metadata i64 %85, metadata !444, metadata !DIExpression()), !dbg !447
  %86 = icmp eq i64 %85, %62, !dbg !458
  br i1 %86, label %87, label %63, !dbg !459, !llvm.loop !477

87:                                               ; preds = %84, %51
  %88 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %52, i64 0, i32 4, !dbg !479
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !445, metadata !DIExpression()), !dbg !447
  %89 = load %struct.strand_t*, %struct.strand_t** %88, align 8, !dbg !480, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %89, metadata !445, metadata !DIExpression()), !dbg !447
  %90 = icmp eq %struct.strand_t* %89, null, !dbg !449
  br i1 %90, label %91, label %51, !dbg !449, !llvm.loop !481

91:                                               ; preds = %87, %127
  %92 = phi %struct.strand_t* [ %129, %127 ], [ %7, %87 ]
  %93 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %92, i64 0, i32 2, !dbg !483
  %94 = load i32, i32* %93, align 4, !dbg !495, !tbaa !300
  %95 = and i32 %94, -2, !dbg !495
  store i32 %95, i32* %93, align 4, !dbg !495, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !491, metadata !DIExpression()), !dbg !496
  %96 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %92, i64 0, i32 5, !dbg !497
  %97 = load i32, i32* %96, align 8, !dbg !497, !tbaa !309
  %98 = icmp sgt i32 %97, 0, !dbg !500
  br i1 %98, label %99, label %127, !dbg !501

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %92, i64 0, i32 7, !dbg !502
  %101 = load %struct.residue_t**, %struct.residue_t*** %100, align 8, !dbg !502, !tbaa !314
  %102 = zext i32 %97 to i64, !dbg !501
  br label %103, !dbg !501

103:                                              ; preds = %124, %99
  %104 = phi i64 [ 0, %99 ], [ %125, %124 ]
  call void @llvm.dbg.value(metadata i64 %104, metadata !491, metadata !DIExpression()), !dbg !496
  %105 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %101, i64 %104, !dbg !504
  %106 = load %struct.residue_t*, %struct.residue_t** %105, align 8, !dbg !504, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %106, metadata !493, metadata !DIExpression()), !dbg !496
  %107 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %106, i64 0, i32 6, !dbg !505
  %108 = load i32, i32* %107, align 8, !dbg !506, !tbaa !318
  %109 = and i32 %108, -2, !dbg !506
  store i32 %109, i32* %107, align 8, !dbg !506, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !496
  %110 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %106, i64 0, i32 15, !dbg !507
  %111 = load i32, i32* %110, align 8, !dbg !507, !tbaa !326
  %112 = icmp sgt i32 %111, 0, !dbg !510
  br i1 %112, label %113, label %124, !dbg !511

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %106, i64 0, i32 17, !dbg !512
  %115 = load %struct.atom_t*, %struct.atom_t** %114, align 8, !dbg !512, !tbaa !331
  %116 = zext i32 %111 to i64, !dbg !511
  br label %117, !dbg !511

117:                                              ; preds = %117, %113
  %118 = phi i64 [ 0, %113 ], [ %122, %117 ]
  call void @llvm.dbg.value(metadata i64 %118, metadata !490, metadata !DIExpression()), !dbg !496
  %119 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %115, i64 %118, i32 2, !dbg !513
  %120 = load i32, i32* %119, align 8, !dbg !514, !tbaa !334
  %121 = and i32 %120, -2, !dbg !514
  store i32 %121, i32* %119, align 8, !dbg !514, !tbaa !334
  %122 = add nuw nsw i64 %118, 1, !dbg !515
  call void @llvm.dbg.value(metadata i64 %122, metadata !490, metadata !DIExpression()), !dbg !496
  %123 = icmp eq i64 %122, %116, !dbg !510
  br i1 %123, label %124, label %117, !dbg !511, !llvm.loop !516

124:                                              ; preds = %117, %103
  %125 = add nuw nsw i64 %104, 1, !dbg !518
  call void @llvm.dbg.value(metadata i64 %125, metadata !491, metadata !DIExpression()), !dbg !496
  %126 = icmp eq i64 %125, %102, !dbg !500
  br i1 %126, label %127, label %103, !dbg !501, !llvm.loop !519

127:                                              ; preds = %124, %91
  %128 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %92, i64 0, i32 4, !dbg !521
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !492, metadata !DIExpression()), !dbg !496
  %129 = load %struct.strand_t*, %struct.strand_t** %128, align 8, !dbg !522, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %129, metadata !492, metadata !DIExpression()), !dbg !496
  %130 = icmp eq %struct.strand_t* %129, null, !dbg !523
  br i1 %130, label %131, label %91, !dbg !523, !llvm.loop !524

131:                                              ; preds = %127, %50
  call void @llvm.dbg.value(metadata i8* %1, metadata !387, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i8* undef, metadata !388, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i8* %1, metadata !387, metadata !DIExpression()), !dbg !390
  %132 = tail call i8* @strchr(i8* nonnull %1, i32 124) #12, !dbg !526
  call void @llvm.dbg.value(metadata i8* %132, metadata !388, metadata !DIExpression()), !dbg !390
  %133 = bitcast i32* %3 to i8*, !dbg !528
  %134 = bitcast i32* %4 to i8*, !dbg !528
  %135 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !540
  br label %136, !dbg !554

136:                                              ; preds = %131, %638
  %137 = phi i8* [ %132, %131 ], [ %597, %638 ]
  %138 = phi i8* [ %1, %131 ], [ %148, %638 ]
  call void @llvm.dbg.value(metadata i8* %137, metadata !388, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i8* %138, metadata !387, metadata !DIExpression()), !dbg !390
  %139 = icmp eq i8* %137, null, !dbg !555
  br i1 %139, label %145, label %140, !dbg !557

140:                                              ; preds = %136
  %141 = ptrtoint i8* %137 to i64, !dbg !558
  %142 = ptrtoint i8* %138 to i64, !dbg !558
  %143 = sub i64 %141, %142, !dbg !558
  call void @llvm.dbg.value(metadata i64 %143, metadata !389, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !390
  %144 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !560
  call void @llvm.dbg.value(metadata i8* %144, metadata !388, metadata !DIExpression()), !dbg !390
  br label %147, !dbg !561

145:                                              ; preds = %136
  %146 = tail call i64 @strlen(i8* nonnull %138) #12, !dbg !562
  call void @llvm.dbg.value(metadata i64 %146, metadata !389, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !390
  br label %147

147:                                              ; preds = %145, %140
  %148 = phi i8* [ %144, %140 ], [ null, %145 ], !dbg !563
  %149 = phi i64 [ %143, %140 ], [ %146, %145 ]
  %150 = trunc i64 %149 to i32, !dbg !564
  call void @llvm.dbg.value(metadata i32 %150, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i8* %148, metadata !388, metadata !DIExpression()), !dbg !390
  %151 = icmp sgt i32 %150, 999, !dbg !565
  br i1 %151, label %152, label %155, !dbg !567

152:                                              ; preds = %147
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !568, !tbaa !291
  %154 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %153) #11, !dbg !570
  br label %687, !dbg !571

155:                                              ; preds = %147
  %156 = shl i64 %149, 32, !dbg !572
  %157 = ashr exact i64 %156, 32, !dbg !572
  %158 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* nonnull %138, i64 %157) #13, !dbg !573
  %159 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %157, !dbg !574
  store i8 0, i8* %159, align 1, !dbg !575, !tbaa !576
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !531, metadata !DIExpression()) #13, !dbg !528
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !532, metadata !DIExpression()) #13, !dbg !528
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %133) #13, !dbg !577
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %134) #13, !dbg !577
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !533, metadata !DIExpression()) #13, !dbg !528
  %160 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !578, !tbaa !576
  %161 = icmp eq i8 %160, 58, !dbg !580
  br i1 %161, label %162, label %163, !dbg !581

162:                                              ; preds = %155
  store i8* null, i8** @spart, align 8, !dbg !582, !tbaa !291
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), metadata !533, metadata !DIExpression()) #13, !dbg !528
  br label %168, !dbg !584

163:                                              ; preds = %155
  %164 = tail call i8* @strtok(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !585
  store i8* %164, i8** @spart, align 8, !dbg !587, !tbaa !291
  %165 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %164) #12, !dbg !588
  %166 = add i64 %165, 1, !dbg !589
  %167 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %166, !dbg !590
  call void @llvm.dbg.value(metadata i8* %167, metadata !533, metadata !DIExpression()) #13, !dbg !528
  br label %168

168:                                              ; preds = %163, %162
  %169 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), %162 ], [ %167, %163 ], !dbg !591
  call void @llvm.dbg.value(metadata i8* %169, metadata !533, metadata !DIExpression()) #13, !dbg !528
  %170 = load i8, i8* %169, align 1, !dbg !592, !tbaa !576
  %171 = icmp eq i8 %170, 58, !dbg !594
  br i1 %171, label %172, label %173, !dbg !595

172:                                              ; preds = %168
  store i8* null, i8** @rpart, align 8, !dbg !596, !tbaa !291
  br label %177, !dbg !598

173:                                              ; preds = %168
  %174 = tail call i8* @strtok(i8* nonnull %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !599
  store i8* %174, i8** @rpart, align 8, !dbg !601, !tbaa !291
  %175 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %174) #12, !dbg !602
  %176 = add i64 %175, 1, !dbg !603
  call void @llvm.dbg.value(metadata i8* %179, metadata !533, metadata !DIExpression()) #13, !dbg !528
  br label %177

177:                                              ; preds = %173, %172
  %178 = phi i64 [ %176, %173 ], [ 1, %172 ]
  %179 = getelementptr inbounds i8, i8* %169, i64 %178, !dbg !604
  call void @llvm.dbg.value(metadata i8* %179, metadata !533, metadata !DIExpression()) #13, !dbg !528
  %180 = tail call i8* @strtok(i8* nonnull %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !605
  store i8* %180, i8** @apart, align 8, !dbg !606, !tbaa !291
  %181 = load i8*, i8** @spart, align 8, !dbg !607, !tbaa !291
  %182 = icmp eq i8* %181, null, !dbg !607
  br i1 %182, label %307, label %183, !dbg !608

183:                                              ; preds = %177
  %184 = tail call i8* @strtok(i8* nonnull %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !609
  call void @llvm.dbg.value(metadata i8* %184, metadata !534, metadata !DIExpression()) #13, !dbg !528
  call void @llvm.dbg.value(metadata i32* %3, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  call void @llvm.dbg.value(metadata i32* %4, metadata !536, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  %185 = call fastcc i32 @is_pattern(i8* %184, i32* nonnull %3, i32* nonnull %4) #13, !dbg !610
  %186 = icmp eq i32 %185, 0, !dbg !610
  br i1 %186, label %220, label %187, !dbg !611

187:                                              ; preds = %183
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !612, metadata !DIExpression()) #13, !dbg !619
  call void @llvm.dbg.value(metadata i8* %184, metadata !617, metadata !DIExpression()) #13, !dbg !619
  call void @llvm.dbg.value(metadata i8* %184, metadata !621, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !628, metadata !DIExpression()) #13, !dbg !629
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !631, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %184, metadata !627, metadata !DIExpression()) #13, !dbg !629
  br label %188, !dbg !632

188:                                              ; preds = %199, %187
  %189 = phi i8* [ %184, %187 ], [ %201, %199 ], !dbg !634
  %190 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %187 ], [ %200, %199 ], !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %189, metadata !627, metadata !DIExpression()) #13, !dbg !629
  %191 = load i8, i8* %189, align 1, !dbg !635, !tbaa !576
  switch i8 %191, label %197 [
    i8 0, label %202
    i8 42, label %192
    i8 63, label %195
  ], !dbg !637

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !638
  call void @llvm.dbg.value(metadata i8* %193, metadata !628, metadata !DIExpression()) #13, !dbg !629
  store i8 46, i8* %190, align 1, !dbg !642, !tbaa !576
  %194 = getelementptr inbounds i8, i8* %190, i64 2, !dbg !643
  call void @llvm.dbg.value(metadata i8* %194, metadata !628, metadata !DIExpression()) #13, !dbg !629
  store i8 42, i8* %193, align 1, !dbg !644, !tbaa !576
  br label %199, !dbg !645

195:                                              ; preds = %188
  %196 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !646
  call void @llvm.dbg.value(metadata i8* %196, metadata !628, metadata !DIExpression()) #13, !dbg !629
  store i8 46, i8* %190, align 1, !dbg !648, !tbaa !576
  br label %199, !dbg !649

197:                                              ; preds = %188
  %198 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !650
  call void @llvm.dbg.value(metadata i8* %198, metadata !628, metadata !DIExpression()) #13, !dbg !629
  store i8 %191, i8* %190, align 1, !dbg !651, !tbaa !576
  br label %199

199:                                              ; preds = %197, %195, %192
  %200 = phi i8* [ %194, %192 ], [ %196, %195 ], [ %198, %197 ], !dbg !652
  call void @llvm.dbg.value(metadata i8* %200, metadata !628, metadata !DIExpression()) #13, !dbg !629
  %201 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !653
  call void @llvm.dbg.value(metadata i8* %201, metadata !627, metadata !DIExpression()) #13, !dbg !629
  br label %188, !dbg !654, !llvm.loop !655

202:                                              ; preds = %188
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !629
  %203 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !657
  call void @llvm.dbg.value(metadata i8* %203, metadata !628, metadata !DIExpression()) #13, !dbg !629
  store i8 36, i8* %190, align 1, !dbg !658, !tbaa !576
  store i8 0, i8* %203, align 1, !dbg !659, !tbaa !576
  %204 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !660
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !618, metadata !DIExpression()) #13, !dbg !619
  %205 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !661, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %205, metadata !618, metadata !DIExpression()) #13, !dbg !619
  %206 = icmp eq %struct.strand_t* %205, null, !dbg !663
  br i1 %206, label %242, label %207, !dbg !663

207:                                              ; preds = %202, %207
  %208 = phi %struct.strand_t* [ %218, %207 ], [ %205, %202 ]
  %209 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %208, i64 0, i32 0, !dbg !664
  %210 = load i8*, i8** %209, align 8, !dbg !664, !tbaa !667
  %211 = tail call i32 @step(i8* %210, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !668
  %212 = icmp ne i32 %211, 0, !dbg !668
  %213 = zext i1 %212 to i32, !dbg !668
  %214 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %208, i64 0, i32 2, !dbg !669
  %215 = load i32, i32* %214, align 4, !dbg !670, !tbaa !300
  %216 = or i32 %215, %213, !dbg !670
  store i32 %216, i32* %214, align 4, !dbg !670, !tbaa !300
  %217 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %208, i64 0, i32 4, !dbg !671
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !618, metadata !DIExpression()) #13, !dbg !619
  %218 = load %struct.strand_t*, %struct.strand_t** %217, align 8, !dbg !661, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %218, metadata !618, metadata !DIExpression()) #13, !dbg !619
  %219 = icmp eq %struct.strand_t* %218, null, !dbg !663
  br i1 %219, label %242, label %207, !dbg !663, !llvm.loop !672

220:                                              ; preds = %183
  %221 = load i32, i32* %3, align 4, !dbg !674, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %221, metadata !535, metadata !DIExpression()) #13, !dbg !528
  %222 = load i32, i32* %4, align 4, !dbg !676, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %222, metadata !536, metadata !DIExpression()) #13, !dbg !528
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !545, metadata !DIExpression()) #13, !dbg !540
  call void @llvm.dbg.value(metadata i32 %221, metadata !546, metadata !DIExpression()) #13, !dbg !540
  call void @llvm.dbg.value(metadata i32 %222, metadata !547, metadata !DIExpression()) #13, !dbg !540
  %223 = icmp eq i32 %222, -1, !dbg !677
  %224 = load i32, i32* %135, align 8, !dbg !540, !tbaa !679
  %225 = select i1 %223, i32 %224, i32 %222, !dbg !540
  call void @llvm.dbg.value(metadata i32 %225, metadata !547, metadata !DIExpression()) #13, !dbg !540
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !549, metadata !DIExpression()) #13, !dbg !540
  call void @llvm.dbg.value(metadata i32 1, metadata !548, metadata !DIExpression()) #13, !dbg !540
  %226 = icmp slt i32 %224, 1, !dbg !681
  br i1 %226, label %242, label %227, !dbg !684

227:                                              ; preds = %220, %238
  %228 = phi %struct.strand_t** [ %240, %238 ], [ %6, %220 ]
  %229 = phi i32 [ %239, %238 ], [ 1, %220 ]
  %230 = load %struct.strand_t*, %struct.strand_t** %228, align 8, !dbg !685, !tbaa !291
  call void @llvm.dbg.value(metadata i32 %229, metadata !548, metadata !DIExpression()) #13, !dbg !540
  %231 = icmp slt i32 %229, %221, !dbg !686
  %232 = icmp sgt i32 %229, %225, !dbg !689
  %233 = or i1 %231, %232, !dbg !690
  br i1 %233, label %238, label %234, !dbg !690

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %230, i64 0, i32 2, !dbg !691
  %236 = load i32, i32* %235, align 4, !dbg !692, !tbaa !300
  %237 = or i32 %236, 1, !dbg !692
  store i32 %237, i32* %235, align 4, !dbg !692, !tbaa !300
  br label %238, !dbg !693

238:                                              ; preds = %234, %227
  %239 = add nuw i32 %229, 1, !dbg !694
  call void @llvm.dbg.value(metadata i32 %239, metadata !548, metadata !DIExpression()) #13, !dbg !540
  %240 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %230, i64 0, i32 4, !dbg !695
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !549, metadata !DIExpression()) #13, !dbg !540
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !549, metadata !DIExpression()) #13, !dbg !540
  %241 = icmp eq i32 %229, %224, !dbg !681
  br i1 %241, label %242, label %227, !dbg !684, !llvm.loop !696

242:                                              ; preds = %207, %238, %220, %202
  %243 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !698
  call void @llvm.dbg.value(metadata i8* %243, metadata !534, metadata !DIExpression()) #13, !dbg !528
  %244 = icmp eq i8* %243, null, !dbg !699
  br i1 %244, label %320, label %245, !dbg !699

245:                                              ; preds = %242, %304
  %246 = phi i8* [ %305, %304 ], [ %243, %242 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  call void @llvm.dbg.value(metadata i32* %4, metadata !536, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  %247 = call fastcc i32 @is_pattern(i8* nonnull %246, i32* nonnull %3, i32* nonnull %4) #13, !dbg !700
  %248 = icmp eq i32 %247, 0, !dbg !700
  br i1 %248, label %282, label %249, !dbg !703

249:                                              ; preds = %245
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !612, metadata !DIExpression()) #13, !dbg !704
  call void @llvm.dbg.value(metadata i8* %246, metadata !617, metadata !DIExpression()) #13, !dbg !704
  call void @llvm.dbg.value(metadata i8* %246, metadata !621, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !628, metadata !DIExpression()) #13, !dbg !706
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !708, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %246, metadata !627, metadata !DIExpression()) #13, !dbg !706
  br label %250, !dbg !709

250:                                              ; preds = %261, %249
  %251 = phi i8* [ %246, %249 ], [ %263, %261 ], !dbg !710
  %252 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %249 ], [ %262, %261 ], !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %251, metadata !627, metadata !DIExpression()) #13, !dbg !706
  %253 = load i8, i8* %251, align 1, !dbg !711, !tbaa !576
  switch i8 %253, label %259 [
    i8 0, label %264
    i8 42, label %254
    i8 63, label %257
  ], !dbg !712

254:                                              ; preds = %250
  %255 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !713
  call void @llvm.dbg.value(metadata i8* %255, metadata !628, metadata !DIExpression()) #13, !dbg !706
  store i8 46, i8* %252, align 1, !dbg !714, !tbaa !576
  %256 = getelementptr inbounds i8, i8* %252, i64 2, !dbg !715
  call void @llvm.dbg.value(metadata i8* %256, metadata !628, metadata !DIExpression()) #13, !dbg !706
  store i8 42, i8* %255, align 1, !dbg !716, !tbaa !576
  br label %261, !dbg !717

257:                                              ; preds = %250
  %258 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !718
  call void @llvm.dbg.value(metadata i8* %258, metadata !628, metadata !DIExpression()) #13, !dbg !706
  store i8 46, i8* %252, align 1, !dbg !719, !tbaa !576
  br label %261, !dbg !720

259:                                              ; preds = %250
  %260 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !721
  call void @llvm.dbg.value(metadata i8* %260, metadata !628, metadata !DIExpression()) #13, !dbg !706
  store i8 %253, i8* %252, align 1, !dbg !722, !tbaa !576
  br label %261

261:                                              ; preds = %259, %257, %254
  %262 = phi i8* [ %256, %254 ], [ %258, %257 ], [ %260, %259 ], !dbg !723
  call void @llvm.dbg.value(metadata i8* %262, metadata !628, metadata !DIExpression()) #13, !dbg !706
  %263 = getelementptr inbounds i8, i8* %251, i64 1, !dbg !724
  call void @llvm.dbg.value(metadata i8* %263, metadata !627, metadata !DIExpression()) #13, !dbg !706
  br label %250, !dbg !725, !llvm.loop !726

264:                                              ; preds = %250
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  call void @llvm.dbg.value(metadata i8* %252, metadata !628, metadata !DIExpression()) #13, !dbg !706
  %265 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !728
  call void @llvm.dbg.value(metadata i8* %265, metadata !628, metadata !DIExpression()) #13, !dbg !706
  store i8 36, i8* %252, align 1, !dbg !729, !tbaa !576
  store i8 0, i8* %265, align 1, !dbg !730, !tbaa !576
  %266 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !731
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !618, metadata !DIExpression()) #13, !dbg !704
  %267 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !732, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %267, metadata !618, metadata !DIExpression()) #13, !dbg !704
  %268 = icmp eq %struct.strand_t* %267, null, !dbg !733
  br i1 %268, label %304, label %269, !dbg !733

269:                                              ; preds = %264, %269
  %270 = phi %struct.strand_t* [ %280, %269 ], [ %267, %264 ]
  %271 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %270, i64 0, i32 0, !dbg !734
  %272 = load i8*, i8** %271, align 8, !dbg !734, !tbaa !667
  %273 = tail call i32 @step(i8* %272, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !735
  %274 = icmp ne i32 %273, 0, !dbg !735
  %275 = zext i1 %274 to i32, !dbg !735
  %276 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %270, i64 0, i32 2, !dbg !736
  %277 = load i32, i32* %276, align 4, !dbg !737, !tbaa !300
  %278 = or i32 %277, %275, !dbg !737
  store i32 %278, i32* %276, align 4, !dbg !737, !tbaa !300
  %279 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %270, i64 0, i32 4, !dbg !738
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !618, metadata !DIExpression()) #13, !dbg !704
  %280 = load %struct.strand_t*, %struct.strand_t** %279, align 8, !dbg !732, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %280, metadata !618, metadata !DIExpression()) #13, !dbg !704
  %281 = icmp eq %struct.strand_t* %280, null, !dbg !733
  br i1 %281, label %304, label %269, !dbg !733, !llvm.loop !739

282:                                              ; preds = %245
  %283 = load i32, i32* %3, align 4, !dbg !741, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %283, metadata !535, metadata !DIExpression()) #13, !dbg !528
  %284 = load i32, i32* %4, align 4, !dbg !742, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %284, metadata !536, metadata !DIExpression()) #13, !dbg !528
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !545, metadata !DIExpression()) #13, !dbg !743
  call void @llvm.dbg.value(metadata i32 %283, metadata !546, metadata !DIExpression()) #13, !dbg !743
  call void @llvm.dbg.value(metadata i32 %284, metadata !547, metadata !DIExpression()) #13, !dbg !743
  %285 = icmp eq i32 %284, -1, !dbg !745
  %286 = load i32, i32* %135, align 8, !dbg !743, !tbaa !679
  %287 = select i1 %285, i32 %286, i32 %284, !dbg !743
  call void @llvm.dbg.value(metadata i32 %287, metadata !547, metadata !DIExpression()) #13, !dbg !743
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !549, metadata !DIExpression()) #13, !dbg !743
  call void @llvm.dbg.value(metadata i32 1, metadata !548, metadata !DIExpression()) #13, !dbg !743
  %288 = icmp slt i32 %286, 1, !dbg !746
  br i1 %288, label %304, label %289, !dbg !747

289:                                              ; preds = %282, %300
  %290 = phi %struct.strand_t** [ %302, %300 ], [ %6, %282 ]
  %291 = phi i32 [ %301, %300 ], [ 1, %282 ]
  %292 = load %struct.strand_t*, %struct.strand_t** %290, align 8, !dbg !748, !tbaa !291
  call void @llvm.dbg.value(metadata i32 %291, metadata !548, metadata !DIExpression()) #13, !dbg !743
  %293 = icmp slt i32 %291, %283, !dbg !749
  %294 = icmp sgt i32 %291, %287, !dbg !750
  %295 = or i1 %293, %294, !dbg !751
  br i1 %295, label %300, label %296, !dbg !751

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %292, i64 0, i32 2, !dbg !752
  %298 = load i32, i32* %297, align 4, !dbg !753, !tbaa !300
  %299 = or i32 %298, 1, !dbg !753
  store i32 %299, i32* %297, align 4, !dbg !753, !tbaa !300
  br label %300, !dbg !754

300:                                              ; preds = %296, %289
  %301 = add nuw i32 %291, 1, !dbg !755
  call void @llvm.dbg.value(metadata i32 %301, metadata !548, metadata !DIExpression()) #13, !dbg !743
  %302 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %292, i64 0, i32 4, !dbg !756
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !549, metadata !DIExpression()) #13, !dbg !743
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !549, metadata !DIExpression()) #13, !dbg !743
  %303 = icmp eq i32 %291, %286, !dbg !746
  br i1 %303, label %304, label %289, !dbg !747, !llvm.loop !757

304:                                              ; preds = %269, %300, %282, %264
  %305 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !698
  call void @llvm.dbg.value(metadata i8* %305, metadata !534, metadata !DIExpression()) #13, !dbg !528
  %306 = icmp eq i8* %305, null, !dbg !699
  br i1 %306, label %320, label %245, !dbg !699, !llvm.loop !759

307:                                              ; preds = %177
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !545, metadata !DIExpression()) #13, !dbg !761
  call void @llvm.dbg.value(metadata i32 1, metadata !546, metadata !DIExpression()) #13, !dbg !761
  call void @llvm.dbg.value(metadata i32 -1, metadata !547, metadata !DIExpression()) #13, !dbg !761
  %308 = load i32, i32* %135, align 8, !dbg !761, !tbaa !679
  call void @llvm.dbg.value(metadata i32 %308, metadata !547, metadata !DIExpression()) #13, !dbg !761
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !549, metadata !DIExpression()) #13, !dbg !761
  call void @llvm.dbg.value(metadata i32 1, metadata !548, metadata !DIExpression()) #13, !dbg !761
  %309 = icmp slt i32 %308, 1, !dbg !763
  br i1 %309, label %320, label %310, !dbg !764

310:                                              ; preds = %307, %310
  %311 = phi %struct.strand_t** [ %318, %310 ], [ %6, %307 ]
  %312 = phi i32 [ %317, %310 ], [ 1, %307 ]
  %313 = load %struct.strand_t*, %struct.strand_t** %311, align 8, !dbg !765, !tbaa !291
  call void @llvm.dbg.value(metadata i32 %312, metadata !548, metadata !DIExpression()) #13, !dbg !761
  %314 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %313, i64 0, i32 2, !dbg !766
  %315 = load i32, i32* %314, align 4, !dbg !767, !tbaa !300
  %316 = or i32 %315, 1, !dbg !767
  store i32 %316, i32* %314, align 4, !dbg !767, !tbaa !300
  %317 = add nuw i32 %312, 1, !dbg !768
  call void @llvm.dbg.value(metadata i32 %317, metadata !548, metadata !DIExpression()) #13, !dbg !761
  %318 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %313, i64 0, i32 4, !dbg !769
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !549, metadata !DIExpression()) #13, !dbg !761
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !549, metadata !DIExpression()) #13, !dbg !761
  %319 = icmp eq i32 %312, %308, !dbg !763
  br i1 %319, label %320, label %310, !dbg !764, !llvm.loop !770

320:                                              ; preds = %304, %310, %307, %242
  %321 = load i8*, i8** @rpart, align 8, !dbg !772, !tbaa !291
  %322 = icmp eq i8* %321, null, !dbg !772
  br i1 %322, label %487, label %323, !dbg !774

323:                                              ; preds = %320
  %324 = tail call i8* @strtok(i8* nonnull %321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !775
  call void @llvm.dbg.value(metadata i8* %324, metadata !534, metadata !DIExpression()) #13, !dbg !528
  call void @llvm.dbg.value(metadata i32* %3, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  call void @llvm.dbg.value(metadata i32* %4, metadata !536, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  %325 = call fastcc i32 @is_pattern(i8* %324, i32* nonnull %3, i32* nonnull %4) #13, !dbg !777
  %326 = icmp eq i32 %325, 0, !dbg !777
  br i1 %326, label %328, label %327, !dbg !779

327:                                              ; preds = %323
  tail call fastcc void @match_res_pat(%struct.molecule_t* %0, i8* %324) #13, !dbg !780
  br label %402, !dbg !780

328:                                              ; preds = %323
  %329 = load i32, i32* %3, align 4, !dbg !781, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %329, metadata !535, metadata !DIExpression()) #13, !dbg !528
  %330 = load i32, i32* %4, align 4, !dbg !782, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %330, metadata !536, metadata !DIExpression()) #13, !dbg !528
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !783, metadata !DIExpression()) #13, !dbg !792
  call void @llvm.dbg.value(metadata i32 %329, metadata !786, metadata !DIExpression()) #13, !dbg !792
  call void @llvm.dbg.value(metadata i32 %330, metadata !787, metadata !DIExpression()) #13, !dbg !792
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !792
  %331 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !794, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %331, metadata !790, metadata !DIExpression()) #13, !dbg !792
  %332 = icmp eq %struct.strand_t* %331, null, !dbg !796
  br i1 %332, label %402, label %333, !dbg !796

333:                                              ; preds = %328
  %334 = icmp eq i32 %330, -1, !dbg !797
  br i1 %334, label %338, label %335, !dbg !796

335:                                              ; preds = %333
  %336 = sext i32 %330 to i64, !dbg !796
  %337 = sext i32 %329 to i64, !dbg !796
  br label %370, !dbg !796

338:                                              ; preds = %333
  %339 = sext i32 %329 to i64, !dbg !796
  br label %340, !dbg !796

340:                                              ; preds = %363, %338
  %341 = phi %struct.strand_t* [ %365, %363 ], [ %331, %338 ]
  %342 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %341, i64 0, i32 2, !dbg !802
  %343 = load i32, i32* %342, align 4, !dbg !802, !tbaa !300
  %344 = and i32 %343, 1, !dbg !803
  %345 = icmp eq i32 %344, 0, !dbg !803
  br i1 %345, label %363, label %346, !dbg !804

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %341, i64 0, i32 5, !dbg !805
  %348 = load i32, i32* %347, align 8, !dbg !805, !tbaa !309
  call void @llvm.dbg.value(metadata i32 %348, metadata !789, metadata !DIExpression()) #13, !dbg !792
  call void @llvm.dbg.value(metadata i32 0, metadata !788, metadata !DIExpression()) #13, !dbg !792
  %349 = icmp sgt i32 %348, 0, !dbg !806
  br i1 %349, label %367, label %363, !dbg !809

350:                                              ; preds = %367, %361
  %351 = phi i64 [ 0, %367 ], [ %352, %361 ]
  call void @llvm.dbg.value(metadata i64 %351, metadata !788, metadata !DIExpression()) #13, !dbg !792
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !791, metadata !DIExpression()) #13, !dbg !792
  %352 = add nuw nsw i64 %351, 1, !dbg !810
  %353 = icmp slt i64 %352, %339, !dbg !813
  br i1 %353, label %361, label %354, !dbg !814

354:                                              ; preds = %350
  %355 = load %struct.residue_t**, %struct.residue_t*** %368, align 8, !dbg !815, !tbaa !314
  %356 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %355, i64 %351, !dbg !816
  %357 = load %struct.residue_t*, %struct.residue_t** %356, align 8, !dbg !816, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %357, metadata !791, metadata !DIExpression()) #13, !dbg !792
  %358 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %357, i64 0, i32 6, !dbg !817
  %359 = load i32, i32* %358, align 8, !dbg !818, !tbaa !318
  %360 = or i32 %359, 1, !dbg !818
  store i32 %360, i32* %358, align 8, !dbg !818, !tbaa !318
  br label %361, !dbg !819

361:                                              ; preds = %354, %350
  call void @llvm.dbg.value(metadata i64 %352, metadata !788, metadata !DIExpression()) #13, !dbg !792
  %362 = icmp eq i64 %352, %369, !dbg !806
  br i1 %362, label %363, label %350, !dbg !809, !llvm.loop !820

363:                                              ; preds = %361, %346, %340
  %364 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %341, i64 0, i32 4, !dbg !822
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !792
  %365 = load %struct.strand_t*, %struct.strand_t** %364, align 8, !dbg !794, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %365, metadata !790, metadata !DIExpression()) #13, !dbg !792
  %366 = icmp eq %struct.strand_t* %365, null, !dbg !796
  br i1 %366, label %402, label %340, !dbg !796, !llvm.loop !823

367:                                              ; preds = %346
  %368 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %341, i64 0, i32 7, !dbg !825
  %369 = zext i32 %348 to i64, !dbg !809
  br label %350, !dbg !809

370:                                              ; preds = %398, %335
  %371 = phi %struct.strand_t* [ %400, %398 ], [ %331, %335 ]
  %372 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %371, i64 0, i32 2, !dbg !802
  %373 = load i32, i32* %372, align 4, !dbg !802, !tbaa !300
  %374 = and i32 %373, 1, !dbg !803
  %375 = icmp eq i32 %374, 0, !dbg !803
  br i1 %375, label %398, label %376, !dbg !804

376:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i32 %330, metadata !789, metadata !DIExpression()) #13, !dbg !792
  call void @llvm.dbg.value(metadata i32 0, metadata !788, metadata !DIExpression()) #13, !dbg !792
  %377 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %371, i64 0, i32 5, !dbg !826
  %378 = load i32, i32* %377, align 8, !dbg !826, !tbaa !309
  %379 = icmp sgt i32 %378, 0, !dbg !806
  br i1 %379, label %380, label %398, !dbg !809

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %371, i64 0, i32 7, !dbg !825
  %382 = zext i32 %378 to i64, !dbg !809
  br label %383, !dbg !809

383:                                              ; preds = %396, %380
  %384 = phi i64 [ 0, %380 ], [ %385, %396 ]
  call void @llvm.dbg.value(metadata i64 %384, metadata !788, metadata !DIExpression()) #13, !dbg !792
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !791, metadata !DIExpression()) #13, !dbg !792
  %385 = add nuw nsw i64 %384, 1, !dbg !810
  %386 = icmp sge i64 %385, %337, !dbg !813
  %387 = icmp slt i64 %384, %336, !dbg !827
  %388 = and i1 %387, %386, !dbg !814
  br i1 %388, label %389, label %396, !dbg !814

389:                                              ; preds = %383
  %390 = load %struct.residue_t**, %struct.residue_t*** %381, align 8, !dbg !815, !tbaa !314
  %391 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %390, i64 %384, !dbg !816
  %392 = load %struct.residue_t*, %struct.residue_t** %391, align 8, !dbg !816, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %392, metadata !791, metadata !DIExpression()) #13, !dbg !792
  %393 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %392, i64 0, i32 6, !dbg !817
  %394 = load i32, i32* %393, align 8, !dbg !818, !tbaa !318
  %395 = or i32 %394, 1, !dbg !818
  store i32 %395, i32* %393, align 8, !dbg !818, !tbaa !318
  br label %396, !dbg !819

396:                                              ; preds = %389, %383
  call void @llvm.dbg.value(metadata i64 %385, metadata !788, metadata !DIExpression()) #13, !dbg !792
  %397 = icmp eq i64 %385, %382, !dbg !806
  br i1 %397, label %398, label %383, !dbg !809, !llvm.loop !828

398:                                              ; preds = %396, %376, %370
  %399 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %371, i64 0, i32 4, !dbg !822
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !792
  %400 = load %struct.strand_t*, %struct.strand_t** %399, align 8, !dbg !794, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %400, metadata !790, metadata !DIExpression()) #13, !dbg !792
  %401 = icmp eq %struct.strand_t* %400, null, !dbg !796
  br i1 %401, label %402, label %370, !dbg !796, !llvm.loop !829

402:                                              ; preds = %398, %363, %328, %327
  %403 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !830
  call void @llvm.dbg.value(metadata i8* %403, metadata !534, metadata !DIExpression()) #13, !dbg !528
  %404 = icmp eq i8* %403, null, !dbg !831
  br i1 %404, label %517, label %405, !dbg !831

405:                                              ; preds = %402, %484
  %406 = phi i8* [ %485, %484 ], [ %403, %402 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  call void @llvm.dbg.value(metadata i32* %4, metadata !536, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  %407 = call fastcc i32 @is_pattern(i8* nonnull %406, i32* nonnull %3, i32* nonnull %4) #13, !dbg !832
  %408 = icmp eq i32 %407, 0, !dbg !832
  br i1 %408, label %410, label %409, !dbg !835

409:                                              ; preds = %405
  tail call fastcc void @match_res_pat(%struct.molecule_t* %0, i8* nonnull %406) #13, !dbg !836
  br label %484, !dbg !836

410:                                              ; preds = %405
  %411 = load i32, i32* %3, align 4, !dbg !837, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %411, metadata !535, metadata !DIExpression()) #13, !dbg !528
  %412 = load i32, i32* %4, align 4, !dbg !838, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %412, metadata !536, metadata !DIExpression()) #13, !dbg !528
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !783, metadata !DIExpression()) #13, !dbg !839
  call void @llvm.dbg.value(metadata i32 %411, metadata !786, metadata !DIExpression()) #13, !dbg !839
  call void @llvm.dbg.value(metadata i32 %412, metadata !787, metadata !DIExpression()) #13, !dbg !839
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !839
  %413 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !841, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %413, metadata !790, metadata !DIExpression()) #13, !dbg !839
  %414 = icmp eq %struct.strand_t* %413, null, !dbg !842
  br i1 %414, label %484, label %415, !dbg !842

415:                                              ; preds = %410
  %416 = icmp eq i32 %412, -1, !dbg !843
  br i1 %416, label %420, label %417, !dbg !842

417:                                              ; preds = %415
  %418 = sext i32 %412 to i64, !dbg !842
  %419 = sext i32 %411 to i64, !dbg !842
  br label %452, !dbg !842

420:                                              ; preds = %415
  %421 = sext i32 %411 to i64, !dbg !842
  br label %422, !dbg !842

422:                                              ; preds = %445, %420
  %423 = phi %struct.strand_t* [ %447, %445 ], [ %413, %420 ]
  %424 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %423, i64 0, i32 2, !dbg !844
  %425 = load i32, i32* %424, align 4, !dbg !844, !tbaa !300
  %426 = and i32 %425, 1, !dbg !845
  %427 = icmp eq i32 %426, 0, !dbg !845
  br i1 %427, label %445, label %428, !dbg !846

428:                                              ; preds = %422
  %429 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %423, i64 0, i32 5, !dbg !847
  %430 = load i32, i32* %429, align 8, !dbg !847, !tbaa !309
  call void @llvm.dbg.value(metadata i32 %430, metadata !789, metadata !DIExpression()) #13, !dbg !839
  call void @llvm.dbg.value(metadata i32 0, metadata !788, metadata !DIExpression()) #13, !dbg !839
  %431 = icmp sgt i32 %430, 0, !dbg !848
  br i1 %431, label %449, label %445, !dbg !849

432:                                              ; preds = %449, %443
  %433 = phi i64 [ 0, %449 ], [ %434, %443 ]
  call void @llvm.dbg.value(metadata i64 %433, metadata !788, metadata !DIExpression()) #13, !dbg !839
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !791, metadata !DIExpression()) #13, !dbg !839
  %434 = add nuw nsw i64 %433, 1, !dbg !850
  %435 = icmp slt i64 %434, %421, !dbg !851
  br i1 %435, label %443, label %436, !dbg !852

436:                                              ; preds = %432
  %437 = load %struct.residue_t**, %struct.residue_t*** %450, align 8, !dbg !853, !tbaa !314
  %438 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %437, i64 %433, !dbg !854
  %439 = load %struct.residue_t*, %struct.residue_t** %438, align 8, !dbg !854, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %439, metadata !791, metadata !DIExpression()) #13, !dbg !839
  %440 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %439, i64 0, i32 6, !dbg !855
  %441 = load i32, i32* %440, align 8, !dbg !856, !tbaa !318
  %442 = or i32 %441, 1, !dbg !856
  store i32 %442, i32* %440, align 8, !dbg !856, !tbaa !318
  br label %443, !dbg !857

443:                                              ; preds = %436, %432
  call void @llvm.dbg.value(metadata i64 %434, metadata !788, metadata !DIExpression()) #13, !dbg !839
  %444 = icmp eq i64 %434, %451, !dbg !848
  br i1 %444, label %445, label %432, !dbg !849, !llvm.loop !858

445:                                              ; preds = %443, %428, %422
  %446 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %423, i64 0, i32 4, !dbg !860
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !839
  %447 = load %struct.strand_t*, %struct.strand_t** %446, align 8, !dbg !841, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %447, metadata !790, metadata !DIExpression()) #13, !dbg !839
  %448 = icmp eq %struct.strand_t* %447, null, !dbg !842
  br i1 %448, label %484, label %422, !dbg !842, !llvm.loop !861

449:                                              ; preds = %428
  %450 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %423, i64 0, i32 7, !dbg !863
  %451 = zext i32 %430 to i64, !dbg !849
  br label %432, !dbg !849

452:                                              ; preds = %480, %417
  %453 = phi %struct.strand_t* [ %482, %480 ], [ %413, %417 ]
  %454 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %453, i64 0, i32 2, !dbg !844
  %455 = load i32, i32* %454, align 4, !dbg !844, !tbaa !300
  %456 = and i32 %455, 1, !dbg !845
  %457 = icmp eq i32 %456, 0, !dbg !845
  br i1 %457, label %480, label %458, !dbg !846

458:                                              ; preds = %452
  call void @llvm.dbg.value(metadata i32 %412, metadata !789, metadata !DIExpression()) #13, !dbg !839
  call void @llvm.dbg.value(metadata i32 0, metadata !788, metadata !DIExpression()) #13, !dbg !839
  %459 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %453, i64 0, i32 5, !dbg !864
  %460 = load i32, i32* %459, align 8, !dbg !864, !tbaa !309
  %461 = icmp sgt i32 %460, 0, !dbg !848
  br i1 %461, label %462, label %480, !dbg !849

462:                                              ; preds = %458
  %463 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %453, i64 0, i32 7, !dbg !863
  %464 = zext i32 %460 to i64, !dbg !849
  br label %465, !dbg !849

465:                                              ; preds = %478, %462
  %466 = phi i64 [ 0, %462 ], [ %467, %478 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !788, metadata !DIExpression()) #13, !dbg !839
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !791, metadata !DIExpression()) #13, !dbg !839
  %467 = add nuw nsw i64 %466, 1, !dbg !850
  %468 = icmp sge i64 %467, %419, !dbg !851
  %469 = icmp slt i64 %466, %418, !dbg !865
  %470 = and i1 %469, %468, !dbg !852
  br i1 %470, label %471, label %478, !dbg !852

471:                                              ; preds = %465
  %472 = load %struct.residue_t**, %struct.residue_t*** %463, align 8, !dbg !853, !tbaa !314
  %473 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %472, i64 %466, !dbg !854
  %474 = load %struct.residue_t*, %struct.residue_t** %473, align 8, !dbg !854, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %474, metadata !791, metadata !DIExpression()) #13, !dbg !839
  %475 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %474, i64 0, i32 6, !dbg !855
  %476 = load i32, i32* %475, align 8, !dbg !856, !tbaa !318
  %477 = or i32 %476, 1, !dbg !856
  store i32 %477, i32* %475, align 8, !dbg !856, !tbaa !318
  br label %478, !dbg !857

478:                                              ; preds = %471, %465
  call void @llvm.dbg.value(metadata i64 %467, metadata !788, metadata !DIExpression()) #13, !dbg !839
  %479 = icmp eq i64 %467, %464, !dbg !848
  br i1 %479, label %480, label %465, !dbg !849, !llvm.loop !866

480:                                              ; preds = %478, %458, %452
  %481 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %453, i64 0, i32 4, !dbg !860
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !839
  %482 = load %struct.strand_t*, %struct.strand_t** %481, align 8, !dbg !841, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %482, metadata !790, metadata !DIExpression()) #13, !dbg !839
  %483 = icmp eq %struct.strand_t* %482, null, !dbg !842
  br i1 %483, label %484, label %452, !dbg !842, !llvm.loop !867

484:                                              ; preds = %480, %445, %410, %409
  %485 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !830
  call void @llvm.dbg.value(metadata i8* %485, metadata !534, metadata !DIExpression()) #13, !dbg !528
  %486 = icmp eq i8* %485, null, !dbg !831
  br i1 %486, label %517, label %405, !dbg !831, !llvm.loop !868

487:                                              ; preds = %320
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !783, metadata !DIExpression()) #13, !dbg !870
  call void @llvm.dbg.value(metadata i32 1, metadata !786, metadata !DIExpression()) #13, !dbg !870
  call void @llvm.dbg.value(metadata i32 -1, metadata !787, metadata !DIExpression()) #13, !dbg !870
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !870
  %488 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !872, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %488, metadata !790, metadata !DIExpression()) #13, !dbg !870
  %489 = icmp eq %struct.strand_t* %488, null, !dbg !873
  br i1 %489, label %517, label %490, !dbg !873

490:                                              ; preds = %487, %509
  %491 = phi %struct.strand_t* [ %511, %509 ], [ %488, %487 ]
  %492 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %491, i64 0, i32 2, !dbg !874
  %493 = load i32, i32* %492, align 4, !dbg !874, !tbaa !300
  %494 = and i32 %493, 1, !dbg !875
  %495 = icmp eq i32 %494, 0, !dbg !875
  br i1 %495, label %509, label %496, !dbg !876

496:                                              ; preds = %490
  %497 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %491, i64 0, i32 5, !dbg !877
  %498 = load i32, i32* %497, align 8, !dbg !877, !tbaa !309
  call void @llvm.dbg.value(metadata i32 %498, metadata !789, metadata !DIExpression()) #13, !dbg !870
  call void @llvm.dbg.value(metadata i32 0, metadata !788, metadata !DIExpression()) #13, !dbg !870
  %499 = icmp sgt i32 %498, 0, !dbg !878
  br i1 %499, label %513, label %509, !dbg !879

500:                                              ; preds = %513, %500
  %501 = phi i64 [ 0, %513 ], [ %502, %500 ]
  call void @llvm.dbg.value(metadata i64 %501, metadata !788, metadata !DIExpression()) #13, !dbg !870
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !791, metadata !DIExpression()) #13, !dbg !870
  %502 = add nuw nsw i64 %501, 1, !dbg !880
  %503 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %516, i64 %501, !dbg !881
  %504 = load %struct.residue_t*, %struct.residue_t** %503, align 8, !dbg !881, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %504, metadata !791, metadata !DIExpression()) #13, !dbg !870
  %505 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %504, i64 0, i32 6, !dbg !882
  %506 = load i32, i32* %505, align 8, !dbg !883, !tbaa !318
  %507 = or i32 %506, 1, !dbg !883
  store i32 %507, i32* %505, align 8, !dbg !883, !tbaa !318
  call void @llvm.dbg.value(metadata i64 %502, metadata !788, metadata !DIExpression()) #13, !dbg !870
  %508 = icmp eq i64 %502, %515, !dbg !878
  br i1 %508, label %509, label %500, !dbg !879, !llvm.loop !884

509:                                              ; preds = %500, %496, %490
  %510 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %491, i64 0, i32 4, !dbg !886
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !790, metadata !DIExpression()) #13, !dbg !870
  %511 = load %struct.strand_t*, %struct.strand_t** %510, align 8, !dbg !872, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %511, metadata !790, metadata !DIExpression()) #13, !dbg !870
  %512 = icmp eq %struct.strand_t* %511, null, !dbg !873
  br i1 %512, label %517, label %490, !dbg !873, !llvm.loop !887

513:                                              ; preds = %496
  %514 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %491, i64 0, i32 7, !dbg !889
  %515 = zext i32 %498 to i64, !dbg !879
  %516 = load %struct.residue_t**, %struct.residue_t*** %514, align 8, !dbg !889, !tbaa !314
  br label %500, !dbg !879

517:                                              ; preds = %484, %509, %487, %402
  %518 = load i8*, i8** @apart, align 8, !dbg !890, !tbaa !291
  %519 = icmp eq i8* %518, null, !dbg !890
  br i1 %519, label %542, label %520, !dbg !892

520:                                              ; preds = %517
  %521 = tail call i8* @strtok(i8* nonnull %518, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !893
  call void @llvm.dbg.value(metadata i8* %521, metadata !534, metadata !DIExpression()) #13, !dbg !528
  call void @llvm.dbg.value(metadata i32* %3, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  call void @llvm.dbg.value(metadata i32* %4, metadata !536, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  %522 = call fastcc i32 @is_pattern(i8* %521, i32* nonnull %3, i32* nonnull %4) #13, !dbg !895
  %523 = icmp eq i32 %522, 0, !dbg !895
  br i1 %523, label %525, label %524, !dbg !897

524:                                              ; preds = %520
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* %521) #13, !dbg !898
  br label %528, !dbg !898

525:                                              ; preds = %520
  %526 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !899, !tbaa !291
  %527 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %526) #14, !dbg !901
  br label %528

528:                                              ; preds = %525, %524
  %529 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !902
  call void @llvm.dbg.value(metadata i8* %529, metadata !534, metadata !DIExpression()) #13, !dbg !528
  %530 = icmp eq i8* %529, null, !dbg !903
  br i1 %530, label %543, label %531, !dbg !903

531:                                              ; preds = %528, %539
  %532 = phi i8* [ %540, %539 ], [ %529, %528 ]
  call void @llvm.dbg.value(metadata i32* %3, metadata !535, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  call void @llvm.dbg.value(metadata i32* %4, metadata !536, metadata !DIExpression(DW_OP_deref)) #13, !dbg !528
  %533 = call fastcc i32 @is_pattern(i8* nonnull %532, i32* nonnull %3, i32* nonnull %4) #13, !dbg !904
  %534 = icmp eq i32 %533, 0, !dbg !904
  br i1 %534, label %536, label %535, !dbg !907

535:                                              ; preds = %531
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* nonnull %532) #13, !dbg !908
  br label %539, !dbg !908

536:                                              ; preds = %531
  %537 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !909, !tbaa !291
  %538 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %537) #14, !dbg !911
  br label %539

539:                                              ; preds = %536, %535
  %540 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !902
  call void @llvm.dbg.value(metadata i8* %540, metadata !534, metadata !DIExpression()) #13, !dbg !528
  %541 = icmp eq i8* %540, null, !dbg !903
  br i1 %541, label %543, label %531, !dbg !903, !llvm.loop !912

542:                                              ; preds = %517
  tail call fastcc void @match_atom_pat(%struct.molecule_t* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !914
  br label %543

543:                                              ; preds = %539, %528, %542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %134) #13, !dbg !915
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %133) #13, !dbg !915
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !916, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !921, metadata !DIExpression()), !dbg !924
  %544 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !926, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %544, metadata !921, metadata !DIExpression()), !dbg !924
  %545 = icmp eq %struct.strand_t* %544, null, !dbg !928
  br i1 %545, label %592, label %546, !dbg !928

546:                                              ; preds = %543, %588
  %547 = phi %struct.strand_t* [ %590, %588 ], [ %544, %543 ]
  %548 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %547, i64 0, i32 2, !dbg !929
  %549 = load i32, i32* %548, align 4, !dbg !929, !tbaa !300
  %550 = shl i32 %549, 7, !dbg !932
  %551 = and i32 %550, 128, !dbg !932
  %552 = or i32 %551, %549, !dbg !933
  store i32 %552, i32* %548, align 4, !dbg !933, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !920, metadata !DIExpression()), !dbg !924
  %553 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %547, i64 0, i32 5, !dbg !934
  %554 = load i32, i32* %553, align 8, !dbg !934, !tbaa !309
  %555 = icmp sgt i32 %554, 0, !dbg !937
  br i1 %555, label %556, label %588, !dbg !938

556:                                              ; preds = %546
  %557 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %547, i64 0, i32 7, !dbg !939
  %558 = load %struct.residue_t**, %struct.residue_t*** %557, align 8, !dbg !939, !tbaa !314
  %559 = zext i32 %554 to i64, !dbg !938
  br label %560, !dbg !938

560:                                              ; preds = %585, %556
  %561 = phi i64 [ 0, %556 ], [ %586, %585 ]
  call void @llvm.dbg.value(metadata i64 %561, metadata !920, metadata !DIExpression()), !dbg !924
  %562 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %558, i64 %561, !dbg !941
  %563 = load %struct.residue_t*, %struct.residue_t** %562, align 8, !dbg !941, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %563, metadata !922, metadata !DIExpression()), !dbg !924
  %564 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %563, i64 0, i32 6, !dbg !942
  %565 = load i32, i32* %564, align 8, !dbg !942, !tbaa !318
  %566 = shl i32 %565, 7, !dbg !943
  %567 = and i32 %566, 128, !dbg !943
  %568 = or i32 %567, %565, !dbg !944
  store i32 %568, i32* %564, align 8, !dbg !944, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !919, metadata !DIExpression()), !dbg !924
  %569 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %563, i64 0, i32 15, !dbg !945
  %570 = load i32, i32* %569, align 8, !dbg !945, !tbaa !326
  %571 = icmp sgt i32 %570, 0, !dbg !948
  br i1 %571, label %572, label %585, !dbg !949

572:                                              ; preds = %560
  %573 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %563, i64 0, i32 17, !dbg !950
  %574 = load %struct.atom_t*, %struct.atom_t** %573, align 8, !dbg !950, !tbaa !331
  %575 = zext i32 %570 to i64, !dbg !949
  br label %576, !dbg !949

576:                                              ; preds = %576, %572
  %577 = phi i64 [ 0, %572 ], [ %583, %576 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !919, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !923, metadata !DIExpression()), !dbg !924
  %578 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %574, i64 %577, i32 2, !dbg !952
  %579 = load i32, i32* %578, align 8, !dbg !952, !tbaa !334
  %580 = shl i32 %579, 7, !dbg !953
  %581 = and i32 %580, 128, !dbg !953
  %582 = or i32 %581, %579, !dbg !954
  store i32 %582, i32* %578, align 8, !dbg !954, !tbaa !334
  %583 = add nuw nsw i64 %577, 1, !dbg !955
  call void @llvm.dbg.value(metadata i64 %583, metadata !919, metadata !DIExpression()), !dbg !924
  %584 = icmp eq i64 %583, %575, !dbg !948
  br i1 %584, label %585, label %576, !dbg !949, !llvm.loop !956

585:                                              ; preds = %576, %560
  %586 = add nuw nsw i64 %561, 1, !dbg !958
  call void @llvm.dbg.value(metadata i64 %586, metadata !920, metadata !DIExpression()), !dbg !924
  %587 = icmp eq i64 %586, %559, !dbg !937
  br i1 %587, label %588, label %560, !dbg !938, !llvm.loop !959

588:                                              ; preds = %585, %546
  %589 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %547, i64 0, i32 4, !dbg !961
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !921, metadata !DIExpression()), !dbg !924
  %590 = load %struct.strand_t*, %struct.strand_t** %589, align 8, !dbg !926, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %590, metadata !921, metadata !DIExpression()), !dbg !924
  %591 = icmp eq %struct.strand_t* %590, null, !dbg !928
  br i1 %591, label %592, label %546, !dbg !928, !llvm.loop !962

592:                                              ; preds = %588, %543
  call void @llvm.dbg.value(metadata i8* %148, metadata !387, metadata !DIExpression()), !dbg !390
  %593 = icmp eq i8* %148, null, !dbg !964
  br i1 %593, label %596, label %594, !dbg !966

594:                                              ; preds = %592
  %595 = tail call i8* @strchr(i8* nonnull %148, i32 124) #12, !dbg !967
  call void @llvm.dbg.value(metadata i8* %595, metadata !388, metadata !DIExpression()), !dbg !390
  br label %596, !dbg !968

596:                                              ; preds = %592, %594
  %597 = phi i8* [ %595, %594 ], [ null, %592 ], !dbg !969
  call void @llvm.dbg.value(metadata i8* %597, metadata !388, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !489, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !492, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata %struct.strand_t* %544, metadata !492, metadata !DIExpression()), !dbg !970
  br i1 %545, label %638, label %598, !dbg !972

598:                                              ; preds = %596, %634
  %599 = phi %struct.strand_t* [ %636, %634 ], [ %544, %596 ]
  %600 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %599, i64 0, i32 2, !dbg !973
  %601 = load i32, i32* %600, align 4, !dbg !974, !tbaa !300
  %602 = and i32 %601, -2, !dbg !974
  store i32 %602, i32* %600, align 4, !dbg !974, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !491, metadata !DIExpression()), !dbg !970
  %603 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %599, i64 0, i32 5, !dbg !975
  %604 = load i32, i32* %603, align 8, !dbg !975, !tbaa !309
  %605 = icmp sgt i32 %604, 0, !dbg !976
  br i1 %605, label %606, label %634, !dbg !977

606:                                              ; preds = %598
  %607 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %599, i64 0, i32 7, !dbg !978
  %608 = load %struct.residue_t**, %struct.residue_t*** %607, align 8, !dbg !978, !tbaa !314
  %609 = zext i32 %604 to i64, !dbg !977
  br label %610, !dbg !977

610:                                              ; preds = %631, %606
  %611 = phi i64 [ 0, %606 ], [ %632, %631 ]
  call void @llvm.dbg.value(metadata i64 %611, metadata !491, metadata !DIExpression()), !dbg !970
  %612 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %608, i64 %611, !dbg !979
  %613 = load %struct.residue_t*, %struct.residue_t** %612, align 8, !dbg !979, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %613, metadata !493, metadata !DIExpression()), !dbg !970
  %614 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %613, i64 0, i32 6, !dbg !980
  %615 = load i32, i32* %614, align 8, !dbg !981, !tbaa !318
  %616 = and i32 %615, -2, !dbg !981
  store i32 %616, i32* %614, align 8, !dbg !981, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !970
  %617 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %613, i64 0, i32 15, !dbg !982
  %618 = load i32, i32* %617, align 8, !dbg !982, !tbaa !326
  %619 = icmp sgt i32 %618, 0, !dbg !983
  br i1 %619, label %620, label %631, !dbg !984

620:                                              ; preds = %610
  %621 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %613, i64 0, i32 17, !dbg !985
  %622 = load %struct.atom_t*, %struct.atom_t** %621, align 8, !dbg !985, !tbaa !331
  %623 = zext i32 %618 to i64, !dbg !984
  br label %624, !dbg !984

624:                                              ; preds = %624, %620
  %625 = phi i64 [ 0, %620 ], [ %629, %624 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !490, metadata !DIExpression()), !dbg !970
  %626 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %622, i64 %625, i32 2, !dbg !986
  %627 = load i32, i32* %626, align 8, !dbg !987, !tbaa !334
  %628 = and i32 %627, -2, !dbg !987
  store i32 %628, i32* %626, align 8, !dbg !987, !tbaa !334
  %629 = add nuw nsw i64 %625, 1, !dbg !988
  call void @llvm.dbg.value(metadata i64 %629, metadata !490, metadata !DIExpression()), !dbg !970
  %630 = icmp eq i64 %629, %623, !dbg !983
  br i1 %630, label %631, label %624, !dbg !984, !llvm.loop !989

631:                                              ; preds = %624, %610
  %632 = add nuw nsw i64 %611, 1, !dbg !991
  call void @llvm.dbg.value(metadata i64 %632, metadata !491, metadata !DIExpression()), !dbg !970
  %633 = icmp eq i64 %632, %609, !dbg !976
  br i1 %633, label %634, label %610, !dbg !977, !llvm.loop !992

634:                                              ; preds = %631, %598
  %635 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %599, i64 0, i32 4, !dbg !994
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !492, metadata !DIExpression()), !dbg !970
  %636 = load %struct.strand_t*, %struct.strand_t** %635, align 8, !dbg !995, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %636, metadata !492, metadata !DIExpression()), !dbg !970
  %637 = icmp eq %struct.strand_t* %636, null, !dbg !972
  br i1 %637, label %638, label %598, !dbg !972, !llvm.loop !996

638:                                              ; preds = %634, %596
  call void @llvm.dbg.value(metadata i8* %597, metadata !388, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i8* %148, metadata !387, metadata !DIExpression()), !dbg !390
  br i1 %593, label %639, label %136, !dbg !554, !llvm.loop !998

639:                                              ; preds = %638
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1000, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1005, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata %struct.strand_t* %544, metadata !1005, metadata !DIExpression()), !dbg !1008
  %640 = icmp eq %struct.strand_t* %544, null, !dbg !1010
  br i1 %640, label %687, label %641, !dbg !1010

641:                                              ; preds = %639, %683
  %642 = phi %struct.strand_t* [ %685, %683 ], [ %544, %639 ]
  %643 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %642, i64 0, i32 2, !dbg !1012
  %644 = load i32, i32* %643, align 4, !dbg !1012, !tbaa !300
  %645 = lshr i32 %644, 7, !dbg !1015
  %646 = and i32 %645, 1, !dbg !1015
  %647 = or i32 %646, %644, !dbg !1016
  store i32 %647, i32* %643, align 4, !dbg !1016, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !1004, metadata !DIExpression()), !dbg !1008
  %648 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %642, i64 0, i32 5, !dbg !1017
  %649 = load i32, i32* %648, align 8, !dbg !1017, !tbaa !309
  %650 = icmp sgt i32 %649, 0, !dbg !1020
  br i1 %650, label %651, label %683, !dbg !1021

651:                                              ; preds = %641
  %652 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %642, i64 0, i32 7, !dbg !1022
  %653 = load %struct.residue_t**, %struct.residue_t*** %652, align 8, !dbg !1022, !tbaa !314
  %654 = zext i32 %649 to i64, !dbg !1021
  br label %655, !dbg !1021

655:                                              ; preds = %680, %651
  %656 = phi i64 [ 0, %651 ], [ %681, %680 ]
  call void @llvm.dbg.value(metadata i64 %656, metadata !1004, metadata !DIExpression()), !dbg !1008
  %657 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %653, i64 %656, !dbg !1024
  %658 = load %struct.residue_t*, %struct.residue_t** %657, align 8, !dbg !1024, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %658, metadata !1006, metadata !DIExpression()), !dbg !1008
  %659 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %658, i64 0, i32 6, !dbg !1025
  %660 = load i32, i32* %659, align 8, !dbg !1025, !tbaa !318
  %661 = lshr i32 %660, 7, !dbg !1026
  %662 = and i32 %661, 1, !dbg !1026
  %663 = or i32 %662, %660, !dbg !1027
  store i32 %663, i32* %659, align 8, !dbg !1027, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !1003, metadata !DIExpression()), !dbg !1008
  %664 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %658, i64 0, i32 15, !dbg !1028
  %665 = load i32, i32* %664, align 8, !dbg !1028, !tbaa !326
  %666 = icmp sgt i32 %665, 0, !dbg !1031
  br i1 %666, label %667, label %680, !dbg !1032

667:                                              ; preds = %655
  %668 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %658, i64 0, i32 17, !dbg !1033
  %669 = load %struct.atom_t*, %struct.atom_t** %668, align 8, !dbg !1033, !tbaa !331
  %670 = zext i32 %665 to i64, !dbg !1032
  br label %671, !dbg !1032

671:                                              ; preds = %671, %667
  %672 = phi i64 [ 0, %667 ], [ %678, %671 ]
  call void @llvm.dbg.value(metadata i64 %672, metadata !1003, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1007, metadata !DIExpression()), !dbg !1008
  %673 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %669, i64 %672, i32 2, !dbg !1035
  %674 = load i32, i32* %673, align 8, !dbg !1035, !tbaa !334
  %675 = lshr i32 %674, 7, !dbg !1036
  %676 = and i32 %675, 1, !dbg !1036
  %677 = or i32 %676, %674, !dbg !1037
  store i32 %677, i32* %673, align 8, !dbg !1037, !tbaa !334
  %678 = add nuw nsw i64 %672, 1, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %678, metadata !1003, metadata !DIExpression()), !dbg !1008
  %679 = icmp eq i64 %678, %670, !dbg !1031
  br i1 %679, label %680, label %671, !dbg !1032, !llvm.loop !1039

680:                                              ; preds = %671, %655
  %681 = add nuw nsw i64 %656, 1, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %681, metadata !1004, metadata !DIExpression()), !dbg !1008
  %682 = icmp eq i64 %681, %654, !dbg !1020
  br i1 %682, label %683, label %655, !dbg !1021, !llvm.loop !1042

683:                                              ; preds = %680, %641
  %684 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %642, i64 0, i32 4, !dbg !1044
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1005, metadata !DIExpression()), !dbg !1008
  %685 = load %struct.strand_t*, %struct.strand_t** %684, align 8, !dbg !1045, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %685, metadata !1005, metadata !DIExpression()), !dbg !1008
  %686 = icmp eq %struct.strand_t* %685, null, !dbg !1010
  br i1 %686, label %687, label %641, !dbg !1010, !llvm.loop !1046

687:                                              ; preds = %683, %46, %639, %9, %152
  %688 = phi i32 [ 1, %152 ], [ 0, %9 ], [ 0, %639 ], [ 0, %46 ], [ 0, %683 ], !dbg !390
  ret i32 %688, !dbg !1048
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
  store i8 0, i8* %35, align 1, !dbg !1117, !tbaa !576
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1067, metadata !DIExpression()) #13, !dbg !1064
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1068, metadata !DIExpression()) #13, !dbg !1064
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #13, !dbg !1118
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #13, !dbg !1118
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1069, metadata !DIExpression()) #13, !dbg !1064
  %36 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !1119, !tbaa !576
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
  %46 = load i8, i8* %45, align 1, !dbg !1133, !tbaa !576
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
  call void @llvm.dbg.value(metadata i8* %60, metadata !621, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !628, metadata !DIExpression()) #13, !dbg !1164
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1166, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %60, metadata !627, metadata !DIExpression()) #13, !dbg !1164
  br label %67, !dbg !1167

67:                                               ; preds = %78, %63
  %68 = phi i8* [ %60, %63 ], [ %80, %78 ], !dbg !1168
  %69 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %63 ], [ %79, %78 ], !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %68, metadata !627, metadata !DIExpression()) #13, !dbg !1164
  %70 = load i8, i8* %68, align 1, !dbg !1169, !tbaa !576
  switch i8 %70, label %76 [
    i8 0, label %81
    i8 42, label %71
    i8 63, label %74
  ], !dbg !1170

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %72, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  store i8 46, i8* %69, align 1, !dbg !1172, !tbaa !576
  %73 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !1173
  call void @llvm.dbg.value(metadata i8* %73, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  store i8 42, i8* %72, align 1, !dbg !1174, !tbaa !576
  br label %78, !dbg !1175

74:                                               ; preds = %67
  %75 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1176
  call void @llvm.dbg.value(metadata i8* %75, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  store i8 46, i8* %69, align 1, !dbg !1177, !tbaa !576
  br label %78, !dbg !1178

76:                                               ; preds = %67
  %77 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %77, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  store i8 %70, i8* %69, align 1, !dbg !1180, !tbaa !576
  br label %78

78:                                               ; preds = %76, %74, %71
  %79 = phi i8* [ %73, %71 ], [ %75, %74 ], [ %77, %76 ], !dbg !1181
  call void @llvm.dbg.value(metadata i8* %79, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  %80 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1182
  call void @llvm.dbg.value(metadata i8* %80, metadata !627, metadata !DIExpression()) #13, !dbg !1164
  br label %67, !dbg !1183, !llvm.loop !1184

81:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %69, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  %82 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %82, metadata !628, metadata !DIExpression()) #13, !dbg !1164
  store i8 36, i8* %69, align 1, !dbg !1187, !tbaa !576
  store i8 0, i8* %82, align 1, !dbg !1188, !tbaa !576
  %83 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1189
  %84 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %66, i64 0, i32 0, !dbg !1190
  %85 = load i8*, i8** %84, align 8, !dbg !1190, !tbaa !667
  %86 = tail call i32 @step(i8* %85, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1191
  %87 = icmp eq i32 %86, 0, !dbg !1153
  br i1 %87, label %116, label %179, !dbg !1192

88:                                               ; preds = %59
  %89 = load i32, i32* %3, align 4, !dbg !1193, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %89, metadata !1071, metadata !DIExpression()) #13, !dbg !1064
  %90 = load i32, i32* %4, align 4, !dbg !1195, !tbaa !675
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
  %98 = load i32, i32* %97, align 8, !dbg !1209, !tbaa !679
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
  call void @llvm.dbg.value(metadata i8* %120, metadata !621, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !628, metadata !DIExpression()) #13, !dbg !1244
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1246, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %120, metadata !627, metadata !DIExpression()) #13, !dbg !1244
  br label %127, !dbg !1247

127:                                              ; preds = %138, %123
  %128 = phi i8* [ %120, %123 ], [ %140, %138 ], !dbg !1248
  %129 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %123 ], [ %139, %138 ], !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %128, metadata !627, metadata !DIExpression()) #13, !dbg !1244
  %130 = load i8, i8* %128, align 1, !dbg !1249, !tbaa !576
  switch i8 %130, label %136 [
    i8 0, label %141
    i8 42, label %131
    i8 63, label %134
  ], !dbg !1250

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %132, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  store i8 46, i8* %129, align 1, !dbg !1252, !tbaa !576
  %133 = getelementptr inbounds i8, i8* %129, i64 2, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %133, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  store i8 42, i8* %132, align 1, !dbg !1254, !tbaa !576
  br label %138, !dbg !1255

134:                                              ; preds = %127
  %135 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %135, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  store i8 46, i8* %129, align 1, !dbg !1257, !tbaa !576
  br label %138, !dbg !1258

136:                                              ; preds = %127
  %137 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1259
  call void @llvm.dbg.value(metadata i8* %137, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  store i8 %130, i8* %129, align 1, !dbg !1260, !tbaa !576
  br label %138

138:                                              ; preds = %136, %134, %131
  %139 = phi i8* [ %133, %131 ], [ %135, %134 ], [ %137, %136 ], !dbg !1261
  call void @llvm.dbg.value(metadata i8* %139, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  %140 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %140, metadata !627, metadata !DIExpression()) #13, !dbg !1244
  br label %127, !dbg !1263, !llvm.loop !1264

141:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %129, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  %142 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %142, metadata !628, metadata !DIExpression()) #13, !dbg !1244
  store i8 36, i8* %129, align 1, !dbg !1267, !tbaa !576
  store i8 0, i8* %142, align 1, !dbg !1268, !tbaa !576
  %143 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1269
  %144 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %126, i64 0, i32 0, !dbg !1270
  %145 = load i8*, i8** %144, align 8, !dbg !1270, !tbaa !667
  %146 = tail call i32 @step(i8* %145, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1271
  %147 = icmp eq i32 %146, 0, !dbg !1239
  br i1 %147, label %176, label %179, !dbg !1272

148:                                              ; preds = %119
  %149 = load i32, i32* %3, align 4, !dbg !1273, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %149, metadata !1071, metadata !DIExpression()) #13, !dbg !1064
  %150 = load i32, i32* %4, align 4, !dbg !1275, !tbaa !675
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
  %158 = load i32, i32* %157, align 8, !dbg !1277, !tbaa !679
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
  call void @llvm.dbg.value(metadata i8* %183, metadata !621, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !628, metadata !DIExpression()) #13, !dbg !1314
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1316, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %183, metadata !627, metadata !DIExpression()) #13, !dbg !1314
  br label %188, !dbg !1317

188:                                              ; preds = %199, %186
  %189 = phi i8* [ %183, %186 ], [ %201, %199 ], !dbg !1318
  %190 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %186 ], [ %200, %199 ], !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %189, metadata !627, metadata !DIExpression()) #13, !dbg !1314
  %191 = load i8, i8* %189, align 1, !dbg !1319, !tbaa !576
  switch i8 %191, label %197 [
    i8 0, label %202
    i8 42, label %192
    i8 63, label %195
  ], !dbg !1320

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %193, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  store i8 46, i8* %190, align 1, !dbg !1322, !tbaa !576
  %194 = getelementptr inbounds i8, i8* %190, i64 2, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %194, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  store i8 42, i8* %193, align 1, !dbg !1324, !tbaa !576
  br label %199, !dbg !1325

195:                                              ; preds = %188
  %196 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %196, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  store i8 46, i8* %190, align 1, !dbg !1327, !tbaa !576
  br label %199, !dbg !1328

197:                                              ; preds = %188
  %198 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1329
  call void @llvm.dbg.value(metadata i8* %198, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  store i8 %191, i8* %190, align 1, !dbg !1330, !tbaa !576
  br label %199

199:                                              ; preds = %197, %195, %192
  %200 = phi i8* [ %194, %192 ], [ %196, %195 ], [ %198, %197 ], !dbg !1331
  call void @llvm.dbg.value(metadata i8* %200, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  %201 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %201, metadata !627, metadata !DIExpression()) #13, !dbg !1314
  br label %188, !dbg !1333, !llvm.loop !1334

202:                                              ; preds = %188
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %190, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  %203 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %203, metadata !628, metadata !DIExpression()) #13, !dbg !1314
  store i8 36, i8* %190, align 1, !dbg !1337, !tbaa !576
  store i8 0, i8* %203, align 1, !dbg !1338, !tbaa !576
  %204 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1339
  %205 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %187, i64 0, i32 4, !dbg !1340
  %206 = load i8*, i8** %205, align 8, !dbg !1340, !tbaa !1341
  %207 = tail call i32 @step(i8* %206, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1342
  %208 = icmp eq i32 %207, 0, !dbg !1304
  br i1 %208, label %236, label %296, !dbg !1343

209:                                              ; preds = %182
  %210 = load i32, i32* %3, align 4, !dbg !1344, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %210, metadata !1071, metadata !DIExpression()) #13, !dbg !1064
  %211 = load i32, i32* %4, align 4, !dbg !1346, !tbaa !675
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
  call void @llvm.dbg.value(metadata i8* %240, metadata !621, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !628, metadata !DIExpression()) #13, !dbg !1394
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1396, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %240, metadata !627, metadata !DIExpression()) #13, !dbg !1394
  br label %245, !dbg !1397

245:                                              ; preds = %256, %243
  %246 = phi i8* [ %240, %243 ], [ %258, %256 ], !dbg !1398
  %247 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %243 ], [ %257, %256 ], !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %246, metadata !627, metadata !DIExpression()) #13, !dbg !1394
  %248 = load i8, i8* %246, align 1, !dbg !1399, !tbaa !576
  switch i8 %248, label %254 [
    i8 0, label %259
    i8 42, label %249
    i8 63, label %252
  ], !dbg !1400

249:                                              ; preds = %245
  %250 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %250, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  store i8 46, i8* %247, align 1, !dbg !1402, !tbaa !576
  %251 = getelementptr inbounds i8, i8* %247, i64 2, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %251, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  store i8 42, i8* %250, align 1, !dbg !1404, !tbaa !576
  br label %256, !dbg !1405

252:                                              ; preds = %245
  %253 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1406
  call void @llvm.dbg.value(metadata i8* %253, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  store i8 46, i8* %247, align 1, !dbg !1407, !tbaa !576
  br label %256, !dbg !1408

254:                                              ; preds = %245
  %255 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %255, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  store i8 %248, i8* %247, align 1, !dbg !1410, !tbaa !576
  br label %256

256:                                              ; preds = %254, %252, %249
  %257 = phi i8* [ %251, %249 ], [ %253, %252 ], [ %255, %254 ], !dbg !1411
  call void @llvm.dbg.value(metadata i8* %257, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  %258 = getelementptr inbounds i8, i8* %246, i64 1, !dbg !1412
  call void @llvm.dbg.value(metadata i8* %258, metadata !627, metadata !DIExpression()) #13, !dbg !1394
  br label %245, !dbg !1413, !llvm.loop !1414

259:                                              ; preds = %245
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %247, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  %260 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %260, metadata !628, metadata !DIExpression()) #13, !dbg !1394
  store i8 36, i8* %247, align 1, !dbg !1417, !tbaa !576
  store i8 0, i8* %260, align 1, !dbg !1418, !tbaa !576
  %261 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1419
  %262 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %244, i64 0, i32 4, !dbg !1420
  %263 = load i8*, i8** %262, align 8, !dbg !1420, !tbaa !1341
  %264 = tail call i32 @step(i8* %263, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1421
  %265 = icmp eq i32 %264, 0, !dbg !1389
  br i1 %265, label %293, label %296, !dbg !1422

266:                                              ; preds = %239
  %267 = load i32, i32* %3, align 4, !dbg !1423, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %267, metadata !1071, metadata !DIExpression()) #13, !dbg !1064
  %268 = load i32, i32* %4, align 4, !dbg !1425, !tbaa !675
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
  call void @llvm.dbg.value(metadata i8* %300, metadata !621, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !628, metadata !DIExpression()) #13, !dbg !1454
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1456, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %300, metadata !627, metadata !DIExpression()) #13, !dbg !1454
  br label %304, !dbg !1457

304:                                              ; preds = %315, %303
  %305 = phi i8* [ %300, %303 ], [ %317, %315 ], !dbg !1458
  %306 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %303 ], [ %316, %315 ], !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %305, metadata !627, metadata !DIExpression()) #13, !dbg !1454
  %307 = load i8, i8* %305, align 1, !dbg !1459, !tbaa !576
  switch i8 %307, label %313 [
    i8 0, label %318
    i8 42, label %308
    i8 63, label %311
  ], !dbg !1460

308:                                              ; preds = %304
  %309 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1461
  call void @llvm.dbg.value(metadata i8* %309, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  store i8 46, i8* %306, align 1, !dbg !1462, !tbaa !576
  %310 = getelementptr inbounds i8, i8* %306, i64 2, !dbg !1463
  call void @llvm.dbg.value(metadata i8* %310, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  store i8 42, i8* %309, align 1, !dbg !1464, !tbaa !576
  br label %315, !dbg !1465

311:                                              ; preds = %304
  %312 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1466
  call void @llvm.dbg.value(metadata i8* %312, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  store i8 46, i8* %306, align 1, !dbg !1467, !tbaa !576
  br label %315, !dbg !1468

313:                                              ; preds = %304
  %314 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1469
  call void @llvm.dbg.value(metadata i8* %314, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  store i8 %307, i8* %306, align 1, !dbg !1470, !tbaa !576
  br label %315

315:                                              ; preds = %313, %311, %308
  %316 = phi i8* [ %310, %308 ], [ %312, %311 ], [ %314, %313 ], !dbg !1471
  call void @llvm.dbg.value(metadata i8* %316, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  %317 = getelementptr inbounds i8, i8* %305, i64 1, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %317, metadata !627, metadata !DIExpression()) #13, !dbg !1454
  br label %304, !dbg !1473, !llvm.loop !1474

318:                                              ; preds = %304
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %306, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  %319 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1476
  call void @llvm.dbg.value(metadata i8* %319, metadata !628, metadata !DIExpression()) #13, !dbg !1454
  store i8 36, i8* %306, align 1, !dbg !1477, !tbaa !576
  store i8 0, i8* %319, align 1, !dbg !1478, !tbaa !576
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
  call void @llvm.dbg.value(metadata i8* %328, metadata !621, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !628, metadata !DIExpression()) #13, !dbg !1499
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1501, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %328, metadata !627, metadata !DIExpression()) #13, !dbg !1499
  br label %334, !dbg !1502

334:                                              ; preds = %345, %333
  %335 = phi i8* [ %328, %333 ], [ %347, %345 ], !dbg !1503
  %336 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %333 ], [ %346, %345 ], !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %335, metadata !627, metadata !DIExpression()) #13, !dbg !1499
  %337 = load i8, i8* %335, align 1, !dbg !1504, !tbaa !576
  switch i8 %337, label %343 [
    i8 0, label %348
    i8 42, label %338
    i8 63, label %341
  ], !dbg !1505

338:                                              ; preds = %334
  %339 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1506
  call void @llvm.dbg.value(metadata i8* %339, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  store i8 46, i8* %336, align 1, !dbg !1507, !tbaa !576
  %340 = getelementptr inbounds i8, i8* %336, i64 2, !dbg !1508
  call void @llvm.dbg.value(metadata i8* %340, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  store i8 42, i8* %339, align 1, !dbg !1509, !tbaa !576
  br label %345, !dbg !1510

341:                                              ; preds = %334
  %342 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1511
  call void @llvm.dbg.value(metadata i8* %342, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  store i8 46, i8* %336, align 1, !dbg !1512, !tbaa !576
  br label %345, !dbg !1513

343:                                              ; preds = %334
  %344 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1514
  call void @llvm.dbg.value(metadata i8* %344, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  store i8 %337, i8* %336, align 1, !dbg !1515, !tbaa !576
  br label %345

345:                                              ; preds = %343, %341, %338
  %346 = phi i8* [ %340, %338 ], [ %342, %341 ], [ %344, %343 ], !dbg !1516
  call void @llvm.dbg.value(metadata i8* %346, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  %347 = getelementptr inbounds i8, i8* %335, i64 1, !dbg !1517
  call void @llvm.dbg.value(metadata i8* %347, metadata !627, metadata !DIExpression()) #13, !dbg !1499
  br label %334, !dbg !1518, !llvm.loop !1519

348:                                              ; preds = %334
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %336, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  %349 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1521
  call void @llvm.dbg.value(metadata i8* %349, metadata !628, metadata !DIExpression()) #13, !dbg !1499
  store i8 36, i8* %336, align 1, !dbg !1522, !tbaa !576
  store i8 0, i8* %349, align 1, !dbg !1523, !tbaa !576
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
  br i1 %6, label %56, label %7, !dbg !1556

7:                                                ; preds = %3, %52
  %8 = phi %struct.strand_t* [ %54, %52 ], [ %5, %3 ]
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
  br i1 %17, label %18, label %52, !dbg !1567

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 7, !dbg !1568
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8, !dbg !1568, !tbaa !314
  %21 = zext i32 %16 to i64, !dbg !1567
  br label %22, !dbg !1567

22:                                               ; preds = %18, %49
  %23 = phi i64 [ 0, %18 ], [ %50, %49 ]
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
  br i1 %34, label %35, label %49, !dbg !1579

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i64 0, i32 17, !dbg !1580
  %37 = load %struct.atom_t*, %struct.atom_t** %36, align 8, !dbg !1580, !tbaa !331
  %38 = zext i32 %33 to i64, !dbg !1579
  br label %39, !dbg !1579

39:                                               ; preds = %35, %39
  %40 = phi i64 [ 0, %35 ], [ %47, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1547, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1551, metadata !DIExpression()), !dbg !1552
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %40, i32 2, !dbg !1582
  %42 = load i32, i32* %41, align 8, !dbg !1582, !tbaa !334
  %43 = and i32 %42, %2, !dbg !1583
  %44 = icmp eq i32 %43, 0, !dbg !1583
  %45 = select i1 %44, i32 0, i32 %1, !dbg !1584
  %46 = or i32 %45, %42, !dbg !1585
  store i32 %46, i32* %41, align 8, !dbg !1585, !tbaa !334
  %47 = add nuw nsw i64 %40, 1, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %47, metadata !1547, metadata !DIExpression()), !dbg !1552
  %48 = icmp ult i64 %47, %38, !dbg !1578
  br i1 %48, label %39, label %49, !dbg !1579, !llvm.loop !1587

49:                                               ; preds = %39, %22
  %50 = add nuw nsw i64 %23, 1, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %50, metadata !1548, metadata !DIExpression()), !dbg !1552
  %51 = icmp ult i64 %50, %21, !dbg !1566
  br i1 %51, label %22, label %52, !dbg !1567, !llvm.loop !1590

52:                                               ; preds = %49, %7
  %53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 4, !dbg !1592
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1549, metadata !DIExpression()), !dbg !1552
  %54 = load %struct.strand_t*, %struct.strand_t** %53, align 8, !dbg !1555, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %54, metadata !1549, metadata !DIExpression()), !dbg !1552
  %55 = icmp eq %struct.strand_t* %54, null, !dbg !1556
  br i1 %55, label %56, label %7, !dbg !1556, !llvm.loop !1593

56:                                               ; preds = %52, %3
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
  br i1 %5, label %48, label %6, !dbg !1610

6:                                                ; preds = %2
  %7 = xor i32 %1, -1, !dbg !1611
  br label %8, !dbg !1610

8:                                                ; preds = %6, %44
  %9 = phi %struct.strand_t* [ %4, %6 ], [ %46, %44 ]
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 2, !dbg !1614
  %11 = load i32, i32* %10, align 4, !dbg !1615, !tbaa !300
  %12 = and i32 %11, %7, !dbg !1615
  store i32 %12, i32* %10, align 4, !dbg !1615, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !1603, metadata !DIExpression()), !dbg !1606
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 5, !dbg !1616
  %14 = load i32, i32* %13, align 8, !dbg !1616, !tbaa !309
  %15 = icmp sgt i32 %14, 0, !dbg !1619
  br i1 %15, label %16, label %44, !dbg !1620

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 7, !dbg !1621
  %18 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1621, !tbaa !314
  %19 = zext i32 %14 to i64, !dbg !1620
  br label %20, !dbg !1620

20:                                               ; preds = %16, %41
  %21 = phi i64 [ 0, %16 ], [ %42, %41 ]
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
  br i1 %29, label %30, label %41, !dbg !1630

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %23, i64 0, i32 17, !dbg !1631
  %32 = load %struct.atom_t*, %struct.atom_t** %31, align 8, !dbg !1631, !tbaa !331
  %33 = zext i32 %28 to i64, !dbg !1630
  br label %34, !dbg !1630

34:                                               ; preds = %30, %34
  %35 = phi i64 [ 0, %30 ], [ %39, %34 ]
  call void @llvm.dbg.value(metadata i64 %35, metadata !1602, metadata !DIExpression()), !dbg !1606
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %35, i32 2, !dbg !1632
  %37 = load i32, i32* %36, align 8, !dbg !1633, !tbaa !334
  %38 = and i32 %37, %7, !dbg !1633
  store i32 %38, i32* %36, align 8, !dbg !1633, !tbaa !334
  %39 = add nuw nsw i64 %35, 1, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %39, metadata !1602, metadata !DIExpression()), !dbg !1606
  %40 = icmp ult i64 %39, %33, !dbg !1629
  br i1 %40, label %34, label %41, !dbg !1630, !llvm.loop !1635

41:                                               ; preds = %34, %20
  %42 = add nuw nsw i64 %21, 1, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %42, metadata !1603, metadata !DIExpression()), !dbg !1606
  %43 = icmp ult i64 %42, %19, !dbg !1619
  br i1 %43, label %20, label %44, !dbg !1620, !llvm.loop !1638

44:                                               ; preds = %41, %8
  %45 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i64 0, i32 4, !dbg !1640
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1604, metadata !DIExpression()), !dbg !1606
  %46 = load %struct.strand_t*, %struct.strand_t** %45, align 8, !dbg !1609, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %46, metadata !1604, metadata !DIExpression()), !dbg !1606
  %47 = icmp eq %struct.strand_t* %46, null, !dbg !1610
  br i1 %47, label %48, label %8, !dbg !1610, !llvm.loop !1641

48:                                               ; preds = %44, %2
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
  %5 = load i16*, i16** %4, align 8, !dbg !1655, !tbaa !291
  %6 = load i8, i8* %0, align 1, !dbg !1655, !tbaa !576
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
  %25 = load i8, i8* %24, align 1, !dbg !1664, !tbaa !576
  %26 = sext i8 %25 to i64, !dbg !1664
  %27 = getelementptr inbounds i16, i16* %5, i64 %26, !dbg !1664
  %28 = load i16, i16* %27, align 2, !dbg !1664, !tbaa !1657
  %29 = and i16 %28, 2048, !dbg !1664
  %30 = icmp eq i16 %29, 0, !dbg !1672
  br i1 %30, label %31, label %16, !dbg !1672, !llvm.loop !1673

31:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8* %18, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %18, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %23, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %24, metadata !1653, metadata !DIExpression()), !dbg !1654
  store i32 %23, i32* %1, align 4, !dbg !1675, !tbaa !675
  %32 = load i8, i8* %24, align 1, !dbg !1676, !tbaa !576
  switch i8 %32, label %37 [
    i8 0, label %33
    i8 45, label %34
  ], !dbg !1678

33:                                               ; preds = %31
  store i32 %23, i32* %2, align 4, !dbg !1679, !tbaa !675
  br label %95, !dbg !1681

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %35, metadata !1653, metadata !DIExpression()), !dbg !1654
  %36 = load i8, i8* %35, align 1, !dbg !1684, !tbaa !576
  br label %37, !dbg !1686

37:                                               ; preds = %31, %34
  %38 = phi i8 [ %32, %31 ], [ %36, %34 ], !dbg !1684
  %39 = phi i8* [ %24, %31 ], [ %35, %34 ], !dbg !1687
  call void @llvm.dbg.value(metadata i8* %39, metadata !1653, metadata !DIExpression()), !dbg !1654
  %40 = icmp eq i8 %38, 0, !dbg !1684
  br i1 %40, label %41, label %42, !dbg !1688

41:                                               ; preds = %37
  store i32 -1, i32* %2, align 4, !dbg !1689, !tbaa !675
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
  %57 = load i8, i8* %56, align 1, !dbg !1695, !tbaa !576
  %58 = sext i8 %57 to i64, !dbg !1695
  %59 = getelementptr inbounds i16, i16* %5, i64 %58, !dbg !1695
  %60 = load i16, i16* %59, align 2, !dbg !1695, !tbaa !1657
  %61 = and i16 %60, 2048, !dbg !1695
  %62 = icmp eq i16 %61, 0, !dbg !1702
  br i1 %62, label %63, label %48, !dbg !1702, !llvm.loop !1703

63:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %55, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %56, metadata !1653, metadata !DIExpression()), !dbg !1654
  store i32 %55, i32* %2, align 4, !dbg !1705, !tbaa !675
  %64 = load i8, i8* %56, align 1, !dbg !1706, !tbaa !576
  %65 = sext i8 %64 to i32, !dbg !1707
  br label %95, !dbg !1708

66:                                               ; preds = %14
  store i32 1, i32* %1, align 4, !dbg !1709, !tbaa !675
  %67 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %67, metadata !1653, metadata !DIExpression()), !dbg !1654
  %68 = load i8, i8* %67, align 1, !dbg !1712, !tbaa !576
  %69 = icmp eq i8 %68, 0, !dbg !1712
  br i1 %69, label %70, label %71, !dbg !1714

70:                                               ; preds = %66
  store i32 -1, i32* %2, align 4, !dbg !1715, !tbaa !675
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
  %86 = load i8, i8* %85, align 1, !dbg !1721, !tbaa !576
  %87 = sext i8 %86 to i64, !dbg !1721
  %88 = getelementptr inbounds i16, i16* %5, i64 %87, !dbg !1721
  %89 = load i16, i16* %88, align 2, !dbg !1721, !tbaa !1657
  %90 = and i16 %89, 2048, !dbg !1721
  %91 = icmp eq i16 %90, 0, !dbg !1729
  br i1 %91, label %92, label %77, !dbg !1729, !llvm.loop !1730

92:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 %84, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %85, metadata !1653, metadata !DIExpression()), !dbg !1654
  store i32 %84, i32* %2, align 4, !dbg !1732, !tbaa !675
  %93 = load i8, i8* %85, align 1, !dbg !1733, !tbaa !576
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
  call void @llvm.dbg.value(metadata i8* %1, metadata !621, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !628, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !628, metadata !DIExpression()), !dbg !1745
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1747, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %1, metadata !627, metadata !DIExpression()), !dbg !1745
  br label %3, !dbg !1748

3:                                                ; preds = %14, %2
  %4 = phi i8* [ %1, %2 ], [ %16, %14 ], !dbg !1749
  %5 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %2 ], [ %15, %14 ], !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !628, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %4, metadata !627, metadata !DIExpression()), !dbg !1745
  %6 = load i8, i8* %4, align 1, !dbg !1750, !tbaa !576
  switch i8 %6, label %12 [
    i8 0, label %17
    i8 42, label %7
    i8 63, label %10
  ], !dbg !1751

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1752
  call void @llvm.dbg.value(metadata i8* %8, metadata !628, metadata !DIExpression()), !dbg !1745
  store i8 46, i8* %5, align 1, !dbg !1753, !tbaa !576
  %9 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !1754
  call void @llvm.dbg.value(metadata i8* %9, metadata !628, metadata !DIExpression()), !dbg !1745
  store i8 42, i8* %8, align 1, !dbg !1755, !tbaa !576
  br label %14, !dbg !1756

10:                                               ; preds = %3
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1757
  call void @llvm.dbg.value(metadata i8* %11, metadata !628, metadata !DIExpression()), !dbg !1745
  store i8 46, i8* %5, align 1, !dbg !1758, !tbaa !576
  br label %14, !dbg !1759

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1760
  call void @llvm.dbg.value(metadata i8* %13, metadata !628, metadata !DIExpression()), !dbg !1745
  store i8 %6, i8* %5, align 1, !dbg !1761, !tbaa !576
  br label %14

14:                                               ; preds = %12, %10, %7
  %15 = phi i8* [ %9, %7 ], [ %11, %10 ], [ %13, %12 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8* %15, metadata !628, metadata !DIExpression()), !dbg !1745
  %16 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1763
  call void @llvm.dbg.value(metadata i8* %16, metadata !627, metadata !DIExpression()), !dbg !1745
  br label %3, !dbg !1764, !llvm.loop !1765

17:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8* %5, metadata !628, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !628, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !628, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !628, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !628, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !628, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !628, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %5, metadata !628, metadata !DIExpression()), !dbg !1745
  %18 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1767
  call void @llvm.dbg.value(metadata i8* %18, metadata !628, metadata !DIExpression()), !dbg !1745
  store i8 36, i8* %5, align 1, !dbg !1768, !tbaa !576
  store i8 0, i8* %18, align 1, !dbg !1769, !tbaa !576
  %19 = tail call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0) #13, !dbg !1770
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1771
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1742, metadata !DIExpression()), !dbg !1744
  %21 = load %struct.strand_t*, %struct.strand_t** %20, align 8, !dbg !1773, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %21, metadata !1742, metadata !DIExpression()), !dbg !1744
  %22 = icmp eq %struct.strand_t* %21, null, !dbg !1774
  br i1 %22, label %56, label %23, !dbg !1774

23:                                               ; preds = %17, %52
  %24 = phi %struct.strand_t* [ %54, %52 ], [ %21, %17 ]
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 2, !dbg !1775
  %26 = load i32, i32* %25, align 4, !dbg !1775, !tbaa !300
  %27 = and i32 %26, 1, !dbg !1779
  %28 = icmp eq i32 %27, 0, !dbg !1779
  br i1 %28, label %52, label %29, !dbg !1780

29:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 0, metadata !1741, metadata !DIExpression()), !dbg !1744
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 5, !dbg !1781
  %31 = load i32, i32* %30, align 8, !dbg !1781, !tbaa !309
  %32 = icmp sgt i32 %31, 0, !dbg !1785
  br i1 %32, label %33, label %52, !dbg !1786

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 7, !dbg !1787
  br label %35, !dbg !1786

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %48, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !1741, metadata !DIExpression()), !dbg !1744
  %37 = load %struct.residue_t**, %struct.residue_t*** %34, align 8, !dbg !1789, !tbaa !314
  %38 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %37, i64 %36, !dbg !1790
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8, !dbg !1790, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %39, metadata !1743, metadata !DIExpression()), !dbg !1744
  %40 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i64 0, i32 4, !dbg !1791
  %41 = load i8*, i8** %40, align 8, !dbg !1791, !tbaa !1341
  %42 = tail call i32 @step(i8* %41, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1792
  %43 = icmp ne i32 %42, 0, !dbg !1792
  %44 = zext i1 %43 to i32, !dbg !1792
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i64 0, i32 6, !dbg !1793
  %46 = load i32, i32* %45, align 8, !dbg !1794, !tbaa !318
  %47 = or i32 %46, %44, !dbg !1794
  store i32 %47, i32* %45, align 8, !dbg !1794, !tbaa !318
  %48 = add nuw nsw i64 %36, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %48, metadata !1741, metadata !DIExpression()), !dbg !1744
  %49 = load i32, i32* %30, align 8, !dbg !1781, !tbaa !309
  %50 = sext i32 %49 to i64, !dbg !1785
  %51 = icmp slt i64 %48, %50, !dbg !1785
  br i1 %51, label %35, label %52, !dbg !1786, !llvm.loop !1796

52:                                               ; preds = %35, %29, %23
  %53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 4, !dbg !1798
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1742, metadata !DIExpression()), !dbg !1744
  %54 = load %struct.strand_t*, %struct.strand_t** %53, align 8, !dbg !1773, !tbaa !291
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
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1816, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1808, metadata !DIExpression()), !dbg !1811
  %6 = icmp eq %struct.strand_t* %5, null, !dbg !1817
  br i1 %6, label %61, label %7, !dbg !1817

7:                                                ; preds = %2, %57
  %8 = phi %struct.strand_t* [ %59, %57 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 2, !dbg !1818
  %10 = load i32, i32* %9, align 4, !dbg !1818, !tbaa !300
  %11 = and i32 %10, 1, !dbg !1822
  %12 = icmp eq i32 %11, 0, !dbg !1822
  br i1 %12, label %57, label %13, !dbg !1823

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1806, metadata !DIExpression()), !dbg !1811
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 5, !dbg !1824
  %15 = load i32, i32* %14, align 8, !dbg !1824, !tbaa !309
  %16 = icmp sgt i32 %15, 0, !dbg !1828
  br i1 %16, label %17, label %57, !dbg !1829

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 7, !dbg !1830
  br label %19, !dbg !1829

19:                                               ; preds = %17, %52
  %20 = phi i32 [ %15, %17 ], [ %53, %52 ]
  %21 = phi i64 [ 0, %17 ], [ %54, %52 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1806, metadata !DIExpression()), !dbg !1811
  %22 = load %struct.residue_t**, %struct.residue_t*** %18, align 8, !dbg !1832, !tbaa !314
  %23 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %22, i64 %21, !dbg !1833
  %24 = load %struct.residue_t*, %struct.residue_t** %23, align 8, !dbg !1833, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.residue_t* %24, metadata !1809, metadata !DIExpression()), !dbg !1811
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 6, !dbg !1834
  %26 = load i32, i32* %25, align 8, !dbg !1834, !tbaa !318
  %27 = and i32 %26, 1, !dbg !1836
  %28 = icmp eq i32 %27, 0, !dbg !1836
  br i1 %28, label %52, label %29, !dbg !1837

29:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !1807, metadata !DIExpression()), !dbg !1811
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 15, !dbg !1838
  %31 = load i32, i32* %30, align 8, !dbg !1838, !tbaa !326
  %32 = icmp sgt i32 %31, 0, !dbg !1842
  br i1 %32, label %33, label %52, !dbg !1843

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 17, !dbg !1844
  br label %35, !dbg !1843

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !1807, metadata !DIExpression()), !dbg !1811
  %37 = load %struct.atom_t*, %struct.atom_t** %34, align 8, !dbg !1846, !tbaa !331
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1810, metadata !DIExpression()), !dbg !1811
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %36, i32 0, !dbg !1847
  %39 = load i8*, i8** %38, align 8, !dbg !1847, !tbaa !1481
  %40 = tail call i32 @step(i8* %39, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #13, !dbg !1848
  %41 = icmp ne i32 %40, 0, !dbg !1848
  %42 = zext i1 %41 to i32, !dbg !1848
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %36, i32 2, !dbg !1849
  %44 = load i32, i32* %43, align 8, !dbg !1850, !tbaa !334
  %45 = or i32 %44, %42, !dbg !1850
  store i32 %45, i32* %43, align 8, !dbg !1850, !tbaa !334
  %46 = add nuw nsw i64 %36, 1, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %46, metadata !1807, metadata !DIExpression()), !dbg !1811
  %47 = load i32, i32* %30, align 8, !dbg !1838, !tbaa !326
  %48 = sext i32 %47 to i64, !dbg !1842
  %49 = icmp slt i64 %46, %48, !dbg !1842
  br i1 %49, label %35, label %50, !dbg !1843, !llvm.loop !1852

50:                                               ; preds = %35
  %51 = load i32, i32* %14, align 8, !dbg !1824, !tbaa !309
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
  %59 = load %struct.strand_t*, %struct.strand_t** %58, align 8, !dbg !1816, !tbaa !291
  call void @llvm.dbg.value(metadata %struct.strand_t* %59, metadata !1808, metadata !DIExpression()), !dbg !1811
  %60 = icmp eq %struct.strand_t* %59, null, !dbg !1817
  br i1 %60, label %61, label %7, !dbg !1817, !llvm.loop !1858

61:                                               ; preds = %57, %2
  ret void, !dbg !1860
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc void @aexpr2rexpr(i8* nocapture readonly %0) unnamed_addr #5 !dbg !622 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !621, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !626, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !628, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !628, metadata !DIExpression()), !dbg !1861
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1862, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %0, metadata !627, metadata !DIExpression()), !dbg !1861
  br label %2, !dbg !1863

2:                                                ; preds = %13, %1
  %3 = phi i8* [ %0, %1 ], [ %15, %13 ], !dbg !1864
  %4 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %1 ], [ %14, %13 ], !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !628, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %3, metadata !627, metadata !DIExpression()), !dbg !1861
  %5 = load i8, i8* %3, align 1, !dbg !1865, !tbaa !576
  switch i8 %5, label %11 [
    i8 0, label %16
    i8 42, label %6
    i8 63, label %9
  ], !dbg !1866

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1867
  call void @llvm.dbg.value(metadata i8* %7, metadata !628, metadata !DIExpression()), !dbg !1861
  store i8 46, i8* %4, align 1, !dbg !1868, !tbaa !576
  %8 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !1869
  call void @llvm.dbg.value(metadata i8* %8, metadata !628, metadata !DIExpression()), !dbg !1861
  store i8 42, i8* %7, align 1, !dbg !1870, !tbaa !576
  br label %13, !dbg !1871

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1872
  call void @llvm.dbg.value(metadata i8* %10, metadata !628, metadata !DIExpression()), !dbg !1861
  store i8 46, i8* %4, align 1, !dbg !1873, !tbaa !576
  br label %13, !dbg !1874

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1875
  call void @llvm.dbg.value(metadata i8* %12, metadata !628, metadata !DIExpression()), !dbg !1861
  store i8 %5, i8* %4, align 1, !dbg !1876, !tbaa !576
  br label %13

13:                                               ; preds = %6, %11, %9
  %14 = phi i8* [ %8, %6 ], [ %10, %9 ], [ %12, %11 ], !dbg !1877
  call void @llvm.dbg.value(metadata i8* %14, metadata !628, metadata !DIExpression()), !dbg !1861
  %15 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %15, metadata !627, metadata !DIExpression()), !dbg !1861
  br label %2, !dbg !1879, !llvm.loop !1880

16:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !628, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !628, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !628, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !628, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %4, metadata !628, metadata !DIExpression()), !dbg !1861
  %17 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1882
  call void @llvm.dbg.value(metadata i8* %17, metadata !628, metadata !DIExpression()), !dbg !1861
  store i8 36, i8* %4, align 1, !dbg !1883, !tbaa !576
  store i8 0, i8* %17, align 1, !dbg !1884, !tbaa !576
  ret void, !dbg !1885
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
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/select_atoms.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/spec codes")
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
!23 = !DIFile(filename: "Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/select_atoms.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation")
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27, !239}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !29, line: 118, size: 1088, elements: !30)
!29 = !DIFile(filename: "Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation")
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
!244 = !DIFile(filename: "Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/nab.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation")
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
!343 = !DILocation(line: 75, column: 13, scope: !340)
!344 = !DILocation(line: 75, column: 10, scope: !340)
!345 = !DILocation(line: 76, column: 13, scope: !340)
!346 = !DILocation(line: 76, column: 10, scope: !340)
!347 = !DILocation(line: 77, column: 10, scope: !340)
!348 = !DILocation(line: 78, column: 7, scope: !340)
!349 = !DILocation(line: 71, column: 38, scope: !323)
!350 = distinct !{!350, !328, !351}
!351 = !DILocation(line: 79, column: 6, scope: !324)
!352 = !DILocation(line: 66, column: 10, scope: !289)
!353 = !DILocation(line: 65, column: 4, scope: !268)
!354 = !DILocation(line: 65, column: 8, scope: !268)
!355 = !DILocation(line: 65, column: 12, scope: !268)
!356 = !DILocation(line: 68, column: 38, scope: !306)
!357 = distinct !{!357, !311, !358}
!358 = !DILocation(line: 81, column: 4, scope: !307)
!359 = !DILocation(line: 66, column: 49, scope: !299)
!360 = distinct !{!360, !295, !361}
!361 = !DILocation(line: 83, column: 2, scope: !289)
!362 = !DILocation(line: 85, column: 9, scope: !363)
!363 = distinct !DILexicalBlock(scope: !268, file: !23, line: 85, column: 6)
!364 = !DILocation(line: 85, column: 6, scope: !268)
!365 = !DILocation(line: 86, column: 12, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !23, line: 85, column: 15)
!367 = !DILocation(line: 86, column: 3, scope: !366)
!368 = !DILocation(line: 87, column: 3, scope: !366)
!369 = !DILocation(line: 89, column: 20, scope: !370)
!370 = distinct !DILexicalBlock(scope: !363, file: !23, line: 88, column: 7)
!371 = !DILocation(line: 89, column: 18, scope: !370)
!372 = !DILocation(line: 89, column: 14, scope: !370)
!373 = !DILocation(line: 90, column: 18, scope: !370)
!374 = !DILocation(line: 90, column: 3, scope: !370)
!375 = !DILocation(line: 90, column: 14, scope: !370)
!376 = !DILocation(line: 91, column: 18, scope: !370)
!377 = !DILocation(line: 91, column: 3, scope: !370)
!378 = !DILocation(line: 91, column: 14, scope: !370)
!379 = !DILocation(line: 94, column: 2, scope: !268)
!380 = !DILocation(line: 95, column: 1, scope: !268)
!381 = distinct !DISubprogram(name: "select_atoms", scope: !23, file: !23, line: 97, type: !382, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!26, !271, !239}
!384 = !{!385, !386, !387, !388, !389}
!385 = !DILocalVariable(name: "mol", arg: 1, scope: !381, file: !23, line: 97, type: !271)
!386 = !DILocalVariable(name: "aex", arg: 2, scope: !381, file: !23, line: 97, type: !239)
!387 = !DILocalVariable(name: "aep", scope: !381, file: !23, line: 99, type: !239)
!388 = !DILocalVariable(name: "n_aep", scope: !381, file: !23, line: 99, type: !239)
!389 = !DILocalVariable(name: "ael", scope: !381, file: !23, line: 100, type: !26)
!390 = !DILocation(line: 0, scope: !381)
!391 = !DILocation(line: 102, column: 10, scope: !392)
!392 = distinct !DILexicalBlock(scope: !381, file: !23, line: 102, column: 6)
!393 = !DILocation(line: 102, column: 6, scope: !381)
!394 = !DILocalVariable(name: "mol", arg: 1, scope: !395, file: !23, line: 398, type: !271)
!395 = distinct !DISubprogram(name: "select_all", scope: !23, file: !23, line: 398, type: !396, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !271}
!398 = !{!394, !399, !400, !401, !402}
!399 = !DILocalVariable(name: "a", scope: !395, file: !23, line: 400, type: !26)
!400 = !DILocalVariable(name: "r", scope: !395, file: !23, line: 400, type: !26)
!401 = !DILocalVariable(name: "sp", scope: !395, file: !23, line: 401, type: !41)
!402 = !DILocalVariable(name: "res", scope: !395, file: !23, line: 402, type: !58)
!403 = !DILocation(line: 0, scope: !395, inlinedAt: !404)
!404 = distinct !DILocation(line: 103, column: 3, scope: !405)
!405 = distinct !DILexicalBlock(scope: !392, file: !23, line: 102, column: 19)
!406 = !DILocation(line: 404, column: 2, scope: !407, inlinedAt: !404)
!407 = distinct !DILexicalBlock(scope: !395, file: !23, line: 404, column: 2)
!408 = !DILocation(line: 405, column: 7, scope: !409, inlinedAt: !404)
!409 = distinct !DILexicalBlock(scope: !410, file: !23, line: 404, column: 49)
!410 = distinct !DILexicalBlock(scope: !407, file: !23, line: 404, column: 2)
!411 = !DILocation(line: 405, column: 14, scope: !409, inlinedAt: !404)
!412 = !DILocation(line: 406, column: 23, scope: !413, inlinedAt: !404)
!413 = distinct !DILexicalBlock(scope: !414, file: !23, line: 406, column: 3)
!414 = distinct !DILexicalBlock(scope: !409, file: !23, line: 406, column: 3)
!415 = !DILocation(line: 406, column: 17, scope: !413, inlinedAt: !404)
!416 = !DILocation(line: 406, column: 3, scope: !414, inlinedAt: !404)
!417 = !DILocation(line: 0, scope: !418, inlinedAt: !404)
!418 = distinct !DILexicalBlock(scope: !413, file: !23, line: 406, column: 41)
!419 = !DILocation(line: 407, column: 10, scope: !418, inlinedAt: !404)
!420 = !DILocation(line: 408, column: 9, scope: !418, inlinedAt: !404)
!421 = !DILocation(line: 408, column: 16, scope: !418, inlinedAt: !404)
!422 = !DILocation(line: 409, column: 25, scope: !423, inlinedAt: !404)
!423 = distinct !DILexicalBlock(scope: !424, file: !23, line: 409, column: 4)
!424 = distinct !DILexicalBlock(scope: !418, file: !23, line: 409, column: 4)
!425 = !DILocation(line: 409, column: 18, scope: !423, inlinedAt: !404)
!426 = !DILocation(line: 409, column: 4, scope: !424, inlinedAt: !404)
!427 = !DILocation(line: 0, scope: !423, inlinedAt: !404)
!428 = !DILocation(line: 410, column: 23, scope: !423, inlinedAt: !404)
!429 = !DILocation(line: 410, column: 30, scope: !423, inlinedAt: !404)
!430 = !DILocation(line: 409, column: 36, scope: !423, inlinedAt: !404)
!431 = distinct !{!431, !426, !432}
!432 = !DILocation(line: 410, column: 33, scope: !424, inlinedAt: !404)
!433 = !DILocation(line: 406, column: 37, scope: !413, inlinedAt: !404)
!434 = distinct !{!434, !416, !435}
!435 = !DILocation(line: 411, column: 3, scope: !414, inlinedAt: !404)
!436 = !DILocation(line: 404, column: 41, scope: !410, inlinedAt: !404)
!437 = !DILocation(line: 0, scope: !407, inlinedAt: !404)
!438 = distinct !{!438, !406, !439}
!439 = !DILocation(line: 412, column: 2, scope: !407, inlinedAt: !404)
!440 = !DILocalVariable(name: "mol", arg: 1, scope: !441, file: !23, line: 432, type: !271)
!441 = distinct !DISubprogram(name: "clear_work", scope: !23, file: !23, line: 432, type: !396, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!442 = !{!440, !443, !444, !445, !446}
!443 = !DILocalVariable(name: "a", scope: !441, file: !23, line: 434, type: !26)
!444 = !DILocalVariable(name: "r", scope: !441, file: !23, line: 434, type: !26)
!445 = !DILocalVariable(name: "sp", scope: !441, file: !23, line: 435, type: !41)
!446 = !DILocalVariable(name: "res", scope: !441, file: !23, line: 436, type: !58)
!447 = !DILocation(line: 0, scope: !441, inlinedAt: !448)
!448 = distinct !DILocation(line: 107, column: 2, scope: !381)
!449 = !DILocation(line: 438, column: 2, scope: !450, inlinedAt: !448)
!450 = distinct !DILexicalBlock(scope: !441, file: !23, line: 438, column: 2)
!451 = !DILocation(line: 439, column: 7, scope: !452, inlinedAt: !448)
!452 = distinct !DILexicalBlock(scope: !453, file: !23, line: 438, column: 49)
!453 = distinct !DILexicalBlock(scope: !450, file: !23, line: 438, column: 2)
!454 = !DILocation(line: 439, column: 14, scope: !452, inlinedAt: !448)
!455 = !DILocation(line: 440, column: 23, scope: !456, inlinedAt: !448)
!456 = distinct !DILexicalBlock(scope: !457, file: !23, line: 440, column: 3)
!457 = distinct !DILexicalBlock(scope: !452, file: !23, line: 440, column: 3)
!458 = !DILocation(line: 440, column: 17, scope: !456, inlinedAt: !448)
!459 = !DILocation(line: 440, column: 3, scope: !457, inlinedAt: !448)
!460 = !DILocation(line: 0, scope: !461, inlinedAt: !448)
!461 = distinct !DILexicalBlock(scope: !456, file: !23, line: 440, column: 41)
!462 = !DILocation(line: 441, column: 10, scope: !461, inlinedAt: !448)
!463 = !DILocation(line: 442, column: 9, scope: !461, inlinedAt: !448)
!464 = !DILocation(line: 442, column: 16, scope: !461, inlinedAt: !448)
!465 = !DILocation(line: 443, column: 25, scope: !466, inlinedAt: !448)
!466 = distinct !DILexicalBlock(scope: !467, file: !23, line: 443, column: 4)
!467 = distinct !DILexicalBlock(scope: !461, file: !23, line: 443, column: 4)
!468 = !DILocation(line: 443, column: 18, scope: !466, inlinedAt: !448)
!469 = !DILocation(line: 443, column: 4, scope: !467, inlinedAt: !448)
!470 = !DILocation(line: 0, scope: !466, inlinedAt: !448)
!471 = !DILocation(line: 444, column: 23, scope: !466, inlinedAt: !448)
!472 = !DILocation(line: 444, column: 30, scope: !466, inlinedAt: !448)
!473 = !DILocation(line: 443, column: 36, scope: !466, inlinedAt: !448)
!474 = distinct !{!474, !469, !475}
!475 = !DILocation(line: 444, column: 34, scope: !467, inlinedAt: !448)
!476 = !DILocation(line: 440, column: 37, scope: !456, inlinedAt: !448)
!477 = distinct !{!477, !459, !478}
!478 = !DILocation(line: 445, column: 3, scope: !457, inlinedAt: !448)
!479 = !DILocation(line: 438, column: 41, scope: !453, inlinedAt: !448)
!480 = !DILocation(line: 0, scope: !450, inlinedAt: !448)
!481 = distinct !{!481, !449, !482}
!482 = !DILocation(line: 446, column: 2, scope: !450, inlinedAt: !448)
!483 = !DILocation(line: 422, column: 7, scope: !484, inlinedAt: !494)
!484 = distinct !DILexicalBlock(scope: !485, file: !23, line: 421, column: 49)
!485 = distinct !DILexicalBlock(scope: !486, file: !23, line: 421, column: 2)
!486 = distinct !DILexicalBlock(scope: !487, file: !23, line: 421, column: 2)
!487 = distinct !DISubprogram(name: "clear_select", scope: !23, file: !23, line: 415, type: !396, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!488 = !{!489, !490, !491, !492, !493}
!489 = !DILocalVariable(name: "mol", arg: 1, scope: !487, file: !23, line: 415, type: !271)
!490 = !DILocalVariable(name: "a", scope: !487, file: !23, line: 417, type: !26)
!491 = !DILocalVariable(name: "r", scope: !487, file: !23, line: 417, type: !26)
!492 = !DILocalVariable(name: "sp", scope: !487, file: !23, line: 418, type: !41)
!493 = !DILocalVariable(name: "res", scope: !487, file: !23, line: 419, type: !58)
!494 = distinct !DILocation(line: 108, column: 2, scope: !381)
!495 = !DILocation(line: 422, column: 14, scope: !484, inlinedAt: !494)
!496 = !DILocation(line: 0, scope: !487, inlinedAt: !494)
!497 = !DILocation(line: 423, column: 23, scope: !498, inlinedAt: !494)
!498 = distinct !DILexicalBlock(scope: !499, file: !23, line: 423, column: 3)
!499 = distinct !DILexicalBlock(scope: !484, file: !23, line: 423, column: 3)
!500 = !DILocation(line: 423, column: 17, scope: !498, inlinedAt: !494)
!501 = !DILocation(line: 423, column: 3, scope: !499, inlinedAt: !494)
!502 = !DILocation(line: 0, scope: !503, inlinedAt: !494)
!503 = distinct !DILexicalBlock(scope: !498, file: !23, line: 423, column: 41)
!504 = !DILocation(line: 424, column: 10, scope: !503, inlinedAt: !494)
!505 = !DILocation(line: 425, column: 9, scope: !503, inlinedAt: !494)
!506 = !DILocation(line: 425, column: 16, scope: !503, inlinedAt: !494)
!507 = !DILocation(line: 426, column: 25, scope: !508, inlinedAt: !494)
!508 = distinct !DILexicalBlock(scope: !509, file: !23, line: 426, column: 4)
!509 = distinct !DILexicalBlock(scope: !503, file: !23, line: 426, column: 4)
!510 = !DILocation(line: 426, column: 18, scope: !508, inlinedAt: !494)
!511 = !DILocation(line: 426, column: 4, scope: !509, inlinedAt: !494)
!512 = !DILocation(line: 0, scope: !508, inlinedAt: !494)
!513 = !DILocation(line: 427, column: 23, scope: !508, inlinedAt: !494)
!514 = !DILocation(line: 427, column: 30, scope: !508, inlinedAt: !494)
!515 = !DILocation(line: 426, column: 36, scope: !508, inlinedAt: !494)
!516 = distinct !{!516, !511, !517}
!517 = !DILocation(line: 427, column: 34, scope: !509, inlinedAt: !494)
!518 = !DILocation(line: 423, column: 37, scope: !498, inlinedAt: !494)
!519 = distinct !{!519, !501, !520}
!520 = !DILocation(line: 428, column: 3, scope: !499, inlinedAt: !494)
!521 = !DILocation(line: 421, column: 41, scope: !485, inlinedAt: !494)
!522 = !DILocation(line: 0, scope: !486, inlinedAt: !494)
!523 = !DILocation(line: 421, column: 2, scope: !486, inlinedAt: !494)
!524 = distinct !{!524, !523, !525}
!525 = !DILocation(line: 429, column: 2, scope: !486, inlinedAt: !494)
!526 = !DILocation(line: 110, column: 26, scope: !527)
!527 = distinct !DILexicalBlock(scope: !381, file: !23, line: 110, column: 2)
!528 = !DILocation(line: 0, scope: !529, inlinedAt: !537)
!529 = distinct !DISubprogram(name: "eval_1_aexpr", scope: !23, file: !23, line: 204, type: !382, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !530)
!530 = !{!531, !532, !533, !534, !535, !536}
!531 = !DILocalVariable(name: "mol", arg: 1, scope: !529, file: !23, line: 204, type: !271)
!532 = !DILocalVariable(name: "aex", arg: 2, scope: !529, file: !23, line: 204, type: !239)
!533 = !DILocalVariable(name: "aep", scope: !529, file: !23, line: 206, type: !239)
!534 = !DILocalVariable(name: "wp", scope: !529, file: !23, line: 207, type: !239)
!535 = !DILocalVariable(name: "lo", scope: !529, file: !23, line: 208, type: !26)
!536 = !DILocalVariable(name: "hi", scope: !529, file: !23, line: 208, type: !26)
!537 = distinct !DILocation(line: 123, column: 3, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !23, line: 110, column: 52)
!539 = distinct !DILexicalBlock(scope: !527, file: !23, line: 110, column: 2)
!540 = !DILocation(line: 0, scope: !541, inlinedAt: !550)
!541 = distinct !DISubprogram(name: "match_str_range", scope: !23, file: !23, line: 529, type: !542, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !271, !26, !26}
!544 = !{!545, !546, !547, !548, !549}
!545 = !DILocalVariable(name: "mol", arg: 1, scope: !541, file: !23, line: 529, type: !271)
!546 = !DILocalVariable(name: "lo", arg: 2, scope: !541, file: !23, line: 529, type: !26)
!547 = !DILocalVariable(name: "hi", arg: 3, scope: !541, file: !23, line: 529, type: !26)
!548 = !DILocalVariable(name: "m", scope: !541, file: !23, line: 531, type: !26)
!549 = !DILocalVariable(name: "sp", scope: !541, file: !23, line: 532, type: !41)
!550 = distinct !DILocation(line: 232, column: 4, scope: !551, inlinedAt: !537)
!551 = distinct !DILexicalBlock(scope: !552, file: !23, line: 229, column: 7)
!552 = distinct !DILexicalBlock(scope: !553, file: !23, line: 227, column: 13)
!553 = distinct !DILexicalBlock(scope: !529, file: !23, line: 227, column: 6)
!554 = !DILocation(line: 110, column: 2, scope: !527)
!555 = !DILocation(line: 111, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !538, file: !23, line: 111, column: 7)
!557 = !DILocation(line: 111, column: 7, scope: !538)
!558 = !DILocation(line: 112, column: 16, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !23, line: 111, column: 14)
!560 = !DILocation(line: 113, column: 9, scope: !559)
!561 = !DILocation(line: 114, column: 3, scope: !559)
!562 = !DILocation(line: 115, column: 10, scope: !556)
!563 = !DILocation(line: 0, scope: !527)
!564 = !DILocation(line: 0, scope: !556)
!565 = !DILocation(line: 116, column: 11, scope: !566)
!566 = distinct !DILexicalBlock(scope: !538, file: !23, line: 116, column: 7)
!567 = !DILocation(line: 116, column: 7, scope: !538)
!568 = !DILocation(line: 117, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !566, file: !23, line: 116, column: 26)
!570 = !DILocation(line: 117, column: 4, scope: !569)
!571 = !DILocation(line: 119, column: 4, scope: !569)
!572 = !DILocation(line: 121, column: 24, scope: !538)
!573 = !DILocation(line: 121, column: 3, scope: !538)
!574 = !DILocation(line: 122, column: 3, scope: !538)
!575 = !DILocation(line: 122, column: 16, scope: !538)
!576 = !{!293, !293, i64 0}
!577 = !DILocation(line: 208, column: 2, scope: !529, inlinedAt: !537)
!578 = !DILocation(line: 211, column: 6, scope: !579, inlinedAt: !537)
!579 = distinct !DILexicalBlock(scope: !529, file: !23, line: 211, column: 6)
!580 = !DILocation(line: 211, column: 11, scope: !579, inlinedAt: !537)
!581 = !DILocation(line: 211, column: 6, scope: !529, inlinedAt: !537)
!582 = !DILocation(line: 212, column: 9, scope: !583, inlinedAt: !537)
!583 = distinct !DILexicalBlock(scope: !579, file: !23, line: 211, column: 19)
!584 = !DILocation(line: 214, column: 2, scope: !583, inlinedAt: !537)
!585 = !DILocation(line: 215, column: 11, scope: !586, inlinedAt: !537)
!586 = distinct !DILexicalBlock(scope: !579, file: !23, line: 214, column: 7)
!587 = !DILocation(line: 215, column: 9, scope: !586, inlinedAt: !537)
!588 = !DILocation(line: 216, column: 10, scope: !586, inlinedAt: !537)
!589 = !DILocation(line: 216, column: 26, scope: !586, inlinedAt: !537)
!590 = !DILocation(line: 216, column: 7, scope: !586, inlinedAt: !537)
!591 = !DILocation(line: 0, scope: !579, inlinedAt: !537)
!592 = !DILocation(line: 218, column: 6, scope: !593, inlinedAt: !537)
!593 = distinct !DILexicalBlock(scope: !529, file: !23, line: 218, column: 6)
!594 = !DILocation(line: 218, column: 11, scope: !593, inlinedAt: !537)
!595 = !DILocation(line: 218, column: 6, scope: !529, inlinedAt: !537)
!596 = !DILocation(line: 219, column: 9, scope: !597, inlinedAt: !537)
!597 = distinct !DILexicalBlock(scope: !593, file: !23, line: 218, column: 19)
!598 = !DILocation(line: 221, column: 2, scope: !597, inlinedAt: !537)
!599 = !DILocation(line: 222, column: 11, scope: !600, inlinedAt: !537)
!600 = distinct !DILexicalBlock(scope: !593, file: !23, line: 221, column: 7)
!601 = !DILocation(line: 222, column: 9, scope: !600, inlinedAt: !537)
!602 = !DILocation(line: 223, column: 10, scope: !600, inlinedAt: !537)
!603 = !DILocation(line: 223, column: 26, scope: !600, inlinedAt: !537)
!604 = !DILocation(line: 0, scope: !593, inlinedAt: !537)
!605 = !DILocation(line: 225, column: 10, scope: !529, inlinedAt: !537)
!606 = !DILocation(line: 225, column: 8, scope: !529, inlinedAt: !537)
!607 = !DILocation(line: 227, column: 6, scope: !553, inlinedAt: !537)
!608 = !DILocation(line: 227, column: 6, scope: !529, inlinedAt: !537)
!609 = !DILocation(line: 228, column: 8, scope: !552, inlinedAt: !537)
!610 = !DILocation(line: 229, column: 7, scope: !551, inlinedAt: !537)
!611 = !DILocation(line: 229, column: 7, scope: !552, inlinedAt: !537)
!612 = !DILocalVariable(name: "mol", arg: 1, scope: !613, file: !23, line: 493, type: !271)
!613 = distinct !DISubprogram(name: "match_str_pat", scope: !23, file: !23, line: 493, type: !614, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !271, !239}
!616 = !{!612, !617, !618}
!617 = !DILocalVariable(name: "pat", arg: 2, scope: !613, file: !23, line: 493, type: !239)
!618 = !DILocalVariable(name: "sp", scope: !613, file: !23, line: 495, type: !41)
!619 = !DILocation(line: 0, scope: !613, inlinedAt: !620)
!620 = distinct !DILocation(line: 230, column: 4, scope: !551, inlinedAt: !537)
!621 = !DILocalVariable(name: "aexpr", arg: 1, scope: !622, file: !23, line: 695, type: !239)
!622 = distinct !DISubprogram(name: "aexpr2rexpr", scope: !23, file: !23, line: 695, type: !623, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !625)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !239, !239}
!625 = !{!621, !626, !627, !628}
!626 = !DILocalVariable(name: "rexpr", arg: 2, scope: !622, file: !23, line: 695, type: !239)
!627 = !DILocalVariable(name: "aep", scope: !622, file: !23, line: 697, type: !239)
!628 = !DILocalVariable(name: "rep", scope: !622, file: !23, line: 697, type: !239)
!629 = !DILocation(line: 0, scope: !622, inlinedAt: !630)
!630 = distinct !DILocation(line: 497, column: 2, scope: !613, inlinedAt: !620)
!631 = !DILocation(line: 700, column: 9, scope: !622, inlinedAt: !630)
!632 = !DILocation(line: 701, column: 7, scope: !633, inlinedAt: !630)
!633 = distinct !DILexicalBlock(scope: !622, file: !23, line: 701, column: 2)
!634 = !DILocation(line: 0, scope: !633, inlinedAt: !630)
!635 = !DILocation(line: 701, column: 20, scope: !636, inlinedAt: !630)
!636 = distinct !DILexicalBlock(scope: !633, file: !23, line: 701, column: 2)
!637 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !630)
!638 = !DILocation(line: 703, column: 8, scope: !639, inlinedAt: !630)
!639 = distinct !DILexicalBlock(scope: !640, file: !23, line: 702, column: 20)
!640 = distinct !DILexicalBlock(scope: !641, file: !23, line: 702, column: 7)
!641 = distinct !DILexicalBlock(scope: !636, file: !23, line: 701, column: 33)
!642 = !DILocation(line: 703, column: 11, scope: !639, inlinedAt: !630)
!643 = !DILocation(line: 704, column: 8, scope: !639, inlinedAt: !630)
!644 = !DILocation(line: 704, column: 11, scope: !639, inlinedAt: !630)
!645 = !DILocation(line: 705, column: 3, scope: !639, inlinedAt: !630)
!646 = !DILocation(line: 706, column: 8, scope: !647, inlinedAt: !630)
!647 = distinct !DILexicalBlock(scope: !640, file: !23, line: 705, column: 13)
!648 = !DILocation(line: 706, column: 11, scope: !647, inlinedAt: !630)
!649 = !DILocation(line: 706, column: 4, scope: !647, inlinedAt: !630)
!650 = !DILocation(line: 708, column: 8, scope: !647, inlinedAt: !630)
!651 = !DILocation(line: 708, column: 11, scope: !647, inlinedAt: !630)
!652 = !DILocation(line: 0, scope: !640, inlinedAt: !630)
!653 = !DILocation(line: 701, column: 29, scope: !636, inlinedAt: !630)
!654 = !DILocation(line: 701, column: 2, scope: !636, inlinedAt: !630)
!655 = distinct !{!655, !637, !656}
!656 = !DILocation(line: 709, column: 2, scope: !633, inlinedAt: !630)
!657 = !DILocation(line: 710, column: 6, scope: !622, inlinedAt: !630)
!658 = !DILocation(line: 710, column: 9, scope: !622, inlinedAt: !630)
!659 = !DILocation(line: 711, column: 7, scope: !622, inlinedAt: !630)
!660 = !DILocation(line: 501, column: 2, scope: !613, inlinedAt: !620)
!661 = !DILocation(line: 0, scope: !662, inlinedAt: !620)
!662 = distinct !DILexicalBlock(scope: !613, file: !23, line: 503, column: 2)
!663 = !DILocation(line: 503, column: 2, scope: !662, inlinedAt: !620)
!664 = !DILocation(line: 507, column: 27, scope: !665, inlinedAt: !620)
!665 = distinct !DILexicalBlock(scope: !666, file: !23, line: 503, column: 49)
!666 = distinct !DILexicalBlock(scope: !662, file: !23, line: 503, column: 2)
!667 = !{!301, !292, i64 0}
!668 = !DILocation(line: 507, column: 17, scope: !665, inlinedAt: !620)
!669 = !DILocation(line: 507, column: 7, scope: !665, inlinedAt: !620)
!670 = !DILocation(line: 507, column: 14, scope: !665, inlinedAt: !620)
!671 = !DILocation(line: 503, column: 41, scope: !666, inlinedAt: !620)
!672 = distinct !{!672, !663, !673}
!673 = !DILocation(line: 509, column: 2, scope: !662, inlinedAt: !620)
!674 = !DILocation(line: 232, column: 26, scope: !551, inlinedAt: !537)
!675 = !{!302, !302, i64 0}
!676 = !DILocation(line: 232, column: 30, scope: !551, inlinedAt: !537)
!677 = !DILocation(line: 534, column: 9, scope: !678, inlinedAt: !550)
!678 = distinct !DILexicalBlock(scope: !541, file: !23, line: 534, column: 6)
!679 = !{!680, !302, i64 96}
!680 = !{!"molecule_t", !293, i64 0, !302, i64 96, !292, i64 104, !302, i64 112, !302, i64 116, !302, i64 120, !292, i64 128}
!681 = !DILocation(line: 536, column: 37, scope: !682, inlinedAt: !550)
!682 = distinct !DILexicalBlock(scope: !683, file: !23, line: 536, column: 2)
!683 = distinct !DILexicalBlock(scope: !541, file: !23, line: 536, column: 2)
!684 = !DILocation(line: 536, column: 2, scope: !683, inlinedAt: !550)
!685 = !DILocation(line: 0, scope: !683, inlinedAt: !550)
!686 = !DILocation(line: 538, column: 10, scope: !687, inlinedAt: !550)
!687 = distinct !DILexicalBlock(scope: !688, file: !23, line: 538, column: 7)
!688 = distinct !DILexicalBlock(scope: !682, file: !23, line: 537, column: 25)
!689 = !DILocation(line: 538, column: 20, scope: !687, inlinedAt: !550)
!690 = !DILocation(line: 538, column: 15, scope: !687, inlinedAt: !550)
!691 = !DILocation(line: 539, column: 8, scope: !687, inlinedAt: !550)
!692 = !DILocation(line: 539, column: 15, scope: !687, inlinedAt: !550)
!693 = !DILocation(line: 539, column: 4, scope: !687, inlinedAt: !550)
!694 = !DILocation(line: 537, column: 4, scope: !682, inlinedAt: !550)
!695 = !DILocation(line: 537, column: 17, scope: !682, inlinedAt: !550)
!696 = distinct !{!696, !684, !697}
!697 = !DILocation(line: 540, column: 2, scope: !683, inlinedAt: !550)
!698 = !DILocation(line: 233, column: 16, scope: !552, inlinedAt: !537)
!699 = !DILocation(line: 233, column: 3, scope: !552, inlinedAt: !537)
!700 = !DILocation(line: 234, column: 8, scope: !701, inlinedAt: !537)
!701 = distinct !DILexicalBlock(scope: !702, file: !23, line: 234, column: 8)
!702 = distinct !DILexicalBlock(scope: !552, file: !23, line: 233, column: 38)
!703 = !DILocation(line: 234, column: 8, scope: !702, inlinedAt: !537)
!704 = !DILocation(line: 0, scope: !613, inlinedAt: !705)
!705 = distinct !DILocation(line: 235, column: 5, scope: !701, inlinedAt: !537)
!706 = !DILocation(line: 0, scope: !622, inlinedAt: !707)
!707 = distinct !DILocation(line: 497, column: 2, scope: !613, inlinedAt: !705)
!708 = !DILocation(line: 700, column: 9, scope: !622, inlinedAt: !707)
!709 = !DILocation(line: 701, column: 7, scope: !633, inlinedAt: !707)
!710 = !DILocation(line: 0, scope: !633, inlinedAt: !707)
!711 = !DILocation(line: 701, column: 20, scope: !636, inlinedAt: !707)
!712 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !707)
!713 = !DILocation(line: 703, column: 8, scope: !639, inlinedAt: !707)
!714 = !DILocation(line: 703, column: 11, scope: !639, inlinedAt: !707)
!715 = !DILocation(line: 704, column: 8, scope: !639, inlinedAt: !707)
!716 = !DILocation(line: 704, column: 11, scope: !639, inlinedAt: !707)
!717 = !DILocation(line: 705, column: 3, scope: !639, inlinedAt: !707)
!718 = !DILocation(line: 706, column: 8, scope: !647, inlinedAt: !707)
!719 = !DILocation(line: 706, column: 11, scope: !647, inlinedAt: !707)
!720 = !DILocation(line: 706, column: 4, scope: !647, inlinedAt: !707)
!721 = !DILocation(line: 708, column: 8, scope: !647, inlinedAt: !707)
!722 = !DILocation(line: 708, column: 11, scope: !647, inlinedAt: !707)
!723 = !DILocation(line: 0, scope: !640, inlinedAt: !707)
!724 = !DILocation(line: 701, column: 29, scope: !636, inlinedAt: !707)
!725 = !DILocation(line: 701, column: 2, scope: !636, inlinedAt: !707)
!726 = distinct !{!726, !712, !727}
!727 = !DILocation(line: 709, column: 2, scope: !633, inlinedAt: !707)
!728 = !DILocation(line: 710, column: 6, scope: !622, inlinedAt: !707)
!729 = !DILocation(line: 710, column: 9, scope: !622, inlinedAt: !707)
!730 = !DILocation(line: 711, column: 7, scope: !622, inlinedAt: !707)
!731 = !DILocation(line: 501, column: 2, scope: !613, inlinedAt: !705)
!732 = !DILocation(line: 0, scope: !662, inlinedAt: !705)
!733 = !DILocation(line: 503, column: 2, scope: !662, inlinedAt: !705)
!734 = !DILocation(line: 507, column: 27, scope: !665, inlinedAt: !705)
!735 = !DILocation(line: 507, column: 17, scope: !665, inlinedAt: !705)
!736 = !DILocation(line: 507, column: 7, scope: !665, inlinedAt: !705)
!737 = !DILocation(line: 507, column: 14, scope: !665, inlinedAt: !705)
!738 = !DILocation(line: 503, column: 41, scope: !666, inlinedAt: !705)
!739 = distinct !{!739, !733, !740}
!740 = !DILocation(line: 509, column: 2, scope: !662, inlinedAt: !705)
!741 = !DILocation(line: 237, column: 27, scope: !701, inlinedAt: !537)
!742 = !DILocation(line: 237, column: 31, scope: !701, inlinedAt: !537)
!743 = !DILocation(line: 0, scope: !541, inlinedAt: !744)
!744 = distinct !DILocation(line: 237, column: 5, scope: !701, inlinedAt: !537)
!745 = !DILocation(line: 534, column: 9, scope: !678, inlinedAt: !744)
!746 = !DILocation(line: 536, column: 37, scope: !682, inlinedAt: !744)
!747 = !DILocation(line: 536, column: 2, scope: !683, inlinedAt: !744)
!748 = !DILocation(line: 0, scope: !683, inlinedAt: !744)
!749 = !DILocation(line: 538, column: 10, scope: !687, inlinedAt: !744)
!750 = !DILocation(line: 538, column: 20, scope: !687, inlinedAt: !744)
!751 = !DILocation(line: 538, column: 15, scope: !687, inlinedAt: !744)
!752 = !DILocation(line: 539, column: 8, scope: !687, inlinedAt: !744)
!753 = !DILocation(line: 539, column: 15, scope: !687, inlinedAt: !744)
!754 = !DILocation(line: 539, column: 4, scope: !687, inlinedAt: !744)
!755 = !DILocation(line: 537, column: 4, scope: !682, inlinedAt: !744)
!756 = !DILocation(line: 537, column: 17, scope: !682, inlinedAt: !744)
!757 = distinct !{!757, !747, !758}
!758 = !DILocation(line: 540, column: 2, scope: !683, inlinedAt: !744)
!759 = distinct !{!759, !699, !760}
!760 = !DILocation(line: 238, column: 3, scope: !552, inlinedAt: !537)
!761 = !DILocation(line: 0, scope: !541, inlinedAt: !762)
!762 = distinct !DILocation(line: 240, column: 3, scope: !553, inlinedAt: !537)
!763 = !DILocation(line: 536, column: 37, scope: !682, inlinedAt: !762)
!764 = !DILocation(line: 536, column: 2, scope: !683, inlinedAt: !762)
!765 = !DILocation(line: 0, scope: !683, inlinedAt: !762)
!766 = !DILocation(line: 539, column: 8, scope: !687, inlinedAt: !762)
!767 = !DILocation(line: 539, column: 15, scope: !687, inlinedAt: !762)
!768 = !DILocation(line: 537, column: 4, scope: !682, inlinedAt: !762)
!769 = !DILocation(line: 537, column: 17, scope: !682, inlinedAt: !762)
!770 = distinct !{!770, !764, !771}
!771 = !DILocation(line: 540, column: 2, scope: !683, inlinedAt: !762)
!772 = !DILocation(line: 242, column: 6, scope: !773, inlinedAt: !537)
!773 = distinct !DILexicalBlock(scope: !529, file: !23, line: 242, column: 6)
!774 = !DILocation(line: 242, column: 6, scope: !529, inlinedAt: !537)
!775 = !DILocation(line: 243, column: 8, scope: !776, inlinedAt: !537)
!776 = distinct !DILexicalBlock(scope: !773, file: !23, line: 242, column: 13)
!777 = !DILocation(line: 244, column: 7, scope: !778, inlinedAt: !537)
!778 = distinct !DILexicalBlock(scope: !776, file: !23, line: 244, column: 7)
!779 = !DILocation(line: 244, column: 7, scope: !776, inlinedAt: !537)
!780 = !DILocation(line: 245, column: 4, scope: !778, inlinedAt: !537)
!781 = !DILocation(line: 247, column: 26, scope: !778, inlinedAt: !537)
!782 = !DILocation(line: 247, column: 30, scope: !778, inlinedAt: !537)
!783 = !DILocalVariable(name: "mol", arg: 1, scope: !784, file: !23, line: 608, type: !271)
!784 = distinct !DISubprogram(name: "match_res_range", scope: !23, file: !23, line: 608, type: !542, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !785)
!785 = !{!783, !786, !787, !788, !789, !790, !791}
!786 = !DILocalVariable(name: "lo", arg: 2, scope: !784, file: !23, line: 608, type: !26)
!787 = !DILocalVariable(name: "hi", arg: 3, scope: !784, file: !23, line: 608, type: !26)
!788 = !DILocalVariable(name: "r", scope: !784, file: !23, line: 610, type: !26)
!789 = !DILocalVariable(name: "rhi", scope: !784, file: !23, line: 610, type: !26)
!790 = !DILocalVariable(name: "sp", scope: !784, file: !23, line: 611, type: !41)
!791 = !DILocalVariable(name: "res", scope: !784, file: !23, line: 612, type: !58)
!792 = !DILocation(line: 0, scope: !784, inlinedAt: !793)
!793 = distinct !DILocation(line: 247, column: 4, scope: !778, inlinedAt: !537)
!794 = !DILocation(line: 0, scope: !795, inlinedAt: !793)
!795 = distinct !DILexicalBlock(scope: !784, file: !23, line: 614, column: 2)
!796 = !DILocation(line: 614, column: 2, scope: !795, inlinedAt: !793)
!797 = !DILocation(line: 0, scope: !798, inlinedAt: !793)
!798 = distinct !DILexicalBlock(scope: !799, file: !23, line: 615, column: 31)
!799 = distinct !DILexicalBlock(scope: !800, file: !23, line: 615, column: 7)
!800 = distinct !DILexicalBlock(scope: !801, file: !23, line: 614, column: 49)
!801 = distinct !DILexicalBlock(scope: !795, file: !23, line: 614, column: 2)
!802 = !DILocation(line: 615, column: 23, scope: !799, inlinedAt: !793)
!803 = !DILocation(line: 615, column: 17, scope: !799, inlinedAt: !793)
!804 = !DILocation(line: 615, column: 7, scope: !800, inlinedAt: !793)
!805 = !DILocation(line: 616, column: 32, scope: !798, inlinedAt: !793)
!806 = !DILocation(line: 617, column: 18, scope: !807, inlinedAt: !793)
!807 = distinct !DILexicalBlock(scope: !808, file: !23, line: 617, column: 4)
!808 = distinct !DILexicalBlock(scope: !798, file: !23, line: 617, column: 4)
!809 = !DILocation(line: 617, column: 4, scope: !808, inlinedAt: !793)
!810 = !DILocation(line: 619, column: 17, scope: !811, inlinedAt: !793)
!811 = distinct !DILexicalBlock(scope: !812, file: !23, line: 619, column: 9)
!812 = distinct !DILexicalBlock(scope: !807, file: !23, line: 617, column: 42)
!813 = !DILocation(line: 619, column: 12, scope: !811, inlinedAt: !793)
!814 = !DILocation(line: 619, column: 21, scope: !811, inlinedAt: !793)
!815 = !DILocation(line: 618, column: 15, scope: !812, inlinedAt: !793)
!816 = !DILocation(line: 618, column: 11, scope: !812, inlinedAt: !793)
!817 = !DILocation(line: 620, column: 11, scope: !811, inlinedAt: !793)
!818 = !DILocation(line: 620, column: 18, scope: !811, inlinedAt: !793)
!819 = !DILocation(line: 620, column: 6, scope: !811, inlinedAt: !793)
!820 = distinct !{!820, !809, !821}
!821 = !DILocation(line: 621, column: 4, scope: !808, inlinedAt: !793)
!822 = !DILocation(line: 614, column: 41, scope: !801, inlinedAt: !793)
!823 = distinct !{!823, !796, !824}
!824 = !DILocation(line: 623, column: 2, scope: !795, inlinedAt: !793)
!825 = !DILocation(line: 0, scope: !812, inlinedAt: !793)
!826 = !DILocation(line: 617, column: 24, scope: !807, inlinedAt: !793)
!827 = !DILocation(line: 619, column: 30, scope: !811, inlinedAt: !793)
!828 = distinct !{!828, !809, !821}
!829 = distinct !{!829, !796, !824}
!830 = !DILocation(line: 248, column: 16, scope: !776, inlinedAt: !537)
!831 = !DILocation(line: 248, column: 3, scope: !776, inlinedAt: !537)
!832 = !DILocation(line: 249, column: 8, scope: !833, inlinedAt: !537)
!833 = distinct !DILexicalBlock(scope: !834, file: !23, line: 249, column: 8)
!834 = distinct !DILexicalBlock(scope: !776, file: !23, line: 248, column: 38)
!835 = !DILocation(line: 249, column: 8, scope: !834, inlinedAt: !537)
!836 = !DILocation(line: 250, column: 5, scope: !833, inlinedAt: !537)
!837 = !DILocation(line: 252, column: 27, scope: !833, inlinedAt: !537)
!838 = !DILocation(line: 252, column: 31, scope: !833, inlinedAt: !537)
!839 = !DILocation(line: 0, scope: !784, inlinedAt: !840)
!840 = distinct !DILocation(line: 252, column: 5, scope: !833, inlinedAt: !537)
!841 = !DILocation(line: 0, scope: !795, inlinedAt: !840)
!842 = !DILocation(line: 614, column: 2, scope: !795, inlinedAt: !840)
!843 = !DILocation(line: 0, scope: !798, inlinedAt: !840)
!844 = !DILocation(line: 615, column: 23, scope: !799, inlinedAt: !840)
!845 = !DILocation(line: 615, column: 17, scope: !799, inlinedAt: !840)
!846 = !DILocation(line: 615, column: 7, scope: !800, inlinedAt: !840)
!847 = !DILocation(line: 616, column: 32, scope: !798, inlinedAt: !840)
!848 = !DILocation(line: 617, column: 18, scope: !807, inlinedAt: !840)
!849 = !DILocation(line: 617, column: 4, scope: !808, inlinedAt: !840)
!850 = !DILocation(line: 619, column: 17, scope: !811, inlinedAt: !840)
!851 = !DILocation(line: 619, column: 12, scope: !811, inlinedAt: !840)
!852 = !DILocation(line: 619, column: 21, scope: !811, inlinedAt: !840)
!853 = !DILocation(line: 618, column: 15, scope: !812, inlinedAt: !840)
!854 = !DILocation(line: 618, column: 11, scope: !812, inlinedAt: !840)
!855 = !DILocation(line: 620, column: 11, scope: !811, inlinedAt: !840)
!856 = !DILocation(line: 620, column: 18, scope: !811, inlinedAt: !840)
!857 = !DILocation(line: 620, column: 6, scope: !811, inlinedAt: !840)
!858 = distinct !{!858, !849, !859}
!859 = !DILocation(line: 621, column: 4, scope: !808, inlinedAt: !840)
!860 = !DILocation(line: 614, column: 41, scope: !801, inlinedAt: !840)
!861 = distinct !{!861, !842, !862}
!862 = !DILocation(line: 623, column: 2, scope: !795, inlinedAt: !840)
!863 = !DILocation(line: 0, scope: !812, inlinedAt: !840)
!864 = !DILocation(line: 617, column: 24, scope: !807, inlinedAt: !840)
!865 = !DILocation(line: 619, column: 30, scope: !811, inlinedAt: !840)
!866 = distinct !{!866, !849, !859}
!867 = distinct !{!867, !842, !862}
!868 = distinct !{!868, !831, !869}
!869 = !DILocation(line: 253, column: 3, scope: !776, inlinedAt: !537)
!870 = !DILocation(line: 0, scope: !784, inlinedAt: !871)
!871 = distinct !DILocation(line: 255, column: 3, scope: !773, inlinedAt: !537)
!872 = !DILocation(line: 0, scope: !795, inlinedAt: !871)
!873 = !DILocation(line: 614, column: 2, scope: !795, inlinedAt: !871)
!874 = !DILocation(line: 615, column: 23, scope: !799, inlinedAt: !871)
!875 = !DILocation(line: 615, column: 17, scope: !799, inlinedAt: !871)
!876 = !DILocation(line: 615, column: 7, scope: !800, inlinedAt: !871)
!877 = !DILocation(line: 616, column: 32, scope: !798, inlinedAt: !871)
!878 = !DILocation(line: 617, column: 18, scope: !807, inlinedAt: !871)
!879 = !DILocation(line: 617, column: 4, scope: !808, inlinedAt: !871)
!880 = !DILocation(line: 619, column: 17, scope: !811, inlinedAt: !871)
!881 = !DILocation(line: 618, column: 11, scope: !812, inlinedAt: !871)
!882 = !DILocation(line: 620, column: 11, scope: !811, inlinedAt: !871)
!883 = !DILocation(line: 620, column: 18, scope: !811, inlinedAt: !871)
!884 = distinct !{!884, !879, !885}
!885 = !DILocation(line: 621, column: 4, scope: !808, inlinedAt: !871)
!886 = !DILocation(line: 614, column: 41, scope: !801, inlinedAt: !871)
!887 = distinct !{!887, !873, !888}
!888 = !DILocation(line: 623, column: 2, scope: !795, inlinedAt: !871)
!889 = !DILocation(line: 0, scope: !812, inlinedAt: !871)
!890 = !DILocation(line: 257, column: 6, scope: !891, inlinedAt: !537)
!891 = distinct !DILexicalBlock(scope: !529, file: !23, line: 257, column: 6)
!892 = !DILocation(line: 257, column: 6, scope: !529, inlinedAt: !537)
!893 = !DILocation(line: 258, column: 8, scope: !894, inlinedAt: !537)
!894 = distinct !DILexicalBlock(scope: !891, file: !23, line: 257, column: 13)
!895 = !DILocation(line: 259, column: 7, scope: !896, inlinedAt: !537)
!896 = distinct !DILexicalBlock(scope: !894, file: !23, line: 259, column: 7)
!897 = !DILocation(line: 259, column: 7, scope: !894, inlinedAt: !537)
!898 = !DILocation(line: 260, column: 4, scope: !896, inlinedAt: !537)
!899 = !DILocation(line: 262, column: 13, scope: !900, inlinedAt: !537)
!900 = distinct !DILexicalBlock(scope: !896, file: !23, line: 261, column: 7)
!901 = !DILocation(line: 262, column: 4, scope: !900, inlinedAt: !537)
!902 = !DILocation(line: 264, column: 16, scope: !894, inlinedAt: !537)
!903 = !DILocation(line: 264, column: 3, scope: !894, inlinedAt: !537)
!904 = !DILocation(line: 265, column: 8, scope: !905, inlinedAt: !537)
!905 = distinct !DILexicalBlock(scope: !906, file: !23, line: 265, column: 8)
!906 = distinct !DILexicalBlock(scope: !894, file: !23, line: 264, column: 38)
!907 = !DILocation(line: 265, column: 8, scope: !906, inlinedAt: !537)
!908 = !DILocation(line: 266, column: 5, scope: !905, inlinedAt: !537)
!909 = !DILocation(line: 268, column: 14, scope: !910, inlinedAt: !537)
!910 = distinct !DILexicalBlock(scope: !905, file: !23, line: 267, column: 8)
!911 = !DILocation(line: 268, column: 5, scope: !910, inlinedAt: !537)
!912 = distinct !{!912, !903, !913}
!913 = !DILocation(line: 270, column: 3, scope: !894, inlinedAt: !537)
!914 = !DILocation(line: 272, column: 3, scope: !891, inlinedAt: !537)
!915 = !DILocation(line: 274, column: 1, scope: !529, inlinedAt: !537)
!916 = !DILocalVariable(name: "mol", arg: 1, scope: !917, file: !23, line: 449, type: !271)
!917 = distinct !DISubprogram(name: "or_select", scope: !23, file: !23, line: 449, type: !396, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !918)
!918 = !{!916, !919, !920, !921, !922, !923}
!919 = !DILocalVariable(name: "a", scope: !917, file: !23, line: 451, type: !26)
!920 = !DILocalVariable(name: "r", scope: !917, file: !23, line: 451, type: !26)
!921 = !DILocalVariable(name: "sp", scope: !917, file: !23, line: 452, type: !41)
!922 = !DILocalVariable(name: "res", scope: !917, file: !23, line: 453, type: !58)
!923 = !DILocalVariable(name: "ap", scope: !917, file: !23, line: 454, type: !104)
!924 = !DILocation(line: 0, scope: !917, inlinedAt: !925)
!925 = distinct !DILocation(line: 124, column: 3, scope: !538)
!926 = !DILocation(line: 0, scope: !927, inlinedAt: !925)
!927 = distinct !DILexicalBlock(scope: !917, file: !23, line: 456, column: 2)
!928 = !DILocation(line: 456, column: 2, scope: !927, inlinedAt: !925)
!929 = !DILocation(line: 457, column: 23, scope: !930, inlinedAt: !925)
!930 = distinct !DILexicalBlock(scope: !931, file: !23, line: 456, column: 49)
!931 = distinct !DILexicalBlock(scope: !927, file: !23, line: 456, column: 2)
!932 = !DILocation(line: 457, column: 17, scope: !930, inlinedAt: !925)
!933 = !DILocation(line: 457, column: 14, scope: !930, inlinedAt: !925)
!934 = !DILocation(line: 458, column: 23, scope: !935, inlinedAt: !925)
!935 = distinct !DILexicalBlock(scope: !936, file: !23, line: 458, column: 3)
!936 = distinct !DILexicalBlock(scope: !930, file: !23, line: 458, column: 3)
!937 = !DILocation(line: 458, column: 17, scope: !935, inlinedAt: !925)
!938 = !DILocation(line: 458, column: 3, scope: !936, inlinedAt: !925)
!939 = !DILocation(line: 0, scope: !940, inlinedAt: !925)
!940 = distinct !DILexicalBlock(scope: !935, file: !23, line: 458, column: 41)
!941 = !DILocation(line: 459, column: 10, scope: !940, inlinedAt: !925)
!942 = !DILocation(line: 460, column: 26, scope: !940, inlinedAt: !925)
!943 = !DILocation(line: 460, column: 19, scope: !940, inlinedAt: !925)
!944 = !DILocation(line: 460, column: 16, scope: !940, inlinedAt: !925)
!945 = !DILocation(line: 462, column: 25, scope: !946, inlinedAt: !925)
!946 = distinct !DILexicalBlock(scope: !947, file: !23, line: 462, column: 4)
!947 = distinct !DILexicalBlock(scope: !940, file: !23, line: 462, column: 4)
!948 = !DILocation(line: 462, column: 18, scope: !946, inlinedAt: !925)
!949 = !DILocation(line: 462, column: 4, scope: !947, inlinedAt: !925)
!950 = !DILocation(line: 0, scope: !951, inlinedAt: !925)
!951 = distinct !DILexicalBlock(scope: !946, file: !23, line: 462, column: 40)
!952 = !DILocation(line: 464, column: 25, scope: !951, inlinedAt: !925)
!953 = !DILocation(line: 464, column: 19, scope: !951, inlinedAt: !925)
!954 = !DILocation(line: 464, column: 16, scope: !951, inlinedAt: !925)
!955 = !DILocation(line: 462, column: 36, scope: !946, inlinedAt: !925)
!956 = distinct !{!956, !949, !957}
!957 = !DILocation(line: 466, column: 4, scope: !947, inlinedAt: !925)
!958 = !DILocation(line: 458, column: 37, scope: !935, inlinedAt: !925)
!959 = distinct !{!959, !938, !960}
!960 = !DILocation(line: 467, column: 3, scope: !936, inlinedAt: !925)
!961 = !DILocation(line: 456, column: 41, scope: !931, inlinedAt: !925)
!962 = distinct !{!962, !928, !963}
!963 = !DILocation(line: 468, column: 2, scope: !927, inlinedAt: !925)
!964 = !DILocation(line: 126, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !538, file: !23, line: 126, column: 7)
!966 = !DILocation(line: 126, column: 7, scope: !538)
!967 = !DILocation(line: 127, column: 12, scope: !965)
!968 = !DILocation(line: 127, column: 4, scope: !965)
!969 = !DILocation(line: 0, scope: !538)
!970 = !DILocation(line: 0, scope: !487, inlinedAt: !971)
!971 = distinct !DILocation(line: 128, column: 3, scope: !538)
!972 = !DILocation(line: 421, column: 2, scope: !486, inlinedAt: !971)
!973 = !DILocation(line: 422, column: 7, scope: !484, inlinedAt: !971)
!974 = !DILocation(line: 422, column: 14, scope: !484, inlinedAt: !971)
!975 = !DILocation(line: 423, column: 23, scope: !498, inlinedAt: !971)
!976 = !DILocation(line: 423, column: 17, scope: !498, inlinedAt: !971)
!977 = !DILocation(line: 423, column: 3, scope: !499, inlinedAt: !971)
!978 = !DILocation(line: 0, scope: !503, inlinedAt: !971)
!979 = !DILocation(line: 424, column: 10, scope: !503, inlinedAt: !971)
!980 = !DILocation(line: 425, column: 9, scope: !503, inlinedAt: !971)
!981 = !DILocation(line: 425, column: 16, scope: !503, inlinedAt: !971)
!982 = !DILocation(line: 426, column: 25, scope: !508, inlinedAt: !971)
!983 = !DILocation(line: 426, column: 18, scope: !508, inlinedAt: !971)
!984 = !DILocation(line: 426, column: 4, scope: !509, inlinedAt: !971)
!985 = !DILocation(line: 0, scope: !508, inlinedAt: !971)
!986 = !DILocation(line: 427, column: 23, scope: !508, inlinedAt: !971)
!987 = !DILocation(line: 427, column: 30, scope: !508, inlinedAt: !971)
!988 = !DILocation(line: 426, column: 36, scope: !508, inlinedAt: !971)
!989 = distinct !{!989, !984, !990}
!990 = !DILocation(line: 427, column: 34, scope: !509, inlinedAt: !971)
!991 = !DILocation(line: 423, column: 37, scope: !498, inlinedAt: !971)
!992 = distinct !{!992, !977, !993}
!993 = !DILocation(line: 428, column: 3, scope: !499, inlinedAt: !971)
!994 = !DILocation(line: 421, column: 41, scope: !485, inlinedAt: !971)
!995 = !DILocation(line: 0, scope: !486, inlinedAt: !971)
!996 = distinct !{!996, !972, !997}
!997 = !DILocation(line: 429, column: 2, scope: !486, inlinedAt: !971)
!998 = distinct !{!998, !554, !999}
!999 = !DILocation(line: 129, column: 2, scope: !527)
!1000 = !DILocalVariable(name: "mol", arg: 1, scope: !1001, file: !23, line: 471, type: !271)
!1001 = distinct !DISubprogram(name: "set_select", scope: !23, file: !23, line: 471, type: !396, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1002 = !{!1000, !1003, !1004, !1005, !1006, !1007}
!1003 = !DILocalVariable(name: "a", scope: !1001, file: !23, line: 473, type: !26)
!1004 = !DILocalVariable(name: "r", scope: !1001, file: !23, line: 473, type: !26)
!1005 = !DILocalVariable(name: "sp", scope: !1001, file: !23, line: 474, type: !41)
!1006 = !DILocalVariable(name: "res", scope: !1001, file: !23, line: 475, type: !58)
!1007 = !DILocalVariable(name: "ap", scope: !1001, file: !23, line: 476, type: !104)
!1008 = !DILocation(line: 0, scope: !1001, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 130, column: 2, scope: !381)
!1010 = !DILocation(line: 478, column: 2, scope: !1011, inlinedAt: !1009)
!1011 = distinct !DILexicalBlock(scope: !1001, file: !23, line: 478, column: 2)
!1012 = !DILocation(line: 479, column: 23, scope: !1013, inlinedAt: !1009)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !23, line: 478, column: 49)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !23, line: 478, column: 2)
!1015 = !DILocation(line: 479, column: 17, scope: !1013, inlinedAt: !1009)
!1016 = !DILocation(line: 479, column: 14, scope: !1013, inlinedAt: !1009)
!1017 = !DILocation(line: 480, column: 23, scope: !1018, inlinedAt: !1009)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !23, line: 480, column: 3)
!1019 = distinct !DILexicalBlock(scope: !1013, file: !23, line: 480, column: 3)
!1020 = !DILocation(line: 480, column: 17, scope: !1018, inlinedAt: !1009)
!1021 = !DILocation(line: 480, column: 3, scope: !1019, inlinedAt: !1009)
!1022 = !DILocation(line: 0, scope: !1023, inlinedAt: !1009)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !23, line: 480, column: 41)
!1024 = !DILocation(line: 481, column: 10, scope: !1023, inlinedAt: !1009)
!1025 = !DILocation(line: 482, column: 26, scope: !1023, inlinedAt: !1009)
!1026 = !DILocation(line: 482, column: 19, scope: !1023, inlinedAt: !1009)
!1027 = !DILocation(line: 482, column: 16, scope: !1023, inlinedAt: !1009)
!1028 = !DILocation(line: 484, column: 25, scope: !1029, inlinedAt: !1009)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !23, line: 484, column: 4)
!1030 = distinct !DILexicalBlock(scope: !1023, file: !23, line: 484, column: 4)
!1031 = !DILocation(line: 484, column: 18, scope: !1029, inlinedAt: !1009)
!1032 = !DILocation(line: 484, column: 4, scope: !1030, inlinedAt: !1009)
!1033 = !DILocation(line: 0, scope: !1034, inlinedAt: !1009)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !23, line: 484, column: 40)
!1035 = !DILocation(line: 486, column: 25, scope: !1034, inlinedAt: !1009)
!1036 = !DILocation(line: 486, column: 19, scope: !1034, inlinedAt: !1009)
!1037 = !DILocation(line: 486, column: 16, scope: !1034, inlinedAt: !1009)
!1038 = !DILocation(line: 484, column: 36, scope: !1029, inlinedAt: !1009)
!1039 = distinct !{!1039, !1032, !1040}
!1040 = !DILocation(line: 488, column: 4, scope: !1030, inlinedAt: !1009)
!1041 = !DILocation(line: 480, column: 37, scope: !1018, inlinedAt: !1009)
!1042 = distinct !{!1042, !1021, !1043}
!1043 = !DILocation(line: 489, column: 3, scope: !1019, inlinedAt: !1009)
!1044 = !DILocation(line: 478, column: 41, scope: !1014, inlinedAt: !1009)
!1045 = !DILocation(line: 0, scope: !1011, inlinedAt: !1009)
!1046 = distinct !{!1046, !1010, !1047}
!1047 = !DILocation(line: 490, column: 2, scope: !1011, inlinedAt: !1009)
!1048 = !DILocation(line: 133, column: 1, scope: !381)
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
!1164 = !DILocation(line: 0, scope: !622, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 519, column: 2, scope: !1157, inlinedAt: !1163)
!1166 = !DILocation(line: 700, column: 9, scope: !622, inlinedAt: !1165)
!1167 = !DILocation(line: 701, column: 7, scope: !633, inlinedAt: !1165)
!1168 = !DILocation(line: 0, scope: !633, inlinedAt: !1165)
!1169 = !DILocation(line: 701, column: 20, scope: !636, inlinedAt: !1165)
!1170 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1165)
!1171 = !DILocation(line: 703, column: 8, scope: !639, inlinedAt: !1165)
!1172 = !DILocation(line: 703, column: 11, scope: !639, inlinedAt: !1165)
!1173 = !DILocation(line: 704, column: 8, scope: !639, inlinedAt: !1165)
!1174 = !DILocation(line: 704, column: 11, scope: !639, inlinedAt: !1165)
!1175 = !DILocation(line: 705, column: 3, scope: !639, inlinedAt: !1165)
!1176 = !DILocation(line: 706, column: 8, scope: !647, inlinedAt: !1165)
!1177 = !DILocation(line: 706, column: 11, scope: !647, inlinedAt: !1165)
!1178 = !DILocation(line: 706, column: 4, scope: !647, inlinedAt: !1165)
!1179 = !DILocation(line: 708, column: 8, scope: !647, inlinedAt: !1165)
!1180 = !DILocation(line: 708, column: 11, scope: !647, inlinedAt: !1165)
!1181 = !DILocation(line: 0, scope: !640, inlinedAt: !1165)
!1182 = !DILocation(line: 701, column: 29, scope: !636, inlinedAt: !1165)
!1183 = !DILocation(line: 701, column: 2, scope: !636, inlinedAt: !1165)
!1184 = distinct !{!1184, !1170, !1185}
!1185 = !DILocation(line: 709, column: 2, scope: !633, inlinedAt: !1165)
!1186 = !DILocation(line: 710, column: 6, scope: !622, inlinedAt: !1165)
!1187 = !DILocation(line: 710, column: 9, scope: !622, inlinedAt: !1165)
!1188 = !DILocation(line: 711, column: 7, scope: !622, inlinedAt: !1165)
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
!1244 = !DILocation(line: 0, scope: !622, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 519, column: 2, scope: !1157, inlinedAt: !1243)
!1246 = !DILocation(line: 700, column: 9, scope: !622, inlinedAt: !1245)
!1247 = !DILocation(line: 701, column: 7, scope: !633, inlinedAt: !1245)
!1248 = !DILocation(line: 0, scope: !633, inlinedAt: !1245)
!1249 = !DILocation(line: 701, column: 20, scope: !636, inlinedAt: !1245)
!1250 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1245)
!1251 = !DILocation(line: 703, column: 8, scope: !639, inlinedAt: !1245)
!1252 = !DILocation(line: 703, column: 11, scope: !639, inlinedAt: !1245)
!1253 = !DILocation(line: 704, column: 8, scope: !639, inlinedAt: !1245)
!1254 = !DILocation(line: 704, column: 11, scope: !639, inlinedAt: !1245)
!1255 = !DILocation(line: 705, column: 3, scope: !639, inlinedAt: !1245)
!1256 = !DILocation(line: 706, column: 8, scope: !647, inlinedAt: !1245)
!1257 = !DILocation(line: 706, column: 11, scope: !647, inlinedAt: !1245)
!1258 = !DILocation(line: 706, column: 4, scope: !647, inlinedAt: !1245)
!1259 = !DILocation(line: 708, column: 8, scope: !647, inlinedAt: !1245)
!1260 = !DILocation(line: 708, column: 11, scope: !647, inlinedAt: !1245)
!1261 = !DILocation(line: 0, scope: !640, inlinedAt: !1245)
!1262 = !DILocation(line: 701, column: 29, scope: !636, inlinedAt: !1245)
!1263 = !DILocation(line: 701, column: 2, scope: !636, inlinedAt: !1245)
!1264 = distinct !{!1264, !1250, !1265}
!1265 = !DILocation(line: 709, column: 2, scope: !633, inlinedAt: !1245)
!1266 = !DILocation(line: 710, column: 6, scope: !622, inlinedAt: !1245)
!1267 = !DILocation(line: 710, column: 9, scope: !622, inlinedAt: !1245)
!1268 = !DILocation(line: 711, column: 7, scope: !622, inlinedAt: !1245)
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
!1314 = !DILocation(line: 0, scope: !622, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 598, column: 2, scope: !1308, inlinedAt: !1313)
!1316 = !DILocation(line: 700, column: 9, scope: !622, inlinedAt: !1315)
!1317 = !DILocation(line: 701, column: 7, scope: !633, inlinedAt: !1315)
!1318 = !DILocation(line: 0, scope: !633, inlinedAt: !1315)
!1319 = !DILocation(line: 701, column: 20, scope: !636, inlinedAt: !1315)
!1320 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1315)
!1321 = !DILocation(line: 703, column: 8, scope: !639, inlinedAt: !1315)
!1322 = !DILocation(line: 703, column: 11, scope: !639, inlinedAt: !1315)
!1323 = !DILocation(line: 704, column: 8, scope: !639, inlinedAt: !1315)
!1324 = !DILocation(line: 704, column: 11, scope: !639, inlinedAt: !1315)
!1325 = !DILocation(line: 705, column: 3, scope: !639, inlinedAt: !1315)
!1326 = !DILocation(line: 706, column: 8, scope: !647, inlinedAt: !1315)
!1327 = !DILocation(line: 706, column: 11, scope: !647, inlinedAt: !1315)
!1328 = !DILocation(line: 706, column: 4, scope: !647, inlinedAt: !1315)
!1329 = !DILocation(line: 708, column: 8, scope: !647, inlinedAt: !1315)
!1330 = !DILocation(line: 708, column: 11, scope: !647, inlinedAt: !1315)
!1331 = !DILocation(line: 0, scope: !640, inlinedAt: !1315)
!1332 = !DILocation(line: 701, column: 29, scope: !636, inlinedAt: !1315)
!1333 = !DILocation(line: 701, column: 2, scope: !636, inlinedAt: !1315)
!1334 = distinct !{!1334, !1320, !1335}
!1335 = !DILocation(line: 709, column: 2, scope: !633, inlinedAt: !1315)
!1336 = !DILocation(line: 710, column: 6, scope: !622, inlinedAt: !1315)
!1337 = !DILocation(line: 710, column: 9, scope: !622, inlinedAt: !1315)
!1338 = !DILocation(line: 711, column: 7, scope: !622, inlinedAt: !1315)
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
!1394 = !DILocation(line: 0, scope: !622, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 598, column: 2, scope: !1308, inlinedAt: !1393)
!1396 = !DILocation(line: 700, column: 9, scope: !622, inlinedAt: !1395)
!1397 = !DILocation(line: 701, column: 7, scope: !633, inlinedAt: !1395)
!1398 = !DILocation(line: 0, scope: !633, inlinedAt: !1395)
!1399 = !DILocation(line: 701, column: 20, scope: !636, inlinedAt: !1395)
!1400 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1395)
!1401 = !DILocation(line: 703, column: 8, scope: !639, inlinedAt: !1395)
!1402 = !DILocation(line: 703, column: 11, scope: !639, inlinedAt: !1395)
!1403 = !DILocation(line: 704, column: 8, scope: !639, inlinedAt: !1395)
!1404 = !DILocation(line: 704, column: 11, scope: !639, inlinedAt: !1395)
!1405 = !DILocation(line: 705, column: 3, scope: !639, inlinedAt: !1395)
!1406 = !DILocation(line: 706, column: 8, scope: !647, inlinedAt: !1395)
!1407 = !DILocation(line: 706, column: 11, scope: !647, inlinedAt: !1395)
!1408 = !DILocation(line: 706, column: 4, scope: !647, inlinedAt: !1395)
!1409 = !DILocation(line: 708, column: 8, scope: !647, inlinedAt: !1395)
!1410 = !DILocation(line: 708, column: 11, scope: !647, inlinedAt: !1395)
!1411 = !DILocation(line: 0, scope: !640, inlinedAt: !1395)
!1412 = !DILocation(line: 701, column: 29, scope: !636, inlinedAt: !1395)
!1413 = !DILocation(line: 701, column: 2, scope: !636, inlinedAt: !1395)
!1414 = distinct !{!1414, !1400, !1415}
!1415 = !DILocation(line: 709, column: 2, scope: !633, inlinedAt: !1395)
!1416 = !DILocation(line: 710, column: 6, scope: !622, inlinedAt: !1395)
!1417 = !DILocation(line: 710, column: 9, scope: !622, inlinedAt: !1395)
!1418 = !DILocation(line: 711, column: 7, scope: !622, inlinedAt: !1395)
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
!1454 = !DILocation(line: 0, scope: !622, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 685, column: 2, scope: !1086, inlinedAt: !1090)
!1456 = !DILocation(line: 700, column: 9, scope: !622, inlinedAt: !1455)
!1457 = !DILocation(line: 701, column: 7, scope: !633, inlinedAt: !1455)
!1458 = !DILocation(line: 0, scope: !633, inlinedAt: !1455)
!1459 = !DILocation(line: 701, column: 20, scope: !636, inlinedAt: !1455)
!1460 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1455)
!1461 = !DILocation(line: 703, column: 8, scope: !639, inlinedAt: !1455)
!1462 = !DILocation(line: 703, column: 11, scope: !639, inlinedAt: !1455)
!1463 = !DILocation(line: 704, column: 8, scope: !639, inlinedAt: !1455)
!1464 = !DILocation(line: 704, column: 11, scope: !639, inlinedAt: !1455)
!1465 = !DILocation(line: 705, column: 3, scope: !639, inlinedAt: !1455)
!1466 = !DILocation(line: 706, column: 8, scope: !647, inlinedAt: !1455)
!1467 = !DILocation(line: 706, column: 11, scope: !647, inlinedAt: !1455)
!1468 = !DILocation(line: 706, column: 4, scope: !647, inlinedAt: !1455)
!1469 = !DILocation(line: 708, column: 8, scope: !647, inlinedAt: !1455)
!1470 = !DILocation(line: 708, column: 11, scope: !647, inlinedAt: !1455)
!1471 = !DILocation(line: 0, scope: !640, inlinedAt: !1455)
!1472 = !DILocation(line: 701, column: 29, scope: !636, inlinedAt: !1455)
!1473 = !DILocation(line: 701, column: 2, scope: !636, inlinedAt: !1455)
!1474 = distinct !{!1474, !1460, !1475}
!1475 = !DILocation(line: 709, column: 2, scope: !633, inlinedAt: !1455)
!1476 = !DILocation(line: 710, column: 6, scope: !622, inlinedAt: !1455)
!1477 = !DILocation(line: 710, column: 9, scope: !622, inlinedAt: !1455)
!1478 = !DILocation(line: 711, column: 7, scope: !622, inlinedAt: !1455)
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
!1499 = !DILocation(line: 0, scope: !622, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 685, column: 2, scope: !1086, inlinedAt: !1496)
!1501 = !DILocation(line: 700, column: 9, scope: !622, inlinedAt: !1500)
!1502 = !DILocation(line: 701, column: 7, scope: !633, inlinedAt: !1500)
!1503 = !DILocation(line: 0, scope: !633, inlinedAt: !1500)
!1504 = !DILocation(line: 701, column: 20, scope: !636, inlinedAt: !1500)
!1505 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1500)
!1506 = !DILocation(line: 703, column: 8, scope: !639, inlinedAt: !1500)
!1507 = !DILocation(line: 703, column: 11, scope: !639, inlinedAt: !1500)
!1508 = !DILocation(line: 704, column: 8, scope: !639, inlinedAt: !1500)
!1509 = !DILocation(line: 704, column: 11, scope: !639, inlinedAt: !1500)
!1510 = !DILocation(line: 705, column: 3, scope: !639, inlinedAt: !1500)
!1511 = !DILocation(line: 706, column: 8, scope: !647, inlinedAt: !1500)
!1512 = !DILocation(line: 706, column: 11, scope: !647, inlinedAt: !1500)
!1513 = !DILocation(line: 706, column: 4, scope: !647, inlinedAt: !1500)
!1514 = !DILocation(line: 708, column: 8, scope: !647, inlinedAt: !1500)
!1515 = !DILocation(line: 708, column: 11, scope: !647, inlinedAt: !1500)
!1516 = !DILocation(line: 0, scope: !640, inlinedAt: !1500)
!1517 = !DILocation(line: 701, column: 29, scope: !636, inlinedAt: !1500)
!1518 = !DILocation(line: 701, column: 2, scope: !636, inlinedAt: !1500)
!1519 = distinct !{!1519, !1505, !1520}
!1520 = !DILocation(line: 709, column: 2, scope: !633, inlinedAt: !1500)
!1521 = !DILocation(line: 710, column: 6, scope: !622, inlinedAt: !1500)
!1522 = !DILocation(line: 710, column: 9, scope: !622, inlinedAt: !1500)
!1523 = !DILocation(line: 711, column: 7, scope: !622, inlinedAt: !1500)
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
!1542 = distinct !DISubprogram(name: "set_attr_if", scope: !23, file: !23, line: 165, type: !542, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1543)
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
!1637 = !DILocation(line: 195, column: 37, scope: !1617)
!1638 = distinct !{!1638, !1620, !1639}
!1639 = !DILocation(line: 200, column: 3, scope: !1618)
!1640 = !DILocation(line: 193, column: 41, scope: !1613)
!1641 = distinct !{!1641, !1610, !1642}
!1642 = !DILocation(line: 201, column: 2, scope: !1608)
!1643 = !DILocation(line: 202, column: 1, scope: !1596)
!1644 = distinct !DISubprogram(name: "is_pattern", scope: !23, file: !23, line: 357, type: !1645, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1648)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!26, !239, !1647, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1648 = !{!1649, !1650, !1651, !1652, !1653}
!1649 = !DILocalVariable(name: "item", arg: 1, scope: !1644, file: !23, line: 357, type: !239)
!1650 = !DILocalVariable(name: "lo", arg: 2, scope: !1644, file: !23, line: 357, type: !1647)
!1651 = !DILocalVariable(name: "hi", arg: 3, scope: !1644, file: !23, line: 357, type: !1647)
!1652 = !DILocalVariable(name: "val", scope: !1644, file: !23, line: 359, type: !26)
!1653 = !DILocalVariable(name: "ip", scope: !1644, file: !23, line: 360, type: !239)
!1654 = !DILocation(line: 0, scope: !1644)
!1655 = !DILocation(line: 362, column: 7, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1644, file: !23, line: 362, column: 6)
!1657 = !{!1658, !1658, i64 0}
!1658 = !{!"short", !293, i64 0}
!1659 = !DILocation(line: 362, column: 33, scope: !1656)
!1660 = !DILocation(line: 362, column: 24, scope: !1656)
!1661 = !DILocation(line: 364, column: 6, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1644, file: !23, line: 364, column: 6)
!1663 = !DILocation(line: 364, column: 6, scope: !1644)
!1664 = !DILocation(line: 365, column: 28, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !23, line: 365, column: 3)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !23, line: 365, column: 3)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !23, line: 364, column: 24)
!1668 = !DILocation(line: 366, column: 13, scope: !1665)
!1669 = !DILocation(line: 366, column: 19, scope: !1665)
!1670 = !DILocation(line: 366, column: 25, scope: !1665)
!1671 = !DILocation(line: 365, column: 46, scope: !1665)
!1672 = !DILocation(line: 365, column: 3, scope: !1666)
!1673 = distinct !{!1673, !1672, !1674}
!1674 = !DILocation(line: 366, column: 27, scope: !1666)
!1675 = !DILocation(line: 367, column: 7, scope: !1667)
!1676 = !DILocation(line: 368, column: 8, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1667, file: !23, line: 368, column: 7)
!1678 = !DILocation(line: 368, column: 7, scope: !1667)
!1679 = !DILocation(line: 369, column: 8, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !23, line: 368, column: 13)
!1681 = !DILocation(line: 370, column: 4, scope: !1680)
!1682 = !DILocation(line: 372, column: 6, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1677, file: !23, line: 371, column: 13)
!1684 = !DILocation(line: 373, column: 8, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1667, file: !23, line: 373, column: 7)
!1686 = !DILocation(line: 372, column: 4, scope: !1683)
!1687 = !DILocation(line: 0, scope: !1667)
!1688 = !DILocation(line: 373, column: 7, scope: !1667)
!1689 = !DILocation(line: 374, column: 8, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !23, line: 373, column: 13)
!1691 = !DILocation(line: 375, column: 4, scope: !1690)
!1692 = !DILocation(line: 376, column: 14, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1685, file: !23, line: 376, column: 13)
!1694 = !DILocation(line: 376, column: 13, scope: !1685)
!1695 = !DILocation(line: 378, column: 17, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !23, line: 378, column: 3)
!1697 = distinct !DILexicalBlock(scope: !1667, file: !23, line: 378, column: 3)
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
!1710 = distinct !DILexicalBlock(scope: !1662, file: !23, line: 382, column: 7)
!1711 = !DILocation(line: 384, column: 9, scope: !1710)
!1712 = !DILocation(line: 386, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1644, file: !23, line: 386, column: 6)
!1714 = !DILocation(line: 386, column: 6, scope: !1644)
!1715 = !DILocation(line: 387, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !23, line: 386, column: 12)
!1717 = !DILocation(line: 388, column: 3, scope: !1716)
!1718 = !DILocation(line: 389, column: 12, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !23, line: 389, column: 12)
!1720 = !DILocation(line: 389, column: 12, scope: !1713)
!1721 = !DILocation(line: 390, column: 17, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !23, line: 390, column: 3)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !23, line: 390, column: 3)
!1724 = distinct !DILexicalBlock(scope: !1719, file: !23, line: 389, column: 28)
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
!1737 = distinct !DISubprogram(name: "match_res_pat", scope: !23, file: !23, line: 565, type: !614, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743}
!1739 = !DILocalVariable(name: "mol", arg: 1, scope: !1737, file: !23, line: 565, type: !271)
!1740 = !DILocalVariable(name: "pat", arg: 2, scope: !1737, file: !23, line: 565, type: !239)
!1741 = !DILocalVariable(name: "r", scope: !1737, file: !23, line: 567, type: !26)
!1742 = !DILocalVariable(name: "sp", scope: !1737, file: !23, line: 568, type: !41)
!1743 = !DILocalVariable(name: "res", scope: !1737, file: !23, line: 569, type: !58)
!1744 = !DILocation(line: 0, scope: !1737)
!1745 = !DILocation(line: 0, scope: !622, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 571, column: 2, scope: !1737)
!1747 = !DILocation(line: 700, column: 9, scope: !622, inlinedAt: !1746)
!1748 = !DILocation(line: 701, column: 7, scope: !633, inlinedAt: !1746)
!1749 = !DILocation(line: 0, scope: !633, inlinedAt: !1746)
!1750 = !DILocation(line: 701, column: 20, scope: !636, inlinedAt: !1746)
!1751 = !DILocation(line: 701, column: 2, scope: !633, inlinedAt: !1746)
!1752 = !DILocation(line: 703, column: 8, scope: !639, inlinedAt: !1746)
!1753 = !DILocation(line: 703, column: 11, scope: !639, inlinedAt: !1746)
!1754 = !DILocation(line: 704, column: 8, scope: !639, inlinedAt: !1746)
!1755 = !DILocation(line: 704, column: 11, scope: !639, inlinedAt: !1746)
!1756 = !DILocation(line: 705, column: 3, scope: !639, inlinedAt: !1746)
!1757 = !DILocation(line: 706, column: 8, scope: !647, inlinedAt: !1746)
!1758 = !DILocation(line: 706, column: 11, scope: !647, inlinedAt: !1746)
!1759 = !DILocation(line: 706, column: 4, scope: !647, inlinedAt: !1746)
!1760 = !DILocation(line: 708, column: 8, scope: !647, inlinedAt: !1746)
!1761 = !DILocation(line: 708, column: 11, scope: !647, inlinedAt: !1746)
!1762 = !DILocation(line: 0, scope: !640, inlinedAt: !1746)
!1763 = !DILocation(line: 701, column: 29, scope: !636, inlinedAt: !1746)
!1764 = !DILocation(line: 701, column: 2, scope: !636, inlinedAt: !1746)
!1765 = distinct !{!1765, !1751, !1766}
!1766 = !DILocation(line: 709, column: 2, scope: !633, inlinedAt: !1746)
!1767 = !DILocation(line: 710, column: 6, scope: !622, inlinedAt: !1746)
!1768 = !DILocation(line: 710, column: 9, scope: !622, inlinedAt: !1746)
!1769 = !DILocation(line: 711, column: 7, scope: !622, inlinedAt: !1746)
!1770 = !DILocation(line: 575, column: 2, scope: !1737)
!1771 = !DILocation(line: 577, column: 17, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1737, file: !23, line: 577, column: 2)
!1773 = !DILocation(line: 0, scope: !1772)
!1774 = !DILocation(line: 577, column: 2, scope: !1772)
!1775 = !DILocation(line: 578, column: 23, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !23, line: 578, column: 7)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !23, line: 577, column: 49)
!1778 = distinct !DILexicalBlock(scope: !1772, file: !23, line: 577, column: 2)
!1779 = !DILocation(line: 578, column: 17, scope: !1776)
!1780 = !DILocation(line: 578, column: 7, scope: !1777)
!1781 = !DILocation(line: 579, column: 24, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !23, line: 579, column: 4)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !23, line: 579, column: 4)
!1784 = distinct !DILexicalBlock(scope: !1776, file: !23, line: 578, column: 31)
!1785 = !DILocation(line: 579, column: 18, scope: !1782)
!1786 = !DILocation(line: 579, column: 4, scope: !1783)
!1787 = !DILocation(line: 0, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1782, file: !23, line: 579, column: 42)
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
!1802 = distinct !DISubprogram(name: "match_atom_pat", scope: !23, file: !23, line: 646, type: !614, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809, !1810}
!1804 = !DILocalVariable(name: "mol", arg: 1, scope: !1802, file: !23, line: 646, type: !271)
!1805 = !DILocalVariable(name: "pat", arg: 2, scope: !1802, file: !23, line: 646, type: !239)
!1806 = !DILocalVariable(name: "r", scope: !1802, file: !23, line: 648, type: !26)
!1807 = !DILocalVariable(name: "a", scope: !1802, file: !23, line: 648, type: !26)
!1808 = !DILocalVariable(name: "sp", scope: !1802, file: !23, line: 649, type: !41)
!1809 = !DILocalVariable(name: "res", scope: !1802, file: !23, line: 650, type: !58)
!1810 = !DILocalVariable(name: "ap", scope: !1802, file: !23, line: 651, type: !104)
!1811 = !DILocation(line: 0, scope: !1802)
!1812 = !DILocation(line: 653, column: 2, scope: !1802)
!1813 = !DILocation(line: 657, column: 2, scope: !1802)
!1814 = !DILocation(line: 659, column: 17, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1802, file: !23, line: 659, column: 2)
!1816 = !DILocation(line: 0, scope: !1815)
!1817 = !DILocation(line: 659, column: 2, scope: !1815)
!1818 = !DILocation(line: 660, column: 23, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !23, line: 660, column: 7)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !23, line: 659, column: 49)
!1821 = distinct !DILexicalBlock(scope: !1815, file: !23, line: 659, column: 2)
!1822 = !DILocation(line: 660, column: 17, scope: !1819)
!1823 = !DILocation(line: 660, column: 7, scope: !1820)
!1824 = !DILocation(line: 661, column: 24, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !23, line: 661, column: 4)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !23, line: 661, column: 4)
!1827 = distinct !DILexicalBlock(scope: !1819, file: !23, line: 660, column: 31)
!1828 = !DILocation(line: 661, column: 18, scope: !1825)
!1829 = !DILocation(line: 661, column: 4, scope: !1826)
!1830 = !DILocation(line: 0, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !23, line: 661, column: 42)
!1832 = !DILocation(line: 662, column: 15, scope: !1831)
!1833 = !DILocation(line: 662, column: 11, scope: !1831)
!1834 = !DILocation(line: 663, column: 26, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !23, line: 663, column: 9)
!1836 = !DILocation(line: 663, column: 19, scope: !1835)
!1837 = !DILocation(line: 663, column: 9, scope: !1831)
!1838 = !DILocation(line: 664, column: 27, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !23, line: 664, column: 6)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !23, line: 664, column: 6)
!1841 = distinct !DILexicalBlock(scope: !1835, file: !23, line: 663, column: 34)
!1842 = !DILocation(line: 664, column: 20, scope: !1839)
!1843 = !DILocation(line: 664, column: 6, scope: !1840)
!1844 = !DILocation(line: 0, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1839, file: !23, line: 664, column: 42)
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
!1861 = !DILocation(line: 0, scope: !622)
!1862 = !DILocation(line: 700, column: 9, scope: !622)
!1863 = !DILocation(line: 701, column: 7, scope: !633)
!1864 = !DILocation(line: 0, scope: !633)
!1865 = !DILocation(line: 701, column: 20, scope: !636)
!1866 = !DILocation(line: 701, column: 2, scope: !633)
!1867 = !DILocation(line: 703, column: 8, scope: !639)
!1868 = !DILocation(line: 703, column: 11, scope: !639)
!1869 = !DILocation(line: 704, column: 8, scope: !639)
!1870 = !DILocation(line: 704, column: 11, scope: !639)
!1871 = !DILocation(line: 705, column: 3, scope: !639)
!1872 = !DILocation(line: 706, column: 8, scope: !647)
!1873 = !DILocation(line: 706, column: 11, scope: !647)
!1874 = !DILocation(line: 706, column: 4, scope: !647)
!1875 = !DILocation(line: 708, column: 8, scope: !647)
!1876 = !DILocation(line: 708, column: 11, scope: !647)
!1877 = !DILocation(line: 0, scope: !640)
!1878 = !DILocation(line: 701, column: 29, scope: !636)
!1879 = !DILocation(line: 701, column: 2, scope: !636)
!1880 = distinct !{!1880, !1866, !1881}
!1881 = !DILocation(line: 709, column: 2, scope: !633)
!1882 = !DILocation(line: 710, column: 6, scope: !622)
!1883 = !DILocation(line: 710, column: 9, scope: !622)
!1884 = !DILocation(line: 711, column: 7, scope: !622)
!1885 = !DILocation(line: 712, column: 1, scope: !622)
