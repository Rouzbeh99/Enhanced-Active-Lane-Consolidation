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
@spart = internal global i8* null, align 8, !dbg !26
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@rpart = internal global i8* null, align 8, !dbg !30
@apart = internal global i8* null, align 8, !dbg !32
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"atom range not allowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rexpr = internal global [1000 x i8] zeroinitializer, align 16, !dbg !34
@expbuf = internal global [1000 x i8] zeroinitializer, align 16, !dbg !39

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* %2) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.molecule_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.strand_t*, align 8
  %12 = alloca %struct.residue_t*, align 8
  %13 = alloca %struct.atom_t*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %5, metadata !262, metadata !DIExpression()), !dbg !263
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !264, metadata !DIExpression()), !dbg !265
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i32* %8, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata i32* %9, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %10, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata %struct.strand_t** %11, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata %struct.residue_t** %12, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata %struct.atom_t** %13, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata double* %14, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata double* %15, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata double* %16, metadata !284, metadata !DIExpression()), !dbg !285
  %17 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !286
  %18 = load i8*, i8** %6, align 8, !dbg !287
  %19 = call i32 @select_atoms(%struct.molecule_t* %17, i8* %18), !dbg !288
  store double 0.000000e+00, double* %16, align 8, !dbg !289
  store double 0.000000e+00, double* %15, align 8, !dbg !290
  store double 0.000000e+00, double* %14, align 8, !dbg !291
  store i32 0, i32* %10, align 4, !dbg !292
  %20 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !294
  %21 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %20, i32 0, i32 2, !dbg !295
  %22 = load %struct.strand_t*, %struct.strand_t** %21, align 8, !dbg !295
  store %struct.strand_t* %22, %struct.strand_t** %11, align 8, !dbg !296
  br label %23, !dbg !297

23:                                               ; preds = %103, %3
  %24 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !298
  %25 = icmp ne %struct.strand_t* %24, null, !dbg !300
  br i1 %25, label %26, label %107, !dbg !300

26:                                               ; preds = %23
  %27 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !301
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %27, i32 0, i32 2, !dbg !304
  %29 = load i32, i32* %28, align 4, !dbg !304
  %30 = and i32 1, %29, !dbg !305
  %31 = icmp ne i32 %30, 0, !dbg !305
  br i1 %31, label %32, label %102, !dbg !306

32:                                               ; preds = %26
  store i32 0, i32* %8, align 4, !dbg !307
  br label %33, !dbg !310

33:                                               ; preds = %98, %32
  %34 = load i32, i32* %8, align 4, !dbg !311
  %35 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !313
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %35, i32 0, i32 5, !dbg !314
  %37 = load i32, i32* %36, align 8, !dbg !314
  %38 = icmp slt i32 %34, %37, !dbg !315
  br i1 %38, label %39, label %101, !dbg !316

39:                                               ; preds = %33
  %40 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !317
  %41 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i32 0, i32 7, !dbg !319
  %42 = load %struct.residue_t**, %struct.residue_t*** %41, align 8, !dbg !319
  %43 = load i32, i32* %8, align 4, !dbg !320
  %44 = sext i32 %43 to i64, !dbg !317
  %45 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %42, i64 %44, !dbg !317
  %46 = load %struct.residue_t*, %struct.residue_t** %45, align 8, !dbg !317
  store %struct.residue_t* %46, %struct.residue_t** %12, align 8, !dbg !321
  %47 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !322
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i32 0, i32 6, !dbg !324
  %49 = load i32, i32* %48, align 8, !dbg !324
  %50 = and i32 1, %49, !dbg !325
  %51 = icmp ne i32 %50, 0, !dbg !325
  br i1 %51, label %52, label %97, !dbg !326

52:                                               ; preds = %39
  store i32 0, i32* %9, align 4, !dbg !327
  br label %53, !dbg !330

53:                                               ; preds = %93, %52
  %54 = load i32, i32* %9, align 4, !dbg !331
  %55 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !333
  %56 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %55, i32 0, i32 15, !dbg !334
  %57 = load i32, i32* %56, align 8, !dbg !334
  %58 = icmp slt i32 %54, %57, !dbg !335
  br i1 %58, label %59, label %96, !dbg !336

59:                                               ; preds = %53
  %60 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !337
  %61 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %60, i32 0, i32 17, !dbg !339
  %62 = load %struct.atom_t*, %struct.atom_t** %61, align 8, !dbg !339
  %63 = load i32, i32* %9, align 4, !dbg !340
  %64 = sext i32 %63 to i64, !dbg !337
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 %64, !dbg !337
  store %struct.atom_t* %65, %struct.atom_t** %13, align 8, !dbg !341
  %66 = load %struct.atom_t*, %struct.atom_t** %13, align 8, !dbg !342
  %67 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %66, i32 0, i32 2, !dbg !344
  %68 = load i32, i32* %67, align 8, !dbg !344
  %69 = and i32 1, %68, !dbg !345
  %70 = icmp ne i32 %69, 0, !dbg !345
  br i1 %70, label %71, label %92, !dbg !346

71:                                               ; preds = %59
  %72 = load %struct.atom_t*, %struct.atom_t** %13, align 8, !dbg !347
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %72, i32 0, i32 17, !dbg !349
  %74 = getelementptr inbounds [3 x double], [3 x double]* %73, i64 0, i64 0, !dbg !347
  %75 = load double, double* %74, align 8, !dbg !347
  %76 = load double, double* %14, align 8, !dbg !350
  %77 = fadd double %76, %75, !dbg !350
  store double %77, double* %14, align 8, !dbg !350
  %78 = load %struct.atom_t*, %struct.atom_t** %13, align 8, !dbg !351
  %79 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 17, !dbg !352
  %80 = getelementptr inbounds [3 x double], [3 x double]* %79, i64 0, i64 1, !dbg !351
  %81 = load double, double* %80, align 8, !dbg !351
  %82 = load double, double* %15, align 8, !dbg !353
  %83 = fadd double %82, %81, !dbg !353
  store double %83, double* %15, align 8, !dbg !353
  %84 = load %struct.atom_t*, %struct.atom_t** %13, align 8, !dbg !354
  %85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %84, i32 0, i32 17, !dbg !355
  %86 = getelementptr inbounds [3 x double], [3 x double]* %85, i64 0, i64 2, !dbg !354
  %87 = load double, double* %86, align 8, !dbg !354
  %88 = load double, double* %16, align 8, !dbg !356
  %89 = fadd double %88, %87, !dbg !356
  store double %89, double* %16, align 8, !dbg !356
  %90 = load i32, i32* %10, align 4, !dbg !357
  %91 = add nsw i32 %90, 1, !dbg !357
  store i32 %91, i32* %10, align 4, !dbg !357
  br label %92, !dbg !358

92:                                               ; preds = %71, %59
  br label %93, !dbg !359

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4, !dbg !360
  %95 = add nsw i32 %94, 1, !dbg !360
  store i32 %95, i32* %9, align 4, !dbg !360
  br label %53, !dbg !361, !llvm.loop !362

96:                                               ; preds = %53
  br label %97, !dbg !364

97:                                               ; preds = %96, %39
  br label %98, !dbg !365

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4, !dbg !366
  %100 = add nsw i32 %99, 1, !dbg !366
  store i32 %100, i32* %8, align 4, !dbg !366
  br label %33, !dbg !367, !llvm.loop !368

101:                                              ; preds = %33
  br label %102, !dbg !370

102:                                              ; preds = %101, %26
  br label %103, !dbg !371

103:                                              ; preds = %102
  %104 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !372
  %105 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %104, i32 0, i32 4, !dbg !373
  %106 = load %struct.strand_t*, %struct.strand_t** %105, align 8, !dbg !373
  store %struct.strand_t* %106, %struct.strand_t** %11, align 8, !dbg !374
  br label %23, !dbg !375, !llvm.loop !376

107:                                              ; preds = %23
  %108 = load i32, i32* %10, align 4, !dbg !378
  %109 = icmp eq i32 %108, 0, !dbg !380
  br i1 %109, label %110, label %114, !dbg !381

110:                                              ; preds = %107
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !382
  %112 = load i8*, i8** %6, align 8, !dbg !384
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %112), !dbg !385
  store i32 1, i32* %4, align 4, !dbg !386
  br label %134, !dbg !386

114:                                              ; preds = %107
  %115 = load double, double* %14, align 8, !dbg !387
  %116 = load i32, i32* %10, align 4, !dbg !389
  %117 = sitofp i32 %116 to double, !dbg !389
  %118 = fdiv double %115, %117, !dbg !390
  %119 = load double*, double** %7, align 8, !dbg !391
  %120 = getelementptr inbounds double, double* %119, i64 0, !dbg !391
  store double %118, double* %120, align 8, !dbg !392
  %121 = load double, double* %15, align 8, !dbg !393
  %122 = load i32, i32* %10, align 4, !dbg !394
  %123 = sitofp i32 %122 to double, !dbg !394
  %124 = fdiv double %121, %123, !dbg !395
  %125 = load double*, double** %7, align 8, !dbg !396
  %126 = getelementptr inbounds double, double* %125, i64 1, !dbg !396
  store double %124, double* %126, align 8, !dbg !397
  %127 = load double, double* %16, align 8, !dbg !398
  %128 = load i32, i32* %10, align 4, !dbg !399
  %129 = sitofp i32 %128 to double, !dbg !399
  %130 = fdiv double %127, %129, !dbg !400
  %131 = load double*, double** %7, align 8, !dbg !401
  %132 = getelementptr inbounds double, double* %131, i64 2, !dbg !401
  store double %130, double* %132, align 8, !dbg !402
  br label %133

133:                                              ; preds = %114
  store i32 0, i32* %4, align 4, !dbg !403
  br label %134, !dbg !403

134:                                              ; preds = %133, %110
  %135 = load i32, i32* %4, align 4, !dbg !404
  ret i32 %135, !dbg !404
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #0 !dbg !405 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.molecule_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.molecule_t* %0, %struct.molecule_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %4, metadata !408, metadata !DIExpression()), !dbg !409
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata i8** %6, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata i8** %7, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %8, metadata !416, metadata !DIExpression()), !dbg !417
  %9 = load i8*, i8** %5, align 8, !dbg !418
  %10 = icmp eq i8* %9, null, !dbg !420
  br i1 %10, label %11, label %13, !dbg !421

11:                                               ; preds = %2
  %12 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !422
  call void @select_all(%struct.molecule_t* %12), !dbg !424
  store i32 0, i32* %3, align 4, !dbg !425
  br label %65, !dbg !425

13:                                               ; preds = %2
  %14 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !426
  call void @clear_work(%struct.molecule_t* %14), !dbg !427
  %15 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !428
  call void @clear_select(%struct.molecule_t* %15), !dbg !429
  %16 = load i8*, i8** %5, align 8, !dbg !430
  store i8* %16, i8** %6, align 8, !dbg !432
  %17 = load i8*, i8** %6, align 8, !dbg !433
  %18 = call i8* @strchr(i8* %17, i32 124) #6, !dbg !434
  store i8* %18, i8** %7, align 8, !dbg !435
  br label %19, !dbg !436

19:                                               ; preds = %61, %13
  %20 = load i8*, i8** %6, align 8, !dbg !437
  %21 = icmp ne i8* %20, null, !dbg !439
  br i1 %21, label %22, label %63, !dbg !439

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8, !dbg !440
  %24 = icmp ne i8* %23, null, !dbg !440
  br i1 %24, label %25, label %34, !dbg !443

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8, !dbg !444
  %27 = load i8*, i8** %6, align 8, !dbg !446
  %28 = ptrtoint i8* %26 to i64, !dbg !447
  %29 = ptrtoint i8* %27 to i64, !dbg !447
  %30 = sub i64 %28, %29, !dbg !447
  %31 = trunc i64 %30 to i32, !dbg !444
  store i32 %31, i32* %8, align 4, !dbg !448
  %32 = load i8*, i8** %7, align 8, !dbg !449
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !449
  store i8* %33, i8** %7, align 8, !dbg !449
  br label %38, !dbg !450

34:                                               ; preds = %22
  %35 = load i8*, i8** %6, align 8, !dbg !451
  %36 = call i64 @strlen(i8* %35) #6, !dbg !452
  %37 = trunc i64 %36 to i32, !dbg !452
  store i32 %37, i32* %8, align 4, !dbg !453
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %8, align 4, !dbg !454
  %40 = icmp sge i32 %39, 1000, !dbg !456
  br i1 %40, label %41, label %44, !dbg !457

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !458
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)), !dbg !460
  store i32 1, i32* %3, align 4, !dbg !461
  br label %65, !dbg !461

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8, !dbg !462
  %46 = load i32, i32* %8, align 4, !dbg !463
  %47 = sext i32 %46 to i64, !dbg !463
  %48 = call i8* @strncpy(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* %45, i64 %47) #7, !dbg !464
  %49 = load i32, i32* %8, align 4, !dbg !465
  %50 = sext i32 %49 to i64, !dbg !466
  %51 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %50, !dbg !466
  store i8 0, i8* %51, align 1, !dbg !467
  %52 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !468
  %53 = call i32 @eval_1_aexpr(%struct.molecule_t* %52, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0)), !dbg !469
  %54 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !470
  call void @or_select(%struct.molecule_t* %54), !dbg !471
  %55 = load i8*, i8** %7, align 8, !dbg !472
  store i8* %55, i8** %6, align 8, !dbg !473
  %56 = load i8*, i8** %6, align 8, !dbg !474
  %57 = icmp ne i8* %56, null, !dbg !474
  br i1 %57, label %58, label %61, !dbg !476

58:                                               ; preds = %44
  %59 = load i8*, i8** %6, align 8, !dbg !477
  %60 = call i8* @strchr(i8* %59, i32 124) #6, !dbg !478
  store i8* %60, i8** %7, align 8, !dbg !479
  br label %61, !dbg !480

61:                                               ; preds = %58, %44
  %62 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !481
  call void @clear_select(%struct.molecule_t* %62), !dbg !482
  br label %19, !dbg !483, !llvm.loop !484

63:                                               ; preds = %19
  %64 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !486
  call void @set_select(%struct.molecule_t* %64), !dbg !487
  store i32 0, i32* %3, align 4, !dbg !488
  br label %65, !dbg !488

65:                                               ; preds = %63, %41, %11
  %66 = load i32, i32* %3, align 4, !dbg !489
  ret i32 %66, !dbg !489
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_all(%struct.molecule_t* %0) #0 !dbg !490 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strand_t*, align 8
  %6 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %2, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata i32* %3, metadata !495, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.declare(metadata i32* %4, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata %struct.strand_t** %5, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata %struct.residue_t** %6, metadata !501, metadata !DIExpression()), !dbg !502
  %7 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8, !dbg !503
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %7, i32 0, i32 2, !dbg !505
  %9 = load %struct.strand_t*, %struct.strand_t** %8, align 8, !dbg !505
  store %struct.strand_t* %9, %struct.strand_t** %5, align 8, !dbg !506
  br label %10, !dbg !507

10:                                               ; preds = %60, %1
  %11 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !508
  %12 = icmp ne %struct.strand_t* %11, null, !dbg !510
  br i1 %12, label %13, label %64, !dbg !510

13:                                               ; preds = %10
  %14 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !511
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i32 0, i32 2, !dbg !513
  %16 = load i32, i32* %15, align 4, !dbg !514
  %17 = or i32 %16, 1, !dbg !514
  store i32 %17, i32* %15, align 4, !dbg !514
  store i32 0, i32* %4, align 4, !dbg !515
  br label %18, !dbg !517

18:                                               ; preds = %56, %13
  %19 = load i32, i32* %4, align 4, !dbg !518
  %20 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !520
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %20, i32 0, i32 5, !dbg !521
  %22 = load i32, i32* %21, align 8, !dbg !521
  %23 = icmp slt i32 %19, %22, !dbg !522
  br i1 %23, label %24, label %59, !dbg !523

24:                                               ; preds = %18
  %25 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !524
  %26 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %25, i32 0, i32 7, !dbg !526
  %27 = load %struct.residue_t**, %struct.residue_t*** %26, align 8, !dbg !526
  %28 = load i32, i32* %4, align 4, !dbg !527
  %29 = sext i32 %28 to i64, !dbg !524
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %27, i64 %29, !dbg !524
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8, !dbg !524
  store %struct.residue_t* %31, %struct.residue_t** %6, align 8, !dbg !528
  %32 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !529
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 6, !dbg !530
  %34 = load i32, i32* %33, align 8, !dbg !531
  %35 = or i32 %34, 1, !dbg !531
  store i32 %35, i32* %33, align 8, !dbg !531
  store i32 0, i32* %3, align 4, !dbg !532
  br label %36, !dbg !534

36:                                               ; preds = %52, %24
  %37 = load i32, i32* %3, align 4, !dbg !535
  %38 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !537
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %38, i32 0, i32 15, !dbg !538
  %40 = load i32, i32* %39, align 8, !dbg !538
  %41 = icmp slt i32 %37, %40, !dbg !539
  br i1 %41, label %42, label %55, !dbg !540

42:                                               ; preds = %36
  %43 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !541
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %43, i32 0, i32 17, !dbg !542
  %45 = load %struct.atom_t*, %struct.atom_t** %44, align 8, !dbg !542
  %46 = load i32, i32* %3, align 4, !dbg !543
  %47 = sext i32 %46 to i64, !dbg !541
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i64 %47, !dbg !541
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 2, !dbg !544
  %50 = load i32, i32* %49, align 8, !dbg !545
  %51 = or i32 %50, 1, !dbg !545
  store i32 %51, i32* %49, align 8, !dbg !545
  br label %52, !dbg !541

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4, !dbg !546
  %54 = add nsw i32 %53, 1, !dbg !546
  store i32 %54, i32* %3, align 4, !dbg !546
  br label %36, !dbg !547, !llvm.loop !548

55:                                               ; preds = %36
  br label %56, !dbg !550

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4, !dbg !551
  %58 = add nsw i32 %57, 1, !dbg !551
  store i32 %58, i32* %4, align 4, !dbg !551
  br label %18, !dbg !552, !llvm.loop !553

59:                                               ; preds = %18
  br label %60, !dbg !555

60:                                               ; preds = %59
  %61 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !556
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %61, i32 0, i32 4, !dbg !557
  %63 = load %struct.strand_t*, %struct.strand_t** %62, align 8, !dbg !557
  store %struct.strand_t* %63, %struct.strand_t** %5, align 8, !dbg !558
  br label %10, !dbg !559, !llvm.loop !560

64:                                               ; preds = %10
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_work(%struct.molecule_t* %0) #0 !dbg !563 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strand_t*, align 8
  %6 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %2, metadata !564, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.declare(metadata i32* %3, metadata !566, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata i32* %4, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata %struct.strand_t** %5, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata %struct.residue_t** %6, metadata !572, metadata !DIExpression()), !dbg !573
  %7 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8, !dbg !574
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %7, i32 0, i32 2, !dbg !576
  %9 = load %struct.strand_t*, %struct.strand_t** %8, align 8, !dbg !576
  store %struct.strand_t* %9, %struct.strand_t** %5, align 8, !dbg !577
  br label %10, !dbg !578

10:                                               ; preds = %60, %1
  %11 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !579
  %12 = icmp ne %struct.strand_t* %11, null, !dbg !581
  br i1 %12, label %13, label %64, !dbg !581

13:                                               ; preds = %10
  %14 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !582
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i32 0, i32 2, !dbg !584
  %16 = load i32, i32* %15, align 4, !dbg !585
  %17 = and i32 %16, -129, !dbg !585
  store i32 %17, i32* %15, align 4, !dbg !585
  store i32 0, i32* %4, align 4, !dbg !586
  br label %18, !dbg !588

18:                                               ; preds = %56, %13
  %19 = load i32, i32* %4, align 4, !dbg !589
  %20 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !591
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %20, i32 0, i32 5, !dbg !592
  %22 = load i32, i32* %21, align 8, !dbg !592
  %23 = icmp slt i32 %19, %22, !dbg !593
  br i1 %23, label %24, label %59, !dbg !594

24:                                               ; preds = %18
  %25 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !595
  %26 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %25, i32 0, i32 7, !dbg !597
  %27 = load %struct.residue_t**, %struct.residue_t*** %26, align 8, !dbg !597
  %28 = load i32, i32* %4, align 4, !dbg !598
  %29 = sext i32 %28 to i64, !dbg !595
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %27, i64 %29, !dbg !595
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8, !dbg !595
  store %struct.residue_t* %31, %struct.residue_t** %6, align 8, !dbg !599
  %32 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !600
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 6, !dbg !601
  %34 = load i32, i32* %33, align 8, !dbg !602
  %35 = and i32 %34, -129, !dbg !602
  store i32 %35, i32* %33, align 8, !dbg !602
  store i32 0, i32* %3, align 4, !dbg !603
  br label %36, !dbg !605

36:                                               ; preds = %52, %24
  %37 = load i32, i32* %3, align 4, !dbg !606
  %38 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !608
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %38, i32 0, i32 15, !dbg !609
  %40 = load i32, i32* %39, align 8, !dbg !609
  %41 = icmp slt i32 %37, %40, !dbg !610
  br i1 %41, label %42, label %55, !dbg !611

42:                                               ; preds = %36
  %43 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !612
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %43, i32 0, i32 17, !dbg !613
  %45 = load %struct.atom_t*, %struct.atom_t** %44, align 8, !dbg !613
  %46 = load i32, i32* %3, align 4, !dbg !614
  %47 = sext i32 %46 to i64, !dbg !612
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i64 %47, !dbg !612
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 2, !dbg !615
  %50 = load i32, i32* %49, align 8, !dbg !616
  %51 = and i32 %50, -129, !dbg !616
  store i32 %51, i32* %49, align 8, !dbg !616
  br label %52, !dbg !612

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4, !dbg !617
  %54 = add nsw i32 %53, 1, !dbg !617
  store i32 %54, i32* %3, align 4, !dbg !617
  br label %36, !dbg !618, !llvm.loop !619

55:                                               ; preds = %36
  br label %56, !dbg !621

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4, !dbg !622
  %58 = add nsw i32 %57, 1, !dbg !622
  store i32 %58, i32* %4, align 4, !dbg !622
  br label %18, !dbg !623, !llvm.loop !624

59:                                               ; preds = %18
  br label %60, !dbg !626

60:                                               ; preds = %59
  %61 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !627
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %61, i32 0, i32 4, !dbg !628
  %63 = load %struct.strand_t*, %struct.strand_t** %62, align 8, !dbg !628
  store %struct.strand_t* %63, %struct.strand_t** %5, align 8, !dbg !629
  br label %10, !dbg !630, !llvm.loop !631

64:                                               ; preds = %10
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_select(%struct.molecule_t* %0) #0 !dbg !634 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strand_t*, align 8
  %6 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %2, metadata !635, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.declare(metadata i32* %3, metadata !637, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.declare(metadata i32* %4, metadata !639, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.declare(metadata %struct.strand_t** %5, metadata !641, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.declare(metadata %struct.residue_t** %6, metadata !643, metadata !DIExpression()), !dbg !644
  %7 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8, !dbg !645
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %7, i32 0, i32 2, !dbg !647
  %9 = load %struct.strand_t*, %struct.strand_t** %8, align 8, !dbg !647
  store %struct.strand_t* %9, %struct.strand_t** %5, align 8, !dbg !648
  br label %10, !dbg !649

10:                                               ; preds = %60, %1
  %11 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !650
  %12 = icmp ne %struct.strand_t* %11, null, !dbg !652
  br i1 %12, label %13, label %64, !dbg !652

13:                                               ; preds = %10
  %14 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !653
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i32 0, i32 2, !dbg !655
  %16 = load i32, i32* %15, align 4, !dbg !656
  %17 = and i32 %16, -2, !dbg !656
  store i32 %17, i32* %15, align 4, !dbg !656
  store i32 0, i32* %4, align 4, !dbg !657
  br label %18, !dbg !659

18:                                               ; preds = %56, %13
  %19 = load i32, i32* %4, align 4, !dbg !660
  %20 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !662
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %20, i32 0, i32 5, !dbg !663
  %22 = load i32, i32* %21, align 8, !dbg !663
  %23 = icmp slt i32 %19, %22, !dbg !664
  br i1 %23, label %24, label %59, !dbg !665

24:                                               ; preds = %18
  %25 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !666
  %26 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %25, i32 0, i32 7, !dbg !668
  %27 = load %struct.residue_t**, %struct.residue_t*** %26, align 8, !dbg !668
  %28 = load i32, i32* %4, align 4, !dbg !669
  %29 = sext i32 %28 to i64, !dbg !666
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %27, i64 %29, !dbg !666
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8, !dbg !666
  store %struct.residue_t* %31, %struct.residue_t** %6, align 8, !dbg !670
  %32 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !671
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 6, !dbg !672
  %34 = load i32, i32* %33, align 8, !dbg !673
  %35 = and i32 %34, -2, !dbg !673
  store i32 %35, i32* %33, align 8, !dbg !673
  store i32 0, i32* %3, align 4, !dbg !674
  br label %36, !dbg !676

36:                                               ; preds = %52, %24
  %37 = load i32, i32* %3, align 4, !dbg !677
  %38 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !679
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %38, i32 0, i32 15, !dbg !680
  %40 = load i32, i32* %39, align 8, !dbg !680
  %41 = icmp slt i32 %37, %40, !dbg !681
  br i1 %41, label %42, label %55, !dbg !682

42:                                               ; preds = %36
  %43 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !683
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %43, i32 0, i32 17, !dbg !684
  %45 = load %struct.atom_t*, %struct.atom_t** %44, align 8, !dbg !684
  %46 = load i32, i32* %3, align 4, !dbg !685
  %47 = sext i32 %46 to i64, !dbg !683
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i64 %47, !dbg !683
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 2, !dbg !686
  %50 = load i32, i32* %49, align 8, !dbg !687
  %51 = and i32 %50, -2, !dbg !687
  store i32 %51, i32* %49, align 8, !dbg !687
  br label %52, !dbg !683

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4, !dbg !688
  %54 = add nsw i32 %53, 1, !dbg !688
  store i32 %54, i32* %3, align 4, !dbg !688
  br label %36, !dbg !689, !llvm.loop !690

55:                                               ; preds = %36
  br label %56, !dbg !692

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4, !dbg !693
  %58 = add nsw i32 %57, 1, !dbg !693
  store i32 %58, i32* %4, align 4, !dbg !693
  br label %18, !dbg !694, !llvm.loop !695

59:                                               ; preds = %18
  br label %60, !dbg !697

60:                                               ; preds = %59
  %61 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !698
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %61, i32 0, i32 4, !dbg !699
  %63 = load %struct.strand_t*, %struct.strand_t** %62, align 8, !dbg !699
  store %struct.strand_t* %63, %struct.strand_t** %5, align 8, !dbg !700
  br label %10, !dbg !701, !llvm.loop !702

64:                                               ; preds = %10
  ret void, !dbg !704
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eval_1_aexpr(%struct.molecule_t* %0, i8* %1) #0 !dbg !705 {
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %3, metadata !706, metadata !DIExpression()), !dbg !707
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !708, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.declare(metadata i8** %5, metadata !710, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.declare(metadata i8** %6, metadata !712, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.declare(metadata i32* %7, metadata !714, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.declare(metadata i32* %8, metadata !716, metadata !DIExpression()), !dbg !717
  %9 = load i8*, i8** %4, align 8, !dbg !718
  store i8* %9, i8** %5, align 8, !dbg !719
  %10 = load i8*, i8** %5, align 8, !dbg !720
  %11 = load i8, i8* %10, align 1, !dbg !722
  %12 = sext i8 %11 to i32, !dbg !722
  %13 = icmp eq i32 %12, 58, !dbg !723
  br i1 %13, label %14, label %17, !dbg !724

14:                                               ; preds = %2
  store i8* null, i8** @spart, align 8, !dbg !725
  %15 = load i8*, i8** %5, align 8, !dbg !727
  %16 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !727
  store i8* %16, i8** %5, align 8, !dbg !727
  br label %25, !dbg !728

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8, !dbg !729
  %19 = call i8* @strtok(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !731
  store i8* %19, i8** @spart, align 8, !dbg !732
  %20 = load i8*, i8** @spart, align 8, !dbg !733
  %21 = call i64 @strlen(i8* %20) #6, !dbg !734
  %22 = add i64 %21, 1, !dbg !735
  %23 = load i8*, i8** %5, align 8, !dbg !736
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !736
  store i8* %24, i8** %5, align 8, !dbg !736
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i8*, i8** %5, align 8, !dbg !737
  %27 = load i8, i8* %26, align 1, !dbg !739
  %28 = sext i8 %27 to i32, !dbg !739
  %29 = icmp eq i32 %28, 58, !dbg !740
  br i1 %29, label %30, label %33, !dbg !741

30:                                               ; preds = %25
  store i8* null, i8** @rpart, align 8, !dbg !742
  %31 = load i8*, i8** %5, align 8, !dbg !744
  %32 = getelementptr inbounds i8, i8* %31, i32 1, !dbg !744
  store i8* %32, i8** %5, align 8, !dbg !744
  br label %41, !dbg !745

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8, !dbg !746
  %35 = call i8* @strtok(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !748
  store i8* %35, i8** @rpart, align 8, !dbg !749
  %36 = load i8*, i8** @rpart, align 8, !dbg !750
  %37 = call i64 @strlen(i8* %36) #6, !dbg !751
  %38 = add i64 %37, 1, !dbg !752
  %39 = load i8*, i8** %5, align 8, !dbg !753
  %40 = getelementptr inbounds i8, i8* %39, i64 %38, !dbg !753
  store i8* %40, i8** %5, align 8, !dbg !753
  br label %41

41:                                               ; preds = %33, %30
  %42 = load i8*, i8** %5, align 8, !dbg !754
  %43 = call i8* @strtok(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !755
  store i8* %43, i8** @apart, align 8, !dbg !756
  %44 = load i8*, i8** @spart, align 8, !dbg !757
  %45 = icmp ne i8* %44, null, !dbg !757
  br i1 %45, label %46, label %76, !dbg !759

46:                                               ; preds = %41
  %47 = load i8*, i8** @spart, align 8, !dbg !760
  %48 = call i8* @strtok(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !762
  store i8* %48, i8** %6, align 8, !dbg !763
  %49 = load i8*, i8** %6, align 8, !dbg !764
  %50 = call i32 @is_pattern(i8* %49, i32* %7, i32* %8), !dbg !766
  %51 = icmp ne i32 %50, 0, !dbg !766
  br i1 %51, label %52, label %55, !dbg !767

52:                                               ; preds = %46
  %53 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !768
  %54 = load i8*, i8** %6, align 8, !dbg !769
  call void @match_str_pat(%struct.molecule_t* %53, i8* %54), !dbg !770
  br label %59, !dbg !770

55:                                               ; preds = %46
  %56 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !771
  %57 = load i32, i32* %7, align 4, !dbg !772
  %58 = load i32, i32* %8, align 4, !dbg !773
  call void @match_str_range(%struct.molecule_t* %56, i32 %57, i32 %58), !dbg !774
  br label %59

59:                                               ; preds = %55, %52
  br label %60, !dbg !775

60:                                               ; preds = %74, %59
  %61 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !776
  store i8* %61, i8** %6, align 8, !dbg !777
  %62 = icmp ne i8* %61, null, !dbg !775
  br i1 %62, label %63, label %75, !dbg !775

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8, !dbg !778
  %65 = call i32 @is_pattern(i8* %64, i32* %7, i32* %8), !dbg !781
  %66 = icmp ne i32 %65, 0, !dbg !781
  br i1 %66, label %67, label %70, !dbg !782

67:                                               ; preds = %63
  %68 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !783
  %69 = load i8*, i8** %6, align 8, !dbg !784
  call void @match_str_pat(%struct.molecule_t* %68, i8* %69), !dbg !785
  br label %74, !dbg !785

70:                                               ; preds = %63
  %71 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !786
  %72 = load i32, i32* %7, align 4, !dbg !787
  %73 = load i32, i32* %8, align 4, !dbg !788
  call void @match_str_range(%struct.molecule_t* %71, i32 %72, i32 %73), !dbg !789
  br label %74

74:                                               ; preds = %70, %67
  br label %60, !dbg !775, !llvm.loop !790

75:                                               ; preds = %60
  br label %78, !dbg !792

76:                                               ; preds = %41
  %77 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !793
  call void @match_str_range(%struct.molecule_t* %77, i32 1, i32 -1), !dbg !794
  br label %78

78:                                               ; preds = %76, %75
  %79 = load i8*, i8** @rpart, align 8, !dbg !795
  %80 = icmp ne i8* %79, null, !dbg !795
  br i1 %80, label %81, label %111, !dbg !797

81:                                               ; preds = %78
  %82 = load i8*, i8** @rpart, align 8, !dbg !798
  %83 = call i8* @strtok(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !800
  store i8* %83, i8** %6, align 8, !dbg !801
  %84 = load i8*, i8** %6, align 8, !dbg !802
  %85 = call i32 @is_pattern(i8* %84, i32* %7, i32* %8), !dbg !804
  %86 = icmp ne i32 %85, 0, !dbg !804
  br i1 %86, label %87, label %90, !dbg !805

87:                                               ; preds = %81
  %88 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !806
  %89 = load i8*, i8** %6, align 8, !dbg !807
  call void @match_res_pat(%struct.molecule_t* %88, i8* %89), !dbg !808
  br label %94, !dbg !808

90:                                               ; preds = %81
  %91 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !809
  %92 = load i32, i32* %7, align 4, !dbg !810
  %93 = load i32, i32* %8, align 4, !dbg !811
  call void @match_res_range(%struct.molecule_t* %91, i32 %92, i32 %93), !dbg !812
  br label %94

94:                                               ; preds = %90, %87
  br label %95, !dbg !813

95:                                               ; preds = %109, %94
  %96 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !814
  store i8* %96, i8** %6, align 8, !dbg !815
  %97 = icmp ne i8* %96, null, !dbg !813
  br i1 %97, label %98, label %110, !dbg !813

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8, !dbg !816
  %100 = call i32 @is_pattern(i8* %99, i32* %7, i32* %8), !dbg !819
  %101 = icmp ne i32 %100, 0, !dbg !819
  br i1 %101, label %102, label %105, !dbg !820

102:                                              ; preds = %98
  %103 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !821
  %104 = load i8*, i8** %6, align 8, !dbg !822
  call void @match_res_pat(%struct.molecule_t* %103, i8* %104), !dbg !823
  br label %109, !dbg !823

105:                                              ; preds = %98
  %106 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !824
  %107 = load i32, i32* %7, align 4, !dbg !825
  %108 = load i32, i32* %8, align 4, !dbg !826
  call void @match_res_range(%struct.molecule_t* %106, i32 %107, i32 %108), !dbg !827
  br label %109

109:                                              ; preds = %105, %102
  br label %95, !dbg !813, !llvm.loop !828

110:                                              ; preds = %95
  br label %113, !dbg !830

111:                                              ; preds = %78
  %112 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !831
  call void @match_res_range(%struct.molecule_t* %112, i32 1, i32 -1), !dbg !832
  br label %113

113:                                              ; preds = %111, %110
  %114 = load i8*, i8** @apart, align 8, !dbg !833
  %115 = icmp ne i8* %114, null, !dbg !833
  br i1 %115, label %116, label %144, !dbg !835

116:                                              ; preds = %113
  %117 = load i8*, i8** @apart, align 8, !dbg !836
  %118 = call i8* @strtok(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !838
  store i8* %118, i8** %6, align 8, !dbg !839
  %119 = load i8*, i8** %6, align 8, !dbg !840
  %120 = call i32 @is_pattern(i8* %119, i32* %7, i32* %8), !dbg !842
  %121 = icmp ne i32 %120, 0, !dbg !842
  br i1 %121, label %122, label %125, !dbg !843

122:                                              ; preds = %116
  %123 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !844
  %124 = load i8*, i8** %6, align 8, !dbg !845
  call void @match_atom_pat(%struct.molecule_t* %123, i8* %124), !dbg !846
  br label %128, !dbg !846

125:                                              ; preds = %116
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !847
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)), !dbg !849
  br label %128

128:                                              ; preds = %125, %122
  br label %129, !dbg !850

129:                                              ; preds = %142, %128
  %130 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !851
  store i8* %130, i8** %6, align 8, !dbg !852
  %131 = icmp ne i8* %130, null, !dbg !850
  br i1 %131, label %132, label %143, !dbg !850

132:                                              ; preds = %129
  %133 = load i8*, i8** %6, align 8, !dbg !853
  %134 = call i32 @is_pattern(i8* %133, i32* %7, i32* %8), !dbg !856
  %135 = icmp ne i32 %134, 0, !dbg !856
  br i1 %135, label %136, label %139, !dbg !857

136:                                              ; preds = %132
  %137 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !858
  %138 = load i8*, i8** %6, align 8, !dbg !859
  call void @match_atom_pat(%struct.molecule_t* %137, i8* %138), !dbg !860
  br label %142, !dbg !860

139:                                              ; preds = %132
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !861
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)), !dbg !863
  br label %142

142:                                              ; preds = %139, %136
  br label %129, !dbg !850, !llvm.loop !864

143:                                              ; preds = %129
  br label %146, !dbg !866

144:                                              ; preds = %113
  %145 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !867
  call void @match_atom_pat(%struct.molecule_t* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !868
  br label %146

146:                                              ; preds = %144, %143
  ret i32 0, !dbg !869
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @or_select(%struct.molecule_t* %0) #0 !dbg !870 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strand_t*, align 8
  %6 = alloca %struct.residue_t*, align 8
  %7 = alloca %struct.atom_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %2, metadata !871, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata i32* %3, metadata !873, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.declare(metadata i32* %4, metadata !875, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.declare(metadata %struct.strand_t** %5, metadata !877, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.declare(metadata %struct.residue_t** %6, metadata !879, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.declare(metadata %struct.atom_t** %7, metadata !881, metadata !DIExpression()), !dbg !882
  %8 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8, !dbg !883
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %8, i32 0, i32 2, !dbg !885
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !885
  store %struct.strand_t* %10, %struct.strand_t** %5, align 8, !dbg !886
  br label %11, !dbg !887

11:                                               ; preds = %83, %1
  %12 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !888
  %13 = icmp ne %struct.strand_t* %12, null, !dbg !890
  br i1 %13, label %14, label %87, !dbg !890

14:                                               ; preds = %11
  %15 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !891
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i32 0, i32 2, !dbg !893
  %17 = load i32, i32* %16, align 4, !dbg !893
  %18 = and i32 %17, 1, !dbg !894
  %19 = icmp ne i32 %18, 0, !dbg !895
  %20 = zext i1 %19 to i64, !dbg !895
  %21 = select i1 %19, i32 128, i32 0, !dbg !895
  %22 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !896
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %22, i32 0, i32 2, !dbg !897
  %24 = load i32, i32* %23, align 4, !dbg !898
  %25 = or i32 %24, %21, !dbg !898
  store i32 %25, i32* %23, align 4, !dbg !898
  store i32 0, i32* %4, align 4, !dbg !899
  br label %26, !dbg !901

26:                                               ; preds = %79, %14
  %27 = load i32, i32* %4, align 4, !dbg !902
  %28 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !904
  %29 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %28, i32 0, i32 5, !dbg !905
  %30 = load i32, i32* %29, align 8, !dbg !905
  %31 = icmp slt i32 %27, %30, !dbg !906
  br i1 %31, label %32, label %82, !dbg !907

32:                                               ; preds = %26
  %33 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !908
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %33, i32 0, i32 7, !dbg !910
  %35 = load %struct.residue_t**, %struct.residue_t*** %34, align 8, !dbg !910
  %36 = load i32, i32* %4, align 4, !dbg !911
  %37 = sext i32 %36 to i64, !dbg !908
  %38 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %35, i64 %37, !dbg !908
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8, !dbg !908
  store %struct.residue_t* %39, %struct.residue_t** %6, align 8, !dbg !912
  %40 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !913
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 6, !dbg !914
  %42 = load i32, i32* %41, align 8, !dbg !914
  %43 = and i32 %42, 1, !dbg !915
  %44 = icmp ne i32 %43, 0, !dbg !916
  %45 = zext i1 %44 to i64, !dbg !916
  %46 = select i1 %44, i32 128, i32 0, !dbg !916
  %47 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !917
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i32 0, i32 6, !dbg !918
  %49 = load i32, i32* %48, align 8, !dbg !919
  %50 = or i32 %49, %46, !dbg !919
  store i32 %50, i32* %48, align 8, !dbg !919
  store i32 0, i32* %3, align 4, !dbg !920
  br label %51, !dbg !922

51:                                               ; preds = %75, %32
  %52 = load i32, i32* %3, align 4, !dbg !923
  %53 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !925
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %53, i32 0, i32 15, !dbg !926
  %55 = load i32, i32* %54, align 8, !dbg !926
  %56 = icmp slt i32 %52, %55, !dbg !927
  br i1 %56, label %57, label %78, !dbg !928

57:                                               ; preds = %51
  %58 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !929
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %58, i32 0, i32 17, !dbg !931
  %60 = load %struct.atom_t*, %struct.atom_t** %59, align 8, !dbg !931
  %61 = load i32, i32* %3, align 4, !dbg !932
  %62 = sext i32 %61 to i64, !dbg !929
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i64 %62, !dbg !929
  store %struct.atom_t* %63, %struct.atom_t** %7, align 8, !dbg !933
  %64 = load %struct.atom_t*, %struct.atom_t** %7, align 8, !dbg !934
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %64, i32 0, i32 2, !dbg !935
  %66 = load i32, i32* %65, align 8, !dbg !935
  %67 = and i32 %66, 1, !dbg !936
  %68 = icmp ne i32 %67, 0, !dbg !937
  %69 = zext i1 %68 to i64, !dbg !937
  %70 = select i1 %68, i32 128, i32 0, !dbg !937
  %71 = load %struct.atom_t*, %struct.atom_t** %7, align 8, !dbg !938
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %71, i32 0, i32 2, !dbg !939
  %73 = load i32, i32* %72, align 8, !dbg !940
  %74 = or i32 %73, %70, !dbg !940
  store i32 %74, i32* %72, align 8, !dbg !940
  br label %75, !dbg !941

75:                                               ; preds = %57
  %76 = load i32, i32* %3, align 4, !dbg !942
  %77 = add nsw i32 %76, 1, !dbg !942
  store i32 %77, i32* %3, align 4, !dbg !942
  br label %51, !dbg !943, !llvm.loop !944

78:                                               ; preds = %51
  br label %79, !dbg !946

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4, !dbg !947
  %81 = add nsw i32 %80, 1, !dbg !947
  store i32 %81, i32* %4, align 4, !dbg !947
  br label %26, !dbg !948, !llvm.loop !949

82:                                               ; preds = %26
  br label %83, !dbg !951

83:                                               ; preds = %82
  %84 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !952
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %84, i32 0, i32 4, !dbg !953
  %86 = load %struct.strand_t*, %struct.strand_t** %85, align 8, !dbg !953
  store %struct.strand_t* %86, %struct.strand_t** %5, align 8, !dbg !954
  br label %11, !dbg !955, !llvm.loop !956

87:                                               ; preds = %11
  ret void, !dbg !958
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_select(%struct.molecule_t* %0) #0 !dbg !959 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strand_t*, align 8
  %6 = alloca %struct.residue_t*, align 8
  %7 = alloca %struct.atom_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %2, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata i32* %3, metadata !962, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %4, metadata !964, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.declare(metadata %struct.strand_t** %5, metadata !966, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.declare(metadata %struct.residue_t** %6, metadata !968, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.declare(metadata %struct.atom_t** %7, metadata !970, metadata !DIExpression()), !dbg !971
  %8 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8, !dbg !972
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %8, i32 0, i32 2, !dbg !974
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !974
  store %struct.strand_t* %10, %struct.strand_t** %5, align 8, !dbg !975
  br label %11, !dbg !976

11:                                               ; preds = %83, %1
  %12 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !977
  %13 = icmp ne %struct.strand_t* %12, null, !dbg !979
  br i1 %13, label %14, label %87, !dbg !979

14:                                               ; preds = %11
  %15 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !980
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i32 0, i32 2, !dbg !982
  %17 = load i32, i32* %16, align 4, !dbg !982
  %18 = and i32 %17, 128, !dbg !983
  %19 = icmp ne i32 %18, 0, !dbg !984
  %20 = zext i1 %19 to i64, !dbg !984
  %21 = select i1 %19, i32 1, i32 0, !dbg !984
  %22 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !985
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %22, i32 0, i32 2, !dbg !986
  %24 = load i32, i32* %23, align 4, !dbg !987
  %25 = or i32 %24, %21, !dbg !987
  store i32 %25, i32* %23, align 4, !dbg !987
  store i32 0, i32* %4, align 4, !dbg !988
  br label %26, !dbg !990

26:                                               ; preds = %79, %14
  %27 = load i32, i32* %4, align 4, !dbg !991
  %28 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !993
  %29 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %28, i32 0, i32 5, !dbg !994
  %30 = load i32, i32* %29, align 8, !dbg !994
  %31 = icmp slt i32 %27, %30, !dbg !995
  br i1 %31, label %32, label %82, !dbg !996

32:                                               ; preds = %26
  %33 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !997
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %33, i32 0, i32 7, !dbg !999
  %35 = load %struct.residue_t**, %struct.residue_t*** %34, align 8, !dbg !999
  %36 = load i32, i32* %4, align 4, !dbg !1000
  %37 = sext i32 %36 to i64, !dbg !997
  %38 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %35, i64 %37, !dbg !997
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8, !dbg !997
  store %struct.residue_t* %39, %struct.residue_t** %6, align 8, !dbg !1001
  %40 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !1002
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 6, !dbg !1003
  %42 = load i32, i32* %41, align 8, !dbg !1003
  %43 = and i32 %42, 128, !dbg !1004
  %44 = icmp ne i32 %43, 0, !dbg !1005
  %45 = zext i1 %44 to i64, !dbg !1005
  %46 = select i1 %44, i32 1, i32 0, !dbg !1005
  %47 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !1006
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i32 0, i32 6, !dbg !1007
  %49 = load i32, i32* %48, align 8, !dbg !1008
  %50 = or i32 %49, %46, !dbg !1008
  store i32 %50, i32* %48, align 8, !dbg !1008
  store i32 0, i32* %3, align 4, !dbg !1009
  br label %51, !dbg !1011

51:                                               ; preds = %75, %32
  %52 = load i32, i32* %3, align 4, !dbg !1012
  %53 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !1014
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %53, i32 0, i32 15, !dbg !1015
  %55 = load i32, i32* %54, align 8, !dbg !1015
  %56 = icmp slt i32 %52, %55, !dbg !1016
  br i1 %56, label %57, label %78, !dbg !1017

57:                                               ; preds = %51
  %58 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !1018
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %58, i32 0, i32 17, !dbg !1020
  %60 = load %struct.atom_t*, %struct.atom_t** %59, align 8, !dbg !1020
  %61 = load i32, i32* %3, align 4, !dbg !1021
  %62 = sext i32 %61 to i64, !dbg !1018
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i64 %62, !dbg !1018
  store %struct.atom_t* %63, %struct.atom_t** %7, align 8, !dbg !1022
  %64 = load %struct.atom_t*, %struct.atom_t** %7, align 8, !dbg !1023
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %64, i32 0, i32 2, !dbg !1024
  %66 = load i32, i32* %65, align 8, !dbg !1024
  %67 = and i32 %66, 128, !dbg !1025
  %68 = icmp ne i32 %67, 0, !dbg !1026
  %69 = zext i1 %68 to i64, !dbg !1026
  %70 = select i1 %68, i32 1, i32 0, !dbg !1026
  %71 = load %struct.atom_t*, %struct.atom_t** %7, align 8, !dbg !1027
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %71, i32 0, i32 2, !dbg !1028
  %73 = load i32, i32* %72, align 8, !dbg !1029
  %74 = or i32 %73, %70, !dbg !1029
  store i32 %74, i32* %72, align 8, !dbg !1029
  br label %75, !dbg !1030

75:                                               ; preds = %57
  %76 = load i32, i32* %3, align 4, !dbg !1031
  %77 = add nsw i32 %76, 1, !dbg !1031
  store i32 %77, i32* %3, align 4, !dbg !1031
  br label %51, !dbg !1032, !llvm.loop !1033

78:                                               ; preds = %51
  br label %79, !dbg !1035

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4, !dbg !1036
  %81 = add nsw i32 %80, 1, !dbg !1036
  store i32 %81, i32* %4, align 4, !dbg !1036
  br label %26, !dbg !1037, !llvm.loop !1038

82:                                               ; preds = %26
  br label %83, !dbg !1040

83:                                               ; preds = %82
  %84 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !1041
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %84, i32 0, i32 4, !dbg !1042
  %86 = load %struct.strand_t*, %struct.strand_t** %85, align 8, !dbg !1042
  store %struct.strand_t* %86, %struct.strand_t** %5, align 8, !dbg !1043
  br label %11, !dbg !1044, !llvm.loop !1045

87:                                               ; preds = %11
  ret void, !dbg !1047
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atom_in_aexpr(%struct.atom_t* %0, i8* %1) #0 !dbg !1048 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atom_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.atom_t* %0, %struct.atom_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.atom_t** %4, metadata !1051, metadata !DIExpression()), !dbg !1052
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1053, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1055, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1057, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1059, metadata !DIExpression()), !dbg !1060
  %9 = load i8*, i8** %5, align 8, !dbg !1061
  %10 = icmp eq i8* %9, null, !dbg !1063
  br i1 %10, label %11, label %12, !dbg !1064

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1065
  br label %62, !dbg !1065

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8, !dbg !1066
  store i8* %13, i8** %6, align 8, !dbg !1068
  %14 = load i8*, i8** %6, align 8, !dbg !1069
  %15 = call i8* @strchr(i8* %14, i32 124) #6, !dbg !1070
  store i8* %15, i8** %7, align 8, !dbg !1071
  br label %16, !dbg !1072

16:                                               ; preds = %60, %12
  %17 = load i8*, i8** %6, align 8, !dbg !1073
  %18 = icmp ne i8* %17, null, !dbg !1075
  br i1 %18, label %19, label %61, !dbg !1075

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8, !dbg !1076
  %21 = icmp ne i8* %20, null, !dbg !1076
  br i1 %21, label %22, label %31, !dbg !1079

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8, !dbg !1080
  %24 = load i8*, i8** %6, align 8, !dbg !1082
  %25 = ptrtoint i8* %23 to i64, !dbg !1083
  %26 = ptrtoint i8* %24 to i64, !dbg !1083
  %27 = sub i64 %25, %26, !dbg !1083
  %28 = trunc i64 %27 to i32, !dbg !1080
  store i32 %28, i32* %8, align 4, !dbg !1084
  %29 = load i8*, i8** %7, align 8, !dbg !1085
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !1085
  store i8* %30, i8** %7, align 8, !dbg !1085
  br label %35, !dbg !1086

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8, !dbg !1087
  %33 = call i64 @strlen(i8* %32) #6, !dbg !1088
  %34 = trunc i64 %33 to i32, !dbg !1088
  store i32 %34, i32* %8, align 4, !dbg !1089
  br label %35

35:                                               ; preds = %31, %22
  %36 = load i32, i32* %8, align 4, !dbg !1090
  %37 = icmp sge i32 %36, 1000, !dbg !1092
  br i1 %37, label %38, label %41, !dbg !1093

38:                                               ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1094
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)), !dbg !1096
  store i32 0, i32* %3, align 4, !dbg !1097
  br label %62, !dbg !1097

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8, !dbg !1098
  %43 = load i32, i32* %8, align 4, !dbg !1099
  %44 = sext i32 %43 to i64, !dbg !1099
  %45 = call i8* @strncpy(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* %42, i64 %44) #7, !dbg !1100
  %46 = load i32, i32* %8, align 4, !dbg !1101
  %47 = sext i32 %46 to i64, !dbg !1102
  %48 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %47, !dbg !1102
  store i8 0, i8* %48, align 1, !dbg !1103
  %49 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1104
  %50 = call i32 @atom_in_1_aexpr(%struct.atom_t* %49, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0)), !dbg !1106
  %51 = icmp ne i32 %50, 0, !dbg !1106
  br i1 %51, label %52, label %53, !dbg !1107

52:                                               ; preds = %41
  store i32 1, i32* %3, align 4, !dbg !1108
  br label %62, !dbg !1108

53:                                               ; preds = %41
  %54 = load i8*, i8** %7, align 8, !dbg !1109
  store i8* %54, i8** %6, align 8, !dbg !1110
  %55 = load i8*, i8** %6, align 8, !dbg !1111
  %56 = icmp ne i8* %55, null, !dbg !1111
  br i1 %56, label %57, label %60, !dbg !1113

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8, !dbg !1114
  %59 = call i8* @strchr(i8* %58, i32 124) #6, !dbg !1115
  store i8* %59, i8** %7, align 8, !dbg !1116
  br label %60, !dbg !1117

60:                                               ; preds = %57, %53
  br label %16, !dbg !1118, !llvm.loop !1119

61:                                               ; preds = %16
  store i32 0, i32* %3, align 4, !dbg !1121
  br label %62, !dbg !1121

62:                                               ; preds = %61, %52, %38, %11
  %63 = load i32, i32* %3, align 4, !dbg !1122
  ret i32 %63, !dbg !1122
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_1_aexpr(%struct.atom_t* %0, i8* %1) #0 !dbg !1123 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atom_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atom_t* %0, %struct.atom_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.atom_t** %4, metadata !1124, metadata !DIExpression()), !dbg !1125
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1126, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1128, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1132, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1134, metadata !DIExpression()), !dbg !1135
  %10 = load i8*, i8** %5, align 8, !dbg !1136
  store i8* %10, i8** %6, align 8, !dbg !1137
  %11 = load i8*, i8** %6, align 8, !dbg !1138
  %12 = load i8, i8* %11, align 1, !dbg !1140
  %13 = sext i8 %12 to i32, !dbg !1140
  %14 = icmp eq i32 %13, 58, !dbg !1141
  br i1 %14, label %15, label %18, !dbg !1142

15:                                               ; preds = %2
  store i8* null, i8** @spart, align 8, !dbg !1143
  %16 = load i8*, i8** %6, align 8, !dbg !1145
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !1145
  store i8* %17, i8** %6, align 8, !dbg !1145
  br label %26, !dbg !1146

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8, !dbg !1147
  %20 = call i8* @strtok(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !1149
  store i8* %20, i8** @spart, align 8, !dbg !1150
  %21 = load i8*, i8** @spart, align 8, !dbg !1151
  %22 = call i64 @strlen(i8* %21) #6, !dbg !1152
  %23 = add i64 %22, 1, !dbg !1153
  %24 = load i8*, i8** %6, align 8, !dbg !1154
  %25 = getelementptr inbounds i8, i8* %24, i64 %23, !dbg !1154
  store i8* %25, i8** %6, align 8, !dbg !1154
  br label %26

26:                                               ; preds = %18, %15
  %27 = load i8*, i8** %6, align 8, !dbg !1155
  %28 = load i8, i8* %27, align 1, !dbg !1157
  %29 = sext i8 %28 to i32, !dbg !1157
  %30 = icmp eq i32 %29, 58, !dbg !1158
  br i1 %30, label %31, label %34, !dbg !1159

31:                                               ; preds = %26
  store i8* null, i8** @rpart, align 8, !dbg !1160
  %32 = load i8*, i8** %6, align 8, !dbg !1162
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !1162
  store i8* %33, i8** %6, align 8, !dbg !1162
  br label %42, !dbg !1163

34:                                               ; preds = %26
  %35 = load i8*, i8** %6, align 8, !dbg !1164
  %36 = call i8* @strtok(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !1166
  store i8* %36, i8** @rpart, align 8, !dbg !1167
  %37 = load i8*, i8** @rpart, align 8, !dbg !1168
  %38 = call i64 @strlen(i8* %37) #6, !dbg !1169
  %39 = add i64 %38, 1, !dbg !1170
  %40 = load i8*, i8** %6, align 8, !dbg !1171
  %41 = getelementptr inbounds i8, i8* %40, i64 %39, !dbg !1171
  store i8* %41, i8** %6, align 8, !dbg !1171
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i8*, i8** %6, align 8, !dbg !1172
  %44 = call i8* @strtok(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !1173
  store i8* %44, i8** @apart, align 8, !dbg !1174
  %45 = load i8*, i8** @spart, align 8, !dbg !1175
  %46 = icmp ne i8* %45, null, !dbg !1175
  br i1 %46, label %47, label %93, !dbg !1177

47:                                               ; preds = %42
  %48 = load i8*, i8** @spart, align 8, !dbg !1178
  %49 = call i8* @strtok(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1180
  store i8* %49, i8** %7, align 8, !dbg !1181
  %50 = load i8*, i8** %7, align 8, !dbg !1182
  %51 = call i32 @is_pattern(i8* %50, i32* %8, i32* %9), !dbg !1184
  %52 = icmp ne i32 %51, 0, !dbg !1184
  br i1 %52, label %53, label %60, !dbg !1185

53:                                               ; preds = %47
  %54 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1186
  %55 = load i8*, i8** %7, align 8, !dbg !1189
  %56 = call i32 @atom_in_str_pat(%struct.atom_t* %54, i8* %55), !dbg !1190
  %57 = icmp ne i32 %56, 0, !dbg !1190
  br i1 %57, label %58, label %59, !dbg !1191

58:                                               ; preds = %53
  br label %94, !dbg !1192

59:                                               ; preds = %53
  br label %68, !dbg !1193

60:                                               ; preds = %47
  %61 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1194
  %62 = load i32, i32* %8, align 4, !dbg !1196
  %63 = load i32, i32* %9, align 4, !dbg !1197
  %64 = call i32 @atom_in_str_range(%struct.atom_t* %61, i32 %62, i32 %63), !dbg !1198
  %65 = icmp ne i32 %64, 0, !dbg !1198
  br i1 %65, label %66, label %67, !dbg !1199

66:                                               ; preds = %60
  br label %94, !dbg !1200

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %59
  br label %69, !dbg !1201

69:                                               ; preds = %91, %68
  %70 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1202
  store i8* %70, i8** %7, align 8, !dbg !1203
  %71 = icmp ne i8* %70, null, !dbg !1201
  br i1 %71, label %72, label %92, !dbg !1201

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8, !dbg !1204
  %74 = call i32 @is_pattern(i8* %73, i32* %8, i32* %9), !dbg !1207
  %75 = icmp ne i32 %74, 0, !dbg !1207
  br i1 %75, label %76, label %83, !dbg !1208

76:                                               ; preds = %72
  %77 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1209
  %78 = load i8*, i8** %7, align 8, !dbg !1212
  %79 = call i32 @atom_in_str_pat(%struct.atom_t* %77, i8* %78), !dbg !1213
  %80 = icmp ne i32 %79, 0, !dbg !1213
  br i1 %80, label %81, label %82, !dbg !1214

81:                                               ; preds = %76
  br label %94, !dbg !1215

82:                                               ; preds = %76
  br label %91, !dbg !1216

83:                                               ; preds = %72
  %84 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1217
  %85 = load i32, i32* %8, align 4, !dbg !1219
  %86 = load i32, i32* %9, align 4, !dbg !1220
  %87 = call i32 @atom_in_str_range(%struct.atom_t* %84, i32 %85, i32 %86), !dbg !1221
  %88 = icmp ne i32 %87, 0, !dbg !1221
  br i1 %88, label %89, label %90, !dbg !1222

89:                                               ; preds = %83
  br label %94, !dbg !1223

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %82
  br label %69, !dbg !1201, !llvm.loop !1224

92:                                               ; preds = %69
  store i32 0, i32* %3, align 4, !dbg !1226
  br label %185, !dbg !1226

93:                                               ; preds = %42
  br label %94, !dbg !1175

94:                                               ; preds = %93, %89, %81, %66, %58
  call void @llvm.dbg.label(metadata !1227), !dbg !1228
  %95 = load i8*, i8** @rpart, align 8, !dbg !1229
  %96 = icmp ne i8* %95, null, !dbg !1229
  br i1 %96, label %97, label %143, !dbg !1231

97:                                               ; preds = %94
  %98 = load i8*, i8** @rpart, align 8, !dbg !1232
  %99 = call i8* @strtok(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1234
  store i8* %99, i8** %7, align 8, !dbg !1235
  %100 = load i8*, i8** %7, align 8, !dbg !1236
  %101 = call i32 @is_pattern(i8* %100, i32* %8, i32* %9), !dbg !1238
  %102 = icmp ne i32 %101, 0, !dbg !1238
  br i1 %102, label %103, label %110, !dbg !1239

103:                                              ; preds = %97
  %104 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1240
  %105 = load i8*, i8** %7, align 8, !dbg !1243
  %106 = call i32 @atom_in_res_pat(%struct.atom_t* %104, i8* %105), !dbg !1244
  %107 = icmp ne i32 %106, 0, !dbg !1244
  br i1 %107, label %108, label %109, !dbg !1245

108:                                              ; preds = %103
  br label %144, !dbg !1246

109:                                              ; preds = %103
  br label %118, !dbg !1247

110:                                              ; preds = %97
  %111 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1248
  %112 = load i32, i32* %8, align 4, !dbg !1250
  %113 = load i32, i32* %9, align 4, !dbg !1251
  %114 = call i32 @atom_in_res_range(%struct.atom_t* %111, i32 %112, i32 %113), !dbg !1252
  %115 = icmp ne i32 %114, 0, !dbg !1252
  br i1 %115, label %116, label %117, !dbg !1253

116:                                              ; preds = %110
  br label %144, !dbg !1254

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %109
  br label %119, !dbg !1255

119:                                              ; preds = %141, %118
  %120 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1256
  store i8* %120, i8** %7, align 8, !dbg !1257
  %121 = icmp ne i8* %120, null, !dbg !1255
  br i1 %121, label %122, label %142, !dbg !1255

122:                                              ; preds = %119
  %123 = load i8*, i8** %7, align 8, !dbg !1258
  %124 = call i32 @is_pattern(i8* %123, i32* %8, i32* %9), !dbg !1261
  %125 = icmp ne i32 %124, 0, !dbg !1261
  br i1 %125, label %126, label %133, !dbg !1262

126:                                              ; preds = %122
  %127 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1263
  %128 = load i8*, i8** %7, align 8, !dbg !1266
  %129 = call i32 @atom_in_res_pat(%struct.atom_t* %127, i8* %128), !dbg !1267
  %130 = icmp ne i32 %129, 0, !dbg !1267
  br i1 %130, label %131, label %132, !dbg !1268

131:                                              ; preds = %126
  br label %144, !dbg !1269

132:                                              ; preds = %126
  br label %141, !dbg !1270

133:                                              ; preds = %122
  %134 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1271
  %135 = load i32, i32* %8, align 4, !dbg !1273
  %136 = load i32, i32* %9, align 4, !dbg !1274
  %137 = call i32 @atom_in_res_range(%struct.atom_t* %134, i32 %135, i32 %136), !dbg !1275
  %138 = icmp ne i32 %137, 0, !dbg !1275
  br i1 %138, label %139, label %140, !dbg !1276

139:                                              ; preds = %133
  br label %144, !dbg !1277

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %132
  br label %119, !dbg !1255, !llvm.loop !1278

142:                                              ; preds = %119
  store i32 0, i32* %3, align 4, !dbg !1280
  br label %185, !dbg !1280

143:                                              ; preds = %94
  br label %144, !dbg !1229

144:                                              ; preds = %143, %139, %131, %116, %108
  call void @llvm.dbg.label(metadata !1281), !dbg !1282
  %145 = load i8*, i8** @apart, align 8, !dbg !1283
  %146 = icmp ne i8* %145, null, !dbg !1283
  br i1 %146, label %147, label %183, !dbg !1285

147:                                              ; preds = %144
  %148 = load i8*, i8** @apart, align 8, !dbg !1286
  %149 = call i8* @strtok(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1288
  store i8* %149, i8** %7, align 8, !dbg !1289
  %150 = load i8*, i8** %7, align 8, !dbg !1290
  %151 = call i32 @is_pattern(i8* %150, i32* %8, i32* %9), !dbg !1292
  %152 = icmp ne i32 %151, 0, !dbg !1292
  br i1 %152, label %153, label %160, !dbg !1293

153:                                              ; preds = %147
  %154 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1294
  %155 = load i8*, i8** %7, align 8, !dbg !1297
  %156 = call i32 @atom_in_atom_pat(%struct.atom_t* %154, i8* %155), !dbg !1298
  %157 = icmp ne i32 %156, 0, !dbg !1298
  br i1 %157, label %158, label %159, !dbg !1299

158:                                              ; preds = %153
  store i32 1, i32* %3, align 4, !dbg !1300
  br label %185, !dbg !1300

159:                                              ; preds = %153
  br label %163, !dbg !1301

160:                                              ; preds = %147
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1302
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)), !dbg !1304
  store i32 0, i32* %3, align 4, !dbg !1305
  br label %185, !dbg !1305

163:                                              ; preds = %159
  br label %164, !dbg !1306

164:                                              ; preds = %181, %163
  %165 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1307
  store i8* %165, i8** %7, align 8, !dbg !1308
  %166 = icmp ne i8* %165, null, !dbg !1306
  br i1 %166, label %167, label %182, !dbg !1306

167:                                              ; preds = %164
  %168 = load i8*, i8** %7, align 8, !dbg !1309
  %169 = call i32 @is_pattern(i8* %168, i32* %8, i32* %9), !dbg !1312
  %170 = icmp ne i32 %169, 0, !dbg !1312
  br i1 %170, label %171, label %178, !dbg !1313

171:                                              ; preds = %167
  %172 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !1314
  %173 = load i8*, i8** %7, align 8, !dbg !1317
  %174 = call i32 @atom_in_atom_pat(%struct.atom_t* %172, i8* %173), !dbg !1318
  %175 = icmp ne i32 %174, 0, !dbg !1318
  br i1 %175, label %176, label %177, !dbg !1319

176:                                              ; preds = %171
  store i32 1, i32* %3, align 4, !dbg !1320
  br label %185, !dbg !1320

177:                                              ; preds = %171
  br label %181, !dbg !1321

178:                                              ; preds = %167
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1322
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)), !dbg !1324
  store i32 0, i32* %3, align 4, !dbg !1325
  br label %185, !dbg !1325

181:                                              ; preds = %177
  br label %164, !dbg !1306, !llvm.loop !1326

182:                                              ; preds = %164
  br label %184, !dbg !1328

183:                                              ; preds = %144
  store i32 1, i32* %3, align 4, !dbg !1329
  br label %185, !dbg !1329

184:                                              ; preds = %182
  store i32 0, i32* %3, align 4, !dbg !1330
  br label %185, !dbg !1330

185:                                              ; preds = %184, %183, %178, %176, %160, %158, %142, %92
  %186 = load i32, i32* %3, align 4, !dbg !1331
  ret i32 %186, !dbg !1331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_attr_if(%struct.molecule_t* %0, i32 %1, i32 %2) #0 !dbg !1332 {
  %4 = alloca %struct.molecule_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strand_t*, align 8
  %10 = alloca %struct.residue_t*, align 8
  %11 = alloca %struct.atom_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %4, metadata !1335, metadata !DIExpression()), !dbg !1336
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1337, metadata !DIExpression()), !dbg !1338
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1339, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1341, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1343, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.declare(metadata %struct.strand_t** %9, metadata !1345, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.declare(metadata %struct.residue_t** %10, metadata !1347, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.declare(metadata %struct.atom_t** %11, metadata !1349, metadata !DIExpression()), !dbg !1350
  %12 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !1351
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %12, i32 0, i32 2, !dbg !1353
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1353
  store %struct.strand_t* %14, %struct.strand_t** %9, align 8, !dbg !1354
  br label %15, !dbg !1355

15:                                               ; preds = %99, %3
  %16 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1356
  %17 = icmp ne %struct.strand_t* %16, null, !dbg !1358
  br i1 %17, label %18, label %103, !dbg !1358

18:                                               ; preds = %15
  %19 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1359
  %20 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %19, i32 0, i32 2, !dbg !1361
  %21 = load i32, i32* %20, align 4, !dbg !1361
  %22 = load i32, i32* %6, align 4, !dbg !1362
  %23 = and i32 %21, %22, !dbg !1363
  %24 = icmp ne i32 %23, 0, !dbg !1363
  br i1 %24, label %25, label %27, !dbg !1364

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4, !dbg !1365
  br label %28, !dbg !1364

27:                                               ; preds = %18
  br label %28, !dbg !1364

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ], !dbg !1364
  %30 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1366
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %30, i32 0, i32 2, !dbg !1367
  %32 = load i32, i32* %31, align 4, !dbg !1368
  %33 = or i32 %32, %29, !dbg !1368
  store i32 %33, i32* %31, align 4, !dbg !1368
  store i32 0, i32* %8, align 4, !dbg !1369
  br label %34, !dbg !1371

34:                                               ; preds = %95, %28
  %35 = load i32, i32* %8, align 4, !dbg !1372
  %36 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1374
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %36, i32 0, i32 5, !dbg !1375
  %38 = load i32, i32* %37, align 8, !dbg !1375
  %39 = icmp slt i32 %35, %38, !dbg !1376
  br i1 %39, label %40, label %98, !dbg !1377

40:                                               ; preds = %34
  %41 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1378
  %42 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %41, i32 0, i32 7, !dbg !1380
  %43 = load %struct.residue_t**, %struct.residue_t*** %42, align 8, !dbg !1380
  %44 = load i32, i32* %8, align 4, !dbg !1381
  %45 = sext i32 %44 to i64, !dbg !1378
  %46 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %43, i64 %45, !dbg !1378
  %47 = load %struct.residue_t*, %struct.residue_t** %46, align 8, !dbg !1378
  store %struct.residue_t* %47, %struct.residue_t** %10, align 8, !dbg !1382
  %48 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1383
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %48, i32 0, i32 6, !dbg !1384
  %50 = load i32, i32* %49, align 8, !dbg !1384
  %51 = load i32, i32* %6, align 4, !dbg !1385
  %52 = and i32 %50, %51, !dbg !1386
  %53 = icmp ne i32 %52, 0, !dbg !1386
  br i1 %53, label %54, label %56, !dbg !1387

54:                                               ; preds = %40
  %55 = load i32, i32* %5, align 4, !dbg !1388
  br label %57, !dbg !1387

56:                                               ; preds = %40
  br label %57, !dbg !1387

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ], !dbg !1387
  %59 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1389
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i32 0, i32 6, !dbg !1390
  %61 = load i32, i32* %60, align 8, !dbg !1391
  %62 = or i32 %61, %58, !dbg !1391
  store i32 %62, i32* %60, align 8, !dbg !1391
  store i32 0, i32* %7, align 4, !dbg !1392
  br label %63, !dbg !1394

63:                                               ; preds = %91, %57
  %64 = load i32, i32* %7, align 4, !dbg !1395
  %65 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1397
  %66 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %65, i32 0, i32 15, !dbg !1398
  %67 = load i32, i32* %66, align 8, !dbg !1398
  %68 = icmp slt i32 %64, %67, !dbg !1399
  br i1 %68, label %69, label %94, !dbg !1400

69:                                               ; preds = %63
  %70 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1401
  %71 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %70, i32 0, i32 17, !dbg !1403
  %72 = load %struct.atom_t*, %struct.atom_t** %71, align 8, !dbg !1403
  %73 = load i32, i32* %7, align 4, !dbg !1404
  %74 = sext i32 %73 to i64, !dbg !1401
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %72, i64 %74, !dbg !1401
  store %struct.atom_t* %75, %struct.atom_t** %11, align 8, !dbg !1405
  %76 = load %struct.atom_t*, %struct.atom_t** %11, align 8, !dbg !1406
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i32 0, i32 2, !dbg !1407
  %78 = load i32, i32* %77, align 8, !dbg !1407
  %79 = load i32, i32* %6, align 4, !dbg !1408
  %80 = and i32 %78, %79, !dbg !1409
  %81 = icmp ne i32 %80, 0, !dbg !1409
  br i1 %81, label %82, label %84, !dbg !1410

82:                                               ; preds = %69
  %83 = load i32, i32* %5, align 4, !dbg !1411
  br label %85, !dbg !1410

84:                                               ; preds = %69
  br label %85, !dbg !1410

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ], !dbg !1410
  %87 = load %struct.atom_t*, %struct.atom_t** %11, align 8, !dbg !1412
  %88 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i32 0, i32 2, !dbg !1413
  %89 = load i32, i32* %88, align 8, !dbg !1414
  %90 = or i32 %89, %86, !dbg !1414
  store i32 %90, i32* %88, align 8, !dbg !1414
  br label %91, !dbg !1415

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4, !dbg !1416
  %93 = add nsw i32 %92, 1, !dbg !1416
  store i32 %93, i32* %7, align 4, !dbg !1416
  br label %63, !dbg !1417, !llvm.loop !1418

94:                                               ; preds = %63
  br label %95, !dbg !1420

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4, !dbg !1421
  %97 = add nsw i32 %96, 1, !dbg !1421
  store i32 %97, i32* %8, align 4, !dbg !1421
  br label %34, !dbg !1422, !llvm.loop !1423

98:                                               ; preds = %34
  br label %99, !dbg !1425

99:                                               ; preds = %98
  %100 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1426
  %101 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %100, i32 0, i32 4, !dbg !1427
  %102 = load %struct.strand_t*, %struct.strand_t** %101, align 8, !dbg !1427
  store %struct.strand_t* %102, %struct.strand_t** %9, align 8, !dbg !1428
  br label %15, !dbg !1429, !llvm.loop !1430

103:                                              ; preds = %15
  ret void, !dbg !1432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_attr(%struct.molecule_t* %0, i32 %1) #0 !dbg !1433 {
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strand_t*, align 8
  %8 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %3, metadata !1436, metadata !DIExpression()), !dbg !1437
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1438, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1440, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1442, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.declare(metadata %struct.strand_t** %7, metadata !1444, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.declare(metadata %struct.residue_t** %8, metadata !1446, metadata !DIExpression()), !dbg !1447
  %9 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1448
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i32 0, i32 2, !dbg !1450
  %11 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !1450
  store %struct.strand_t* %11, %struct.strand_t** %7, align 8, !dbg !1451
  br label %12, !dbg !1452

12:                                               ; preds = %68, %2
  %13 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1453
  %14 = icmp ne %struct.strand_t* %13, null, !dbg !1455
  br i1 %14, label %15, label %72, !dbg !1455

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4, !dbg !1456
  %17 = xor i32 %16, -1, !dbg !1458
  %18 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1459
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %18, i32 0, i32 2, !dbg !1460
  %20 = load i32, i32* %19, align 4, !dbg !1461
  %21 = and i32 %20, %17, !dbg !1461
  store i32 %21, i32* %19, align 4, !dbg !1461
  store i32 0, i32* %6, align 4, !dbg !1462
  br label %22, !dbg !1464

22:                                               ; preds = %64, %15
  %23 = load i32, i32* %6, align 4, !dbg !1465
  %24 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1467
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i32 0, i32 5, !dbg !1468
  %26 = load i32, i32* %25, align 8, !dbg !1468
  %27 = icmp slt i32 %23, %26, !dbg !1469
  br i1 %27, label %28, label %67, !dbg !1470

28:                                               ; preds = %22
  %29 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1471
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %29, i32 0, i32 7, !dbg !1473
  %31 = load %struct.residue_t**, %struct.residue_t*** %30, align 8, !dbg !1473
  %32 = load i32, i32* %6, align 4, !dbg !1474
  %33 = sext i32 %32 to i64, !dbg !1471
  %34 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %31, i64 %33, !dbg !1471
  %35 = load %struct.residue_t*, %struct.residue_t** %34, align 8, !dbg !1471
  store %struct.residue_t* %35, %struct.residue_t** %8, align 8, !dbg !1475
  %36 = load i32, i32* %4, align 4, !dbg !1476
  %37 = xor i32 %36, -1, !dbg !1477
  %38 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !1478
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %38, i32 0, i32 6, !dbg !1479
  %40 = load i32, i32* %39, align 8, !dbg !1480
  %41 = and i32 %40, %37, !dbg !1480
  store i32 %41, i32* %39, align 8, !dbg !1480
  store i32 0, i32* %5, align 4, !dbg !1481
  br label %42, !dbg !1483

42:                                               ; preds = %60, %28
  %43 = load i32, i32* %5, align 4, !dbg !1484
  %44 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !1486
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %44, i32 0, i32 15, !dbg !1487
  %46 = load i32, i32* %45, align 8, !dbg !1487
  %47 = icmp slt i32 %43, %46, !dbg !1488
  br i1 %47, label %48, label %63, !dbg !1489

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4, !dbg !1490
  %50 = xor i32 %49, -1, !dbg !1491
  %51 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !1492
  %52 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %51, i32 0, i32 17, !dbg !1493
  %53 = load %struct.atom_t*, %struct.atom_t** %52, align 8, !dbg !1493
  %54 = load i32, i32* %5, align 4, !dbg !1494
  %55 = sext i32 %54 to i64, !dbg !1492
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %53, i64 %55, !dbg !1492
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %56, i32 0, i32 2, !dbg !1495
  %58 = load i32, i32* %57, align 8, !dbg !1496
  %59 = and i32 %58, %50, !dbg !1496
  store i32 %59, i32* %57, align 8, !dbg !1496
  br label %60, !dbg !1492

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4, !dbg !1497
  %62 = add nsw i32 %61, 1, !dbg !1497
  store i32 %62, i32* %5, align 4, !dbg !1497
  br label %42, !dbg !1498, !llvm.loop !1499

63:                                               ; preds = %42
  br label %64, !dbg !1501

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4, !dbg !1502
  %66 = add nsw i32 %65, 1, !dbg !1502
  store i32 %66, i32* %6, align 4, !dbg !1502
  br label %22, !dbg !1503, !llvm.loop !1504

67:                                               ; preds = %22
  br label %68, !dbg !1506

68:                                               ; preds = %67
  %69 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1507
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %69, i32 0, i32 4, !dbg !1508
  %71 = load %struct.strand_t*, %struct.strand_t** %70, align 8, !dbg !1508
  store %struct.strand_t* %71, %struct.strand_t** %7, align 8, !dbg !1509
  br label %12, !dbg !1510, !llvm.loop !1511

72:                                               ; preds = %12
  ret void, !dbg !1513
}

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_pattern(i8* %0, i32* %1, i32* %2) #0 !dbg !1514 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1518, metadata !DIExpression()), !dbg !1519
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1524, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1526, metadata !DIExpression()), !dbg !1527
  %10 = call i16** @__ctype_b_loc() #8, !dbg !1528
  %11 = load i16*, i16** %10, align 8, !dbg !1528
  %12 = load i8*, i8** %5, align 8, !dbg !1528
  %13 = load i8, i8* %12, align 1, !dbg !1528
  %14 = sext i8 %13 to i32, !dbg !1528
  %15 = sext i32 %14 to i64, !dbg !1528
  %16 = getelementptr inbounds i16, i16* %11, i64 %15, !dbg !1528
  %17 = load i16, i16* %16, align 2, !dbg !1528
  %18 = zext i16 %17 to i32, !dbg !1528
  %19 = and i32 %18, 2048, !dbg !1528
  %20 = icmp ne i32 %19, 0, !dbg !1528
  br i1 %20, label %27, label %21, !dbg !1530

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8, !dbg !1531
  %23 = load i8, i8* %22, align 1, !dbg !1532
  %24 = sext i8 %23 to i32, !dbg !1532
  %25 = icmp ne i32 %24, 45, !dbg !1533
  br i1 %25, label %26, label %27, !dbg !1534

26:                                               ; preds = %21
  store i32 1, i32* %4, align 4, !dbg !1535
  br label %187, !dbg !1535

27:                                               ; preds = %21, %3
  %28 = call i16** @__ctype_b_loc() #8, !dbg !1536
  %29 = load i16*, i16** %28, align 8, !dbg !1536
  %30 = load i8*, i8** %5, align 8, !dbg !1536
  %31 = load i8, i8* %30, align 1, !dbg !1536
  %32 = sext i8 %31 to i32, !dbg !1536
  %33 = sext i32 %32 to i64, !dbg !1536
  %34 = getelementptr inbounds i16, i16* %29, i64 %33, !dbg !1536
  %35 = load i16, i16* %34, align 2, !dbg !1536
  %36 = zext i16 %35 to i32, !dbg !1536
  %37 = and i32 %36, 2048, !dbg !1536
  %38 = icmp ne i32 %37, 0, !dbg !1536
  br i1 %38, label %39, label %133, !dbg !1538

39:                                               ; preds = %27
  store i32 0, i32* %8, align 4, !dbg !1539
  %40 = load i8*, i8** %5, align 8, !dbg !1542
  store i8* %40, i8** %9, align 8, !dbg !1543
  br label %41, !dbg !1544

41:                                               ; preds = %61, %39
  %42 = call i16** @__ctype_b_loc() #8, !dbg !1545
  %43 = load i16*, i16** %42, align 8, !dbg !1545
  %44 = load i8*, i8** %9, align 8, !dbg !1545
  %45 = load i8, i8* %44, align 1, !dbg !1545
  %46 = sext i8 %45 to i32, !dbg !1545
  %47 = sext i32 %46 to i64, !dbg !1545
  %48 = getelementptr inbounds i16, i16* %43, i64 %47, !dbg !1545
  %49 = load i16, i16* %48, align 2, !dbg !1545
  %50 = zext i16 %49 to i32, !dbg !1545
  %51 = and i32 %50, 2048, !dbg !1545
  %52 = icmp ne i32 %51, 0, !dbg !1547
  br i1 %52, label %53, label %64, !dbg !1547

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4, !dbg !1548
  %55 = mul nsw i32 10, %54, !dbg !1549
  %56 = load i8*, i8** %9, align 8, !dbg !1550
  %57 = load i8, i8* %56, align 1, !dbg !1551
  %58 = sext i8 %57 to i32, !dbg !1551
  %59 = add nsw i32 %55, %58, !dbg !1552
  %60 = sub nsw i32 %59, 48, !dbg !1553
  store i32 %60, i32* %8, align 4, !dbg !1554
  br label %61, !dbg !1555

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8, !dbg !1556
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !1556
  store i8* %63, i8** %9, align 8, !dbg !1556
  br label %41, !dbg !1557, !llvm.loop !1558

64:                                               ; preds = %41
  %65 = load i32, i32* %8, align 4, !dbg !1560
  %66 = load i32*, i32** %6, align 8, !dbg !1561
  store i32 %65, i32* %66, align 4, !dbg !1562
  %67 = load i8*, i8** %9, align 8, !dbg !1563
  %68 = load i8, i8* %67, align 1, !dbg !1565
  %69 = icmp ne i8 %68, 0, !dbg !1565
  br i1 %69, label %74, label %70, !dbg !1566

70:                                               ; preds = %64
  %71 = load i32*, i32** %6, align 8, !dbg !1567
  %72 = load i32, i32* %71, align 4, !dbg !1569
  %73 = load i32*, i32** %7, align 8, !dbg !1570
  store i32 %72, i32* %73, align 4, !dbg !1571
  store i32 0, i32* %4, align 4, !dbg !1572
  br label %187, !dbg !1572

74:                                               ; preds = %64
  %75 = load i8*, i8** %9, align 8, !dbg !1573
  %76 = load i8, i8* %75, align 1, !dbg !1575
  %77 = sext i8 %76 to i32, !dbg !1575
  %78 = icmp eq i32 %77, 45, !dbg !1576
  br i1 %78, label %79, label %82, !dbg !1577

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8, !dbg !1578
  %81 = getelementptr inbounds i8, i8* %80, i32 1, !dbg !1578
  store i8* %81, i8** %9, align 8, !dbg !1578
  br label %82, !dbg !1579

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** %9, align 8, !dbg !1580
  %85 = load i8, i8* %84, align 1, !dbg !1582
  %86 = icmp ne i8 %85, 0, !dbg !1582
  br i1 %86, label %89, label %87, !dbg !1583

87:                                               ; preds = %83
  %88 = load i32*, i32** %7, align 8, !dbg !1584
  store i32 -1, i32* %88, align 4, !dbg !1586
  store i32 0, i32* %4, align 4, !dbg !1587
  br label %187, !dbg !1587

89:                                               ; preds = %83
  %90 = call i16** @__ctype_b_loc() #8, !dbg !1588
  %91 = load i16*, i16** %90, align 8, !dbg !1588
  %92 = load i8*, i8** %9, align 8, !dbg !1588
  %93 = load i8, i8* %92, align 1, !dbg !1588
  %94 = sext i8 %93 to i32, !dbg !1588
  %95 = sext i32 %94 to i64, !dbg !1588
  %96 = getelementptr inbounds i16, i16* %91, i64 %95, !dbg !1588
  %97 = load i16, i16* %96, align 2, !dbg !1588
  %98 = zext i16 %97 to i32, !dbg !1588
  %99 = and i32 %98, 2048, !dbg !1588
  %100 = icmp ne i32 %99, 0, !dbg !1588
  br i1 %100, label %102, label %101, !dbg !1590

101:                                              ; preds = %89
  store i32 1, i32* %4, align 4, !dbg !1591
  br label %187, !dbg !1591

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102
  store i32 0, i32* %8, align 4, !dbg !1592
  br label %104, !dbg !1594

104:                                              ; preds = %124, %103
  %105 = call i16** @__ctype_b_loc() #8, !dbg !1595
  %106 = load i16*, i16** %105, align 8, !dbg !1595
  %107 = load i8*, i8** %9, align 8, !dbg !1595
  %108 = load i8, i8* %107, align 1, !dbg !1595
  %109 = sext i8 %108 to i32, !dbg !1595
  %110 = sext i32 %109 to i64, !dbg !1595
  %111 = getelementptr inbounds i16, i16* %106, i64 %110, !dbg !1595
  %112 = load i16, i16* %111, align 2, !dbg !1595
  %113 = zext i16 %112 to i32, !dbg !1595
  %114 = and i32 %113, 2048, !dbg !1595
  %115 = icmp ne i32 %114, 0, !dbg !1597
  br i1 %115, label %116, label %127, !dbg !1597

116:                                              ; preds = %104
  %117 = load i32, i32* %8, align 4, !dbg !1598
  %118 = mul nsw i32 10, %117, !dbg !1599
  %119 = load i8*, i8** %9, align 8, !dbg !1600
  %120 = load i8, i8* %119, align 1, !dbg !1601
  %121 = sext i8 %120 to i32, !dbg !1601
  %122 = add nsw i32 %118, %121, !dbg !1602
  %123 = sub nsw i32 %122, 48, !dbg !1603
  store i32 %123, i32* %8, align 4, !dbg !1604
  br label %124, !dbg !1605

124:                                              ; preds = %116
  %125 = load i8*, i8** %9, align 8, !dbg !1606
  %126 = getelementptr inbounds i8, i8* %125, i32 1, !dbg !1606
  store i8* %126, i8** %9, align 8, !dbg !1606
  br label %104, !dbg !1607, !llvm.loop !1608

127:                                              ; preds = %104
  %128 = load i32, i32* %8, align 4, !dbg !1610
  %129 = load i32*, i32** %7, align 8, !dbg !1611
  store i32 %128, i32* %129, align 4, !dbg !1612
  %130 = load i8*, i8** %9, align 8, !dbg !1613
  %131 = load i8, i8* %130, align 1, !dbg !1614
  %132 = sext i8 %131 to i32, !dbg !1615
  store i32 %132, i32* %4, align 4, !dbg !1616
  br label %187, !dbg !1616

133:                                              ; preds = %27
  %134 = load i32*, i32** %6, align 8, !dbg !1617
  store i32 1, i32* %134, align 4, !dbg !1619
  %135 = load i8*, i8** %5, align 8, !dbg !1620
  %136 = getelementptr inbounds i8, i8* %135, i64 1, !dbg !1620
  store i8* %136, i8** %9, align 8, !dbg !1621
  br label %137

137:                                              ; preds = %133
  %138 = load i8*, i8** %9, align 8, !dbg !1622
  %139 = load i8, i8* %138, align 1, !dbg !1624
  %140 = icmp ne i8 %139, 0, !dbg !1624
  br i1 %140, label %143, label %141, !dbg !1625

141:                                              ; preds = %137
  %142 = load i32*, i32** %7, align 8, !dbg !1626
  store i32 -1, i32* %142, align 4, !dbg !1628
  store i32 0, i32* %4, align 4, !dbg !1629
  br label %187, !dbg !1629

143:                                              ; preds = %137
  %144 = call i16** @__ctype_b_loc() #8, !dbg !1630
  %145 = load i16*, i16** %144, align 8, !dbg !1630
  %146 = load i8*, i8** %9, align 8, !dbg !1630
  %147 = load i8, i8* %146, align 1, !dbg !1630
  %148 = sext i8 %147 to i32, !dbg !1630
  %149 = sext i32 %148 to i64, !dbg !1630
  %150 = getelementptr inbounds i16, i16* %145, i64 %149, !dbg !1630
  %151 = load i16, i16* %150, align 2, !dbg !1630
  %152 = zext i16 %151 to i32, !dbg !1630
  %153 = and i32 %152, 2048, !dbg !1630
  %154 = icmp ne i32 %153, 0, !dbg !1630
  br i1 %154, label %155, label %185, !dbg !1632

155:                                              ; preds = %143
  store i32 0, i32* %8, align 4, !dbg !1633
  br label %156, !dbg !1636

156:                                              ; preds = %176, %155
  %157 = call i16** @__ctype_b_loc() #8, !dbg !1637
  %158 = load i16*, i16** %157, align 8, !dbg !1637
  %159 = load i8*, i8** %9, align 8, !dbg !1637
  %160 = load i8, i8* %159, align 1, !dbg !1637
  %161 = sext i8 %160 to i32, !dbg !1637
  %162 = sext i32 %161 to i64, !dbg !1637
  %163 = getelementptr inbounds i16, i16* %158, i64 %162, !dbg !1637
  %164 = load i16, i16* %163, align 2, !dbg !1637
  %165 = zext i16 %164 to i32, !dbg !1637
  %166 = and i32 %165, 2048, !dbg !1637
  %167 = icmp ne i32 %166, 0, !dbg !1639
  br i1 %167, label %168, label %179, !dbg !1639

168:                                              ; preds = %156
  %169 = load i32, i32* %8, align 4, !dbg !1640
  %170 = mul nsw i32 10, %169, !dbg !1641
  %171 = load i8*, i8** %9, align 8, !dbg !1642
  %172 = load i8, i8* %171, align 1, !dbg !1643
  %173 = sext i8 %172 to i32, !dbg !1643
  %174 = add nsw i32 %170, %173, !dbg !1644
  %175 = sub nsw i32 %174, 48, !dbg !1645
  store i32 %175, i32* %8, align 4, !dbg !1646
  br label %176, !dbg !1647

176:                                              ; preds = %168
  %177 = load i8*, i8** %9, align 8, !dbg !1648
  %178 = getelementptr inbounds i8, i8* %177, i32 1, !dbg !1648
  store i8* %178, i8** %9, align 8, !dbg !1648
  br label %156, !dbg !1649, !llvm.loop !1650

179:                                              ; preds = %156
  %180 = load i32, i32* %8, align 4, !dbg !1652
  %181 = load i32*, i32** %7, align 8, !dbg !1653
  store i32 %180, i32* %181, align 4, !dbg !1654
  %182 = load i8*, i8** %9, align 8, !dbg !1655
  %183 = load i8, i8* %182, align 1, !dbg !1656
  %184 = sext i8 %183 to i32, !dbg !1657
  store i32 %184, i32* %4, align 4, !dbg !1658
  br label %187, !dbg !1658

185:                                              ; preds = %143
  br label %186

186:                                              ; preds = %185
  store i32 0, i32* %4, align 4, !dbg !1659
  br label %187, !dbg !1659

187:                                              ; preds = %186, %179, %141, %127, %101, %87, %70, %26
  %188 = load i32, i32* %4, align 4, !dbg !1660
  ret i32 %188, !dbg !1660
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_str_pat(%struct.molecule_t* %0, i8* %1) #0 !dbg !1661 {
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strand_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %3, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1666, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.declare(metadata %struct.strand_t** %5, metadata !1668, metadata !DIExpression()), !dbg !1669
  %6 = load i8*, i8** %4, align 8, !dbg !1670
  call void @aexpr2rexpr(i8* %6, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1671
  %7 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !1672
  %8 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1673
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %8, i32 0, i32 2, !dbg !1675
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1675
  store %struct.strand_t* %10, %struct.strand_t** %5, align 8, !dbg !1676
  br label %11, !dbg !1677

11:                                               ; preds = %26, %2
  %12 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !1678
  %13 = icmp ne %struct.strand_t* %12, null, !dbg !1680
  br i1 %13, label %14, label %30, !dbg !1680

14:                                               ; preds = %11
  %15 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !1681
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i32 0, i32 0, !dbg !1683
  %17 = load i8*, i8** %16, align 8, !dbg !1683
  %18 = call i32 @step(i8* %17, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !1684
  %19 = icmp ne i32 %18, 0, !dbg !1684
  %20 = zext i1 %19 to i64, !dbg !1684
  %21 = select i1 %19, i32 1, i32 0, !dbg !1684
  %22 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !1685
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %22, i32 0, i32 2, !dbg !1686
  %24 = load i32, i32* %23, align 4, !dbg !1687
  %25 = or i32 %24, %21, !dbg !1687
  store i32 %25, i32* %23, align 4, !dbg !1687
  br label %26, !dbg !1688

26:                                               ; preds = %14
  %27 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !1689
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %27, i32 0, i32 4, !dbg !1690
  %29 = load %struct.strand_t*, %struct.strand_t** %28, align 8, !dbg !1690
  store %struct.strand_t* %29, %struct.strand_t** %5, align 8, !dbg !1691
  br label %11, !dbg !1692, !llvm.loop !1693

30:                                               ; preds = %11
  ret void, !dbg !1695
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_str_range(%struct.molecule_t* %0, i32 %1, i32 %2) #0 !dbg !1696 {
  %4 = alloca %struct.molecule_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.strand_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %4, metadata !1697, metadata !DIExpression()), !dbg !1698
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1699, metadata !DIExpression()), !dbg !1700
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1701, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1703, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.declare(metadata %struct.strand_t** %8, metadata !1705, metadata !DIExpression()), !dbg !1706
  %9 = load i32, i32* %6, align 4, !dbg !1707
  %10 = icmp eq i32 %9, -1, !dbg !1709
  br i1 %10, label %11, label %15, !dbg !1710

11:                                               ; preds = %3
  %12 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !1711
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %12, i32 0, i32 1, !dbg !1712
  %14 = load i32, i32* %13, align 8, !dbg !1712
  store i32 %14, i32* %6, align 4, !dbg !1713
  br label %15, !dbg !1714

15:                                               ; preds = %11, %3
  store i32 1, i32* %7, align 4, !dbg !1715
  %16 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !1717
  %17 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %16, i32 0, i32 2, !dbg !1718
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8, !dbg !1718
  store %struct.strand_t* %18, %struct.strand_t** %8, align 8, !dbg !1719
  br label %19, !dbg !1720

19:                                               ; preds = %39, %15
  %20 = load i32, i32* %7, align 4, !dbg !1721
  %21 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !1723
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %21, i32 0, i32 1, !dbg !1724
  %23 = load i32, i32* %22, align 8, !dbg !1724
  %24 = icmp sle i32 %20, %23, !dbg !1725
  br i1 %24, label %25, label %45, !dbg !1726

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4, !dbg !1727
  %27 = load i32, i32* %7, align 4, !dbg !1730
  %28 = icmp sle i32 %26, %27, !dbg !1731
  br i1 %28, label %29, label %38, !dbg !1732

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4, !dbg !1733
  %31 = load i32, i32* %6, align 4, !dbg !1734
  %32 = icmp sle i32 %30, %31, !dbg !1735
  br i1 %32, label %33, label %38, !dbg !1736

33:                                               ; preds = %29
  %34 = load %struct.strand_t*, %struct.strand_t** %8, align 8, !dbg !1737
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %34, i32 0, i32 2, !dbg !1738
  %36 = load i32, i32* %35, align 4, !dbg !1739
  %37 = or i32 %36, 1, !dbg !1739
  store i32 %37, i32* %35, align 4, !dbg !1739
  br label %38, !dbg !1737

38:                                               ; preds = %33, %29, %25
  br label %39, !dbg !1740

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4, !dbg !1741
  %41 = add nsw i32 %40, 1, !dbg !1741
  store i32 %41, i32* %7, align 4, !dbg !1741
  %42 = load %struct.strand_t*, %struct.strand_t** %8, align 8, !dbg !1742
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %42, i32 0, i32 4, !dbg !1743
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8, !dbg !1743
  store %struct.strand_t* %44, %struct.strand_t** %8, align 8, !dbg !1744
  br label %19, !dbg !1745, !llvm.loop !1746

45:                                               ; preds = %19
  ret void, !dbg !1748
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_res_pat(%struct.molecule_t* %0, i8* %1) #0 !dbg !1749 {
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strand_t*, align 8
  %7 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %3, metadata !1750, metadata !DIExpression()), !dbg !1751
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1752, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.declare(metadata %struct.strand_t** %6, metadata !1756, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.declare(metadata %struct.residue_t** %7, metadata !1758, metadata !DIExpression()), !dbg !1759
  %8 = load i8*, i8** %4, align 8, !dbg !1760
  call void @aexpr2rexpr(i8* %8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1761
  %9 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !1762
  %10 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1763
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %10, i32 0, i32 2, !dbg !1765
  %12 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !1765
  store %struct.strand_t* %12, %struct.strand_t** %6, align 8, !dbg !1766
  br label %13, !dbg !1767

13:                                               ; preds = %53, %2
  %14 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1768
  %15 = icmp ne %struct.strand_t* %14, null, !dbg !1770
  br i1 %15, label %16, label %57, !dbg !1770

16:                                               ; preds = %13
  %17 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1771
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i32 0, i32 2, !dbg !1774
  %19 = load i32, i32* %18, align 4, !dbg !1774
  %20 = and i32 1, %19, !dbg !1775
  %21 = icmp ne i32 %20, 0, !dbg !1775
  br i1 %21, label %22, label %52, !dbg !1776

22:                                               ; preds = %16
  store i32 0, i32* %5, align 4, !dbg !1777
  br label %23, !dbg !1780

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %5, align 4, !dbg !1781
  %25 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1783
  %26 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %25, i32 0, i32 5, !dbg !1784
  %27 = load i32, i32* %26, align 8, !dbg !1784
  %28 = icmp slt i32 %24, %27, !dbg !1785
  br i1 %28, label %29, label %51, !dbg !1786

29:                                               ; preds = %23
  %30 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1787
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %30, i32 0, i32 7, !dbg !1789
  %32 = load %struct.residue_t**, %struct.residue_t*** %31, align 8, !dbg !1789
  %33 = load i32, i32* %5, align 4, !dbg !1790
  %34 = sext i32 %33 to i64, !dbg !1787
  %35 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %32, i64 %34, !dbg !1787
  %36 = load %struct.residue_t*, %struct.residue_t** %35, align 8, !dbg !1787
  store %struct.residue_t* %36, %struct.residue_t** %7, align 8, !dbg !1791
  %37 = load %struct.residue_t*, %struct.residue_t** %7, align 8, !dbg !1792
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %37, i32 0, i32 4, !dbg !1793
  %39 = load i8*, i8** %38, align 8, !dbg !1793
  %40 = call i32 @step(i8* %39, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !1794
  %41 = icmp ne i32 %40, 0, !dbg !1794
  %42 = zext i1 %41 to i64, !dbg !1794
  %43 = select i1 %41, i32 1, i32 0, !dbg !1794
  %44 = load %struct.residue_t*, %struct.residue_t** %7, align 8, !dbg !1795
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %44, i32 0, i32 6, !dbg !1796
  %46 = load i32, i32* %45, align 8, !dbg !1797
  %47 = or i32 %46, %43, !dbg !1797
  store i32 %47, i32* %45, align 8, !dbg !1797
  br label %48, !dbg !1798

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4, !dbg !1799
  %50 = add nsw i32 %49, 1, !dbg !1799
  store i32 %50, i32* %5, align 4, !dbg !1799
  br label %23, !dbg !1800, !llvm.loop !1801

51:                                               ; preds = %23
  br label %52, !dbg !1803

52:                                               ; preds = %51, %16
  br label %53, !dbg !1804

53:                                               ; preds = %52
  %54 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1805
  %55 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %54, i32 0, i32 4, !dbg !1806
  %56 = load %struct.strand_t*, %struct.strand_t** %55, align 8, !dbg !1806
  store %struct.strand_t* %56, %struct.strand_t** %6, align 8, !dbg !1807
  br label %13, !dbg !1808, !llvm.loop !1809

57:                                               ; preds = %13
  ret void, !dbg !1811
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_res_range(%struct.molecule_t* %0, i32 %1, i32 %2) #0 !dbg !1812 {
  %4 = alloca %struct.molecule_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strand_t*, align 8
  %10 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %4, metadata !1813, metadata !DIExpression()), !dbg !1814
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1815, metadata !DIExpression()), !dbg !1816
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1817, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1819, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1821, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.declare(metadata %struct.strand_t** %9, metadata !1823, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.declare(metadata %struct.residue_t** %10, metadata !1825, metadata !DIExpression()), !dbg !1826
  %11 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8, !dbg !1827
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %11, i32 0, i32 2, !dbg !1829
  %13 = load %struct.strand_t*, %struct.strand_t** %12, align 8, !dbg !1829
  store %struct.strand_t* %13, %struct.strand_t** %9, align 8, !dbg !1830
  br label %14, !dbg !1831

14:                                               ; preds = %68, %3
  %15 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1832
  %16 = icmp ne %struct.strand_t* %15, null, !dbg !1834
  br i1 %16, label %17, label %72, !dbg !1834

17:                                               ; preds = %14
  %18 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1835
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %18, i32 0, i32 2, !dbg !1838
  %20 = load i32, i32* %19, align 4, !dbg !1838
  %21 = and i32 1, %20, !dbg !1839
  %22 = icmp ne i32 %21, 0, !dbg !1839
  br i1 %22, label %23, label %67, !dbg !1840

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4, !dbg !1841
  %25 = icmp eq i32 %24, -1, !dbg !1843
  br i1 %25, label %26, label %30, !dbg !1844

26:                                               ; preds = %23
  %27 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1845
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %27, i32 0, i32 5, !dbg !1846
  %29 = load i32, i32* %28, align 8, !dbg !1846
  br label %32, !dbg !1844

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4, !dbg !1847
  br label %32, !dbg !1844

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %29, %26 ], [ %31, %30 ], !dbg !1844
  store i32 %33, i32* %8, align 4, !dbg !1848
  store i32 0, i32* %7, align 4, !dbg !1849
  br label %34, !dbg !1851

34:                                               ; preds = %63, %32
  %35 = load i32, i32* %7, align 4, !dbg !1852
  %36 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1854
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %36, i32 0, i32 5, !dbg !1855
  %38 = load i32, i32* %37, align 8, !dbg !1855
  %39 = icmp slt i32 %35, %38, !dbg !1856
  br i1 %39, label %40, label %66, !dbg !1857

40:                                               ; preds = %34
  %41 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1858
  %42 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %41, i32 0, i32 7, !dbg !1860
  %43 = load %struct.residue_t**, %struct.residue_t*** %42, align 8, !dbg !1860
  %44 = load i32, i32* %7, align 4, !dbg !1861
  %45 = sext i32 %44 to i64, !dbg !1858
  %46 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %43, i64 %45, !dbg !1858
  %47 = load %struct.residue_t*, %struct.residue_t** %46, align 8, !dbg !1858
  store %struct.residue_t* %47, %struct.residue_t** %10, align 8, !dbg !1862
  %48 = load i32, i32* %5, align 4, !dbg !1863
  %49 = load i32, i32* %7, align 4, !dbg !1865
  %50 = add nsw i32 %49, 1, !dbg !1866
  %51 = icmp sle i32 %48, %50, !dbg !1867
  br i1 %51, label %52, label %62, !dbg !1868

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4, !dbg !1869
  %54 = add nsw i32 %53, 1, !dbg !1870
  %55 = load i32, i32* %8, align 4, !dbg !1871
  %56 = icmp sle i32 %54, %55, !dbg !1872
  br i1 %56, label %57, label %62, !dbg !1873

57:                                               ; preds = %52
  %58 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !1874
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %58, i32 0, i32 6, !dbg !1875
  %60 = load i32, i32* %59, align 8, !dbg !1876
  %61 = or i32 %60, 1, !dbg !1876
  store i32 %61, i32* %59, align 8, !dbg !1876
  br label %62, !dbg !1874

62:                                               ; preds = %57, %52, %40
  br label %63, !dbg !1877

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4, !dbg !1878
  %65 = add nsw i32 %64, 1, !dbg !1878
  store i32 %65, i32* %7, align 4, !dbg !1878
  br label %34, !dbg !1879, !llvm.loop !1880

66:                                               ; preds = %34
  br label %67, !dbg !1882

67:                                               ; preds = %66, %17
  br label %68, !dbg !1883

68:                                               ; preds = %67
  %69 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1884
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %69, i32 0, i32 4, !dbg !1885
  %71 = load %struct.strand_t*, %struct.strand_t** %70, align 8, !dbg !1885
  store %struct.strand_t* %71, %struct.strand_t** %9, align 8, !dbg !1886
  br label %14, !dbg !1887, !llvm.loop !1888

72:                                               ; preds = %14
  ret void, !dbg !1890
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_atom_pat(%struct.molecule_t* %0, i8* %1) #0 !dbg !1891 {
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strand_t*, align 8
  %8 = alloca %struct.residue_t*, align 8
  %9 = alloca %struct.atom_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %3, metadata !1892, metadata !DIExpression()), !dbg !1893
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1894, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1896, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1898, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.declare(metadata %struct.strand_t** %7, metadata !1900, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.declare(metadata %struct.residue_t** %8, metadata !1902, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.declare(metadata %struct.atom_t** %9, metadata !1904, metadata !DIExpression()), !dbg !1905
  %10 = load i8*, i8** %4, align 8, !dbg !1906
  call void @aexpr2rexpr(i8* %10, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !1907
  %11 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !1908
  %12 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1909
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %12, i32 0, i32 2, !dbg !1911
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1911
  store %struct.strand_t* %14, %struct.strand_t** %7, align 8, !dbg !1912
  br label %15, !dbg !1913

15:                                               ; preds = %79, %2
  %16 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1914
  %17 = icmp ne %struct.strand_t* %16, null, !dbg !1916
  br i1 %17, label %18, label %83, !dbg !1916

18:                                               ; preds = %15
  %19 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1917
  %20 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %19, i32 0, i32 2, !dbg !1920
  %21 = load i32, i32* %20, align 4, !dbg !1920
  %22 = and i32 1, %21, !dbg !1921
  %23 = icmp ne i32 %22, 0, !dbg !1921
  br i1 %23, label %24, label %78, !dbg !1922

24:                                               ; preds = %18
  store i32 0, i32* %5, align 4, !dbg !1923
  br label %25, !dbg !1926

25:                                               ; preds = %74, %24
  %26 = load i32, i32* %5, align 4, !dbg !1927
  %27 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1929
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %27, i32 0, i32 5, !dbg !1930
  %29 = load i32, i32* %28, align 8, !dbg !1930
  %30 = icmp slt i32 %26, %29, !dbg !1931
  br i1 %30, label %31, label %77, !dbg !1932

31:                                               ; preds = %25
  %32 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1933
  %33 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %32, i32 0, i32 7, !dbg !1935
  %34 = load %struct.residue_t**, %struct.residue_t*** %33, align 8, !dbg !1935
  %35 = load i32, i32* %5, align 4, !dbg !1936
  %36 = sext i32 %35 to i64, !dbg !1933
  %37 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %34, i64 %36, !dbg !1933
  %38 = load %struct.residue_t*, %struct.residue_t** %37, align 8, !dbg !1933
  store %struct.residue_t* %38, %struct.residue_t** %8, align 8, !dbg !1937
  %39 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !1938
  %40 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i32 0, i32 6, !dbg !1940
  %41 = load i32, i32* %40, align 8, !dbg !1940
  %42 = and i32 1, %41, !dbg !1941
  %43 = icmp ne i32 %42, 0, !dbg !1941
  br i1 %43, label %44, label %73, !dbg !1942

44:                                               ; preds = %31
  store i32 0, i32* %6, align 4, !dbg !1943
  br label %45, !dbg !1946

45:                                               ; preds = %69, %44
  %46 = load i32, i32* %6, align 4, !dbg !1947
  %47 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !1949
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i32 0, i32 15, !dbg !1950
  %49 = load i32, i32* %48, align 8, !dbg !1950
  %50 = icmp slt i32 %46, %49, !dbg !1951
  br i1 %50, label %51, label %72, !dbg !1952

51:                                               ; preds = %45
  %52 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !1953
  %53 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %52, i32 0, i32 17, !dbg !1955
  %54 = load %struct.atom_t*, %struct.atom_t** %53, align 8, !dbg !1955
  %55 = load i32, i32* %6, align 4, !dbg !1956
  %56 = sext i32 %55 to i64, !dbg !1953
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %54, i64 %56, !dbg !1953
  store %struct.atom_t* %57, %struct.atom_t** %9, align 8, !dbg !1957
  %58 = load %struct.atom_t*, %struct.atom_t** %9, align 8, !dbg !1958
  %59 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %58, i32 0, i32 0, !dbg !1959
  %60 = load i8*, i8** %59, align 8, !dbg !1959
  %61 = call i32 @step(i8* %60, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !1960
  %62 = icmp ne i32 %61, 0, !dbg !1960
  %63 = zext i1 %62 to i64, !dbg !1960
  %64 = select i1 %62, i32 1, i32 0, !dbg !1960
  %65 = load %struct.atom_t*, %struct.atom_t** %9, align 8, !dbg !1961
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i32 0, i32 2, !dbg !1962
  %67 = load i32, i32* %66, align 8, !dbg !1963
  %68 = or i32 %67, %64, !dbg !1963
  store i32 %68, i32* %66, align 8, !dbg !1963
  br label %69, !dbg !1964

69:                                               ; preds = %51
  %70 = load i32, i32* %6, align 4, !dbg !1965
  %71 = add nsw i32 %70, 1, !dbg !1965
  store i32 %71, i32* %6, align 4, !dbg !1965
  br label %45, !dbg !1966, !llvm.loop !1967

72:                                               ; preds = %45
  br label %73, !dbg !1969

73:                                               ; preds = %72, %31
  br label %74, !dbg !1970

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4, !dbg !1971
  %76 = add nsw i32 %75, 1, !dbg !1971
  store i32 %76, i32* %5, align 4, !dbg !1971
  br label %25, !dbg !1972, !llvm.loop !1973

77:                                               ; preds = %25
  br label %78, !dbg !1975

78:                                               ; preds = %77, %18
  br label %79, !dbg !1976

79:                                               ; preds = %78
  %80 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1977
  %81 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %80, i32 0, i32 4, !dbg !1978
  %82 = load %struct.strand_t*, %struct.strand_t** %81, align 8, !dbg !1978
  store %struct.strand_t* %82, %struct.strand_t** %7, align 8, !dbg !1979
  br label %15, !dbg !1980, !llvm.loop !1981

83:                                               ; preds = %15
  ret void, !dbg !1983
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aexpr2rexpr(i8* %0, i8* %1) #0 !dbg !1984 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1987, metadata !DIExpression()), !dbg !1988
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1989, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1991, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1993, metadata !DIExpression()), !dbg !1994
  %7 = load i8*, i8** %4, align 8, !dbg !1995
  store i8* %7, i8** %6, align 8, !dbg !1996
  %8 = load i8*, i8** %6, align 8, !dbg !1997
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !1997
  store i8* %9, i8** %6, align 8, !dbg !1997
  store i8 94, i8* %8, align 1, !dbg !1998
  %10 = load i8*, i8** %3, align 8, !dbg !1999
  store i8* %10, i8** %5, align 8, !dbg !2001
  br label %11, !dbg !2002

11:                                               ; preds = %40, %2
  %12 = load i8*, i8** %5, align 8, !dbg !2003
  %13 = load i8, i8* %12, align 1, !dbg !2005
  %14 = icmp ne i8 %13, 0, !dbg !2006
  br i1 %14, label %15, label %43, !dbg !2006

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8, !dbg !2007
  %17 = load i8, i8* %16, align 1, !dbg !2010
  %18 = sext i8 %17 to i32, !dbg !2010
  %19 = icmp eq i32 %18, 42, !dbg !2011
  br i1 %19, label %20, label %25, !dbg !2012

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8, !dbg !2013
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !2013
  store i8* %22, i8** %6, align 8, !dbg !2013
  store i8 46, i8* %21, align 1, !dbg !2015
  %23 = load i8*, i8** %6, align 8, !dbg !2016
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !2016
  store i8* %24, i8** %6, align 8, !dbg !2016
  store i8 42, i8* %23, align 1, !dbg !2017
  br label %39, !dbg !2018

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8, !dbg !2019
  %27 = load i8, i8* %26, align 1, !dbg !2021
  %28 = sext i8 %27 to i32, !dbg !2021
  %29 = icmp eq i32 %28, 63, !dbg !2022
  br i1 %29, label %30, label %33, !dbg !2023

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8, !dbg !2024
  %32 = getelementptr inbounds i8, i8* %31, i32 1, !dbg !2024
  store i8* %32, i8** %6, align 8, !dbg !2024
  store i8 46, i8* %31, align 1, !dbg !2025
  br label %38, !dbg !2026

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8, !dbg !2027
  %35 = load i8, i8* %34, align 1, !dbg !2028
  %36 = load i8*, i8** %6, align 8, !dbg !2029
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !2029
  store i8* %37, i8** %6, align 8, !dbg !2029
  store i8 %35, i8* %36, align 1, !dbg !2030
  br label %38

38:                                               ; preds = %33, %30
  br label %39

39:                                               ; preds = %38, %20
  br label %40, !dbg !2031

40:                                               ; preds = %39
  %41 = load i8*, i8** %5, align 8, !dbg !2032
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !2032
  store i8* %42, i8** %5, align 8, !dbg !2032
  br label %11, !dbg !2033, !llvm.loop !2034

43:                                               ; preds = %11
  %44 = load i8*, i8** %6, align 8, !dbg !2036
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !2036
  store i8* %45, i8** %6, align 8, !dbg !2036
  store i8 36, i8* %44, align 1, !dbg !2037
  %46 = load i8*, i8** %6, align 8, !dbg !2038
  store i8 0, i8* %46, align 1, !dbg !2039
  ret void, !dbg !2040
}

declare dso_local i8* @compile(i8*, i8*, i8*, i32) #2

declare dso_local i32 @step(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %1) #0 !dbg !2041 {
  %3 = alloca %struct.atom_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.residue_t*, align 8
  %6 = alloca %struct.strand_t*, align 8
  store %struct.atom_t* %0, %struct.atom_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.atom_t** %3, metadata !2042, metadata !DIExpression()), !dbg !2043
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2044, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.declare(metadata %struct.residue_t** %5, metadata !2046, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.declare(metadata %struct.strand_t** %6, metadata !2048, metadata !DIExpression()), !dbg !2049
  %7 = load %struct.atom_t*, %struct.atom_t** %3, align 8, !dbg !2050
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %7, i32 0, i32 5, !dbg !2051
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2051
  store %struct.residue_t* %9, %struct.residue_t** %5, align 8, !dbg !2052
  %10 = load %struct.residue_t*, %struct.residue_t** %5, align 8, !dbg !2053
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %10, i32 0, i32 9, !dbg !2054
  %12 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2054
  store %struct.strand_t* %12, %struct.strand_t** %6, align 8, !dbg !2055
  %13 = load i8*, i8** %4, align 8, !dbg !2056
  call void @aexpr2rexpr(i8* %13, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !2057
  %14 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !2058
  %15 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !2059
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i32 0, i32 0, !dbg !2060
  %17 = load i8*, i8** %16, align 8, !dbg !2060
  %18 = call i32 @step(i8* %17, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !2061
  ret i32 %18, !dbg !2062
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_str_range(%struct.atom_t* %0, i32 %1, i32 %2) #0 !dbg !2063 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.residue_t*, align 8
  %10 = alloca %struct.strand_t*, align 8
  %11 = alloca %struct.strand_t*, align 8
  %12 = alloca %struct.molecule_t*, align 8
  store %struct.atom_t* %0, %struct.atom_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.atom_t** %5, metadata !2066, metadata !DIExpression()), !dbg !2067
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2068, metadata !DIExpression()), !dbg !2069
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2070, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2072, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.declare(metadata %struct.residue_t** %9, metadata !2074, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.declare(metadata %struct.strand_t** %10, metadata !2076, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.declare(metadata %struct.strand_t** %11, metadata !2078, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %12, metadata !2080, metadata !DIExpression()), !dbg !2081
  %13 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2082
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i32 0, i32 5, !dbg !2083
  %15 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !2083
  store %struct.residue_t* %15, %struct.residue_t** %9, align 8, !dbg !2084
  %16 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !2085
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 9, !dbg !2086
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8, !dbg !2086
  store %struct.strand_t* %18, %struct.strand_t** %10, align 8, !dbg !2087
  %19 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2088
  %20 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %19, i32 0, i32 3, !dbg !2089
  %21 = load %struct.molecule_t*, %struct.molecule_t** %20, align 8, !dbg !2089
  store %struct.molecule_t* %21, %struct.molecule_t** %12, align 8, !dbg !2090
  %22 = load i32, i32* %7, align 4, !dbg !2091
  %23 = icmp eq i32 %22, -1, !dbg !2093
  br i1 %23, label %24, label %28, !dbg !2094

24:                                               ; preds = %3
  %25 = load %struct.molecule_t*, %struct.molecule_t** %12, align 8, !dbg !2095
  %26 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %25, i32 0, i32 1, !dbg !2096
  %27 = load i32, i32* %26, align 8, !dbg !2096
  store i32 %27, i32* %7, align 4, !dbg !2097
  br label %28, !dbg !2098

28:                                               ; preds = %24, %3
  store i32 1, i32* %8, align 4, !dbg !2099
  %29 = load %struct.molecule_t*, %struct.molecule_t** %12, align 8, !dbg !2101
  %30 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %29, i32 0, i32 2, !dbg !2102
  %31 = load %struct.strand_t*, %struct.strand_t** %30, align 8, !dbg !2102
  store %struct.strand_t* %31, %struct.strand_t** %11, align 8, !dbg !2103
  br label %32, !dbg !2104

32:                                               ; preds = %53, %28
  %33 = load i32, i32* %8, align 4, !dbg !2105
  %34 = load %struct.molecule_t*, %struct.molecule_t** %12, align 8, !dbg !2107
  %35 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %34, i32 0, i32 1, !dbg !2108
  %36 = load i32, i32* %35, align 8, !dbg !2108
  %37 = icmp sle i32 %33, %36, !dbg !2109
  br i1 %37, label %38, label %59, !dbg !2110

38:                                               ; preds = %32
  %39 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2111
  %40 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2114
  %41 = icmp eq %struct.strand_t* %39, %40, !dbg !2115
  br i1 %41, label %42, label %52, !dbg !2116

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4, !dbg !2117
  %44 = load i32, i32* %8, align 4, !dbg !2120
  %45 = icmp sle i32 %43, %44, !dbg !2121
  br i1 %45, label %46, label %51, !dbg !2122

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4, !dbg !2123
  %48 = load i32, i32* %7, align 4, !dbg !2124
  %49 = icmp sle i32 %47, %48, !dbg !2125
  br i1 %49, label %50, label %51, !dbg !2126

50:                                               ; preds = %46
  store i32 1, i32* %4, align 4, !dbg !2127
  br label %60, !dbg !2127

51:                                               ; preds = %46, %42
  br label %52, !dbg !2128

52:                                               ; preds = %51, %38
  br label %53, !dbg !2129

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4, !dbg !2130
  %55 = add nsw i32 %54, 1, !dbg !2130
  store i32 %55, i32* %8, align 4, !dbg !2130
  %56 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2131
  %57 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %56, i32 0, i32 4, !dbg !2132
  %58 = load %struct.strand_t*, %struct.strand_t** %57, align 8, !dbg !2132
  store %struct.strand_t* %58, %struct.strand_t** %11, align 8, !dbg !2133
  br label %32, !dbg !2134, !llvm.loop !2135

59:                                               ; preds = %32
  store i32 0, i32* %4, align 4, !dbg !2137
  br label %60, !dbg !2137

60:                                               ; preds = %59, %50
  %61 = load i32, i32* %4, align 4, !dbg !2138
  ret i32 %61, !dbg !2138
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %1) #0 !dbg !2139 {
  %3 = alloca %struct.atom_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.residue_t*, align 8
  store %struct.atom_t* %0, %struct.atom_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.atom_t** %3, metadata !2140, metadata !DIExpression()), !dbg !2141
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2142, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.declare(metadata %struct.residue_t** %5, metadata !2144, metadata !DIExpression()), !dbg !2145
  %6 = load %struct.atom_t*, %struct.atom_t** %3, align 8, !dbg !2146
  %7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i32 0, i32 5, !dbg !2147
  %8 = load %struct.residue_t*, %struct.residue_t** %7, align 8, !dbg !2147
  store %struct.residue_t* %8, %struct.residue_t** %5, align 8, !dbg !2148
  %9 = load i8*, i8** %4, align 8, !dbg !2149
  call void @aexpr2rexpr(i8* %9, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !2150
  %10 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !2151
  %11 = load %struct.residue_t*, %struct.residue_t** %5, align 8, !dbg !2152
  %12 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %11, i32 0, i32 4, !dbg !2153
  %13 = load i8*, i8** %12, align 8, !dbg !2153
  %14 = call i32 @step(i8* %13, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !2154
  ret i32 %14, !dbg !2155
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_res_range(%struct.atom_t* %0, i32 %1, i32 %2) #0 !dbg !2156 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.strand_t*, align 8
  %11 = alloca %struct.residue_t*, align 8
  %12 = alloca %struct.residue_t*, align 8
  store %struct.atom_t* %0, %struct.atom_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.atom_t** %5, metadata !2157, metadata !DIExpression()), !dbg !2158
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2159, metadata !DIExpression()), !dbg !2160
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2161, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2163, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2165, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.declare(metadata %struct.strand_t** %10, metadata !2167, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.declare(metadata %struct.residue_t** %11, metadata !2169, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.declare(metadata %struct.residue_t** %12, metadata !2171, metadata !DIExpression()), !dbg !2172
  %13 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2173
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i32 0, i32 5, !dbg !2174
  %15 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !2174
  store %struct.residue_t* %15, %struct.residue_t** %11, align 8, !dbg !2175
  %16 = load %struct.residue_t*, %struct.residue_t** %11, align 8, !dbg !2176
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 9, !dbg !2177
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8, !dbg !2177
  store %struct.strand_t* %18, %struct.strand_t** %10, align 8, !dbg !2178
  %19 = load i32, i32* %7, align 4, !dbg !2179
  %20 = icmp eq i32 %19, -1, !dbg !2180
  br i1 %20, label %21, label %25, !dbg !2181

21:                                               ; preds = %3
  %22 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2182
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %22, i32 0, i32 5, !dbg !2183
  %24 = load i32, i32* %23, align 8, !dbg !2183
  br label %27, !dbg !2181

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4, !dbg !2184
  br label %27, !dbg !2181

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ %26, %25 ], !dbg !2181
  store i32 %28, i32* %9, align 4, !dbg !2185
  store i32 0, i32* %8, align 4, !dbg !2186
  br label %29, !dbg !2188

29:                                               ; preds = %59, %27
  %30 = load i32, i32* %8, align 4, !dbg !2189
  %31 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2191
  %32 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %31, i32 0, i32 5, !dbg !2192
  %33 = load i32, i32* %32, align 8, !dbg !2192
  %34 = icmp slt i32 %30, %33, !dbg !2193
  br i1 %34, label %35, label %62, !dbg !2194

35:                                               ; preds = %29
  %36 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2195
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %36, i32 0, i32 7, !dbg !2197
  %38 = load %struct.residue_t**, %struct.residue_t*** %37, align 8, !dbg !2197
  %39 = load i32, i32* %8, align 4, !dbg !2198
  %40 = sext i32 %39 to i64, !dbg !2195
  %41 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %38, i64 %40, !dbg !2195
  %42 = load %struct.residue_t*, %struct.residue_t** %41, align 8, !dbg !2195
  store %struct.residue_t* %42, %struct.residue_t** %12, align 8, !dbg !2199
  %43 = load %struct.residue_t*, %struct.residue_t** %11, align 8, !dbg !2200
  %44 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !2202
  %45 = icmp eq %struct.residue_t* %43, %44, !dbg !2203
  br i1 %45, label %46, label %58, !dbg !2204

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4, !dbg !2205
  %48 = load i32, i32* %8, align 4, !dbg !2208
  %49 = add nsw i32 %48, 1, !dbg !2209
  %50 = icmp sle i32 %47, %49, !dbg !2210
  br i1 %50, label %51, label %57, !dbg !2211

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4, !dbg !2212
  %53 = add nsw i32 %52, 1, !dbg !2213
  %54 = load i32, i32* %9, align 4, !dbg !2214
  %55 = icmp sle i32 %53, %54, !dbg !2215
  br i1 %55, label %56, label %57, !dbg !2216

56:                                               ; preds = %51
  store i32 1, i32* %4, align 4, !dbg !2217
  br label %63, !dbg !2217

57:                                               ; preds = %51, %46
  br label %58, !dbg !2218

58:                                               ; preds = %57, %35
  br label %59, !dbg !2219

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4, !dbg !2220
  %61 = add nsw i32 %60, 1, !dbg !2220
  store i32 %61, i32* %8, align 4, !dbg !2220
  br label %29, !dbg !2221, !llvm.loop !2222

62:                                               ; preds = %29
  store i32 0, i32* %4, align 4, !dbg !2224
  br label %63, !dbg !2224

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %4, align 4, !dbg !2225
  ret i32 %64, !dbg !2225
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %1) #0 !dbg !2226 {
  %3 = alloca %struct.atom_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.atom_t* %0, %struct.atom_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.atom_t** %3, metadata !2227, metadata !DIExpression()), !dbg !2228
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2229, metadata !DIExpression()), !dbg !2230
  %5 = load i8*, i8** %4, align 8, !dbg !2231
  call void @aexpr2rexpr(i8* %5, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0)), !dbg !2232
  %6 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0), !dbg !2233
  %7 = load %struct.atom_t*, %struct.atom_t** %3, align 8, !dbg !2234
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %7, i32 0, i32 0, !dbg !2235
  %9 = load i8*, i8** %8, align 8, !dbg !2235
  %10 = call i32 @step(i8* %9, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)), !dbg !2236
  ret i32 %10, !dbg !2237
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aexpr", scope: !2, file: !3, line: 14, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !25, splitDebugInlining: false, nameTableKind: None)
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
!21 = !{!22, !23, !24}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !{!0, !26, !30, !32, !34, !39}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "spart", scope: !2, file: !3, line: 15, type: !28, isLocal: true, isDefinition: true)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "rpart", scope: !2, file: !3, line: 16, type: !28, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "apart", scope: !2, file: !3, line: 17, type: !28, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "rexpr", scope: !2, file: !3, line: 20, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8000, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 1000)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "expbuf", scope: !2, file: !3, line: 26, type: !36, isLocal: true, isDefinition: true)
!41 = !{i32 7, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{!"clang version 10.0.0-4ubuntu1 "}
!45 = distinct !DISubprogram(name: "setpoint", scope: !3, file: !3, line: 54, type: !46, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !261)
!46 = !DISubroutineType(types: !47)
!47 = !{!23, !48, !28, !204}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !50, line: 126, baseType: !51)
!50 = !DIFile(filename: "./nabtypes.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !50, line: 118, size: 1088, elements: !52)
!52 = !{!53, !60, !62, !155, !156, !157, !158}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !51, file: !50, line: 119, baseType: !54, size: 768)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !50, line: 13, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 768, elements: !57)
!56 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!57 = !{!58, !59}
!58 = !DISubrange(count: 4)
!59 = !DISubrange(count: 3)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !51, file: !50, line: 120, baseType: !61, size: 32, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !50, line: 6, baseType: !23)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !51, file: !50, line: 121, baseType: !63, size: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !50, line: 93, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !50, line: 84, size: 384, elements: !66)
!66 = !{!67, !70, !71, !72, !74, !76, !77, !78}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !65, file: !50, line: 85, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !50, line: 17, baseType: !29)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !65, file: !50, line: 86, baseType: !61, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !65, file: !50, line: 87, baseType: !61, size: 32, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !65, file: !50, line: 88, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !65, file: !50, line: 89, baseType: !75, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !65, file: !50, line: 90, baseType: !61, size: 32, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !65, file: !50, line: 91, baseType: !61, size: 32, offset: 288)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !65, file: !50, line: 92, baseType: !79, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !50, line: 82, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !50, line: 63, size: 1024, elements: !83)
!83 = !{!84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !105, !106, !112, !113, !122, !123, !125}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !82, file: !50, line: 64, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !82, file: !50, line: 65, baseType: !61, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !82, file: !50, line: 66, baseType: !61, size: 32, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !82, file: !50, line: 67, baseType: !61, size: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !82, file: !50, line: 68, baseType: !68, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !82, file: !50, line: 69, baseType: !68, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !82, file: !50, line: 70, baseType: !61, size: 32, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !82, file: !50, line: 71, baseType: !61, size: 32, offset: 352)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !82, file: !50, line: 72, baseType: !61, size: 32, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !82, file: !50, line: 73, baseType: !75, size: 64, offset: 448)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !82, file: !50, line: 74, baseType: !96, size: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !50, line: 52, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !50, line: 47, size: 192, elements: !99)
!99 = !{!100, !102, !103, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !98, file: !50, line: 48, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !98, file: !50, line: 49, baseType: !61, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !98, file: !50, line: 50, baseType: !61, size: 32, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !98, file: !50, line: 51, baseType: !61, size: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !82, file: !50, line: 75, baseType: !61, size: 32, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !82, file: !50, line: 76, baseType: !107, size: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !50, line: 54, baseType: !109)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 2)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !82, file: !50, line: 77, baseType: !61, size: 32, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !82, file: !50, line: 78, baseType: !114, size: 64, offset: 768)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !50, line: 61, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !50, line: 58, size: 192, elements: !117)
!117 = !{!118, !121}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !116, file: !50, line: 59, baseType: !119, size: 128)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !120)
!120 = !{!58}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !116, file: !50, line: 60, baseType: !56, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !82, file: !50, line: 79, baseType: !61, size: 32, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !82, file: !50, line: 80, baseType: !124, size: 64, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !82, file: !50, line: 81, baseType: !126, size: 64, offset: 960)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !50, line: 45, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !50, line: 25, size: 1408, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !154}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !128, file: !50, line: 26, baseType: !68, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !128, file: !50, line: 27, baseType: !68, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !128, file: !50, line: 28, baseType: !61, size: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !128, file: !50, line: 29, baseType: !61, size: 32, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !128, file: !50, line: 30, baseType: !135, size: 256, offset: 192)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 256, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !128, file: !50, line: 31, baseType: !85, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !128, file: !50, line: 32, baseType: !56, size: 64, offset: 512)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !128, file: !50, line: 33, baseType: !56, size: 64, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !128, file: !50, line: 34, baseType: !56, size: 64, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !128, file: !50, line: 35, baseType: !56, size: 64, offset: 704)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !128, file: !50, line: 36, baseType: !68, size: 64, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !128, file: !50, line: 37, baseType: !61, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !128, file: !50, line: 38, baseType: !56, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !128, file: !50, line: 39, baseType: !56, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !128, file: !50, line: 40, baseType: !61, size: 32, offset: 1024)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !128, file: !50, line: 41, baseType: !61, size: 32, offset: 1056)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !128, file: !50, line: 42, baseType: !68, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !128, file: !50, line: 43, baseType: !151, size: 192, offset: 1152)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !50, line: 12, baseType: !152)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 192, elements: !153)
!153 = !{!59}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !128, file: !50, line: 44, baseType: !56, size: 64, offset: 1344)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !51, file: !50, line: 122, baseType: !61, size: 32, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !51, file: !50, line: 123, baseType: !61, size: 32, offset: 928)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !51, file: !50, line: 124, baseType: !61, size: 32, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !51, file: !50, line: 125, baseType: !159, size: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !50, line: 115, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !50, line: 95, size: 5760, elements: !162)
!162 = !{!163, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !161, file: !50, line: 96, baseType: !164, size: 648)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 648, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 81)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !161, file: !50, line: 97, baseType: !61, size: 32, offset: 672)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !161, file: !50, line: 97, baseType: !61, size: 32, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !161, file: !50, line: 97, baseType: !61, size: 32, offset: 736)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !161, file: !50, line: 98, baseType: !61, size: 32, offset: 768)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !161, file: !50, line: 98, baseType: !61, size: 32, offset: 800)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !161, file: !50, line: 98, baseType: !61, size: 32, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !161, file: !50, line: 98, baseType: !61, size: 32, offset: 864)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !161, file: !50, line: 98, baseType: !61, size: 32, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !161, file: !50, line: 98, baseType: !61, size: 32, offset: 928)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !161, file: !50, line: 99, baseType: !61, size: 32, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !161, file: !50, line: 99, baseType: !61, size: 32, offset: 992)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !161, file: !50, line: 99, baseType: !61, size: 32, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !161, file: !50, line: 99, baseType: !61, size: 32, offset: 1056)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !161, file: !50, line: 99, baseType: !61, size: 32, offset: 1088)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !161, file: !50, line: 99, baseType: !61, size: 32, offset: 1120)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !161, file: !50, line: 100, baseType: !61, size: 32, offset: 1152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !161, file: !50, line: 100, baseType: !61, size: 32, offset: 1184)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !161, file: !50, line: 100, baseType: !61, size: 32, offset: 1216)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !161, file: !50, line: 100, baseType: !61, size: 32, offset: 1248)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !161, file: !50, line: 100, baseType: !61, size: 32, offset: 1280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !161, file: !50, line: 100, baseType: !61, size: 32, offset: 1312)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !161, file: !50, line: 101, baseType: !61, size: 32, offset: 1344)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !161, file: !50, line: 101, baseType: !61, size: 32, offset: 1376)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !161, file: !50, line: 101, baseType: !61, size: 32, offset: 1408)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !161, file: !50, line: 101, baseType: !61, size: 32, offset: 1440)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !161, file: !50, line: 101, baseType: !61, size: 32, offset: 1472)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !161, file: !50, line: 101, baseType: !61, size: 32, offset: 1504)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !161, file: !50, line: 101, baseType: !61, size: 32, offset: 1536)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !161, file: !50, line: 101, baseType: !61, size: 32, offset: 1568)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !161, file: !50, line: 102, baseType: !61, size: 32, offset: 1600)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !161, file: !50, line: 102, baseType: !61, size: 32, offset: 1632)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !161, file: !50, line: 102, baseType: !61, size: 32, offset: 1664)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !161, file: !50, line: 103, baseType: !68, size: 64, offset: 1728)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !161, file: !50, line: 103, baseType: !68, size: 64, offset: 1792)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !161, file: !50, line: 103, baseType: !68, size: 64, offset: 1856)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !161, file: !50, line: 103, baseType: !68, size: 64, offset: 1920)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !161, file: !50, line: 104, baseType: !204, size: 64, offset: 1984)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !161, file: !50, line: 104, baseType: !204, size: 64, offset: 2048)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !161, file: !50, line: 104, baseType: !204, size: 64, offset: 2112)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !161, file: !50, line: 104, baseType: !204, size: 64, offset: 2176)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !161, file: !50, line: 104, baseType: !204, size: 64, offset: 2240)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !161, file: !50, line: 104, baseType: !204, size: 64, offset: 2304)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !161, file: !50, line: 104, baseType: !204, size: 64, offset: 2368)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !161, file: !50, line: 104, baseType: !204, size: 64, offset: 2432)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !161, file: !50, line: 104, baseType: !204, size: 64, offset: 2496)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !161, file: !50, line: 105, baseType: !204, size: 64, offset: 2560)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !161, file: !50, line: 105, baseType: !204, size: 64, offset: 2624)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !161, file: !50, line: 105, baseType: !204, size: 64, offset: 2688)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !161, file: !50, line: 105, baseType: !204, size: 64, offset: 2752)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !161, file: !50, line: 105, baseType: !204, size: 64, offset: 2816)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !161, file: !50, line: 105, baseType: !204, size: 64, offset: 2880)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !161, file: !50, line: 105, baseType: !204, size: 64, offset: 2944)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !161, file: !50, line: 106, baseType: !152, size: 192, offset: 3008)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !161, file: !50, line: 106, baseType: !56, size: 64, offset: 3200)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !161, file: !50, line: 106, baseType: !56, size: 64, offset: 3264)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !161, file: !50, line: 106, baseType: !56, size: 64, offset: 3328)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !161, file: !50, line: 106, baseType: !56, size: 64, offset: 3392)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !161, file: !50, line: 106, baseType: !56, size: 64, offset: 3456)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !161, file: !50, line: 107, baseType: !124, size: 64, offset: 3520)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !161, file: !50, line: 107, baseType: !124, size: 64, offset: 3584)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !161, file: !50, line: 107, baseType: !124, size: 64, offset: 3648)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !161, file: !50, line: 107, baseType: !124, size: 64, offset: 3712)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !161, file: !50, line: 107, baseType: !124, size: 64, offset: 3776)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !161, file: !50, line: 107, baseType: !124, size: 64, offset: 3840)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !161, file: !50, line: 108, baseType: !124, size: 64, offset: 3904)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !161, file: !50, line: 108, baseType: !124, size: 64, offset: 3968)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !161, file: !50, line: 108, baseType: !124, size: 64, offset: 4032)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !161, file: !50, line: 108, baseType: !124, size: 64, offset: 4096)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !161, file: !50, line: 108, baseType: !124, size: 64, offset: 4160)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !161, file: !50, line: 108, baseType: !124, size: 64, offset: 4224)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !161, file: !50, line: 109, baseType: !124, size: 64, offset: 4288)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !161, file: !50, line: 109, baseType: !124, size: 64, offset: 4352)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !161, file: !50, line: 109, baseType: !124, size: 64, offset: 4416)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !161, file: !50, line: 109, baseType: !124, size: 64, offset: 4480)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !161, file: !50, line: 109, baseType: !124, size: 64, offset: 4544)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !161, file: !50, line: 110, baseType: !124, size: 64, offset: 4608)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !161, file: !50, line: 110, baseType: !124, size: 64, offset: 4672)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !161, file: !50, line: 110, baseType: !124, size: 64, offset: 4736)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !161, file: !50, line: 110, baseType: !124, size: 64, offset: 4800)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !161, file: !50, line: 110, baseType: !124, size: 64, offset: 4864)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !161, file: !50, line: 111, baseType: !124, size: 64, offset: 4928)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !161, file: !50, line: 111, baseType: !124, size: 64, offset: 4992)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !161, file: !50, line: 111, baseType: !124, size: 64, offset: 5056)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !161, file: !50, line: 111, baseType: !124, size: 64, offset: 5120)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !161, file: !50, line: 111, baseType: !124, size: 64, offset: 5184)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !161, file: !50, line: 111, baseType: !124, size: 64, offset: 5248)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !161, file: !50, line: 112, baseType: !124, size: 64, offset: 5312)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !161, file: !50, line: 112, baseType: !124, size: 64, offset: 5376)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !161, file: !50, line: 112, baseType: !124, size: 64, offset: 5440)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !161, file: !50, line: 112, baseType: !124, size: 64, offset: 5504)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !161, file: !50, line: 113, baseType: !124, size: 64, offset: 5568)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !161, file: !50, line: 113, baseType: !124, size: 64, offset: 5632)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !161, file: !50, line: 114, baseType: !204, size: 64, offset: 5696)
!261 = !{}
!262 = !DILocalVariable(name: "mol", arg: 1, scope: !45, file: !3, line: 54, type: !48)
!263 = !DILocation(line: 54, column: 27, scope: !45)
!264 = !DILocalVariable(name: "aexpr", arg: 2, scope: !45, file: !3, line: 54, type: !28)
!265 = !DILocation(line: 54, column: 37, scope: !45)
!266 = !DILocalVariable(name: "point", arg: 3, scope: !45, file: !3, line: 54, type: !204)
!267 = !DILocation(line: 54, column: 54, scope: !45)
!268 = !DILocalVariable(name: "r", scope: !45, file: !3, line: 56, type: !23)
!269 = !DILocation(line: 56, column: 6, scope: !45)
!270 = !DILocalVariable(name: "a", scope: !45, file: !3, line: 56, type: !23)
!271 = !DILocation(line: 56, column: 9, scope: !45)
!272 = !DILocalVariable(name: "ta", scope: !45, file: !3, line: 56, type: !23)
!273 = !DILocation(line: 56, column: 12, scope: !45)
!274 = !DILocalVariable(name: "sp", scope: !45, file: !3, line: 57, type: !63)
!275 = !DILocation(line: 57, column: 12, scope: !45)
!276 = !DILocalVariable(name: "res", scope: !45, file: !3, line: 58, type: !80)
!277 = !DILocation(line: 58, column: 13, scope: !45)
!278 = !DILocalVariable(name: "ap", scope: !45, file: !3, line: 59, type: !126)
!279 = !DILocation(line: 59, column: 11, scope: !45)
!280 = !DILocalVariable(name: "x", scope: !45, file: !3, line: 60, type: !56)
!281 = !DILocation(line: 60, column: 9, scope: !45)
!282 = !DILocalVariable(name: "y", scope: !45, file: !3, line: 60, type: !56)
!283 = !DILocation(line: 60, column: 12, scope: !45)
!284 = !DILocalVariable(name: "z", scope: !45, file: !3, line: 60, type: !56)
!285 = !DILocation(line: 60, column: 15, scope: !45)
!286 = !DILocation(line: 62, column: 16, scope: !45)
!287 = !DILocation(line: 62, column: 21, scope: !45)
!288 = !DILocation(line: 62, column: 2, scope: !45)
!289 = !DILocation(line: 65, column: 12, scope: !45)
!290 = !DILocation(line: 65, column: 8, scope: !45)
!291 = !DILocation(line: 65, column: 4, scope: !45)
!292 = !DILocation(line: 66, column: 10, scope: !293)
!293 = distinct !DILexicalBlock(scope: !45, file: !3, line: 66, column: 2)
!294 = !DILocation(line: 66, column: 20, scope: !293)
!295 = !DILocation(line: 66, column: 25, scope: !293)
!296 = !DILocation(line: 66, column: 18, scope: !293)
!297 = !DILocation(line: 66, column: 7, scope: !293)
!298 = !DILocation(line: 66, column: 36, scope: !299)
!299 = distinct !DILexicalBlock(scope: !293, file: !3, line: 66, column: 2)
!300 = !DILocation(line: 66, column: 2, scope: !293)
!301 = !DILocation(line: 67, column: 19, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !3, line: 67, column: 7)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 66, column: 57)
!304 = !DILocation(line: 67, column: 23, scope: !302)
!305 = !DILocation(line: 67, column: 17, scope: !302)
!306 = !DILocation(line: 67, column: 7, scope: !303)
!307 = !DILocation(line: 68, column: 11, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 68, column: 4)
!309 = distinct !DILexicalBlock(scope: !302, file: !3, line: 67, column: 31)
!310 = !DILocation(line: 68, column: 9, scope: !308)
!311 = !DILocation(line: 68, column: 16, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 68, column: 4)
!313 = !DILocation(line: 68, column: 20, scope: !312)
!314 = !DILocation(line: 68, column: 24, scope: !312)
!315 = !DILocation(line: 68, column: 18, scope: !312)
!316 = !DILocation(line: 68, column: 4, scope: !308)
!317 = !DILocation(line: 69, column: 11, scope: !318)
!318 = distinct !DILexicalBlock(scope: !312, file: !3, line: 68, column: 42)
!319 = !DILocation(line: 69, column: 15, scope: !318)
!320 = !DILocation(line: 69, column: 27, scope: !318)
!321 = !DILocation(line: 69, column: 9, scope: !318)
!322 = !DILocation(line: 70, column: 21, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !3, line: 70, column: 9)
!324 = !DILocation(line: 70, column: 26, scope: !323)
!325 = !DILocation(line: 70, column: 19, scope: !323)
!326 = !DILocation(line: 70, column: 9, scope: !318)
!327 = !DILocation(line: 71, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 71, column: 6)
!329 = distinct !DILexicalBlock(scope: !323, file: !3, line: 70, column: 34)
!330 = !DILocation(line: 71, column: 11, scope: !328)
!331 = !DILocation(line: 71, column: 18, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !3, line: 71, column: 6)
!333 = !DILocation(line: 71, column: 22, scope: !332)
!334 = !DILocation(line: 71, column: 27, scope: !332)
!335 = !DILocation(line: 71, column: 20, scope: !332)
!336 = !DILocation(line: 71, column: 6, scope: !328)
!337 = !DILocation(line: 72, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !332, file: !3, line: 71, column: 42)
!339 = !DILocation(line: 72, column: 18, scope: !338)
!340 = !DILocation(line: 72, column: 27, scope: !338)
!341 = !DILocation(line: 72, column: 10, scope: !338)
!342 = !DILocation(line: 73, column: 23, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !3, line: 73, column: 11)
!344 = !DILocation(line: 73, column: 27, scope: !343)
!345 = !DILocation(line: 73, column: 21, scope: !343)
!346 = !DILocation(line: 73, column: 11, scope: !338)
!347 = !DILocation(line: 74, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !3, line: 73, column: 35)
!349 = !DILocation(line: 74, column: 17, scope: !348)
!350 = !DILocation(line: 74, column: 10, scope: !348)
!351 = !DILocation(line: 75, column: 13, scope: !348)
!352 = !DILocation(line: 75, column: 17, scope: !348)
!353 = !DILocation(line: 75, column: 10, scope: !348)
!354 = !DILocation(line: 76, column: 13, scope: !348)
!355 = !DILocation(line: 76, column: 17, scope: !348)
!356 = !DILocation(line: 76, column: 10, scope: !348)
!357 = !DILocation(line: 77, column: 10, scope: !348)
!358 = !DILocation(line: 78, column: 7, scope: !348)
!359 = !DILocation(line: 79, column: 6, scope: !338)
!360 = !DILocation(line: 71, column: 38, scope: !332)
!361 = !DILocation(line: 71, column: 6, scope: !332)
!362 = distinct !{!362, !336, !363}
!363 = !DILocation(line: 79, column: 6, scope: !328)
!364 = !DILocation(line: 80, column: 5, scope: !329)
!365 = !DILocation(line: 81, column: 4, scope: !318)
!366 = !DILocation(line: 68, column: 38, scope: !312)
!367 = !DILocation(line: 68, column: 4, scope: !312)
!368 = distinct !{!368, !316, !369}
!369 = !DILocation(line: 81, column: 4, scope: !308)
!370 = !DILocation(line: 82, column: 3, scope: !309)
!371 = !DILocation(line: 83, column: 2, scope: !303)
!372 = !DILocation(line: 66, column: 45, scope: !299)
!373 = !DILocation(line: 66, column: 49, scope: !299)
!374 = !DILocation(line: 66, column: 43, scope: !299)
!375 = !DILocation(line: 66, column: 2, scope: !299)
!376 = distinct !{!376, !300, !377}
!377 = !DILocation(line: 83, column: 2, scope: !293)
!378 = !DILocation(line: 85, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !45, file: !3, line: 85, column: 6)
!380 = !DILocation(line: 85, column: 9, scope: !379)
!381 = !DILocation(line: 85, column: 6, scope: !45)
!382 = !DILocation(line: 86, column: 12, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !3, line: 85, column: 15)
!384 = !DILocation(line: 86, column: 57, scope: !383)
!385 = !DILocation(line: 86, column: 3, scope: !383)
!386 = !DILocation(line: 87, column: 3, scope: !383)
!387 = !DILocation(line: 89, column: 16, scope: !388)
!388 = distinct !DILexicalBlock(scope: !379, file: !3, line: 88, column: 7)
!389 = !DILocation(line: 89, column: 20, scope: !388)
!390 = !DILocation(line: 89, column: 18, scope: !388)
!391 = !DILocation(line: 89, column: 3, scope: !388)
!392 = !DILocation(line: 89, column: 14, scope: !388)
!393 = !DILocation(line: 90, column: 16, scope: !388)
!394 = !DILocation(line: 90, column: 20, scope: !388)
!395 = !DILocation(line: 90, column: 18, scope: !388)
!396 = !DILocation(line: 90, column: 3, scope: !388)
!397 = !DILocation(line: 90, column: 14, scope: !388)
!398 = !DILocation(line: 91, column: 16, scope: !388)
!399 = !DILocation(line: 91, column: 20, scope: !388)
!400 = !DILocation(line: 91, column: 18, scope: !388)
!401 = !DILocation(line: 91, column: 3, scope: !388)
!402 = !DILocation(line: 91, column: 14, scope: !388)
!403 = !DILocation(line: 94, column: 2, scope: !45)
!404 = !DILocation(line: 95, column: 1, scope: !45)
!405 = distinct !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 97, type: !406, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !261)
!406 = !DISubroutineType(types: !407)
!407 = !{!23, !48, !28}
!408 = !DILocalVariable(name: "mol", arg: 1, scope: !405, file: !3, line: 97, type: !48)
!409 = !DILocation(line: 97, column: 31, scope: !405)
!410 = !DILocalVariable(name: "aex", arg: 2, scope: !405, file: !3, line: 97, type: !28)
!411 = !DILocation(line: 97, column: 41, scope: !405)
!412 = !DILocalVariable(name: "aep", scope: !405, file: !3, line: 99, type: !28)
!413 = !DILocation(line: 99, column: 8, scope: !405)
!414 = !DILocalVariable(name: "n_aep", scope: !405, file: !3, line: 99, type: !28)
!415 = !DILocation(line: 99, column: 14, scope: !405)
!416 = !DILocalVariable(name: "ael", scope: !405, file: !3, line: 100, type: !23)
!417 = !DILocation(line: 100, column: 6, scope: !405)
!418 = !DILocation(line: 102, column: 6, scope: !419)
!419 = distinct !DILexicalBlock(scope: !405, file: !3, line: 102, column: 6)
!420 = !DILocation(line: 102, column: 10, scope: !419)
!421 = !DILocation(line: 102, column: 6, scope: !405)
!422 = !DILocation(line: 103, column: 15, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !3, line: 102, column: 19)
!424 = !DILocation(line: 103, column: 3, scope: !423)
!425 = !DILocation(line: 104, column: 3, scope: !423)
!426 = !DILocation(line: 107, column: 14, scope: !405)
!427 = !DILocation(line: 107, column: 2, scope: !405)
!428 = !DILocation(line: 108, column: 16, scope: !405)
!429 = !DILocation(line: 108, column: 2, scope: !405)
!430 = !DILocation(line: 110, column: 13, scope: !431)
!431 = distinct !DILexicalBlock(scope: !405, file: !3, line: 110, column: 2)
!432 = !DILocation(line: 110, column: 11, scope: !431)
!433 = !DILocation(line: 110, column: 34, scope: !431)
!434 = !DILocation(line: 110, column: 26, scope: !431)
!435 = !DILocation(line: 110, column: 24, scope: !431)
!436 = !DILocation(line: 110, column: 7, scope: !431)
!437 = !DILocation(line: 110, column: 46, scope: !438)
!438 = distinct !DILexicalBlock(scope: !431, file: !3, line: 110, column: 2)
!439 = !DILocation(line: 110, column: 2, scope: !431)
!440 = !DILocation(line: 111, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 111, column: 7)
!442 = distinct !DILexicalBlock(scope: !438, file: !3, line: 110, column: 52)
!443 = !DILocation(line: 111, column: 7, scope: !442)
!444 = !DILocation(line: 112, column: 10, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !3, line: 111, column: 14)
!446 = !DILocation(line: 112, column: 18, scope: !445)
!447 = !DILocation(line: 112, column: 16, scope: !445)
!448 = !DILocation(line: 112, column: 8, scope: !445)
!449 = !DILocation(line: 113, column: 9, scope: !445)
!450 = !DILocation(line: 114, column: 3, scope: !445)
!451 = !DILocation(line: 115, column: 18, scope: !441)
!452 = !DILocation(line: 115, column: 10, scope: !441)
!453 = !DILocation(line: 115, column: 8, scope: !441)
!454 = !DILocation(line: 116, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !442, file: !3, line: 116, column: 7)
!456 = !DILocation(line: 116, column: 11, scope: !455)
!457 = !DILocation(line: 116, column: 7, scope: !442)
!458 = !DILocation(line: 117, column: 13, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !3, line: 116, column: 26)
!460 = !DILocation(line: 117, column: 4, scope: !459)
!461 = !DILocation(line: 119, column: 4, scope: !459)
!462 = !DILocation(line: 121, column: 19, scope: !442)
!463 = !DILocation(line: 121, column: 24, scope: !442)
!464 = !DILocation(line: 121, column: 3, scope: !442)
!465 = !DILocation(line: 122, column: 10, scope: !442)
!466 = !DILocation(line: 122, column: 3, scope: !442)
!467 = !DILocation(line: 122, column: 16, scope: !442)
!468 = !DILocation(line: 123, column: 17, scope: !442)
!469 = !DILocation(line: 123, column: 3, scope: !442)
!470 = !DILocation(line: 124, column: 14, scope: !442)
!471 = !DILocation(line: 124, column: 3, scope: !442)
!472 = !DILocation(line: 125, column: 9, scope: !442)
!473 = !DILocation(line: 125, column: 7, scope: !442)
!474 = !DILocation(line: 126, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !442, file: !3, line: 126, column: 7)
!476 = !DILocation(line: 126, column: 7, scope: !442)
!477 = !DILocation(line: 127, column: 20, scope: !475)
!478 = !DILocation(line: 127, column: 12, scope: !475)
!479 = !DILocation(line: 127, column: 10, scope: !475)
!480 = !DILocation(line: 127, column: 4, scope: !475)
!481 = !DILocation(line: 128, column: 17, scope: !442)
!482 = !DILocation(line: 128, column: 3, scope: !442)
!483 = !DILocation(line: 110, column: 2, scope: !438)
!484 = distinct !{!484, !439, !485}
!485 = !DILocation(line: 129, column: 2, scope: !431)
!486 = !DILocation(line: 130, column: 14, scope: !405)
!487 = !DILocation(line: 130, column: 2, scope: !405)
!488 = !DILocation(line: 132, column: 2, scope: !405)
!489 = !DILocation(line: 133, column: 1, scope: !405)
!490 = distinct !DISubprogram(name: "select_all", scope: !3, file: !3, line: 398, type: !491, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !48}
!493 = !DILocalVariable(name: "mol", arg: 1, scope: !490, file: !3, line: 398, type: !48)
!494 = !DILocation(line: 398, column: 37, scope: !490)
!495 = !DILocalVariable(name: "a", scope: !490, file: !3, line: 400, type: !23)
!496 = !DILocation(line: 400, column: 7, scope: !490)
!497 = !DILocalVariable(name: "r", scope: !490, file: !3, line: 400, type: !23)
!498 = !DILocation(line: 400, column: 10, scope: !490)
!499 = !DILocalVariable(name: "sp", scope: !490, file: !3, line: 401, type: !63)
!500 = !DILocation(line: 401, column: 12, scope: !490)
!501 = !DILocalVariable(name: "res", scope: !490, file: !3, line: 402, type: !80)
!502 = !DILocation(line: 402, column: 13, scope: !490)
!503 = !DILocation(line: 404, column: 12, scope: !504)
!504 = distinct !DILexicalBlock(scope: !490, file: !3, line: 404, column: 2)
!505 = !DILocation(line: 404, column: 17, scope: !504)
!506 = !DILocation(line: 404, column: 10, scope: !504)
!507 = !DILocation(line: 404, column: 7, scope: !504)
!508 = !DILocation(line: 404, column: 28, scope: !509)
!509 = distinct !DILexicalBlock(scope: !504, file: !3, line: 404, column: 2)
!510 = !DILocation(line: 404, column: 2, scope: !504)
!511 = !DILocation(line: 405, column: 3, scope: !512)
!512 = distinct !DILexicalBlock(scope: !509, file: !3, line: 404, column: 49)
!513 = !DILocation(line: 405, column: 7, scope: !512)
!514 = !DILocation(line: 405, column: 14, scope: !512)
!515 = !DILocation(line: 406, column: 10, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !3, line: 406, column: 3)
!517 = !DILocation(line: 406, column: 8, scope: !516)
!518 = !DILocation(line: 406, column: 15, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 406, column: 3)
!520 = !DILocation(line: 406, column: 19, scope: !519)
!521 = !DILocation(line: 406, column: 23, scope: !519)
!522 = !DILocation(line: 406, column: 17, scope: !519)
!523 = !DILocation(line: 406, column: 3, scope: !516)
!524 = !DILocation(line: 407, column: 10, scope: !525)
!525 = distinct !DILexicalBlock(scope: !519, file: !3, line: 406, column: 41)
!526 = !DILocation(line: 407, column: 14, scope: !525)
!527 = !DILocation(line: 407, column: 26, scope: !525)
!528 = !DILocation(line: 407, column: 8, scope: !525)
!529 = !DILocation(line: 408, column: 4, scope: !525)
!530 = !DILocation(line: 408, column: 9, scope: !525)
!531 = !DILocation(line: 408, column: 16, scope: !525)
!532 = !DILocation(line: 409, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !525, file: !3, line: 409, column: 4)
!534 = !DILocation(line: 409, column: 9, scope: !533)
!535 = !DILocation(line: 409, column: 16, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !3, line: 409, column: 4)
!537 = !DILocation(line: 409, column: 20, scope: !536)
!538 = !DILocation(line: 409, column: 25, scope: !536)
!539 = !DILocation(line: 409, column: 18, scope: !536)
!540 = !DILocation(line: 409, column: 4, scope: !533)
!541 = !DILocation(line: 410, column: 5, scope: !536)
!542 = !DILocation(line: 410, column: 10, scope: !536)
!543 = !DILocation(line: 410, column: 19, scope: !536)
!544 = !DILocation(line: 410, column: 23, scope: !536)
!545 = !DILocation(line: 410, column: 30, scope: !536)
!546 = !DILocation(line: 409, column: 36, scope: !536)
!547 = !DILocation(line: 409, column: 4, scope: !536)
!548 = distinct !{!548, !540, !549}
!549 = !DILocation(line: 410, column: 33, scope: !533)
!550 = !DILocation(line: 411, column: 3, scope: !525)
!551 = !DILocation(line: 406, column: 37, scope: !519)
!552 = !DILocation(line: 406, column: 3, scope: !519)
!553 = distinct !{!553, !523, !554}
!554 = !DILocation(line: 411, column: 3, scope: !516)
!555 = !DILocation(line: 412, column: 2, scope: !512)
!556 = !DILocation(line: 404, column: 37, scope: !509)
!557 = !DILocation(line: 404, column: 41, scope: !509)
!558 = !DILocation(line: 404, column: 35, scope: !509)
!559 = !DILocation(line: 404, column: 2, scope: !509)
!560 = distinct !{!560, !510, !561}
!561 = !DILocation(line: 412, column: 2, scope: !504)
!562 = !DILocation(line: 413, column: 1, scope: !490)
!563 = distinct !DISubprogram(name: "clear_work", scope: !3, file: !3, line: 432, type: !491, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!564 = !DILocalVariable(name: "mol", arg: 1, scope: !563, file: !3, line: 432, type: !48)
!565 = !DILocation(line: 432, column: 37, scope: !563)
!566 = !DILocalVariable(name: "a", scope: !563, file: !3, line: 434, type: !23)
!567 = !DILocation(line: 434, column: 7, scope: !563)
!568 = !DILocalVariable(name: "r", scope: !563, file: !3, line: 434, type: !23)
!569 = !DILocation(line: 434, column: 10, scope: !563)
!570 = !DILocalVariable(name: "sp", scope: !563, file: !3, line: 435, type: !63)
!571 = !DILocation(line: 435, column: 12, scope: !563)
!572 = !DILocalVariable(name: "res", scope: !563, file: !3, line: 436, type: !80)
!573 = !DILocation(line: 436, column: 13, scope: !563)
!574 = !DILocation(line: 438, column: 12, scope: !575)
!575 = distinct !DILexicalBlock(scope: !563, file: !3, line: 438, column: 2)
!576 = !DILocation(line: 438, column: 17, scope: !575)
!577 = !DILocation(line: 438, column: 10, scope: !575)
!578 = !DILocation(line: 438, column: 7, scope: !575)
!579 = !DILocation(line: 438, column: 28, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !3, line: 438, column: 2)
!581 = !DILocation(line: 438, column: 2, scope: !575)
!582 = !DILocation(line: 439, column: 3, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !3, line: 438, column: 49)
!584 = !DILocation(line: 439, column: 7, scope: !583)
!585 = !DILocation(line: 439, column: 14, scope: !583)
!586 = !DILocation(line: 440, column: 10, scope: !587)
!587 = distinct !DILexicalBlock(scope: !583, file: !3, line: 440, column: 3)
!588 = !DILocation(line: 440, column: 8, scope: !587)
!589 = !DILocation(line: 440, column: 15, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !3, line: 440, column: 3)
!591 = !DILocation(line: 440, column: 19, scope: !590)
!592 = !DILocation(line: 440, column: 23, scope: !590)
!593 = !DILocation(line: 440, column: 17, scope: !590)
!594 = !DILocation(line: 440, column: 3, scope: !587)
!595 = !DILocation(line: 441, column: 10, scope: !596)
!596 = distinct !DILexicalBlock(scope: !590, file: !3, line: 440, column: 41)
!597 = !DILocation(line: 441, column: 14, scope: !596)
!598 = !DILocation(line: 441, column: 26, scope: !596)
!599 = !DILocation(line: 441, column: 8, scope: !596)
!600 = !DILocation(line: 442, column: 4, scope: !596)
!601 = !DILocation(line: 442, column: 9, scope: !596)
!602 = !DILocation(line: 442, column: 16, scope: !596)
!603 = !DILocation(line: 443, column: 11, scope: !604)
!604 = distinct !DILexicalBlock(scope: !596, file: !3, line: 443, column: 4)
!605 = !DILocation(line: 443, column: 9, scope: !604)
!606 = !DILocation(line: 443, column: 16, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !3, line: 443, column: 4)
!608 = !DILocation(line: 443, column: 20, scope: !607)
!609 = !DILocation(line: 443, column: 25, scope: !607)
!610 = !DILocation(line: 443, column: 18, scope: !607)
!611 = !DILocation(line: 443, column: 4, scope: !604)
!612 = !DILocation(line: 444, column: 5, scope: !607)
!613 = !DILocation(line: 444, column: 10, scope: !607)
!614 = !DILocation(line: 444, column: 19, scope: !607)
!615 = !DILocation(line: 444, column: 23, scope: !607)
!616 = !DILocation(line: 444, column: 30, scope: !607)
!617 = !DILocation(line: 443, column: 36, scope: !607)
!618 = !DILocation(line: 443, column: 4, scope: !607)
!619 = distinct !{!619, !611, !620}
!620 = !DILocation(line: 444, column: 34, scope: !604)
!621 = !DILocation(line: 445, column: 3, scope: !596)
!622 = !DILocation(line: 440, column: 37, scope: !590)
!623 = !DILocation(line: 440, column: 3, scope: !590)
!624 = distinct !{!624, !594, !625}
!625 = !DILocation(line: 445, column: 3, scope: !587)
!626 = !DILocation(line: 446, column: 2, scope: !583)
!627 = !DILocation(line: 438, column: 37, scope: !580)
!628 = !DILocation(line: 438, column: 41, scope: !580)
!629 = !DILocation(line: 438, column: 35, scope: !580)
!630 = !DILocation(line: 438, column: 2, scope: !580)
!631 = distinct !{!631, !581, !632}
!632 = !DILocation(line: 446, column: 2, scope: !575)
!633 = !DILocation(line: 447, column: 1, scope: !563)
!634 = distinct !DISubprogram(name: "clear_select", scope: !3, file: !3, line: 415, type: !491, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!635 = !DILocalVariable(name: "mol", arg: 1, scope: !634, file: !3, line: 415, type: !48)
!636 = !DILocation(line: 415, column: 39, scope: !634)
!637 = !DILocalVariable(name: "a", scope: !634, file: !3, line: 417, type: !23)
!638 = !DILocation(line: 417, column: 7, scope: !634)
!639 = !DILocalVariable(name: "r", scope: !634, file: !3, line: 417, type: !23)
!640 = !DILocation(line: 417, column: 10, scope: !634)
!641 = !DILocalVariable(name: "sp", scope: !634, file: !3, line: 418, type: !63)
!642 = !DILocation(line: 418, column: 12, scope: !634)
!643 = !DILocalVariable(name: "res", scope: !634, file: !3, line: 419, type: !80)
!644 = !DILocation(line: 419, column: 13, scope: !634)
!645 = !DILocation(line: 421, column: 12, scope: !646)
!646 = distinct !DILexicalBlock(scope: !634, file: !3, line: 421, column: 2)
!647 = !DILocation(line: 421, column: 17, scope: !646)
!648 = !DILocation(line: 421, column: 10, scope: !646)
!649 = !DILocation(line: 421, column: 7, scope: !646)
!650 = !DILocation(line: 421, column: 28, scope: !651)
!651 = distinct !DILexicalBlock(scope: !646, file: !3, line: 421, column: 2)
!652 = !DILocation(line: 421, column: 2, scope: !646)
!653 = !DILocation(line: 422, column: 3, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !3, line: 421, column: 49)
!655 = !DILocation(line: 422, column: 7, scope: !654)
!656 = !DILocation(line: 422, column: 14, scope: !654)
!657 = !DILocation(line: 423, column: 10, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !3, line: 423, column: 3)
!659 = !DILocation(line: 423, column: 8, scope: !658)
!660 = !DILocation(line: 423, column: 15, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !3, line: 423, column: 3)
!662 = !DILocation(line: 423, column: 19, scope: !661)
!663 = !DILocation(line: 423, column: 23, scope: !661)
!664 = !DILocation(line: 423, column: 17, scope: !661)
!665 = !DILocation(line: 423, column: 3, scope: !658)
!666 = !DILocation(line: 424, column: 10, scope: !667)
!667 = distinct !DILexicalBlock(scope: !661, file: !3, line: 423, column: 41)
!668 = !DILocation(line: 424, column: 14, scope: !667)
!669 = !DILocation(line: 424, column: 26, scope: !667)
!670 = !DILocation(line: 424, column: 8, scope: !667)
!671 = !DILocation(line: 425, column: 4, scope: !667)
!672 = !DILocation(line: 425, column: 9, scope: !667)
!673 = !DILocation(line: 425, column: 16, scope: !667)
!674 = !DILocation(line: 426, column: 11, scope: !675)
!675 = distinct !DILexicalBlock(scope: !667, file: !3, line: 426, column: 4)
!676 = !DILocation(line: 426, column: 9, scope: !675)
!677 = !DILocation(line: 426, column: 16, scope: !678)
!678 = distinct !DILexicalBlock(scope: !675, file: !3, line: 426, column: 4)
!679 = !DILocation(line: 426, column: 20, scope: !678)
!680 = !DILocation(line: 426, column: 25, scope: !678)
!681 = !DILocation(line: 426, column: 18, scope: !678)
!682 = !DILocation(line: 426, column: 4, scope: !675)
!683 = !DILocation(line: 427, column: 5, scope: !678)
!684 = !DILocation(line: 427, column: 10, scope: !678)
!685 = !DILocation(line: 427, column: 19, scope: !678)
!686 = !DILocation(line: 427, column: 23, scope: !678)
!687 = !DILocation(line: 427, column: 30, scope: !678)
!688 = !DILocation(line: 426, column: 36, scope: !678)
!689 = !DILocation(line: 426, column: 4, scope: !678)
!690 = distinct !{!690, !682, !691}
!691 = !DILocation(line: 427, column: 34, scope: !675)
!692 = !DILocation(line: 428, column: 3, scope: !667)
!693 = !DILocation(line: 423, column: 37, scope: !661)
!694 = !DILocation(line: 423, column: 3, scope: !661)
!695 = distinct !{!695, !665, !696}
!696 = !DILocation(line: 428, column: 3, scope: !658)
!697 = !DILocation(line: 429, column: 2, scope: !654)
!698 = !DILocation(line: 421, column: 37, scope: !651)
!699 = !DILocation(line: 421, column: 41, scope: !651)
!700 = !DILocation(line: 421, column: 35, scope: !651)
!701 = !DILocation(line: 421, column: 2, scope: !651)
!702 = distinct !{!702, !652, !703}
!703 = !DILocation(line: 429, column: 2, scope: !646)
!704 = !DILocation(line: 430, column: 1, scope: !634)
!705 = distinct !DISubprogram(name: "eval_1_aexpr", scope: !3, file: !3, line: 204, type: !406, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!706 = !DILocalVariable(name: "mol", arg: 1, scope: !705, file: !3, line: 204, type: !48)
!707 = !DILocation(line: 204, column: 38, scope: !705)
!708 = !DILocalVariable(name: "aex", arg: 2, scope: !705, file: !3, line: 204, type: !28)
!709 = !DILocation(line: 204, column: 48, scope: !705)
!710 = !DILocalVariable(name: "aep", scope: !705, file: !3, line: 206, type: !28)
!711 = !DILocation(line: 206, column: 8, scope: !705)
!712 = !DILocalVariable(name: "wp", scope: !705, file: !3, line: 207, type: !28)
!713 = !DILocation(line: 207, column: 8, scope: !705)
!714 = !DILocalVariable(name: "lo", scope: !705, file: !3, line: 208, type: !23)
!715 = !DILocation(line: 208, column: 6, scope: !705)
!716 = !DILocalVariable(name: "hi", scope: !705, file: !3, line: 208, type: !23)
!717 = !DILocation(line: 208, column: 10, scope: !705)
!718 = !DILocation(line: 210, column: 8, scope: !705)
!719 = !DILocation(line: 210, column: 6, scope: !705)
!720 = !DILocation(line: 211, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !705, file: !3, line: 211, column: 6)
!722 = !DILocation(line: 211, column: 6, scope: !721)
!723 = !DILocation(line: 211, column: 11, scope: !721)
!724 = !DILocation(line: 211, column: 6, scope: !705)
!725 = !DILocation(line: 212, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !3, line: 211, column: 19)
!727 = !DILocation(line: 213, column: 6, scope: !726)
!728 = !DILocation(line: 214, column: 2, scope: !726)
!729 = !DILocation(line: 215, column: 19, scope: !730)
!730 = distinct !DILexicalBlock(scope: !721, file: !3, line: 214, column: 7)
!731 = !DILocation(line: 215, column: 11, scope: !730)
!732 = !DILocation(line: 215, column: 9, scope: !730)
!733 = !DILocation(line: 216, column: 18, scope: !730)
!734 = !DILocation(line: 216, column: 10, scope: !730)
!735 = !DILocation(line: 216, column: 26, scope: !730)
!736 = !DILocation(line: 216, column: 7, scope: !730)
!737 = !DILocation(line: 218, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !705, file: !3, line: 218, column: 6)
!739 = !DILocation(line: 218, column: 6, scope: !738)
!740 = !DILocation(line: 218, column: 11, scope: !738)
!741 = !DILocation(line: 218, column: 6, scope: !705)
!742 = !DILocation(line: 219, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !3, line: 218, column: 19)
!744 = !DILocation(line: 220, column: 6, scope: !743)
!745 = !DILocation(line: 221, column: 2, scope: !743)
!746 = !DILocation(line: 222, column: 19, scope: !747)
!747 = distinct !DILexicalBlock(scope: !738, file: !3, line: 221, column: 7)
!748 = !DILocation(line: 222, column: 11, scope: !747)
!749 = !DILocation(line: 222, column: 9, scope: !747)
!750 = !DILocation(line: 223, column: 18, scope: !747)
!751 = !DILocation(line: 223, column: 10, scope: !747)
!752 = !DILocation(line: 223, column: 26, scope: !747)
!753 = !DILocation(line: 223, column: 7, scope: !747)
!754 = !DILocation(line: 225, column: 18, scope: !705)
!755 = !DILocation(line: 225, column: 10, scope: !705)
!756 = !DILocation(line: 225, column: 8, scope: !705)
!757 = !DILocation(line: 227, column: 6, scope: !758)
!758 = distinct !DILexicalBlock(scope: !705, file: !3, line: 227, column: 6)
!759 = !DILocation(line: 227, column: 6, scope: !705)
!760 = !DILocation(line: 228, column: 16, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !3, line: 227, column: 13)
!762 = !DILocation(line: 228, column: 8, scope: !761)
!763 = !DILocation(line: 228, column: 6, scope: !761)
!764 = !DILocation(line: 229, column: 19, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !3, line: 229, column: 7)
!766 = !DILocation(line: 229, column: 7, scope: !765)
!767 = !DILocation(line: 229, column: 7, scope: !761)
!768 = !DILocation(line: 230, column: 19, scope: !765)
!769 = !DILocation(line: 230, column: 24, scope: !765)
!770 = !DILocation(line: 230, column: 4, scope: !765)
!771 = !DILocation(line: 232, column: 21, scope: !765)
!772 = !DILocation(line: 232, column: 26, scope: !765)
!773 = !DILocation(line: 232, column: 30, scope: !765)
!774 = !DILocation(line: 232, column: 4, scope: !765)
!775 = !DILocation(line: 233, column: 3, scope: !761)
!776 = !DILocation(line: 233, column: 16, scope: !761)
!777 = !DILocation(line: 233, column: 14, scope: !761)
!778 = !DILocation(line: 234, column: 20, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 234, column: 8)
!780 = distinct !DILexicalBlock(scope: !761, file: !3, line: 233, column: 38)
!781 = !DILocation(line: 234, column: 8, scope: !779)
!782 = !DILocation(line: 234, column: 8, scope: !780)
!783 = !DILocation(line: 235, column: 20, scope: !779)
!784 = !DILocation(line: 235, column: 25, scope: !779)
!785 = !DILocation(line: 235, column: 5, scope: !779)
!786 = !DILocation(line: 237, column: 22, scope: !779)
!787 = !DILocation(line: 237, column: 27, scope: !779)
!788 = !DILocation(line: 237, column: 31, scope: !779)
!789 = !DILocation(line: 237, column: 5, scope: !779)
!790 = distinct !{!790, !775, !791}
!791 = !DILocation(line: 238, column: 3, scope: !761)
!792 = !DILocation(line: 239, column: 2, scope: !761)
!793 = !DILocation(line: 240, column: 20, scope: !758)
!794 = !DILocation(line: 240, column: 3, scope: !758)
!795 = !DILocation(line: 242, column: 6, scope: !796)
!796 = distinct !DILexicalBlock(scope: !705, file: !3, line: 242, column: 6)
!797 = !DILocation(line: 242, column: 6, scope: !705)
!798 = !DILocation(line: 243, column: 16, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !3, line: 242, column: 13)
!800 = !DILocation(line: 243, column: 8, scope: !799)
!801 = !DILocation(line: 243, column: 6, scope: !799)
!802 = !DILocation(line: 244, column: 19, scope: !803)
!803 = distinct !DILexicalBlock(scope: !799, file: !3, line: 244, column: 7)
!804 = !DILocation(line: 244, column: 7, scope: !803)
!805 = !DILocation(line: 244, column: 7, scope: !799)
!806 = !DILocation(line: 245, column: 19, scope: !803)
!807 = !DILocation(line: 245, column: 24, scope: !803)
!808 = !DILocation(line: 245, column: 4, scope: !803)
!809 = !DILocation(line: 247, column: 21, scope: !803)
!810 = !DILocation(line: 247, column: 26, scope: !803)
!811 = !DILocation(line: 247, column: 30, scope: !803)
!812 = !DILocation(line: 247, column: 4, scope: !803)
!813 = !DILocation(line: 248, column: 3, scope: !799)
!814 = !DILocation(line: 248, column: 16, scope: !799)
!815 = !DILocation(line: 248, column: 14, scope: !799)
!816 = !DILocation(line: 249, column: 20, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 249, column: 8)
!818 = distinct !DILexicalBlock(scope: !799, file: !3, line: 248, column: 38)
!819 = !DILocation(line: 249, column: 8, scope: !817)
!820 = !DILocation(line: 249, column: 8, scope: !818)
!821 = !DILocation(line: 250, column: 20, scope: !817)
!822 = !DILocation(line: 250, column: 25, scope: !817)
!823 = !DILocation(line: 250, column: 5, scope: !817)
!824 = !DILocation(line: 252, column: 22, scope: !817)
!825 = !DILocation(line: 252, column: 27, scope: !817)
!826 = !DILocation(line: 252, column: 31, scope: !817)
!827 = !DILocation(line: 252, column: 5, scope: !817)
!828 = distinct !{!828, !813, !829}
!829 = !DILocation(line: 253, column: 3, scope: !799)
!830 = !DILocation(line: 254, column: 2, scope: !799)
!831 = !DILocation(line: 255, column: 20, scope: !796)
!832 = !DILocation(line: 255, column: 3, scope: !796)
!833 = !DILocation(line: 257, column: 6, scope: !834)
!834 = distinct !DILexicalBlock(scope: !705, file: !3, line: 257, column: 6)
!835 = !DILocation(line: 257, column: 6, scope: !705)
!836 = !DILocation(line: 258, column: 16, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 257, column: 13)
!838 = !DILocation(line: 258, column: 8, scope: !837)
!839 = !DILocation(line: 258, column: 6, scope: !837)
!840 = !DILocation(line: 259, column: 19, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !3, line: 259, column: 7)
!842 = !DILocation(line: 259, column: 7, scope: !841)
!843 = !DILocation(line: 259, column: 7, scope: !837)
!844 = !DILocation(line: 260, column: 20, scope: !841)
!845 = !DILocation(line: 260, column: 25, scope: !841)
!846 = !DILocation(line: 260, column: 4, scope: !841)
!847 = !DILocation(line: 262, column: 13, scope: !848)
!848 = distinct !DILexicalBlock(scope: !841, file: !3, line: 261, column: 7)
!849 = !DILocation(line: 262, column: 4, scope: !848)
!850 = !DILocation(line: 264, column: 3, scope: !837)
!851 = !DILocation(line: 264, column: 16, scope: !837)
!852 = !DILocation(line: 264, column: 14, scope: !837)
!853 = !DILocation(line: 265, column: 20, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 265, column: 8)
!855 = distinct !DILexicalBlock(scope: !837, file: !3, line: 264, column: 38)
!856 = !DILocation(line: 265, column: 8, scope: !854)
!857 = !DILocation(line: 265, column: 8, scope: !855)
!858 = !DILocation(line: 266, column: 21, scope: !854)
!859 = !DILocation(line: 266, column: 26, scope: !854)
!860 = !DILocation(line: 266, column: 5, scope: !854)
!861 = !DILocation(line: 268, column: 14, scope: !862)
!862 = distinct !DILexicalBlock(scope: !854, file: !3, line: 267, column: 8)
!863 = !DILocation(line: 268, column: 5, scope: !862)
!864 = distinct !{!864, !850, !865}
!865 = !DILocation(line: 270, column: 3, scope: !837)
!866 = !DILocation(line: 271, column: 2, scope: !837)
!867 = !DILocation(line: 272, column: 19, scope: !834)
!868 = !DILocation(line: 272, column: 3, scope: !834)
!869 = !DILocation(line: 273, column: 2, scope: !705)
!870 = distinct !DISubprogram(name: "or_select", scope: !3, file: !3, line: 449, type: !491, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!871 = !DILocalVariable(name: "mol", arg: 1, scope: !870, file: !3, line: 449, type: !48)
!872 = !DILocation(line: 449, column: 36, scope: !870)
!873 = !DILocalVariable(name: "a", scope: !870, file: !3, line: 451, type: !23)
!874 = !DILocation(line: 451, column: 7, scope: !870)
!875 = !DILocalVariable(name: "r", scope: !870, file: !3, line: 451, type: !23)
!876 = !DILocation(line: 451, column: 10, scope: !870)
!877 = !DILocalVariable(name: "sp", scope: !870, file: !3, line: 452, type: !63)
!878 = !DILocation(line: 452, column: 12, scope: !870)
!879 = !DILocalVariable(name: "res", scope: !870, file: !3, line: 453, type: !80)
!880 = !DILocation(line: 453, column: 13, scope: !870)
!881 = !DILocalVariable(name: "ap", scope: !870, file: !3, line: 454, type: !126)
!882 = !DILocation(line: 454, column: 11, scope: !870)
!883 = !DILocation(line: 456, column: 12, scope: !884)
!884 = distinct !DILexicalBlock(scope: !870, file: !3, line: 456, column: 2)
!885 = !DILocation(line: 456, column: 17, scope: !884)
!886 = !DILocation(line: 456, column: 10, scope: !884)
!887 = !DILocation(line: 456, column: 7, scope: !884)
!888 = !DILocation(line: 456, column: 28, scope: !889)
!889 = distinct !DILexicalBlock(scope: !884, file: !3, line: 456, column: 2)
!890 = !DILocation(line: 456, column: 2, scope: !884)
!891 = !DILocation(line: 457, column: 19, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !3, line: 456, column: 49)
!893 = !DILocation(line: 457, column: 23, scope: !892)
!894 = !DILocation(line: 457, column: 30, scope: !892)
!895 = !DILocation(line: 457, column: 17, scope: !892)
!896 = !DILocation(line: 457, column: 3, scope: !892)
!897 = !DILocation(line: 457, column: 7, scope: !892)
!898 = !DILocation(line: 457, column: 14, scope: !892)
!899 = !DILocation(line: 458, column: 10, scope: !900)
!900 = distinct !DILexicalBlock(scope: !892, file: !3, line: 458, column: 3)
!901 = !DILocation(line: 458, column: 8, scope: !900)
!902 = !DILocation(line: 458, column: 15, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !3, line: 458, column: 3)
!904 = !DILocation(line: 458, column: 19, scope: !903)
!905 = !DILocation(line: 458, column: 23, scope: !903)
!906 = !DILocation(line: 458, column: 17, scope: !903)
!907 = !DILocation(line: 458, column: 3, scope: !900)
!908 = !DILocation(line: 459, column: 10, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !3, line: 458, column: 41)
!910 = !DILocation(line: 459, column: 14, scope: !909)
!911 = !DILocation(line: 459, column: 26, scope: !909)
!912 = !DILocation(line: 459, column: 8, scope: !909)
!913 = !DILocation(line: 460, column: 21, scope: !909)
!914 = !DILocation(line: 460, column: 26, scope: !909)
!915 = !DILocation(line: 460, column: 33, scope: !909)
!916 = !DILocation(line: 460, column: 19, scope: !909)
!917 = !DILocation(line: 460, column: 4, scope: !909)
!918 = !DILocation(line: 460, column: 9, scope: !909)
!919 = !DILocation(line: 460, column: 16, scope: !909)
!920 = !DILocation(line: 462, column: 11, scope: !921)
!921 = distinct !DILexicalBlock(scope: !909, file: !3, line: 462, column: 4)
!922 = !DILocation(line: 462, column: 9, scope: !921)
!923 = !DILocation(line: 462, column: 16, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !3, line: 462, column: 4)
!925 = !DILocation(line: 462, column: 20, scope: !924)
!926 = !DILocation(line: 462, column: 25, scope: !924)
!927 = !DILocation(line: 462, column: 18, scope: !924)
!928 = !DILocation(line: 462, column: 4, scope: !921)
!929 = !DILocation(line: 463, column: 11, scope: !930)
!930 = distinct !DILexicalBlock(scope: !924, file: !3, line: 462, column: 40)
!931 = !DILocation(line: 463, column: 16, scope: !930)
!932 = !DILocation(line: 463, column: 25, scope: !930)
!933 = !DILocation(line: 463, column: 8, scope: !930)
!934 = !DILocation(line: 464, column: 21, scope: !930)
!935 = !DILocation(line: 464, column: 25, scope: !930)
!936 = !DILocation(line: 464, column: 32, scope: !930)
!937 = !DILocation(line: 464, column: 19, scope: !930)
!938 = !DILocation(line: 464, column: 5, scope: !930)
!939 = !DILocation(line: 464, column: 9, scope: !930)
!940 = !DILocation(line: 464, column: 16, scope: !930)
!941 = !DILocation(line: 466, column: 4, scope: !930)
!942 = !DILocation(line: 462, column: 36, scope: !924)
!943 = !DILocation(line: 462, column: 4, scope: !924)
!944 = distinct !{!944, !928, !945}
!945 = !DILocation(line: 466, column: 4, scope: !921)
!946 = !DILocation(line: 467, column: 3, scope: !909)
!947 = !DILocation(line: 458, column: 37, scope: !903)
!948 = !DILocation(line: 458, column: 3, scope: !903)
!949 = distinct !{!949, !907, !950}
!950 = !DILocation(line: 467, column: 3, scope: !900)
!951 = !DILocation(line: 468, column: 2, scope: !892)
!952 = !DILocation(line: 456, column: 37, scope: !889)
!953 = !DILocation(line: 456, column: 41, scope: !889)
!954 = !DILocation(line: 456, column: 35, scope: !889)
!955 = !DILocation(line: 456, column: 2, scope: !889)
!956 = distinct !{!956, !890, !957}
!957 = !DILocation(line: 468, column: 2, scope: !884)
!958 = !DILocation(line: 469, column: 1, scope: !870)
!959 = distinct !DISubprogram(name: "set_select", scope: !3, file: !3, line: 471, type: !491, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!960 = !DILocalVariable(name: "mol", arg: 1, scope: !959, file: !3, line: 471, type: !48)
!961 = !DILocation(line: 471, column: 37, scope: !959)
!962 = !DILocalVariable(name: "a", scope: !959, file: !3, line: 473, type: !23)
!963 = !DILocation(line: 473, column: 7, scope: !959)
!964 = !DILocalVariable(name: "r", scope: !959, file: !3, line: 473, type: !23)
!965 = !DILocation(line: 473, column: 10, scope: !959)
!966 = !DILocalVariable(name: "sp", scope: !959, file: !3, line: 474, type: !63)
!967 = !DILocation(line: 474, column: 12, scope: !959)
!968 = !DILocalVariable(name: "res", scope: !959, file: !3, line: 475, type: !80)
!969 = !DILocation(line: 475, column: 13, scope: !959)
!970 = !DILocalVariable(name: "ap", scope: !959, file: !3, line: 476, type: !126)
!971 = !DILocation(line: 476, column: 11, scope: !959)
!972 = !DILocation(line: 478, column: 12, scope: !973)
!973 = distinct !DILexicalBlock(scope: !959, file: !3, line: 478, column: 2)
!974 = !DILocation(line: 478, column: 17, scope: !973)
!975 = !DILocation(line: 478, column: 10, scope: !973)
!976 = !DILocation(line: 478, column: 7, scope: !973)
!977 = !DILocation(line: 478, column: 28, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !3, line: 478, column: 2)
!979 = !DILocation(line: 478, column: 2, scope: !973)
!980 = !DILocation(line: 479, column: 19, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 478, column: 49)
!982 = !DILocation(line: 479, column: 23, scope: !981)
!983 = !DILocation(line: 479, column: 30, scope: !981)
!984 = !DILocation(line: 479, column: 17, scope: !981)
!985 = !DILocation(line: 479, column: 3, scope: !981)
!986 = !DILocation(line: 479, column: 7, scope: !981)
!987 = !DILocation(line: 479, column: 14, scope: !981)
!988 = !DILocation(line: 480, column: 10, scope: !989)
!989 = distinct !DILexicalBlock(scope: !981, file: !3, line: 480, column: 3)
!990 = !DILocation(line: 480, column: 8, scope: !989)
!991 = !DILocation(line: 480, column: 15, scope: !992)
!992 = distinct !DILexicalBlock(scope: !989, file: !3, line: 480, column: 3)
!993 = !DILocation(line: 480, column: 19, scope: !992)
!994 = !DILocation(line: 480, column: 23, scope: !992)
!995 = !DILocation(line: 480, column: 17, scope: !992)
!996 = !DILocation(line: 480, column: 3, scope: !989)
!997 = !DILocation(line: 481, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !992, file: !3, line: 480, column: 41)
!999 = !DILocation(line: 481, column: 14, scope: !998)
!1000 = !DILocation(line: 481, column: 26, scope: !998)
!1001 = !DILocation(line: 481, column: 8, scope: !998)
!1002 = !DILocation(line: 482, column: 21, scope: !998)
!1003 = !DILocation(line: 482, column: 26, scope: !998)
!1004 = !DILocation(line: 482, column: 33, scope: !998)
!1005 = !DILocation(line: 482, column: 19, scope: !998)
!1006 = !DILocation(line: 482, column: 4, scope: !998)
!1007 = !DILocation(line: 482, column: 9, scope: !998)
!1008 = !DILocation(line: 482, column: 16, scope: !998)
!1009 = !DILocation(line: 484, column: 11, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !998, file: !3, line: 484, column: 4)
!1011 = !DILocation(line: 484, column: 9, scope: !1010)
!1012 = !DILocation(line: 484, column: 16, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 484, column: 4)
!1014 = !DILocation(line: 484, column: 20, scope: !1013)
!1015 = !DILocation(line: 484, column: 25, scope: !1013)
!1016 = !DILocation(line: 484, column: 18, scope: !1013)
!1017 = !DILocation(line: 484, column: 4, scope: !1010)
!1018 = !DILocation(line: 485, column: 11, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 484, column: 40)
!1020 = !DILocation(line: 485, column: 16, scope: !1019)
!1021 = !DILocation(line: 485, column: 25, scope: !1019)
!1022 = !DILocation(line: 485, column: 8, scope: !1019)
!1023 = !DILocation(line: 486, column: 21, scope: !1019)
!1024 = !DILocation(line: 486, column: 25, scope: !1019)
!1025 = !DILocation(line: 486, column: 32, scope: !1019)
!1026 = !DILocation(line: 486, column: 19, scope: !1019)
!1027 = !DILocation(line: 486, column: 5, scope: !1019)
!1028 = !DILocation(line: 486, column: 9, scope: !1019)
!1029 = !DILocation(line: 486, column: 16, scope: !1019)
!1030 = !DILocation(line: 488, column: 4, scope: !1019)
!1031 = !DILocation(line: 484, column: 36, scope: !1013)
!1032 = !DILocation(line: 484, column: 4, scope: !1013)
!1033 = distinct !{!1033, !1017, !1034}
!1034 = !DILocation(line: 488, column: 4, scope: !1010)
!1035 = !DILocation(line: 489, column: 3, scope: !998)
!1036 = !DILocation(line: 480, column: 37, scope: !992)
!1037 = !DILocation(line: 480, column: 3, scope: !992)
!1038 = distinct !{!1038, !996, !1039}
!1039 = !DILocation(line: 489, column: 3, scope: !989)
!1040 = !DILocation(line: 490, column: 2, scope: !981)
!1041 = !DILocation(line: 478, column: 37, scope: !978)
!1042 = !DILocation(line: 478, column: 41, scope: !978)
!1043 = !DILocation(line: 478, column: 35, scope: !978)
!1044 = !DILocation(line: 478, column: 2, scope: !978)
!1045 = distinct !{!1045, !979, !1046}
!1046 = !DILocation(line: 490, column: 2, scope: !973)
!1047 = !DILocation(line: 491, column: 1, scope: !959)
!1048 = distinct !DISubprogram(name: "atom_in_aexpr", scope: !3, file: !3, line: 135, type: !1049, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!23, !126, !28}
!1051 = !DILocalVariable(name: "ap", arg: 1, scope: !1048, file: !3, line: 135, type: !126)
!1052 = !DILocation(line: 135, column: 28, scope: !1048)
!1053 = !DILocalVariable(name: "aex", arg: 2, scope: !1048, file: !3, line: 135, type: !28)
!1054 = !DILocation(line: 135, column: 37, scope: !1048)
!1055 = !DILocalVariable(name: "aep", scope: !1048, file: !3, line: 137, type: !28)
!1056 = !DILocation(line: 137, column: 8, scope: !1048)
!1057 = !DILocalVariable(name: "n_aep", scope: !1048, file: !3, line: 137, type: !28)
!1058 = !DILocation(line: 137, column: 14, scope: !1048)
!1059 = !DILocalVariable(name: "ael", scope: !1048, file: !3, line: 138, type: !23)
!1060 = !DILocation(line: 138, column: 6, scope: !1048)
!1061 = !DILocation(line: 140, column: 6, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 140, column: 6)
!1063 = !DILocation(line: 140, column: 10, scope: !1062)
!1064 = !DILocation(line: 140, column: 6, scope: !1048)
!1065 = !DILocation(line: 141, column: 3, scope: !1062)
!1066 = !DILocation(line: 143, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 143, column: 2)
!1068 = !DILocation(line: 143, column: 11, scope: !1067)
!1069 = !DILocation(line: 143, column: 34, scope: !1067)
!1070 = !DILocation(line: 143, column: 26, scope: !1067)
!1071 = !DILocation(line: 143, column: 24, scope: !1067)
!1072 = !DILocation(line: 143, column: 7, scope: !1067)
!1073 = !DILocation(line: 143, column: 46, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 143, column: 2)
!1075 = !DILocation(line: 143, column: 2, scope: !1067)
!1076 = !DILocation(line: 144, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 144, column: 7)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 143, column: 52)
!1079 = !DILocation(line: 144, column: 7, scope: !1078)
!1080 = !DILocation(line: 145, column: 10, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 144, column: 14)
!1082 = !DILocation(line: 145, column: 18, scope: !1081)
!1083 = !DILocation(line: 145, column: 16, scope: !1081)
!1084 = !DILocation(line: 145, column: 8, scope: !1081)
!1085 = !DILocation(line: 146, column: 9, scope: !1081)
!1086 = !DILocation(line: 147, column: 3, scope: !1081)
!1087 = !DILocation(line: 148, column: 18, scope: !1077)
!1088 = !DILocation(line: 148, column: 10, scope: !1077)
!1089 = !DILocation(line: 148, column: 8, scope: !1077)
!1090 = !DILocation(line: 149, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 149, column: 7)
!1092 = !DILocation(line: 149, column: 11, scope: !1091)
!1093 = !DILocation(line: 149, column: 7, scope: !1078)
!1094 = !DILocation(line: 150, column: 13, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 149, column: 26)
!1096 = !DILocation(line: 150, column: 4, scope: !1095)
!1097 = !DILocation(line: 152, column: 4, scope: !1095)
!1098 = !DILocation(line: 154, column: 19, scope: !1078)
!1099 = !DILocation(line: 154, column: 24, scope: !1078)
!1100 = !DILocation(line: 154, column: 3, scope: !1078)
!1101 = !DILocation(line: 155, column: 10, scope: !1078)
!1102 = !DILocation(line: 155, column: 3, scope: !1078)
!1103 = !DILocation(line: 155, column: 16, scope: !1078)
!1104 = !DILocation(line: 156, column: 24, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 156, column: 7)
!1106 = !DILocation(line: 156, column: 7, scope: !1105)
!1107 = !DILocation(line: 156, column: 7, scope: !1078)
!1108 = !DILocation(line: 157, column: 4, scope: !1105)
!1109 = !DILocation(line: 158, column: 9, scope: !1078)
!1110 = !DILocation(line: 158, column: 7, scope: !1078)
!1111 = !DILocation(line: 159, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 159, column: 7)
!1113 = !DILocation(line: 159, column: 7, scope: !1078)
!1114 = !DILocation(line: 160, column: 20, scope: !1112)
!1115 = !DILocation(line: 160, column: 12, scope: !1112)
!1116 = !DILocation(line: 160, column: 10, scope: !1112)
!1117 = !DILocation(line: 160, column: 4, scope: !1112)
!1118 = !DILocation(line: 143, column: 2, scope: !1074)
!1119 = distinct !{!1119, !1075, !1120}
!1120 = !DILocation(line: 161, column: 2, scope: !1067)
!1121 = !DILocation(line: 162, column: 2, scope: !1048)
!1122 = !DILocation(line: 163, column: 1, scope: !1048)
!1123 = distinct !DISubprogram(name: "atom_in_1_aexpr", scope: !3, file: !3, line: 276, type: !1049, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1124 = !DILocalVariable(name: "ap", arg: 1, scope: !1123, file: !3, line: 276, type: !126)
!1125 = !DILocation(line: 276, column: 37, scope: !1123)
!1126 = !DILocalVariable(name: "aex", arg: 2, scope: !1123, file: !3, line: 276, type: !28)
!1127 = !DILocation(line: 276, column: 46, scope: !1123)
!1128 = !DILocalVariable(name: "aep", scope: !1123, file: !3, line: 278, type: !28)
!1129 = !DILocation(line: 278, column: 8, scope: !1123)
!1130 = !DILocalVariable(name: "wp", scope: !1123, file: !3, line: 279, type: !28)
!1131 = !DILocation(line: 279, column: 8, scope: !1123)
!1132 = !DILocalVariable(name: "lo", scope: !1123, file: !3, line: 280, type: !23)
!1133 = !DILocation(line: 280, column: 6, scope: !1123)
!1134 = !DILocalVariable(name: "hi", scope: !1123, file: !3, line: 280, type: !23)
!1135 = !DILocation(line: 280, column: 10, scope: !1123)
!1136 = !DILocation(line: 282, column: 8, scope: !1123)
!1137 = !DILocation(line: 282, column: 6, scope: !1123)
!1138 = !DILocation(line: 283, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 283, column: 6)
!1140 = !DILocation(line: 283, column: 6, scope: !1139)
!1141 = !DILocation(line: 283, column: 11, scope: !1139)
!1142 = !DILocation(line: 283, column: 6, scope: !1123)
!1143 = !DILocation(line: 284, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 283, column: 19)
!1145 = !DILocation(line: 285, column: 6, scope: !1144)
!1146 = !DILocation(line: 286, column: 2, scope: !1144)
!1147 = !DILocation(line: 287, column: 19, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 286, column: 7)
!1149 = !DILocation(line: 287, column: 11, scope: !1148)
!1150 = !DILocation(line: 287, column: 9, scope: !1148)
!1151 = !DILocation(line: 288, column: 18, scope: !1148)
!1152 = !DILocation(line: 288, column: 10, scope: !1148)
!1153 = !DILocation(line: 288, column: 26, scope: !1148)
!1154 = !DILocation(line: 288, column: 7, scope: !1148)
!1155 = !DILocation(line: 290, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 290, column: 6)
!1157 = !DILocation(line: 290, column: 6, scope: !1156)
!1158 = !DILocation(line: 290, column: 11, scope: !1156)
!1159 = !DILocation(line: 290, column: 6, scope: !1123)
!1160 = !DILocation(line: 291, column: 9, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 290, column: 19)
!1162 = !DILocation(line: 292, column: 6, scope: !1161)
!1163 = !DILocation(line: 293, column: 2, scope: !1161)
!1164 = !DILocation(line: 294, column: 19, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 293, column: 7)
!1166 = !DILocation(line: 294, column: 11, scope: !1165)
!1167 = !DILocation(line: 294, column: 9, scope: !1165)
!1168 = !DILocation(line: 295, column: 18, scope: !1165)
!1169 = !DILocation(line: 295, column: 10, scope: !1165)
!1170 = !DILocation(line: 295, column: 26, scope: !1165)
!1171 = !DILocation(line: 295, column: 7, scope: !1165)
!1172 = !DILocation(line: 297, column: 18, scope: !1123)
!1173 = !DILocation(line: 297, column: 10, scope: !1123)
!1174 = !DILocation(line: 297, column: 8, scope: !1123)
!1175 = !DILocation(line: 299, column: 6, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 299, column: 6)
!1177 = !DILocation(line: 299, column: 6, scope: !1123)
!1178 = !DILocation(line: 300, column: 16, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 299, column: 13)
!1180 = !DILocation(line: 300, column: 8, scope: !1179)
!1181 = !DILocation(line: 300, column: 6, scope: !1179)
!1182 = !DILocation(line: 301, column: 19, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 301, column: 7)
!1184 = !DILocation(line: 301, column: 7, scope: !1183)
!1185 = !DILocation(line: 301, column: 7, scope: !1179)
!1186 = !DILocation(line: 302, column: 25, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 302, column: 8)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 301, column: 35)
!1189 = !DILocation(line: 302, column: 29, scope: !1187)
!1190 = !DILocation(line: 302, column: 8, scope: !1187)
!1191 = !DILocation(line: 302, column: 8, scope: !1188)
!1192 = !DILocation(line: 303, column: 5, scope: !1187)
!1193 = !DILocation(line: 304, column: 3, scope: !1188)
!1194 = !DILocation(line: 304, column: 32, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 304, column: 13)
!1196 = !DILocation(line: 304, column: 36, scope: !1195)
!1197 = !DILocation(line: 304, column: 40, scope: !1195)
!1198 = !DILocation(line: 304, column: 13, scope: !1195)
!1199 = !DILocation(line: 304, column: 13, scope: !1183)
!1200 = !DILocation(line: 305, column: 4, scope: !1195)
!1201 = !DILocation(line: 306, column: 3, scope: !1179)
!1202 = !DILocation(line: 306, column: 16, scope: !1179)
!1203 = !DILocation(line: 306, column: 14, scope: !1179)
!1204 = !DILocation(line: 307, column: 20, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 307, column: 8)
!1206 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 306, column: 38)
!1207 = !DILocation(line: 307, column: 8, scope: !1205)
!1208 = !DILocation(line: 307, column: 8, scope: !1206)
!1209 = !DILocation(line: 308, column: 26, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 308, column: 9)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 307, column: 36)
!1212 = !DILocation(line: 308, column: 30, scope: !1210)
!1213 = !DILocation(line: 308, column: 9, scope: !1210)
!1214 = !DILocation(line: 308, column: 9, scope: !1211)
!1215 = !DILocation(line: 309, column: 6, scope: !1210)
!1216 = !DILocation(line: 310, column: 4, scope: !1211)
!1217 = !DILocation(line: 310, column: 33, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 310, column: 14)
!1219 = !DILocation(line: 310, column: 37, scope: !1218)
!1220 = !DILocation(line: 310, column: 41, scope: !1218)
!1221 = !DILocation(line: 310, column: 14, scope: !1218)
!1222 = !DILocation(line: 310, column: 14, scope: !1205)
!1223 = !DILocation(line: 311, column: 5, scope: !1218)
!1224 = distinct !{!1224, !1201, !1225}
!1225 = !DILocation(line: 312, column: 3, scope: !1179)
!1226 = !DILocation(line: 313, column: 3, scope: !1179)
!1227 = !DILabel(scope: !1123, name: "RPART", file: !3, line: 316)
!1228 = !DILocation(line: 316, column: 1, scope: !1123)
!1229 = !DILocation(line: 316, column: 13, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 316, column: 13)
!1231 = !DILocation(line: 316, column: 13, scope: !1123)
!1232 = !DILocation(line: 317, column: 16, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 316, column: 20)
!1234 = !DILocation(line: 317, column: 8, scope: !1233)
!1235 = !DILocation(line: 317, column: 6, scope: !1233)
!1236 = !DILocation(line: 318, column: 19, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 318, column: 7)
!1238 = !DILocation(line: 318, column: 7, scope: !1237)
!1239 = !DILocation(line: 318, column: 7, scope: !1233)
!1240 = !DILocation(line: 319, column: 25, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 319, column: 8)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 318, column: 35)
!1243 = !DILocation(line: 319, column: 29, scope: !1241)
!1244 = !DILocation(line: 319, column: 8, scope: !1241)
!1245 = !DILocation(line: 319, column: 8, scope: !1242)
!1246 = !DILocation(line: 320, column: 5, scope: !1241)
!1247 = !DILocation(line: 321, column: 3, scope: !1242)
!1248 = !DILocation(line: 321, column: 32, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 321, column: 13)
!1250 = !DILocation(line: 321, column: 36, scope: !1249)
!1251 = !DILocation(line: 321, column: 40, scope: !1249)
!1252 = !DILocation(line: 321, column: 13, scope: !1249)
!1253 = !DILocation(line: 321, column: 13, scope: !1237)
!1254 = !DILocation(line: 322, column: 4, scope: !1249)
!1255 = !DILocation(line: 323, column: 3, scope: !1233)
!1256 = !DILocation(line: 323, column: 16, scope: !1233)
!1257 = !DILocation(line: 323, column: 14, scope: !1233)
!1258 = !DILocation(line: 324, column: 20, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 324, column: 8)
!1260 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 323, column: 38)
!1261 = !DILocation(line: 324, column: 8, scope: !1259)
!1262 = !DILocation(line: 324, column: 8, scope: !1260)
!1263 = !DILocation(line: 325, column: 26, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 325, column: 9)
!1265 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 324, column: 36)
!1266 = !DILocation(line: 325, column: 30, scope: !1264)
!1267 = !DILocation(line: 325, column: 9, scope: !1264)
!1268 = !DILocation(line: 325, column: 9, scope: !1265)
!1269 = !DILocation(line: 326, column: 6, scope: !1264)
!1270 = !DILocation(line: 327, column: 4, scope: !1265)
!1271 = !DILocation(line: 327, column: 33, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 327, column: 14)
!1273 = !DILocation(line: 327, column: 37, scope: !1272)
!1274 = !DILocation(line: 327, column: 41, scope: !1272)
!1275 = !DILocation(line: 327, column: 14, scope: !1272)
!1276 = !DILocation(line: 327, column: 14, scope: !1259)
!1277 = !DILocation(line: 328, column: 5, scope: !1272)
!1278 = distinct !{!1278, !1255, !1279}
!1279 = !DILocation(line: 329, column: 3, scope: !1233)
!1280 = !DILocation(line: 330, column: 3, scope: !1233)
!1281 = !DILabel(scope: !1123, name: "APART", file: !3, line: 333)
!1282 = !DILocation(line: 333, column: 1, scope: !1123)
!1283 = !DILocation(line: 333, column: 13, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 333, column: 13)
!1285 = !DILocation(line: 333, column: 13, scope: !1123)
!1286 = !DILocation(line: 334, column: 16, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 333, column: 20)
!1288 = !DILocation(line: 334, column: 8, scope: !1287)
!1289 = !DILocation(line: 334, column: 6, scope: !1287)
!1290 = !DILocation(line: 335, column: 19, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 335, column: 7)
!1292 = !DILocation(line: 335, column: 7, scope: !1291)
!1293 = !DILocation(line: 335, column: 7, scope: !1287)
!1294 = !DILocation(line: 336, column: 26, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 336, column: 8)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 335, column: 35)
!1297 = !DILocation(line: 336, column: 30, scope: !1295)
!1298 = !DILocation(line: 336, column: 8, scope: !1295)
!1299 = !DILocation(line: 336, column: 8, scope: !1296)
!1300 = !DILocation(line: 337, column: 5, scope: !1295)
!1301 = !DILocation(line: 338, column: 3, scope: !1296)
!1302 = !DILocation(line: 339, column: 13, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 338, column: 8)
!1304 = !DILocation(line: 339, column: 4, scope: !1303)
!1305 = !DILocation(line: 340, column: 4, scope: !1303)
!1306 = !DILocation(line: 342, column: 3, scope: !1287)
!1307 = !DILocation(line: 342, column: 16, scope: !1287)
!1308 = !DILocation(line: 342, column: 14, scope: !1287)
!1309 = !DILocation(line: 343, column: 20, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 343, column: 8)
!1311 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 342, column: 38)
!1312 = !DILocation(line: 343, column: 8, scope: !1310)
!1313 = !DILocation(line: 343, column: 8, scope: !1311)
!1314 = !DILocation(line: 344, column: 27, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 344, column: 9)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 343, column: 36)
!1317 = !DILocation(line: 344, column: 31, scope: !1315)
!1318 = !DILocation(line: 344, column: 9, scope: !1315)
!1319 = !DILocation(line: 344, column: 9, scope: !1316)
!1320 = !DILocation(line: 345, column: 6, scope: !1315)
!1321 = !DILocation(line: 346, column: 4, scope: !1316)
!1322 = !DILocation(line: 347, column: 14, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 346, column: 9)
!1324 = !DILocation(line: 347, column: 5, scope: !1323)
!1325 = !DILocation(line: 348, column: 5, scope: !1323)
!1326 = distinct !{!1326, !1306, !1327}
!1327 = !DILocation(line: 350, column: 3, scope: !1287)
!1328 = !DILocation(line: 351, column: 2, scope: !1287)
!1329 = !DILocation(line: 352, column: 3, scope: !1284)
!1330 = !DILocation(line: 354, column: 2, scope: !1123)
!1331 = !DILocation(line: 355, column: 1, scope: !1123)
!1332 = distinct !DISubprogram(name: "set_attr_if", scope: !3, file: !3, line: 165, type: !1333, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !48, !23, !23}
!1335 = !DILocalVariable(name: "mol", arg: 1, scope: !1332, file: !3, line: 165, type: !48)
!1336 = !DILocation(line: 165, column: 31, scope: !1332)
!1337 = !DILocalVariable(name: "attr", arg: 2, scope: !1332, file: !3, line: 165, type: !23)
!1338 = !DILocation(line: 165, column: 40, scope: !1332)
!1339 = !DILocalVariable(name: "i_attr", arg: 3, scope: !1332, file: !3, line: 165, type: !23)
!1340 = !DILocation(line: 165, column: 50, scope: !1332)
!1341 = !DILocalVariable(name: "a", scope: !1332, file: !3, line: 167, type: !23)
!1342 = !DILocation(line: 167, column: 7, scope: !1332)
!1343 = !DILocalVariable(name: "r", scope: !1332, file: !3, line: 167, type: !23)
!1344 = !DILocation(line: 167, column: 10, scope: !1332)
!1345 = !DILocalVariable(name: "sp", scope: !1332, file: !3, line: 168, type: !63)
!1346 = !DILocation(line: 168, column: 12, scope: !1332)
!1347 = !DILocalVariable(name: "res", scope: !1332, file: !3, line: 169, type: !80)
!1348 = !DILocation(line: 169, column: 13, scope: !1332)
!1349 = !DILocalVariable(name: "ap", scope: !1332, file: !3, line: 170, type: !126)
!1350 = !DILocation(line: 170, column: 11, scope: !1332)
!1351 = !DILocation(line: 172, column: 12, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 172, column: 2)
!1353 = !DILocation(line: 172, column: 17, scope: !1352)
!1354 = !DILocation(line: 172, column: 10, scope: !1352)
!1355 = !DILocation(line: 172, column: 7, scope: !1352)
!1356 = !DILocation(line: 172, column: 28, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 172, column: 2)
!1358 = !DILocation(line: 172, column: 2, scope: !1352)
!1359 = !DILocation(line: 173, column: 19, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 172, column: 49)
!1361 = !DILocation(line: 173, column: 23, scope: !1360)
!1362 = !DILocation(line: 173, column: 32, scope: !1360)
!1363 = !DILocation(line: 173, column: 30, scope: !1360)
!1364 = !DILocation(line: 173, column: 17, scope: !1360)
!1365 = !DILocation(line: 173, column: 43, scope: !1360)
!1366 = !DILocation(line: 173, column: 3, scope: !1360)
!1367 = !DILocation(line: 173, column: 7, scope: !1360)
!1368 = !DILocation(line: 173, column: 14, scope: !1360)
!1369 = !DILocation(line: 174, column: 10, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 174, column: 3)
!1371 = !DILocation(line: 174, column: 8, scope: !1370)
!1372 = !DILocation(line: 174, column: 15, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 174, column: 3)
!1374 = !DILocation(line: 174, column: 19, scope: !1373)
!1375 = !DILocation(line: 174, column: 23, scope: !1373)
!1376 = !DILocation(line: 174, column: 17, scope: !1373)
!1377 = !DILocation(line: 174, column: 3, scope: !1370)
!1378 = !DILocation(line: 175, column: 10, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 174, column: 41)
!1380 = !DILocation(line: 175, column: 14, scope: !1379)
!1381 = !DILocation(line: 175, column: 26, scope: !1379)
!1382 = !DILocation(line: 175, column: 8, scope: !1379)
!1383 = !DILocation(line: 176, column: 21, scope: !1379)
!1384 = !DILocation(line: 176, column: 26, scope: !1379)
!1385 = !DILocation(line: 176, column: 35, scope: !1379)
!1386 = !DILocation(line: 176, column: 33, scope: !1379)
!1387 = !DILocation(line: 176, column: 19, scope: !1379)
!1388 = !DILocation(line: 177, column: 5, scope: !1379)
!1389 = !DILocation(line: 176, column: 4, scope: !1379)
!1390 = !DILocation(line: 176, column: 9, scope: !1379)
!1391 = !DILocation(line: 176, column: 16, scope: !1379)
!1392 = !DILocation(line: 178, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 178, column: 4)
!1394 = !DILocation(line: 178, column: 9, scope: !1393)
!1395 = !DILocation(line: 178, column: 16, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 178, column: 4)
!1397 = !DILocation(line: 178, column: 20, scope: !1396)
!1398 = !DILocation(line: 178, column: 25, scope: !1396)
!1399 = !DILocation(line: 178, column: 18, scope: !1396)
!1400 = !DILocation(line: 178, column: 4, scope: !1393)
!1401 = !DILocation(line: 179, column: 11, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 178, column: 40)
!1403 = !DILocation(line: 179, column: 16, scope: !1402)
!1404 = !DILocation(line: 179, column: 25, scope: !1402)
!1405 = !DILocation(line: 179, column: 8, scope: !1402)
!1406 = !DILocation(line: 180, column: 21, scope: !1402)
!1407 = !DILocation(line: 180, column: 25, scope: !1402)
!1408 = !DILocation(line: 180, column: 34, scope: !1402)
!1409 = !DILocation(line: 180, column: 32, scope: !1402)
!1410 = !DILocation(line: 180, column: 19, scope: !1402)
!1411 = !DILocation(line: 181, column: 6, scope: !1402)
!1412 = !DILocation(line: 180, column: 5, scope: !1402)
!1413 = !DILocation(line: 180, column: 9, scope: !1402)
!1414 = !DILocation(line: 180, column: 16, scope: !1402)
!1415 = !DILocation(line: 182, column: 4, scope: !1402)
!1416 = !DILocation(line: 178, column: 36, scope: !1396)
!1417 = !DILocation(line: 178, column: 4, scope: !1396)
!1418 = distinct !{!1418, !1400, !1419}
!1419 = !DILocation(line: 182, column: 4, scope: !1393)
!1420 = !DILocation(line: 183, column: 3, scope: !1379)
!1421 = !DILocation(line: 174, column: 37, scope: !1373)
!1422 = !DILocation(line: 174, column: 3, scope: !1373)
!1423 = distinct !{!1423, !1377, !1424}
!1424 = !DILocation(line: 183, column: 3, scope: !1370)
!1425 = !DILocation(line: 184, column: 2, scope: !1360)
!1426 = !DILocation(line: 172, column: 37, scope: !1357)
!1427 = !DILocation(line: 172, column: 41, scope: !1357)
!1428 = !DILocation(line: 172, column: 35, scope: !1357)
!1429 = !DILocation(line: 172, column: 2, scope: !1357)
!1430 = distinct !{!1430, !1358, !1431}
!1431 = !DILocation(line: 184, column: 2, scope: !1352)
!1432 = !DILocation(line: 185, column: 1, scope: !1332)
!1433 = distinct !DISubprogram(name: "clear_attr", scope: !3, file: !3, line: 187, type: !1434, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !48, !23}
!1436 = !DILocalVariable(name: "mol", arg: 1, scope: !1433, file: !3, line: 187, type: !48)
!1437 = !DILocation(line: 187, column: 30, scope: !1433)
!1438 = !DILocalVariable(name: "attr", arg: 2, scope: !1433, file: !3, line: 187, type: !23)
!1439 = !DILocation(line: 187, column: 39, scope: !1433)
!1440 = !DILocalVariable(name: "a", scope: !1433, file: !3, line: 189, type: !23)
!1441 = !DILocation(line: 189, column: 7, scope: !1433)
!1442 = !DILocalVariable(name: "r", scope: !1433, file: !3, line: 189, type: !23)
!1443 = !DILocation(line: 189, column: 10, scope: !1433)
!1444 = !DILocalVariable(name: "sp", scope: !1433, file: !3, line: 190, type: !63)
!1445 = !DILocation(line: 190, column: 12, scope: !1433)
!1446 = !DILocalVariable(name: "res", scope: !1433, file: !3, line: 191, type: !80)
!1447 = !DILocation(line: 191, column: 13, scope: !1433)
!1448 = !DILocation(line: 193, column: 12, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 193, column: 2)
!1450 = !DILocation(line: 193, column: 17, scope: !1449)
!1451 = !DILocation(line: 193, column: 10, scope: !1449)
!1452 = !DILocation(line: 193, column: 7, scope: !1449)
!1453 = !DILocation(line: 193, column: 28, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 193, column: 2)
!1455 = !DILocation(line: 193, column: 2, scope: !1449)
!1456 = !DILocation(line: 194, column: 18, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 193, column: 49)
!1458 = !DILocation(line: 194, column: 17, scope: !1457)
!1459 = !DILocation(line: 194, column: 3, scope: !1457)
!1460 = !DILocation(line: 194, column: 7, scope: !1457)
!1461 = !DILocation(line: 194, column: 14, scope: !1457)
!1462 = !DILocation(line: 195, column: 10, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 195, column: 3)
!1464 = !DILocation(line: 195, column: 8, scope: !1463)
!1465 = !DILocation(line: 195, column: 15, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 195, column: 3)
!1467 = !DILocation(line: 195, column: 19, scope: !1466)
!1468 = !DILocation(line: 195, column: 23, scope: !1466)
!1469 = !DILocation(line: 195, column: 17, scope: !1466)
!1470 = !DILocation(line: 195, column: 3, scope: !1463)
!1471 = !DILocation(line: 196, column: 10, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 195, column: 41)
!1473 = !DILocation(line: 196, column: 14, scope: !1472)
!1474 = !DILocation(line: 196, column: 26, scope: !1472)
!1475 = !DILocation(line: 196, column: 8, scope: !1472)
!1476 = !DILocation(line: 197, column: 20, scope: !1472)
!1477 = !DILocation(line: 197, column: 19, scope: !1472)
!1478 = !DILocation(line: 197, column: 4, scope: !1472)
!1479 = !DILocation(line: 197, column: 9, scope: !1472)
!1480 = !DILocation(line: 197, column: 16, scope: !1472)
!1481 = !DILocation(line: 198, column: 11, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 198, column: 4)
!1483 = !DILocation(line: 198, column: 9, scope: !1482)
!1484 = !DILocation(line: 198, column: 16, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 198, column: 4)
!1486 = !DILocation(line: 198, column: 20, scope: !1485)
!1487 = !DILocation(line: 198, column: 25, scope: !1485)
!1488 = !DILocation(line: 198, column: 18, scope: !1485)
!1489 = !DILocation(line: 198, column: 4, scope: !1482)
!1490 = !DILocation(line: 199, column: 34, scope: !1485)
!1491 = !DILocation(line: 199, column: 33, scope: !1485)
!1492 = !DILocation(line: 199, column: 5, scope: !1485)
!1493 = !DILocation(line: 199, column: 10, scope: !1485)
!1494 = !DILocation(line: 199, column: 19, scope: !1485)
!1495 = !DILocation(line: 199, column: 23, scope: !1485)
!1496 = !DILocation(line: 199, column: 30, scope: !1485)
!1497 = !DILocation(line: 198, column: 36, scope: !1485)
!1498 = !DILocation(line: 198, column: 4, scope: !1485)
!1499 = distinct !{!1499, !1489, !1500}
!1500 = !DILocation(line: 199, column: 34, scope: !1482)
!1501 = !DILocation(line: 200, column: 3, scope: !1472)
!1502 = !DILocation(line: 195, column: 37, scope: !1466)
!1503 = !DILocation(line: 195, column: 3, scope: !1466)
!1504 = distinct !{!1504, !1470, !1505}
!1505 = !DILocation(line: 200, column: 3, scope: !1463)
!1506 = !DILocation(line: 201, column: 2, scope: !1457)
!1507 = !DILocation(line: 193, column: 37, scope: !1454)
!1508 = !DILocation(line: 193, column: 41, scope: !1454)
!1509 = !DILocation(line: 193, column: 35, scope: !1454)
!1510 = !DILocation(line: 193, column: 2, scope: !1454)
!1511 = distinct !{!1511, !1455, !1512}
!1512 = !DILocation(line: 201, column: 2, scope: !1449)
!1513 = !DILocation(line: 202, column: 1, scope: !1433)
!1514 = distinct !DISubprogram(name: "is_pattern", scope: !3, file: !3, line: 357, type: !1515, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!23, !28, !1517, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1518 = !DILocalVariable(name: "item", arg: 1, scope: !1514, file: !3, line: 357, type: !28)
!1519 = !DILocation(line: 357, column: 29, scope: !1514)
!1520 = !DILocalVariable(name: "lo", arg: 2, scope: !1514, file: !3, line: 357, type: !1517)
!1521 = !DILocation(line: 357, column: 42, scope: !1514)
!1522 = !DILocalVariable(name: "hi", arg: 3, scope: !1514, file: !3, line: 357, type: !1517)
!1523 = !DILocation(line: 357, column: 51, scope: !1514)
!1524 = !DILocalVariable(name: "val", scope: !1514, file: !3, line: 359, type: !23)
!1525 = !DILocation(line: 359, column: 6, scope: !1514)
!1526 = !DILocalVariable(name: "ip", scope: !1514, file: !3, line: 360, type: !28)
!1527 = !DILocation(line: 360, column: 8, scope: !1514)
!1528 = !DILocation(line: 362, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 362, column: 6)
!1530 = !DILocation(line: 362, column: 24, scope: !1529)
!1531 = !DILocation(line: 362, column: 28, scope: !1529)
!1532 = !DILocation(line: 362, column: 27, scope: !1529)
!1533 = !DILocation(line: 362, column: 33, scope: !1529)
!1534 = !DILocation(line: 362, column: 6, scope: !1514)
!1535 = !DILocation(line: 363, column: 3, scope: !1529)
!1536 = !DILocation(line: 364, column: 6, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 364, column: 6)
!1538 = !DILocation(line: 364, column: 6, scope: !1514)
!1539 = !DILocation(line: 365, column: 12, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 365, column: 3)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 364, column: 24)
!1542 = !DILocation(line: 365, column: 22, scope: !1540)
!1543 = !DILocation(line: 365, column: 20, scope: !1540)
!1544 = !DILocation(line: 365, column: 8, scope: !1540)
!1545 = !DILocation(line: 365, column: 28, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 365, column: 3)
!1547 = !DILocation(line: 365, column: 3, scope: !1540)
!1548 = !DILocation(line: 366, column: 15, scope: !1546)
!1549 = !DILocation(line: 366, column: 13, scope: !1546)
!1550 = !DILocation(line: 366, column: 22, scope: !1546)
!1551 = !DILocation(line: 366, column: 21, scope: !1546)
!1552 = !DILocation(line: 366, column: 19, scope: !1546)
!1553 = !DILocation(line: 366, column: 25, scope: !1546)
!1554 = !DILocation(line: 366, column: 8, scope: !1546)
!1555 = !DILocation(line: 366, column: 4, scope: !1546)
!1556 = !DILocation(line: 365, column: 46, scope: !1546)
!1557 = !DILocation(line: 365, column: 3, scope: !1546)
!1558 = distinct !{!1558, !1547, !1559}
!1559 = !DILocation(line: 366, column: 27, scope: !1540)
!1560 = !DILocation(line: 367, column: 9, scope: !1541)
!1561 = !DILocation(line: 367, column: 4, scope: !1541)
!1562 = !DILocation(line: 367, column: 7, scope: !1541)
!1563 = !DILocation(line: 368, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 368, column: 7)
!1565 = !DILocation(line: 368, column: 8, scope: !1564)
!1566 = !DILocation(line: 368, column: 7, scope: !1541)
!1567 = !DILocation(line: 369, column: 11, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 368, column: 13)
!1569 = !DILocation(line: 369, column: 10, scope: !1568)
!1570 = !DILocation(line: 369, column: 5, scope: !1568)
!1571 = !DILocation(line: 369, column: 8, scope: !1568)
!1572 = !DILocation(line: 370, column: 4, scope: !1568)
!1573 = !DILocation(line: 371, column: 14, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 371, column: 13)
!1575 = !DILocation(line: 371, column: 13, scope: !1574)
!1576 = !DILocation(line: 371, column: 17, scope: !1574)
!1577 = !DILocation(line: 371, column: 13, scope: !1564)
!1578 = !DILocation(line: 372, column: 6, scope: !1574)
!1579 = !DILocation(line: 372, column: 4, scope: !1574)
!1580 = !DILocation(line: 373, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 373, column: 7)
!1582 = !DILocation(line: 373, column: 8, scope: !1581)
!1583 = !DILocation(line: 373, column: 7, scope: !1541)
!1584 = !DILocation(line: 374, column: 5, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 373, column: 13)
!1586 = !DILocation(line: 374, column: 8, scope: !1585)
!1587 = !DILocation(line: 375, column: 4, scope: !1585)
!1588 = !DILocation(line: 376, column: 14, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 376, column: 13)
!1590 = !DILocation(line: 376, column: 13, scope: !1581)
!1591 = !DILocation(line: 377, column: 4, scope: !1589)
!1592 = !DILocation(line: 378, column: 12, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 378, column: 3)
!1594 = !DILocation(line: 378, column: 8, scope: !1593)
!1595 = !DILocation(line: 378, column: 17, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 378, column: 3)
!1597 = !DILocation(line: 378, column: 3, scope: !1593)
!1598 = !DILocation(line: 379, column: 15, scope: !1596)
!1599 = !DILocation(line: 379, column: 13, scope: !1596)
!1600 = !DILocation(line: 379, column: 22, scope: !1596)
!1601 = !DILocation(line: 379, column: 21, scope: !1596)
!1602 = !DILocation(line: 379, column: 19, scope: !1596)
!1603 = !DILocation(line: 379, column: 25, scope: !1596)
!1604 = !DILocation(line: 379, column: 8, scope: !1596)
!1605 = !DILocation(line: 379, column: 4, scope: !1596)
!1606 = !DILocation(line: 378, column: 35, scope: !1596)
!1607 = !DILocation(line: 378, column: 3, scope: !1596)
!1608 = distinct !{!1608, !1597, !1609}
!1609 = !DILocation(line: 379, column: 27, scope: !1593)
!1610 = !DILocation(line: 380, column: 9, scope: !1541)
!1611 = !DILocation(line: 380, column: 4, scope: !1541)
!1612 = !DILocation(line: 380, column: 7, scope: !1541)
!1613 = !DILocation(line: 381, column: 12, scope: !1541)
!1614 = !DILocation(line: 381, column: 11, scope: !1541)
!1615 = !DILocation(line: 381, column: 9, scope: !1541)
!1616 = !DILocation(line: 381, column: 3, scope: !1541)
!1617 = !DILocation(line: 383, column: 4, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 382, column: 7)
!1619 = !DILocation(line: 383, column: 7, scope: !1618)
!1620 = !DILocation(line: 384, column: 9, scope: !1618)
!1621 = !DILocation(line: 384, column: 6, scope: !1618)
!1622 = !DILocation(line: 386, column: 8, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 386, column: 6)
!1624 = !DILocation(line: 386, column: 7, scope: !1623)
!1625 = !DILocation(line: 386, column: 6, scope: !1514)
!1626 = !DILocation(line: 387, column: 4, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 386, column: 12)
!1628 = !DILocation(line: 387, column: 7, scope: !1627)
!1629 = !DILocation(line: 388, column: 3, scope: !1627)
!1630 = !DILocation(line: 389, column: 12, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 389, column: 12)
!1632 = !DILocation(line: 389, column: 12, scope: !1623)
!1633 = !DILocation(line: 390, column: 12, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 390, column: 3)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 389, column: 28)
!1636 = !DILocation(line: 390, column: 8, scope: !1634)
!1637 = !DILocation(line: 390, column: 17, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 390, column: 3)
!1639 = !DILocation(line: 390, column: 3, scope: !1634)
!1640 = !DILocation(line: 391, column: 15, scope: !1638)
!1641 = !DILocation(line: 391, column: 13, scope: !1638)
!1642 = !DILocation(line: 391, column: 22, scope: !1638)
!1643 = !DILocation(line: 391, column: 21, scope: !1638)
!1644 = !DILocation(line: 391, column: 19, scope: !1638)
!1645 = !DILocation(line: 391, column: 25, scope: !1638)
!1646 = !DILocation(line: 391, column: 8, scope: !1638)
!1647 = !DILocation(line: 391, column: 4, scope: !1638)
!1648 = !DILocation(line: 390, column: 35, scope: !1638)
!1649 = !DILocation(line: 390, column: 3, scope: !1638)
!1650 = distinct !{!1650, !1639, !1651}
!1651 = !DILocation(line: 391, column: 27, scope: !1634)
!1652 = !DILocation(line: 392, column: 9, scope: !1635)
!1653 = !DILocation(line: 392, column: 4, scope: !1635)
!1654 = !DILocation(line: 392, column: 7, scope: !1635)
!1655 = !DILocation(line: 393, column: 12, scope: !1635)
!1656 = !DILocation(line: 393, column: 11, scope: !1635)
!1657 = !DILocation(line: 393, column: 9, scope: !1635)
!1658 = !DILocation(line: 393, column: 3, scope: !1635)
!1659 = !DILocation(line: 395, column: 2, scope: !1514)
!1660 = !DILocation(line: 396, column: 1, scope: !1514)
!1661 = distinct !DISubprogram(name: "match_str_pat", scope: !3, file: !3, line: 493, type: !1662, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !48, !28}
!1664 = !DILocalVariable(name: "mol", arg: 1, scope: !1661, file: !3, line: 493, type: !48)
!1665 = !DILocation(line: 493, column: 40, scope: !1661)
!1666 = !DILocalVariable(name: "pat", arg: 2, scope: !1661, file: !3, line: 493, type: !28)
!1667 = !DILocation(line: 493, column: 50, scope: !1661)
!1668 = !DILocalVariable(name: "sp", scope: !1661, file: !3, line: 495, type: !63)
!1669 = !DILocation(line: 495, column: 12, scope: !1661)
!1670 = !DILocation(line: 497, column: 15, scope: !1661)
!1671 = !DILocation(line: 497, column: 2, scope: !1661)
!1672 = !DILocation(line: 501, column: 2, scope: !1661)
!1673 = !DILocation(line: 503, column: 12, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 503, column: 2)
!1675 = !DILocation(line: 503, column: 17, scope: !1674)
!1676 = !DILocation(line: 503, column: 10, scope: !1674)
!1677 = !DILocation(line: 503, column: 7, scope: !1674)
!1678 = !DILocation(line: 503, column: 28, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 503, column: 2)
!1680 = !DILocation(line: 503, column: 2, scope: !1674)
!1681 = !DILocation(line: 507, column: 23, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 503, column: 49)
!1683 = !DILocation(line: 507, column: 27, scope: !1682)
!1684 = !DILocation(line: 507, column: 17, scope: !1682)
!1685 = !DILocation(line: 507, column: 3, scope: !1682)
!1686 = !DILocation(line: 507, column: 7, scope: !1682)
!1687 = !DILocation(line: 507, column: 14, scope: !1682)
!1688 = !DILocation(line: 509, column: 2, scope: !1682)
!1689 = !DILocation(line: 503, column: 37, scope: !1679)
!1690 = !DILocation(line: 503, column: 41, scope: !1679)
!1691 = !DILocation(line: 503, column: 35, scope: !1679)
!1692 = !DILocation(line: 503, column: 2, scope: !1679)
!1693 = distinct !{!1693, !1680, !1694}
!1694 = !DILocation(line: 509, column: 2, scope: !1674)
!1695 = !DILocation(line: 510, column: 1, scope: !1661)
!1696 = distinct !DISubprogram(name: "match_str_range", scope: !3, file: !3, line: 529, type: !1333, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1697 = !DILocalVariable(name: "mol", arg: 1, scope: !1696, file: !3, line: 529, type: !48)
!1698 = !DILocation(line: 529, column: 42, scope: !1696)
!1699 = !DILocalVariable(name: "lo", arg: 2, scope: !1696, file: !3, line: 529, type: !23)
!1700 = !DILocation(line: 529, column: 51, scope: !1696)
!1701 = !DILocalVariable(name: "hi", arg: 3, scope: !1696, file: !3, line: 529, type: !23)
!1702 = !DILocation(line: 529, column: 59, scope: !1696)
!1703 = !DILocalVariable(name: "m", scope: !1696, file: !3, line: 531, type: !23)
!1704 = !DILocation(line: 531, column: 7, scope: !1696)
!1705 = !DILocalVariable(name: "sp", scope: !1696, file: !3, line: 532, type: !63)
!1706 = !DILocation(line: 532, column: 12, scope: !1696)
!1707 = !DILocation(line: 534, column: 6, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 534, column: 6)
!1709 = !DILocation(line: 534, column: 9, scope: !1708)
!1710 = !DILocation(line: 534, column: 6, scope: !1696)
!1711 = !DILocation(line: 535, column: 8, scope: !1708)
!1712 = !DILocation(line: 535, column: 13, scope: !1708)
!1713 = !DILocation(line: 535, column: 6, scope: !1708)
!1714 = !DILocation(line: 535, column: 3, scope: !1708)
!1715 = !DILocation(line: 536, column: 9, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 536, column: 2)
!1717 = !DILocation(line: 536, column: 19, scope: !1716)
!1718 = !DILocation(line: 536, column: 24, scope: !1716)
!1719 = !DILocation(line: 536, column: 17, scope: !1716)
!1720 = !DILocation(line: 536, column: 7, scope: !1716)
!1721 = !DILocation(line: 536, column: 35, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 536, column: 2)
!1723 = !DILocation(line: 536, column: 40, scope: !1722)
!1724 = !DILocation(line: 536, column: 45, scope: !1722)
!1725 = !DILocation(line: 536, column: 37, scope: !1722)
!1726 = !DILocation(line: 536, column: 2, scope: !1716)
!1727 = !DILocation(line: 538, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 538, column: 7)
!1729 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 537, column: 25)
!1730 = !DILocation(line: 538, column: 13, scope: !1728)
!1731 = !DILocation(line: 538, column: 10, scope: !1728)
!1732 = !DILocation(line: 538, column: 15, scope: !1728)
!1733 = !DILocation(line: 538, column: 18, scope: !1728)
!1734 = !DILocation(line: 538, column: 23, scope: !1728)
!1735 = !DILocation(line: 538, column: 20, scope: !1728)
!1736 = !DILocation(line: 538, column: 7, scope: !1729)
!1737 = !DILocation(line: 539, column: 4, scope: !1728)
!1738 = !DILocation(line: 539, column: 8, scope: !1728)
!1739 = !DILocation(line: 539, column: 15, scope: !1728)
!1740 = !DILocation(line: 540, column: 2, scope: !1729)
!1741 = !DILocation(line: 537, column: 4, scope: !1722)
!1742 = !DILocation(line: 537, column: 13, scope: !1722)
!1743 = !DILocation(line: 537, column: 17, scope: !1722)
!1744 = !DILocation(line: 537, column: 11, scope: !1722)
!1745 = !DILocation(line: 536, column: 2, scope: !1722)
!1746 = distinct !{!1746, !1726, !1747}
!1747 = !DILocation(line: 540, column: 2, scope: !1716)
!1748 = !DILocation(line: 541, column: 1, scope: !1696)
!1749 = distinct !DISubprogram(name: "match_res_pat", scope: !3, file: !3, line: 565, type: !1662, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1750 = !DILocalVariable(name: "mol", arg: 1, scope: !1749, file: !3, line: 565, type: !48)
!1751 = !DILocation(line: 565, column: 40, scope: !1749)
!1752 = !DILocalVariable(name: "pat", arg: 2, scope: !1749, file: !3, line: 565, type: !28)
!1753 = !DILocation(line: 565, column: 50, scope: !1749)
!1754 = !DILocalVariable(name: "r", scope: !1749, file: !3, line: 567, type: !23)
!1755 = !DILocation(line: 567, column: 7, scope: !1749)
!1756 = !DILocalVariable(name: "sp", scope: !1749, file: !3, line: 568, type: !63)
!1757 = !DILocation(line: 568, column: 12, scope: !1749)
!1758 = !DILocalVariable(name: "res", scope: !1749, file: !3, line: 569, type: !80)
!1759 = !DILocation(line: 569, column: 13, scope: !1749)
!1760 = !DILocation(line: 571, column: 15, scope: !1749)
!1761 = !DILocation(line: 571, column: 2, scope: !1749)
!1762 = !DILocation(line: 575, column: 2, scope: !1749)
!1763 = !DILocation(line: 577, column: 12, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 577, column: 2)
!1765 = !DILocation(line: 577, column: 17, scope: !1764)
!1766 = !DILocation(line: 577, column: 10, scope: !1764)
!1767 = !DILocation(line: 577, column: 7, scope: !1764)
!1768 = !DILocation(line: 577, column: 28, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 577, column: 2)
!1770 = !DILocation(line: 577, column: 2, scope: !1764)
!1771 = !DILocation(line: 578, column: 19, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 578, column: 7)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 577, column: 49)
!1774 = !DILocation(line: 578, column: 23, scope: !1772)
!1775 = !DILocation(line: 578, column: 17, scope: !1772)
!1776 = !DILocation(line: 578, column: 7, scope: !1773)
!1777 = !DILocation(line: 579, column: 11, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 579, column: 4)
!1779 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 578, column: 31)
!1780 = !DILocation(line: 579, column: 9, scope: !1778)
!1781 = !DILocation(line: 579, column: 16, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 579, column: 4)
!1783 = !DILocation(line: 579, column: 20, scope: !1782)
!1784 = !DILocation(line: 579, column: 24, scope: !1782)
!1785 = !DILocation(line: 579, column: 18, scope: !1782)
!1786 = !DILocation(line: 579, column: 4, scope: !1778)
!1787 = !DILocation(line: 580, column: 11, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 579, column: 42)
!1789 = !DILocation(line: 580, column: 15, scope: !1788)
!1790 = !DILocation(line: 580, column: 27, scope: !1788)
!1791 = !DILocation(line: 580, column: 9, scope: !1788)
!1792 = !DILocation(line: 585, column: 26, scope: !1788)
!1793 = !DILocation(line: 585, column: 31, scope: !1788)
!1794 = !DILocation(line: 585, column: 20, scope: !1788)
!1795 = !DILocation(line: 585, column: 5, scope: !1788)
!1796 = !DILocation(line: 585, column: 10, scope: !1788)
!1797 = !DILocation(line: 585, column: 17, scope: !1788)
!1798 = !DILocation(line: 588, column: 4, scope: !1788)
!1799 = !DILocation(line: 579, column: 38, scope: !1782)
!1800 = !DILocation(line: 579, column: 4, scope: !1782)
!1801 = distinct !{!1801, !1786, !1802}
!1802 = !DILocation(line: 588, column: 4, scope: !1778)
!1803 = !DILocation(line: 589, column: 3, scope: !1779)
!1804 = !DILocation(line: 590, column: 2, scope: !1773)
!1805 = !DILocation(line: 577, column: 37, scope: !1769)
!1806 = !DILocation(line: 577, column: 41, scope: !1769)
!1807 = !DILocation(line: 577, column: 35, scope: !1769)
!1808 = !DILocation(line: 577, column: 2, scope: !1769)
!1809 = distinct !{!1809, !1770, !1810}
!1810 = !DILocation(line: 590, column: 2, scope: !1764)
!1811 = !DILocation(line: 591, column: 1, scope: !1749)
!1812 = distinct !DISubprogram(name: "match_res_range", scope: !3, file: !3, line: 608, type: !1333, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1813 = !DILocalVariable(name: "mol", arg: 1, scope: !1812, file: !3, line: 608, type: !48)
!1814 = !DILocation(line: 608, column: 42, scope: !1812)
!1815 = !DILocalVariable(name: "lo", arg: 2, scope: !1812, file: !3, line: 608, type: !23)
!1816 = !DILocation(line: 608, column: 51, scope: !1812)
!1817 = !DILocalVariable(name: "hi", arg: 3, scope: !1812, file: !3, line: 608, type: !23)
!1818 = !DILocation(line: 608, column: 59, scope: !1812)
!1819 = !DILocalVariable(name: "r", scope: !1812, file: !3, line: 610, type: !23)
!1820 = !DILocation(line: 610, column: 7, scope: !1812)
!1821 = !DILocalVariable(name: "rhi", scope: !1812, file: !3, line: 610, type: !23)
!1822 = !DILocation(line: 610, column: 10, scope: !1812)
!1823 = !DILocalVariable(name: "sp", scope: !1812, file: !3, line: 611, type: !63)
!1824 = !DILocation(line: 611, column: 12, scope: !1812)
!1825 = !DILocalVariable(name: "res", scope: !1812, file: !3, line: 612, type: !80)
!1826 = !DILocation(line: 612, column: 13, scope: !1812)
!1827 = !DILocation(line: 614, column: 12, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 614, column: 2)
!1829 = !DILocation(line: 614, column: 17, scope: !1828)
!1830 = !DILocation(line: 614, column: 10, scope: !1828)
!1831 = !DILocation(line: 614, column: 7, scope: !1828)
!1832 = !DILocation(line: 614, column: 28, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 614, column: 2)
!1834 = !DILocation(line: 614, column: 2, scope: !1828)
!1835 = !DILocation(line: 615, column: 19, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 615, column: 7)
!1837 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 614, column: 49)
!1838 = !DILocation(line: 615, column: 23, scope: !1836)
!1839 = !DILocation(line: 615, column: 17, scope: !1836)
!1840 = !DILocation(line: 615, column: 7, scope: !1837)
!1841 = !DILocation(line: 616, column: 12, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 615, column: 31)
!1843 = !DILocation(line: 616, column: 15, scope: !1842)
!1844 = !DILocation(line: 616, column: 10, scope: !1842)
!1845 = !DILocation(line: 616, column: 28, scope: !1842)
!1846 = !DILocation(line: 616, column: 32, scope: !1842)
!1847 = !DILocation(line: 616, column: 46, scope: !1842)
!1848 = !DILocation(line: 616, column: 8, scope: !1842)
!1849 = !DILocation(line: 617, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 617, column: 4)
!1851 = !DILocation(line: 617, column: 9, scope: !1850)
!1852 = !DILocation(line: 617, column: 16, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 617, column: 4)
!1854 = !DILocation(line: 617, column: 20, scope: !1853)
!1855 = !DILocation(line: 617, column: 24, scope: !1853)
!1856 = !DILocation(line: 617, column: 18, scope: !1853)
!1857 = !DILocation(line: 617, column: 4, scope: !1850)
!1858 = !DILocation(line: 618, column: 11, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 617, column: 42)
!1860 = !DILocation(line: 618, column: 15, scope: !1859)
!1861 = !DILocation(line: 618, column: 27, scope: !1859)
!1862 = !DILocation(line: 618, column: 9, scope: !1859)
!1863 = !DILocation(line: 619, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 619, column: 9)
!1865 = !DILocation(line: 619, column: 15, scope: !1864)
!1866 = !DILocation(line: 619, column: 17, scope: !1864)
!1867 = !DILocation(line: 619, column: 12, scope: !1864)
!1868 = !DILocation(line: 619, column: 21, scope: !1864)
!1869 = !DILocation(line: 619, column: 24, scope: !1864)
!1870 = !DILocation(line: 619, column: 26, scope: !1864)
!1871 = !DILocation(line: 619, column: 33, scope: !1864)
!1872 = !DILocation(line: 619, column: 30, scope: !1864)
!1873 = !DILocation(line: 619, column: 9, scope: !1859)
!1874 = !DILocation(line: 620, column: 6, scope: !1864)
!1875 = !DILocation(line: 620, column: 11, scope: !1864)
!1876 = !DILocation(line: 620, column: 18, scope: !1864)
!1877 = !DILocation(line: 621, column: 4, scope: !1859)
!1878 = !DILocation(line: 617, column: 38, scope: !1853)
!1879 = !DILocation(line: 617, column: 4, scope: !1853)
!1880 = distinct !{!1880, !1857, !1881}
!1881 = !DILocation(line: 621, column: 4, scope: !1850)
!1882 = !DILocation(line: 622, column: 3, scope: !1842)
!1883 = !DILocation(line: 623, column: 2, scope: !1837)
!1884 = !DILocation(line: 614, column: 37, scope: !1833)
!1885 = !DILocation(line: 614, column: 41, scope: !1833)
!1886 = !DILocation(line: 614, column: 35, scope: !1833)
!1887 = !DILocation(line: 614, column: 2, scope: !1833)
!1888 = distinct !{!1888, !1834, !1889}
!1889 = !DILocation(line: 623, column: 2, scope: !1828)
!1890 = !DILocation(line: 624, column: 1, scope: !1812)
!1891 = distinct !DISubprogram(name: "match_atom_pat", scope: !3, file: !3, line: 646, type: !1662, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1892 = !DILocalVariable(name: "mol", arg: 1, scope: !1891, file: !3, line: 646, type: !48)
!1893 = !DILocation(line: 646, column: 41, scope: !1891)
!1894 = !DILocalVariable(name: "pat", arg: 2, scope: !1891, file: !3, line: 646, type: !28)
!1895 = !DILocation(line: 646, column: 51, scope: !1891)
!1896 = !DILocalVariable(name: "r", scope: !1891, file: !3, line: 648, type: !23)
!1897 = !DILocation(line: 648, column: 7, scope: !1891)
!1898 = !DILocalVariable(name: "a", scope: !1891, file: !3, line: 648, type: !23)
!1899 = !DILocation(line: 648, column: 10, scope: !1891)
!1900 = !DILocalVariable(name: "sp", scope: !1891, file: !3, line: 649, type: !63)
!1901 = !DILocation(line: 649, column: 12, scope: !1891)
!1902 = !DILocalVariable(name: "res", scope: !1891, file: !3, line: 650, type: !80)
!1903 = !DILocation(line: 650, column: 13, scope: !1891)
!1904 = !DILocalVariable(name: "ap", scope: !1891, file: !3, line: 651, type: !126)
!1905 = !DILocation(line: 651, column: 11, scope: !1891)
!1906 = !DILocation(line: 653, column: 15, scope: !1891)
!1907 = !DILocation(line: 653, column: 2, scope: !1891)
!1908 = !DILocation(line: 657, column: 2, scope: !1891)
!1909 = !DILocation(line: 659, column: 12, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 659, column: 2)
!1911 = !DILocation(line: 659, column: 17, scope: !1910)
!1912 = !DILocation(line: 659, column: 10, scope: !1910)
!1913 = !DILocation(line: 659, column: 7, scope: !1910)
!1914 = !DILocation(line: 659, column: 28, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 659, column: 2)
!1916 = !DILocation(line: 659, column: 2, scope: !1910)
!1917 = !DILocation(line: 660, column: 19, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 660, column: 7)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 659, column: 49)
!1920 = !DILocation(line: 660, column: 23, scope: !1918)
!1921 = !DILocation(line: 660, column: 17, scope: !1918)
!1922 = !DILocation(line: 660, column: 7, scope: !1919)
!1923 = !DILocation(line: 661, column: 11, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 661, column: 4)
!1925 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 660, column: 31)
!1926 = !DILocation(line: 661, column: 9, scope: !1924)
!1927 = !DILocation(line: 661, column: 16, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 661, column: 4)
!1929 = !DILocation(line: 661, column: 20, scope: !1928)
!1930 = !DILocation(line: 661, column: 24, scope: !1928)
!1931 = !DILocation(line: 661, column: 18, scope: !1928)
!1932 = !DILocation(line: 661, column: 4, scope: !1924)
!1933 = !DILocation(line: 662, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 661, column: 42)
!1935 = !DILocation(line: 662, column: 15, scope: !1934)
!1936 = !DILocation(line: 662, column: 27, scope: !1934)
!1937 = !DILocation(line: 662, column: 9, scope: !1934)
!1938 = !DILocation(line: 663, column: 21, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 663, column: 9)
!1940 = !DILocation(line: 663, column: 26, scope: !1939)
!1941 = !DILocation(line: 663, column: 19, scope: !1939)
!1942 = !DILocation(line: 663, column: 9, scope: !1934)
!1943 = !DILocation(line: 664, column: 13, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 664, column: 6)
!1945 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 663, column: 34)
!1946 = !DILocation(line: 664, column: 11, scope: !1944)
!1947 = !DILocation(line: 664, column: 18, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 664, column: 6)
!1949 = !DILocation(line: 664, column: 22, scope: !1948)
!1950 = !DILocation(line: 664, column: 27, scope: !1948)
!1951 = !DILocation(line: 664, column: 20, scope: !1948)
!1952 = !DILocation(line: 664, column: 6, scope: !1944)
!1953 = !DILocation(line: 665, column: 13, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 664, column: 42)
!1955 = !DILocation(line: 665, column: 18, scope: !1954)
!1956 = !DILocation(line: 665, column: 27, scope: !1954)
!1957 = !DILocation(line: 665, column: 10, scope: !1954)
!1958 = !DILocation(line: 672, column: 16, scope: !1954)
!1959 = !DILocation(line: 672, column: 20, scope: !1954)
!1960 = !DILocation(line: 672, column: 11, scope: !1954)
!1961 = !DILocation(line: 671, column: 7, scope: !1954)
!1962 = !DILocation(line: 671, column: 11, scope: !1954)
!1963 = !DILocation(line: 671, column: 18, scope: !1954)
!1964 = !DILocation(line: 675, column: 6, scope: !1954)
!1965 = !DILocation(line: 664, column: 38, scope: !1948)
!1966 = !DILocation(line: 664, column: 6, scope: !1948)
!1967 = distinct !{!1967, !1952, !1968}
!1968 = !DILocation(line: 675, column: 6, scope: !1944)
!1969 = !DILocation(line: 676, column: 5, scope: !1945)
!1970 = !DILocation(line: 677, column: 4, scope: !1934)
!1971 = !DILocation(line: 661, column: 38, scope: !1928)
!1972 = !DILocation(line: 661, column: 4, scope: !1928)
!1973 = distinct !{!1973, !1932, !1974}
!1974 = !DILocation(line: 677, column: 4, scope: !1924)
!1975 = !DILocation(line: 678, column: 3, scope: !1925)
!1976 = !DILocation(line: 679, column: 2, scope: !1919)
!1977 = !DILocation(line: 659, column: 37, scope: !1915)
!1978 = !DILocation(line: 659, column: 41, scope: !1915)
!1979 = !DILocation(line: 659, column: 35, scope: !1915)
!1980 = !DILocation(line: 659, column: 2, scope: !1915)
!1981 = distinct !{!1981, !1916, !1982}
!1982 = !DILocation(line: 679, column: 2, scope: !1910)
!1983 = !DILocation(line: 680, column: 1, scope: !1891)
!1984 = distinct !DISubprogram(name: "aexpr2rexpr", scope: !3, file: !3, line: 695, type: !1985, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !28, !28}
!1987 = !DILocalVariable(name: "aexpr", arg: 1, scope: !1984, file: !3, line: 695, type: !28)
!1988 = !DILocation(line: 695, column: 31, scope: !1984)
!1989 = !DILocalVariable(name: "rexpr", arg: 2, scope: !1984, file: !3, line: 695, type: !28)
!1990 = !DILocation(line: 695, column: 45, scope: !1984)
!1991 = !DILocalVariable(name: "aep", scope: !1984, file: !3, line: 697, type: !28)
!1992 = !DILocation(line: 697, column: 8, scope: !1984)
!1993 = !DILocalVariable(name: "rep", scope: !1984, file: !3, line: 697, type: !28)
!1994 = !DILocation(line: 697, column: 14, scope: !1984)
!1995 = !DILocation(line: 699, column: 8, scope: !1984)
!1996 = !DILocation(line: 699, column: 6, scope: !1984)
!1997 = !DILocation(line: 700, column: 6, scope: !1984)
!1998 = !DILocation(line: 700, column: 9, scope: !1984)
!1999 = !DILocation(line: 701, column: 13, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 701, column: 2)
!2001 = !DILocation(line: 701, column: 11, scope: !2000)
!2002 = !DILocation(line: 701, column: 7, scope: !2000)
!2003 = !DILocation(line: 701, column: 21, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 701, column: 2)
!2005 = !DILocation(line: 701, column: 20, scope: !2004)
!2006 = !DILocation(line: 701, column: 2, scope: !2000)
!2007 = !DILocation(line: 702, column: 8, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 702, column: 7)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 701, column: 33)
!2010 = !DILocation(line: 702, column: 7, scope: !2008)
!2011 = !DILocation(line: 702, column: 12, scope: !2008)
!2012 = !DILocation(line: 702, column: 7, scope: !2009)
!2013 = !DILocation(line: 703, column: 8, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 702, column: 20)
!2015 = !DILocation(line: 703, column: 11, scope: !2014)
!2016 = !DILocation(line: 704, column: 8, scope: !2014)
!2017 = !DILocation(line: 704, column: 11, scope: !2014)
!2018 = !DILocation(line: 705, column: 3, scope: !2014)
!2019 = !DILocation(line: 705, column: 14, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 705, column: 13)
!2021 = !DILocation(line: 705, column: 13, scope: !2020)
!2022 = !DILocation(line: 705, column: 18, scope: !2020)
!2023 = !DILocation(line: 705, column: 13, scope: !2008)
!2024 = !DILocation(line: 706, column: 8, scope: !2020)
!2025 = !DILocation(line: 706, column: 11, scope: !2020)
!2026 = !DILocation(line: 706, column: 4, scope: !2020)
!2027 = !DILocation(line: 708, column: 14, scope: !2020)
!2028 = !DILocation(line: 708, column: 13, scope: !2020)
!2029 = !DILocation(line: 708, column: 8, scope: !2020)
!2030 = !DILocation(line: 708, column: 11, scope: !2020)
!2031 = !DILocation(line: 709, column: 2, scope: !2009)
!2032 = !DILocation(line: 701, column: 29, scope: !2004)
!2033 = !DILocation(line: 701, column: 2, scope: !2004)
!2034 = distinct !{!2034, !2006, !2035}
!2035 = !DILocation(line: 709, column: 2, scope: !2000)
!2036 = !DILocation(line: 710, column: 6, scope: !1984)
!2037 = !DILocation(line: 710, column: 9, scope: !1984)
!2038 = !DILocation(line: 711, column: 3, scope: !1984)
!2039 = !DILocation(line: 711, column: 7, scope: !1984)
!2040 = !DILocation(line: 712, column: 1, scope: !1984)
!2041 = distinct !DISubprogram(name: "atom_in_str_pat", scope: !3, file: !3, line: 512, type: !1049, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!2042 = !DILocalVariable(name: "ap", arg: 1, scope: !2041, file: !3, line: 512, type: !126)
!2043 = !DILocation(line: 512, column: 37, scope: !2041)
!2044 = !DILocalVariable(name: "pat", arg: 2, scope: !2041, file: !3, line: 512, type: !28)
!2045 = !DILocation(line: 512, column: 46, scope: !2041)
!2046 = !DILocalVariable(name: "res", scope: !2041, file: !3, line: 514, type: !80)
!2047 = !DILocation(line: 514, column: 13, scope: !2041)
!2048 = !DILocalVariable(name: "sp", scope: !2041, file: !3, line: 515, type: !63)
!2049 = !DILocation(line: 515, column: 12, scope: !2041)
!2050 = !DILocation(line: 517, column: 8, scope: !2041)
!2051 = !DILocation(line: 517, column: 12, scope: !2041)
!2052 = !DILocation(line: 517, column: 6, scope: !2041)
!2053 = !DILocation(line: 518, column: 7, scope: !2041)
!2054 = !DILocation(line: 518, column: 12, scope: !2041)
!2055 = !DILocation(line: 518, column: 5, scope: !2041)
!2056 = !DILocation(line: 519, column: 15, scope: !2041)
!2057 = !DILocation(line: 519, column: 2, scope: !2041)
!2058 = !DILocation(line: 524, column: 2, scope: !2041)
!2059 = !DILocation(line: 525, column: 16, scope: !2041)
!2060 = !DILocation(line: 525, column: 20, scope: !2041)
!2061 = !DILocation(line: 525, column: 10, scope: !2041)
!2062 = !DILocation(line: 525, column: 2, scope: !2041)
!2063 = distinct !DISubprogram(name: "atom_in_str_range", scope: !3, file: !3, line: 543, type: !2064, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!23, !126, !23, !23}
!2066 = !DILocalVariable(name: "ap", arg: 1, scope: !2063, file: !3, line: 543, type: !126)
!2067 = !DILocation(line: 543, column: 39, scope: !2063)
!2068 = !DILocalVariable(name: "lo", arg: 2, scope: !2063, file: !3, line: 543, type: !23)
!2069 = !DILocation(line: 543, column: 47, scope: !2063)
!2070 = !DILocalVariable(name: "hi", arg: 3, scope: !2063, file: !3, line: 543, type: !23)
!2071 = !DILocation(line: 543, column: 55, scope: !2063)
!2072 = !DILocalVariable(name: "m", scope: !2063, file: !3, line: 545, type: !23)
!2073 = !DILocation(line: 545, column: 7, scope: !2063)
!2074 = !DILocalVariable(name: "res", scope: !2063, file: !3, line: 546, type: !80)
!2075 = !DILocation(line: 546, column: 13, scope: !2063)
!2076 = !DILocalVariable(name: "sp", scope: !2063, file: !3, line: 547, type: !63)
!2077 = !DILocation(line: 547, column: 12, scope: !2063)
!2078 = !DILocalVariable(name: "sp1", scope: !2063, file: !3, line: 547, type: !63)
!2079 = !DILocation(line: 547, column: 17, scope: !2063)
!2080 = !DILocalVariable(name: "mol", scope: !2063, file: !3, line: 548, type: !48)
!2081 = !DILocation(line: 548, column: 14, scope: !2063)
!2082 = !DILocation(line: 550, column: 8, scope: !2063)
!2083 = !DILocation(line: 550, column: 12, scope: !2063)
!2084 = !DILocation(line: 550, column: 6, scope: !2063)
!2085 = !DILocation(line: 551, column: 7, scope: !2063)
!2086 = !DILocation(line: 551, column: 12, scope: !2063)
!2087 = !DILocation(line: 551, column: 5, scope: !2063)
!2088 = !DILocation(line: 552, column: 8, scope: !2063)
!2089 = !DILocation(line: 552, column: 12, scope: !2063)
!2090 = !DILocation(line: 552, column: 6, scope: !2063)
!2091 = !DILocation(line: 553, column: 6, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 553, column: 6)
!2093 = !DILocation(line: 553, column: 9, scope: !2092)
!2094 = !DILocation(line: 553, column: 6, scope: !2063)
!2095 = !DILocation(line: 554, column: 8, scope: !2092)
!2096 = !DILocation(line: 554, column: 13, scope: !2092)
!2097 = !DILocation(line: 554, column: 6, scope: !2092)
!2098 = !DILocation(line: 554, column: 3, scope: !2092)
!2099 = !DILocation(line: 555, column: 9, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 555, column: 2)
!2101 = !DILocation(line: 555, column: 20, scope: !2100)
!2102 = !DILocation(line: 555, column: 25, scope: !2100)
!2103 = !DILocation(line: 555, column: 18, scope: !2100)
!2104 = !DILocation(line: 555, column: 7, scope: !2100)
!2105 = !DILocation(line: 555, column: 36, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 555, column: 2)
!2107 = !DILocation(line: 555, column: 41, scope: !2106)
!2108 = !DILocation(line: 555, column: 46, scope: !2106)
!2109 = !DILocation(line: 555, column: 38, scope: !2106)
!2110 = !DILocation(line: 555, column: 2, scope: !2100)
!2111 = !DILocation(line: 557, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 557, column: 7)
!2113 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 556, column: 27)
!2114 = !DILocation(line: 557, column: 13, scope: !2112)
!2115 = !DILocation(line: 557, column: 10, scope: !2112)
!2116 = !DILocation(line: 557, column: 7, scope: !2113)
!2117 = !DILocation(line: 558, column: 8, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 558, column: 8)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 557, column: 18)
!2120 = !DILocation(line: 558, column: 14, scope: !2118)
!2121 = !DILocation(line: 558, column: 11, scope: !2118)
!2122 = !DILocation(line: 558, column: 16, scope: !2118)
!2123 = !DILocation(line: 558, column: 19, scope: !2118)
!2124 = !DILocation(line: 558, column: 24, scope: !2118)
!2125 = !DILocation(line: 558, column: 21, scope: !2118)
!2126 = !DILocation(line: 558, column: 8, scope: !2119)
!2127 = !DILocation(line: 559, column: 5, scope: !2118)
!2128 = !DILocation(line: 560, column: 3, scope: !2119)
!2129 = !DILocation(line: 561, column: 2, scope: !2113)
!2130 = !DILocation(line: 556, column: 4, scope: !2106)
!2131 = !DILocation(line: 556, column: 14, scope: !2106)
!2132 = !DILocation(line: 556, column: 19, scope: !2106)
!2133 = !DILocation(line: 556, column: 12, scope: !2106)
!2134 = !DILocation(line: 555, column: 2, scope: !2106)
!2135 = distinct !{!2135, !2110, !2136}
!2136 = !DILocation(line: 561, column: 2, scope: !2100)
!2137 = !DILocation(line: 562, column: 2, scope: !2063)
!2138 = !DILocation(line: 563, column: 1, scope: !2063)
!2139 = distinct !DISubprogram(name: "atom_in_res_pat", scope: !3, file: !3, line: 593, type: !1049, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!2140 = !DILocalVariable(name: "ap", arg: 1, scope: !2139, file: !3, line: 593, type: !126)
!2141 = !DILocation(line: 593, column: 37, scope: !2139)
!2142 = !DILocalVariable(name: "pat", arg: 2, scope: !2139, file: !3, line: 593, type: !28)
!2143 = !DILocation(line: 593, column: 46, scope: !2139)
!2144 = !DILocalVariable(name: "res", scope: !2139, file: !3, line: 595, type: !80)
!2145 = !DILocation(line: 595, column: 13, scope: !2139)
!2146 = !DILocation(line: 597, column: 8, scope: !2139)
!2147 = !DILocation(line: 597, column: 12, scope: !2139)
!2148 = !DILocation(line: 597, column: 6, scope: !2139)
!2149 = !DILocation(line: 598, column: 15, scope: !2139)
!2150 = !DILocation(line: 598, column: 2, scope: !2139)
!2151 = !DILocation(line: 603, column: 2, scope: !2139)
!2152 = !DILocation(line: 604, column: 16, scope: !2139)
!2153 = !DILocation(line: 604, column: 21, scope: !2139)
!2154 = !DILocation(line: 604, column: 10, scope: !2139)
!2155 = !DILocation(line: 604, column: 2, scope: !2139)
!2156 = distinct !DISubprogram(name: "atom_in_res_range", scope: !3, file: !3, line: 626, type: !2064, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!2157 = !DILocalVariable(name: "ap", arg: 1, scope: !2156, file: !3, line: 626, type: !126)
!2158 = !DILocation(line: 626, column: 39, scope: !2156)
!2159 = !DILocalVariable(name: "lo", arg: 2, scope: !2156, file: !3, line: 626, type: !23)
!2160 = !DILocation(line: 626, column: 47, scope: !2156)
!2161 = !DILocalVariable(name: "hi", arg: 3, scope: !2156, file: !3, line: 626, type: !23)
!2162 = !DILocation(line: 626, column: 55, scope: !2156)
!2163 = !DILocalVariable(name: "r", scope: !2156, file: !3, line: 628, type: !23)
!2164 = !DILocation(line: 628, column: 7, scope: !2156)
!2165 = !DILocalVariable(name: "rhi", scope: !2156, file: !3, line: 628, type: !23)
!2166 = !DILocation(line: 628, column: 10, scope: !2156)
!2167 = !DILocalVariable(name: "sp", scope: !2156, file: !3, line: 629, type: !63)
!2168 = !DILocation(line: 629, column: 12, scope: !2156)
!2169 = !DILocalVariable(name: "res", scope: !2156, file: !3, line: 630, type: !80)
!2170 = !DILocation(line: 630, column: 13, scope: !2156)
!2171 = !DILocalVariable(name: "res1", scope: !2156, file: !3, line: 630, type: !80)
!2172 = !DILocation(line: 630, column: 19, scope: !2156)
!2173 = !DILocation(line: 632, column: 8, scope: !2156)
!2174 = !DILocation(line: 632, column: 12, scope: !2156)
!2175 = !DILocation(line: 632, column: 6, scope: !2156)
!2176 = !DILocation(line: 633, column: 7, scope: !2156)
!2177 = !DILocation(line: 633, column: 12, scope: !2156)
!2178 = !DILocation(line: 633, column: 5, scope: !2156)
!2179 = !DILocation(line: 635, column: 10, scope: !2156)
!2180 = !DILocation(line: 635, column: 13, scope: !2156)
!2181 = !DILocation(line: 635, column: 8, scope: !2156)
!2182 = !DILocation(line: 635, column: 26, scope: !2156)
!2183 = !DILocation(line: 635, column: 30, scope: !2156)
!2184 = !DILocation(line: 635, column: 44, scope: !2156)
!2185 = !DILocation(line: 635, column: 6, scope: !2156)
!2186 = !DILocation(line: 636, column: 9, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 636, column: 2)
!2188 = !DILocation(line: 636, column: 7, scope: !2187)
!2189 = !DILocation(line: 636, column: 14, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 636, column: 2)
!2191 = !DILocation(line: 636, column: 18, scope: !2190)
!2192 = !DILocation(line: 636, column: 22, scope: !2190)
!2193 = !DILocation(line: 636, column: 16, scope: !2190)
!2194 = !DILocation(line: 636, column: 2, scope: !2187)
!2195 = !DILocation(line: 637, column: 10, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 636, column: 40)
!2197 = !DILocation(line: 637, column: 14, scope: !2196)
!2198 = !DILocation(line: 637, column: 26, scope: !2196)
!2199 = !DILocation(line: 637, column: 8, scope: !2196)
!2200 = !DILocation(line: 638, column: 7, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 638, column: 7)
!2202 = !DILocation(line: 638, column: 14, scope: !2201)
!2203 = !DILocation(line: 638, column: 11, scope: !2201)
!2204 = !DILocation(line: 638, column: 7, scope: !2196)
!2205 = !DILocation(line: 639, column: 8, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 639, column: 8)
!2207 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 638, column: 20)
!2208 = !DILocation(line: 639, column: 14, scope: !2206)
!2209 = !DILocation(line: 639, column: 16, scope: !2206)
!2210 = !DILocation(line: 639, column: 11, scope: !2206)
!2211 = !DILocation(line: 639, column: 20, scope: !2206)
!2212 = !DILocation(line: 639, column: 23, scope: !2206)
!2213 = !DILocation(line: 639, column: 25, scope: !2206)
!2214 = !DILocation(line: 639, column: 32, scope: !2206)
!2215 = !DILocation(line: 639, column: 29, scope: !2206)
!2216 = !DILocation(line: 639, column: 8, scope: !2207)
!2217 = !DILocation(line: 640, column: 5, scope: !2206)
!2218 = !DILocation(line: 641, column: 3, scope: !2207)
!2219 = !DILocation(line: 642, column: 2, scope: !2196)
!2220 = !DILocation(line: 636, column: 36, scope: !2190)
!2221 = !DILocation(line: 636, column: 2, scope: !2190)
!2222 = distinct !{!2222, !2194, !2223}
!2223 = !DILocation(line: 642, column: 2, scope: !2187)
!2224 = !DILocation(line: 643, column: 2, scope: !2156)
!2225 = !DILocation(line: 644, column: 1, scope: !2156)
!2226 = distinct !DISubprogram(name: "atom_in_atom_pat", scope: !3, file: !3, line: 682, type: !1049, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!2227 = !DILocalVariable(name: "ap", arg: 1, scope: !2226, file: !3, line: 682, type: !126)
!2228 = !DILocation(line: 682, column: 38, scope: !2226)
!2229 = !DILocalVariable(name: "pat", arg: 2, scope: !2226, file: !3, line: 682, type: !28)
!2230 = !DILocation(line: 682, column: 47, scope: !2226)
!2231 = !DILocation(line: 685, column: 15, scope: !2226)
!2232 = !DILocation(line: 685, column: 2, scope: !2226)
!2233 = !DILocation(line: 690, column: 2, scope: !2226)
!2234 = !DILocation(line: 691, column: 16, scope: !2226)
!2235 = !DILocation(line: 691, column: 20, scope: !2226)
!2236 = !DILocation(line: 691, column: 10, scope: !2226)
!2237 = !DILocation(line: 691, column: 2, scope: !2226)
