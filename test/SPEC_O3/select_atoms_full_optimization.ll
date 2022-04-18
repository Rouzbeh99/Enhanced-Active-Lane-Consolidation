; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/select_atoms.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/select_atoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@spart = internal unnamed_addr global i8* null, align 8, !dbg !26
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@rpart = internal unnamed_addr global i8* null, align 8, !dbg !31
@apart = internal unnamed_addr global i8* null, align 8, !dbg !33
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"atom range not allowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rexpr = internal global [1000 x i8] zeroinitializer, align 16, !dbg !35
@expbuf = internal global [1000 x i8] zeroinitializer, align 16, !dbg !40

; Function Attrs: nounwind uwtable
define dso_local i32 @setpoint(%struct.molecule_t* noundef %mol, i8* noundef %aexpr, double* nocapture noundef writeonly %point) local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !264, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i8* %aexpr, metadata !265, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double* %point, metadata !266, metadata !DIExpression()), !dbg !276
  %call = tail call i32 @select_atoms(%struct.molecule_t* noundef %mol, i8* noundef %aexpr), !dbg !277
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression()), !dbg !276
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !278
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !270, metadata !DIExpression()), !dbg !276
  %sp.0101 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !280, !tbaa !281
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0101, metadata !270, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression()), !dbg !276
  %tobool.not102 = icmp eq %struct.strand_t* %sp.0101, null, !dbg !285
  br i1 %tobool.not102, label %if.then31, label %for.body, !dbg !285

for.body:                                         ; preds = %entry, %for.inc28
  %sp.0107 = phi %struct.strand_t* [ %sp.0, %for.inc28 ], [ %sp.0101, %entry ]
  %z.0106 = phi double [ %z.5, %for.inc28 ], [ 0.000000e+00, %entry ]
  %ta.0103 = phi i32 [ %ta.5, %for.inc28 ], [ 0, %entry ]
  %0 = phi <2 x double> [ %17, %for.inc28 ], [ zeroinitializer, %entry ]
  call void @llvm.dbg.value(metadata double %z.0106, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.0103, metadata !269, metadata !DIExpression()), !dbg !276
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0107, i64 0, i32 2, !dbg !286
  %1 = load i32, i32* %s_attr, align 4, !dbg !286, !tbaa !290
  %and = and i32 %1, 1, !dbg !293
  %tobool1.not = icmp eq i32 %and, 0, !dbg !293
  br i1 %tobool1.not, label %for.inc28, label %for.cond2.preheader, !dbg !294

for.cond2.preheader:                              ; preds = %for.body
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0107, i64 0, i32 5
  %2 = load i32, i32* %s_nresidues, align 8, !tbaa !295
  call void @llvm.dbg.value(metadata double %z.0106, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.0103, metadata !269, metadata !DIExpression()), !dbg !276
  %cmp91 = icmp sgt i32 %2, 0, !dbg !296
  br i1 %cmp91, label %for.body3.lr.ph, label %for.inc28, !dbg !300

for.body3.lr.ph:                                  ; preds = %for.cond2.preheader
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0107, i64 0, i32 7
  %3 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !tbaa !301
  %wide.trip.count116 = zext i32 %2 to i64, !dbg !296
  br label %for.body3, !dbg !300

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc24
  %indvars.iv113 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next114, %for.inc24 ]
  %z.196 = phi double [ %z.0106, %for.body3.lr.ph ], [ %z.4, %for.inc24 ]
  %ta.192 = phi i32 [ %ta.0103, %for.body3.lr.ph ], [ %ta.4, %for.inc24 ]
  %4 = phi <2 x double> [ %0, %for.body3.lr.ph ], [ %16, %for.inc24 ]
  call void @llvm.dbg.value(metadata double %z.196, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i64 %indvars.iv113, metadata !267, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.192, metadata !269, metadata !DIExpression()), !dbg !276
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %3, i64 %indvars.iv113, !dbg !302
  %5 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !302, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %5, metadata !271, metadata !DIExpression()), !dbg !276
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 6, !dbg !304
  %6 = load i32, i32* %r_attr, align 8, !dbg !304, !tbaa !306
  %and4 = and i32 %6, 1, !dbg !308
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !308
  br i1 %tobool5.not, label %for.inc24, label %for.cond7.preheader, !dbg !309

for.cond7.preheader:                              ; preds = %for.body3
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 15
  %7 = load i32, i32* %r_natoms, align 8, !tbaa !310
  call void @llvm.dbg.value(metadata double %z.196, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.192, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 0, metadata !268, metadata !DIExpression()), !dbg !276
  %cmp882 = icmp sgt i32 %7, 0, !dbg !311
  br i1 %cmp882, label %for.body9.lr.ph, label %for.inc24, !dbg !315

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 17
  %8 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !tbaa !316
  %wide.trip.count = zext i32 %7 to i64, !dbg !311
  br label %for.body9, !dbg !315

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %z.287 = phi double [ %z.196, %for.body9.lr.ph ], [ %z.3, %for.inc ]
  %ta.284 = phi i32 [ %ta.192, %for.body9.lr.ph ], [ %ta.3, %for.inc ]
  %9 = phi <2 x double> [ %4, %for.body9.lr.ph ], [ %15, %for.inc ]
  call void @llvm.dbg.value(metadata double %z.287, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.284, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %8, i64 %indvars.iv), metadata !272, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !276
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i64 %indvars.iv, i32 2, !dbg !317
  %10 = load i32, i32* %a_attr, align 8, !dbg !317, !tbaa !320
  %and12 = and i32 %10, 1, !dbg !323
  %tobool13.not = icmp eq i32 %and12, 0, !dbg !323
  br i1 %tobool13.not, label %for.inc, label %if.then14, !dbg !324

if.then14:                                        ; preds = %for.body9
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %8, i64 %indvars.iv), metadata !272, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !276
  %arrayidx15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i64 %indvars.iv, i32 17, i64 0, !dbg !325
  call void @llvm.dbg.value(metadata double undef, metadata !273, metadata !DIExpression()), !dbg !276
  %11 = bitcast double* %arrayidx15 to <2 x double>*, !dbg !325
  %12 = load <2 x double>, <2 x double>* %11, align 8, !dbg !325, !tbaa !327
  %13 = fadd <2 x double> %9, %12, !dbg !328
  call void @llvm.dbg.value(metadata double undef, metadata !274, metadata !DIExpression()), !dbg !276
  %arrayidx20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i64 %indvars.iv, i32 17, i64 2, !dbg !329
  %14 = load double, double* %arrayidx20, align 8, !dbg !329, !tbaa !327
  %add21 = fadd double %z.287, %14, !dbg !330
  call void @llvm.dbg.value(metadata double %add21, metadata !275, metadata !DIExpression()), !dbg !276
  %inc = add nsw i32 %ta.284, 1, !dbg !331
  call void @llvm.dbg.value(metadata i32 %inc, metadata !269, metadata !DIExpression()), !dbg !276
  br label %for.inc, !dbg !332

for.inc:                                          ; preds = %for.body9, %if.then14
  %ta.3 = phi i32 [ %inc, %if.then14 ], [ %ta.284, %for.body9 ], !dbg !280
  %z.3 = phi double [ %add21, %if.then14 ], [ %z.287, %for.body9 ], !dbg !276
  %15 = phi <2 x double> [ %13, %if.then14 ], [ %9, %for.body9 ], !dbg !276
  call void @llvm.dbg.value(metadata double %z.3, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.3, metadata !269, metadata !DIExpression()), !dbg !276
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !333
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !268, metadata !DIExpression()), !dbg !276
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !311
  br i1 %exitcond.not, label %for.inc24, label %for.body9, !dbg !315, !llvm.loop !334

for.inc24:                                        ; preds = %for.inc, %for.cond7.preheader, %for.body3
  %ta.4 = phi i32 [ %ta.192, %for.body3 ], [ %ta.192, %for.cond7.preheader ], [ %ta.3, %for.inc ], !dbg !337
  %z.4 = phi double [ %z.196, %for.body3 ], [ %z.196, %for.cond7.preheader ], [ %z.3, %for.inc ], !dbg !338
  %16 = phi <2 x double> [ %4, %for.body3 ], [ %4, %for.cond7.preheader ], [ %15, %for.inc ], !dbg !339
  call void @llvm.dbg.value(metadata double %z.4, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.4, metadata !269, metadata !DIExpression()), !dbg !276
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1, !dbg !340
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next114, metadata !267, metadata !DIExpression()), !dbg !276
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116, !dbg !296
  br i1 %exitcond117.not, label %for.inc28, label %for.body3, !dbg !300, !llvm.loop !341

for.inc28:                                        ; preds = %for.inc24, %for.cond2.preheader, %for.body
  %ta.5 = phi i32 [ %ta.0103, %for.body ], [ %ta.0103, %for.cond2.preheader ], [ %ta.4, %for.inc24 ], !dbg !337
  %z.5 = phi double [ %z.0106, %for.body ], [ %z.0106, %for.cond2.preheader ], [ %z.4, %for.inc24 ], !dbg !338
  %17 = phi <2 x double> [ %0, %for.body ], [ %0, %for.cond2.preheader ], [ %16, %for.inc24 ], !dbg !339
  call void @llvm.dbg.value(metadata double %z.5, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double undef, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.5, metadata !269, metadata !DIExpression()), !dbg !276
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0107, i64 0, i32 4, !dbg !343
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !270, metadata !DIExpression()), !dbg !276
  %sp.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !280, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0, metadata !270, metadata !DIExpression()), !dbg !276
  %tobool.not = icmp eq %struct.strand_t* %sp.0, null, !dbg !285
  br i1 %tobool.not, label %for.end29, label %for.body, !dbg !285, !llvm.loop !344

for.end29:                                        ; preds = %for.inc28
  %cmp30 = icmp eq i32 %ta.5, 0, !dbg !346
  br i1 %cmp30, label %if.then31, label %if.else, !dbg !348

if.then31:                                        ; preds = %entry, %for.end29
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !349, !tbaa !281
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef %aexpr) #13, !dbg !351
  br label %cleanup, !dbg !352

if.else:                                          ; preds = %for.end29
  %conv = sitofp i32 %ta.5 to double, !dbg !353
  %19 = insertelement <2 x double> poison, double %conv, i64 0, !dbg !355
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !355
  %21 = fdiv <2 x double> %17, %20, !dbg !355
  %22 = bitcast double* %point to <2 x double>*, !dbg !356
  store <2 x double> %21, <2 x double>* %22, align 8, !dbg !356, !tbaa !327
  %div38 = fdiv double %z.5, %conv, !dbg !357
  %arrayidx39 = getelementptr inbounds double, double* %point, i64 2, !dbg !358
  store double %div38, double* %arrayidx39, align 8, !dbg !359, !tbaa !327
  br label %cleanup, !dbg !360

cleanup:                                          ; preds = %if.else, %if.then31
  %retval.0 = phi i32 [ 1, %if.then31 ], [ 0, %if.else ], !dbg !276
  ret i32 %retval.0, !dbg !361
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* noundef readonly %mol, i8* noundef %aex) local_unnamed_addr #0 !dbg !362 {
entry:
  %lo.i = alloca i32, align 4
  %hi.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !366, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %aex, metadata !367, metadata !DIExpression()), !dbg !371
  %cmp = icmp eq i8* %aex, null, !dbg !372
  %m_strands.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !371
  %sp.033.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !371, !tbaa !281
  %tobool.not34.i = icmp eq %struct.strand_t* %sp.033.i, null, !dbg !371
  br i1 %cmp, label %if.then, label %if.end, !dbg !374

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !375, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.033.i, metadata !382, metadata !DIExpression()), !dbg !384
  br i1 %tobool.not34.i, label %cleanup, label %for.body.i, !dbg !387

for.body.i:                                       ; preds = %if.then, %for.inc13.i
  %sp.035.i = phi %struct.strand_t* [ %sp.0.i, %for.inc13.i ], [ %sp.033.i, %if.then ]
  %s_attr.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i, i64 0, i32 2, !dbg !389
  %0 = load i32, i32* %s_attr.i, align 4, !dbg !392, !tbaa !290
  %or.i = or i32 %0, 1, !dbg !392
  store i32 %or.i, i32* %s_attr.i, align 4, !dbg !392, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !381, metadata !DIExpression()), !dbg !384
  %s_nresidues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i, i64 0, i32 5
  %1 = load i32, i32* %s_nresidues.i, align 8, !tbaa !295
  call void @llvm.dbg.value(metadata i32 0, metadata !381, metadata !DIExpression()), !dbg !384
  %cmp31.i = icmp sgt i32 %1, 0, !dbg !393
  br i1 %cmp31.i, label %for.body2.lr.ph.i, label %for.inc13.i, !dbg !396

for.body2.lr.ph.i:                                ; preds = %for.body.i
  %s_residues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i, i64 0, i32 7
  %2 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i, align 8, !tbaa !301
  %wide.trip.count40.i = zext i32 %1 to i64, !dbg !393
  br label %for.body2.i, !dbg !396

for.body2.i:                                      ; preds = %for.inc10.i, %for.body2.lr.ph.i
  %indvars.iv37.i = phi i64 [ 0, %for.body2.lr.ph.i ], [ %indvars.iv.next38.i, %for.inc10.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37.i, metadata !381, metadata !DIExpression()), !dbg !384
  %arrayidx.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %2, i64 %indvars.iv37.i, !dbg !397
  %3 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i, align 8, !dbg !397, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !383, metadata !DIExpression()), !dbg !384
  %r_attr.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 6, !dbg !399
  %4 = load i32, i32* %r_attr.i, align 8, !dbg !400, !tbaa !306
  %or3.i = or i32 %4, 1, !dbg !400
  store i32 %or3.i, i32* %r_attr.i, align 8, !dbg !400, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !380, metadata !DIExpression()), !dbg !384
  %r_natoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 15
  %5 = load i32, i32* %r_natoms.i, align 8, !tbaa !310
  call void @llvm.dbg.value(metadata i32 0, metadata !380, metadata !DIExpression()), !dbg !384
  %cmp529.i = icmp sgt i32 %5, 0, !dbg !401
  br i1 %cmp529.i, label %for.body6.lr.ph.i, label %for.inc10.i, !dbg !404

for.body6.lr.ph.i:                                ; preds = %for.body2.i
  %r_atoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17
  %6 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i, align 8, !tbaa !316
  %wide.trip.count.i = zext i32 %5 to i64, !dbg !401
  %7 = add nsw i64 %wide.trip.count.i, -1, !dbg !404
  %xtraiter613 = and i64 %wide.trip.count.i, 3, !dbg !404
  %8 = icmp ult i64 %7, 3, !dbg !404
  br i1 %8, label %for.inc10.i.loopexit.unr-lcssa, label %for.body6.lr.ph.i.new, !dbg !404

for.body6.lr.ph.i.new:                            ; preds = %for.body6.lr.ph.i
  %unroll_iter616 = and i64 %wide.trip.count.i, 4294967292, !dbg !404
  br label %for.body6.i, !dbg !404

for.body6.i:                                      ; preds = %for.body6.i, %for.body6.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body6.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body6.i ]
  %niter617 = phi i64 [ 0, %for.body6.lr.ph.i.new ], [ %niter617.next.3, %for.body6.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !380, metadata !DIExpression()), !dbg !384
  %a_attr.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.i, i32 2, !dbg !405
  %9 = load i32, i32* %a_attr.i, align 8, !dbg !406, !tbaa !320
  %or9.i = or i32 %9, 1, !dbg !406
  store i32 %or9.i, i32* %a_attr.i, align 8, !dbg !406, !tbaa !320
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1, !dbg !407
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !380, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !380, metadata !DIExpression()), !dbg !384
  %a_attr.i.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.next.i, i32 2, !dbg !405
  %10 = load i32, i32* %a_attr.i.1, align 8, !dbg !406, !tbaa !320
  %or9.i.1 = or i32 %10, 1, !dbg !406
  store i32 %or9.i.1, i32* %a_attr.i.1, align 8, !dbg !406, !tbaa !320
  %indvars.iv.next.i.1 = or i64 %indvars.iv.i, 2, !dbg !407
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.1, metadata !380, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.1, metadata !380, metadata !DIExpression()), !dbg !384
  %a_attr.i.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.next.i.1, i32 2, !dbg !405
  %11 = load i32, i32* %a_attr.i.2, align 8, !dbg !406, !tbaa !320
  %or9.i.2 = or i32 %11, 1, !dbg !406
  store i32 %or9.i.2, i32* %a_attr.i.2, align 8, !dbg !406, !tbaa !320
  %indvars.iv.next.i.2 = or i64 %indvars.iv.i, 3, !dbg !407
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.2, metadata !380, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.2, metadata !380, metadata !DIExpression()), !dbg !384
  %a_attr.i.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.next.i.2, i32 2, !dbg !405
  %12 = load i32, i32* %a_attr.i.3, align 8, !dbg !406, !tbaa !320
  %or9.i.3 = or i32 %12, 1, !dbg !406
  store i32 %or9.i.3, i32* %a_attr.i.3, align 8, !dbg !406, !tbaa !320
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4, !dbg !407
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.3, metadata !380, metadata !DIExpression()), !dbg !384
  %niter617.next.3 = add i64 %niter617, 4, !dbg !404
  %niter617.ncmp.3 = icmp eq i64 %niter617.next.3, %unroll_iter616, !dbg !404
  br i1 %niter617.ncmp.3, label %for.inc10.i.loopexit.unr-lcssa, label %for.body6.i, !dbg !404, !llvm.loop !408

for.inc10.i.loopexit.unr-lcssa:                   ; preds = %for.body6.i, %for.body6.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body6.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body6.i ]
  %lcmp.mod615.not = icmp eq i64 %xtraiter613, 0, !dbg !404
  br i1 %lcmp.mod615.not, label %for.inc10.i, label %for.body6.i.epil, !dbg !404

for.body6.i.epil:                                 ; preds = %for.inc10.i.loopexit.unr-lcssa, %for.body6.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body6.i.epil ], [ %indvars.iv.i.unr, %for.inc10.i.loopexit.unr-lcssa ]
  %epil.iter614 = phi i64 [ %epil.iter614.next, %for.body6.i.epil ], [ 0, %for.inc10.i.loopexit.unr-lcssa ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.epil, metadata !380, metadata !DIExpression()), !dbg !384
  %a_attr.i.epil = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.i.epil, i32 2, !dbg !405
  %13 = load i32, i32* %a_attr.i.epil, align 8, !dbg !406, !tbaa !320
  %or9.i.epil = or i32 %13, 1, !dbg !406
  store i32 %or9.i.epil, i32* %a_attr.i.epil, align 8, !dbg !406, !tbaa !320
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1, !dbg !407
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.epil, metadata !380, metadata !DIExpression()), !dbg !384
  %epil.iter614.next = add i64 %epil.iter614, 1, !dbg !404
  %epil.iter614.cmp.not = icmp eq i64 %epil.iter614.next, %xtraiter613, !dbg !404
  br i1 %epil.iter614.cmp.not, label %for.inc10.i, label %for.body6.i.epil, !dbg !404, !llvm.loop !410

for.inc10.i:                                      ; preds = %for.inc10.i.loopexit.unr-lcssa, %for.body6.i.epil, %for.body2.i
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1, !dbg !412
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38.i, metadata !381, metadata !DIExpression()), !dbg !384
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count40.i, !dbg !393
  br i1 %exitcond41.not.i, label %for.inc13.i, label %for.body2.i, !dbg !396, !llvm.loop !413

for.inc13.i:                                      ; preds = %for.inc10.i, %for.body.i
  %s_next.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i, i64 0, i32 4, !dbg !415
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !382, metadata !DIExpression()), !dbg !384
  %sp.0.i = load %struct.strand_t*, %struct.strand_t** %s_next.i, align 8, !dbg !416, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i, metadata !382, metadata !DIExpression()), !dbg !384
  %tobool.not.i = icmp eq %struct.strand_t* %sp.0.i, null, !dbg !387
  br i1 %tobool.not.i, label %cleanup, label %for.body.i, !dbg !387, !llvm.loop !417

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !419, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !424, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.033.i, metadata !424, metadata !DIExpression()), !dbg !426
  br i1 %tobool.not34.i, label %for.body.preheader, label %for.body.i48, !dbg !428

for.body.i48:                                     ; preds = %if.end, %for.inc13.i72
  %sp.035.i44 = phi %struct.strand_t* [ %sp.0.i70, %for.inc13.i72 ], [ %sp.033.i, %if.end ]
  %s_attr.i45 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i44, i64 0, i32 2, !dbg !430
  %14 = load i32, i32* %s_attr.i45, align 4, !dbg !433, !tbaa !290
  %and.i = and i32 %14, -129, !dbg !433
  store i32 %and.i, i32* %s_attr.i45, align 4, !dbg !433, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !423, metadata !DIExpression()), !dbg !426
  %s_nresidues.i46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i44, i64 0, i32 5
  %15 = load i32, i32* %s_nresidues.i46, align 8, !tbaa !295
  %cmp31.i47 = icmp sgt i32 %15, 0, !dbg !434
  br i1 %cmp31.i47, label %for.body2.lr.ph.i51, label %for.inc13.i72, !dbg !437

for.body2.lr.ph.i51:                              ; preds = %for.body.i48
  %s_residues.i49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i44, i64 0, i32 7
  %16 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i49, align 8, !tbaa !301
  %wide.trip.count40.i50 = zext i32 %15 to i64, !dbg !434
  br label %for.body2.i57, !dbg !437

for.body2.i57:                                    ; preds = %for.inc10.i68, %for.body2.lr.ph.i51
  %indvars.iv37.i52 = phi i64 [ 0, %for.body2.lr.ph.i51 ], [ %indvars.iv.next38.i66, %for.inc10.i68 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37.i52, metadata !423, metadata !DIExpression()), !dbg !426
  %arrayidx.i53 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %16, i64 %indvars.iv37.i52, !dbg !438
  %17 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i53, align 8, !dbg !438, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %17, metadata !425, metadata !DIExpression()), !dbg !426
  %r_attr.i54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 6, !dbg !440
  %18 = load i32, i32* %r_attr.i54, align 8, !dbg !441, !tbaa !306
  %and3.i = and i32 %18, -129, !dbg !441
  store i32 %and3.i, i32* %r_attr.i54, align 8, !dbg !441, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !422, metadata !DIExpression()), !dbg !426
  %r_natoms.i55 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 15
  %19 = load i32, i32* %r_natoms.i55, align 8, !tbaa !310
  %cmp529.i56 = icmp sgt i32 %19, 0, !dbg !442
  br i1 %cmp529.i56, label %for.body6.lr.ph.i60, label %for.inc10.i68, !dbg !445

for.body6.lr.ph.i60:                              ; preds = %for.body2.i57
  %r_atoms.i58 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 17
  %20 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i58, align 8, !tbaa !316
  %wide.trip.count.i59 = zext i32 %19 to i64, !dbg !442
  %21 = add nsw i64 %wide.trip.count.i59, -1, !dbg !445
  %xtraiter = and i64 %wide.trip.count.i59, 3, !dbg !445
  %22 = icmp ult i64 %21, 3, !dbg !445
  br i1 %22, label %for.inc10.i68.loopexit.unr-lcssa, label %for.body6.lr.ph.i60.new, !dbg !445

for.body6.lr.ph.i60.new:                          ; preds = %for.body6.lr.ph.i60
  %unroll_iter = and i64 %wide.trip.count.i59, 4294967292, !dbg !445
  br label %for.body6.i65, !dbg !445

for.body6.i65:                                    ; preds = %for.body6.i65, %for.body6.lr.ph.i60.new
  %indvars.iv.i61 = phi i64 [ 0, %for.body6.lr.ph.i60.new ], [ %indvars.iv.next.i63.3, %for.body6.i65 ]
  %niter = phi i64 [ 0, %for.body6.lr.ph.i60.new ], [ %niter.next.3, %for.body6.i65 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i61, metadata !422, metadata !DIExpression()), !dbg !426
  %a_attr.i62 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %20, i64 %indvars.iv.i61, i32 2, !dbg !446
  %23 = load i32, i32* %a_attr.i62, align 8, !dbg !447, !tbaa !320
  %and9.i = and i32 %23, -129, !dbg !447
  store i32 %and9.i, i32* %a_attr.i62, align 8, !dbg !447, !tbaa !320
  %indvars.iv.next.i63 = or i64 %indvars.iv.i61, 1, !dbg !448
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63, metadata !422, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63, metadata !422, metadata !DIExpression()), !dbg !426
  %a_attr.i62.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %20, i64 %indvars.iv.next.i63, i32 2, !dbg !446
  %24 = load i32, i32* %a_attr.i62.1, align 8, !dbg !447, !tbaa !320
  %and9.i.1 = and i32 %24, -129, !dbg !447
  store i32 %and9.i.1, i32* %a_attr.i62.1, align 8, !dbg !447, !tbaa !320
  %indvars.iv.next.i63.1 = or i64 %indvars.iv.i61, 2, !dbg !448
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63.1, metadata !422, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63.1, metadata !422, metadata !DIExpression()), !dbg !426
  %a_attr.i62.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %20, i64 %indvars.iv.next.i63.1, i32 2, !dbg !446
  %25 = load i32, i32* %a_attr.i62.2, align 8, !dbg !447, !tbaa !320
  %and9.i.2 = and i32 %25, -129, !dbg !447
  store i32 %and9.i.2, i32* %a_attr.i62.2, align 8, !dbg !447, !tbaa !320
  %indvars.iv.next.i63.2 = or i64 %indvars.iv.i61, 3, !dbg !448
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63.2, metadata !422, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63.2, metadata !422, metadata !DIExpression()), !dbg !426
  %a_attr.i62.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %20, i64 %indvars.iv.next.i63.2, i32 2, !dbg !446
  %26 = load i32, i32* %a_attr.i62.3, align 8, !dbg !447, !tbaa !320
  %and9.i.3 = and i32 %26, -129, !dbg !447
  store i32 %and9.i.3, i32* %a_attr.i62.3, align 8, !dbg !447, !tbaa !320
  %indvars.iv.next.i63.3 = add nuw nsw i64 %indvars.iv.i61, 4, !dbg !448
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63.3, metadata !422, metadata !DIExpression()), !dbg !426
  %niter.next.3 = add i64 %niter, 4, !dbg !445
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !445
  br i1 %niter.ncmp.3, label %for.inc10.i68.loopexit.unr-lcssa, label %for.body6.i65, !dbg !445, !llvm.loop !449

for.inc10.i68.loopexit.unr-lcssa:                 ; preds = %for.body6.i65, %for.body6.lr.ph.i60
  %indvars.iv.i61.unr = phi i64 [ 0, %for.body6.lr.ph.i60 ], [ %indvars.iv.next.i63.3, %for.body6.i65 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !445
  br i1 %lcmp.mod.not, label %for.inc10.i68, label %for.body6.i65.epil, !dbg !445

for.body6.i65.epil:                               ; preds = %for.inc10.i68.loopexit.unr-lcssa, %for.body6.i65.epil
  %indvars.iv.i61.epil = phi i64 [ %indvars.iv.next.i63.epil, %for.body6.i65.epil ], [ %indvars.iv.i61.unr, %for.inc10.i68.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body6.i65.epil ], [ 0, %for.inc10.i68.loopexit.unr-lcssa ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i61.epil, metadata !422, metadata !DIExpression()), !dbg !426
  %a_attr.i62.epil = getelementptr inbounds %struct.atom_t, %struct.atom_t* %20, i64 %indvars.iv.i61.epil, i32 2, !dbg !446
  %27 = load i32, i32* %a_attr.i62.epil, align 8, !dbg !447, !tbaa !320
  %and9.i.epil = and i32 %27, -129, !dbg !447
  store i32 %and9.i.epil, i32* %a_attr.i62.epil, align 8, !dbg !447, !tbaa !320
  %indvars.iv.next.i63.epil = add nuw nsw i64 %indvars.iv.i61.epil, 1, !dbg !448
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63.epil, metadata !422, metadata !DIExpression()), !dbg !426
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !445
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !445
  br i1 %epil.iter.cmp.not, label %for.inc10.i68, label %for.body6.i65.epil, !dbg !445, !llvm.loop !451

for.inc10.i68:                                    ; preds = %for.inc10.i68.loopexit.unr-lcssa, %for.body6.i65.epil, %for.body2.i57
  %indvars.iv.next38.i66 = add nuw nsw i64 %indvars.iv37.i52, 1, !dbg !452
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38.i66, metadata !423, metadata !DIExpression()), !dbg !426
  %exitcond41.not.i67 = icmp eq i64 %indvars.iv.next38.i66, %wide.trip.count40.i50, !dbg !434
  br i1 %exitcond41.not.i67, label %for.inc13.i72, label %for.body2.i57, !dbg !437, !llvm.loop !453

for.inc13.i72:                                    ; preds = %for.inc10.i68, %for.body.i48
  %s_next.i69 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i44, i64 0, i32 4, !dbg !455
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !424, metadata !DIExpression()), !dbg !426
  %sp.0.i70 = load %struct.strand_t*, %struct.strand_t** %s_next.i69, align 8, !dbg !456, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i70, metadata !424, metadata !DIExpression()), !dbg !426
  %tobool.not.i71 = icmp eq %struct.strand_t* %sp.0.i70, null, !dbg !428
  br i1 %tobool.not.i71, label %for.body.i81, label %for.body.i48, !dbg !428, !llvm.loop !457

for.body.i81:                                     ; preds = %for.inc13.i72, %for.inc13.i107
  %sp.035.i76 = phi %struct.strand_t* [ %sp.0.i105, %for.inc13.i107 ], [ %sp.033.i, %for.inc13.i72 ]
  %s_attr.i77 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i76, i64 0, i32 2, !dbg !459
  %28 = load i32, i32* %s_attr.i77, align 4, !dbg !471, !tbaa !290
  %and.i78 = and i32 %28, -2, !dbg !471
  store i32 %and.i78, i32* %s_attr.i77, align 4, !dbg !471, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !467, metadata !DIExpression()), !dbg !472
  %s_nresidues.i79 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i76, i64 0, i32 5
  %29 = load i32, i32* %s_nresidues.i79, align 8, !tbaa !295
  %cmp31.i80 = icmp sgt i32 %29, 0, !dbg !473
  br i1 %cmp31.i80, label %for.body2.lr.ph.i84, label %for.inc13.i107, !dbg !476

for.body2.lr.ph.i84:                              ; preds = %for.body.i81
  %s_residues.i82 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i76, i64 0, i32 7
  %30 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i82, align 8, !tbaa !301
  %wide.trip.count40.i83 = zext i32 %29 to i64, !dbg !473
  br label %for.body2.i91, !dbg !476

for.body2.i91:                                    ; preds = %for.inc10.i103, %for.body2.lr.ph.i84
  %indvars.iv37.i85 = phi i64 [ 0, %for.body2.lr.ph.i84 ], [ %indvars.iv.next38.i101, %for.inc10.i103 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37.i85, metadata !467, metadata !DIExpression()), !dbg !472
  %arrayidx.i86 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %30, i64 %indvars.iv37.i85, !dbg !477
  %31 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i86, align 8, !dbg !477, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %31, metadata !469, metadata !DIExpression()), !dbg !472
  %r_attr.i87 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 6, !dbg !479
  %32 = load i32, i32* %r_attr.i87, align 8, !dbg !480, !tbaa !306
  %and3.i88 = and i32 %32, -2, !dbg !480
  store i32 %and3.i88, i32* %r_attr.i87, align 8, !dbg !480, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !466, metadata !DIExpression()), !dbg !472
  %r_natoms.i89 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 15
  %33 = load i32, i32* %r_natoms.i89, align 8, !tbaa !310
  %cmp529.i90 = icmp sgt i32 %33, 0, !dbg !481
  br i1 %cmp529.i90, label %for.body6.lr.ph.i94, label %for.inc10.i103, !dbg !484

for.body6.lr.ph.i94:                              ; preds = %for.body2.i91
  %r_atoms.i92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 17
  %34 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i92, align 8, !tbaa !316
  %wide.trip.count.i93 = zext i32 %33 to i64, !dbg !481
  %35 = add nsw i64 %wide.trip.count.i93, -1, !dbg !484
  %xtraiter553 = and i64 %wide.trip.count.i93, 3, !dbg !484
  %36 = icmp ult i64 %35, 3, !dbg !484
  br i1 %36, label %for.inc10.i103.loopexit.unr-lcssa, label %for.body6.lr.ph.i94.new, !dbg !484

for.body6.lr.ph.i94.new:                          ; preds = %for.body6.lr.ph.i94
  %unroll_iter556 = and i64 %wide.trip.count.i93, 4294967292, !dbg !484
  br label %for.body6.i100, !dbg !484

for.body6.i100:                                   ; preds = %for.body6.i100, %for.body6.lr.ph.i94.new
  %indvars.iv.i95 = phi i64 [ 0, %for.body6.lr.ph.i94.new ], [ %indvars.iv.next.i98.3, %for.body6.i100 ]
  %niter557 = phi i64 [ 0, %for.body6.lr.ph.i94.new ], [ %niter557.next.3, %for.body6.i100 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i95, metadata !466, metadata !DIExpression()), !dbg !472
  %a_attr.i96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv.i95, i32 2, !dbg !485
  %37 = load i32, i32* %a_attr.i96, align 8, !dbg !486, !tbaa !320
  %and9.i97 = and i32 %37, -2, !dbg !486
  store i32 %and9.i97, i32* %a_attr.i96, align 8, !dbg !486, !tbaa !320
  %indvars.iv.next.i98 = or i64 %indvars.iv.i95, 1, !dbg !487
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i98, metadata !466, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i98, metadata !466, metadata !DIExpression()), !dbg !472
  %a_attr.i96.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv.next.i98, i32 2, !dbg !485
  %38 = load i32, i32* %a_attr.i96.1, align 8, !dbg !486, !tbaa !320
  %and9.i97.1 = and i32 %38, -2, !dbg !486
  store i32 %and9.i97.1, i32* %a_attr.i96.1, align 8, !dbg !486, !tbaa !320
  %indvars.iv.next.i98.1 = or i64 %indvars.iv.i95, 2, !dbg !487
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i98.1, metadata !466, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i98.1, metadata !466, metadata !DIExpression()), !dbg !472
  %a_attr.i96.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv.next.i98.1, i32 2, !dbg !485
  %39 = load i32, i32* %a_attr.i96.2, align 8, !dbg !486, !tbaa !320
  %and9.i97.2 = and i32 %39, -2, !dbg !486
  store i32 %and9.i97.2, i32* %a_attr.i96.2, align 8, !dbg !486, !tbaa !320
  %indvars.iv.next.i98.2 = or i64 %indvars.iv.i95, 3, !dbg !487
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i98.2, metadata !466, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i98.2, metadata !466, metadata !DIExpression()), !dbg !472
  %a_attr.i96.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv.next.i98.2, i32 2, !dbg !485
  %40 = load i32, i32* %a_attr.i96.3, align 8, !dbg !486, !tbaa !320
  %and9.i97.3 = and i32 %40, -2, !dbg !486
  store i32 %and9.i97.3, i32* %a_attr.i96.3, align 8, !dbg !486, !tbaa !320
  %indvars.iv.next.i98.3 = add nuw nsw i64 %indvars.iv.i95, 4, !dbg !487
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i98.3, metadata !466, metadata !DIExpression()), !dbg !472
  %niter557.next.3 = add i64 %niter557, 4, !dbg !484
  %niter557.ncmp.3 = icmp eq i64 %niter557.next.3, %unroll_iter556, !dbg !484
  br i1 %niter557.ncmp.3, label %for.inc10.i103.loopexit.unr-lcssa, label %for.body6.i100, !dbg !484, !llvm.loop !488

for.inc10.i103.loopexit.unr-lcssa:                ; preds = %for.body6.i100, %for.body6.lr.ph.i94
  %indvars.iv.i95.unr = phi i64 [ 0, %for.body6.lr.ph.i94 ], [ %indvars.iv.next.i98.3, %for.body6.i100 ]
  %lcmp.mod555.not = icmp eq i64 %xtraiter553, 0, !dbg !484
  br i1 %lcmp.mod555.not, label %for.inc10.i103, label %for.body6.i100.epil, !dbg !484

for.body6.i100.epil:                              ; preds = %for.inc10.i103.loopexit.unr-lcssa, %for.body6.i100.epil
  %indvars.iv.i95.epil = phi i64 [ %indvars.iv.next.i98.epil, %for.body6.i100.epil ], [ %indvars.iv.i95.unr, %for.inc10.i103.loopexit.unr-lcssa ]
  %epil.iter554 = phi i64 [ %epil.iter554.next, %for.body6.i100.epil ], [ 0, %for.inc10.i103.loopexit.unr-lcssa ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i95.epil, metadata !466, metadata !DIExpression()), !dbg !472
  %a_attr.i96.epil = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv.i95.epil, i32 2, !dbg !485
  %41 = load i32, i32* %a_attr.i96.epil, align 8, !dbg !486, !tbaa !320
  %and9.i97.epil = and i32 %41, -2, !dbg !486
  store i32 %and9.i97.epil, i32* %a_attr.i96.epil, align 8, !dbg !486, !tbaa !320
  %indvars.iv.next.i98.epil = add nuw nsw i64 %indvars.iv.i95.epil, 1, !dbg !487
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i98.epil, metadata !466, metadata !DIExpression()), !dbg !472
  %epil.iter554.next = add i64 %epil.iter554, 1, !dbg !484
  %epil.iter554.cmp.not = icmp eq i64 %epil.iter554.next, %xtraiter553, !dbg !484
  br i1 %epil.iter554.cmp.not, label %for.inc10.i103, label %for.body6.i100.epil, !dbg !484, !llvm.loop !490

for.inc10.i103:                                   ; preds = %for.inc10.i103.loopexit.unr-lcssa, %for.body6.i100.epil, %for.body2.i91
  %indvars.iv.next38.i101 = add nuw nsw i64 %indvars.iv37.i85, 1, !dbg !491
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38.i101, metadata !467, metadata !DIExpression()), !dbg !472
  %exitcond41.not.i102 = icmp eq i64 %indvars.iv.next38.i101, %wide.trip.count40.i83, !dbg !473
  br i1 %exitcond41.not.i102, label %for.inc13.i107, label %for.body2.i91, !dbg !476, !llvm.loop !492

for.inc13.i107:                                   ; preds = %for.inc10.i103, %for.body.i81
  %s_next.i104 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i76, i64 0, i32 4, !dbg !494
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !468, metadata !DIExpression()), !dbg !472
  %sp.0.i105 = load %struct.strand_t*, %struct.strand_t** %s_next.i104, align 8, !dbg !495, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i105, metadata !468, metadata !DIExpression()), !dbg !472
  %tobool.not.i106 = icmp eq %struct.strand_t* %sp.0.i105, null, !dbg !496
  br i1 %tobool.not.i106, label %for.body.preheader, label %for.body.i81, !dbg !496, !llvm.loop !497

for.body.preheader:                               ; preds = %for.inc13.i107, %if.end
  call void @llvm.dbg.value(metadata i8* %aex, metadata !368, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* undef, metadata !369, metadata !DIExpression()), !dbg !371
  %42 = bitcast i32* %lo.i to i8*
  %43 = bitcast i32* %hi.i to i8*
  %m_nstrands.i.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 1
  %call = tail call i8* @strchr(i8* noundef nonnull %aex, i32 noundef 124) #14, !dbg !499
  call void @llvm.dbg.value(metadata i8* %call, metadata !369, metadata !DIExpression()), !dbg !371
  br label %for.body, !dbg !501

for.body:                                         ; preds = %for.body.backedge, %for.body.preheader
  %n_aep.0486 = phi i8* [ %call, %for.body.preheader ], [ %n_aep.2, %for.body.backedge ]
  %aep.0484 = phi i8* [ %aex, %for.body.preheader ], [ %n_aep.1, %for.body.backedge ]
  call void @llvm.dbg.value(metadata i8* %n_aep.0486, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %aep.0484, metadata !368, metadata !DIExpression()), !dbg !371
  %tobool1.not = icmp eq i8* %n_aep.0486, null, !dbg !502
  br i1 %tobool1.not, label %if.else, label %if.then2, !dbg !506

if.then2:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8* %n_aep.0486 to i64, !dbg !507
  %sub.ptr.rhs.cast = ptrtoint i8* %aep.0484 to i64, !dbg !507
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !507
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !370, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !371
  %incdec.ptr = getelementptr inbounds i8, i8* %n_aep.0486, i64 1, !dbg !509
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !369, metadata !DIExpression()), !dbg !371
  br label %if.end5, !dbg !510

if.else:                                          ; preds = %for.body
  %call3 = tail call i64 @strlen(i8* noundef nonnull %aep.0484) #14, !dbg !511
  call void @llvm.dbg.value(metadata i64 %call3, metadata !370, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !371
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %n_aep.1 = phi i8* [ %incdec.ptr, %if.then2 ], [ null, %if.else ], !dbg !512
  %ael.0.in = phi i64 [ %sub.ptr.sub, %if.then2 ], [ %call3, %if.else ]
  %ael.0 = trunc i64 %ael.0.in to i32, !dbg !513
  call void @llvm.dbg.value(metadata i32 %ael.0, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !369, metadata !DIExpression()), !dbg !371
  %cmp6 = icmp sgt i32 %ael.0, 999, !dbg !514
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !516

if.then8:                                         ; preds = %if.end5
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !517, !tbaa !281
  %45 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %44) #13, !dbg !519
  br label %cleanup, !dbg !520

if.end10:                                         ; preds = %if.end5
  %sext = shl i64 %ael.0.in, 32, !dbg !521
  %conv11 = ashr exact i64 %sext, 32, !dbg !521
  %call12 = tail call i8* @strncpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* noundef nonnull %aep.0484, i64 noundef %conv11) #15, !dbg !522
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %conv11, !dbg !523
  store i8 0, i8* %arrayidx, align 1, !dbg !524, !tbaa !525
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !526, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !529, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #15, !dbg !536
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #15, !dbg !536
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !530, metadata !DIExpression()) #15, !dbg !534
  %46 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !537, !tbaa !525
  %cmp.i = icmp eq i8 %46, 58, !dbg !539
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !540

if.then.i:                                        ; preds = %if.end10
  store i8* null, i8** @spart, align 8, !dbg !541, !tbaa !281
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), metadata !530, metadata !DIExpression()) #15, !dbg !534
  br label %if.end.i, !dbg !543

if.else.i:                                        ; preds = %if.end10
  %call.i = tail call i8* @strtok(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !544
  store i8* %call.i, i8** @spart, align 8, !dbg !546, !tbaa !281
  %call2.i = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %call.i) #14, !dbg !547
  %add.i = add i64 %call2.i, 1, !dbg !548
  %add.ptr.i = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %add.i, !dbg !549
  call void @llvm.dbg.value(metadata i8* %add.ptr.i, metadata !530, metadata !DIExpression()) #15, !dbg !534
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %aep.0.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), %if.then.i ], [ %add.ptr.i, %if.else.i ], !dbg !550
  call void @llvm.dbg.value(metadata i8* %aep.0.i, metadata !530, metadata !DIExpression()) #15, !dbg !534
  %47 = load i8, i8* %aep.0.i, align 1, !dbg !551, !tbaa !525
  %cmp4.i = icmp eq i8 %47, 58, !dbg !553
  br i1 %cmp4.i, label %if.then6.i, label %if.else8.i, !dbg !554

if.then6.i:                                       ; preds = %if.end.i
  store i8* null, i8** @rpart, align 8, !dbg !555, !tbaa !281
  call void @llvm.dbg.value(metadata i8* undef, metadata !530, metadata !DIExpression()) #15, !dbg !534
  br label %if.end13.i, !dbg !557

if.else8.i:                                       ; preds = %if.end.i
  %call9.i = tail call i8* @strtok(i8* noundef nonnull %aep.0.i, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !558
  store i8* %call9.i, i8** @rpart, align 8, !dbg !560, !tbaa !281
  %call10.i = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %call9.i) #14, !dbg !561
  %add11.i = add i64 %call10.i, 1, !dbg !562
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else8.i, %if.then6.i
  %add11.sink.i = phi i64 [ %add11.i, %if.else8.i ], [ 1, %if.then6.i ]
  %add.ptr12.i = getelementptr inbounds i8, i8* %aep.0.i, i64 %add11.sink.i, !dbg !563
  call void @llvm.dbg.value(metadata i8* %add.ptr12.i, metadata !530, metadata !DIExpression()) #15, !dbg !534
  %call14.i = tail call i8* @strtok(i8* noundef nonnull %add.ptr12.i, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !564
  store i8* %call14.i, i8** @apart, align 8, !dbg !565, !tbaa !281
  %48 = load i8*, i8** @spart, align 8, !dbg !566, !tbaa !281
  %tobool.not.i108 = icmp eq i8* %48, null, !dbg !566
  br i1 %tobool.not.i108, label %if.else29.i, label %if.then15.i, !dbg !568

if.then15.i:                                      ; preds = %if.end13.i
  %call16.i = tail call i8* @strtok(i8* noundef nonnull %48, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !569
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !531, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !532, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !533, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  %call17.i = call fastcc i32 @is_pattern(i8* noundef %call16.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !571
  %tobool18.not.i = icmp eq i32 %call17.i, 0, !dbg !571
  br i1 %tobool18.not.i, label %if.else20.i, label %if.then19.i, !dbg !573

if.then19.i:                                      ; preds = %if.then15.i
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !574, metadata !DIExpression()) #15, !dbg !581
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !579, metadata !DIExpression()) #15, !dbg !581
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !583, metadata !DIExpression()) #15, !dbg !591
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !591
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !591
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !593, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !589, metadata !DIExpression()) #15, !dbg !591
  br label %for.cond.i.i.i, !dbg !594

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.then19.i
  %aep.0.i.i.i = phi i8* [ %call16.i, %if.then19.i ], [ %incdec.ptr12.i.i.i, %for.inc.i.i.i ], !dbg !596
  %rep.0.i.i.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then19.i ], [ %rep.1.i.i.i, %for.inc.i.i.i ], !dbg !591
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !591
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i.i, metadata !589, metadata !DIExpression()) #15, !dbg !591
  %49 = load i8, i8* %aep.0.i.i.i, align 1, !dbg !597, !tbaa !525
  switch i8 %49, label %if.else9.i.i.i [
    i8 0, label %aexpr2rexpr.exit.i.i
    i8 42, label %if.then.i.i.i
    i8 63, label %if.then7.i.i.i
  ], !dbg !599

if.then.i.i.i:                                    ; preds = %for.cond.i.i.i
  %incdec.ptr2.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !600
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !591
  store i8 46, i8* %rep.0.i.i.i, align 1, !dbg !604, !tbaa !525
  %incdec.ptr3.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 2, !dbg !605
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !591
  store i8 42, i8* %incdec.ptr2.i.i.i, align 1, !dbg !606, !tbaa !525
  br label %for.inc.i.i.i, !dbg !607

if.then7.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr8.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !608
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !591
  store i8 46, i8* %rep.0.i.i.i, align 1, !dbg !610, !tbaa !525
  br label %for.inc.i.i.i, !dbg !611

if.else9.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr10.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !612
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !591
  store i8 %49, i8* %rep.0.i.i.i, align 1, !dbg !613, !tbaa !525
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else9.i.i.i, %if.then7.i.i.i, %if.then.i.i.i
  %rep.1.i.i.i = phi i8* [ %incdec.ptr3.i.i.i, %if.then.i.i.i ], [ %incdec.ptr8.i.i.i, %if.then7.i.i.i ], [ %incdec.ptr10.i.i.i, %if.else9.i.i.i ], !dbg !614
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !591
  %incdec.ptr12.i.i.i = getelementptr inbounds i8, i8* %aep.0.i.i.i, i64 1, !dbg !615
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i.i, metadata !589, metadata !DIExpression()) #15, !dbg !591
  br label %for.cond.i.i.i, !dbg !616, !llvm.loop !617

aexpr2rexpr.exit.i.i:                             ; preds = %for.cond.i.i.i
  %incdec.ptr13.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !619
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !591
  store i8 36, i8* %rep.0.i.i.i, align 1, !dbg !620, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i.i, align 1, !dbg !621, !tbaa !525
  %call.i.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !622
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !580, metadata !DIExpression()) #15, !dbg !581
  %sp.07.i.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !623, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.07.i.i, metadata !580, metadata !DIExpression()) #15, !dbg !581
  %tobool.not8.i.i = icmp eq %struct.strand_t* %sp.07.i.i, null, !dbg !625
  br i1 %tobool.not8.i.i, label %if.end21.i, label %for.body.i.i, !dbg !625

for.body.i.i:                                     ; preds = %aexpr2rexpr.exit.i.i, %for.body.i.i
  %sp.09.i.i = phi %struct.strand_t* [ %sp.0.i.i, %for.body.i.i ], [ %sp.07.i.i, %aexpr2rexpr.exit.i.i ]
  %s_strandname.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i.i, i64 0, i32 0, !dbg !626
  %50 = load i8*, i8** %s_strandname.i.i, align 8, !dbg !626, !tbaa !629
  %call1.i.i = tail call i32 @step(i8* noundef %50, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !630
  %tobool2.not.i.i = icmp ne i32 %call1.i.i, 0, !dbg !630
  %cond.i.i = zext i1 %tobool2.not.i.i to i32, !dbg !630
  %s_attr.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i.i, i64 0, i32 2, !dbg !631
  %51 = load i32, i32* %s_attr.i.i, align 4, !dbg !632, !tbaa !290
  %or.i.i = or i32 %51, %cond.i.i, !dbg !632
  store i32 %or.i.i, i32* %s_attr.i.i, align 4, !dbg !632, !tbaa !290
  %s_next.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i.i, i64 0, i32 4, !dbg !633
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !580, metadata !DIExpression()) #15, !dbg !581
  %sp.0.i.i = load %struct.strand_t*, %struct.strand_t** %s_next.i.i, align 8, !dbg !623, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i.i, metadata !580, metadata !DIExpression()) #15, !dbg !581
  %tobool.not.i.i = icmp eq %struct.strand_t* %sp.0.i.i, null, !dbg !625
  br i1 %tobool.not.i.i, label %if.end21.i, label %for.body.i.i, !dbg !625, !llvm.loop !634

if.else20.i:                                      ; preds = %if.then15.i
  %52 = load i32, i32* %lo.i, align 4, !dbg !636, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %52, metadata !532, metadata !DIExpression()) #15, !dbg !534
  %53 = load i32, i32* %hi.i, align 4, !dbg !638, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %53, metadata !533, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !639, metadata !DIExpression()) #15, !dbg !648
  call void @llvm.dbg.value(metadata i32 %52, metadata !644, metadata !DIExpression()) #15, !dbg !648
  call void @llvm.dbg.value(metadata i32 %53, metadata !645, metadata !DIExpression()) #15, !dbg !648
  %cmp.i.i = icmp eq i32 %53, -1, !dbg !650
  %54 = load i32, i32* %m_nstrands.i.i, align 8, !tbaa !652
  %.hi.i.i = select i1 %cmp.i.i, i32 %54, i32 %53, !dbg !648
  call void @llvm.dbg.value(metadata i32 %.hi.i.i, metadata !645, metadata !DIExpression()) #15, !dbg !648
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !647, metadata !DIExpression()) #15, !dbg !648
  call void @llvm.dbg.value(metadata i32 1, metadata !646, metadata !DIExpression()) #15, !dbg !648
  %cmp2.not17.i.i = icmp slt i32 %54, 1, !dbg !654
  br i1 %cmp2.not17.i.i, label %if.end21.i, label %for.body.i2.i.preheader, !dbg !657

for.body.i2.i.preheader:                          ; preds = %if.else20.i
  %xtraiter558 = and i32 %54, 1, !dbg !657
  %55 = icmp eq i32 %54, 1, !dbg !657
  br i1 %55, label %if.end21.i.loopexit.unr-lcssa, label %for.body.i2.i.preheader.new, !dbg !657

for.body.i2.i.preheader.new:                      ; preds = %for.body.i2.i.preheader
  %unroll_iter561 = and i32 %54, -2, !dbg !657
  br label %for.body.i2.i, !dbg !657

for.body.i2.i:                                    ; preds = %for.inc.i.i.1, %for.body.i2.i.preheader.new
  %sp.019.in.i.i = phi %struct.strand_t** [ %m_strands.i, %for.body.i2.i.preheader.new ], [ %s_next.i5.i.1, %for.inc.i.i.1 ]
  %m.018.i.i = phi i32 [ 1, %for.body.i2.i.preheader.new ], [ %inc.i.i.1, %for.inc.i.i.1 ]
  %niter562 = phi i32 [ 0, %for.body.i2.i.preheader.new ], [ %niter562.next.1, %for.inc.i.i.1 ]
  %sp.019.i.i = load %struct.strand_t*, %struct.strand_t** %sp.019.in.i.i, align 8, !dbg !658, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %m.018.i.i, metadata !646, metadata !DIExpression()) #15, !dbg !648
  %cmp3.not.i.i = icmp slt i32 %m.018.i.i, %52, !dbg !659
  %cmp4.not.i.i = icmp sgt i32 %m.018.i.i, %.hi.i.i
  %or.cond.i.i = select i1 %cmp3.not.i.i, i1 true, i1 %cmp4.not.i.i, !dbg !662
  br i1 %or.cond.i.i, label %for.inc.i.i, label %if.then5.i.i, !dbg !662

if.then5.i.i:                                     ; preds = %for.body.i2.i
  %s_attr.i3.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i.i, i64 0, i32 2, !dbg !663
  %56 = load i32, i32* %s_attr.i3.i, align 4, !dbg !664, !tbaa !290
  %or.i4.i = or i32 %56, 1, !dbg !664
  store i32 %or.i4.i, i32* %s_attr.i3.i, align 4, !dbg !664, !tbaa !290
  br label %for.inc.i.i, !dbg !665

for.inc.i.i:                                      ; preds = %if.then5.i.i, %for.body.i2.i
  %inc.i.i = add nuw i32 %m.018.i.i, 1, !dbg !666
  call void @llvm.dbg.value(metadata i32 %inc.i.i, metadata !646, metadata !DIExpression()) #15, !dbg !648
  %s_next.i5.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i.i, i64 0, i32 4, !dbg !667
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !647, metadata !DIExpression()) #15, !dbg !648
  %sp.019.i.i.1 = load %struct.strand_t*, %struct.strand_t** %s_next.i5.i, align 8, !dbg !658, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %inc.i.i, metadata !646, metadata !DIExpression()) #15, !dbg !648
  %cmp3.not.i.i.1 = icmp slt i32 %inc.i.i, %52, !dbg !659
  %cmp4.not.i.i.1 = icmp sgt i32 %inc.i.i, %.hi.i.i
  %or.cond.i.i.1 = select i1 %cmp3.not.i.i.1, i1 true, i1 %cmp4.not.i.i.1, !dbg !662
  br i1 %or.cond.i.i.1, label %for.inc.i.i.1, label %if.then5.i.i.1, !dbg !662

if.then5.i.i.1:                                   ; preds = %for.inc.i.i
  %s_attr.i3.i.1 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i.i.1, i64 0, i32 2, !dbg !663
  %57 = load i32, i32* %s_attr.i3.i.1, align 4, !dbg !664, !tbaa !290
  %or.i4.i.1 = or i32 %57, 1, !dbg !664
  store i32 %or.i4.i.1, i32* %s_attr.i3.i.1, align 4, !dbg !664, !tbaa !290
  br label %for.inc.i.i.1, !dbg !665

for.inc.i.i.1:                                    ; preds = %if.then5.i.i.1, %for.inc.i.i
  %inc.i.i.1 = add nuw i32 %m.018.i.i, 2, !dbg !666
  call void @llvm.dbg.value(metadata i32 %inc.i.i.1, metadata !646, metadata !DIExpression()) #15, !dbg !648
  %s_next.i5.i.1 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i.i.1, i64 0, i32 4, !dbg !667
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !647, metadata !DIExpression()) #15, !dbg !648
  %niter562.next.1 = add i32 %niter562, 2, !dbg !657
  %niter562.ncmp.1 = icmp eq i32 %niter562.next.1, %unroll_iter561, !dbg !657
  br i1 %niter562.ncmp.1, label %if.end21.i.loopexit.unr-lcssa, label %for.body.i2.i, !dbg !657, !llvm.loop !668

if.end21.i.loopexit.unr-lcssa:                    ; preds = %for.inc.i.i.1, %for.body.i2.i.preheader
  %sp.019.in.i.i.unr = phi %struct.strand_t** [ %m_strands.i, %for.body.i2.i.preheader ], [ %s_next.i5.i.1, %for.inc.i.i.1 ]
  %m.018.i.i.unr = phi i32 [ 1, %for.body.i2.i.preheader ], [ %inc.i.i.1, %for.inc.i.i.1 ]
  %lcmp.mod560.not = icmp eq i32 %xtraiter558, 0, !dbg !662
  br i1 %lcmp.mod560.not, label %if.end21.i, label %for.body.i2.i.epil, !dbg !662

for.body.i2.i.epil:                               ; preds = %if.end21.i.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i32 %m.018.i.i.unr, metadata !646, metadata !DIExpression()) #15, !dbg !648
  %cmp3.not.i.i.epil = icmp slt i32 %m.018.i.i.unr, %52, !dbg !659
  %cmp4.not.i.i.epil = icmp sgt i32 %m.018.i.i.unr, %.hi.i.i
  %or.cond.i.i.epil = select i1 %cmp3.not.i.i.epil, i1 true, i1 %cmp4.not.i.i.epil, !dbg !662
  br i1 %or.cond.i.i.epil, label %if.end21.i, label %if.then5.i.i.epil, !dbg !662

if.then5.i.i.epil:                                ; preds = %for.body.i2.i.epil
  %sp.019.i.i.epil = load %struct.strand_t*, %struct.strand_t** %sp.019.in.i.i.unr, align 8, !dbg !658, !tbaa !281
  %s_attr.i3.i.epil = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i.i.epil, i64 0, i32 2, !dbg !663
  %58 = load i32, i32* %s_attr.i3.i.epil, align 4, !dbg !664, !tbaa !290
  %or.i4.i.epil = or i32 %58, 1, !dbg !664
  store i32 %or.i4.i.epil, i32* %s_attr.i3.i.epil, align 4, !dbg !664, !tbaa !290
  br label %if.end21.i, !dbg !665

if.end21.i:                                       ; preds = %for.body.i.i, %if.end21.i.loopexit.unr-lcssa, %if.then5.i.i.epil, %for.body.i2.i.epil, %if.else20.i, %aexpr2rexpr.exit.i.i
  %call22185.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !670
  call void @llvm.dbg.value(metadata i8* %call22185.i, metadata !531, metadata !DIExpression()) #15, !dbg !534
  %tobool23.not186.i = icmp eq i8* %call22185.i, null, !dbg !671
  br i1 %tobool23.not186.i, label %if.end30.i, label %while.body.i.preheader, !dbg !671

while.body.i.preheader:                           ; preds = %if.end21.i
  %call.i381 = tail call i16** @__ctype_b_loc() #16, !dbg !371
  br label %while.body.i, !dbg !671

while.body.i:                                     ; preds = %while.body.i.preheader, %if.end28.i
  %call22187.i = phi i8* [ %call22.i, %if.end28.i ], [ %call22185.i, %while.body.i.preheader ]
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !532, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !533, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  call void @llvm.dbg.value(metadata i8* %call22187.i, metadata !672, metadata !DIExpression()) #15, !dbg !682
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !678, metadata !DIExpression()) #15, !dbg !682
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !679, metadata !DIExpression()) #15, !dbg !682
  %59 = load i16*, i16** %call.i381, align 8, !dbg !686, !tbaa !281
  %60 = load i8, i8* %call22187.i, align 1, !dbg !686, !tbaa !525
  %idxprom.i382 = sext i8 %60 to i64, !dbg !686
  %arrayidx.i383 = getelementptr inbounds i16, i16* %59, i64 %idxprom.i382, !dbg !686
  %61 = load i16, i16* %arrayidx.i383, align 2, !dbg !686, !tbaa !688
  %62 = and i16 %61, 2048, !dbg !686
  %tobool.not.i384 = icmp ne i16 %62, 0, !dbg !686
  %cmp.not.i385 = icmp eq i8 %60, 45
  %or.cond.i386 = select i1 %tobool.not.i384, i1 true, i1 %cmp.not.i385, !dbg !690
  br i1 %or.cond.i386, label %if.end.i388, label %if.then26.i, !dbg !690

if.end.i388:                                      ; preds = %while.body.i
  %tobool10.not.i387 = icmp eq i16 %62, 0, !dbg !691
  br i1 %tobool10.not.i387, label %if.else59.i428, label %for.body.i399, !dbg !693

for.body.i399:                                    ; preds = %if.end.i388, %for.body.i399
  %63 = phi i8 [ %64, %for.body.i399 ], [ %60, %if.end.i388 ]
  %ip.0133.i389 = phi i8* [ %incdec.ptr.i395, %for.body.i399 ], [ %call22187.i, %if.end.i388 ]
  %val.0132.i390 = phi i32 [ %sub.i394, %for.body.i399 ], [ 0, %if.end.i388 ]
  call void @llvm.dbg.value(metadata i8* %ip.0133.i389, metadata !681, metadata !DIExpression()) #15, !dbg !682
  call void @llvm.dbg.value(metadata i32 %val.0132.i390, metadata !680, metadata !DIExpression()) #15, !dbg !682
  %conv13.i391 = sext i8 %63 to i32, !dbg !694
  %mul.i392 = mul nsw i32 %val.0132.i390, 10, !dbg !698
  %add.i393 = add nsw i32 %conv13.i391, -48, !dbg !699
  %sub.i394 = add i32 %add.i393, %mul.i392, !dbg !700
  call void @llvm.dbg.value(metadata i32 %sub.i394, metadata !680, metadata !DIExpression()) #15, !dbg !682
  %incdec.ptr.i395 = getelementptr inbounds i8, i8* %ip.0133.i389, i64 1, !dbg !701
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i395, metadata !681, metadata !DIExpression()) #15, !dbg !682
  %64 = load i8, i8* %incdec.ptr.i395, align 1, !dbg !694, !tbaa !525
  %idxprom14.i396 = sext i8 %64 to i64, !dbg !694
  %arrayidx15.i397 = getelementptr inbounds i16, i16* %59, i64 %idxprom14.i396, !dbg !694
  %65 = load i16, i16* %arrayidx15.i397, align 2, !dbg !694, !tbaa !688
  %66 = and i16 %65, 2048, !dbg !694
  %tobool18.not.i398 = icmp eq i16 %66, 0, !dbg !702
  br i1 %tobool18.not.i398, label %for.end.i400, label %for.body.i399, !dbg !702, !llvm.loop !703

for.end.i400:                                     ; preds = %for.body.i399
  store i32 %sub.i394, i32* %lo.i, align 4, !dbg !705, !tbaa !637
  switch i8 %64, label %if.end28.i407 [
    i8 0, label %if.then21.i401
    i8 45, label %if.then25.i404
  ], !dbg !706

if.then21.i401:                                   ; preds = %for.end.i400
  store i32 %sub.i394, i32* %hi.i, align 4, !dbg !707, !tbaa !637
  br label %if.else27.i, !dbg !710

if.then25.i404:                                   ; preds = %for.end.i400
  %incdec.ptr26.i402 = getelementptr inbounds i8, i8* %ip.0133.i389, i64 2, !dbg !711
  call void @llvm.dbg.value(metadata i8* %incdec.ptr26.i402, metadata !681, metadata !DIExpression()) #15, !dbg !682
  %.pr.i403 = load i8, i8* %incdec.ptr26.i402, align 1, !dbg !713, !tbaa !525
  br label %if.end28.i407, !dbg !715

if.end28.i407:                                    ; preds = %if.then25.i404, %for.end.i400
  %67 = phi i8 [ %64, %for.end.i400 ], [ %.pr.i403, %if.then25.i404 ], !dbg !713
  %ip.1.i405 = phi i8* [ %incdec.ptr.i395, %for.end.i400 ], [ %incdec.ptr26.i402, %if.then25.i404 ], !dbg !716
  call void @llvm.dbg.value(metadata i8* %ip.1.i405, metadata !681, metadata !DIExpression()) #15, !dbg !682
  %tobool29.not.i406 = icmp eq i8 %67, 0, !dbg !713
  br i1 %tobool29.not.i406, label %if.else27.i.thread, label %if.else31.i412, !dbg !717

if.else31.i412:                                   ; preds = %if.end28.i407
  %idxprom34.i409 = sext i8 %67 to i64, !dbg !718
  %arrayidx35.i410 = getelementptr inbounds i16, i16* %59, i64 %idxprom34.i409, !dbg !718
  %68 = load i16, i16* %arrayidx35.i410, align 2, !dbg !718, !tbaa !688
  %69 = and i16 %68, 2048, !dbg !718
  %tobool38.not.i411 = icmp eq i16 %69, 0, !dbg !718
  br i1 %tobool38.not.i411, label %if.then26.i, label %for.body50.i423, !dbg !720

for.body50.i423:                                  ; preds = %if.else31.i412, %for.body50.i423
  %70 = phi i8 [ %71, %for.body50.i423 ], [ %67, %if.else31.i412 ]
  %ip.2139.i413 = phi i8* [ %incdec.ptr56.i419, %for.body50.i423 ], [ %ip.1.i405, %if.else31.i412 ]
  %val.1138.i414 = phi i32 [ %sub54.i418, %for.body50.i423 ], [ 0, %if.else31.i412 ]
  call void @llvm.dbg.value(metadata i8* %ip.2139.i413, metadata !681, metadata !DIExpression()) #15, !dbg !682
  call void @llvm.dbg.value(metadata i32 %val.1138.i414, metadata !680, metadata !DIExpression()) #15, !dbg !682
  %conv44.i415 = sext i8 %70 to i32, !dbg !721
  %mul51.i416 = mul nsw i32 %val.1138.i414, 10, !dbg !724
  %add53.i417 = add nsw i32 %conv44.i415, -48, !dbg !725
  %sub54.i418 = add i32 %add53.i417, %mul51.i416, !dbg !726
  call void @llvm.dbg.value(metadata i32 %sub54.i418, metadata !680, metadata !DIExpression()) #15, !dbg !682
  %incdec.ptr56.i419 = getelementptr inbounds i8, i8* %ip.2139.i413, i64 1, !dbg !727
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56.i419, metadata !681, metadata !DIExpression()) #15, !dbg !682
  %71 = load i8, i8* %incdec.ptr56.i419, align 1, !dbg !721, !tbaa !525
  %idxprom45.i420 = sext i8 %71 to i64, !dbg !721
  %arrayidx46.i421 = getelementptr inbounds i16, i16* %59, i64 %idxprom45.i420, !dbg !721
  %72 = load i16, i16* %arrayidx46.i421, align 2, !dbg !721, !tbaa !688
  %73 = and i16 %72, 2048, !dbg !721
  %tobool49.not.i422 = icmp eq i16 %73, 0, !dbg !728
  br i1 %tobool49.not.i422, label %is_pattern.exit448, label %for.body50.i423, !dbg !728, !llvm.loop !729

if.else59.i428:                                   ; preds = %if.end.i388
  store i32 1, i32* %lo.i, align 4, !dbg !731, !tbaa !637
  %arrayidx60.i426 = getelementptr inbounds i8, i8* %call22187.i, i64 1, !dbg !733
  call void @llvm.dbg.value(metadata i8* %arrayidx60.i426, metadata !681, metadata !DIExpression()) #15, !dbg !682
  %74 = load i8, i8* %arrayidx60.i426, align 1, !dbg !734, !tbaa !525
  %tobool62.not.i427 = icmp eq i8 %74, 0, !dbg !734
  br i1 %tobool62.not.i427, label %if.else27.i.thread, label %if.else64.i433, !dbg !736

if.else64.i433:                                   ; preds = %if.else59.i428
  %idxprom67.i430 = sext i8 %74 to i64, !dbg !737
  %arrayidx68.i431 = getelementptr inbounds i16, i16* %59, i64 %idxprom67.i430, !dbg !737
  %75 = load i16, i16* %arrayidx68.i431, align 2, !dbg !737, !tbaa !688
  %76 = and i16 %75, 2048, !dbg !737
  %tobool71.not.i432 = icmp eq i16 %76, 0, !dbg !737
  br i1 %tobool71.not.i432, label %if.else64.i433.if.else27.i_crit_edge, label %for.body81.i444, !dbg !739

if.else64.i433.if.else27.i_crit_edge:             ; preds = %if.else64.i433
  %.pre = load i32, i32* %hi.i, align 4, !dbg !740, !tbaa !637
  br label %if.else27.i, !dbg !739

for.body81.i444:                                  ; preds = %if.else64.i433, %for.body81.i444
  %77 = phi i8 [ %78, %for.body81.i444 ], [ %74, %if.else64.i433 ]
  %ip.3146.i434 = phi i8* [ %incdec.ptr87.i440, %for.body81.i444 ], [ %arrayidx60.i426, %if.else64.i433 ]
  %val.2145.i435 = phi i32 [ %sub85.i439, %for.body81.i444 ], [ 0, %if.else64.i433 ]
  call void @llvm.dbg.value(metadata i8* %ip.3146.i434, metadata !681, metadata !DIExpression()) #15, !dbg !682
  call void @llvm.dbg.value(metadata i32 %val.2145.i435, metadata !680, metadata !DIExpression()) #15, !dbg !682
  %conv75.i436 = sext i8 %77 to i32, !dbg !741
  %mul82.i437 = mul nsw i32 %val.2145.i435, 10, !dbg !745
  %add84.i438 = add nsw i32 %conv75.i436, -48, !dbg !746
  %sub85.i439 = add i32 %add84.i438, %mul82.i437, !dbg !747
  call void @llvm.dbg.value(metadata i32 %sub85.i439, metadata !680, metadata !DIExpression()) #15, !dbg !682
  %incdec.ptr87.i440 = getelementptr inbounds i8, i8* %ip.3146.i434, i64 1, !dbg !748
  call void @llvm.dbg.value(metadata i8* %incdec.ptr87.i440, metadata !681, metadata !DIExpression()) #15, !dbg !682
  %78 = load i8, i8* %incdec.ptr87.i440, align 1, !dbg !741, !tbaa !525
  %idxprom76.i441 = sext i8 %78 to i64, !dbg !741
  %arrayidx77.i442 = getelementptr inbounds i16, i16* %59, i64 %idxprom76.i441, !dbg !741
  %79 = load i16, i16* %arrayidx77.i442, align 2, !dbg !741, !tbaa !688
  %80 = and i16 %79, 2048, !dbg !741
  %tobool80.not.i443 = icmp eq i16 %80, 0, !dbg !749
  br i1 %tobool80.not.i443, label %is_pattern.exit448, label %for.body81.i444, !dbg !749, !llvm.loop !750

is_pattern.exit448:                               ; preds = %for.body50.i423, %for.body81.i444
  %81 = phi i32 [ 1, %for.body81.i444 ], [ %sub.i394, %for.body50.i423 ]
  %storemerge468 = phi i32 [ %sub85.i439, %for.body81.i444 ], [ %sub54.i418, %for.body50.i423 ], !dbg !682
  %retval.0.i447.in.in = phi i8* [ %incdec.ptr87.i440, %for.body81.i444 ], [ %incdec.ptr56.i419, %for.body50.i423 ]
  store i32 %storemerge468, i32* %hi.i, align 4, !dbg !682, !tbaa !637
  %retval.0.i447.in = load i8, i8* %retval.0.i447.in.in, align 1, !dbg !682, !tbaa !525
  %tobool25.not.i = icmp eq i8 %retval.0.i447.in, 0, !dbg !752
  br i1 %tobool25.not.i, label %if.else27.i, label %if.then26.i, !dbg !753

if.then26.i:                                      ; preds = %if.else31.i412, %while.body.i, %is_pattern.exit448
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !574, metadata !DIExpression()) #15, !dbg !754
  call void @llvm.dbg.value(metadata i8* %call22187.i, metadata !579, metadata !DIExpression()) #15, !dbg !754
  call void @llvm.dbg.value(metadata i8* %call22187.i, metadata !583, metadata !DIExpression()) #15, !dbg !756
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !756
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !756
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !758, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call22187.i, metadata !589, metadata !DIExpression()) #15, !dbg !756
  br label %for.cond.i.i8.i, !dbg !759

for.cond.i.i8.i:                                  ; preds = %for.inc.i.i18.i, %if.then26.i
  %aep.0.i.i6.i = phi i8* [ %call22187.i, %if.then26.i ], [ %incdec.ptr12.i.i17.i, %for.inc.i.i18.i ], !dbg !760
  %rep.0.i.i7.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then26.i ], [ %rep.1.i.i16.i, %for.inc.i.i18.i ], !dbg !756
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i7.i, metadata !590, metadata !DIExpression()) #15, !dbg !756
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i6.i, metadata !589, metadata !DIExpression()) #15, !dbg !756
  %82 = load i8, i8* %aep.0.i.i6.i, align 1, !dbg !761, !tbaa !525
  switch i8 %82, label %if.else9.i.i15.i [
    i8 0, label %aexpr2rexpr.exit.i24.i
    i8 42, label %if.then.i.i11.i
    i8 63, label %if.then7.i.i13.i
  ], !dbg !762

if.then.i.i11.i:                                  ; preds = %for.cond.i.i8.i
  %incdec.ptr2.i.i9.i = getelementptr inbounds i8, i8* %rep.0.i.i7.i, i64 1, !dbg !763
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i9.i, metadata !590, metadata !DIExpression()) #15, !dbg !756
  store i8 46, i8* %rep.0.i.i7.i, align 1, !dbg !764, !tbaa !525
  %incdec.ptr3.i.i10.i = getelementptr inbounds i8, i8* %rep.0.i.i7.i, i64 2, !dbg !765
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i10.i, metadata !590, metadata !DIExpression()) #15, !dbg !756
  store i8 42, i8* %incdec.ptr2.i.i9.i, align 1, !dbg !766, !tbaa !525
  br label %for.inc.i.i18.i, !dbg !767

if.then7.i.i13.i:                                 ; preds = %for.cond.i.i8.i
  %incdec.ptr8.i.i12.i = getelementptr inbounds i8, i8* %rep.0.i.i7.i, i64 1, !dbg !768
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i12.i, metadata !590, metadata !DIExpression()) #15, !dbg !756
  store i8 46, i8* %rep.0.i.i7.i, align 1, !dbg !769, !tbaa !525
  br label %for.inc.i.i18.i, !dbg !770

if.else9.i.i15.i:                                 ; preds = %for.cond.i.i8.i
  %incdec.ptr10.i.i14.i = getelementptr inbounds i8, i8* %rep.0.i.i7.i, i64 1, !dbg !771
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i14.i, metadata !590, metadata !DIExpression()) #15, !dbg !756
  store i8 %82, i8* %rep.0.i.i7.i, align 1, !dbg !772, !tbaa !525
  br label %for.inc.i.i18.i

for.inc.i.i18.i:                                  ; preds = %if.else9.i.i15.i, %if.then7.i.i13.i, %if.then.i.i11.i
  %rep.1.i.i16.i = phi i8* [ %incdec.ptr3.i.i10.i, %if.then.i.i11.i ], [ %incdec.ptr8.i.i12.i, %if.then7.i.i13.i ], [ %incdec.ptr10.i.i14.i, %if.else9.i.i15.i ], !dbg !773
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i16.i, metadata !590, metadata !DIExpression()) #15, !dbg !756
  %incdec.ptr12.i.i17.i = getelementptr inbounds i8, i8* %aep.0.i.i6.i, i64 1, !dbg !774
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i17.i, metadata !589, metadata !DIExpression()) #15, !dbg !756
  br label %for.cond.i.i8.i, !dbg !775, !llvm.loop !776

aexpr2rexpr.exit.i24.i:                           ; preds = %for.cond.i.i8.i
  %incdec.ptr13.i.i19.i = getelementptr inbounds i8, i8* %rep.0.i.i7.i, i64 1, !dbg !778
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i19.i, metadata !590, metadata !DIExpression()) #15, !dbg !756
  store i8 36, i8* %rep.0.i.i7.i, align 1, !dbg !779, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i19.i, align 1, !dbg !780, !tbaa !525
  %call.i20.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !781
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !580, metadata !DIExpression()) #15, !dbg !754
  %sp.07.i22.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !782, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.07.i22.i, metadata !580, metadata !DIExpression()) #15, !dbg !754
  %tobool.not8.i23.i = icmp eq %struct.strand_t* %sp.07.i22.i, null, !dbg !783
  br i1 %tobool.not8.i23.i, label %if.end28.i, label %for.body.i35.i, !dbg !783

for.body.i35.i:                                   ; preds = %aexpr2rexpr.exit.i24.i, %for.body.i35.i
  %sp.09.i25.i = phi %struct.strand_t* [ %sp.0.i33.i, %for.body.i35.i ], [ %sp.07.i22.i, %aexpr2rexpr.exit.i24.i ]
  %s_strandname.i26.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i25.i, i64 0, i32 0, !dbg !784
  %83 = load i8*, i8** %s_strandname.i26.i, align 8, !dbg !784, !tbaa !629
  %call1.i27.i = tail call i32 @step(i8* noundef %83, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !785
  %tobool2.not.i28.i = icmp ne i32 %call1.i27.i, 0, !dbg !785
  %cond.i29.i = zext i1 %tobool2.not.i28.i to i32, !dbg !785
  %s_attr.i30.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i25.i, i64 0, i32 2, !dbg !786
  %84 = load i32, i32* %s_attr.i30.i, align 4, !dbg !787, !tbaa !290
  %or.i31.i = or i32 %84, %cond.i29.i, !dbg !787
  store i32 %or.i31.i, i32* %s_attr.i30.i, align 4, !dbg !787, !tbaa !290
  %s_next.i32.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i25.i, i64 0, i32 4, !dbg !788
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !580, metadata !DIExpression()) #15, !dbg !754
  %sp.0.i33.i = load %struct.strand_t*, %struct.strand_t** %s_next.i32.i, align 8, !dbg !782, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i33.i, metadata !580, metadata !DIExpression()) #15, !dbg !754
  %tobool.not.i34.i = icmp eq %struct.strand_t* %sp.0.i33.i, null, !dbg !783
  br i1 %tobool.not.i34.i, label %if.end28.i, label %for.body.i35.i, !dbg !783, !llvm.loop !789

if.else27.i.thread:                               ; preds = %if.else59.i428, %if.end28.i407
  %.ph = phi i32 [ %sub.i394, %if.end28.i407 ], [ 1, %if.else59.i428 ]
  store i32 -1, i32* %hi.i, align 4, !dbg !682, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %87, metadata !532, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32 %86, metadata !533, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !639, metadata !DIExpression()) #15, !dbg !791
  call void @llvm.dbg.value(metadata i32 %87, metadata !644, metadata !DIExpression()) #15, !dbg !791
  call void @llvm.dbg.value(metadata i32 %86, metadata !645, metadata !DIExpression()) #15, !dbg !791
  %85 = load i32, i32* %m_nstrands.i.i, align 8, !tbaa !652
  br label %89, !dbg !791

if.else27.i:                                      ; preds = %if.else64.i433.if.else27.i_crit_edge, %if.then21.i401, %is_pattern.exit448
  %86 = phi i32 [ %.pre, %if.else64.i433.if.else27.i_crit_edge ], [ %sub.i394, %if.then21.i401 ], [ %storemerge468, %is_pattern.exit448 ], !dbg !740
  %87 = phi i32 [ 1, %if.else64.i433.if.else27.i_crit_edge ], [ %sub.i394, %if.then21.i401 ], [ %81, %is_pattern.exit448 ], !dbg !793
  call void @llvm.dbg.value(metadata i32 %87, metadata !532, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32 %86, metadata !533, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !639, metadata !DIExpression()) #15, !dbg !791
  call void @llvm.dbg.value(metadata i32 %87, metadata !644, metadata !DIExpression()) #15, !dbg !791
  call void @llvm.dbg.value(metadata i32 %86, metadata !645, metadata !DIExpression()) #15, !dbg !791
  %cmp.i37.i = icmp eq i32 %86, -1, !dbg !794
  %88 = load i32, i32* %m_nstrands.i.i, align 8, !tbaa !652
  br i1 %cmp.i37.i, label %89, label %92, !dbg !791

89:                                               ; preds = %if.else27.i.thread, %if.else27.i
  %90 = phi i32 [ %85, %if.else27.i.thread ], [ %88, %if.else27.i ]
  %91 = phi i32 [ %.ph, %if.else27.i.thread ], [ %87, %if.else27.i ]
  br label %92, !dbg !791

92:                                               ; preds = %if.else27.i, %89
  %93 = phi i32 [ %90, %89 ], [ %88, %if.else27.i ]
  %94 = phi i32 [ %91, %89 ], [ %87, %if.else27.i ]
  %95 = phi i32 [ %90, %89 ], [ %86, %if.else27.i ]
  call void @llvm.dbg.value(metadata i32 %95, metadata !645, metadata !DIExpression()) #15, !dbg !791
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !647, metadata !DIExpression()) #15, !dbg !791
  call void @llvm.dbg.value(metadata i32 1, metadata !646, metadata !DIExpression()) #15, !dbg !791
  %cmp2.not17.i40.i = icmp slt i32 %93, 1, !dbg !795
  br i1 %cmp2.not17.i40.i, label %if.end28.i, label %for.body.i49.i.preheader, !dbg !796

for.body.i49.i.preheader:                         ; preds = %92
  %xtraiter563 = and i32 %93, 1, !dbg !796
  %96 = icmp eq i32 %93, 1, !dbg !796
  br i1 %96, label %if.end28.i.loopexit.unr-lcssa, label %for.body.i49.i.preheader.new, !dbg !796

for.body.i49.i.preheader.new:                     ; preds = %for.body.i49.i.preheader
  %unroll_iter566 = and i32 %93, -2, !dbg !796
  br label %for.body.i49.i, !dbg !796

for.body.i49.i:                                   ; preds = %for.inc.i56.i.1, %for.body.i49.i.preheader.new
  %sp.019.in.i43.i = phi %struct.strand_t** [ %m_strands.i, %for.body.i49.i.preheader.new ], [ %s_next.i54.i.1, %for.inc.i56.i.1 ]
  %m.018.i44.i = phi i32 [ 1, %for.body.i49.i.preheader.new ], [ %inc.i53.i.1, %for.inc.i56.i.1 ]
  %niter567 = phi i32 [ 0, %for.body.i49.i.preheader.new ], [ %niter567.next.1, %for.inc.i56.i.1 ]
  %sp.019.i45.i = load %struct.strand_t*, %struct.strand_t** %sp.019.in.i43.i, align 8, !dbg !797, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %m.018.i44.i, metadata !646, metadata !DIExpression()) #15, !dbg !791
  %cmp3.not.i46.i = icmp slt i32 %m.018.i44.i, %94, !dbg !798
  %cmp4.not.i47.i = icmp sgt i32 %m.018.i44.i, %95
  %or.cond.i48.i = select i1 %cmp3.not.i46.i, i1 true, i1 %cmp4.not.i47.i, !dbg !799
  br i1 %or.cond.i48.i, label %for.inc.i56.i, label %if.then5.i52.i, !dbg !799

if.then5.i52.i:                                   ; preds = %for.body.i49.i
  %s_attr.i50.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i45.i, i64 0, i32 2, !dbg !800
  %97 = load i32, i32* %s_attr.i50.i, align 4, !dbg !801, !tbaa !290
  %or.i51.i = or i32 %97, 1, !dbg !801
  store i32 %or.i51.i, i32* %s_attr.i50.i, align 4, !dbg !801, !tbaa !290
  br label %for.inc.i56.i, !dbg !802

for.inc.i56.i:                                    ; preds = %if.then5.i52.i, %for.body.i49.i
  %inc.i53.i = add nuw i32 %m.018.i44.i, 1, !dbg !803
  call void @llvm.dbg.value(metadata i32 %inc.i53.i, metadata !646, metadata !DIExpression()) #15, !dbg !791
  %s_next.i54.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i45.i, i64 0, i32 4, !dbg !804
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !647, metadata !DIExpression()) #15, !dbg !791
  %sp.019.i45.i.1 = load %struct.strand_t*, %struct.strand_t** %s_next.i54.i, align 8, !dbg !797, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %inc.i53.i, metadata !646, metadata !DIExpression()) #15, !dbg !791
  %cmp3.not.i46.i.1 = icmp slt i32 %inc.i53.i, %94, !dbg !798
  %cmp4.not.i47.i.1 = icmp sgt i32 %inc.i53.i, %95
  %or.cond.i48.i.1 = select i1 %cmp3.not.i46.i.1, i1 true, i1 %cmp4.not.i47.i.1, !dbg !799
  br i1 %or.cond.i48.i.1, label %for.inc.i56.i.1, label %if.then5.i52.i.1, !dbg !799

if.then5.i52.i.1:                                 ; preds = %for.inc.i56.i
  %s_attr.i50.i.1 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i45.i.1, i64 0, i32 2, !dbg !800
  %98 = load i32, i32* %s_attr.i50.i.1, align 4, !dbg !801, !tbaa !290
  %or.i51.i.1 = or i32 %98, 1, !dbg !801
  store i32 %or.i51.i.1, i32* %s_attr.i50.i.1, align 4, !dbg !801, !tbaa !290
  br label %for.inc.i56.i.1, !dbg !802

for.inc.i56.i.1:                                  ; preds = %if.then5.i52.i.1, %for.inc.i56.i
  %inc.i53.i.1 = add nuw i32 %m.018.i44.i, 2, !dbg !803
  call void @llvm.dbg.value(metadata i32 %inc.i53.i.1, metadata !646, metadata !DIExpression()) #15, !dbg !791
  %s_next.i54.i.1 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i45.i.1, i64 0, i32 4, !dbg !804
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !647, metadata !DIExpression()) #15, !dbg !791
  %niter567.next.1 = add i32 %niter567, 2, !dbg !796
  %niter567.ncmp.1 = icmp eq i32 %niter567.next.1, %unroll_iter566, !dbg !796
  br i1 %niter567.ncmp.1, label %if.end28.i.loopexit.unr-lcssa, label %for.body.i49.i, !dbg !796, !llvm.loop !805

if.end28.i.loopexit.unr-lcssa:                    ; preds = %for.inc.i56.i.1, %for.body.i49.i.preheader
  %sp.019.in.i43.i.unr = phi %struct.strand_t** [ %m_strands.i, %for.body.i49.i.preheader ], [ %s_next.i54.i.1, %for.inc.i56.i.1 ]
  %m.018.i44.i.unr = phi i32 [ 1, %for.body.i49.i.preheader ], [ %inc.i53.i.1, %for.inc.i56.i.1 ]
  %lcmp.mod565.not = icmp eq i32 %xtraiter563, 0, !dbg !799
  br i1 %lcmp.mod565.not, label %if.end28.i, label %for.body.i49.i.epil, !dbg !799

for.body.i49.i.epil:                              ; preds = %if.end28.i.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i32 %m.018.i44.i.unr, metadata !646, metadata !DIExpression()) #15, !dbg !791
  %cmp3.not.i46.i.epil = icmp slt i32 %m.018.i44.i.unr, %94, !dbg !798
  %cmp4.not.i47.i.epil = icmp sgt i32 %m.018.i44.i.unr, %95
  %or.cond.i48.i.epil = select i1 %cmp3.not.i46.i.epil, i1 true, i1 %cmp4.not.i47.i.epil, !dbg !799
  br i1 %or.cond.i48.i.epil, label %if.end28.i, label %if.then5.i52.i.epil, !dbg !799

if.then5.i52.i.epil:                              ; preds = %for.body.i49.i.epil
  %sp.019.i45.i.epil = load %struct.strand_t*, %struct.strand_t** %sp.019.in.i43.i.unr, align 8, !dbg !797, !tbaa !281
  %s_attr.i50.i.epil = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i45.i.epil, i64 0, i32 2, !dbg !800
  %99 = load i32, i32* %s_attr.i50.i.epil, align 4, !dbg !801, !tbaa !290
  %or.i51.i.epil = or i32 %99, 1, !dbg !801
  store i32 %or.i51.i.epil, i32* %s_attr.i50.i.epil, align 4, !dbg !801, !tbaa !290
  br label %if.end28.i, !dbg !802

if.end28.i:                                       ; preds = %for.body.i35.i, %if.end28.i.loopexit.unr-lcssa, %if.then5.i52.i.epil, %for.body.i49.i.epil, %92, %aexpr2rexpr.exit.i24.i
  %call22.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !670
  call void @llvm.dbg.value(metadata i8* %call22.i, metadata !531, metadata !DIExpression()) #15, !dbg !534
  %tobool23.not.i = icmp eq i8* %call22.i, null, !dbg !671
  br i1 %tobool23.not.i, label %if.end30.i, label %while.body.i, !dbg !671, !llvm.loop !807

if.else29.i:                                      ; preds = %if.end13.i
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !639, metadata !DIExpression()) #15, !dbg !809
  call void @llvm.dbg.value(metadata i32 1, metadata !644, metadata !DIExpression()) #15, !dbg !809
  call void @llvm.dbg.value(metadata i32 -1, metadata !645, metadata !DIExpression()) #15, !dbg !809
  %100 = load i32, i32* %m_nstrands.i.i, align 8, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %100, metadata !645, metadata !DIExpression()) #15, !dbg !809
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !647, metadata !DIExpression()) #15, !dbg !809
  call void @llvm.dbg.value(metadata i32 1, metadata !646, metadata !DIExpression()) #15, !dbg !809
  %cmp2.not17.i59.i = icmp slt i32 %100, 1, !dbg !811
  br i1 %cmp2.not17.i59.i, label %if.end30.i, label %for.body.i68.i.preheader, !dbg !812

for.body.i68.i.preheader:                         ; preds = %if.else29.i
  %xtraiter568 = and i32 %100, 1, !dbg !812
  %101 = icmp eq i32 %100, 1, !dbg !812
  br i1 %101, label %if.end30.i.loopexit.unr-lcssa, label %for.body.i68.i.preheader.new, !dbg !812

for.body.i68.i.preheader.new:                     ; preds = %for.body.i68.i.preheader
  %unroll_iter571 = and i32 %100, -2, !dbg !812
  br label %for.body.i68.i, !dbg !812

for.body.i68.i:                                   ; preds = %for.inc.i75.i.1, %for.body.i68.i.preheader.new
  %sp.019.in.i62.i = phi %struct.strand_t** [ %m_strands.i, %for.body.i68.i.preheader.new ], [ %s_next.i73.i.1, %for.inc.i75.i.1 ]
  %m.018.i63.i = phi i32 [ 1, %for.body.i68.i.preheader.new ], [ %inc.i72.i.1, %for.inc.i75.i.1 ]
  %niter572 = phi i32 [ 0, %for.body.i68.i.preheader.new ], [ %niter572.next.1, %for.inc.i75.i.1 ]
  %sp.019.i64.i = load %struct.strand_t*, %struct.strand_t** %sp.019.in.i62.i, align 8, !dbg !813, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %m.018.i63.i, metadata !646, metadata !DIExpression()) #15, !dbg !809
  %cmp4.not.i66.i = icmp sgt i32 %m.018.i63.i, %100
  br i1 %cmp4.not.i66.i, label %for.inc.i75.i, label %if.then5.i71.i, !dbg !814

if.then5.i71.i:                                   ; preds = %for.body.i68.i
  %s_attr.i69.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i64.i, i64 0, i32 2, !dbg !815
  %102 = load i32, i32* %s_attr.i69.i, align 4, !dbg !816, !tbaa !290
  %or.i70.i = or i32 %102, 1, !dbg !816
  store i32 %or.i70.i, i32* %s_attr.i69.i, align 4, !dbg !816, !tbaa !290
  br label %for.inc.i75.i, !dbg !817

for.inc.i75.i:                                    ; preds = %if.then5.i71.i, %for.body.i68.i
  %inc.i72.i = add nuw i32 %m.018.i63.i, 1, !dbg !818
  call void @llvm.dbg.value(metadata i32 %inc.i72.i, metadata !646, metadata !DIExpression()) #15, !dbg !809
  %s_next.i73.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i64.i, i64 0, i32 4, !dbg !819
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !647, metadata !DIExpression()) #15, !dbg !809
  %sp.019.i64.i.1 = load %struct.strand_t*, %struct.strand_t** %s_next.i73.i, align 8, !dbg !813, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %inc.i72.i, metadata !646, metadata !DIExpression()) #15, !dbg !809
  %cmp4.not.i66.i.1 = icmp sgt i32 %inc.i72.i, %100
  br i1 %cmp4.not.i66.i.1, label %for.inc.i75.i.1, label %if.then5.i71.i.1, !dbg !814

if.then5.i71.i.1:                                 ; preds = %for.inc.i75.i
  %s_attr.i69.i.1 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i64.i.1, i64 0, i32 2, !dbg !815
  %103 = load i32, i32* %s_attr.i69.i.1, align 4, !dbg !816, !tbaa !290
  %or.i70.i.1 = or i32 %103, 1, !dbg !816
  store i32 %or.i70.i.1, i32* %s_attr.i69.i.1, align 4, !dbg !816, !tbaa !290
  br label %for.inc.i75.i.1, !dbg !817

for.inc.i75.i.1:                                  ; preds = %if.then5.i71.i.1, %for.inc.i75.i
  %inc.i72.i.1 = add nuw i32 %m.018.i63.i, 2, !dbg !818
  call void @llvm.dbg.value(metadata i32 %inc.i72.i.1, metadata !646, metadata !DIExpression()) #15, !dbg !809
  %s_next.i73.i.1 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i64.i.1, i64 0, i32 4, !dbg !819
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !647, metadata !DIExpression()) #15, !dbg !809
  %niter572.next.1 = add i32 %niter572, 2, !dbg !812
  %niter572.ncmp.1 = icmp eq i32 %niter572.next.1, %unroll_iter571, !dbg !812
  br i1 %niter572.ncmp.1, label %if.end30.i.loopexit.unr-lcssa, label %for.body.i68.i, !dbg !812, !llvm.loop !820

if.end30.i.loopexit.unr-lcssa:                    ; preds = %for.inc.i75.i.1, %for.body.i68.i.preheader
  %sp.019.in.i62.i.unr = phi %struct.strand_t** [ %m_strands.i, %for.body.i68.i.preheader ], [ %s_next.i73.i.1, %for.inc.i75.i.1 ]
  %m.018.i63.i.unr = phi i32 [ 1, %for.body.i68.i.preheader ], [ %inc.i72.i.1, %for.inc.i75.i.1 ]
  %lcmp.mod570.not = icmp eq i32 %xtraiter568, 0, !dbg !814
  %cmp4.not.i66.i.epil = icmp sgt i32 %m.018.i63.i.unr, %100
  %or.cond = select i1 %lcmp.mod570.not, i1 true, i1 %cmp4.not.i66.i.epil, !dbg !814
  call void @llvm.dbg.value(metadata i32 %m.018.i63.i.unr, metadata !646, metadata !DIExpression()) #15, !dbg !809
  br i1 %or.cond, label %if.end30.i, label %if.then5.i71.i.epil, !dbg !814

if.then5.i71.i.epil:                              ; preds = %if.end30.i.loopexit.unr-lcssa
  %sp.019.i64.i.epil = load %struct.strand_t*, %struct.strand_t** %sp.019.in.i62.i.unr, align 8, !dbg !813, !tbaa !281
  %s_attr.i69.i.epil = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i64.i.epil, i64 0, i32 2, !dbg !815
  %104 = load i32, i32* %s_attr.i69.i.epil, align 4, !dbg !816, !tbaa !290
  %or.i70.i.epil = or i32 %104, 1, !dbg !816
  store i32 %or.i70.i.epil, i32* %s_attr.i69.i.epil, align 4, !dbg !816, !tbaa !290
  br label %if.end30.i, !dbg !817

if.end30.i:                                       ; preds = %if.end28.i, %if.end30.i.loopexit.unr-lcssa, %if.then5.i71.i.epil, %if.else29.i, %if.end21.i
  %105 = load i8*, i8** @rpart, align 8, !dbg !822, !tbaa !281
  %tobool31.not.i = icmp eq i8* %105, null, !dbg !822
  br i1 %tobool31.not.i, label %if.else49.i, label %if.then32.i, !dbg !824

if.then32.i:                                      ; preds = %if.end30.i
  %call33.i = tail call i8* @strtok(i8* noundef nonnull %105, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !825
  call void @llvm.dbg.value(metadata i8* %call33.i, metadata !531, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !532, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !533, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  %call34.i = call fastcc i32 @is_pattern(i8* noundef %call33.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !827
  %tobool35.not.i = icmp eq i32 %call34.i, 0, !dbg !827
  br i1 %tobool35.not.i, label %if.else37.i, label %if.then36.i, !dbg !829

if.then36.i:                                      ; preds = %if.then32.i
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !830, metadata !DIExpression()) #15, !dbg !837
  call void @llvm.dbg.value(metadata i8* %call33.i, metadata !833, metadata !DIExpression()) #15, !dbg !837
  call void @llvm.dbg.value(metadata i8* %call33.i, metadata !583, metadata !DIExpression()) #15, !dbg !839
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !839
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !839
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !841, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call33.i, metadata !589, metadata !DIExpression()) #15, !dbg !839
  br label %for.cond.i.i339, !dbg !842

for.cond.i.i339:                                  ; preds = %for.inc.i.i349, %if.then36.i
  %aep.0.i.i337 = phi i8* [ %call33.i, %if.then36.i ], [ %incdec.ptr12.i.i348, %for.inc.i.i349 ], !dbg !843
  %rep.0.i.i338 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then36.i ], [ %rep.1.i.i347, %for.inc.i.i349 ], !dbg !839
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i338, metadata !590, metadata !DIExpression()) #15, !dbg !839
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i337, metadata !589, metadata !DIExpression()) #15, !dbg !839
  %106 = load i8, i8* %aep.0.i.i337, align 1, !dbg !844, !tbaa !525
  switch i8 %106, label %if.else9.i.i346 [
    i8 0, label %aexpr2rexpr.exit.i355
    i8 42, label %if.then.i.i342
    i8 63, label %if.then7.i.i344
  ], !dbg !845

if.then.i.i342:                                   ; preds = %for.cond.i.i339
  %incdec.ptr2.i.i340 = getelementptr inbounds i8, i8* %rep.0.i.i338, i64 1, !dbg !846
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i340, metadata !590, metadata !DIExpression()) #15, !dbg !839
  store i8 46, i8* %rep.0.i.i338, align 1, !dbg !847, !tbaa !525
  %incdec.ptr3.i.i341 = getelementptr inbounds i8, i8* %rep.0.i.i338, i64 2, !dbg !848
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i341, metadata !590, metadata !DIExpression()) #15, !dbg !839
  store i8 42, i8* %incdec.ptr2.i.i340, align 1, !dbg !849, !tbaa !525
  br label %for.inc.i.i349, !dbg !850

if.then7.i.i344:                                  ; preds = %for.cond.i.i339
  %incdec.ptr8.i.i343 = getelementptr inbounds i8, i8* %rep.0.i.i338, i64 1, !dbg !851
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i343, metadata !590, metadata !DIExpression()) #15, !dbg !839
  store i8 46, i8* %rep.0.i.i338, align 1, !dbg !852, !tbaa !525
  br label %for.inc.i.i349, !dbg !853

if.else9.i.i346:                                  ; preds = %for.cond.i.i339
  %incdec.ptr10.i.i345 = getelementptr inbounds i8, i8* %rep.0.i.i338, i64 1, !dbg !854
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i345, metadata !590, metadata !DIExpression()) #15, !dbg !839
  store i8 %106, i8* %rep.0.i.i338, align 1, !dbg !855, !tbaa !525
  br label %for.inc.i.i349

for.inc.i.i349:                                   ; preds = %if.else9.i.i346, %if.then7.i.i344, %if.then.i.i342
  %rep.1.i.i347 = phi i8* [ %incdec.ptr3.i.i341, %if.then.i.i342 ], [ %incdec.ptr8.i.i343, %if.then7.i.i344 ], [ %incdec.ptr10.i.i345, %if.else9.i.i346 ], !dbg !856
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i347, metadata !590, metadata !DIExpression()) #15, !dbg !839
  %incdec.ptr12.i.i348 = getelementptr inbounds i8, i8* %aep.0.i.i337, i64 1, !dbg !857
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i348, metadata !589, metadata !DIExpression()) #15, !dbg !839
  br label %for.cond.i.i339, !dbg !858, !llvm.loop !859

aexpr2rexpr.exit.i355:                            ; preds = %for.cond.i.i339
  %incdec.ptr13.i.i350 = getelementptr inbounds i8, i8* %rep.0.i.i338, i64 1, !dbg !861
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i350, metadata !590, metadata !DIExpression()) #15, !dbg !839
  store i8 36, i8* %rep.0.i.i338, align 1, !dbg !862, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i350, align 1, !dbg !863, !tbaa !525
  %call.i351 = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !864
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !835, metadata !DIExpression()) #15, !dbg !837
  %sp.020.i353 = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !865, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.020.i353, metadata !835, metadata !DIExpression()) #15, !dbg !837
  %tobool.not21.i354 = icmp eq %struct.strand_t* %sp.020.i353, null, !dbg !867
  br i1 %tobool.not21.i354, label %if.end38.i, label %for.body.i360, !dbg !867

for.body.i360:                                    ; preds = %aexpr2rexpr.exit.i355, %for.inc6.i379
  %sp.022.i356 = phi %struct.strand_t* [ %sp.0.i377, %for.inc6.i379 ], [ %sp.020.i353, %aexpr2rexpr.exit.i355 ]
  %s_attr.i357 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i356, i64 0, i32 2, !dbg !868
  %107 = load i32, i32* %s_attr.i357, align 4, !dbg !868, !tbaa !290
  %and.i358 = and i32 %107, 1, !dbg !872
  %tobool1.not.i359 = icmp eq i32 %and.i358, 0, !dbg !872
  br i1 %tobool1.not.i359, label %for.inc6.i379, label %for.cond2.preheader.i364, !dbg !873

for.cond2.preheader.i364:                         ; preds = %for.body.i360
  %s_nresidues.i361 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i356, i64 0, i32 5
  %s_residues.i362 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i356, i64 0, i32 7
  call void @llvm.dbg.value(metadata i32 0, metadata !834, metadata !DIExpression()) #15, !dbg !837
  %108 = load i32, i32* %s_nresidues.i361, align 8, !dbg !874, !tbaa !295
  %cmp18.i363 = icmp sgt i32 %108, 0, !dbg !878
  br i1 %cmp18.i363, label %for.body3.i375, label %for.inc6.i379, !dbg !879

for.body3.i375:                                   ; preds = %for.cond2.preheader.i364, %for.body3.i375
  %indvars.iv.i365 = phi i64 [ %indvars.iv.next.i373, %for.body3.i375 ], [ 0, %for.cond2.preheader.i364 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i365, metadata !834, metadata !DIExpression()) #15, !dbg !837
  %109 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i362, align 8, !dbg !880, !tbaa !301
  %arrayidx.i366 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %109, i64 %indvars.iv.i365, !dbg !882
  %110 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i366, align 8, !dbg !882, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %110, metadata !836, metadata !DIExpression()) #15, !dbg !837
  %r_resname.i367 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %110, i64 0, i32 4, !dbg !883
  %111 = load i8*, i8** %r_resname.i367, align 8, !dbg !883, !tbaa !884
  %call4.i368 = tail call i32 @step(i8* noundef %111, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !885
  %tobool5.not.i369 = icmp ne i32 %call4.i368, 0, !dbg !885
  %cond.i370 = zext i1 %tobool5.not.i369 to i32, !dbg !885
  %r_attr.i371 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %110, i64 0, i32 6, !dbg !886
  %112 = load i32, i32* %r_attr.i371, align 8, !dbg !887, !tbaa !306
  %or.i372 = or i32 %112, %cond.i370, !dbg !887
  store i32 %or.i372, i32* %r_attr.i371, align 8, !dbg !887, !tbaa !306
  %indvars.iv.next.i373 = add nuw nsw i64 %indvars.iv.i365, 1, !dbg !888
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i373, metadata !834, metadata !DIExpression()) #15, !dbg !837
  %113 = load i32, i32* %s_nresidues.i361, align 8, !dbg !874, !tbaa !295
  %114 = sext i32 %113 to i64, !dbg !878
  %cmp.i374 = icmp slt i64 %indvars.iv.next.i373, %114, !dbg !878
  br i1 %cmp.i374, label %for.body3.i375, label %for.inc6.i379, !dbg !879, !llvm.loop !889

for.inc6.i379:                                    ; preds = %for.body3.i375, %for.cond2.preheader.i364, %for.body.i360
  %s_next.i376 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i356, i64 0, i32 4, !dbg !891
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !835, metadata !DIExpression()) #15, !dbg !837
  %sp.0.i377 = load %struct.strand_t*, %struct.strand_t** %s_next.i376, align 8, !dbg !865, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i377, metadata !835, metadata !DIExpression()) #15, !dbg !837
  %tobool.not.i378 = icmp eq %struct.strand_t* %sp.0.i377, null, !dbg !867
  br i1 %tobool.not.i378, label %if.end38.i, label %for.body.i360, !dbg !867, !llvm.loop !892

if.else37.i:                                      ; preds = %if.then32.i
  %115 = load i32, i32* %lo.i, align 4, !dbg !894, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %115, metadata !532, metadata !DIExpression()) #15, !dbg !534
  %116 = load i32, i32* %hi.i, align 4, !dbg !895, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %116, metadata !533, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !896, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata i32 %115, metadata !899, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata i32 %116, metadata !900, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !903, metadata !DIExpression()) #15, !dbg !905
  %sp.029.i.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !907, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.029.i.i, metadata !903, metadata !DIExpression()) #15, !dbg !905
  %tobool.not30.i.i = icmp eq %struct.strand_t* %sp.029.i.i, null, !dbg !909
  br i1 %tobool.not30.i.i, label %if.end38.i, label %for.body.lr.ph.i.i, !dbg !909

for.body.lr.ph.i.i:                               ; preds = %if.else37.i
  %cmp.i78.i = icmp eq i32 %116, -1
  br i1 %cmp.i78.i, label %for.body.us.preheader.i.i, label %for.body.preheader.i79.i, !dbg !910

for.body.preheader.i79.i:                         ; preds = %for.body.lr.ph.i.i
  %117 = sext i32 %116 to i64, !dbg !909
  %118 = sext i32 %115 to i64, !dbg !909
  br label %for.body.i81.i, !dbg !909

for.body.us.preheader.i.i:                        ; preds = %for.body.lr.ph.i.i
  %119 = sext i32 %115 to i64, !dbg !909
  br label %for.body.us.i.i, !dbg !909

for.body.us.i.i:                                  ; preds = %for.inc11.us.i.i, %for.body.us.preheader.i.i
  %sp.031.us.i.i = phi %struct.strand_t* [ %sp.0.us.i.i, %for.inc11.us.i.i ], [ %sp.029.i.i, %for.body.us.preheader.i.i ]
  %s_attr.us.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i.i, i64 0, i32 2, !dbg !915
  %120 = load i32, i32* %s_attr.us.i.i, align 4, !dbg !915, !tbaa !290
  %and.us.i.i = and i32 %120, 1, !dbg !916
  %tobool1.not.us.i.i = icmp eq i32 %and.us.i.i, 0, !dbg !916
  br i1 %tobool1.not.us.i.i, label %for.inc11.us.i.i, label %if.then.us.i.i, !dbg !917

if.then.us.i.i:                                   ; preds = %for.body.us.i.i
  %s_nresidues.us.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i.i, i64 0, i32 5, !dbg !918
  %121 = load i32, i32* %s_nresidues.us.i.i, align 8, !dbg !918, !tbaa !295
  call void @llvm.dbg.value(metadata i32 undef, metadata !902, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata i32 0, metadata !901, metadata !DIExpression()) #15, !dbg !905
  %s_residues.us.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i.i, i64 0, i32 7
  %cmp427.us.i.i = icmp sgt i32 %121, 0, !dbg !919
  br i1 %cmp427.us.i.i, label %for.body5.us.preheader.i.i, label %for.inc11.us.i.i, !dbg !922

for.body5.us.preheader.i.i:                       ; preds = %if.then.us.i.i
  %wide.trip.count37.i.i = zext i32 %121 to i64, !dbg !919
  %xtraiter578 = and i64 %wide.trip.count37.i.i, 1, !dbg !922
  %122 = icmp eq i32 %121, 1, !dbg !922
  br i1 %122, label %for.inc11.us.i.i.loopexit.unr-lcssa, label %for.body5.us.preheader.i.i.new, !dbg !922

for.body5.us.preheader.i.i.new:                   ; preds = %for.body5.us.preheader.i.i
  %unroll_iter581 = and i64 %wide.trip.count37.i.i, 4294967294, !dbg !922
  br label %for.body5.us.i.i, !dbg !922

for.body5.us.i.i:                                 ; preds = %for.inc.us.i.i.1, %for.body5.us.preheader.i.i.new
  %indvars.iv34.i.i = phi i64 [ 0, %for.body5.us.preheader.i.i.new ], [ %indvars.iv.next35.i.i.1, %for.inc.us.i.i.1 ]
  %niter582 = phi i64 [ 0, %for.body5.us.preheader.i.i.new ], [ %niter582.next.1, %for.inc.us.i.i.1 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv34.i.i, metadata !901, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %indvars.iv.next35.i.i = or i64 %indvars.iv34.i.i, 1, !dbg !923
  %cmp6.not.us.not.i.i = icmp slt i64 %indvars.iv.next35.i.i, %119, !dbg !926
  br i1 %cmp6.not.us.not.i.i, label %for.inc.us.i.i, label %if.then9.us.i.i, !dbg !927

if.then9.us.i.i:                                  ; preds = %for.body5.us.i.i
  %123 = load %struct.residue_t**, %struct.residue_t*** %s_residues.us.i.i, align 8, !dbg !928, !tbaa !301
  %arrayidx.us.i.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %123, i64 %indvars.iv34.i.i, !dbg !929
  %124 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i.i, align 8, !dbg !929, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %124, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %r_attr.us.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %124, i64 0, i32 6, !dbg !930
  %125 = load i32, i32* %r_attr.us.i.i, align 8, !dbg !931, !tbaa !306
  %or.us.i.i = or i32 %125, 1, !dbg !931
  store i32 %or.us.i.i, i32* %r_attr.us.i.i, align 8, !dbg !931, !tbaa !306
  br label %for.inc.us.i.i, !dbg !932

for.inc.us.i.i:                                   ; preds = %if.then9.us.i.i, %for.body5.us.i.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i.i, metadata !901, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i.i, metadata !901, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %indvars.iv.next35.i.i.1 = add nuw nsw i64 %indvars.iv34.i.i, 2, !dbg !923
  %cmp6.not.us.not.i.i.1 = icmp slt i64 %indvars.iv.next35.i.i.1, %119, !dbg !926
  br i1 %cmp6.not.us.not.i.i.1, label %for.inc.us.i.i.1, label %if.then9.us.i.i.1, !dbg !927

if.then9.us.i.i.1:                                ; preds = %for.inc.us.i.i
  %126 = load %struct.residue_t**, %struct.residue_t*** %s_residues.us.i.i, align 8, !dbg !928, !tbaa !301
  %arrayidx.us.i.i.1 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %126, i64 %indvars.iv.next35.i.i, !dbg !929
  %127 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i.i.1, align 8, !dbg !929, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %127, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %r_attr.us.i.i.1 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %127, i64 0, i32 6, !dbg !930
  %128 = load i32, i32* %r_attr.us.i.i.1, align 8, !dbg !931, !tbaa !306
  %or.us.i.i.1 = or i32 %128, 1, !dbg !931
  store i32 %or.us.i.i.1, i32* %r_attr.us.i.i.1, align 8, !dbg !931, !tbaa !306
  br label %for.inc.us.i.i.1, !dbg !932

for.inc.us.i.i.1:                                 ; preds = %if.then9.us.i.i.1, %for.inc.us.i.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i.i.1, metadata !901, metadata !DIExpression()) #15, !dbg !905
  %niter582.next.1 = add i64 %niter582, 2, !dbg !922
  %niter582.ncmp.1 = icmp eq i64 %niter582.next.1, %unroll_iter581, !dbg !922
  br i1 %niter582.ncmp.1, label %for.inc11.us.i.i.loopexit.unr-lcssa, label %for.body5.us.i.i, !dbg !922, !llvm.loop !933

for.inc11.us.i.i.loopexit.unr-lcssa:              ; preds = %for.inc.us.i.i.1, %for.body5.us.preheader.i.i
  %indvars.iv34.i.i.unr = phi i64 [ 0, %for.body5.us.preheader.i.i ], [ %indvars.iv.next35.i.i.1, %for.inc.us.i.i.1 ]
  %lcmp.mod580.not = icmp eq i64 %xtraiter578, 0, !dbg !927
  %indvars.iv.next35.i.i.epil = add nuw nsw i64 %indvars.iv34.i.i.unr, 1
  %cmp6.not.us.not.i.i.epil = icmp slt i64 %indvars.iv.next35.i.i.epil, %119
  %or.cond621 = select i1 %lcmp.mod580.not, i1 true, i1 %cmp6.not.us.not.i.i.epil, !dbg !927
  call void @llvm.dbg.value(metadata i64 %indvars.iv34.i.i.unr, metadata !901, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !905
  br i1 %or.cond621, label %for.inc11.us.i.i, label %if.then9.us.i.i.epil, !dbg !927

if.then9.us.i.i.epil:                             ; preds = %for.inc11.us.i.i.loopexit.unr-lcssa
  %129 = load %struct.residue_t**, %struct.residue_t*** %s_residues.us.i.i, align 8, !dbg !928, !tbaa !301
  %arrayidx.us.i.i.epil = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %129, i64 %indvars.iv34.i.i.unr, !dbg !929
  %130 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i.i.epil, align 8, !dbg !929, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %130, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %r_attr.us.i.i.epil = getelementptr inbounds %struct.residue_t, %struct.residue_t* %130, i64 0, i32 6, !dbg !930
  %131 = load i32, i32* %r_attr.us.i.i.epil, align 8, !dbg !931, !tbaa !306
  %or.us.i.i.epil = or i32 %131, 1, !dbg !931
  store i32 %or.us.i.i.epil, i32* %r_attr.us.i.i.epil, align 8, !dbg !931, !tbaa !306
  br label %for.inc11.us.i.i, !dbg !932

for.inc11.us.i.i:                                 ; preds = %for.inc11.us.i.i.loopexit.unr-lcssa, %if.then9.us.i.i.epil, %if.then.us.i.i, %for.body.us.i.i
  %s_next.us.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i.i, i64 0, i32 4, !dbg !935
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !903, metadata !DIExpression()) #15, !dbg !905
  %sp.0.us.i.i = load %struct.strand_t*, %struct.strand_t** %s_next.us.i.i, align 8, !dbg !907, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.us.i.i, metadata !903, metadata !DIExpression()) #15, !dbg !905
  %tobool.not.us.i.i = icmp eq %struct.strand_t* %sp.0.us.i.i, null, !dbg !909
  br i1 %tobool.not.us.i.i, label %if.end38.i, label %for.body.us.i.i, !dbg !909, !llvm.loop !936

for.body.i81.i:                                   ; preds = %for.inc11.i.i, %for.body.preheader.i79.i
  %sp.031.i.i = phi %struct.strand_t* [ %sp.0.i87.i, %for.inc11.i.i ], [ %sp.029.i.i, %for.body.preheader.i79.i ]
  %s_attr.i80.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i.i, i64 0, i32 2, !dbg !915
  %132 = load i32, i32* %s_attr.i80.i, align 4, !dbg !915, !tbaa !290
  %and.i.i = and i32 %132, 1, !dbg !916
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !916
  br i1 %tobool1.not.i.i, label %for.inc11.i.i, label %if.then.i.i, !dbg !917

if.then.i.i:                                      ; preds = %for.body.i81.i
  call void @llvm.dbg.value(metadata i32 %116, metadata !902, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata i32 0, metadata !901, metadata !DIExpression()) #15, !dbg !905
  %s_nresidues3.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i.i, i64 0, i32 5
  %133 = load i32, i32* %s_nresidues3.i.i, align 8, !tbaa !295
  %s_residues.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i.i, i64 0, i32 7
  %cmp427.i.i = icmp sgt i32 %133, 0, !dbg !919
  br i1 %cmp427.i.i, label %for.body5.preheader.i.i, label %for.inc11.i.i, !dbg !922

for.body5.preheader.i.i:                          ; preds = %if.then.i.i
  %wide.trip.count.i.i = zext i32 %133 to i64, !dbg !919
  %xtraiter573 = and i64 %wide.trip.count.i.i, 1, !dbg !922
  %134 = icmp eq i32 %133, 1, !dbg !922
  br i1 %134, label %for.inc11.i.i.loopexit.unr-lcssa, label %for.body5.preheader.i.i.new, !dbg !922

for.body5.preheader.i.i.new:                      ; preds = %for.body5.preheader.i.i
  %unroll_iter576 = and i64 %wide.trip.count.i.i, 4294967294, !dbg !922
  br label %for.body5.i.i, !dbg !922

for.body5.i.i:                                    ; preds = %for.inc.i85.i.1, %for.body5.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %for.body5.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %for.inc.i85.i.1 ]
  %niter577 = phi i64 [ 0, %for.body5.preheader.i.i.new ], [ %niter577.next.1, %for.inc.i85.i.1 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !901, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %indvars.iv.next.i.i = or i64 %indvars.iv.i.i, 1, !dbg !923
  %cmp6.not.i.i = icmp sge i64 %indvars.iv.next.i.i, %118, !dbg !926
  %cmp8.not.not.i.i = icmp slt i64 %indvars.iv.i.i, %117
  %or.cond.i82.i = and i1 %cmp8.not.not.i.i, %cmp6.not.i.i, !dbg !927
  br i1 %or.cond.i82.i, label %if.then9.i.i, label %for.inc.i85.i, !dbg !927

if.then9.i.i:                                     ; preds = %for.body5.i.i
  %135 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i.i, align 8, !dbg !928, !tbaa !301
  %arrayidx.i.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %135, i64 %indvars.iv.i.i, !dbg !929
  %136 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i.i, align 8, !dbg !929, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %136, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %r_attr.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %136, i64 0, i32 6, !dbg !930
  %137 = load i32, i32* %r_attr.i.i, align 8, !dbg !931, !tbaa !306
  %or.i83.i = or i32 %137, 1, !dbg !931
  store i32 %or.i83.i, i32* %r_attr.i.i, align 8, !dbg !931, !tbaa !306
  br label %for.inc.i85.i, !dbg !932

for.inc.i85.i:                                    ; preds = %if.then9.i.i, %for.body5.i.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !901, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !901, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2, !dbg !923
  %cmp6.not.i.i.1 = icmp sge i64 %indvars.iv.next.i.i.1, %118, !dbg !926
  %cmp8.not.not.i.i.1 = icmp slt i64 %indvars.iv.next.i.i, %117
  %or.cond.i82.i.1 = and i1 %cmp8.not.not.i.i.1, %cmp6.not.i.i.1, !dbg !927
  br i1 %or.cond.i82.i.1, label %if.then9.i.i.1, label %for.inc.i85.i.1, !dbg !927

if.then9.i.i.1:                                   ; preds = %for.inc.i85.i
  %138 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i.i, align 8, !dbg !928, !tbaa !301
  %arrayidx.i.i.1 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %138, i64 %indvars.iv.next.i.i, !dbg !929
  %139 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i.i.1, align 8, !dbg !929, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %139, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %r_attr.i.i.1 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %139, i64 0, i32 6, !dbg !930
  %140 = load i32, i32* %r_attr.i.i.1, align 8, !dbg !931, !tbaa !306
  %or.i83.i.1 = or i32 %140, 1, !dbg !931
  store i32 %or.i83.i.1, i32* %r_attr.i.i.1, align 8, !dbg !931, !tbaa !306
  br label %for.inc.i85.i.1, !dbg !932

for.inc.i85.i.1:                                  ; preds = %if.then9.i.i.1, %for.inc.i85.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i.1, metadata !901, metadata !DIExpression()) #15, !dbg !905
  %niter577.next.1 = add i64 %niter577, 2, !dbg !922
  %niter577.ncmp.1 = icmp eq i64 %niter577.next.1, %unroll_iter576, !dbg !922
  br i1 %niter577.ncmp.1, label %for.inc11.i.i.loopexit.unr-lcssa, label %for.body5.i.i, !dbg !922, !llvm.loop !938

for.inc11.i.i.loopexit.unr-lcssa:                 ; preds = %for.inc.i85.i.1, %for.body5.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ 0, %for.body5.preheader.i.i ], [ %indvars.iv.next.i.i.1, %for.inc.i85.i.1 ]
  %lcmp.mod575.not = icmp eq i64 %xtraiter573, 0, !dbg !927
  br i1 %lcmp.mod575.not, label %for.inc11.i.i, label %for.body5.i.i.epil, !dbg !927

for.body5.i.i.epil:                               ; preds = %for.inc11.i.i.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i.unr, metadata !901, metadata !DIExpression()) #15, !dbg !905
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.unr, 1, !dbg !923
  %cmp6.not.i.i.epil = icmp sge i64 %indvars.iv.next.i.i.epil, %118, !dbg !926
  %cmp8.not.not.i.i.epil = icmp slt i64 %indvars.iv.i.i.unr, %117
  %or.cond.i82.i.epil = and i1 %cmp8.not.not.i.i.epil, %cmp6.not.i.i.epil, !dbg !927
  br i1 %or.cond.i82.i.epil, label %if.then9.i.i.epil, label %for.inc11.i.i, !dbg !927

if.then9.i.i.epil:                                ; preds = %for.body5.i.i.epil
  %141 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i.i, align 8, !dbg !928, !tbaa !301
  %arrayidx.i.i.epil = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %141, i64 %indvars.iv.i.i.unr, !dbg !929
  %142 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i.i.epil, align 8, !dbg !929, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %142, metadata !904, metadata !DIExpression()) #15, !dbg !905
  %r_attr.i.i.epil = getelementptr inbounds %struct.residue_t, %struct.residue_t* %142, i64 0, i32 6, !dbg !930
  %143 = load i32, i32* %r_attr.i.i.epil, align 8, !dbg !931, !tbaa !306
  %or.i83.i.epil = or i32 %143, 1, !dbg !931
  store i32 %or.i83.i.epil, i32* %r_attr.i.i.epil, align 8, !dbg !931, !tbaa !306
  br label %for.inc11.i.i, !dbg !932

for.inc11.i.i:                                    ; preds = %for.inc11.i.i.loopexit.unr-lcssa, %if.then9.i.i.epil, %for.body5.i.i.epil, %if.then.i.i, %for.body.i81.i
  %s_next.i86.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i.i, i64 0, i32 4, !dbg !935
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !903, metadata !DIExpression()) #15, !dbg !905
  %sp.0.i87.i = load %struct.strand_t*, %struct.strand_t** %s_next.i86.i, align 8, !dbg !907, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i87.i, metadata !903, metadata !DIExpression()) #15, !dbg !905
  %tobool.not.i88.i = icmp eq %struct.strand_t* %sp.0.i87.i, null, !dbg !909
  br i1 %tobool.not.i88.i, label %if.end38.i, label %for.body.i81.i, !dbg !909, !llvm.loop !939

if.end38.i:                                       ; preds = %for.inc6.i379, %for.inc11.i.i, %for.inc11.us.i.i, %aexpr2rexpr.exit.i355, %if.else37.i
  %call40188.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !940
  call void @llvm.dbg.value(metadata i8* %call40188.i, metadata !531, metadata !DIExpression()) #15, !dbg !534
  %tobool41.not189.i = icmp eq i8* %call40188.i, null, !dbg !941
  br i1 %tobool41.not189.i, label %if.end50.i, label %while.body42.i.preheader, !dbg !941

while.body42.i.preheader:                         ; preds = %if.end38.i
  %call.i269 = tail call i16** @__ctype_b_loc() #16, !dbg !371
  br label %while.body42.i, !dbg !941

while.body42.i:                                   ; preds = %while.body42.i.preheader, %if.end47.i
  %call40190.i = phi i8* [ %call40.i, %if.end47.i ], [ %call40188.i, %while.body42.i.preheader ]
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !532, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !533, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  call void @llvm.dbg.value(metadata i8* %call40190.i, metadata !672, metadata !DIExpression()) #15, !dbg !942
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !678, metadata !DIExpression()) #15, !dbg !942
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !679, metadata !DIExpression()) #15, !dbg !942
  %144 = load i16*, i16** %call.i269, align 8, !dbg !946, !tbaa !281
  %145 = load i8, i8* %call40190.i, align 1, !dbg !946, !tbaa !525
  %idxprom.i270 = sext i8 %145 to i64, !dbg !946
  %arrayidx.i271 = getelementptr inbounds i16, i16* %144, i64 %idxprom.i270, !dbg !946
  %146 = load i16, i16* %arrayidx.i271, align 2, !dbg !946, !tbaa !688
  %147 = and i16 %146, 2048, !dbg !946
  %tobool.not.i272 = icmp ne i16 %147, 0, !dbg !946
  %cmp.not.i273 = icmp eq i8 %145, 45
  %or.cond.i274 = select i1 %tobool.not.i272, i1 true, i1 %cmp.not.i273, !dbg !947
  br i1 %or.cond.i274, label %if.end.i276, label %if.then45.i, !dbg !947

if.end.i276:                                      ; preds = %while.body42.i
  %tobool10.not.i275 = icmp eq i16 %147, 0, !dbg !948
  br i1 %tobool10.not.i275, label %if.else59.i316, label %for.body.i287, !dbg !949

for.body.i287:                                    ; preds = %if.end.i276, %for.body.i287
  %148 = phi i8 [ %149, %for.body.i287 ], [ %145, %if.end.i276 ]
  %ip.0133.i277 = phi i8* [ %incdec.ptr.i283, %for.body.i287 ], [ %call40190.i, %if.end.i276 ]
  %val.0132.i278 = phi i32 [ %sub.i282, %for.body.i287 ], [ 0, %if.end.i276 ]
  call void @llvm.dbg.value(metadata i8* %ip.0133.i277, metadata !681, metadata !DIExpression()) #15, !dbg !942
  call void @llvm.dbg.value(metadata i32 %val.0132.i278, metadata !680, metadata !DIExpression()) #15, !dbg !942
  %conv13.i279 = sext i8 %148 to i32, !dbg !950
  %mul.i280 = mul nsw i32 %val.0132.i278, 10, !dbg !951
  %add.i281 = add nsw i32 %conv13.i279, -48, !dbg !952
  %sub.i282 = add i32 %add.i281, %mul.i280, !dbg !953
  call void @llvm.dbg.value(metadata i32 %sub.i282, metadata !680, metadata !DIExpression()) #15, !dbg !942
  %incdec.ptr.i283 = getelementptr inbounds i8, i8* %ip.0133.i277, i64 1, !dbg !954
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i283, metadata !681, metadata !DIExpression()) #15, !dbg !942
  %149 = load i8, i8* %incdec.ptr.i283, align 1, !dbg !950, !tbaa !525
  %idxprom14.i284 = sext i8 %149 to i64, !dbg !950
  %arrayidx15.i285 = getelementptr inbounds i16, i16* %144, i64 %idxprom14.i284, !dbg !950
  %150 = load i16, i16* %arrayidx15.i285, align 2, !dbg !950, !tbaa !688
  %151 = and i16 %150, 2048, !dbg !950
  %tobool18.not.i286 = icmp eq i16 %151, 0, !dbg !955
  br i1 %tobool18.not.i286, label %for.end.i288, label %for.body.i287, !dbg !955, !llvm.loop !956

for.end.i288:                                     ; preds = %for.body.i287
  store i32 %sub.i282, i32* %lo.i, align 4, !dbg !958, !tbaa !637
  switch i8 %149, label %if.end28.i295 [
    i8 0, label %if.then21.i289
    i8 45, label %if.then25.i292
  ], !dbg !959

if.then21.i289:                                   ; preds = %for.end.i288
  store i32 %sub.i282, i32* %hi.i, align 4, !dbg !960, !tbaa !637
  br label %if.else46.i, !dbg !961

if.then25.i292:                                   ; preds = %for.end.i288
  %incdec.ptr26.i290 = getelementptr inbounds i8, i8* %ip.0133.i277, i64 2, !dbg !962
  call void @llvm.dbg.value(metadata i8* %incdec.ptr26.i290, metadata !681, metadata !DIExpression()) #15, !dbg !942
  %.pr.i291 = load i8, i8* %incdec.ptr26.i290, align 1, !dbg !963, !tbaa !525
  br label %if.end28.i295, !dbg !964

if.end28.i295:                                    ; preds = %if.then25.i292, %for.end.i288
  %152 = phi i8 [ %149, %for.end.i288 ], [ %.pr.i291, %if.then25.i292 ], !dbg !963
  %ip.1.i293 = phi i8* [ %incdec.ptr.i283, %for.end.i288 ], [ %incdec.ptr26.i290, %if.then25.i292 ], !dbg !965
  call void @llvm.dbg.value(metadata i8* %ip.1.i293, metadata !681, metadata !DIExpression()) #15, !dbg !942
  %tobool29.not.i294 = icmp eq i8 %152, 0, !dbg !963
  br i1 %tobool29.not.i294, label %if.then30.i296, label %if.else31.i300, !dbg !966

if.then30.i296:                                   ; preds = %if.end28.i295
  store i32 -1, i32* %hi.i, align 4, !dbg !967, !tbaa !637
  br label %if.else46.i, !dbg !969

if.else31.i300:                                   ; preds = %if.end28.i295
  %idxprom34.i297 = sext i8 %152 to i64, !dbg !970
  %arrayidx35.i298 = getelementptr inbounds i16, i16* %144, i64 %idxprom34.i297, !dbg !970
  %153 = load i16, i16* %arrayidx35.i298, align 2, !dbg !970, !tbaa !688
  %154 = and i16 %153, 2048, !dbg !970
  %tobool38.not.i299 = icmp eq i16 %154, 0, !dbg !970
  br i1 %tobool38.not.i299, label %if.then45.i, label %for.body50.i311, !dbg !971

for.body50.i311:                                  ; preds = %if.else31.i300, %for.body50.i311
  %155 = phi i8 [ %156, %for.body50.i311 ], [ %152, %if.else31.i300 ]
  %ip.2139.i301 = phi i8* [ %incdec.ptr56.i307, %for.body50.i311 ], [ %ip.1.i293, %if.else31.i300 ]
  %val.1138.i302 = phi i32 [ %sub54.i306, %for.body50.i311 ], [ 0, %if.else31.i300 ]
  call void @llvm.dbg.value(metadata i8* %ip.2139.i301, metadata !681, metadata !DIExpression()) #15, !dbg !942
  call void @llvm.dbg.value(metadata i32 %val.1138.i302, metadata !680, metadata !DIExpression()) #15, !dbg !942
  %conv44.i303 = sext i8 %155 to i32, !dbg !972
  %mul51.i304 = mul nsw i32 %val.1138.i302, 10, !dbg !973
  %add53.i305 = add nsw i32 %conv44.i303, -48, !dbg !974
  %sub54.i306 = add i32 %add53.i305, %mul51.i304, !dbg !975
  call void @llvm.dbg.value(metadata i32 %sub54.i306, metadata !680, metadata !DIExpression()) #15, !dbg !942
  %incdec.ptr56.i307 = getelementptr inbounds i8, i8* %ip.2139.i301, i64 1, !dbg !976
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56.i307, metadata !681, metadata !DIExpression()) #15, !dbg !942
  %156 = load i8, i8* %incdec.ptr56.i307, align 1, !dbg !972, !tbaa !525
  %idxprom45.i308 = sext i8 %156 to i64, !dbg !972
  %arrayidx46.i309 = getelementptr inbounds i16, i16* %144, i64 %idxprom45.i308, !dbg !972
  %157 = load i16, i16* %arrayidx46.i309, align 2, !dbg !972, !tbaa !688
  %158 = and i16 %157, 2048, !dbg !972
  %tobool49.not.i310 = icmp eq i16 %158, 0, !dbg !977
  br i1 %tobool49.not.i310, label %is_pattern.exit336, label %for.body50.i311, !dbg !977, !llvm.loop !978

if.else59.i316:                                   ; preds = %if.end.i276
  store i32 1, i32* %lo.i, align 4, !dbg !980, !tbaa !637
  %arrayidx60.i314 = getelementptr inbounds i8, i8* %call40190.i, i64 1, !dbg !981
  call void @llvm.dbg.value(metadata i8* %arrayidx60.i314, metadata !681, metadata !DIExpression()) #15, !dbg !942
  %159 = load i8, i8* %arrayidx60.i314, align 1, !dbg !982, !tbaa !525
  %tobool62.not.i315 = icmp eq i8 %159, 0, !dbg !982
  br i1 %tobool62.not.i315, label %if.then63.i317, label %if.else64.i321, !dbg !983

if.then63.i317:                                   ; preds = %if.else59.i316
  store i32 -1, i32* %hi.i, align 4, !dbg !984, !tbaa !637
  br label %if.else46.i, !dbg !986

if.else64.i321:                                   ; preds = %if.else59.i316
  %idxprom67.i318 = sext i8 %159 to i64, !dbg !987
  %arrayidx68.i319 = getelementptr inbounds i16, i16* %144, i64 %idxprom67.i318, !dbg !987
  %160 = load i16, i16* %arrayidx68.i319, align 2, !dbg !987, !tbaa !688
  %161 = and i16 %160, 2048, !dbg !987
  %tobool71.not.i320 = icmp eq i16 %161, 0, !dbg !987
  br i1 %tobool71.not.i320, label %if.else64.i321.if.else46.ithread-pre-split_crit_edge, label %for.body81.i332, !dbg !988

if.else64.i321.if.else46.ithread-pre-split_crit_edge: ; preds = %if.else64.i321
  %.pr.pre = load i32, i32* %hi.i, align 4, !dbg !989, !tbaa !637
  br label %if.else46.i, !dbg !988

for.body81.i332:                                  ; preds = %if.else64.i321, %for.body81.i332
  %162 = phi i8 [ %163, %for.body81.i332 ], [ %159, %if.else64.i321 ]
  %ip.3146.i322 = phi i8* [ %incdec.ptr87.i328, %for.body81.i332 ], [ %arrayidx60.i314, %if.else64.i321 ]
  %val.2145.i323 = phi i32 [ %sub85.i327, %for.body81.i332 ], [ 0, %if.else64.i321 ]
  call void @llvm.dbg.value(metadata i8* %ip.3146.i322, metadata !681, metadata !DIExpression()) #15, !dbg !942
  call void @llvm.dbg.value(metadata i32 %val.2145.i323, metadata !680, metadata !DIExpression()) #15, !dbg !942
  %conv75.i324 = sext i8 %162 to i32, !dbg !990
  %mul82.i325 = mul nsw i32 %val.2145.i323, 10, !dbg !991
  %add84.i326 = add nsw i32 %conv75.i324, -48, !dbg !992
  %sub85.i327 = add i32 %add84.i326, %mul82.i325, !dbg !993
  call void @llvm.dbg.value(metadata i32 %sub85.i327, metadata !680, metadata !DIExpression()) #15, !dbg !942
  %incdec.ptr87.i328 = getelementptr inbounds i8, i8* %ip.3146.i322, i64 1, !dbg !994
  call void @llvm.dbg.value(metadata i8* %incdec.ptr87.i328, metadata !681, metadata !DIExpression()) #15, !dbg !942
  %163 = load i8, i8* %incdec.ptr87.i328, align 1, !dbg !990, !tbaa !525
  %idxprom76.i329 = sext i8 %163 to i64, !dbg !990
  %arrayidx77.i330 = getelementptr inbounds i16, i16* %144, i64 %idxprom76.i329, !dbg !990
  %164 = load i16, i16* %arrayidx77.i330, align 2, !dbg !990, !tbaa !688
  %165 = and i16 %164, 2048, !dbg !990
  %tobool80.not.i331 = icmp eq i16 %165, 0, !dbg !995
  br i1 %tobool80.not.i331, label %is_pattern.exit336, label %for.body81.i332, !dbg !995, !llvm.loop !996

is_pattern.exit336:                               ; preds = %for.body50.i311, %for.body81.i332
  %166 = phi i32 [ 1, %for.body81.i332 ], [ %sub.i282, %for.body50.i311 ]
  %storemerge467 = phi i32 [ %sub85.i327, %for.body81.i332 ], [ %sub54.i306, %for.body50.i311 ], !dbg !942
  %retval.0.i335.in.in = phi i8* [ %incdec.ptr87.i328, %for.body81.i332 ], [ %incdec.ptr56.i307, %for.body50.i311 ]
  store i32 %storemerge467, i32* %hi.i, align 4, !dbg !942, !tbaa !637
  %retval.0.i335.in = load i8, i8* %retval.0.i335.in.in, align 1, !dbg !942, !tbaa !525
  %tobool44.not.i = icmp eq i8 %retval.0.i335.in, 0, !dbg !998
  br i1 %tobool44.not.i, label %if.else46.i, label %if.then45.i, !dbg !999

if.then45.i:                                      ; preds = %if.else31.i300, %while.body42.i, %is_pattern.exit336
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !830, metadata !DIExpression()) #15, !dbg !1000
  call void @llvm.dbg.value(metadata i8* %call40190.i, metadata !833, metadata !DIExpression()) #15, !dbg !1000
  call void @llvm.dbg.value(metadata i8* %call40190.i, metadata !583, metadata !DIExpression()) #15, !dbg !1002
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !1002
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !1002
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1004, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call40190.i, metadata !589, metadata !DIExpression()) #15, !dbg !1002
  br label %for.cond.i.i235, !dbg !1005

for.cond.i.i235:                                  ; preds = %for.inc.i.i245, %if.then45.i
  %aep.0.i.i233 = phi i8* [ %call40190.i, %if.then45.i ], [ %incdec.ptr12.i.i244, %for.inc.i.i245 ], !dbg !1006
  %rep.0.i.i234 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then45.i ], [ %rep.1.i.i243, %for.inc.i.i245 ], !dbg !1002
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i234, metadata !590, metadata !DIExpression()) #15, !dbg !1002
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i233, metadata !589, metadata !DIExpression()) #15, !dbg !1002
  %167 = load i8, i8* %aep.0.i.i233, align 1, !dbg !1007, !tbaa !525
  switch i8 %167, label %if.else9.i.i242 [
    i8 0, label %aexpr2rexpr.exit.i249
    i8 42, label %if.then.i.i238
    i8 63, label %if.then7.i.i240
  ], !dbg !1008

if.then.i.i238:                                   ; preds = %for.cond.i.i235
  %incdec.ptr2.i.i236 = getelementptr inbounds i8, i8* %rep.0.i.i234, i64 1, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i236, metadata !590, metadata !DIExpression()) #15, !dbg !1002
  store i8 46, i8* %rep.0.i.i234, align 1, !dbg !1010, !tbaa !525
  %incdec.ptr3.i.i237 = getelementptr inbounds i8, i8* %rep.0.i.i234, i64 2, !dbg !1011
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i237, metadata !590, metadata !DIExpression()) #15, !dbg !1002
  store i8 42, i8* %incdec.ptr2.i.i236, align 1, !dbg !1012, !tbaa !525
  br label %for.inc.i.i245, !dbg !1013

if.then7.i.i240:                                  ; preds = %for.cond.i.i235
  %incdec.ptr8.i.i239 = getelementptr inbounds i8, i8* %rep.0.i.i234, i64 1, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i239, metadata !590, metadata !DIExpression()) #15, !dbg !1002
  store i8 46, i8* %rep.0.i.i234, align 1, !dbg !1015, !tbaa !525
  br label %for.inc.i.i245, !dbg !1016

if.else9.i.i242:                                  ; preds = %for.cond.i.i235
  %incdec.ptr10.i.i241 = getelementptr inbounds i8, i8* %rep.0.i.i234, i64 1, !dbg !1017
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i241, metadata !590, metadata !DIExpression()) #15, !dbg !1002
  store i8 %167, i8* %rep.0.i.i234, align 1, !dbg !1018, !tbaa !525
  br label %for.inc.i.i245

for.inc.i.i245:                                   ; preds = %if.else9.i.i242, %if.then7.i.i240, %if.then.i.i238
  %rep.1.i.i243 = phi i8* [ %incdec.ptr3.i.i237, %if.then.i.i238 ], [ %incdec.ptr8.i.i239, %if.then7.i.i240 ], [ %incdec.ptr10.i.i241, %if.else9.i.i242 ], !dbg !1019
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i243, metadata !590, metadata !DIExpression()) #15, !dbg !1002
  %incdec.ptr12.i.i244 = getelementptr inbounds i8, i8* %aep.0.i.i233, i64 1, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i244, metadata !589, metadata !DIExpression()) #15, !dbg !1002
  br label %for.cond.i.i235, !dbg !1021, !llvm.loop !1022

aexpr2rexpr.exit.i249:                            ; preds = %for.cond.i.i235
  %incdec.ptr13.i.i246 = getelementptr inbounds i8, i8* %rep.0.i.i234, i64 1, !dbg !1024
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i246, metadata !590, metadata !DIExpression()) #15, !dbg !1002
  store i8 36, i8* %rep.0.i.i234, align 1, !dbg !1025, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i246, align 1, !dbg !1026, !tbaa !525
  %call.i247 = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1027
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !835, metadata !DIExpression()) #15, !dbg !1000
  %sp.020.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1028, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.020.i, metadata !835, metadata !DIExpression()) #15, !dbg !1000
  %tobool.not21.i = icmp eq %struct.strand_t* %sp.020.i, null, !dbg !1029
  br i1 %tobool.not21.i, label %if.end47.i, label %for.body.i253, !dbg !1029

for.body.i253:                                    ; preds = %aexpr2rexpr.exit.i249, %for.inc6.i
  %sp.022.i = phi %struct.strand_t* [ %sp.0.i267, %for.inc6.i ], [ %sp.020.i, %aexpr2rexpr.exit.i249 ]
  %s_attr.i250 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i, i64 0, i32 2, !dbg !1030
  %168 = load i32, i32* %s_attr.i250, align 4, !dbg !1030, !tbaa !290
  %and.i251 = and i32 %168, 1, !dbg !1031
  %tobool1.not.i252 = icmp eq i32 %and.i251, 0, !dbg !1031
  br i1 %tobool1.not.i252, label %for.inc6.i, label %for.cond2.preheader.i256, !dbg !1032

for.cond2.preheader.i256:                         ; preds = %for.body.i253
  %s_nresidues.i254 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i, i64 0, i32 5
  %s_residues.i255 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i, i64 0, i32 7
  call void @llvm.dbg.value(metadata i32 0, metadata !834, metadata !DIExpression()) #15, !dbg !1000
  %169 = load i32, i32* %s_nresidues.i254, align 8, !dbg !1033, !tbaa !295
  %cmp18.i = icmp sgt i32 %169, 0, !dbg !1034
  br i1 %cmp18.i, label %for.body3.i265, label %for.inc6.i, !dbg !1035

for.body3.i265:                                   ; preds = %for.cond2.preheader.i256, %for.body3.i265
  %indvars.iv.i257 = phi i64 [ %indvars.iv.next.i263, %for.body3.i265 ], [ 0, %for.cond2.preheader.i256 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i257, metadata !834, metadata !DIExpression()) #15, !dbg !1000
  %170 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i255, align 8, !dbg !1036, !tbaa !301
  %arrayidx.i258 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %170, i64 %indvars.iv.i257, !dbg !1037
  %171 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i258, align 8, !dbg !1037, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %171, metadata !836, metadata !DIExpression()) #15, !dbg !1000
  %r_resname.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %171, i64 0, i32 4, !dbg !1038
  %172 = load i8*, i8** %r_resname.i, align 8, !dbg !1038, !tbaa !884
  %call4.i = tail call i32 @step(i8* noundef %172, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1039
  %tobool5.not.i259 = icmp ne i32 %call4.i, 0, !dbg !1039
  %cond.i260 = zext i1 %tobool5.not.i259 to i32, !dbg !1039
  %r_attr.i261 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %171, i64 0, i32 6, !dbg !1040
  %173 = load i32, i32* %r_attr.i261, align 8, !dbg !1041, !tbaa !306
  %or.i262 = or i32 %173, %cond.i260, !dbg !1041
  store i32 %or.i262, i32* %r_attr.i261, align 8, !dbg !1041, !tbaa !306
  %indvars.iv.next.i263 = add nuw nsw i64 %indvars.iv.i257, 1, !dbg !1042
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i263, metadata !834, metadata !DIExpression()) #15, !dbg !1000
  %174 = load i32, i32* %s_nresidues.i254, align 8, !dbg !1033, !tbaa !295
  %175 = sext i32 %174 to i64, !dbg !1034
  %cmp.i264 = icmp slt i64 %indvars.iv.next.i263, %175, !dbg !1034
  br i1 %cmp.i264, label %for.body3.i265, label %for.inc6.i, !dbg !1035, !llvm.loop !1043

for.inc6.i:                                       ; preds = %for.body3.i265, %for.cond2.preheader.i256, %for.body.i253
  %s_next.i266 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i, i64 0, i32 4, !dbg !1045
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !835, metadata !DIExpression()) #15, !dbg !1000
  %sp.0.i267 = load %struct.strand_t*, %struct.strand_t** %s_next.i266, align 8, !dbg !1028, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i267, metadata !835, metadata !DIExpression()) #15, !dbg !1000
  %tobool.not.i268 = icmp eq %struct.strand_t* %sp.0.i267, null, !dbg !1029
  br i1 %tobool.not.i268, label %if.end47.i, label %for.body.i253, !dbg !1029, !llvm.loop !1046

if.else46.i:                                      ; preds = %is_pattern.exit336, %if.else64.i321.if.else46.ithread-pre-split_crit_edge, %if.then63.i317, %if.then21.i289, %if.then30.i296
  %176 = phi i32 [ 1, %if.then63.i317 ], [ %sub.i282, %if.then21.i289 ], [ %sub.i282, %if.then30.i296 ], [ 1, %if.else64.i321.if.else46.ithread-pre-split_crit_edge ], [ %166, %is_pattern.exit336 ], !dbg !1048
  %177 = phi i32 [ -1, %if.then63.i317 ], [ %sub.i282, %if.then21.i289 ], [ -1, %if.then30.i296 ], [ %.pr.pre, %if.else64.i321.if.else46.ithread-pre-split_crit_edge ], [ %storemerge467, %is_pattern.exit336 ], !dbg !989
  call void @llvm.dbg.value(metadata i32 %176, metadata !532, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32 %177, metadata !533, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !896, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %176, metadata !899, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %177, metadata !900, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !903, metadata !DIExpression()) #15, !dbg !1049
  %sp.029.i90.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1051, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.029.i90.i, metadata !903, metadata !DIExpression()) #15, !dbg !1049
  %tobool.not30.i91.i = icmp eq %struct.strand_t* %sp.029.i90.i, null, !dbg !1052
  br i1 %tobool.not30.i91.i, label %if.end47.i, label %for.body.lr.ph.i93.i, !dbg !1052

for.body.lr.ph.i93.i:                             ; preds = %if.else46.i
  %cmp.i92.i = icmp eq i32 %177, -1
  br i1 %cmp.i92.i, label %for.body.us.preheader.i95.i, label %for.body.preheader.i94.i, !dbg !1053

for.body.preheader.i94.i:                         ; preds = %for.body.lr.ph.i93.i
  %178 = sext i32 %177 to i64, !dbg !1052
  %179 = sext i32 %176 to i64, !dbg !1052
  br label %for.body.i125.i, !dbg !1052

for.body.us.preheader.i95.i:                      ; preds = %for.body.lr.ph.i93.i
  %180 = sext i32 %176 to i64, !dbg !1052
  br label %for.body.us.i100.i, !dbg !1052

for.body.us.i100.i:                               ; preds = %for.inc11.us.i120.i, %for.body.us.preheader.i95.i
  %sp.031.us.i96.i = phi %struct.strand_t* [ %sp.0.us.i118.i, %for.inc11.us.i120.i ], [ %sp.029.i90.i, %for.body.us.preheader.i95.i ]
  %s_attr.us.i97.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i96.i, i64 0, i32 2, !dbg !1054
  %181 = load i32, i32* %s_attr.us.i97.i, align 4, !dbg !1054, !tbaa !290
  %and.us.i98.i = and i32 %181, 1, !dbg !1055
  %tobool1.not.us.i99.i = icmp eq i32 %and.us.i98.i, 0, !dbg !1055
  br i1 %tobool1.not.us.i99.i, label %for.inc11.us.i120.i, label %if.then.us.i104.i, !dbg !1056

if.then.us.i104.i:                                ; preds = %for.body.us.i100.i
  %s_nresidues.us.i101.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i96.i, i64 0, i32 5, !dbg !1057
  %182 = load i32, i32* %s_nresidues.us.i101.i, align 8, !dbg !1057, !tbaa !295
  call void @llvm.dbg.value(metadata i32 undef, metadata !902, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata i32 0, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  %s_residues.us.i102.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i96.i, i64 0, i32 7
  %cmp427.us.i103.i = icmp sgt i32 %182, 0, !dbg !1058
  br i1 %cmp427.us.i103.i, label %for.body5.us.preheader.i106.i, label %for.inc11.us.i120.i, !dbg !1059

for.body5.us.preheader.i106.i:                    ; preds = %if.then.us.i104.i
  %wide.trip.count37.i105.i = zext i32 %182 to i64, !dbg !1058
  %xtraiter588 = and i64 %wide.trip.count37.i105.i, 1, !dbg !1059
  %183 = icmp eq i32 %182, 1, !dbg !1059
  br i1 %183, label %for.inc11.us.i120.i.loopexit.unr-lcssa, label %for.body5.us.preheader.i106.i.new, !dbg !1059

for.body5.us.preheader.i106.i.new:                ; preds = %for.body5.us.preheader.i106.i
  %unroll_iter591 = and i64 %wide.trip.count37.i105.i, 4294967294, !dbg !1059
  br label %for.body5.us.i110.i, !dbg !1059

for.body5.us.i110.i:                              ; preds = %for.inc.us.i116.i.1, %for.body5.us.preheader.i106.i.new
  %indvars.iv34.i107.i = phi i64 [ 0, %for.body5.us.preheader.i106.i.new ], [ %indvars.iv.next35.i108.i.1, %for.inc.us.i116.i.1 ]
  %niter592 = phi i64 [ 0, %for.body5.us.preheader.i106.i.new ], [ %niter592.next.1, %for.inc.us.i116.i.1 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv34.i107.i, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %indvars.iv.next35.i108.i = or i64 %indvars.iv34.i107.i, 1, !dbg !1060
  %cmp6.not.us.not.i109.i = icmp slt i64 %indvars.iv.next35.i108.i, %180, !dbg !1061
  br i1 %cmp6.not.us.not.i109.i, label %for.inc.us.i116.i, label %if.then9.us.i114.i, !dbg !1062

if.then9.us.i114.i:                               ; preds = %for.body5.us.i110.i
  %184 = load %struct.residue_t**, %struct.residue_t*** %s_residues.us.i102.i, align 8, !dbg !1063, !tbaa !301
  %arrayidx.us.i111.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %184, i64 %indvars.iv34.i107.i, !dbg !1064
  %185 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i111.i, align 8, !dbg !1064, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %185, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %r_attr.us.i112.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %185, i64 0, i32 6, !dbg !1065
  %186 = load i32, i32* %r_attr.us.i112.i, align 8, !dbg !1066, !tbaa !306
  %or.us.i113.i = or i32 %186, 1, !dbg !1066
  store i32 %or.us.i113.i, i32* %r_attr.us.i112.i, align 8, !dbg !1066, !tbaa !306
  br label %for.inc.us.i116.i, !dbg !1067

for.inc.us.i116.i:                                ; preds = %if.then9.us.i114.i, %for.body5.us.i110.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i108.i, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i108.i, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %indvars.iv.next35.i108.i.1 = add nuw nsw i64 %indvars.iv34.i107.i, 2, !dbg !1060
  %cmp6.not.us.not.i109.i.1 = icmp slt i64 %indvars.iv.next35.i108.i.1, %180, !dbg !1061
  br i1 %cmp6.not.us.not.i109.i.1, label %for.inc.us.i116.i.1, label %if.then9.us.i114.i.1, !dbg !1062

if.then9.us.i114.i.1:                             ; preds = %for.inc.us.i116.i
  %187 = load %struct.residue_t**, %struct.residue_t*** %s_residues.us.i102.i, align 8, !dbg !1063, !tbaa !301
  %arrayidx.us.i111.i.1 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %187, i64 %indvars.iv.next35.i108.i, !dbg !1064
  %188 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i111.i.1, align 8, !dbg !1064, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %188, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %r_attr.us.i112.i.1 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %188, i64 0, i32 6, !dbg !1065
  %189 = load i32, i32* %r_attr.us.i112.i.1, align 8, !dbg !1066, !tbaa !306
  %or.us.i113.i.1 = or i32 %189, 1, !dbg !1066
  store i32 %or.us.i113.i.1, i32* %r_attr.us.i112.i.1, align 8, !dbg !1066, !tbaa !306
  br label %for.inc.us.i116.i.1, !dbg !1067

for.inc.us.i116.i.1:                              ; preds = %if.then9.us.i114.i.1, %for.inc.us.i116.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i108.i.1, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  %niter592.next.1 = add i64 %niter592, 2, !dbg !1059
  %niter592.ncmp.1 = icmp eq i64 %niter592.next.1, %unroll_iter591, !dbg !1059
  br i1 %niter592.ncmp.1, label %for.inc11.us.i120.i.loopexit.unr-lcssa, label %for.body5.us.i110.i, !dbg !1059, !llvm.loop !1068

for.inc11.us.i120.i.loopexit.unr-lcssa:           ; preds = %for.inc.us.i116.i.1, %for.body5.us.preheader.i106.i
  %indvars.iv34.i107.i.unr = phi i64 [ 0, %for.body5.us.preheader.i106.i ], [ %indvars.iv.next35.i108.i.1, %for.inc.us.i116.i.1 ]
  %lcmp.mod590.not = icmp eq i64 %xtraiter588, 0, !dbg !1062
  %indvars.iv.next35.i108.i.epil = add nuw nsw i64 %indvars.iv34.i107.i.unr, 1
  %cmp6.not.us.not.i109.i.epil = icmp slt i64 %indvars.iv.next35.i108.i.epil, %180
  %or.cond622 = select i1 %lcmp.mod590.not, i1 true, i1 %cmp6.not.us.not.i109.i.epil, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %indvars.iv34.i107.i.unr, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  br i1 %or.cond622, label %for.inc11.us.i120.i, label %if.then9.us.i114.i.epil, !dbg !1062

if.then9.us.i114.i.epil:                          ; preds = %for.inc11.us.i120.i.loopexit.unr-lcssa
  %190 = load %struct.residue_t**, %struct.residue_t*** %s_residues.us.i102.i, align 8, !dbg !1063, !tbaa !301
  %arrayidx.us.i111.i.epil = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %190, i64 %indvars.iv34.i107.i.unr, !dbg !1064
  %191 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i111.i.epil, align 8, !dbg !1064, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %191, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %r_attr.us.i112.i.epil = getelementptr inbounds %struct.residue_t, %struct.residue_t* %191, i64 0, i32 6, !dbg !1065
  %192 = load i32, i32* %r_attr.us.i112.i.epil, align 8, !dbg !1066, !tbaa !306
  %or.us.i113.i.epil = or i32 %192, 1, !dbg !1066
  store i32 %or.us.i113.i.epil, i32* %r_attr.us.i112.i.epil, align 8, !dbg !1066, !tbaa !306
  br label %for.inc11.us.i120.i, !dbg !1067

for.inc11.us.i120.i:                              ; preds = %for.inc11.us.i120.i.loopexit.unr-lcssa, %if.then9.us.i114.i.epil, %if.then.us.i104.i, %for.body.us.i100.i
  %s_next.us.i117.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i96.i, i64 0, i32 4, !dbg !1070
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !903, metadata !DIExpression()) #15, !dbg !1049
  %sp.0.us.i118.i = load %struct.strand_t*, %struct.strand_t** %s_next.us.i117.i, align 8, !dbg !1051, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.us.i118.i, metadata !903, metadata !DIExpression()) #15, !dbg !1049
  %tobool.not.us.i119.i = icmp eq %struct.strand_t* %sp.0.us.i118.i, null, !dbg !1052
  br i1 %tobool.not.us.i119.i, label %if.end47.i, label %for.body.us.i100.i, !dbg !1052, !llvm.loop !1071

for.body.i125.i:                                  ; preds = %for.inc11.i147.i, %for.body.preheader.i94.i
  %sp.031.i121.i = phi %struct.strand_t* [ %sp.0.i145.i, %for.inc11.i147.i ], [ %sp.029.i90.i, %for.body.preheader.i94.i ]
  %s_attr.i122.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i121.i, i64 0, i32 2, !dbg !1054
  %193 = load i32, i32* %s_attr.i122.i, align 4, !dbg !1054, !tbaa !290
  %and.i123.i = and i32 %193, 1, !dbg !1055
  %tobool1.not.i124.i = icmp eq i32 %and.i123.i, 0, !dbg !1055
  br i1 %tobool1.not.i124.i, label %for.inc11.i147.i, label %if.then.i129.i, !dbg !1056

if.then.i129.i:                                   ; preds = %for.body.i125.i
  call void @llvm.dbg.value(metadata i32 %177, metadata !902, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata i32 0, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  %s_nresidues3.i126.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i121.i, i64 0, i32 5
  %194 = load i32, i32* %s_nresidues3.i126.i, align 8, !tbaa !295
  %s_residues.i127.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i121.i, i64 0, i32 7
  %cmp427.i128.i = icmp sgt i32 %194, 0, !dbg !1058
  br i1 %cmp427.i128.i, label %for.body5.preheader.i131.i, label %for.inc11.i147.i, !dbg !1059

for.body5.preheader.i131.i:                       ; preds = %if.then.i129.i
  %wide.trip.count.i130.i = zext i32 %194 to i64, !dbg !1058
  %xtraiter583 = and i64 %wide.trip.count.i130.i, 1, !dbg !1059
  %195 = icmp eq i32 %194, 1, !dbg !1059
  br i1 %195, label %for.inc11.i147.i.loopexit.unr-lcssa, label %for.body5.preheader.i131.i.new, !dbg !1059

for.body5.preheader.i131.i.new:                   ; preds = %for.body5.preheader.i131.i
  %unroll_iter586 = and i64 %wide.trip.count.i130.i, 4294967294, !dbg !1059
  br label %for.body5.i137.i, !dbg !1059

for.body5.i137.i:                                 ; preds = %for.inc.i143.i.1, %for.body5.preheader.i131.i.new
  %indvars.iv.i132.i = phi i64 [ 0, %for.body5.preheader.i131.i.new ], [ %indvars.iv.next.i133.i.1, %for.inc.i143.i.1 ]
  %niter587 = phi i64 [ 0, %for.body5.preheader.i131.i.new ], [ %niter587.next.1, %for.inc.i143.i.1 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i132.i, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %indvars.iv.next.i133.i = or i64 %indvars.iv.i132.i, 1, !dbg !1060
  %cmp6.not.i134.i = icmp sge i64 %indvars.iv.next.i133.i, %179, !dbg !1061
  %cmp8.not.not.i135.i = icmp slt i64 %indvars.iv.i132.i, %178
  %or.cond.i136.i = and i1 %cmp8.not.not.i135.i, %cmp6.not.i134.i, !dbg !1062
  br i1 %or.cond.i136.i, label %if.then9.i141.i, label %for.inc.i143.i, !dbg !1062

if.then9.i141.i:                                  ; preds = %for.body5.i137.i
  %196 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i127.i, align 8, !dbg !1063, !tbaa !301
  %arrayidx.i138.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %196, i64 %indvars.iv.i132.i, !dbg !1064
  %197 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i138.i, align 8, !dbg !1064, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %197, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %r_attr.i139.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %197, i64 0, i32 6, !dbg !1065
  %198 = load i32, i32* %r_attr.i139.i, align 8, !dbg !1066, !tbaa !306
  %or.i140.i = or i32 %198, 1, !dbg !1066
  store i32 %or.i140.i, i32* %r_attr.i139.i, align 8, !dbg !1066, !tbaa !306
  br label %for.inc.i143.i, !dbg !1067

for.inc.i143.i:                                   ; preds = %if.then9.i141.i, %for.body5.i137.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i133.i, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i133.i, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %indvars.iv.next.i133.i.1 = add nuw nsw i64 %indvars.iv.i132.i, 2, !dbg !1060
  %cmp6.not.i134.i.1 = icmp sge i64 %indvars.iv.next.i133.i.1, %179, !dbg !1061
  %cmp8.not.not.i135.i.1 = icmp slt i64 %indvars.iv.next.i133.i, %178
  %or.cond.i136.i.1 = and i1 %cmp8.not.not.i135.i.1, %cmp6.not.i134.i.1, !dbg !1062
  br i1 %or.cond.i136.i.1, label %if.then9.i141.i.1, label %for.inc.i143.i.1, !dbg !1062

if.then9.i141.i.1:                                ; preds = %for.inc.i143.i
  %199 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i127.i, align 8, !dbg !1063, !tbaa !301
  %arrayidx.i138.i.1 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %199, i64 %indvars.iv.next.i133.i, !dbg !1064
  %200 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i138.i.1, align 8, !dbg !1064, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %200, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %r_attr.i139.i.1 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %200, i64 0, i32 6, !dbg !1065
  %201 = load i32, i32* %r_attr.i139.i.1, align 8, !dbg !1066, !tbaa !306
  %or.i140.i.1 = or i32 %201, 1, !dbg !1066
  store i32 %or.i140.i.1, i32* %r_attr.i139.i.1, align 8, !dbg !1066, !tbaa !306
  br label %for.inc.i143.i.1, !dbg !1067

for.inc.i143.i.1:                                 ; preds = %if.then9.i141.i.1, %for.inc.i143.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i133.i.1, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  %niter587.next.1 = add i64 %niter587, 2, !dbg !1059
  %niter587.ncmp.1 = icmp eq i64 %niter587.next.1, %unroll_iter586, !dbg !1059
  br i1 %niter587.ncmp.1, label %for.inc11.i147.i.loopexit.unr-lcssa, label %for.body5.i137.i, !dbg !1059, !llvm.loop !1073

for.inc11.i147.i.loopexit.unr-lcssa:              ; preds = %for.inc.i143.i.1, %for.body5.preheader.i131.i
  %indvars.iv.i132.i.unr = phi i64 [ 0, %for.body5.preheader.i131.i ], [ %indvars.iv.next.i133.i.1, %for.inc.i143.i.1 ]
  %lcmp.mod585.not = icmp eq i64 %xtraiter583, 0, !dbg !1062
  br i1 %lcmp.mod585.not, label %for.inc11.i147.i, label %for.body5.i137.i.epil, !dbg !1062

for.body5.i137.i.epil:                            ; preds = %for.inc11.i147.i.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i132.i.unr, metadata !901, metadata !DIExpression()) #15, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %indvars.iv.next.i133.i.epil = add nuw nsw i64 %indvars.iv.i132.i.unr, 1, !dbg !1060
  %cmp6.not.i134.i.epil = icmp sge i64 %indvars.iv.next.i133.i.epil, %179, !dbg !1061
  %cmp8.not.not.i135.i.epil = icmp slt i64 %indvars.iv.i132.i.unr, %178
  %or.cond.i136.i.epil = and i1 %cmp8.not.not.i135.i.epil, %cmp6.not.i134.i.epil, !dbg !1062
  br i1 %or.cond.i136.i.epil, label %if.then9.i141.i.epil, label %for.inc11.i147.i, !dbg !1062

if.then9.i141.i.epil:                             ; preds = %for.body5.i137.i.epil
  %202 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i127.i, align 8, !dbg !1063, !tbaa !301
  %arrayidx.i138.i.epil = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %202, i64 %indvars.iv.i132.i.unr, !dbg !1064
  %203 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i138.i.epil, align 8, !dbg !1064, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %203, metadata !904, metadata !DIExpression()) #15, !dbg !1049
  %r_attr.i139.i.epil = getelementptr inbounds %struct.residue_t, %struct.residue_t* %203, i64 0, i32 6, !dbg !1065
  %204 = load i32, i32* %r_attr.i139.i.epil, align 8, !dbg !1066, !tbaa !306
  %or.i140.i.epil = or i32 %204, 1, !dbg !1066
  store i32 %or.i140.i.epil, i32* %r_attr.i139.i.epil, align 8, !dbg !1066, !tbaa !306
  br label %for.inc11.i147.i, !dbg !1067

for.inc11.i147.i:                                 ; preds = %for.inc11.i147.i.loopexit.unr-lcssa, %if.then9.i141.i.epil, %for.body5.i137.i.epil, %if.then.i129.i, %for.body.i125.i
  %s_next.i144.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i121.i, i64 0, i32 4, !dbg !1070
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !903, metadata !DIExpression()) #15, !dbg !1049
  %sp.0.i145.i = load %struct.strand_t*, %struct.strand_t** %s_next.i144.i, align 8, !dbg !1051, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i145.i, metadata !903, metadata !DIExpression()) #15, !dbg !1049
  %tobool.not.i146.i = icmp eq %struct.strand_t* %sp.0.i145.i, null, !dbg !1052
  br i1 %tobool.not.i146.i, label %if.end47.i, label %for.body.i125.i, !dbg !1052, !llvm.loop !1074

if.end47.i:                                       ; preds = %for.inc6.i, %for.inc11.i147.i, %for.inc11.us.i120.i, %aexpr2rexpr.exit.i249, %if.else46.i
  %call40.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !940
  call void @llvm.dbg.value(metadata i8* %call40.i, metadata !531, metadata !DIExpression()) #15, !dbg !534
  %tobool41.not.i = icmp eq i8* %call40.i, null, !dbg !941
  br i1 %tobool41.not.i, label %if.end50.i, label %while.body42.i, !dbg !941, !llvm.loop !1075

if.else49.i:                                      ; preds = %if.end30.i
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !896, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata i32 1, metadata !899, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata i32 -1, metadata !900, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !903, metadata !DIExpression()) #15, !dbg !1077
  %sp.029.i150.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1079, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.029.i150.i, metadata !903, metadata !DIExpression()) #15, !dbg !1077
  %tobool.not30.i151.i = icmp eq %struct.strand_t* %sp.029.i150.i, null, !dbg !1080
  br i1 %tobool.not30.i151.i, label %if.end50.i, label %for.body.us.i158.i, !dbg !1080

for.body.us.i158.i:                               ; preds = %if.else49.i, %for.inc11.us.i177.i
  %sp.031.us.i154.i = phi %struct.strand_t* [ %sp.0.us.i175.i, %for.inc11.us.i177.i ], [ %sp.029.i150.i, %if.else49.i ]
  %s_attr.us.i155.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i154.i, i64 0, i32 2, !dbg !1081
  %205 = load i32, i32* %s_attr.us.i155.i, align 4, !dbg !1081, !tbaa !290
  %and.us.i156.i = and i32 %205, 1, !dbg !1082
  %tobool1.not.us.i157.i = icmp eq i32 %and.us.i156.i, 0, !dbg !1082
  br i1 %tobool1.not.us.i157.i, label %for.inc11.us.i177.i, label %if.then.us.i162.i, !dbg !1083

if.then.us.i162.i:                                ; preds = %for.body.us.i158.i
  %s_nresidues.us.i159.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i154.i, i64 0, i32 5, !dbg !1084
  %206 = load i32, i32* %s_nresidues.us.i159.i, align 8, !dbg !1084, !tbaa !295
  call void @llvm.dbg.value(metadata i32 undef, metadata !902, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata i32 0, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  %cmp427.us.i161.i = icmp sgt i32 %206, 0, !dbg !1085
  br i1 %cmp427.us.i161.i, label %for.body5.us.preheader.i164.i, label %for.inc11.us.i177.i, !dbg !1086

for.body5.us.preheader.i164.i:                    ; preds = %if.then.us.i162.i
  %s_residues.us.i160.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i154.i, i64 0, i32 7
  %wide.trip.count37.i163.i = zext i32 %206 to i64, !dbg !1085
  %207 = load %struct.residue_t**, %struct.residue_t*** %s_residues.us.i160.i, align 8, !tbaa !301
  %208 = add nsw i64 %wide.trip.count37.i163.i, -1, !dbg !1086
  %xtraiter593 = and i64 %wide.trip.count37.i163.i, 3, !dbg !1086
  %209 = icmp ult i64 %208, 3, !dbg !1086
  br i1 %209, label %for.inc11.us.i177.i.loopexit.unr-lcssa, label %for.body5.us.preheader.i164.i.new, !dbg !1086

for.body5.us.preheader.i164.i.new:                ; preds = %for.body5.us.preheader.i164.i
  %unroll_iter596 = and i64 %wide.trip.count37.i163.i, 4294967292, !dbg !1086
  br label %for.body5.us.i167.i, !dbg !1086

for.body5.us.i167.i:                              ; preds = %for.body5.us.i167.i, %for.body5.us.preheader.i164.i.new
  %indvars.iv34.i165.i = phi i64 [ 0, %for.body5.us.preheader.i164.i.new ], [ %indvars.iv.next35.i166.i.3, %for.body5.us.i167.i ]
  %niter597 = phi i64 [ 0, %for.body5.us.preheader.i164.i.new ], [ %niter597.next.3, %for.body5.us.i167.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv34.i165.i, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1077
  %indvars.iv.next35.i166.i = or i64 %indvars.iv34.i165.i, 1, !dbg !1087
  %arrayidx.us.i168.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %207, i64 %indvars.iv34.i165.i, !dbg !1088
  %210 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i168.i, align 8, !dbg !1088, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %210, metadata !904, metadata !DIExpression()) #15, !dbg !1077
  %r_attr.us.i169.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %210, i64 0, i32 6, !dbg !1089
  %211 = load i32, i32* %r_attr.us.i169.i, align 8, !dbg !1090, !tbaa !306
  %or.us.i170.i = or i32 %211, 1, !dbg !1090
  store i32 %or.us.i170.i, i32* %r_attr.us.i169.i, align 8, !dbg !1090, !tbaa !306
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i166.i, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i166.i, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1077
  %indvars.iv.next35.i166.i.1 = or i64 %indvars.iv34.i165.i, 2, !dbg !1087
  %arrayidx.us.i168.i.1 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %207, i64 %indvars.iv.next35.i166.i, !dbg !1088
  %212 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i168.i.1, align 8, !dbg !1088, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %212, metadata !904, metadata !DIExpression()) #15, !dbg !1077
  %r_attr.us.i169.i.1 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %212, i64 0, i32 6, !dbg !1089
  %213 = load i32, i32* %r_attr.us.i169.i.1, align 8, !dbg !1090, !tbaa !306
  %or.us.i170.i.1 = or i32 %213, 1, !dbg !1090
  store i32 %or.us.i170.i.1, i32* %r_attr.us.i169.i.1, align 8, !dbg !1090, !tbaa !306
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i166.i.1, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i166.i.1, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1077
  %indvars.iv.next35.i166.i.2 = or i64 %indvars.iv34.i165.i, 3, !dbg !1087
  %arrayidx.us.i168.i.2 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %207, i64 %indvars.iv.next35.i166.i.1, !dbg !1088
  %214 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i168.i.2, align 8, !dbg !1088, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %214, metadata !904, metadata !DIExpression()) #15, !dbg !1077
  %r_attr.us.i169.i.2 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %214, i64 0, i32 6, !dbg !1089
  %215 = load i32, i32* %r_attr.us.i169.i.2, align 8, !dbg !1090, !tbaa !306
  %or.us.i170.i.2 = or i32 %215, 1, !dbg !1090
  store i32 %or.us.i170.i.2, i32* %r_attr.us.i169.i.2, align 8, !dbg !1090, !tbaa !306
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i166.i.2, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i166.i.2, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1077
  %indvars.iv.next35.i166.i.3 = add nuw nsw i64 %indvars.iv34.i165.i, 4, !dbg !1087
  %arrayidx.us.i168.i.3 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %207, i64 %indvars.iv.next35.i166.i.2, !dbg !1088
  %216 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i168.i.3, align 8, !dbg !1088, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %216, metadata !904, metadata !DIExpression()) #15, !dbg !1077
  %r_attr.us.i169.i.3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %216, i64 0, i32 6, !dbg !1089
  %217 = load i32, i32* %r_attr.us.i169.i.3, align 8, !dbg !1090, !tbaa !306
  %or.us.i170.i.3 = or i32 %217, 1, !dbg !1090
  store i32 %or.us.i170.i.3, i32* %r_attr.us.i169.i.3, align 8, !dbg !1090, !tbaa !306
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i166.i.3, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  %niter597.next.3 = add i64 %niter597, 4, !dbg !1086
  %niter597.ncmp.3 = icmp eq i64 %niter597.next.3, %unroll_iter596, !dbg !1086
  br i1 %niter597.ncmp.3, label %for.inc11.us.i177.i.loopexit.unr-lcssa, label %for.body5.us.i167.i, !dbg !1086, !llvm.loop !1091

for.inc11.us.i177.i.loopexit.unr-lcssa:           ; preds = %for.body5.us.i167.i, %for.body5.us.preheader.i164.i
  %indvars.iv34.i165.i.unr = phi i64 [ 0, %for.body5.us.preheader.i164.i ], [ %indvars.iv.next35.i166.i.3, %for.body5.us.i167.i ]
  %lcmp.mod595.not = icmp eq i64 %xtraiter593, 0, !dbg !1086
  br i1 %lcmp.mod595.not, label %for.inc11.us.i177.i, label %for.body5.us.i167.i.epil, !dbg !1086

for.body5.us.i167.i.epil:                         ; preds = %for.inc11.us.i177.i.loopexit.unr-lcssa, %for.body5.us.i167.i.epil
  %indvars.iv34.i165.i.epil = phi i64 [ %indvars.iv.next35.i166.i.epil, %for.body5.us.i167.i.epil ], [ %indvars.iv34.i165.i.unr, %for.inc11.us.i177.i.loopexit.unr-lcssa ]
  %epil.iter594 = phi i64 [ %epil.iter594.next, %for.body5.us.i167.i.epil ], [ 0, %for.inc11.us.i177.i.loopexit.unr-lcssa ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv34.i165.i.epil, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !904, metadata !DIExpression()) #15, !dbg !1077
  %indvars.iv.next35.i166.i.epil = add nuw nsw i64 %indvars.iv34.i165.i.epil, 1, !dbg !1087
  %arrayidx.us.i168.i.epil = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %207, i64 %indvars.iv34.i165.i.epil, !dbg !1088
  %218 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i168.i.epil, align 8, !dbg !1088, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %218, metadata !904, metadata !DIExpression()) #15, !dbg !1077
  %r_attr.us.i169.i.epil = getelementptr inbounds %struct.residue_t, %struct.residue_t* %218, i64 0, i32 6, !dbg !1089
  %219 = load i32, i32* %r_attr.us.i169.i.epil, align 8, !dbg !1090, !tbaa !306
  %or.us.i170.i.epil = or i32 %219, 1, !dbg !1090
  store i32 %or.us.i170.i.epil, i32* %r_attr.us.i169.i.epil, align 8, !dbg !1090, !tbaa !306
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i166.i.epil, metadata !901, metadata !DIExpression()) #15, !dbg !1077
  %epil.iter594.next = add i64 %epil.iter594, 1, !dbg !1086
  %epil.iter594.cmp.not = icmp eq i64 %epil.iter594.next, %xtraiter593, !dbg !1086
  br i1 %epil.iter594.cmp.not, label %for.inc11.us.i177.i, label %for.body5.us.i167.i.epil, !dbg !1086, !llvm.loop !1093

for.inc11.us.i177.i:                              ; preds = %for.inc11.us.i177.i.loopexit.unr-lcssa, %for.body5.us.i167.i.epil, %if.then.us.i162.i, %for.body.us.i158.i
  %s_next.us.i174.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i154.i, i64 0, i32 4, !dbg !1094
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !903, metadata !DIExpression()) #15, !dbg !1077
  %sp.0.us.i175.i = load %struct.strand_t*, %struct.strand_t** %s_next.us.i174.i, align 8, !dbg !1079, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.us.i175.i, metadata !903, metadata !DIExpression()) #15, !dbg !1077
  %tobool.not.us.i176.i = icmp eq %struct.strand_t* %sp.0.us.i175.i, null, !dbg !1080
  br i1 %tobool.not.us.i176.i, label %if.end50.i, label %for.body.us.i158.i, !dbg !1080, !llvm.loop !1095

if.end50.i:                                       ; preds = %if.end47.i, %for.inc11.us.i177.i, %if.else49.i, %if.end38.i
  %220 = load i8*, i8** @apart, align 8, !dbg !1097, !tbaa !281
  %tobool51.not.i = icmp eq i8* %220, null, !dbg !1097
  br i1 %tobool51.not.i, label %if.else71.i, label %if.then52.i, !dbg !1099

if.then52.i:                                      ; preds = %if.end50.i
  %call53.i = tail call i8* @strtok(i8* noundef nonnull %220, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %call53.i, metadata !531, metadata !DIExpression()) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !532, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !533, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  %call54.i = call fastcc i32 @is_pattern(i8* noundef %call53.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1102
  %tobool55.not.i = icmp eq i32 %call54.i, 0, !dbg !1102
  br i1 %tobool55.not.i, label %if.else57.i, label %if.then56.i, !dbg !1104

if.then56.i:                                      ; preds = %if.then52.i
  tail call fastcc void @match_atom_pat(%struct.molecule_t* noundef %mol, i8* noundef %call53.i) #15, !dbg !1105
  br label %if.end59.i, !dbg !1105

if.else57.i:                                      ; preds = %if.then52.i
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1106, !tbaa !281
  %222 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %221) #17, !dbg !1108
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else57.i, %if.then56.i
  %call61191.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %call61191.i, metadata !531, metadata !DIExpression()) #15, !dbg !534
  %tobool62.not192.i = icmp eq i8* %call61191.i, null, !dbg !1110
  br i1 %tobool62.not192.i, label %eval_1_aexpr.exit, label %while.body63.i.preheader, !dbg !1110

while.body63.i.preheader:                         ; preds = %if.end59.i
  %call.i224 = tail call i16** @__ctype_b_loc() #16, !dbg !371
  br label %while.body63.i, !dbg !1110

while.body63.i:                                   ; preds = %while.body63.i.preheader, %if.end69.i
  %call61193.i = phi i8* [ %call61.i, %if.end69.i ], [ %call61191.i, %while.body63.i.preheader ]
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !532, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !533, metadata !DIExpression(DW_OP_deref)) #15, !dbg !534
  call void @llvm.dbg.value(metadata i8* %call61193.i, metadata !672, metadata !DIExpression()) #15, !dbg !1111
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !678, metadata !DIExpression()) #15, !dbg !1111
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !679, metadata !DIExpression()) #15, !dbg !1111
  %223 = load i16*, i16** %call.i224, align 8, !dbg !1115, !tbaa !281
  %224 = load i8, i8* %call61193.i, align 1, !dbg !1115, !tbaa !525
  %idxprom.i = sext i8 %224 to i64, !dbg !1115
  %arrayidx.i225 = getelementptr inbounds i16, i16* %223, i64 %idxprom.i, !dbg !1115
  %225 = load i16, i16* %arrayidx.i225, align 2, !dbg !1115, !tbaa !688
  %226 = and i16 %225, 2048, !dbg !1115
  %tobool.not.i226 = icmp ne i16 %226, 0, !dbg !1115
  %cmp.not.i = icmp eq i8 %224, 45
  %or.cond.i = select i1 %tobool.not.i226, i1 true, i1 %cmp.not.i, !dbg !1116
  br i1 %or.cond.i, label %if.end.i227, label %if.then66.i, !dbg !1116

if.end.i227:                                      ; preds = %while.body63.i
  %tobool10.not.i = icmp eq i16 %226, 0, !dbg !1117
  br i1 %tobool10.not.i, label %if.else59.i, label %for.body.i230, !dbg !1118

for.body.i230:                                    ; preds = %if.end.i227, %for.body.i230
  %227 = phi i8 [ %228, %for.body.i230 ], [ %224, %if.end.i227 ]
  %ip.0133.i = phi i8* [ %incdec.ptr.i, %for.body.i230 ], [ %call61193.i, %if.end.i227 ]
  %val.0132.i = phi i32 [ %sub.i, %for.body.i230 ], [ 0, %if.end.i227 ]
  call void @llvm.dbg.value(metadata i8* %ip.0133.i, metadata !681, metadata !DIExpression()) #15, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %val.0132.i, metadata !680, metadata !DIExpression()) #15, !dbg !1111
  %conv13.i = sext i8 %227 to i32, !dbg !1119
  %mul.i = mul nsw i32 %val.0132.i, 10, !dbg !1120
  %add.i228 = add nsw i32 %conv13.i, -48, !dbg !1121
  %sub.i = add i32 %add.i228, %mul.i, !dbg !1122
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !680, metadata !DIExpression()) #15, !dbg !1111
  %incdec.ptr.i = getelementptr inbounds i8, i8* %ip.0133.i, i64 1, !dbg !1123
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, metadata !681, metadata !DIExpression()) #15, !dbg !1111
  %228 = load i8, i8* %incdec.ptr.i, align 1, !dbg !1119, !tbaa !525
  %idxprom14.i = sext i8 %228 to i64, !dbg !1119
  %arrayidx15.i = getelementptr inbounds i16, i16* %223, i64 %idxprom14.i, !dbg !1119
  %229 = load i16, i16* %arrayidx15.i, align 2, !dbg !1119, !tbaa !688
  %230 = and i16 %229, 2048, !dbg !1119
  %tobool18.not.i229 = icmp eq i16 %230, 0, !dbg !1124
  br i1 %tobool18.not.i229, label %for.end.i, label %for.body.i230, !dbg !1124, !llvm.loop !1125

for.end.i:                                        ; preds = %for.body.i230
  store i32 %sub.i, i32* %lo.i, align 4, !dbg !1127, !tbaa !637
  switch i8 %228, label %if.end28.i231 [
    i8 0, label %if.then21.i
    i8 45, label %if.then25.i
  ], !dbg !1128

if.then21.i:                                      ; preds = %for.end.i
  store i32 %sub.i, i32* %hi.i, align 4, !dbg !1129, !tbaa !637
  br label %if.else67.i, !dbg !1130

if.then25.i:                                      ; preds = %for.end.i
  %incdec.ptr26.i = getelementptr inbounds i8, i8* %ip.0133.i, i64 2, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %incdec.ptr26.i, metadata !681, metadata !DIExpression()) #15, !dbg !1111
  %.pr.i = load i8, i8* %incdec.ptr26.i, align 1, !dbg !1132, !tbaa !525
  br label %if.end28.i231, !dbg !1133

if.end28.i231:                                    ; preds = %if.then25.i, %for.end.i
  %231 = phi i8 [ %228, %for.end.i ], [ %.pr.i, %if.then25.i ], !dbg !1132
  %ip.1.i = phi i8* [ %incdec.ptr.i, %for.end.i ], [ %incdec.ptr26.i, %if.then25.i ], !dbg !1134
  call void @llvm.dbg.value(metadata i8* %ip.1.i, metadata !681, metadata !DIExpression()) #15, !dbg !1111
  %tobool29.not.i = icmp eq i8 %231, 0, !dbg !1132
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else31.i, !dbg !1135

if.then30.i:                                      ; preds = %if.end28.i231
  store i32 -1, i32* %hi.i, align 4, !dbg !1136, !tbaa !637
  br label %if.else67.i, !dbg !1137

if.else31.i:                                      ; preds = %if.end28.i231
  %idxprom34.i = sext i8 %231 to i64, !dbg !1138
  %arrayidx35.i = getelementptr inbounds i16, i16* %223, i64 %idxprom34.i, !dbg !1138
  %232 = load i16, i16* %arrayidx35.i, align 2, !dbg !1138, !tbaa !688
  %233 = and i16 %232, 2048, !dbg !1138
  %tobool38.not.i = icmp eq i16 %233, 0, !dbg !1138
  br i1 %tobool38.not.i, label %if.then66.i, label %for.body50.i, !dbg !1139

for.body50.i:                                     ; preds = %if.else31.i, %for.body50.i
  %234 = phi i8 [ %235, %for.body50.i ], [ %231, %if.else31.i ]
  %ip.2139.i = phi i8* [ %incdec.ptr56.i, %for.body50.i ], [ %ip.1.i, %if.else31.i ]
  %val.1138.i = phi i32 [ %sub54.i, %for.body50.i ], [ 0, %if.else31.i ]
  call void @llvm.dbg.value(metadata i8* %ip.2139.i, metadata !681, metadata !DIExpression()) #15, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %val.1138.i, metadata !680, metadata !DIExpression()) #15, !dbg !1111
  %conv44.i = sext i8 %234 to i32, !dbg !1140
  %mul51.i = mul nsw i32 %val.1138.i, 10, !dbg !1141
  %add53.i = add nsw i32 %conv44.i, -48, !dbg !1142
  %sub54.i = add i32 %add53.i, %mul51.i, !dbg !1143
  call void @llvm.dbg.value(metadata i32 %sub54.i, metadata !680, metadata !DIExpression()) #15, !dbg !1111
  %incdec.ptr56.i = getelementptr inbounds i8, i8* %ip.2139.i, i64 1, !dbg !1144
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56.i, metadata !681, metadata !DIExpression()) #15, !dbg !1111
  %235 = load i8, i8* %incdec.ptr56.i, align 1, !dbg !1140, !tbaa !525
  %idxprom45.i = sext i8 %235 to i64, !dbg !1140
  %arrayidx46.i = getelementptr inbounds i16, i16* %223, i64 %idxprom45.i, !dbg !1140
  %236 = load i16, i16* %arrayidx46.i, align 2, !dbg !1140, !tbaa !688
  %237 = and i16 %236, 2048, !dbg !1140
  %tobool49.not.i = icmp eq i16 %237, 0, !dbg !1145
  br i1 %tobool49.not.i, label %is_pattern.exit, label %for.body50.i, !dbg !1145, !llvm.loop !1146

if.else59.i:                                      ; preds = %if.end.i227
  store i32 1, i32* %lo.i, align 4, !dbg !1148, !tbaa !637
  %arrayidx60.i = getelementptr inbounds i8, i8* %call61193.i, i64 1, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %arrayidx60.i, metadata !681, metadata !DIExpression()) #15, !dbg !1111
  %238 = load i8, i8* %arrayidx60.i, align 1, !dbg !1150, !tbaa !525
  %tobool62.not.i232 = icmp eq i8 %238, 0, !dbg !1150
  br i1 %tobool62.not.i232, label %if.then63.i, label %if.else64.i, !dbg !1151

if.then63.i:                                      ; preds = %if.else59.i
  store i32 -1, i32* %hi.i, align 4, !dbg !1152, !tbaa !637
  br label %if.else67.i, !dbg !1153

if.else64.i:                                      ; preds = %if.else59.i
  %idxprom67.i = sext i8 %238 to i64, !dbg !1154
  %arrayidx68.i = getelementptr inbounds i16, i16* %223, i64 %idxprom67.i, !dbg !1154
  %239 = load i16, i16* %arrayidx68.i, align 2, !dbg !1154, !tbaa !688
  %240 = and i16 %239, 2048, !dbg !1154
  %tobool71.not.i = icmp eq i16 %240, 0, !dbg !1154
  br i1 %tobool71.not.i, label %if.else67.i, label %for.body81.i, !dbg !1155

for.body81.i:                                     ; preds = %if.else64.i, %for.body81.i
  %241 = phi i8 [ %242, %for.body81.i ], [ %238, %if.else64.i ]
  %ip.3146.i = phi i8* [ %incdec.ptr87.i, %for.body81.i ], [ %arrayidx60.i, %if.else64.i ]
  %val.2145.i = phi i32 [ %sub85.i, %for.body81.i ], [ 0, %if.else64.i ]
  call void @llvm.dbg.value(metadata i8* %ip.3146.i, metadata !681, metadata !DIExpression()) #15, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %val.2145.i, metadata !680, metadata !DIExpression()) #15, !dbg !1111
  %conv75.i = sext i8 %241 to i32, !dbg !1156
  %mul82.i = mul nsw i32 %val.2145.i, 10, !dbg !1157
  %add84.i = add nsw i32 %conv75.i, -48, !dbg !1158
  %sub85.i = add i32 %add84.i, %mul82.i, !dbg !1159
  call void @llvm.dbg.value(metadata i32 %sub85.i, metadata !680, metadata !DIExpression()) #15, !dbg !1111
  %incdec.ptr87.i = getelementptr inbounds i8, i8* %ip.3146.i, i64 1, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %incdec.ptr87.i, metadata !681, metadata !DIExpression()) #15, !dbg !1111
  %242 = load i8, i8* %incdec.ptr87.i, align 1, !dbg !1156, !tbaa !525
  %idxprom76.i = sext i8 %242 to i64, !dbg !1156
  %arrayidx77.i = getelementptr inbounds i16, i16* %223, i64 %idxprom76.i, !dbg !1156
  %243 = load i16, i16* %arrayidx77.i, align 2, !dbg !1156, !tbaa !688
  %244 = and i16 %243, 2048, !dbg !1156
  %tobool80.not.i = icmp eq i16 %244, 0, !dbg !1161
  br i1 %tobool80.not.i, label %is_pattern.exit, label %for.body81.i, !dbg !1161, !llvm.loop !1162

is_pattern.exit:                                  ; preds = %for.body50.i, %for.body81.i
  %storemerge = phi i32 [ %sub85.i, %for.body81.i ], [ %sub54.i, %for.body50.i ], !dbg !1111
  %retval.0.i.in.in = phi i8* [ %incdec.ptr87.i, %for.body81.i ], [ %incdec.ptr56.i, %for.body50.i ]
  store i32 %storemerge, i32* %hi.i, align 4, !dbg !1111, !tbaa !637
  %retval.0.i.in = load i8, i8* %retval.0.i.in.in, align 1, !dbg !1111, !tbaa !525
  %tobool65.not.i = icmp eq i8 %retval.0.i.in, 0, !dbg !1164
  br i1 %tobool65.not.i, label %if.else67.i, label %if.then66.i, !dbg !1165

if.then66.i:                                      ; preds = %if.else31.i, %while.body63.i, %is_pattern.exit
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1166, metadata !DIExpression()) #15, !dbg !1175
  call void @llvm.dbg.value(metadata i8* %call61193.i, metadata !1169, metadata !DIExpression()) #15, !dbg !1175
  call void @llvm.dbg.value(metadata i8* %call61193.i, metadata !583, metadata !DIExpression()) #15, !dbg !1177
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !1177
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !1177
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1179, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call61193.i, metadata !589, metadata !DIExpression()) #15, !dbg !1177
  br label %for.cond.i.i, !dbg !1180

for.cond.i.i:                                     ; preds = %for.inc.i.i204, %if.then66.i
  %aep.0.i.i = phi i8* [ %call61193.i, %if.then66.i ], [ %incdec.ptr12.i.i, %for.inc.i.i204 ], !dbg !1181
  %rep.0.i.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then66.i ], [ %rep.1.i.i, %for.inc.i.i204 ], !dbg !1177
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1177
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i, metadata !589, metadata !DIExpression()) #15, !dbg !1177
  %245 = load i8, i8* %aep.0.i.i, align 1, !dbg !1182, !tbaa !525
  switch i8 %245, label %if.else9.i.i [
    i8 0, label %aexpr2rexpr.exit.i
    i8 42, label %if.then.i.i203
    i8 63, label %if.then7.i.i
  ], !dbg !1183

if.then.i.i203:                                   ; preds = %for.cond.i.i
  %incdec.ptr2.i.i = getelementptr inbounds i8, i8* %rep.0.i.i, i64 1, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1177
  store i8 46, i8* %rep.0.i.i, align 1, !dbg !1185, !tbaa !525
  %incdec.ptr3.i.i = getelementptr inbounds i8, i8* %rep.0.i.i, i64 2, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1177
  store i8 42, i8* %incdec.ptr2.i.i, align 1, !dbg !1187, !tbaa !525
  br label %for.inc.i.i204, !dbg !1188

if.then7.i.i:                                     ; preds = %for.cond.i.i
  %incdec.ptr8.i.i = getelementptr inbounds i8, i8* %rep.0.i.i, i64 1, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1177
  store i8 46, i8* %rep.0.i.i, align 1, !dbg !1190, !tbaa !525
  br label %for.inc.i.i204, !dbg !1191

if.else9.i.i:                                     ; preds = %for.cond.i.i
  %incdec.ptr10.i.i = getelementptr inbounds i8, i8* %rep.0.i.i, i64 1, !dbg !1192
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1177
  store i8 %245, i8* %rep.0.i.i, align 1, !dbg !1193, !tbaa !525
  br label %for.inc.i.i204

for.inc.i.i204:                                   ; preds = %if.else9.i.i, %if.then7.i.i, %if.then.i.i203
  %rep.1.i.i = phi i8* [ %incdec.ptr3.i.i, %if.then.i.i203 ], [ %incdec.ptr8.i.i, %if.then7.i.i ], [ %incdec.ptr10.i.i, %if.else9.i.i ], !dbg !1194
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1177
  %incdec.ptr12.i.i = getelementptr inbounds i8, i8* %aep.0.i.i, i64 1, !dbg !1195
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i, metadata !589, metadata !DIExpression()) #15, !dbg !1177
  br label %for.cond.i.i, !dbg !1196, !llvm.loop !1197

aexpr2rexpr.exit.i:                               ; preds = %for.cond.i.i
  %incdec.ptr13.i.i = getelementptr inbounds i8, i8* %rep.0.i.i, i64 1, !dbg !1199
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1177
  store i8 36, i8* %rep.0.i.i, align 1, !dbg !1200, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i, align 1, !dbg !1201, !tbaa !525
  %call.i205 = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1202
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1172, metadata !DIExpression()) #15, !dbg !1175
  %sp.040.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1203, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.040.i, metadata !1172, metadata !DIExpression()) #15, !dbg !1175
  %tobool.not41.i = icmp eq %struct.strand_t* %sp.040.i, null, !dbg !1205
  br i1 %tobool.not41.i, label %if.end69.i, label %for.body.i209, !dbg !1205

for.body.i209:                                    ; preds = %aexpr2rexpr.exit.i, %for.inc18.i
  %sp.042.i = phi %struct.strand_t* [ %sp.0.i222, %for.inc18.i ], [ %sp.040.i, %aexpr2rexpr.exit.i ]
  %s_attr.i207 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042.i, i64 0, i32 2, !dbg !1206
  %246 = load i32, i32* %s_attr.i207, align 4, !dbg !1206, !tbaa !290
  %and.i208 = and i32 %246, 1, !dbg !1210
  %tobool1.not.i = icmp eq i32 %and.i208, 0, !dbg !1210
  br i1 %tobool1.not.i, label %for.inc18.i, label %for.cond2.preheader.i, !dbg !1211

for.cond2.preheader.i:                            ; preds = %for.body.i209
  %s_nresidues.i210 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042.i, i64 0, i32 5
  %s_residues.i211 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042.i, i64 0, i32 7
  call void @llvm.dbg.value(metadata i32 0, metadata !1170, metadata !DIExpression()) #15, !dbg !1175
  %247 = load i32, i32* %s_nresidues.i210, align 8, !dbg !1212, !tbaa !295
  %cmp38.i = icmp sgt i32 %247, 0, !dbg !1216
  br i1 %cmp38.i, label %for.body3.i, label %for.inc18.i, !dbg !1217

for.body3.i:                                      ; preds = %for.cond2.preheader.i, %for.inc14.i
  %248 = phi i32 [ %258, %for.inc14.i ], [ %247, %for.cond2.preheader.i ]
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %for.inc14.i ], [ 0, %for.cond2.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv44.i, metadata !1170, metadata !DIExpression()) #15, !dbg !1175
  %249 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i211, align 8, !dbg !1218, !tbaa !301
  %arrayidx.i212 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %249, i64 %indvars.iv44.i, !dbg !1220
  %250 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i212, align 8, !dbg !1220, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %250, metadata !1173, metadata !DIExpression()) #15, !dbg !1175
  %r_attr.i213 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %250, i64 0, i32 6, !dbg !1221
  %251 = load i32, i32* %r_attr.i213, align 8, !dbg !1221, !tbaa !306
  %and4.i = and i32 %251, 1, !dbg !1223
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !1223
  br i1 %tobool5.not.i, label %for.inc14.i, label %for.cond7.preheader.i, !dbg !1224

for.cond7.preheader.i:                            ; preds = %for.body3.i
  %r_natoms.i214 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %250, i64 0, i32 15
  %r_atoms.i215 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %250, i64 0, i32 17
  call void @llvm.dbg.value(metadata i32 0, metadata !1171, metadata !DIExpression()) #15, !dbg !1175
  %252 = load i32, i32* %r_natoms.i214, align 8, !dbg !1225, !tbaa !310
  %cmp836.i = icmp sgt i32 %252, 0, !dbg !1229
  br i1 %cmp836.i, label %for.body9.i, label %for.inc14.i, !dbg !1230

for.body9.i:                                      ; preds = %for.cond7.preheader.i, %for.body9.i
  %indvars.iv.i216 = phi i64 [ %indvars.iv.next.i219, %for.body9.i ], [ 0, %for.cond7.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i216, metadata !1171, metadata !DIExpression()) #15, !dbg !1175
  %253 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i215, align 8, !dbg !1231, !tbaa !316
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %253, i64 %indvars.iv.i216), metadata !1174, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #15, !dbg !1175
  %a_atomname.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %253, i64 %indvars.iv.i216, i32 0, !dbg !1233
  %254 = load i8*, i8** %a_atomname.i, align 8, !dbg !1233, !tbaa !1234
  %call12.i = tail call i32 @step(i8* noundef %254, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1235
  %tobool13.not.i = icmp ne i32 %call12.i, 0, !dbg !1235
  %cond.i = zext i1 %tobool13.not.i to i32, !dbg !1235
  %a_attr.i217 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %253, i64 %indvars.iv.i216, i32 2, !dbg !1236
  %255 = load i32, i32* %a_attr.i217, align 8, !dbg !1237, !tbaa !320
  %or.i218 = or i32 %255, %cond.i, !dbg !1237
  store i32 %or.i218, i32* %a_attr.i217, align 8, !dbg !1237, !tbaa !320
  %indvars.iv.next.i219 = add nuw nsw i64 %indvars.iv.i216, 1, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i219, metadata !1171, metadata !DIExpression()) #15, !dbg !1175
  %256 = load i32, i32* %r_natoms.i214, align 8, !dbg !1225, !tbaa !310
  %257 = sext i32 %256 to i64, !dbg !1229
  %cmp8.i = icmp slt i64 %indvars.iv.next.i219, %257, !dbg !1229
  br i1 %cmp8.i, label %for.body9.i, label %for.inc14.loopexit.i, !dbg !1230, !llvm.loop !1239

for.inc14.loopexit.i:                             ; preds = %for.body9.i
  %.pre.i = load i32, i32* %s_nresidues.i210, align 8, !dbg !1212, !tbaa !295
  br label %for.inc14.i, !dbg !1241

for.inc14.i:                                      ; preds = %for.inc14.loopexit.i, %for.cond7.preheader.i, %for.body3.i
  %258 = phi i32 [ %.pre.i, %for.inc14.loopexit.i ], [ %248, %for.cond7.preheader.i ], [ %248, %for.body3.i ], !dbg !1212
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next45.i, metadata !1170, metadata !DIExpression()) #15, !dbg !1175
  %259 = sext i32 %258 to i64, !dbg !1216
  %cmp.i220 = icmp slt i64 %indvars.iv.next45.i, %259, !dbg !1216
  br i1 %cmp.i220, label %for.body3.i, label %for.inc18.i, !dbg !1217, !llvm.loop !1242

for.inc18.i:                                      ; preds = %for.inc14.i, %for.cond2.preheader.i, %for.body.i209
  %s_next.i221 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042.i, i64 0, i32 4, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1172, metadata !DIExpression()) #15, !dbg !1175
  %sp.0.i222 = load %struct.strand_t*, %struct.strand_t** %s_next.i221, align 8, !dbg !1203, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i222, metadata !1172, metadata !DIExpression()) #15, !dbg !1175
  %tobool.not.i223 = icmp eq %struct.strand_t* %sp.0.i222, null, !dbg !1205
  br i1 %tobool.not.i223, label %if.end69.i, label %for.body.i209, !dbg !1205, !llvm.loop !1245

if.else67.i:                                      ; preds = %if.else64.i, %if.then63.i, %if.then21.i, %if.then30.i, %is_pattern.exit
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1247, !tbaa !281
  %261 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %260) #17, !dbg !1249
  br label %if.end69.i

if.end69.i:                                       ; preds = %for.inc18.i, %aexpr2rexpr.exit.i, %if.else67.i
  %call61.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %call61.i, metadata !531, metadata !DIExpression()) #15, !dbg !534
  %tobool62.not.i = icmp eq i8* %call61.i, null, !dbg !1110
  br i1 %tobool62.not.i, label %eval_1_aexpr.exit, label %while.body63.i, !dbg !1110, !llvm.loop !1250

if.else71.i:                                      ; preds = %if.end50.i
  tail call fastcc void @match_atom_pat(%struct.molecule_t* noundef %mol, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #15, !dbg !1252
  br label %eval_1_aexpr.exit

eval_1_aexpr.exit:                                ; preds = %if.end69.i, %if.end59.i, %if.else71.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #15, !dbg !1253
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #15, !dbg !1253
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1254, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1259, metadata !DIExpression()), !dbg !1262
  %sp.047.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1264, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.047.i, metadata !1259, metadata !DIExpression()), !dbg !1262
  %tobool.not48.i = icmp eq %struct.strand_t* %sp.047.i, null, !dbg !1266
  br i1 %tobool.not48.i, label %or_select.exit, label %for.body.i114, !dbg !1266

for.body.i114:                                    ; preds = %eval_1_aexpr.exit, %for.inc23.i
  %sp.049.i = phi %struct.strand_t* [ %sp.0.i127, %for.inc23.i ], [ %sp.047.i, %eval_1_aexpr.exit ]
  %s_attr.i110 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i, i64 0, i32 2, !dbg !1267
  %262 = load i32, i32* %s_attr.i110, align 4, !dbg !1267, !tbaa !290
  %and.i111 = shl i32 %262, 7, !dbg !1270
  %263 = and i32 %and.i111, 128, !dbg !1270
  %or.i112 = or i32 %263, %262, !dbg !1271
  store i32 %or.i112, i32* %s_attr.i110, align 4, !dbg !1271, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !1258, metadata !DIExpression()), !dbg !1262
  %s_nresidues.i113 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i, i64 0, i32 5
  %264 = load i32, i32* %s_nresidues.i113, align 8, !tbaa !295
  %cmp45.i = icmp sgt i32 %264, 0, !dbg !1272
  br i1 %cmp45.i, label %for.body4.lr.ph.i, label %for.inc23.i, !dbg !1275

for.body4.lr.ph.i:                                ; preds = %for.body.i114
  %s_residues.i115 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i, i64 0, i32 7
  %265 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i115, align 8, !tbaa !301
  %wide.trip.count54.i = zext i32 %264 to i64, !dbg !1272
  br label %for.body4.i, !dbg !1275

for.body4.i:                                      ; preds = %for.inc20.i, %for.body4.lr.ph.i
  %indvars.iv51.i = phi i64 [ 0, %for.body4.lr.ph.i ], [ %indvars.iv.next52.i, %for.inc20.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv51.i, metadata !1258, metadata !DIExpression()), !dbg !1262
  %arrayidx.i116 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %265, i64 %indvars.iv51.i, !dbg !1276
  %266 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i116, align 8, !dbg !1276, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %266, metadata !1260, metadata !DIExpression()), !dbg !1262
  %r_attr.i117 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %266, i64 0, i32 6, !dbg !1278
  %267 = load i32, i32* %r_attr.i117, align 8, !dbg !1278, !tbaa !306
  %and5.i = shl i32 %267, 7, !dbg !1279
  %268 = and i32 %and5.i, 128, !dbg !1279
  %or9.i118 = or i32 %268, %267, !dbg !1280
  store i32 %or9.i118, i32* %r_attr.i117, align 8, !dbg !1280, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !1257, metadata !DIExpression()), !dbg !1262
  %r_natoms.i119 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %266, i64 0, i32 15
  %269 = load i32, i32* %r_natoms.i119, align 8, !tbaa !310
  %cmp1143.i = icmp sgt i32 %269, 0, !dbg !1281
  br i1 %cmp1143.i, label %for.body12.lr.ph.i, label %for.inc20.i, !dbg !1284

for.body12.lr.ph.i:                               ; preds = %for.body4.i
  %r_atoms.i120 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %266, i64 0, i32 17
  %270 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i120, align 8, !tbaa !316
  %wide.trip.count.i121 = zext i32 %269 to i64, !dbg !1281
  %xtraiter598 = and i64 %wide.trip.count.i121, 1, !dbg !1284
  %271 = icmp eq i32 %269, 1, !dbg !1284
  br i1 %271, label %for.inc20.i.loopexit.unr-lcssa, label %for.body12.lr.ph.i.new, !dbg !1284

for.body12.lr.ph.i.new:                           ; preds = %for.body12.lr.ph.i
  %unroll_iter601 = and i64 %wide.trip.count.i121, 4294967294, !dbg !1284
  br label %for.body12.i, !dbg !1284

for.body12.i:                                     ; preds = %for.body12.i, %for.body12.lr.ph.i.new
  %indvars.iv.i122 = phi i64 [ 0, %for.body12.lr.ph.i.new ], [ %indvars.iv.next.i124.1, %for.body12.i ]
  %niter602 = phi i64 [ 0, %for.body12.lr.ph.i.new ], [ %niter602.next.1, %for.body12.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i122, metadata !1257, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %270, i64 %indvars.iv.i122), metadata !1261, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1262
  %a_attr.i123 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %270, i64 %indvars.iv.i122, i32 2, !dbg !1285
  %272 = load i32, i32* %a_attr.i123, align 8, !dbg !1285, !tbaa !320
  %and15.i = shl i32 %272, 7, !dbg !1287
  %273 = and i32 %and15.i, 128, !dbg !1287
  %or19.i = or i32 %273, %272, !dbg !1288
  store i32 %or19.i, i32* %a_attr.i123, align 8, !dbg !1288, !tbaa !320
  %indvars.iv.next.i124 = or i64 %indvars.iv.i122, 1, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i124, metadata !1257, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i124, metadata !1257, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %270, i64 %indvars.iv.next.i124), metadata !1261, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1262
  %a_attr.i123.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %270, i64 %indvars.iv.next.i124, i32 2, !dbg !1285
  %274 = load i32, i32* %a_attr.i123.1, align 8, !dbg !1285, !tbaa !320
  %and15.i.1 = shl i32 %274, 7, !dbg !1287
  %275 = and i32 %and15.i.1, 128, !dbg !1287
  %or19.i.1 = or i32 %275, %274, !dbg !1288
  store i32 %or19.i.1, i32* %a_attr.i123.1, align 8, !dbg !1288, !tbaa !320
  %indvars.iv.next.i124.1 = add nuw nsw i64 %indvars.iv.i122, 2, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i124.1, metadata !1257, metadata !DIExpression()), !dbg !1262
  %niter602.next.1 = add i64 %niter602, 2, !dbg !1284
  %niter602.ncmp.1 = icmp eq i64 %niter602.next.1, %unroll_iter601, !dbg !1284
  br i1 %niter602.ncmp.1, label %for.inc20.i.loopexit.unr-lcssa, label %for.body12.i, !dbg !1284, !llvm.loop !1290

for.inc20.i.loopexit.unr-lcssa:                   ; preds = %for.body12.i, %for.body12.lr.ph.i
  %indvars.iv.i122.unr = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next.i124.1, %for.body12.i ]
  %lcmp.mod600.not = icmp eq i64 %xtraiter598, 0, !dbg !1284
  br i1 %lcmp.mod600.not, label %for.inc20.i, label %for.body12.i.epil, !dbg !1284

for.body12.i.epil:                                ; preds = %for.inc20.i.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i122.unr, metadata !1257, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %270, i64 %indvars.iv.i122.unr), metadata !1261, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1262
  %a_attr.i123.epil = getelementptr inbounds %struct.atom_t, %struct.atom_t* %270, i64 %indvars.iv.i122.unr, i32 2, !dbg !1285
  %276 = load i32, i32* %a_attr.i123.epil, align 8, !dbg !1285, !tbaa !320
  %and15.i.epil = shl i32 %276, 7, !dbg !1287
  %277 = and i32 %and15.i.epil, 128, !dbg !1287
  %or19.i.epil = or i32 %277, %276, !dbg !1288
  store i32 %or19.i.epil, i32* %a_attr.i123.epil, align 8, !dbg !1288, !tbaa !320
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i122.unr, metadata !1257, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1262
  br label %for.inc20.i, !dbg !1292

for.inc20.i:                                      ; preds = %for.body12.i.epil, %for.inc20.i.loopexit.unr-lcssa, %for.body4.i
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next52.i, metadata !1258, metadata !DIExpression()), !dbg !1262
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i, !dbg !1272
  br i1 %exitcond55.not.i, label %for.inc23.i, label %for.body4.i, !dbg !1275, !llvm.loop !1293

for.inc23.i:                                      ; preds = %for.inc20.i, %for.body.i114
  %s_next.i126 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i, i64 0, i32 4, !dbg !1295
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1259, metadata !DIExpression()), !dbg !1262
  %sp.0.i127 = load %struct.strand_t*, %struct.strand_t** %s_next.i126, align 8, !dbg !1264, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i127, metadata !1259, metadata !DIExpression()), !dbg !1262
  %tobool.not.i128 = icmp eq %struct.strand_t* %sp.0.i127, null, !dbg !1266
  br i1 %tobool.not.i128, label %or_select.exit, label %for.body.i114, !dbg !1266, !llvm.loop !1296

or_select.exit:                                   ; preds = %for.inc23.i, %eval_1_aexpr.exit
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !368, metadata !DIExpression()), !dbg !371
  %tobool14.not = icmp eq i8* %n_aep.1, null, !dbg !1298
  br i1 %tobool14.not, label %if.end17, label %if.then15, !dbg !1300

if.then15:                                        ; preds = %or_select.exit
  %call16 = tail call i8* @strchr(i8* noundef nonnull %n_aep.1, i32 noundef 124) #14, !dbg !1301
  call void @llvm.dbg.value(metadata i8* %call16, metadata !369, metadata !DIExpression()), !dbg !371
  br label %if.end17, !dbg !1302

if.end17:                                         ; preds = %if.then15, %or_select.exit
  %n_aep.2 = phi i8* [ %call16, %if.then15 ], [ null, %or_select.exit ], !dbg !1303
  call void @llvm.dbg.value(metadata i8* %n_aep.2, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !465, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.047.i, metadata !468, metadata !DIExpression()), !dbg !1304
  br i1 %tobool.not48.i, label %clear_select.exit164.thread, label %for.body.i137, !dbg !1306

for.body.i137:                                    ; preds = %if.end17, %for.inc13.i163
  %sp.035.i132 = phi %struct.strand_t* [ %sp.0.i161, %for.inc13.i163 ], [ %sp.047.i, %if.end17 ]
  %s_attr.i133 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i132, i64 0, i32 2, !dbg !1307
  %278 = load i32, i32* %s_attr.i133, align 4, !dbg !1308, !tbaa !290
  %and.i134 = and i32 %278, -2, !dbg !1308
  store i32 %and.i134, i32* %s_attr.i133, align 4, !dbg !1308, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !467, metadata !DIExpression()), !dbg !1304
  %s_nresidues.i135 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i132, i64 0, i32 5
  %279 = load i32, i32* %s_nresidues.i135, align 8, !tbaa !295
  %cmp31.i136 = icmp sgt i32 %279, 0, !dbg !1309
  br i1 %cmp31.i136, label %for.body2.lr.ph.i140, label %for.inc13.i163, !dbg !1310

for.body2.lr.ph.i140:                             ; preds = %for.body.i137
  %s_residues.i138 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i132, i64 0, i32 7
  %280 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i138, align 8, !tbaa !301
  %wide.trip.count40.i139 = zext i32 %279 to i64, !dbg !1309
  br label %for.body2.i147, !dbg !1310

for.body2.i147:                                   ; preds = %for.inc10.i159, %for.body2.lr.ph.i140
  %indvars.iv37.i141 = phi i64 [ 0, %for.body2.lr.ph.i140 ], [ %indvars.iv.next38.i157, %for.inc10.i159 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37.i141, metadata !467, metadata !DIExpression()), !dbg !1304
  %arrayidx.i142 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %280, i64 %indvars.iv37.i141, !dbg !1311
  %281 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i142, align 8, !dbg !1311, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %281, metadata !469, metadata !DIExpression()), !dbg !1304
  %r_attr.i143 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %281, i64 0, i32 6, !dbg !1312
  %282 = load i32, i32* %r_attr.i143, align 8, !dbg !1313, !tbaa !306
  %and3.i144 = and i32 %282, -2, !dbg !1313
  store i32 %and3.i144, i32* %r_attr.i143, align 8, !dbg !1313, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !466, metadata !DIExpression()), !dbg !1304
  %r_natoms.i145 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %281, i64 0, i32 15
  %283 = load i32, i32* %r_natoms.i145, align 8, !tbaa !310
  %cmp529.i146 = icmp sgt i32 %283, 0, !dbg !1314
  br i1 %cmp529.i146, label %for.body6.lr.ph.i150, label %for.inc10.i159, !dbg !1315

for.body6.lr.ph.i150:                             ; preds = %for.body2.i147
  %r_atoms.i148 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %281, i64 0, i32 17
  %284 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i148, align 8, !tbaa !316
  %wide.trip.count.i149 = zext i32 %283 to i64, !dbg !1314
  %285 = add nsw i64 %wide.trip.count.i149, -1, !dbg !1315
  %xtraiter603 = and i64 %wide.trip.count.i149, 3, !dbg !1315
  %286 = icmp ult i64 %285, 3, !dbg !1315
  br i1 %286, label %for.inc10.i159.loopexit.unr-lcssa, label %for.body6.lr.ph.i150.new, !dbg !1315

for.body6.lr.ph.i150.new:                         ; preds = %for.body6.lr.ph.i150
  %unroll_iter606 = and i64 %wide.trip.count.i149, 4294967292, !dbg !1315
  br label %for.body6.i156, !dbg !1315

for.body6.i156:                                   ; preds = %for.body6.i156, %for.body6.lr.ph.i150.new
  %indvars.iv.i151 = phi i64 [ 0, %for.body6.lr.ph.i150.new ], [ %indvars.iv.next.i154.3, %for.body6.i156 ]
  %niter607 = phi i64 [ 0, %for.body6.lr.ph.i150.new ], [ %niter607.next.3, %for.body6.i156 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i151, metadata !466, metadata !DIExpression()), !dbg !1304
  %a_attr.i152 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %284, i64 %indvars.iv.i151, i32 2, !dbg !1316
  %287 = load i32, i32* %a_attr.i152, align 8, !dbg !1317, !tbaa !320
  %and9.i153 = and i32 %287, -2, !dbg !1317
  store i32 %and9.i153, i32* %a_attr.i152, align 8, !dbg !1317, !tbaa !320
  %indvars.iv.next.i154 = or i64 %indvars.iv.i151, 1, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i154, metadata !466, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i154, metadata !466, metadata !DIExpression()), !dbg !1304
  %a_attr.i152.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %284, i64 %indvars.iv.next.i154, i32 2, !dbg !1316
  %288 = load i32, i32* %a_attr.i152.1, align 8, !dbg !1317, !tbaa !320
  %and9.i153.1 = and i32 %288, -2, !dbg !1317
  store i32 %and9.i153.1, i32* %a_attr.i152.1, align 8, !dbg !1317, !tbaa !320
  %indvars.iv.next.i154.1 = or i64 %indvars.iv.i151, 2, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i154.1, metadata !466, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i154.1, metadata !466, metadata !DIExpression()), !dbg !1304
  %a_attr.i152.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %284, i64 %indvars.iv.next.i154.1, i32 2, !dbg !1316
  %289 = load i32, i32* %a_attr.i152.2, align 8, !dbg !1317, !tbaa !320
  %and9.i153.2 = and i32 %289, -2, !dbg !1317
  store i32 %and9.i153.2, i32* %a_attr.i152.2, align 8, !dbg !1317, !tbaa !320
  %indvars.iv.next.i154.2 = or i64 %indvars.iv.i151, 3, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i154.2, metadata !466, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i154.2, metadata !466, metadata !DIExpression()), !dbg !1304
  %a_attr.i152.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %284, i64 %indvars.iv.next.i154.2, i32 2, !dbg !1316
  %290 = load i32, i32* %a_attr.i152.3, align 8, !dbg !1317, !tbaa !320
  %and9.i153.3 = and i32 %290, -2, !dbg !1317
  store i32 %and9.i153.3, i32* %a_attr.i152.3, align 8, !dbg !1317, !tbaa !320
  %indvars.iv.next.i154.3 = add nuw nsw i64 %indvars.iv.i151, 4, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i154.3, metadata !466, metadata !DIExpression()), !dbg !1304
  %niter607.next.3 = add i64 %niter607, 4, !dbg !1315
  %niter607.ncmp.3 = icmp eq i64 %niter607.next.3, %unroll_iter606, !dbg !1315
  br i1 %niter607.ncmp.3, label %for.inc10.i159.loopexit.unr-lcssa, label %for.body6.i156, !dbg !1315, !llvm.loop !1319

for.inc10.i159.loopexit.unr-lcssa:                ; preds = %for.body6.i156, %for.body6.lr.ph.i150
  %indvars.iv.i151.unr = phi i64 [ 0, %for.body6.lr.ph.i150 ], [ %indvars.iv.next.i154.3, %for.body6.i156 ]
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0, !dbg !1315
  br i1 %lcmp.mod605.not, label %for.inc10.i159, label %for.body6.i156.epil, !dbg !1315

for.body6.i156.epil:                              ; preds = %for.inc10.i159.loopexit.unr-lcssa, %for.body6.i156.epil
  %indvars.iv.i151.epil = phi i64 [ %indvars.iv.next.i154.epil, %for.body6.i156.epil ], [ %indvars.iv.i151.unr, %for.inc10.i159.loopexit.unr-lcssa ]
  %epil.iter604 = phi i64 [ %epil.iter604.next, %for.body6.i156.epil ], [ 0, %for.inc10.i159.loopexit.unr-lcssa ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i151.epil, metadata !466, metadata !DIExpression()), !dbg !1304
  %a_attr.i152.epil = getelementptr inbounds %struct.atom_t, %struct.atom_t* %284, i64 %indvars.iv.i151.epil, i32 2, !dbg !1316
  %291 = load i32, i32* %a_attr.i152.epil, align 8, !dbg !1317, !tbaa !320
  %and9.i153.epil = and i32 %291, -2, !dbg !1317
  store i32 %and9.i153.epil, i32* %a_attr.i152.epil, align 8, !dbg !1317, !tbaa !320
  %indvars.iv.next.i154.epil = add nuw nsw i64 %indvars.iv.i151.epil, 1, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i154.epil, metadata !466, metadata !DIExpression()), !dbg !1304
  %epil.iter604.next = add i64 %epil.iter604, 1, !dbg !1315
  %epil.iter604.cmp.not = icmp eq i64 %epil.iter604.next, %xtraiter603, !dbg !1315
  br i1 %epil.iter604.cmp.not, label %for.inc10.i159, label %for.body6.i156.epil, !dbg !1315, !llvm.loop !1321

for.inc10.i159:                                   ; preds = %for.inc10.i159.loopexit.unr-lcssa, %for.body6.i156.epil, %for.body2.i147
  %indvars.iv.next38.i157 = add nuw nsw i64 %indvars.iv37.i141, 1, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38.i157, metadata !467, metadata !DIExpression()), !dbg !1304
  %exitcond41.not.i158 = icmp eq i64 %indvars.iv.next38.i157, %wide.trip.count40.i139, !dbg !1309
  br i1 %exitcond41.not.i158, label %for.inc13.i163, label %for.body2.i147, !dbg !1310, !llvm.loop !1323

for.inc13.i163:                                   ; preds = %for.inc10.i159, %for.body.i137
  %s_next.i160 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i132, i64 0, i32 4, !dbg !1325
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !468, metadata !DIExpression()), !dbg !1304
  %sp.0.i161 = load %struct.strand_t*, %struct.strand_t** %s_next.i160, align 8, !dbg !1326, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i161, metadata !468, metadata !DIExpression()), !dbg !1304
  %tobool.not.i162 = icmp eq %struct.strand_t* %sp.0.i161, null, !dbg !1306
  br i1 %tobool.not.i162, label %clear_select.exit164, label %for.body.i137, !dbg !1306, !llvm.loop !1327

clear_select.exit164:                             ; preds = %for.inc13.i163
  call void @llvm.dbg.value(metadata i8* %n_aep.2, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !368, metadata !DIExpression()), !dbg !371
  br i1 %tobool14.not, label %for.body.i174, label %for.body.backedge, !dbg !501

for.body.backedge:                                ; preds = %clear_select.exit164, %clear_select.exit164.thread
  br label %for.body, !dbg !371, !llvm.loop !1329

clear_select.exit164.thread:                      ; preds = %if.end17
  call void @llvm.dbg.value(metadata i8* %n_aep.2, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !368, metadata !DIExpression()), !dbg !371
  br i1 %tobool14.not, label %cleanup, label %for.body.backedge, !dbg !501

for.body.i174:                                    ; preds = %clear_select.exit164, %for.inc23.i202
  %sp.049.i168 = phi %struct.strand_t* [ %sp.0.i200, %for.inc23.i202 ], [ %sp.047.i, %clear_select.exit164 ]
  %s_attr.i169 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i168, i64 0, i32 2, !dbg !1331
  %292 = load i32, i32* %s_attr.i169, align 4, !dbg !1331, !tbaa !290
  %and.i170 = lshr i32 %292, 7, !dbg !1344
  %and.lobit.i = and i32 %and.i170, 1, !dbg !1344
  %or.i171 = or i32 %and.lobit.i, %292, !dbg !1345
  store i32 %or.i171, i32* %s_attr.i169, align 4, !dbg !1345, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !1339, metadata !DIExpression()), !dbg !1346
  %s_nresidues.i172 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i168, i64 0, i32 5
  %293 = load i32, i32* %s_nresidues.i172, align 8, !tbaa !295
  %cmp45.i173 = icmp sgt i32 %293, 0, !dbg !1347
  br i1 %cmp45.i173, label %for.body4.lr.ph.i177, label %for.inc23.i202, !dbg !1350

for.body4.lr.ph.i177:                             ; preds = %for.body.i174
  %s_residues.i175 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i168, i64 0, i32 7
  %294 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i175, align 8, !tbaa !301
  %wide.trip.count54.i176 = zext i32 %293 to i64, !dbg !1347
  br label %for.body4.i185, !dbg !1350

for.body4.i185:                                   ; preds = %for.inc20.i198, %for.body4.lr.ph.i177
  %indvars.iv51.i178 = phi i64 [ 0, %for.body4.lr.ph.i177 ], [ %indvars.iv.next52.i196, %for.inc20.i198 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv51.i178, metadata !1339, metadata !DIExpression()), !dbg !1346
  %arrayidx.i179 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %294, i64 %indvars.iv51.i178, !dbg !1351
  %295 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i179, align 8, !dbg !1351, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %295, metadata !1341, metadata !DIExpression()), !dbg !1346
  %r_attr.i180 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %295, i64 0, i32 6, !dbg !1353
  %296 = load i32, i32* %r_attr.i180, align 8, !dbg !1353, !tbaa !306
  %and5.i181 = lshr i32 %296, 7, !dbg !1354
  %and5.lobit.i = and i32 %and5.i181, 1, !dbg !1354
  %or9.i182 = or i32 %and5.lobit.i, %296, !dbg !1355
  store i32 %or9.i182, i32* %r_attr.i180, align 8, !dbg !1355, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !1338, metadata !DIExpression()), !dbg !1346
  %r_natoms.i183 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %295, i64 0, i32 15
  %297 = load i32, i32* %r_natoms.i183, align 8, !tbaa !310
  %cmp1143.i184 = icmp sgt i32 %297, 0, !dbg !1356
  br i1 %cmp1143.i184, label %for.body12.lr.ph.i188, label %for.inc20.i198, !dbg !1359

for.body12.lr.ph.i188:                            ; preds = %for.body4.i185
  %r_atoms.i186 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %295, i64 0, i32 17
  %298 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i186, align 8, !tbaa !316
  %wide.trip.count.i187 = zext i32 %297 to i64, !dbg !1356
  %xtraiter608 = and i64 %wide.trip.count.i187, 1, !dbg !1359
  %299 = icmp eq i32 %297, 1, !dbg !1359
  br i1 %299, label %for.inc20.i198.loopexit.unr-lcssa, label %for.body12.lr.ph.i188.new, !dbg !1359

for.body12.lr.ph.i188.new:                        ; preds = %for.body12.lr.ph.i188
  %unroll_iter611 = and i64 %wide.trip.count.i187, 4294967294, !dbg !1359
  br label %for.body12.i195, !dbg !1359

for.body12.i195:                                  ; preds = %for.body12.i195, %for.body12.lr.ph.i188.new
  %indvars.iv.i189 = phi i64 [ 0, %for.body12.lr.ph.i188.new ], [ %indvars.iv.next.i193.1, %for.body12.i195 ]
  %niter612 = phi i64 [ 0, %for.body12.lr.ph.i188.new ], [ %niter612.next.1, %for.body12.i195 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i189, metadata !1338, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %298, i64 %indvars.iv.i189), metadata !1342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1346
  %a_attr.i190 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %298, i64 %indvars.iv.i189, i32 2, !dbg !1360
  %300 = load i32, i32* %a_attr.i190, align 8, !dbg !1360, !tbaa !320
  %and15.i191 = lshr i32 %300, 7, !dbg !1362
  %and15.lobit.i = and i32 %and15.i191, 1, !dbg !1362
  %or19.i192 = or i32 %and15.lobit.i, %300, !dbg !1363
  store i32 %or19.i192, i32* %a_attr.i190, align 8, !dbg !1363, !tbaa !320
  %indvars.iv.next.i193 = or i64 %indvars.iv.i189, 1, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i193, metadata !1338, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i193, metadata !1338, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %298, i64 %indvars.iv.next.i193), metadata !1342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1346
  %a_attr.i190.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %298, i64 %indvars.iv.next.i193, i32 2, !dbg !1360
  %301 = load i32, i32* %a_attr.i190.1, align 8, !dbg !1360, !tbaa !320
  %and15.i191.1 = lshr i32 %301, 7, !dbg !1362
  %and15.lobit.i.1 = and i32 %and15.i191.1, 1, !dbg !1362
  %or19.i192.1 = or i32 %and15.lobit.i.1, %301, !dbg !1363
  store i32 %or19.i192.1, i32* %a_attr.i190.1, align 8, !dbg !1363, !tbaa !320
  %indvars.iv.next.i193.1 = add nuw nsw i64 %indvars.iv.i189, 2, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i193.1, metadata !1338, metadata !DIExpression()), !dbg !1346
  %niter612.next.1 = add i64 %niter612, 2, !dbg !1359
  %niter612.ncmp.1 = icmp eq i64 %niter612.next.1, %unroll_iter611, !dbg !1359
  br i1 %niter612.ncmp.1, label %for.inc20.i198.loopexit.unr-lcssa, label %for.body12.i195, !dbg !1359, !llvm.loop !1365

for.inc20.i198.loopexit.unr-lcssa:                ; preds = %for.body12.i195, %for.body12.lr.ph.i188
  %indvars.iv.i189.unr = phi i64 [ 0, %for.body12.lr.ph.i188 ], [ %indvars.iv.next.i193.1, %for.body12.i195 ]
  %lcmp.mod610.not = icmp eq i64 %xtraiter608, 0, !dbg !1359
  br i1 %lcmp.mod610.not, label %for.inc20.i198, label %for.body12.i195.epil, !dbg !1359

for.body12.i195.epil:                             ; preds = %for.inc20.i198.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i189.unr, metadata !1338, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %298, i64 %indvars.iv.i189.unr), metadata !1342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1346
  %a_attr.i190.epil = getelementptr inbounds %struct.atom_t, %struct.atom_t* %298, i64 %indvars.iv.i189.unr, i32 2, !dbg !1360
  %302 = load i32, i32* %a_attr.i190.epil, align 8, !dbg !1360, !tbaa !320
  %and15.i191.epil = lshr i32 %302, 7, !dbg !1362
  %and15.lobit.i.epil = and i32 %and15.i191.epil, 1, !dbg !1362
  %or19.i192.epil = or i32 %and15.lobit.i.epil, %302, !dbg !1363
  store i32 %or19.i192.epil, i32* %a_attr.i190.epil, align 8, !dbg !1363, !tbaa !320
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i189.unr, metadata !1338, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1346
  br label %for.inc20.i198, !dbg !1367

for.inc20.i198:                                   ; preds = %for.body12.i195.epil, %for.inc20.i198.loopexit.unr-lcssa, %for.body4.i185
  %indvars.iv.next52.i196 = add nuw nsw i64 %indvars.iv51.i178, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next52.i196, metadata !1339, metadata !DIExpression()), !dbg !1346
  %exitcond55.not.i197 = icmp eq i64 %indvars.iv.next52.i196, %wide.trip.count54.i176, !dbg !1347
  br i1 %exitcond55.not.i197, label %for.inc23.i202, label %for.body4.i185, !dbg !1350, !llvm.loop !1368

for.inc23.i202:                                   ; preds = %for.inc20.i198, %for.body.i174
  %s_next.i199 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i168, i64 0, i32 4, !dbg !1370
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1340, metadata !DIExpression()), !dbg !1346
  %sp.0.i200 = load %struct.strand_t*, %struct.strand_t** %s_next.i199, align 8, !dbg !1371, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i200, metadata !1340, metadata !DIExpression()), !dbg !1346
  %tobool.not.i201 = icmp eq %struct.strand_t* %sp.0.i200, null, !dbg !1372
  br i1 %tobool.not.i201, label %cleanup, label %for.body.i174, !dbg !1372, !llvm.loop !1373

cleanup:                                          ; preds = %clear_select.exit164.thread, %for.inc23.i202, %for.inc13.i, %if.then, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 0, %if.then ], [ 0, %for.inc13.i ], [ 0, %for.inc23.i202 ], [ 0, %clear_select.exit164.thread ], !dbg !371
  ret i32 %retval.0, !dbg !1375
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare dso_local i8* @strncpy(i8* noalias noundef returned writeonly, i8* noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @atom_in_aexpr(%struct.atom_t* nocapture noundef readonly %ap, i8* noundef %aex) local_unnamed_addr #0 !dbg !1376 {
entry:
  %lo.i = alloca i32, align 4
  %hi.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap, metadata !1380, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %aex, metadata !1381, metadata !DIExpression()), !dbg !1385
  %cmp = icmp eq i8* %aex, null, !dbg !1386
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1388

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %aex, metadata !1382, metadata !DIExpression()), !dbg !1385
  %call = tail call i8* @strchr(i8* noundef nonnull %aex, i32 noundef 124) #14, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %call, metadata !1383, metadata !DIExpression()), !dbg !1385
  %0 = bitcast i32* %lo.i to i8*
  %1 = bitcast i32* %hi.i to i8*
  %ap.idx1.i = getelementptr %struct.atom_t, %struct.atom_t* %ap, i64 0, i32 5
  %a_atomname.i.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap, i64 0, i32 0
  call void @llvm.dbg.value(metadata i8* %call, metadata !1383, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %aex, metadata !1382, metadata !DIExpression()), !dbg !1385
  br label %for.body, !dbg !1391

for.body:                                         ; preds = %if.end20, %if.end
  %n_aep.053 = phi i8* [ %call, %if.end ], [ %call19, %if.end20 ]
  %aep.051 = phi i8* [ %aex, %if.end ], [ %n_aep.1, %if.end20 ]
  call void @llvm.dbg.value(metadata i8* %n_aep.053, metadata !1383, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %aep.051, metadata !1382, metadata !DIExpression()), !dbg !1385
  %tobool1.not = icmp eq i8* %n_aep.053, null, !dbg !1392
  br i1 %tobool1.not, label %if.else, label %if.then2, !dbg !1396

if.then2:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8* %n_aep.053 to i64, !dbg !1397
  %sub.ptr.rhs.cast = ptrtoint i8* %aep.051 to i64, !dbg !1397
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1384, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1385
  %incdec.ptr = getelementptr inbounds i8, i8* %n_aep.053, i64 1, !dbg !1399
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1383, metadata !DIExpression()), !dbg !1385
  br label %if.end5, !dbg !1400

if.else:                                          ; preds = %for.body
  %call3 = tail call i64 @strlen(i8* noundef nonnull %aep.051) #14, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %call3, metadata !1384, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1385
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %n_aep.1 = phi i8* [ %incdec.ptr, %if.then2 ], [ null, %if.else ], !dbg !1402
  %ael.0.in = phi i64 [ %sub.ptr.sub, %if.then2 ], [ %call3, %if.else ]
  %ael.0 = trunc i64 %ael.0.in to i32, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %ael.0, metadata !1384, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !1383, metadata !DIExpression()), !dbg !1385
  %cmp6 = icmp sgt i32 %ael.0, 999, !dbg !1404
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !1406

if.then8:                                         ; preds = %if.end5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1407, !tbaa !281
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %2) #13, !dbg !1409
  br label %cleanup, !dbg !1410

if.end10:                                         ; preds = %if.end5
  %sext = shl i64 %ael.0.in, 32, !dbg !1411
  %conv11 = ashr exact i64 %sext, 32, !dbg !1411
  %call12 = tail call i8* @strncpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* noundef nonnull %aep.051, i64 noundef %conv11) #15, !dbg !1412
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %conv11, !dbg !1413
  store i8 0, i8* %arrayidx, align 1, !dbg !1414, !tbaa !525
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap, metadata !1415, metadata !DIExpression()) #15, !dbg !1425
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1418, metadata !DIExpression()) #15, !dbg !1425
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15, !dbg !1428
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #15, !dbg !1428
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1419, metadata !DIExpression()) #15, !dbg !1425
  %4 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !1429, !tbaa !525
  %cmp.i = icmp eq i8 %4, 58, !dbg !1431
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !1432

if.then.i:                                        ; preds = %if.end10
  store i8* null, i8** @spart, align 8, !dbg !1433, !tbaa !281
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), metadata !1419, metadata !DIExpression()) #15, !dbg !1425
  br label %if.end.i, !dbg !1435

if.else.i:                                        ; preds = %if.end10
  %call.i = tail call i8* @strtok(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1436
  store i8* %call.i, i8** @spart, align 8, !dbg !1438, !tbaa !281
  %call2.i = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %call.i) #14, !dbg !1439
  %add.i = add i64 %call2.i, 1, !dbg !1440
  %add.ptr.i = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %add.i, !dbg !1441
  call void @llvm.dbg.value(metadata i8* %add.ptr.i, metadata !1419, metadata !DIExpression()) #15, !dbg !1425
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %aep.0.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), %if.then.i ], [ %add.ptr.i, %if.else.i ], !dbg !1442
  call void @llvm.dbg.value(metadata i8* %aep.0.i, metadata !1419, metadata !DIExpression()) #15, !dbg !1425
  %5 = load i8, i8* %aep.0.i, align 1, !dbg !1443, !tbaa !525
  %cmp4.i = icmp eq i8 %5, 58, !dbg !1445
  br i1 %cmp4.i, label %if.then6.i, label %if.else8.i, !dbg !1446

if.then6.i:                                       ; preds = %if.end.i
  store i8* null, i8** @rpart, align 8, !dbg !1447, !tbaa !281
  call void @llvm.dbg.value(metadata i8* undef, metadata !1419, metadata !DIExpression()) #15, !dbg !1425
  br label %if.end13.i, !dbg !1449

if.else8.i:                                       ; preds = %if.end.i
  %call9.i = tail call i8* @strtok(i8* noundef nonnull %aep.0.i, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1450
  store i8* %call9.i, i8** @rpart, align 8, !dbg !1452, !tbaa !281
  %call10.i = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %call9.i) #14, !dbg !1453
  %add11.i = add i64 %call10.i, 1, !dbg !1454
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else8.i, %if.then6.i
  %add11.sink.i = phi i64 [ %add11.i, %if.else8.i ], [ 1, %if.then6.i ]
  %add.ptr12.i = getelementptr inbounds i8, i8* %aep.0.i, i64 %add11.sink.i, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %add.ptr12.i, metadata !1419, metadata !DIExpression()) #15, !dbg !1425
  %call14.i = tail call i8* @strtok(i8* noundef nonnull %add.ptr12.i, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1456
  store i8* %call14.i, i8** @apart, align 8, !dbg !1457, !tbaa !281
  %6 = load i8*, i8** @spart, align 8, !dbg !1458, !tbaa !281
  %tobool.not.i = icmp eq i8* %6, null, !dbg !1458
  br i1 %tobool.not.i, label %RPART.i, label %if.then15.i, !dbg !1460

if.then15.i:                                      ; preds = %if.end13.i
  %call16.i = tail call i8* @strtok(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1461
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1425
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1421, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  %call17.i = call fastcc i32 @is_pattern(i8* noundef %call16.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1463
  %tobool18.not.i = icmp eq i32 %call17.i, 0, !dbg !1463
  br i1 %tobool18.not.i, label %if.else24.i, label %if.then19.i, !dbg !1465

if.then19.i:                                      ; preds = %if.then15.i
  %ap.idx1.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1466, !tbaa !1469
  %ap.idx1.val.idx.i = getelementptr %struct.residue_t, %struct.residue_t* %ap.idx1.val.i, i64 0, i32 9, !dbg !1466
  %ap.idx1.val.idx.val.i = load %struct.strand_t*, %struct.strand_t** %ap.idx1.val.idx.i, align 8, !dbg !1466, !tbaa !1470
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1471, metadata !DIExpression()) #15, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !1474, metadata !DIExpression()) #15, !dbg !1477
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1475, metadata !DIExpression()) #15, !dbg !1477
  call void @llvm.dbg.value(metadata %struct.strand_t* %ap.idx1.val.idx.val.i, metadata !1476, metadata !DIExpression()) #15, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !583, metadata !DIExpression()) #15, !dbg !1479
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !1479
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !590, metadata !DIExpression()) #15, !dbg !1479
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !1479
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1481, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !589, metadata !DIExpression()) #15, !dbg !1479
  br label %for.cond.i.i.i, !dbg !1482

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.then19.i
  %aep.0.i.i.i = phi i8* [ %call16.i, %if.then19.i ], [ %incdec.ptr12.i.i.i, %for.inc.i.i.i ], !dbg !1483
  %rep.0.i.i.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then19.i ], [ %rep.1.i.i.i, %for.inc.i.i.i ], !dbg !1479
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1479
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i.i, metadata !589, metadata !DIExpression()) #15, !dbg !1479
  %7 = load i8, i8* %aep.0.i.i.i, align 1, !dbg !1484, !tbaa !525
  switch i8 %7, label %if.else9.i.i.i [
    i8 0, label %atom_in_str_pat.exit.i
    i8 42, label %if.then.i.i.i
    i8 63, label %if.then7.i.i.i
  ], !dbg !1485

if.then.i.i.i:                                    ; preds = %for.cond.i.i.i
  %incdec.ptr2.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !1486
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1479
  store i8 46, i8* %rep.0.i.i.i, align 1, !dbg !1487, !tbaa !525
  %incdec.ptr3.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 2, !dbg !1488
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1479
  store i8 42, i8* %incdec.ptr2.i.i.i, align 1, !dbg !1489, !tbaa !525
  br label %for.inc.i.i.i, !dbg !1490

if.then7.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr8.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1479
  store i8 46, i8* %rep.0.i.i.i, align 1, !dbg !1492, !tbaa !525
  br label %for.inc.i.i.i, !dbg !1493

if.else9.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr10.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !1494
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1479
  store i8 %7, i8* %rep.0.i.i.i, align 1, !dbg !1495, !tbaa !525
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else9.i.i.i, %if.then7.i.i.i, %if.then.i.i.i
  %rep.1.i.i.i = phi i8* [ %incdec.ptr3.i.i.i, %if.then.i.i.i ], [ %incdec.ptr8.i.i.i, %if.then7.i.i.i ], [ %incdec.ptr10.i.i.i, %if.else9.i.i.i ], !dbg !1496
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1479
  %incdec.ptr12.i.i.i = getelementptr inbounds i8, i8* %aep.0.i.i.i, i64 1, !dbg !1497
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i.i, metadata !589, metadata !DIExpression()) #15, !dbg !1479
  br label %for.cond.i.i.i, !dbg !1498, !llvm.loop !1499

atom_in_str_pat.exit.i:                           ; preds = %for.cond.i.i.i
  %incdec.ptr13.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !1501
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i.i, metadata !590, metadata !DIExpression()) #15, !dbg !1479
  store i8 36, i8* %rep.0.i.i.i, align 1, !dbg !1502, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i.i, align 1, !dbg !1503, !tbaa !525
  %call.i.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1504
  %s_strandname.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %ap.idx1.val.idx.val.i, i64 0, i32 0, !dbg !1505
  %8 = load i8*, i8** %s_strandname.i.i, align 8, !dbg !1505, !tbaa !629
  %call1.i.i = tail call i32 @step(i8* noundef %8, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1506
  %tobool21.not.i = icmp eq i32 %call1.i.i, 0, !dbg !1466
  br i1 %tobool21.not.i, label %if.end29.i, label %RPART.i, !dbg !1507

if.else24.i:                                      ; preds = %if.then15.i
  %9 = load i32, i32* %lo.i, align 4, !dbg !1508, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %9, metadata !1421, metadata !DIExpression()) #15, !dbg !1425
  %10 = load i32, i32* %hi.i, align 4, !dbg !1510, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %10, metadata !1422, metadata !DIExpression()) #15, !dbg !1425
  %ap.idx3.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1511, !tbaa !1469
  %ap.idx3.val.idx.i = getelementptr %struct.residue_t, %struct.residue_t* %ap.idx3.val.i, i64 0, i32 9, !dbg !1511
  %ap.idx3.val.idx.val.i = load %struct.strand_t*, %struct.strand_t** %ap.idx3.val.idx.i, align 8, !dbg !1511, !tbaa !1470
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1512, metadata !DIExpression()) #15, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %9, metadata !1517, metadata !DIExpression()) #15, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %10, metadata !1518, metadata !DIExpression()) #15, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1520, metadata !DIExpression()) #15, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.strand_t* %ap.idx3.val.idx.val.i, metadata !1521, metadata !DIExpression()) #15, !dbg !1524
  %s_molecule.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %ap.idx3.val.idx.val.i, i64 0, i32 3, !dbg !1526
  %11 = load %struct.molecule_t*, %struct.molecule_t** %s_molecule.i.i, align 8, !dbg !1526, !tbaa !1527
  call void @llvm.dbg.value(metadata %struct.molecule_t* %11, metadata !1523, metadata !DIExpression()) #15, !dbg !1524
  %cmp.i.i = icmp eq i32 %10, -1, !dbg !1528
  %m_nstrands.i.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %11, i64 0, i32 1
  %12 = load i32, i32* %m_nstrands.i.i, align 8, !tbaa !652
  %.hi.i.i = select i1 %cmp.i.i, i32 %12, i32 %10, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %.hi.i.i, metadata !1518, metadata !DIExpression()) #15, !dbg !1524
  call void @llvm.dbg.value(metadata i32 1, metadata !1519, metadata !DIExpression()) #15, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1522, metadata !DIExpression()) #15, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1522, metadata !DIExpression()) #15, !dbg !1524
  call void @llvm.dbg.value(metadata i32 1, metadata !1519, metadata !DIExpression()) #15, !dbg !1524
  %cmp2.not2.i.i = icmp slt i32 %12, 1, !dbg !1530
  br i1 %cmp2.not2.i.i, label %if.end29.i, label %for.body.preheader.i.i, !dbg !1533

for.body.preheader.i.i:                           ; preds = %if.else24.i
  %m_strands.i.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %11, i64 0, i32 2, !dbg !1534
  br label %for.body.i.i, !dbg !1533

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.preheader.i.i
  %sp1.04.in.i.i = phi %struct.strand_t** [ %s_next.i.i, %for.inc.i.i ], [ %m_strands.i.i, %for.body.preheader.i.i ]
  %m.03.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 1, %for.body.preheader.i.i ]
  %sp1.04.i.i = load %struct.strand_t*, %struct.strand_t** %sp1.04.in.i.i, align 8, !dbg !1535, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %m.03.i.i, metadata !1519, metadata !DIExpression()) #15, !dbg !1524
  %cmp3.i.i = icmp ne %struct.strand_t* %sp1.04.i.i, %ap.idx3.val.idx.val.i, !dbg !1536
  %cmp5.not.i.i = icmp slt i32 %m.03.i.i, %9
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %cmp5.not.i.i, !dbg !1539
  %cmp6.not.i.i = icmp sgt i32 %m.03.i.i, %.hi.i.i
  %or.cond27.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp6.not.i.i, !dbg !1539
  br i1 %or.cond27.i.i, label %for.inc.i.i, label %RPART.i, !dbg !1539

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %m.03.i.i, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %inc.i.i, metadata !1519, metadata !DIExpression()) #15, !dbg !1524
  %s_next.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.04.i.i, i64 0, i32 4, !dbg !1541
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1522, metadata !DIExpression()) #15, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1522, metadata !DIExpression()) #15, !dbg !1524
  %exitcond.not.i.i = icmp eq i32 %m.03.i.i, %12, !dbg !1530
  br i1 %exitcond.not.i.i, label %if.end29.i, label %for.body.i.i, !dbg !1533, !llvm.loop !1542

if.end29.i:                                       ; preds = %for.inc.i.i, %if.else24.i, %atom_in_str_pat.exit.i
  %call30157.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %call30157.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1425
  %tobool31.not158.i = icmp eq i8* %call30157.i, null, !dbg !1545
  br i1 %tobool31.not158.i, label %if.end16, label %while.body.i, !dbg !1545

while.body.i:                                     ; preds = %if.end29.i, %if.end44.i
  %call30159.i = phi i8* [ %call30.i, %if.end44.i ], [ %call30157.i, %if.end29.i ]
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1421, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  %call32.i = call fastcc i32 @is_pattern(i8* noundef nonnull %call30159.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1546
  %tobool33.not.i = icmp eq i32 %call32.i, 0, !dbg !1546
  br i1 %tobool33.not.i, label %if.else39.i, label %if.then34.i, !dbg !1549

if.then34.i:                                      ; preds = %while.body.i
  %ap.idx.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1550, !tbaa !1469
  %ap.idx.val.idx.i = getelementptr %struct.residue_t, %struct.residue_t* %ap.idx.val.i, i64 0, i32 9, !dbg !1550
  %ap.idx.val.idx.val.i = load %struct.strand_t*, %struct.strand_t** %ap.idx.val.idx.i, align 8, !dbg !1550, !tbaa !1470
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1471, metadata !DIExpression()) #15, !dbg !1553
  call void @llvm.dbg.value(metadata i8* %call30159.i, metadata !1474, metadata !DIExpression()) #15, !dbg !1553
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1475, metadata !DIExpression()) #15, !dbg !1553
  call void @llvm.dbg.value(metadata %struct.strand_t* %ap.idx.val.idx.val.i, metadata !1476, metadata !DIExpression()) #15, !dbg !1553
  call void @llvm.dbg.value(metadata i8* %call30159.i, metadata !583, metadata !DIExpression()) #15, !dbg !1555
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !1555
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !1555
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1557, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call30159.i, metadata !589, metadata !DIExpression()) #15, !dbg !1555
  br label %for.cond.i.i10.i, !dbg !1558

for.cond.i.i10.i:                                 ; preds = %for.inc.i.i20.i, %if.then34.i
  %aep.0.i.i8.i = phi i8* [ %call30159.i, %if.then34.i ], [ %incdec.ptr12.i.i19.i, %for.inc.i.i20.i ], !dbg !1559
  %rep.0.i.i9.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then34.i ], [ %rep.1.i.i18.i, %for.inc.i.i20.i ], !dbg !1555
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i9.i, metadata !590, metadata !DIExpression()) #15, !dbg !1555
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i8.i, metadata !589, metadata !DIExpression()) #15, !dbg !1555
  %13 = load i8, i8* %aep.0.i.i8.i, align 1, !dbg !1560, !tbaa !525
  switch i8 %13, label %if.else9.i.i17.i [
    i8 0, label %atom_in_str_pat.exit25.i
    i8 42, label %if.then.i.i13.i
    i8 63, label %if.then7.i.i15.i
  ], !dbg !1561

if.then.i.i13.i:                                  ; preds = %for.cond.i.i10.i
  %incdec.ptr2.i.i11.i = getelementptr inbounds i8, i8* %rep.0.i.i9.i, i64 1, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i11.i, metadata !590, metadata !DIExpression()) #15, !dbg !1555
  store i8 46, i8* %rep.0.i.i9.i, align 1, !dbg !1563, !tbaa !525
  %incdec.ptr3.i.i12.i = getelementptr inbounds i8, i8* %rep.0.i.i9.i, i64 2, !dbg !1564
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i12.i, metadata !590, metadata !DIExpression()) #15, !dbg !1555
  store i8 42, i8* %incdec.ptr2.i.i11.i, align 1, !dbg !1565, !tbaa !525
  br label %for.inc.i.i20.i, !dbg !1566

if.then7.i.i15.i:                                 ; preds = %for.cond.i.i10.i
  %incdec.ptr8.i.i14.i = getelementptr inbounds i8, i8* %rep.0.i.i9.i, i64 1, !dbg !1567
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i14.i, metadata !590, metadata !DIExpression()) #15, !dbg !1555
  store i8 46, i8* %rep.0.i.i9.i, align 1, !dbg !1568, !tbaa !525
  br label %for.inc.i.i20.i, !dbg !1569

if.else9.i.i17.i:                                 ; preds = %for.cond.i.i10.i
  %incdec.ptr10.i.i16.i = getelementptr inbounds i8, i8* %rep.0.i.i9.i, i64 1, !dbg !1570
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i16.i, metadata !590, metadata !DIExpression()) #15, !dbg !1555
  store i8 %13, i8* %rep.0.i.i9.i, align 1, !dbg !1571, !tbaa !525
  br label %for.inc.i.i20.i

for.inc.i.i20.i:                                  ; preds = %if.else9.i.i17.i, %if.then7.i.i15.i, %if.then.i.i13.i
  %rep.1.i.i18.i = phi i8* [ %incdec.ptr3.i.i12.i, %if.then.i.i13.i ], [ %incdec.ptr8.i.i14.i, %if.then7.i.i15.i ], [ %incdec.ptr10.i.i16.i, %if.else9.i.i17.i ], !dbg !1572
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i18.i, metadata !590, metadata !DIExpression()) #15, !dbg !1555
  %incdec.ptr12.i.i19.i = getelementptr inbounds i8, i8* %aep.0.i.i8.i, i64 1, !dbg !1573
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i19.i, metadata !589, metadata !DIExpression()) #15, !dbg !1555
  br label %for.cond.i.i10.i, !dbg !1574, !llvm.loop !1575

atom_in_str_pat.exit25.i:                         ; preds = %for.cond.i.i10.i
  %incdec.ptr13.i.i21.i = getelementptr inbounds i8, i8* %rep.0.i.i9.i, i64 1, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i21.i, metadata !590, metadata !DIExpression()) #15, !dbg !1555
  store i8 36, i8* %rep.0.i.i9.i, align 1, !dbg !1578, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i21.i, align 1, !dbg !1579, !tbaa !525
  %call.i22.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1580
  %s_strandname.i23.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %ap.idx.val.idx.val.i, i64 0, i32 0, !dbg !1581
  %14 = load i8*, i8** %s_strandname.i23.i, align 8, !dbg !1581, !tbaa !629
  %call1.i24.i = tail call i32 @step(i8* noundef %14, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1582
  %tobool36.not.i = icmp eq i32 %call1.i24.i, 0, !dbg !1550
  br i1 %tobool36.not.i, label %if.end44.i, label %RPART.i, !dbg !1583

if.else39.i:                                      ; preds = %while.body.i
  %15 = load i32, i32* %lo.i, align 4, !dbg !1584, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %15, metadata !1421, metadata !DIExpression()) #15, !dbg !1425
  %16 = load i32, i32* %hi.i, align 4, !dbg !1586, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %16, metadata !1422, metadata !DIExpression()) #15, !dbg !1425
  %ap.idx2.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1587, !tbaa !1469
  %ap.idx2.val.idx.i = getelementptr %struct.residue_t, %struct.residue_t* %ap.idx2.val.i, i64 0, i32 9, !dbg !1587
  %ap.idx2.val.idx.val.i = load %struct.strand_t*, %struct.strand_t** %ap.idx2.val.idx.i, align 8, !dbg !1587, !tbaa !1470
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1512, metadata !DIExpression()) #15, !dbg !1588
  call void @llvm.dbg.value(metadata i32 %15, metadata !1517, metadata !DIExpression()) #15, !dbg !1588
  call void @llvm.dbg.value(metadata i32 %16, metadata !1518, metadata !DIExpression()) #15, !dbg !1588
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1520, metadata !DIExpression()) #15, !dbg !1588
  call void @llvm.dbg.value(metadata %struct.strand_t* %ap.idx2.val.idx.val.i, metadata !1521, metadata !DIExpression()) #15, !dbg !1588
  %s_molecule.i26.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %ap.idx2.val.idx.val.i, i64 0, i32 3, !dbg !1590
  %17 = load %struct.molecule_t*, %struct.molecule_t** %s_molecule.i26.i, align 8, !dbg !1590, !tbaa !1527
  call void @llvm.dbg.value(metadata %struct.molecule_t* %17, metadata !1523, metadata !DIExpression()) #15, !dbg !1588
  %cmp.i27.i = icmp eq i32 %16, -1, !dbg !1591
  %m_nstrands.i28.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %17, i64 0, i32 1
  %18 = load i32, i32* %m_nstrands.i28.i, align 8, !tbaa !652
  %.hi.i29.i = select i1 %cmp.i27.i, i32 %18, i32 %16, !dbg !1588
  call void @llvm.dbg.value(metadata i32 %.hi.i29.i, metadata !1518, metadata !DIExpression()) #15, !dbg !1588
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1522, metadata !DIExpression()) #15, !dbg !1588
  call void @llvm.dbg.value(metadata i32 1, metadata !1519, metadata !DIExpression()) #15, !dbg !1588
  %cmp2.not2.i30.i = icmp slt i32 %18, 1, !dbg !1592
  br i1 %cmp2.not2.i30.i, label %if.end44.i, label %for.body.preheader.i32.i, !dbg !1593

for.body.preheader.i32.i:                         ; preds = %if.else39.i
  %m_strands.i31.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %17, i64 0, i32 2, !dbg !1594
  br label %for.body.i41.i, !dbg !1593

for.body.i41.i:                                   ; preds = %for.inc.i45.i, %for.body.preheader.i32.i
  %sp1.04.in.i33.i = phi %struct.strand_t** [ %s_next.i43.i, %for.inc.i45.i ], [ %m_strands.i31.i, %for.body.preheader.i32.i ]
  %m.03.i34.i = phi i32 [ %inc.i42.i, %for.inc.i45.i ], [ 1, %for.body.preheader.i32.i ]
  %sp1.04.i35.i = load %struct.strand_t*, %struct.strand_t** %sp1.04.in.i33.i, align 8, !dbg !1595, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %m.03.i34.i, metadata !1519, metadata !DIExpression()) #15, !dbg !1588
  %cmp3.i36.i = icmp ne %struct.strand_t* %sp1.04.i35.i, %ap.idx2.val.idx.val.i, !dbg !1596
  %cmp5.not.i37.i = icmp slt i32 %m.03.i34.i, %15
  %or.cond.i38.i = select i1 %cmp3.i36.i, i1 true, i1 %cmp5.not.i37.i, !dbg !1597
  %cmp6.not.i39.i = icmp sgt i32 %m.03.i34.i, %.hi.i29.i
  %or.cond27.i40.i = select i1 %or.cond.i38.i, i1 true, i1 %cmp6.not.i39.i, !dbg !1597
  br i1 %or.cond27.i40.i, label %for.inc.i45.i, label %RPART.i, !dbg !1597

for.inc.i45.i:                                    ; preds = %for.body.i41.i
  %inc.i42.i = add nuw i32 %m.03.i34.i, 1, !dbg !1598
  call void @llvm.dbg.value(metadata i32 %inc.i42.i, metadata !1519, metadata !DIExpression()) #15, !dbg !1588
  %s_next.i43.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.04.i35.i, i64 0, i32 4, !dbg !1599
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1522, metadata !DIExpression()) #15, !dbg !1588
  %exitcond.not.i44.i = icmp eq i32 %m.03.i34.i, %18, !dbg !1592
  br i1 %exitcond.not.i44.i, label %if.end44.i, label %for.body.i41.i, !dbg !1593, !llvm.loop !1600

if.end44.i:                                       ; preds = %for.inc.i45.i, %if.else39.i, %atom_in_str_pat.exit25.i
  %call30.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %call30.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1425
  %tobool31.not.i = icmp eq i8* %call30.i, null, !dbg !1545
  br i1 %tobool31.not.i, label %if.end16, label %while.body.i, !dbg !1545, !llvm.loop !1602

RPART.i:                                          ; preds = %for.body.i.i, %atom_in_str_pat.exit25.i, %for.body.i41.i, %atom_in_str_pat.exit.i, %if.end13.i
  call void @llvm.dbg.label(metadata !1423) #15, !dbg !1604
  %19 = load i8*, i8** @rpart, align 8, !dbg !1605, !tbaa !281
  %tobool46.not.i = icmp eq i8* %19, null, !dbg !1605
  br i1 %tobool46.not.i, label %APART.i, label %if.then47.i, !dbg !1607

if.then47.i:                                      ; preds = %RPART.i
  %call48.i = tail call i8* @strtok(i8* noundef nonnull %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1608
  call void @llvm.dbg.value(metadata i8* %call48.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1425
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1421, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  %call49.i = call fastcc i32 @is_pattern(i8* noundef %call48.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1610
  %tobool50.not.i = icmp eq i32 %call49.i, 0, !dbg !1610
  br i1 %tobool50.not.i, label %if.else56.i, label %if.then51.i, !dbg !1612

if.then51.i:                                      ; preds = %if.then47.i
  %ap.idx5.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1613, !tbaa !1469
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1616, metadata !DIExpression()) #15, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %call48.i, metadata !1619, metadata !DIExpression()) #15, !dbg !1621
  call void @llvm.dbg.value(metadata %struct.residue_t* %ap.idx5.val.i, metadata !1620, metadata !DIExpression()) #15, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %call48.i, metadata !583, metadata !DIExpression()) #15, !dbg !1623
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !1623
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !1623
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1625, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call48.i, metadata !589, metadata !DIExpression()) #15, !dbg !1623
  br label %for.cond.i.i50.i, !dbg !1626

for.cond.i.i50.i:                                 ; preds = %for.inc.i.i60.i, %if.then51.i
  %aep.0.i.i48.i = phi i8* [ %call48.i, %if.then51.i ], [ %incdec.ptr12.i.i59.i, %for.inc.i.i60.i ], !dbg !1627
  %rep.0.i.i49.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then51.i ], [ %rep.1.i.i58.i, %for.inc.i.i60.i ], !dbg !1623
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i49.i, metadata !590, metadata !DIExpression()) #15, !dbg !1623
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i48.i, metadata !589, metadata !DIExpression()) #15, !dbg !1623
  %20 = load i8, i8* %aep.0.i.i48.i, align 1, !dbg !1628, !tbaa !525
  switch i8 %20, label %if.else9.i.i57.i [
    i8 0, label %atom_in_res_pat.exit.i
    i8 42, label %if.then.i.i53.i
    i8 63, label %if.then7.i.i55.i
  ], !dbg !1629

if.then.i.i53.i:                                  ; preds = %for.cond.i.i50.i
  %incdec.ptr2.i.i51.i = getelementptr inbounds i8, i8* %rep.0.i.i49.i, i64 1, !dbg !1630
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i51.i, metadata !590, metadata !DIExpression()) #15, !dbg !1623
  store i8 46, i8* %rep.0.i.i49.i, align 1, !dbg !1631, !tbaa !525
  %incdec.ptr3.i.i52.i = getelementptr inbounds i8, i8* %rep.0.i.i49.i, i64 2, !dbg !1632
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i52.i, metadata !590, metadata !DIExpression()) #15, !dbg !1623
  store i8 42, i8* %incdec.ptr2.i.i51.i, align 1, !dbg !1633, !tbaa !525
  br label %for.inc.i.i60.i, !dbg !1634

if.then7.i.i55.i:                                 ; preds = %for.cond.i.i50.i
  %incdec.ptr8.i.i54.i = getelementptr inbounds i8, i8* %rep.0.i.i49.i, i64 1, !dbg !1635
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i54.i, metadata !590, metadata !DIExpression()) #15, !dbg !1623
  store i8 46, i8* %rep.0.i.i49.i, align 1, !dbg !1636, !tbaa !525
  br label %for.inc.i.i60.i, !dbg !1637

if.else9.i.i57.i:                                 ; preds = %for.cond.i.i50.i
  %incdec.ptr10.i.i56.i = getelementptr inbounds i8, i8* %rep.0.i.i49.i, i64 1, !dbg !1638
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i56.i, metadata !590, metadata !DIExpression()) #15, !dbg !1623
  store i8 %20, i8* %rep.0.i.i49.i, align 1, !dbg !1639, !tbaa !525
  br label %for.inc.i.i60.i

for.inc.i.i60.i:                                  ; preds = %if.else9.i.i57.i, %if.then7.i.i55.i, %if.then.i.i53.i
  %rep.1.i.i58.i = phi i8* [ %incdec.ptr3.i.i52.i, %if.then.i.i53.i ], [ %incdec.ptr8.i.i54.i, %if.then7.i.i55.i ], [ %incdec.ptr10.i.i56.i, %if.else9.i.i57.i ], !dbg !1640
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i58.i, metadata !590, metadata !DIExpression()) #15, !dbg !1623
  %incdec.ptr12.i.i59.i = getelementptr inbounds i8, i8* %aep.0.i.i48.i, i64 1, !dbg !1641
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i59.i, metadata !589, metadata !DIExpression()) #15, !dbg !1623
  br label %for.cond.i.i50.i, !dbg !1642, !llvm.loop !1643

atom_in_res_pat.exit.i:                           ; preds = %for.cond.i.i50.i
  %incdec.ptr13.i.i61.i = getelementptr inbounds i8, i8* %rep.0.i.i49.i, i64 1, !dbg !1645
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i61.i, metadata !590, metadata !DIExpression()) #15, !dbg !1623
  store i8 36, i8* %rep.0.i.i49.i, align 1, !dbg !1646, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i61.i, align 1, !dbg !1647, !tbaa !525
  %call.i62.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1648
  %r_resname.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %ap.idx5.val.i, i64 0, i32 4, !dbg !1649
  %21 = load i8*, i8** %r_resname.i.i, align 8, !dbg !1649, !tbaa !884
  %call1.i63.i = tail call i32 @step(i8* noundef %21, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1650
  %tobool53.not.i = icmp eq i32 %call1.i63.i, 0, !dbg !1613
  br i1 %tobool53.not.i, label %if.end61.i, label %APART.i, !dbg !1651

if.else56.i:                                      ; preds = %if.then47.i
  %22 = load i32, i32* %lo.i, align 4, !dbg !1652, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %22, metadata !1421, metadata !DIExpression()) #15, !dbg !1425
  %23 = load i32, i32* %hi.i, align 4, !dbg !1654, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %23, metadata !1422, metadata !DIExpression()) #15, !dbg !1425
  %ap.idx7.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1655, !tbaa !1469
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1656, metadata !DIExpression()) #15, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %22, metadata !1659, metadata !DIExpression()) #15, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %23, metadata !1660, metadata !DIExpression()) #15, !dbg !1666
  call void @llvm.dbg.value(metadata %struct.residue_t* %ap.idx7.val.i, metadata !1664, metadata !DIExpression()) #15, !dbg !1666
  %r_strand.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %ap.idx7.val.i, i64 0, i32 9, !dbg !1668
  %24 = load %struct.strand_t*, %struct.strand_t** %r_strand.i.i, align 8, !dbg !1668, !tbaa !1470
  call void @llvm.dbg.value(metadata %struct.strand_t* %24, metadata !1663, metadata !DIExpression()) #15, !dbg !1666
  %cmp.i64.i = icmp eq i32 %23, -1, !dbg !1669
  %s_nresidues.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 5
  %25 = load i32, i32* %s_nresidues.i.i, align 8, !tbaa !295
  %.hi.i65.i = select i1 %cmp.i64.i, i32 %25, i32 %23, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %.hi.i65.i, metadata !1662, metadata !DIExpression()) #15, !dbg !1666
  call void @llvm.dbg.value(metadata i32 0, metadata !1661, metadata !DIExpression()) #15, !dbg !1666
  %s_residues.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 7
  %26 = sext i32 %.hi.i65.i to i64, !dbg !1671
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #15, !dbg !1671
  %wide.trip.count.i.i = zext i32 %smax.i.i to i64, !dbg !1673
  br label %for.cond.i.i, !dbg !1671

for.cond.i.i:                                     ; preds = %for.body.i69.i, %if.else56.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i69.i ], [ 0, %if.else56.i ], !dbg !1675
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !1661, metadata !DIExpression()) #15, !dbg !1666
  %exitcond.not.i66.i = icmp eq i64 %indvars.iv.i.i, %wide.trip.count.i.i, !dbg !1673
  br i1 %exitcond.not.i66.i, label %if.end61.i, label %for.body.i69.i, !dbg !1676

for.body.i69.i:                                   ; preds = %for.cond.i.i
  %27 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i.i, align 8, !dbg !1677, !tbaa !301
  %arrayidx.i.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %27, i64 %indvars.iv.i.i, !dbg !1679
  %28 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i.i, align 8, !dbg !1679, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %28, metadata !1665, metadata !DIExpression()) #15, !dbg !1666
  %cmp3.i67.i = icmp eq %struct.residue_t* %28, %ap.idx7.val.i, !dbg !1680
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %29 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp4.not.i.i = icmp sle i32 %22, %29
  %or.cond.i68.i = select i1 %cmp3.i67.i, i1 %cmp4.not.i.i, i1 false, !dbg !1682
  %cmp6.not.not.i.i = icmp slt i64 %indvars.iv.i.i, %26
  %or.cond26.i.i = select i1 %or.cond.i68.i, i1 %cmp6.not.not.i.i, i1 false, !dbg !1682
  br i1 %or.cond26.i.i, label %APART.i, label %for.cond.i.i, !dbg !1682, !llvm.loop !1683

if.end61.i:                                       ; preds = %for.cond.i.i, %atom_in_res_pat.exit.i
  %call63160.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1685
  call void @llvm.dbg.value(metadata i8* %call63160.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1425
  %tobool64.not161.i = icmp eq i8* %call63160.i, null, !dbg !1686
  br i1 %tobool64.not161.i, label %if.end16, label %while.body65.i, !dbg !1686

while.body65.i:                                   ; preds = %if.end61.i, %if.end78.i
  %call63162.i = phi i8* [ %call63.i, %if.end78.i ], [ %call63160.i, %if.end61.i ]
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1421, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  %call66.i = call fastcc i32 @is_pattern(i8* noundef nonnull %call63162.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1687
  %tobool67.not.i = icmp eq i32 %call66.i, 0, !dbg !1687
  br i1 %tobool67.not.i, label %if.else73.i, label %if.then68.i, !dbg !1690

if.then68.i:                                      ; preds = %while.body65.i
  %ap.idx4.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1691, !tbaa !1469
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1616, metadata !DIExpression()) #15, !dbg !1694
  call void @llvm.dbg.value(metadata i8* %call63162.i, metadata !1619, metadata !DIExpression()) #15, !dbg !1694
  call void @llvm.dbg.value(metadata %struct.residue_t* %ap.idx4.val.i, metadata !1620, metadata !DIExpression()) #15, !dbg !1694
  call void @llvm.dbg.value(metadata i8* %call63162.i, metadata !583, metadata !DIExpression()) #15, !dbg !1696
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !1696
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !1696
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1698, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call63162.i, metadata !589, metadata !DIExpression()) #15, !dbg !1696
  br label %for.cond.i.i73.i, !dbg !1699

for.cond.i.i73.i:                                 ; preds = %for.inc.i.i83.i, %if.then68.i
  %aep.0.i.i71.i = phi i8* [ %call63162.i, %if.then68.i ], [ %incdec.ptr12.i.i82.i, %for.inc.i.i83.i ], !dbg !1700
  %rep.0.i.i72.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then68.i ], [ %rep.1.i.i81.i, %for.inc.i.i83.i ], !dbg !1696
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i72.i, metadata !590, metadata !DIExpression()) #15, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i71.i, metadata !589, metadata !DIExpression()) #15, !dbg !1696
  %30 = load i8, i8* %aep.0.i.i71.i, align 1, !dbg !1701, !tbaa !525
  switch i8 %30, label %if.else9.i.i80.i [
    i8 0, label %atom_in_res_pat.exit88.i
    i8 42, label %if.then.i.i76.i
    i8 63, label %if.then7.i.i78.i
  ], !dbg !1702

if.then.i.i76.i:                                  ; preds = %for.cond.i.i73.i
  %incdec.ptr2.i.i74.i = getelementptr inbounds i8, i8* %rep.0.i.i72.i, i64 1, !dbg !1703
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i74.i, metadata !590, metadata !DIExpression()) #15, !dbg !1696
  store i8 46, i8* %rep.0.i.i72.i, align 1, !dbg !1704, !tbaa !525
  %incdec.ptr3.i.i75.i = getelementptr inbounds i8, i8* %rep.0.i.i72.i, i64 2, !dbg !1705
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i75.i, metadata !590, metadata !DIExpression()) #15, !dbg !1696
  store i8 42, i8* %incdec.ptr2.i.i74.i, align 1, !dbg !1706, !tbaa !525
  br label %for.inc.i.i83.i, !dbg !1707

if.then7.i.i78.i:                                 ; preds = %for.cond.i.i73.i
  %incdec.ptr8.i.i77.i = getelementptr inbounds i8, i8* %rep.0.i.i72.i, i64 1, !dbg !1708
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i77.i, metadata !590, metadata !DIExpression()) #15, !dbg !1696
  store i8 46, i8* %rep.0.i.i72.i, align 1, !dbg !1709, !tbaa !525
  br label %for.inc.i.i83.i, !dbg !1710

if.else9.i.i80.i:                                 ; preds = %for.cond.i.i73.i
  %incdec.ptr10.i.i79.i = getelementptr inbounds i8, i8* %rep.0.i.i72.i, i64 1, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i79.i, metadata !590, metadata !DIExpression()) #15, !dbg !1696
  store i8 %30, i8* %rep.0.i.i72.i, align 1, !dbg !1712, !tbaa !525
  br label %for.inc.i.i83.i

for.inc.i.i83.i:                                  ; preds = %if.else9.i.i80.i, %if.then7.i.i78.i, %if.then.i.i76.i
  %rep.1.i.i81.i = phi i8* [ %incdec.ptr3.i.i75.i, %if.then.i.i76.i ], [ %incdec.ptr8.i.i77.i, %if.then7.i.i78.i ], [ %incdec.ptr10.i.i79.i, %if.else9.i.i80.i ], !dbg !1713
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i81.i, metadata !590, metadata !DIExpression()) #15, !dbg !1696
  %incdec.ptr12.i.i82.i = getelementptr inbounds i8, i8* %aep.0.i.i71.i, i64 1, !dbg !1714
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i82.i, metadata !589, metadata !DIExpression()) #15, !dbg !1696
  br label %for.cond.i.i73.i, !dbg !1715, !llvm.loop !1716

atom_in_res_pat.exit88.i:                         ; preds = %for.cond.i.i73.i
  %incdec.ptr13.i.i84.i = getelementptr inbounds i8, i8* %rep.0.i.i72.i, i64 1, !dbg !1718
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i84.i, metadata !590, metadata !DIExpression()) #15, !dbg !1696
  store i8 36, i8* %rep.0.i.i72.i, align 1, !dbg !1719, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i84.i, align 1, !dbg !1720, !tbaa !525
  %call.i85.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1721
  %r_resname.i86.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %ap.idx4.val.i, i64 0, i32 4, !dbg !1722
  %31 = load i8*, i8** %r_resname.i86.i, align 8, !dbg !1722, !tbaa !884
  %call1.i87.i = tail call i32 @step(i8* noundef %31, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1723
  %tobool70.not.i = icmp eq i32 %call1.i87.i, 0, !dbg !1691
  br i1 %tobool70.not.i, label %if.end78.i, label %APART.i, !dbg !1724

if.else73.i:                                      ; preds = %while.body65.i
  %32 = load i32, i32* %lo.i, align 4, !dbg !1725, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %32, metadata !1421, metadata !DIExpression()) #15, !dbg !1425
  %33 = load i32, i32* %hi.i, align 4, !dbg !1727, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %33, metadata !1422, metadata !DIExpression()) #15, !dbg !1425
  %ap.idx6.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1728, !tbaa !1469
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1656, metadata !DIExpression()) #15, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %32, metadata !1659, metadata !DIExpression()) #15, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %33, metadata !1660, metadata !DIExpression()) #15, !dbg !1729
  call void @llvm.dbg.value(metadata %struct.residue_t* %ap.idx6.val.i, metadata !1664, metadata !DIExpression()) #15, !dbg !1729
  %r_strand.i89.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %ap.idx6.val.i, i64 0, i32 9, !dbg !1731
  %34 = load %struct.strand_t*, %struct.strand_t** %r_strand.i89.i, align 8, !dbg !1731, !tbaa !1470
  call void @llvm.dbg.value(metadata %struct.strand_t* %34, metadata !1663, metadata !DIExpression()) #15, !dbg !1729
  %cmp.i90.i = icmp eq i32 %33, -1, !dbg !1732
  %s_nresidues.i91.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %34, i64 0, i32 5
  %35 = load i32, i32* %s_nresidues.i91.i, align 8, !tbaa !295
  %.hi.i92.i = select i1 %cmp.i90.i, i32 %35, i32 %33, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %.hi.i92.i, metadata !1662, metadata !DIExpression()) #15, !dbg !1729
  call void @llvm.dbg.value(metadata i32 0, metadata !1661, metadata !DIExpression()) #15, !dbg !1729
  %s_residues.i93.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %34, i64 0, i32 7
  %36 = sext i32 %.hi.i92.i to i64, !dbg !1734
  %smax.i94.i = tail call i32 @llvm.smax.i32(i32 %35, i32 0) #15, !dbg !1734
  %wide.trip.count.i95.i = zext i32 %smax.i94.i to i64, !dbg !1735
  br label %for.cond.i98.i, !dbg !1734

for.cond.i98.i:                                   ; preds = %for.body.i106.i, %if.else73.i
  %indvars.iv.i96.i = phi i64 [ %indvars.iv.next.i101.i, %for.body.i106.i ], [ 0, %if.else73.i ], !dbg !1736
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i96.i, metadata !1661, metadata !DIExpression()) #15, !dbg !1729
  %exitcond.not.i97.i = icmp eq i64 %indvars.iv.i96.i, %wide.trip.count.i95.i, !dbg !1735
  br i1 %exitcond.not.i97.i, label %if.end78.i, label %for.body.i106.i, !dbg !1737

for.body.i106.i:                                  ; preds = %for.cond.i98.i
  %37 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i93.i, align 8, !dbg !1738, !tbaa !301
  %arrayidx.i99.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %37, i64 %indvars.iv.i96.i, !dbg !1739
  %38 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i99.i, align 8, !dbg !1739, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %38, metadata !1665, metadata !DIExpression()) #15, !dbg !1729
  %cmp3.i100.i = icmp eq %struct.residue_t* %38, %ap.idx6.val.i, !dbg !1740
  %indvars.iv.next.i101.i = add nuw nsw i64 %indvars.iv.i96.i, 1
  %39 = trunc i64 %indvars.iv.next.i101.i to i32
  %cmp4.not.i102.i = icmp sle i32 %32, %39
  %or.cond.i103.i = select i1 %cmp3.i100.i, i1 %cmp4.not.i102.i, i1 false, !dbg !1741
  %cmp6.not.not.i104.i = icmp slt i64 %indvars.iv.i96.i, %36
  %or.cond26.i105.i = select i1 %or.cond.i103.i, i1 %cmp6.not.not.i104.i, i1 false, !dbg !1741
  br i1 %or.cond26.i105.i, label %APART.i, label %for.cond.i98.i, !dbg !1741, !llvm.loop !1742

if.end78.i:                                       ; preds = %for.cond.i98.i, %atom_in_res_pat.exit88.i
  %call63.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1685
  call void @llvm.dbg.value(metadata i8* %call63.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1425
  %tobool64.not.i = icmp eq i8* %call63.i, null, !dbg !1686
  br i1 %tobool64.not.i, label %if.end16, label %while.body65.i, !dbg !1686, !llvm.loop !1744

APART.i:                                          ; preds = %for.body.i69.i, %atom_in_res_pat.exit88.i, %for.body.i106.i, %atom_in_res_pat.exit.i, %RPART.i
  call void @llvm.dbg.label(metadata !1424) #15, !dbg !1746
  %40 = load i8*, i8** @apart, align 8, !dbg !1747, !tbaa !281
  %tobool81.not.i = icmp eq i8* %40, null, !dbg !1747
  br i1 %tobool81.not.i, label %atom_in_1_aexpr.exit, label %if.then82.i, !dbg !1749

if.then82.i:                                      ; preds = %APART.i
  %call83.i = tail call i8* @strtok(i8* noundef nonnull %40, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1750
  call void @llvm.dbg.value(metadata i8* %call83.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1425
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1421, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  %call84.i = call fastcc i32 @is_pattern(i8* noundef %call83.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1752
  %tobool85.not.i = icmp eq i32 %call84.i, 0, !dbg !1752
  br i1 %tobool85.not.i, label %cleanup.sink.split.i, label %if.then86.i, !dbg !1754

if.then86.i:                                      ; preds = %if.then82.i
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap, metadata !1755, metadata !DIExpression()) #15, !dbg !1759
  call void @llvm.dbg.value(metadata i8* %call83.i, metadata !1758, metadata !DIExpression()) #15, !dbg !1759
  call void @llvm.dbg.value(metadata i8* %call83.i, metadata !583, metadata !DIExpression()) #15, !dbg !1763
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !1763
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !1763
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1765, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call83.i, metadata !589, metadata !DIExpression()) #15, !dbg !1763
  br label %for.cond.i.i111.i, !dbg !1766

for.cond.i.i111.i:                                ; preds = %for.inc.i.i121.i, %if.then86.i
  %aep.0.i.i109.i = phi i8* [ %call83.i, %if.then86.i ], [ %incdec.ptr12.i.i120.i, %for.inc.i.i121.i ], !dbg !1767
  %rep.0.i.i110.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then86.i ], [ %rep.1.i.i119.i, %for.inc.i.i121.i ], !dbg !1763
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i110.i, metadata !590, metadata !DIExpression()) #15, !dbg !1763
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i109.i, metadata !589, metadata !DIExpression()) #15, !dbg !1763
  %41 = load i8, i8* %aep.0.i.i109.i, align 1, !dbg !1768, !tbaa !525
  switch i8 %41, label %if.else9.i.i118.i [
    i8 0, label %atom_in_atom_pat.exit.i
    i8 42, label %if.then.i.i114.i
    i8 63, label %if.then7.i.i116.i
  ], !dbg !1769

if.then.i.i114.i:                                 ; preds = %for.cond.i.i111.i
  %incdec.ptr2.i.i112.i = getelementptr inbounds i8, i8* %rep.0.i.i110.i, i64 1, !dbg !1770
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i112.i, metadata !590, metadata !DIExpression()) #15, !dbg !1763
  store i8 46, i8* %rep.0.i.i110.i, align 1, !dbg !1771, !tbaa !525
  %incdec.ptr3.i.i113.i = getelementptr inbounds i8, i8* %rep.0.i.i110.i, i64 2, !dbg !1772
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i113.i, metadata !590, metadata !DIExpression()) #15, !dbg !1763
  store i8 42, i8* %incdec.ptr2.i.i112.i, align 1, !dbg !1773, !tbaa !525
  br label %for.inc.i.i121.i, !dbg !1774

if.then7.i.i116.i:                                ; preds = %for.cond.i.i111.i
  %incdec.ptr8.i.i115.i = getelementptr inbounds i8, i8* %rep.0.i.i110.i, i64 1, !dbg !1775
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i115.i, metadata !590, metadata !DIExpression()) #15, !dbg !1763
  store i8 46, i8* %rep.0.i.i110.i, align 1, !dbg !1776, !tbaa !525
  br label %for.inc.i.i121.i, !dbg !1777

if.else9.i.i118.i:                                ; preds = %for.cond.i.i111.i
  %incdec.ptr10.i.i117.i = getelementptr inbounds i8, i8* %rep.0.i.i110.i, i64 1, !dbg !1778
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i117.i, metadata !590, metadata !DIExpression()) #15, !dbg !1763
  store i8 %41, i8* %rep.0.i.i110.i, align 1, !dbg !1779, !tbaa !525
  br label %for.inc.i.i121.i

for.inc.i.i121.i:                                 ; preds = %if.else9.i.i118.i, %if.then7.i.i116.i, %if.then.i.i114.i
  %rep.1.i.i119.i = phi i8* [ %incdec.ptr3.i.i113.i, %if.then.i.i114.i ], [ %incdec.ptr8.i.i115.i, %if.then7.i.i116.i ], [ %incdec.ptr10.i.i117.i, %if.else9.i.i118.i ], !dbg !1780
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i119.i, metadata !590, metadata !DIExpression()) #15, !dbg !1763
  %incdec.ptr12.i.i120.i = getelementptr inbounds i8, i8* %aep.0.i.i109.i, i64 1, !dbg !1781
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i120.i, metadata !589, metadata !DIExpression()) #15, !dbg !1763
  br label %for.cond.i.i111.i, !dbg !1782, !llvm.loop !1783

atom_in_atom_pat.exit.i:                          ; preds = %for.cond.i.i111.i
  %incdec.ptr13.i.i122.i = getelementptr inbounds i8, i8* %rep.0.i.i110.i, i64 1, !dbg !1785
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i122.i, metadata !590, metadata !DIExpression()) #15, !dbg !1763
  store i8 36, i8* %rep.0.i.i110.i, align 1, !dbg !1786, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i122.i, align 1, !dbg !1787, !tbaa !525
  %call.i123.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1788
  %42 = load i8*, i8** %a_atomname.i.i, align 8, !dbg !1789, !tbaa !1234
  %call1.i124.i = tail call i32 @step(i8* noundef %42, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1790
  %tobool88.not.i = icmp eq i32 %call1.i124.i, 0, !dbg !1791
  br i1 %tobool88.not.i, label %while.cond94.i, label %atom_in_1_aexpr.exit, !dbg !1792

while.cond94.i:                                   ; preds = %atom_in_atom_pat.exit.i, %atom_in_atom_pat.exit142.i
  %call95.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1793
  call void @llvm.dbg.value(metadata i8* %call95.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1425
  %tobool96.not.i = icmp eq i8* %call95.i, null, !dbg !1794
  br i1 %tobool96.not.i, label %if.end16, label %while.body97.i, !dbg !1794

while.body97.i:                                   ; preds = %while.cond94.i
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1421, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1425
  %call98.i = call fastcc i32 @is_pattern(i8* noundef nonnull %call95.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1795
  %tobool99.not.i = icmp eq i32 %call98.i, 0, !dbg !1795
  br i1 %tobool99.not.i, label %cleanup.sink.split.i, label %if.then100.i, !dbg !1798

if.then100.i:                                     ; preds = %while.body97.i
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap, metadata !1755, metadata !DIExpression()) #15, !dbg !1799
  call void @llvm.dbg.value(metadata i8* %call95.i, metadata !1758, metadata !DIExpression()) #15, !dbg !1799
  call void @llvm.dbg.value(metadata i8* %call95.i, metadata !583, metadata !DIExpression()) #15, !dbg !1803
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()) #15, !dbg !1803
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()) #15, !dbg !1803
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1805, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %call95.i, metadata !589, metadata !DIExpression()) #15, !dbg !1803
  br label %for.cond.i.i127.i, !dbg !1806

for.cond.i.i127.i:                                ; preds = %for.inc.i.i137.i, %if.then100.i
  %aep.0.i.i125.i = phi i8* [ %call95.i, %if.then100.i ], [ %incdec.ptr12.i.i136.i, %for.inc.i.i137.i ], !dbg !1807
  %rep.0.i.i126.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then100.i ], [ %rep.1.i.i135.i, %for.inc.i.i137.i ], !dbg !1803
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i126.i, metadata !590, metadata !DIExpression()) #15, !dbg !1803
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i125.i, metadata !589, metadata !DIExpression()) #15, !dbg !1803
  %43 = load i8, i8* %aep.0.i.i125.i, align 1, !dbg !1808, !tbaa !525
  switch i8 %43, label %if.else9.i.i134.i [
    i8 0, label %atom_in_atom_pat.exit142.i
    i8 42, label %if.then.i.i130.i
    i8 63, label %if.then7.i.i132.i
  ], !dbg !1809

if.then.i.i130.i:                                 ; preds = %for.cond.i.i127.i
  %incdec.ptr2.i.i128.i = getelementptr inbounds i8, i8* %rep.0.i.i126.i, i64 1, !dbg !1810
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i128.i, metadata !590, metadata !DIExpression()) #15, !dbg !1803
  store i8 46, i8* %rep.0.i.i126.i, align 1, !dbg !1811, !tbaa !525
  %incdec.ptr3.i.i129.i = getelementptr inbounds i8, i8* %rep.0.i.i126.i, i64 2, !dbg !1812
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i129.i, metadata !590, metadata !DIExpression()) #15, !dbg !1803
  store i8 42, i8* %incdec.ptr2.i.i128.i, align 1, !dbg !1813, !tbaa !525
  br label %for.inc.i.i137.i, !dbg !1814

if.then7.i.i132.i:                                ; preds = %for.cond.i.i127.i
  %incdec.ptr8.i.i131.i = getelementptr inbounds i8, i8* %rep.0.i.i126.i, i64 1, !dbg !1815
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i131.i, metadata !590, metadata !DIExpression()) #15, !dbg !1803
  store i8 46, i8* %rep.0.i.i126.i, align 1, !dbg !1816, !tbaa !525
  br label %for.inc.i.i137.i, !dbg !1817

if.else9.i.i134.i:                                ; preds = %for.cond.i.i127.i
  %incdec.ptr10.i.i133.i = getelementptr inbounds i8, i8* %rep.0.i.i126.i, i64 1, !dbg !1818
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i133.i, metadata !590, metadata !DIExpression()) #15, !dbg !1803
  store i8 %43, i8* %rep.0.i.i126.i, align 1, !dbg !1819, !tbaa !525
  br label %for.inc.i.i137.i

for.inc.i.i137.i:                                 ; preds = %if.else9.i.i134.i, %if.then7.i.i132.i, %if.then.i.i130.i
  %rep.1.i.i135.i = phi i8* [ %incdec.ptr3.i.i129.i, %if.then.i.i130.i ], [ %incdec.ptr8.i.i131.i, %if.then7.i.i132.i ], [ %incdec.ptr10.i.i133.i, %if.else9.i.i134.i ], !dbg !1820
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i135.i, metadata !590, metadata !DIExpression()) #15, !dbg !1803
  %incdec.ptr12.i.i136.i = getelementptr inbounds i8, i8* %aep.0.i.i125.i, i64 1, !dbg !1821
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i136.i, metadata !589, metadata !DIExpression()) #15, !dbg !1803
  br label %for.cond.i.i127.i, !dbg !1822, !llvm.loop !1823

atom_in_atom_pat.exit142.i:                       ; preds = %for.cond.i.i127.i
  %incdec.ptr13.i.i138.i = getelementptr inbounds i8, i8* %rep.0.i.i126.i, i64 1, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i138.i, metadata !590, metadata !DIExpression()) #15, !dbg !1803
  store i8 36, i8* %rep.0.i.i126.i, align 1, !dbg !1826, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i.i138.i, align 1, !dbg !1827, !tbaa !525
  %call.i139.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1828
  %44 = load i8*, i8** %a_atomname.i.i, align 8, !dbg !1829, !tbaa !1234
  %call1.i141.i = tail call i32 @step(i8* noundef %44, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1830
  %tobool102.not.i = icmp eq i32 %call1.i141.i, 0, !dbg !1831
  br i1 %tobool102.not.i, label %while.cond94.i, label %atom_in_1_aexpr.exit, !dbg !1832, !llvm.loop !1833

cleanup.sink.split.i:                             ; preds = %while.body97.i, %if.then82.i
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1835, !tbaa !281
  %46 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %45) #17, !dbg !1835
  br label %if.end16, !dbg !1836

atom_in_1_aexpr.exit:                             ; preds = %APART.i, %atom_in_atom_pat.exit.i, %atom_in_atom_pat.exit142.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15, !dbg !1836
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15, !dbg !1836
  br label %cleanup, !dbg !1837

if.end16:                                         ; preds = %if.end44.i, %if.end78.i, %while.cond94.i, %if.end61.i, %if.end29.i, %cleanup.sink.split.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15, !dbg !1836
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15, !dbg !1836
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !1382, metadata !DIExpression()), !dbg !1385
  %tobool17.not = icmp eq i8* %n_aep.1, null, !dbg !1838
  br i1 %tobool17.not, label %cleanup, label %if.end20, !dbg !1840

if.end20:                                         ; preds = %if.end16
  %call19 = tail call i8* @strchr(i8* noundef nonnull %n_aep.1, i32 noundef 124) #14, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %call19, metadata !1383, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !1382, metadata !DIExpression()), !dbg !1385
  br label %for.body, !dbg !1391

cleanup:                                          ; preds = %if.end16, %atom_in_1_aexpr.exit, %entry, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %entry ], [ 1, %atom_in_1_aexpr.exit ], [ 0, %if.end16 ], !dbg !1385
  ret i32 %retval.0, !dbg !1842
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @set_attr_if(%struct.molecule_t* nocapture noundef readonly %mol, i32 noundef %attr, i32 noundef %i_attr) local_unnamed_addr #5 !dbg !1843 {
entry:
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1845, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %attr, metadata !1846, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %i_attr, metadata !1847, metadata !DIExpression()), !dbg !1853
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1854
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1850, metadata !DIExpression()), !dbg !1853
  %sp.057 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !1856, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.057, metadata !1850, metadata !DIExpression()), !dbg !1853
  %tobool.not58 = icmp eq %struct.strand_t* %sp.057, null, !dbg !1857
  br i1 %tobool.not58, label %for.end30, label %for.body, !dbg !1857

for.body:                                         ; preds = %entry, %for.inc29
  %sp.059 = phi %struct.strand_t* [ %sp.0, %for.inc29 ], [ %sp.057, %entry ]
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.059, i64 0, i32 2, !dbg !1858
  %0 = load i32, i32* %s_attr, align 4, !dbg !1858, !tbaa !290
  %and = and i32 %0, %i_attr, !dbg !1861
  %tobool1.not = icmp eq i32 %and, 0, !dbg !1861
  %cond = select i1 %tobool1.not, i32 0, i32 %attr, !dbg !1862
  %or = or i32 %cond, %0, !dbg !1863
  store i32 %or, i32* %s_attr, align 4, !dbg !1863, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !1849, metadata !DIExpression()), !dbg !1853
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.059, i64 0, i32 5
  %1 = load i32, i32* %s_nresidues, align 8, !tbaa !295
  call void @llvm.dbg.value(metadata i32 0, metadata !1849, metadata !DIExpression()), !dbg !1853
  %cmp55 = icmp sgt i32 %1, 0, !dbg !1864
  br i1 %cmp55, label %for.body4.lr.ph, label %for.inc29, !dbg !1867

for.body4.lr.ph:                                  ; preds = %for.body
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.059, i64 0, i32 7
  %2 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !tbaa !301
  %wide.trip.count64 = zext i32 %1 to i64, !dbg !1864
  br label %for.body4, !dbg !1867

for.body4:                                        ; preds = %for.body4.lr.ph, %for.inc26
  %indvars.iv61 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next62, %for.inc26 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv61, metadata !1849, metadata !DIExpression()), !dbg !1853
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %2, i64 %indvars.iv61, !dbg !1868
  %3 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !1868, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !1851, metadata !DIExpression()), !dbg !1853
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 6, !dbg !1870
  %4 = load i32, i32* %r_attr, align 8, !dbg !1870, !tbaa !306
  %and5 = and i32 %4, %i_attr, !dbg !1871
  %tobool6.not = icmp eq i32 %and5, 0, !dbg !1871
  %cond10 = select i1 %tobool6.not, i32 0, i32 %attr, !dbg !1872
  %or12 = or i32 %cond10, %4, !dbg !1873
  store i32 %or12, i32* %r_attr, align 8, !dbg !1873, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !1848, metadata !DIExpression()), !dbg !1853
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 15
  %5 = load i32, i32* %r_natoms, align 8, !tbaa !310
  call void @llvm.dbg.value(metadata i32 0, metadata !1848, metadata !DIExpression()), !dbg !1853
  %cmp1453 = icmp sgt i32 %5, 0, !dbg !1874
  br i1 %cmp1453, label %for.body15.lr.ph, label %for.inc26, !dbg !1877

for.body15.lr.ph:                                 ; preds = %for.body4
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17
  %6 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !tbaa !316
  %wide.trip.count = zext i32 %5 to i64, !dbg !1874
  %xtraiter = and i64 %wide.trip.count, 1, !dbg !1877
  %7 = icmp eq i32 %5, 1, !dbg !1877
  br i1 %7, label %for.inc26.loopexit.unr-lcssa, label %for.body15.lr.ph.new, !dbg !1877

for.body15.lr.ph.new:                             ; preds = %for.body15.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294, !dbg !1877
  br label %for.body15, !dbg !1877

for.body15:                                       ; preds = %for.body15, %for.body15.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body15.lr.ph.new ], [ %indvars.iv.next.1, %for.body15 ]
  %niter = phi i64 [ 0, %for.body15.lr.ph.new ], [ %niter.next.1, %for.body15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1848, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %6, i64 %indvars.iv), metadata !1852, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1853
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv, i32 2, !dbg !1878
  %8 = load i32, i32* %a_attr, align 8, !dbg !1878, !tbaa !320
  %and18 = and i32 %8, %i_attr, !dbg !1880
  %tobool19.not = icmp eq i32 %and18, 0, !dbg !1880
  %cond23 = select i1 %tobool19.not, i32 0, i32 %attr, !dbg !1881
  %or25 = or i32 %cond23, %8, !dbg !1882
  store i32 %or25, i32* %a_attr, align 8, !dbg !1882, !tbaa !320
  %indvars.iv.next = or i64 %indvars.iv, 1, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1848, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1848, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %6, i64 %indvars.iv.next), metadata !1852, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1853
  %a_attr.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.next, i32 2, !dbg !1878
  %9 = load i32, i32* %a_attr.1, align 8, !dbg !1878, !tbaa !320
  %and18.1 = and i32 %9, %i_attr, !dbg !1880
  %tobool19.not.1 = icmp eq i32 %and18.1, 0, !dbg !1880
  %cond23.1 = select i1 %tobool19.not.1, i32 0, i32 %attr, !dbg !1881
  %or25.1 = or i32 %cond23.1, %9, !dbg !1882
  store i32 %or25.1, i32* %a_attr.1, align 8, !dbg !1882, !tbaa !320
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !1848, metadata !DIExpression()), !dbg !1853
  %niter.next.1 = add i64 %niter, 2, !dbg !1877
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1877
  br i1 %niter.ncmp.1, label %for.inc26.loopexit.unr-lcssa, label %for.body15, !dbg !1877, !llvm.loop !1884

for.inc26.loopexit.unr-lcssa:                     ; preds = %for.body15, %for.body15.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next.1, %for.body15 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1877
  br i1 %lcmp.mod.not, label %for.inc26, label %for.body15.epil, !dbg !1877

for.body15.epil:                                  ; preds = %for.inc26.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %indvars.iv.unr, metadata !1848, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %6, i64 %indvars.iv.unr), metadata !1852, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1853
  %a_attr.epil = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.unr, i32 2, !dbg !1878
  %10 = load i32, i32* %a_attr.epil, align 8, !dbg !1878, !tbaa !320
  %and18.epil = and i32 %10, %i_attr, !dbg !1880
  %tobool19.not.epil = icmp eq i32 %and18.epil, 0, !dbg !1880
  %cond23.epil = select i1 %tobool19.not.epil, i32 0, i32 %attr, !dbg !1881
  %or25.epil = or i32 %cond23.epil, %10, !dbg !1882
  store i32 %or25.epil, i32* %a_attr.epil, align 8, !dbg !1882, !tbaa !320
  call void @llvm.dbg.value(metadata i64 %indvars.iv.unr, metadata !1848, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1853
  br label %for.inc26, !dbg !1886

for.inc26:                                        ; preds = %for.body15.epil, %for.inc26.loopexit.unr-lcssa, %for.body4
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next62, metadata !1849, metadata !DIExpression()), !dbg !1853
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64, !dbg !1864
  br i1 %exitcond65.not, label %for.inc29, label %for.body4, !dbg !1867, !llvm.loop !1887

for.inc29:                                        ; preds = %for.inc26, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.059, i64 0, i32 4, !dbg !1889
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1850, metadata !DIExpression()), !dbg !1853
  %sp.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !1856, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0, metadata !1850, metadata !DIExpression()), !dbg !1853
  %tobool.not = icmp eq %struct.strand_t* %sp.0, null, !dbg !1857
  br i1 %tobool.not, label %for.end30, label %for.body, !dbg !1857, !llvm.loop !1890

for.end30:                                        ; preds = %for.inc29, %entry
  ret void, !dbg !1892
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @clear_attr(%struct.molecule_t* nocapture noundef readonly %mol, i32 noundef %attr) local_unnamed_addr #5 !dbg !1893 {
entry:
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1897, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %attr, metadata !1898, metadata !DIExpression()), !dbg !1903
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1904
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1901, metadata !DIExpression()), !dbg !1903
  %neg = xor i32 %attr, -1
  %sp.037 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !1906, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.037, metadata !1901, metadata !DIExpression()), !dbg !1903
  %tobool.not38 = icmp eq %struct.strand_t* %sp.037, null, !dbg !1907
  br i1 %tobool.not38, label %for.end16, label %for.body, !dbg !1907

for.body:                                         ; preds = %entry, %for.inc15
  %sp.039 = phi %struct.strand_t* [ %sp.0, %for.inc15 ], [ %sp.037, %entry ]
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.039, i64 0, i32 2, !dbg !1908
  %0 = load i32, i32* %s_attr, align 4, !dbg !1911, !tbaa !290
  %and = and i32 %0, %neg, !dbg !1911
  store i32 %and, i32* %s_attr, align 4, !dbg !1911, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !1900, metadata !DIExpression()), !dbg !1903
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.039, i64 0, i32 5
  %1 = load i32, i32* %s_nresidues, align 8, !tbaa !295
  call void @llvm.dbg.value(metadata i32 0, metadata !1900, metadata !DIExpression()), !dbg !1903
  %cmp35 = icmp sgt i32 %1, 0, !dbg !1912
  br i1 %cmp35, label %for.body2.lr.ph, label %for.inc15, !dbg !1915

for.body2.lr.ph:                                  ; preds = %for.body
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.039, i64 0, i32 7
  %2 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !tbaa !301
  %wide.trip.count44 = zext i32 %1 to i64, !dbg !1912
  br label %for.body2, !dbg !1915

for.body2:                                        ; preds = %for.body2.lr.ph, %for.inc12
  %indvars.iv41 = phi i64 [ 0, %for.body2.lr.ph ], [ %indvars.iv.next42, %for.inc12 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv41, metadata !1900, metadata !DIExpression()), !dbg !1903
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %2, i64 %indvars.iv41, !dbg !1916
  %3 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !1916, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !1902, metadata !DIExpression()), !dbg !1903
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 6, !dbg !1918
  %4 = load i32, i32* %r_attr, align 8, !dbg !1919, !tbaa !306
  %and4 = and i32 %4, %neg, !dbg !1919
  store i32 %and4, i32* %r_attr, align 8, !dbg !1919, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !1899, metadata !DIExpression()), !dbg !1903
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 15
  %5 = load i32, i32* %r_natoms, align 8, !tbaa !310
  call void @llvm.dbg.value(metadata i32 0, metadata !1899, metadata !DIExpression()), !dbg !1903
  %cmp633 = icmp sgt i32 %5, 0, !dbg !1920
  br i1 %cmp633, label %for.body7.lr.ph, label %for.inc12, !dbg !1923

for.body7.lr.ph:                                  ; preds = %for.body2
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17
  %6 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !tbaa !316
  %wide.trip.count = zext i32 %5 to i64, !dbg !1920
  %7 = add nsw i64 %wide.trip.count, -1, !dbg !1923
  %xtraiter = and i64 %wide.trip.count, 3, !dbg !1923
  %8 = icmp ult i64 %7, 3, !dbg !1923
  br i1 %8, label %for.inc12.loopexit.unr-lcssa, label %for.body7.lr.ph.new, !dbg !1923

for.body7.lr.ph.new:                              ; preds = %for.body7.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292, !dbg !1923
  br label %for.body7, !dbg !1923

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph.new ], [ %indvars.iv.next.3, %for.body7 ]
  %niter = phi i64 [ 0, %for.body7.lr.ph.new ], [ %niter.next.3, %for.body7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1899, metadata !DIExpression()), !dbg !1903
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv, i32 2, !dbg !1924
  %9 = load i32, i32* %a_attr, align 8, !dbg !1925, !tbaa !320
  %and11 = and i32 %9, %neg, !dbg !1925
  store i32 %and11, i32* %a_attr, align 8, !dbg !1925, !tbaa !320
  %indvars.iv.next = or i64 %indvars.iv, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1899, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1899, metadata !DIExpression()), !dbg !1903
  %a_attr.1 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.next, i32 2, !dbg !1924
  %10 = load i32, i32* %a_attr.1, align 8, !dbg !1925, !tbaa !320
  %and11.1 = and i32 %10, %neg, !dbg !1925
  store i32 %and11.1, i32* %a_attr.1, align 8, !dbg !1925, !tbaa !320
  %indvars.iv.next.1 = or i64 %indvars.iv, 2, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !1899, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !1899, metadata !DIExpression()), !dbg !1903
  %a_attr.2 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.next.1, i32 2, !dbg !1924
  %11 = load i32, i32* %a_attr.2, align 8, !dbg !1925, !tbaa !320
  %and11.2 = and i32 %11, %neg, !dbg !1925
  store i32 %and11.2, i32* %a_attr.2, align 8, !dbg !1925, !tbaa !320
  %indvars.iv.next.2 = or i64 %indvars.iv, 3, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !1899, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !1899, metadata !DIExpression()), !dbg !1903
  %a_attr.3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.next.2, i32 2, !dbg !1924
  %12 = load i32, i32* %a_attr.3, align 8, !dbg !1925, !tbaa !320
  %and11.3 = and i32 %12, %neg, !dbg !1925
  store i32 %and11.3, i32* %a_attr.3, align 8, !dbg !1925, !tbaa !320
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.3, metadata !1899, metadata !DIExpression()), !dbg !1903
  %niter.next.3 = add i64 %niter, 4, !dbg !1923
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !1923
  br i1 %niter.ncmp.3, label %for.inc12.loopexit.unr-lcssa, label %for.body7, !dbg !1923, !llvm.loop !1927

for.inc12.loopexit.unr-lcssa:                     ; preds = %for.body7, %for.body7.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next.3, %for.body7 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1923
  br i1 %lcmp.mod.not, label %for.inc12, label %for.body7.epil, !dbg !1923

for.body7.epil:                                   ; preds = %for.inc12.loopexit.unr-lcssa, %for.body7.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body7.epil ], [ %indvars.iv.unr, %for.inc12.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body7.epil ], [ 0, %for.inc12.loopexit.unr-lcssa ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.epil, metadata !1899, metadata !DIExpression()), !dbg !1903
  %a_attr.epil = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.epil, i32 2, !dbg !1924
  %13 = load i32, i32* %a_attr.epil, align 8, !dbg !1925, !tbaa !320
  %and11.epil = and i32 %13, %neg, !dbg !1925
  store i32 %and11.epil, i32* %a_attr.epil, align 8, !dbg !1925, !tbaa !320
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.epil, metadata !1899, metadata !DIExpression()), !dbg !1903
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !1923
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !1923
  br i1 %epil.iter.cmp.not, label %for.inc12, label %for.body7.epil, !dbg !1923, !llvm.loop !1929

for.inc12:                                        ; preds = %for.inc12.loopexit.unr-lcssa, %for.body7.epil, %for.body2
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next42, metadata !1900, metadata !DIExpression()), !dbg !1903
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44, !dbg !1912
  br i1 %exitcond45.not, label %for.inc15, label %for.body2, !dbg !1915, !llvm.loop !1931

for.inc15:                                        ; preds = %for.inc12, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.039, i64 0, i32 4, !dbg !1933
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1901, metadata !DIExpression()), !dbg !1903
  %sp.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !1906, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0, metadata !1901, metadata !DIExpression()), !dbg !1903
  %tobool.not = icmp eq %struct.strand_t* %sp.0, null, !dbg !1907
  br i1 %tobool.not, label %for.end16, label %for.body, !dbg !1907, !llvm.loop !1934

for.end16:                                        ; preds = %for.inc15, %entry
  ret void, !dbg !1936
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i8* @strtok(i8* noundef, i8* nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc i32 @is_pattern(i8* nocapture noundef readonly %item, i32* nocapture noundef writeonly %lo, i32* nocapture noundef writeonly %hi) unnamed_addr #7 !dbg !673 {
entry:
  call void @llvm.dbg.value(metadata i8* %item, metadata !672, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32* %lo, metadata !678, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32* %hi, metadata !679, metadata !DIExpression()), !dbg !1937
  %call = tail call i16** @__ctype_b_loc() #16, !dbg !1938
  %0 = load i16*, i16** %call, align 8, !dbg !1938, !tbaa !281
  %1 = load i8, i8* %item, align 1, !dbg !1938, !tbaa !525
  %idxprom = sext i8 %1 to i64, !dbg !1938
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom, !dbg !1938
  %2 = load i16, i16* %arrayidx, align 2, !dbg !1938, !tbaa !688
  %3 = and i16 %2, 2048, !dbg !1938
  %tobool.not = icmp ne i16 %3, 0, !dbg !1938
  %cmp.not = icmp eq i8 %1, 45
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not, !dbg !1939
  br i1 %or.cond, label %if.end, label %cleanup, !dbg !1939

if.end:                                           ; preds = %entry
  %tobool10.not = icmp eq i16 %3, 0, !dbg !1940
  br i1 %tobool10.not, label %if.else59, label %for.body, !dbg !1941

for.body:                                         ; preds = %if.end, %for.body
  %4 = phi i8 [ %5, %for.body ], [ %1, %if.end ]
  %ip.0133 = phi i8* [ %incdec.ptr, %for.body ], [ %item, %if.end ]
  %val.0132 = phi i32 [ %sub, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i8* %ip.0133, metadata !681, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 %val.0132, metadata !680, metadata !DIExpression()), !dbg !1937
  %conv13 = sext i8 %4 to i32, !dbg !1942
  %mul = mul nsw i32 %val.0132, 10, !dbg !1943
  %add = add i32 %mul, -48, !dbg !1944
  %sub = add i32 %add, %conv13, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %sub, metadata !680, metadata !DIExpression()), !dbg !1937
  %incdec.ptr = getelementptr inbounds i8, i8* %ip.0133, i64 1, !dbg !1946
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !681, metadata !DIExpression()), !dbg !1937
  %5 = load i8, i8* %incdec.ptr, align 1, !dbg !1942, !tbaa !525
  %idxprom14 = sext i8 %5 to i64, !dbg !1942
  %arrayidx15 = getelementptr inbounds i16, i16* %0, i64 %idxprom14, !dbg !1942
  %6 = load i16, i16* %arrayidx15, align 2, !dbg !1942, !tbaa !688
  %7 = and i16 %6, 2048, !dbg !1942
  %tobool18.not = icmp eq i16 %7, 0, !dbg !1947
  br i1 %tobool18.not, label %for.end, label %for.body, !dbg !1947, !llvm.loop !1948

for.end:                                          ; preds = %for.body
  store i32 %sub, i32* %lo, align 4, !dbg !1950, !tbaa !637
  %8 = load i8, i8* %incdec.ptr, align 1, !dbg !1951, !tbaa !525
  switch i8 %8, label %if.end28 [
    i8 0, label %if.then21
    i8 45, label %if.then25
  ], !dbg !1952

if.then21:                                        ; preds = %for.end
  store i32 %sub, i32* %hi, align 4, !dbg !1953, !tbaa !637
  br label %cleanup, !dbg !1954

if.then25:                                        ; preds = %for.end
  %incdec.ptr26 = getelementptr inbounds i8, i8* %ip.0133, i64 2, !dbg !1955
  call void @llvm.dbg.value(metadata i8* %incdec.ptr26, metadata !681, metadata !DIExpression()), !dbg !1937
  %.pr = load i8, i8* %incdec.ptr26, align 1, !dbg !1956, !tbaa !525
  br label %if.end28, !dbg !1957

if.end28:                                         ; preds = %for.end, %if.then25
  %9 = phi i8 [ %8, %for.end ], [ %.pr, %if.then25 ], !dbg !1956
  %ip.1 = phi i8* [ %incdec.ptr, %for.end ], [ %incdec.ptr26, %if.then25 ], !dbg !1958
  call void @llvm.dbg.value(metadata i8* %ip.1, metadata !681, metadata !DIExpression()), !dbg !1937
  %tobool29.not = icmp eq i8 %9, 0, !dbg !1956
  br i1 %tobool29.not, label %if.then30, label %if.else31, !dbg !1959

if.then30:                                        ; preds = %if.end28
  store i32 -1, i32* %hi, align 4, !dbg !1960, !tbaa !637
  br label %cleanup, !dbg !1961

if.else31:                                        ; preds = %if.end28
  %idxprom34 = sext i8 %9 to i64, !dbg !1962
  %arrayidx35 = getelementptr inbounds i16, i16* %0, i64 %idxprom34, !dbg !1962
  %10 = load i16, i16* %arrayidx35, align 2, !dbg !1962, !tbaa !688
  %11 = and i16 %10, 2048, !dbg !1962
  %tobool38.not = icmp eq i16 %11, 0, !dbg !1962
  br i1 %tobool38.not, label %cleanup, label %for.body50, !dbg !1963

for.body50:                                       ; preds = %if.else31, %for.body50
  %12 = phi i8 [ %13, %for.body50 ], [ %9, %if.else31 ]
  %ip.2139 = phi i8* [ %incdec.ptr56, %for.body50 ], [ %ip.1, %if.else31 ]
  %val.1138 = phi i32 [ %sub54, %for.body50 ], [ 0, %if.else31 ]
  call void @llvm.dbg.value(metadata i8* %ip.2139, metadata !681, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 %val.1138, metadata !680, metadata !DIExpression()), !dbg !1937
  %conv44 = sext i8 %12 to i32, !dbg !1964
  %mul51 = mul nsw i32 %val.1138, 10, !dbg !1965
  %add53 = add i32 %mul51, -48, !dbg !1966
  %sub54 = add i32 %add53, %conv44, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %sub54, metadata !680, metadata !DIExpression()), !dbg !1937
  %incdec.ptr56 = getelementptr inbounds i8, i8* %ip.2139, i64 1, !dbg !1968
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56, metadata !681, metadata !DIExpression()), !dbg !1937
  %13 = load i8, i8* %incdec.ptr56, align 1, !dbg !1964, !tbaa !525
  %idxprom45 = sext i8 %13 to i64, !dbg !1964
  %arrayidx46 = getelementptr inbounds i16, i16* %0, i64 %idxprom45, !dbg !1964
  %14 = load i16, i16* %arrayidx46, align 2, !dbg !1964, !tbaa !688
  %15 = and i16 %14, 2048, !dbg !1964
  %tobool49.not = icmp eq i16 %15, 0, !dbg !1969
  br i1 %tobool49.not, label %for.end57, label %for.body50, !dbg !1969, !llvm.loop !1970

for.end57:                                        ; preds = %for.body50
  store i32 %sub54, i32* %hi, align 4, !dbg !1972, !tbaa !637
  %16 = load i8, i8* %incdec.ptr56, align 1, !dbg !1973, !tbaa !525
  %conv58 = sext i8 %16 to i32, !dbg !1974
  br label %cleanup, !dbg !1975

if.else59:                                        ; preds = %if.end
  store i32 1, i32* %lo, align 4, !dbg !1976, !tbaa !637
  %arrayidx60 = getelementptr inbounds i8, i8* %item, i64 1, !dbg !1977
  call void @llvm.dbg.value(metadata i8* %arrayidx60, metadata !681, metadata !DIExpression()), !dbg !1937
  %17 = load i8, i8* %arrayidx60, align 1, !dbg !1978, !tbaa !525
  %tobool62.not = icmp eq i8 %17, 0, !dbg !1978
  br i1 %tobool62.not, label %if.then63, label %if.else64, !dbg !1979

if.then63:                                        ; preds = %if.else59
  store i32 -1, i32* %hi, align 4, !dbg !1980, !tbaa !637
  br label %cleanup, !dbg !1981

if.else64:                                        ; preds = %if.else59
  %idxprom67 = sext i8 %17 to i64, !dbg !1982
  %arrayidx68 = getelementptr inbounds i16, i16* %0, i64 %idxprom67, !dbg !1982
  %18 = load i16, i16* %arrayidx68, align 2, !dbg !1982, !tbaa !688
  %19 = and i16 %18, 2048, !dbg !1982
  %tobool71.not = icmp eq i16 %19, 0, !dbg !1982
  br i1 %tobool71.not, label %cleanup, label %for.body81, !dbg !1983

for.body81:                                       ; preds = %if.else64, %for.body81
  %20 = phi i8 [ %21, %for.body81 ], [ %17, %if.else64 ]
  %ip.3146 = phi i8* [ %incdec.ptr87, %for.body81 ], [ %arrayidx60, %if.else64 ]
  %val.2145 = phi i32 [ %sub85, %for.body81 ], [ 0, %if.else64 ]
  call void @llvm.dbg.value(metadata i8* %ip.3146, metadata !681, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 %val.2145, metadata !680, metadata !DIExpression()), !dbg !1937
  %conv75 = sext i8 %20 to i32, !dbg !1984
  %mul82 = mul nsw i32 %val.2145, 10, !dbg !1985
  %add84 = add i32 %mul82, -48, !dbg !1986
  %sub85 = add i32 %add84, %conv75, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %sub85, metadata !680, metadata !DIExpression()), !dbg !1937
  %incdec.ptr87 = getelementptr inbounds i8, i8* %ip.3146, i64 1, !dbg !1988
  call void @llvm.dbg.value(metadata i8* %incdec.ptr87, metadata !681, metadata !DIExpression()), !dbg !1937
  %21 = load i8, i8* %incdec.ptr87, align 1, !dbg !1984, !tbaa !525
  %idxprom76 = sext i8 %21 to i64, !dbg !1984
  %arrayidx77 = getelementptr inbounds i16, i16* %0, i64 %idxprom76, !dbg !1984
  %22 = load i16, i16* %arrayidx77, align 2, !dbg !1984, !tbaa !688
  %23 = and i16 %22, 2048, !dbg !1984
  %tobool80.not = icmp eq i16 %23, 0, !dbg !1989
  br i1 %tobool80.not, label %for.end88, label %for.body81, !dbg !1989, !llvm.loop !1990

for.end88:                                        ; preds = %for.body81
  store i32 %sub85, i32* %hi, align 4, !dbg !1992, !tbaa !637
  %24 = load i8, i8* %incdec.ptr87, align 1, !dbg !1993, !tbaa !525
  %conv89 = sext i8 %24 to i32, !dbg !1994
  br label %cleanup, !dbg !1995

cleanup:                                          ; preds = %if.else64, %if.else31, %entry, %for.end88, %if.then63, %for.end57, %if.then30, %if.then21
  %retval.0 = phi i32 [ %conv58, %for.end57 ], [ 0, %if.then30 ], [ 0, %if.then21 ], [ %conv89, %for.end88 ], [ 0, %if.then63 ], [ 1, %entry ], [ 1, %if.else31 ], [ 0, %if.else64 ], !dbg !1937
  ret i32 %retval.0, !dbg !1996
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_atom_pat(%struct.molecule_t* nocapture noundef readonly %mol, i8* nocapture noundef readonly %pat) unnamed_addr #0 !dbg !1167 {
entry:
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1166, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %pat, metadata !1169, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %pat, metadata !583, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !588, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !590, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !590, metadata !DIExpression()), !dbg !1998
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !2000, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %pat, metadata !589, metadata !DIExpression()), !dbg !1998
  br label %for.cond.i, !dbg !2001

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %aep.0.i = phi i8* [ %pat, %entry ], [ %incdec.ptr12.i, %for.inc.i ], !dbg !2002
  %rep.0.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %entry ], [ %rep.1.i, %for.inc.i ], !dbg !1998
  call void @llvm.dbg.value(metadata i8* %rep.0.i, metadata !590, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* %aep.0.i, metadata !589, metadata !DIExpression()), !dbg !1998
  %0 = load i8, i8* %aep.0.i, align 1, !dbg !2003, !tbaa !525
  switch i8 %0, label %if.else9.i [
    i8 0, label %aexpr2rexpr.exit
    i8 42, label %if.then.i
    i8 63, label %if.then7.i
  ], !dbg !2004

if.then.i:                                        ; preds = %for.cond.i
  %incdec.ptr2.i = getelementptr inbounds i8, i8* %rep.0.i, i64 1, !dbg !2005
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i, metadata !590, metadata !DIExpression()), !dbg !1998
  store i8 46, i8* %rep.0.i, align 1, !dbg !2006, !tbaa !525
  %incdec.ptr3.i = getelementptr inbounds i8, i8* %rep.0.i, i64 2, !dbg !2007
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i, metadata !590, metadata !DIExpression()), !dbg !1998
  store i8 42, i8* %incdec.ptr2.i, align 1, !dbg !2008, !tbaa !525
  br label %for.inc.i, !dbg !2009

if.then7.i:                                       ; preds = %for.cond.i
  %incdec.ptr8.i = getelementptr inbounds i8, i8* %rep.0.i, i64 1, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i, metadata !590, metadata !DIExpression()), !dbg !1998
  store i8 46, i8* %rep.0.i, align 1, !dbg !2011, !tbaa !525
  br label %for.inc.i, !dbg !2012

if.else9.i:                                       ; preds = %for.cond.i
  %incdec.ptr10.i = getelementptr inbounds i8, i8* %rep.0.i, i64 1, !dbg !2013
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i, metadata !590, metadata !DIExpression()), !dbg !1998
  store i8 %0, i8* %rep.0.i, align 1, !dbg !2014, !tbaa !525
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else9.i, %if.then7.i, %if.then.i
  %rep.1.i = phi i8* [ %incdec.ptr3.i, %if.then.i ], [ %incdec.ptr8.i, %if.then7.i ], [ %incdec.ptr10.i, %if.else9.i ], !dbg !2015
  call void @llvm.dbg.value(metadata i8* %rep.1.i, metadata !590, metadata !DIExpression()), !dbg !1998
  %incdec.ptr12.i = getelementptr inbounds i8, i8* %aep.0.i, i64 1, !dbg !2016
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i, metadata !589, metadata !DIExpression()), !dbg !1998
  br label %for.cond.i, !dbg !2017, !llvm.loop !2018

aexpr2rexpr.exit:                                 ; preds = %for.cond.i
  %incdec.ptr13.i = getelementptr inbounds i8, i8* %rep.0.i, i64 1, !dbg !2020
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i, metadata !590, metadata !DIExpression()), !dbg !1998
  store i8 36, i8* %rep.0.i, align 1, !dbg !2021, !tbaa !525
  store i8 0, i8* %incdec.ptr13.i, align 1, !dbg !2022, !tbaa !525
  %call = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !2023
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !2024
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1172, metadata !DIExpression()), !dbg !1997
  %sp.040 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !2025, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.040, metadata !1172, metadata !DIExpression()), !dbg !1997
  %tobool.not41 = icmp eq %struct.strand_t* %sp.040, null, !dbg !2026
  br i1 %tobool.not41, label %for.end19, label %for.body, !dbg !2026

for.body:                                         ; preds = %aexpr2rexpr.exit, %for.inc18
  %sp.042 = phi %struct.strand_t* [ %sp.0, %for.inc18 ], [ %sp.040, %aexpr2rexpr.exit ]
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042, i64 0, i32 2, !dbg !2027
  %1 = load i32, i32* %s_attr, align 4, !dbg !2027, !tbaa !290
  %and = and i32 %1, 1, !dbg !2028
  %tobool1.not = icmp eq i32 %and, 0, !dbg !2028
  br i1 %tobool1.not, label %for.inc18, label %for.cond2.preheader, !dbg !2029

for.cond2.preheader:                              ; preds = %for.body
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042, i64 0, i32 5
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042, i64 0, i32 7
  call void @llvm.dbg.value(metadata i32 0, metadata !1170, metadata !DIExpression()), !dbg !1997
  %2 = load i32, i32* %s_nresidues, align 8, !dbg !2030, !tbaa !295
  %cmp38 = icmp sgt i32 %2, 0, !dbg !2031
  br i1 %cmp38, label %for.body3, label %for.inc18, !dbg !2032

for.body3:                                        ; preds = %for.cond2.preheader, %for.inc14
  %3 = phi i32 [ %13, %for.inc14 ], [ %2, %for.cond2.preheader ]
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc14 ], [ 0, %for.cond2.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv44, metadata !1170, metadata !DIExpression()), !dbg !1997
  %4 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !dbg !2033, !tbaa !301
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %4, i64 %indvars.iv44, !dbg !2034
  %5 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !2034, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %5, metadata !1173, metadata !DIExpression()), !dbg !1997
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 6, !dbg !2035
  %6 = load i32, i32* %r_attr, align 8, !dbg !2035, !tbaa !306
  %and4 = and i32 %6, 1, !dbg !2036
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !2036
  br i1 %tobool5.not, label %for.inc14, label %for.cond7.preheader, !dbg !2037

for.cond7.preheader:                              ; preds = %for.body3
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 15
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 17
  call void @llvm.dbg.value(metadata i32 0, metadata !1171, metadata !DIExpression()), !dbg !1997
  %7 = load i32, i32* %r_natoms, align 8, !dbg !2038, !tbaa !310
  %cmp836 = icmp sgt i32 %7, 0, !dbg !2039
  br i1 %cmp836, label %for.body9, label %for.inc14, !dbg !2040

for.body9:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.cond7.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1171, metadata !DIExpression()), !dbg !1997
  %8 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !dbg !2041, !tbaa !316
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %8, i64 %indvars.iv), metadata !1174, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1997
  %a_atomname = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i64 %indvars.iv, i32 0, !dbg !2042
  %9 = load i8*, i8** %a_atomname, align 8, !dbg !2042, !tbaa !1234
  %call12 = tail call i32 @step(i8* noundef %9, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !2043
  %tobool13.not = icmp ne i32 %call12, 0, !dbg !2043
  %cond = zext i1 %tobool13.not to i32, !dbg !2043
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i64 %indvars.iv, i32 2, !dbg !2044
  %10 = load i32, i32* %a_attr, align 8, !dbg !2045, !tbaa !320
  %or = or i32 %10, %cond, !dbg !2045
  store i32 %or, i32* %a_attr, align 8, !dbg !2045, !tbaa !320
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1171, metadata !DIExpression()), !dbg !1997
  %11 = load i32, i32* %r_natoms, align 8, !dbg !2038, !tbaa !310
  %12 = sext i32 %11 to i64, !dbg !2039
  %cmp8 = icmp slt i64 %indvars.iv.next, %12, !dbg !2039
  br i1 %cmp8, label %for.body9, label %for.inc14.loopexit, !dbg !2040, !llvm.loop !2047

for.inc14.loopexit:                               ; preds = %for.body9
  %.pre = load i32, i32* %s_nresidues, align 8, !dbg !2030, !tbaa !295
  br label %for.inc14, !dbg !2049

for.inc14:                                        ; preds = %for.inc14.loopexit, %for.cond7.preheader, %for.body3
  %13 = phi i32 [ %.pre, %for.inc14.loopexit ], [ %3, %for.cond7.preheader ], [ %3, %for.body3 ], !dbg !2030
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next45, metadata !1170, metadata !DIExpression()), !dbg !1997
  %14 = sext i32 %13 to i64, !dbg !2031
  %cmp = icmp slt i64 %indvars.iv.next45, %14, !dbg !2031
  br i1 %cmp, label %for.body3, label %for.inc18, !dbg !2032, !llvm.loop !2050

for.inc18:                                        ; preds = %for.inc14, %for.cond2.preheader, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042, i64 0, i32 4, !dbg !2052
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1172, metadata !DIExpression()), !dbg !1997
  %sp.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !2025, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0, metadata !1172, metadata !DIExpression()), !dbg !1997
  %tobool.not = icmp eq %struct.strand_t* %sp.0, null, !dbg !2026
  br i1 %tobool.not, label %for.end19, label %for.body, !dbg !2026, !llvm.loop !2053

for.end19:                                        ; preds = %for.inc18, %aexpr2rexpr.exit
  ret void, !dbg !2055
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #8

declare !dbg !2056 dso_local i8* @compile(i8* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #9

declare !dbg !2061 dso_local i32 @step(i8* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aexpr", scope: !2, file: !28, line: 14, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/select_atoms.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "657eaa27113f1d60ac67ba476813e238")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256)
!10 = !DIEnumerator(name: "_ISlower", value: 512)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!14 = !DIEnumerator(name: "_ISspace", value: 8192)
!15 = !DIEnumerator(name: "_ISprint", value: 16384)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768)
!17 = !DIEnumerator(name: "_ISblank", value: 1)
!18 = !DIEnumerator(name: "_IScntrl", value: 2)
!19 = !DIEnumerator(name: "_ISpunct", value: 4)
!20 = !DIEnumerator(name: "_ISalnum", value: 8)
!21 = !{!22, !23, !24}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !{!0, !26, !31, !33, !35, !40}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "spart", scope: !2, file: !28, line: 15, type: !29, isLocal: true, isDefinition: true)
!28 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/select_atoms.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "657eaa27113f1d60ac67ba476813e238")
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "rpart", scope: !2, file: !28, line: 16, type: !29, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "apart", scope: !2, file: !28, line: 17, type: !29, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "rexpr", scope: !2, file: !28, line: 20, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8000, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 1000)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "expbuf", scope: !2, file: !28, line: 26, type: !37, isLocal: true, isDefinition: true)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!47 = distinct !DISubprogram(name: "setpoint", scope: !28, file: !28, line: 54, type: !48, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!48 = !DISubroutineType(types: !49)
!49 = !{!23, !50, !29, !206}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !52, line: 126, baseType: !53)
!52 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "e6947e1b068a9350a45ab4ee56d7a2de")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !52, line: 118, size: 1088, elements: !54)
!54 = !{!55, !62, !64, !157, !158, !159, !160}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !53, file: !52, line: 119, baseType: !56, size: 768)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !52, line: 13, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 768, elements: !59)
!58 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!59 = !{!60, !61}
!60 = !DISubrange(count: 4)
!61 = !DISubrange(count: 3)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !53, file: !52, line: 120, baseType: !63, size: 32, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !52, line: 6, baseType: !23)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !53, file: !52, line: 121, baseType: !65, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !52, line: 93, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !52, line: 84, size: 384, elements: !68)
!68 = !{!69, !72, !73, !74, !76, !78, !79, !80}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !67, file: !52, line: 85, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !52, line: 17, baseType: !30)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !67, file: !52, line: 86, baseType: !63, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !67, file: !52, line: 87, baseType: !63, size: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !67, file: !52, line: 88, baseType: !75, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !67, file: !52, line: 89, baseType: !77, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !67, file: !52, line: 90, baseType: !63, size: 32, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !67, file: !52, line: 91, baseType: !63, size: 32, offset: 288)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !67, file: !52, line: 92, baseType: !81, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !52, line: 82, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !52, line: 63, size: 1024, elements: !85)
!85 = !{!86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !107, !108, !114, !115, !124, !125, !127}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !84, file: !52, line: 64, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !84, file: !52, line: 65, baseType: !63, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !84, file: !52, line: 66, baseType: !63, size: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !84, file: !52, line: 67, baseType: !63, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !84, file: !52, line: 68, baseType: !70, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !84, file: !52, line: 69, baseType: !70, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !84, file: !52, line: 70, baseType: !63, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !84, file: !52, line: 71, baseType: !63, size: 32, offset: 352)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !84, file: !52, line: 72, baseType: !63, size: 32, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !84, file: !52, line: 73, baseType: !77, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !84, file: !52, line: 74, baseType: !98, size: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !52, line: 52, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !52, line: 47, size: 192, elements: !101)
!101 = !{!102, !104, !105, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !100, file: !52, line: 48, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !100, file: !52, line: 49, baseType: !63, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !100, file: !52, line: 50, baseType: !63, size: 32, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !100, file: !52, line: 51, baseType: !63, size: 32, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !84, file: !52, line: 75, baseType: !63, size: 32, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !84, file: !52, line: 76, baseType: !109, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !52, line: 54, baseType: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 2)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !84, file: !52, line: 77, baseType: !63, size: 32, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !84, file: !52, line: 78, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !52, line: 61, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !52, line: 58, size: 192, elements: !119)
!119 = !{!120, !123}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !118, file: !52, line: 59, baseType: !121, size: 128)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !122)
!122 = !{!60}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !118, file: !52, line: 60, baseType: !58, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !84, file: !52, line: 79, baseType: !63, size: 32, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !84, file: !52, line: 80, baseType: !126, size: 64, offset: 896)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !84, file: !52, line: 81, baseType: !128, size: 64, offset: 960)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !52, line: 45, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !52, line: 25, size: 1408, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !156}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !130, file: !52, line: 26, baseType: !70, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !130, file: !52, line: 27, baseType: !70, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !130, file: !52, line: 28, baseType: !63, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !130, file: !52, line: 29, baseType: !63, size: 32, offset: 160)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !130, file: !52, line: 30, baseType: !137, size: 256, offset: 192)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !130, file: !52, line: 31, baseType: !87, size: 64, offset: 448)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !130, file: !52, line: 32, baseType: !58, size: 64, offset: 512)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !130, file: !52, line: 33, baseType: !58, size: 64, offset: 576)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !130, file: !52, line: 34, baseType: !58, size: 64, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !130, file: !52, line: 35, baseType: !58, size: 64, offset: 704)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !130, file: !52, line: 36, baseType: !70, size: 64, offset: 768)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !130, file: !52, line: 37, baseType: !63, size: 32, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !130, file: !52, line: 38, baseType: !58, size: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !130, file: !52, line: 39, baseType: !58, size: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !130, file: !52, line: 40, baseType: !63, size: 32, offset: 1024)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !130, file: !52, line: 41, baseType: !63, size: 32, offset: 1056)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !130, file: !52, line: 42, baseType: !70, size: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !130, file: !52, line: 43, baseType: !153, size: 192, offset: 1152)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !52, line: 12, baseType: !154)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 192, elements: !155)
!155 = !{!61}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !130, file: !52, line: 44, baseType: !58, size: 64, offset: 1344)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !53, file: !52, line: 122, baseType: !63, size: 32, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !53, file: !52, line: 123, baseType: !63, size: 32, offset: 928)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !53, file: !52, line: 124, baseType: !63, size: 32, offset: 960)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !53, file: !52, line: 125, baseType: !161, size: 64, offset: 1024)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !52, line: 115, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !52, line: 95, size: 5760, elements: !164)
!164 = !{!165, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !163, file: !52, line: 96, baseType: !166, size: 648)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 648, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 81)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !163, file: !52, line: 97, baseType: !63, size: 32, offset: 672)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !163, file: !52, line: 97, baseType: !63, size: 32, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !163, file: !52, line: 97, baseType: !63, size: 32, offset: 736)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !163, file: !52, line: 98, baseType: !63, size: 32, offset: 768)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !163, file: !52, line: 98, baseType: !63, size: 32, offset: 800)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !163, file: !52, line: 98, baseType: !63, size: 32, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !163, file: !52, line: 98, baseType: !63, size: 32, offset: 864)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !163, file: !52, line: 98, baseType: !63, size: 32, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !163, file: !52, line: 98, baseType: !63, size: 32, offset: 928)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !163, file: !52, line: 99, baseType: !63, size: 32, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !163, file: !52, line: 99, baseType: !63, size: 32, offset: 992)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !163, file: !52, line: 99, baseType: !63, size: 32, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !163, file: !52, line: 99, baseType: !63, size: 32, offset: 1056)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !163, file: !52, line: 99, baseType: !63, size: 32, offset: 1088)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !163, file: !52, line: 99, baseType: !63, size: 32, offset: 1120)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !163, file: !52, line: 100, baseType: !63, size: 32, offset: 1152)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !163, file: !52, line: 100, baseType: !63, size: 32, offset: 1184)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !163, file: !52, line: 100, baseType: !63, size: 32, offset: 1216)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !163, file: !52, line: 100, baseType: !63, size: 32, offset: 1248)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !163, file: !52, line: 100, baseType: !63, size: 32, offset: 1280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !163, file: !52, line: 100, baseType: !63, size: 32, offset: 1312)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !163, file: !52, line: 101, baseType: !63, size: 32, offset: 1344)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !163, file: !52, line: 101, baseType: !63, size: 32, offset: 1376)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !163, file: !52, line: 101, baseType: !63, size: 32, offset: 1408)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !163, file: !52, line: 101, baseType: !63, size: 32, offset: 1440)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !163, file: !52, line: 101, baseType: !63, size: 32, offset: 1472)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !163, file: !52, line: 101, baseType: !63, size: 32, offset: 1504)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !163, file: !52, line: 101, baseType: !63, size: 32, offset: 1536)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !163, file: !52, line: 101, baseType: !63, size: 32, offset: 1568)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !163, file: !52, line: 102, baseType: !63, size: 32, offset: 1600)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !163, file: !52, line: 102, baseType: !63, size: 32, offset: 1632)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !163, file: !52, line: 102, baseType: !63, size: 32, offset: 1664)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !163, file: !52, line: 103, baseType: !70, size: 64, offset: 1728)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !163, file: !52, line: 103, baseType: !70, size: 64, offset: 1792)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !163, file: !52, line: 103, baseType: !70, size: 64, offset: 1856)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !163, file: !52, line: 103, baseType: !70, size: 64, offset: 1920)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !163, file: !52, line: 104, baseType: !206, size: 64, offset: 1984)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !163, file: !52, line: 104, baseType: !206, size: 64, offset: 2048)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !163, file: !52, line: 104, baseType: !206, size: 64, offset: 2112)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !163, file: !52, line: 104, baseType: !206, size: 64, offset: 2176)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !163, file: !52, line: 104, baseType: !206, size: 64, offset: 2240)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !163, file: !52, line: 104, baseType: !206, size: 64, offset: 2304)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !163, file: !52, line: 104, baseType: !206, size: 64, offset: 2368)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !163, file: !52, line: 104, baseType: !206, size: 64, offset: 2432)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !163, file: !52, line: 104, baseType: !206, size: 64, offset: 2496)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !163, file: !52, line: 105, baseType: !206, size: 64, offset: 2560)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !163, file: !52, line: 105, baseType: !206, size: 64, offset: 2624)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !163, file: !52, line: 105, baseType: !206, size: 64, offset: 2688)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !163, file: !52, line: 105, baseType: !206, size: 64, offset: 2752)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !163, file: !52, line: 105, baseType: !206, size: 64, offset: 2816)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !163, file: !52, line: 105, baseType: !206, size: 64, offset: 2880)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !163, file: !52, line: 105, baseType: !206, size: 64, offset: 2944)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !163, file: !52, line: 106, baseType: !154, size: 192, offset: 3008)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !163, file: !52, line: 106, baseType: !58, size: 64, offset: 3200)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !163, file: !52, line: 106, baseType: !58, size: 64, offset: 3264)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !163, file: !52, line: 106, baseType: !58, size: 64, offset: 3328)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !163, file: !52, line: 106, baseType: !58, size: 64, offset: 3392)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !163, file: !52, line: 106, baseType: !58, size: 64, offset: 3456)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !163, file: !52, line: 107, baseType: !126, size: 64, offset: 3520)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !163, file: !52, line: 107, baseType: !126, size: 64, offset: 3584)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !163, file: !52, line: 107, baseType: !126, size: 64, offset: 3648)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !163, file: !52, line: 107, baseType: !126, size: 64, offset: 3712)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !163, file: !52, line: 107, baseType: !126, size: 64, offset: 3776)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !163, file: !52, line: 107, baseType: !126, size: 64, offset: 3840)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !163, file: !52, line: 108, baseType: !126, size: 64, offset: 3904)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !163, file: !52, line: 108, baseType: !126, size: 64, offset: 3968)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !163, file: !52, line: 108, baseType: !126, size: 64, offset: 4032)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !163, file: !52, line: 108, baseType: !126, size: 64, offset: 4096)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !163, file: !52, line: 108, baseType: !126, size: 64, offset: 4160)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !163, file: !52, line: 108, baseType: !126, size: 64, offset: 4224)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !163, file: !52, line: 109, baseType: !126, size: 64, offset: 4288)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !163, file: !52, line: 109, baseType: !126, size: 64, offset: 4352)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !163, file: !52, line: 109, baseType: !126, size: 64, offset: 4416)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !163, file: !52, line: 109, baseType: !126, size: 64, offset: 4480)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !163, file: !52, line: 109, baseType: !126, size: 64, offset: 4544)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !163, file: !52, line: 110, baseType: !126, size: 64, offset: 4608)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !163, file: !52, line: 110, baseType: !126, size: 64, offset: 4672)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !163, file: !52, line: 110, baseType: !126, size: 64, offset: 4736)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !163, file: !52, line: 110, baseType: !126, size: 64, offset: 4800)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !163, file: !52, line: 110, baseType: !126, size: 64, offset: 4864)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !163, file: !52, line: 111, baseType: !126, size: 64, offset: 4928)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !163, file: !52, line: 111, baseType: !126, size: 64, offset: 4992)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !163, file: !52, line: 111, baseType: !126, size: 64, offset: 5056)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !163, file: !52, line: 111, baseType: !126, size: 64, offset: 5120)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !163, file: !52, line: 111, baseType: !126, size: 64, offset: 5184)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !163, file: !52, line: 111, baseType: !126, size: 64, offset: 5248)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !163, file: !52, line: 112, baseType: !126, size: 64, offset: 5312)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !163, file: !52, line: 112, baseType: !126, size: 64, offset: 5376)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !163, file: !52, line: 112, baseType: !126, size: 64, offset: 5440)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !163, file: !52, line: 112, baseType: !126, size: 64, offset: 5504)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !163, file: !52, line: 113, baseType: !126, size: 64, offset: 5568)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !163, file: !52, line: 113, baseType: !126, size: 64, offset: 5632)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !163, file: !52, line: 114, baseType: !206, size: 64, offset: 5696)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!264 = !DILocalVariable(name: "mol", arg: 1, scope: !47, file: !28, line: 54, type: !50)
!265 = !DILocalVariable(name: "aexpr", arg: 2, scope: !47, file: !28, line: 54, type: !29)
!266 = !DILocalVariable(name: "point", arg: 3, scope: !47, file: !28, line: 54, type: !206)
!267 = !DILocalVariable(name: "r", scope: !47, file: !28, line: 56, type: !23)
!268 = !DILocalVariable(name: "a", scope: !47, file: !28, line: 56, type: !23)
!269 = !DILocalVariable(name: "ta", scope: !47, file: !28, line: 56, type: !23)
!270 = !DILocalVariable(name: "sp", scope: !47, file: !28, line: 57, type: !65)
!271 = !DILocalVariable(name: "res", scope: !47, file: !28, line: 58, type: !82)
!272 = !DILocalVariable(name: "ap", scope: !47, file: !28, line: 59, type: !128)
!273 = !DILocalVariable(name: "x", scope: !47, file: !28, line: 60, type: !58)
!274 = !DILocalVariable(name: "y", scope: !47, file: !28, line: 60, type: !58)
!275 = !DILocalVariable(name: "z", scope: !47, file: !28, line: 60, type: !58)
!276 = !DILocation(line: 0, scope: !47)
!277 = !DILocation(line: 62, column: 2, scope: !47)
!278 = !DILocation(line: 66, column: 25, scope: !279)
!279 = distinct !DILexicalBlock(scope: !47, file: !28, line: 66, column: 2)
!280 = !DILocation(line: 0, scope: !279)
!281 = !{!282, !282, i64 0}
!282 = !{!"any pointer", !283, i64 0}
!283 = !{!"omnipotent char", !284, i64 0}
!284 = !{!"Simple C/C++ TBAA"}
!285 = !DILocation(line: 66, column: 2, scope: !279)
!286 = !DILocation(line: 67, column: 23, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !28, line: 67, column: 7)
!288 = distinct !DILexicalBlock(scope: !289, file: !28, line: 66, column: 57)
!289 = distinct !DILexicalBlock(scope: !279, file: !28, line: 66, column: 2)
!290 = !{!291, !292, i64 12}
!291 = !{!"strand_t", !282, i64 0, !292, i64 8, !292, i64 12, !282, i64 16, !282, i64 24, !292, i64 32, !292, i64 36, !282, i64 40}
!292 = !{!"int", !283, i64 0}
!293 = !DILocation(line: 67, column: 17, scope: !287)
!294 = !DILocation(line: 67, column: 7, scope: !288)
!295 = !{!291, !292, i64 32}
!296 = !DILocation(line: 68, column: 18, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !28, line: 68, column: 4)
!298 = distinct !DILexicalBlock(scope: !299, file: !28, line: 68, column: 4)
!299 = distinct !DILexicalBlock(scope: !287, file: !28, line: 67, column: 31)
!300 = !DILocation(line: 68, column: 4, scope: !298)
!301 = !{!291, !282, i64 40}
!302 = !DILocation(line: 69, column: 11, scope: !303)
!303 = distinct !DILexicalBlock(scope: !297, file: !28, line: 68, column: 42)
!304 = !DILocation(line: 70, column: 26, scope: !305)
!305 = distinct !DILexicalBlock(scope: !303, file: !28, line: 70, column: 9)
!306 = !{!307, !292, i64 40}
!307 = !{!"residue_t", !282, i64 0, !292, i64 8, !292, i64 12, !292, i64 16, !282, i64 24, !282, i64 32, !292, i64 40, !292, i64 44, !292, i64 48, !282, i64 56, !282, i64 64, !292, i64 72, !282, i64 80, !292, i64 88, !282, i64 96, !292, i64 104, !282, i64 112, !282, i64 120}
!308 = !DILocation(line: 70, column: 19, scope: !305)
!309 = !DILocation(line: 70, column: 9, scope: !303)
!310 = !{!307, !292, i64 104}
!311 = !DILocation(line: 71, column: 20, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !28, line: 71, column: 6)
!313 = distinct !DILexicalBlock(scope: !314, file: !28, line: 71, column: 6)
!314 = distinct !DILexicalBlock(scope: !305, file: !28, line: 70, column: 34)
!315 = !DILocation(line: 71, column: 6, scope: !313)
!316 = !{!307, !282, i64 120}
!317 = !DILocation(line: 73, column: 27, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !28, line: 73, column: 11)
!319 = distinct !DILexicalBlock(scope: !312, file: !28, line: 71, column: 42)
!320 = !{!321, !292, i64 16}
!321 = !{!"atom_t", !282, i64 0, !282, i64 8, !292, i64 16, !292, i64 20, !283, i64 24, !282, i64 56, !322, i64 64, !322, i64 72, !322, i64 80, !322, i64 88, !282, i64 96, !292, i64 104, !322, i64 112, !322, i64 120, !292, i64 128, !292, i64 132, !282, i64 136, !283, i64 144, !322, i64 168}
!322 = !{!"double", !283, i64 0}
!323 = !DILocation(line: 73, column: 21, scope: !318)
!324 = !DILocation(line: 73, column: 11, scope: !319)
!325 = !DILocation(line: 74, column: 13, scope: !326)
!326 = distinct !DILexicalBlock(scope: !318, file: !28, line: 73, column: 35)
!327 = !{!322, !322, i64 0}
!328 = !DILocation(line: 74, column: 10, scope: !326)
!329 = !DILocation(line: 76, column: 13, scope: !326)
!330 = !DILocation(line: 76, column: 10, scope: !326)
!331 = !DILocation(line: 77, column: 10, scope: !326)
!332 = !DILocation(line: 78, column: 7, scope: !326)
!333 = !DILocation(line: 71, column: 38, scope: !312)
!334 = distinct !{!334, !315, !335, !336}
!335 = !DILocation(line: 79, column: 6, scope: !313)
!336 = !{!"llvm.loop.mustprogress"}
!337 = !DILocation(line: 66, column: 10, scope: !279)
!338 = !DILocation(line: 65, column: 12, scope: !47)
!339 = !DILocation(line: 65, column: 4, scope: !47)
!340 = !DILocation(line: 68, column: 38, scope: !297)
!341 = distinct !{!341, !300, !342, !336}
!342 = !DILocation(line: 81, column: 4, scope: !298)
!343 = !DILocation(line: 66, column: 49, scope: !289)
!344 = distinct !{!344, !285, !345, !336}
!345 = !DILocation(line: 83, column: 2, scope: !279)
!346 = !DILocation(line: 85, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !47, file: !28, line: 85, column: 6)
!348 = !DILocation(line: 85, column: 6, scope: !47)
!349 = !DILocation(line: 86, column: 12, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !28, line: 85, column: 15)
!351 = !DILocation(line: 86, column: 3, scope: !350)
!352 = !DILocation(line: 87, column: 3, scope: !350)
!353 = !DILocation(line: 89, column: 20, scope: !354)
!354 = distinct !DILexicalBlock(scope: !347, file: !28, line: 88, column: 7)
!355 = !DILocation(line: 89, column: 18, scope: !354)
!356 = !DILocation(line: 89, column: 14, scope: !354)
!357 = !DILocation(line: 91, column: 18, scope: !354)
!358 = !DILocation(line: 91, column: 3, scope: !354)
!359 = !DILocation(line: 91, column: 14, scope: !354)
!360 = !DILocation(line: 94, column: 2, scope: !47)
!361 = !DILocation(line: 95, column: 1, scope: !47)
!362 = distinct !DISubprogram(name: "select_atoms", scope: !28, file: !28, line: 97, type: !363, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{!23, !50, !29}
!365 = !{!366, !367, !368, !369, !370}
!366 = !DILocalVariable(name: "mol", arg: 1, scope: !362, file: !28, line: 97, type: !50)
!367 = !DILocalVariable(name: "aex", arg: 2, scope: !362, file: !28, line: 97, type: !29)
!368 = !DILocalVariable(name: "aep", scope: !362, file: !28, line: 99, type: !29)
!369 = !DILocalVariable(name: "n_aep", scope: !362, file: !28, line: 99, type: !29)
!370 = !DILocalVariable(name: "ael", scope: !362, file: !28, line: 100, type: !23)
!371 = !DILocation(line: 0, scope: !362)
!372 = !DILocation(line: 102, column: 10, scope: !373)
!373 = distinct !DILexicalBlock(scope: !362, file: !28, line: 102, column: 6)
!374 = !DILocation(line: 102, column: 6, scope: !362)
!375 = !DILocalVariable(name: "mol", arg: 1, scope: !376, file: !28, line: 398, type: !50)
!376 = distinct !DISubprogram(name: "select_all", scope: !28, file: !28, line: 398, type: !377, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !50}
!379 = !{!375, !380, !381, !382, !383}
!380 = !DILocalVariable(name: "a", scope: !376, file: !28, line: 400, type: !23)
!381 = !DILocalVariable(name: "r", scope: !376, file: !28, line: 400, type: !23)
!382 = !DILocalVariable(name: "sp", scope: !376, file: !28, line: 401, type: !65)
!383 = !DILocalVariable(name: "res", scope: !376, file: !28, line: 402, type: !82)
!384 = !DILocation(line: 0, scope: !376, inlinedAt: !385)
!385 = distinct !DILocation(line: 103, column: 3, scope: !386)
!386 = distinct !DILexicalBlock(scope: !373, file: !28, line: 102, column: 19)
!387 = !DILocation(line: 404, column: 2, scope: !388, inlinedAt: !385)
!388 = distinct !DILexicalBlock(scope: !376, file: !28, line: 404, column: 2)
!389 = !DILocation(line: 405, column: 7, scope: !390, inlinedAt: !385)
!390 = distinct !DILexicalBlock(scope: !391, file: !28, line: 404, column: 49)
!391 = distinct !DILexicalBlock(scope: !388, file: !28, line: 404, column: 2)
!392 = !DILocation(line: 405, column: 14, scope: !390, inlinedAt: !385)
!393 = !DILocation(line: 406, column: 17, scope: !394, inlinedAt: !385)
!394 = distinct !DILexicalBlock(scope: !395, file: !28, line: 406, column: 3)
!395 = distinct !DILexicalBlock(scope: !390, file: !28, line: 406, column: 3)
!396 = !DILocation(line: 406, column: 3, scope: !395, inlinedAt: !385)
!397 = !DILocation(line: 407, column: 10, scope: !398, inlinedAt: !385)
!398 = distinct !DILexicalBlock(scope: !394, file: !28, line: 406, column: 41)
!399 = !DILocation(line: 408, column: 9, scope: !398, inlinedAt: !385)
!400 = !DILocation(line: 408, column: 16, scope: !398, inlinedAt: !385)
!401 = !DILocation(line: 409, column: 18, scope: !402, inlinedAt: !385)
!402 = distinct !DILexicalBlock(scope: !403, file: !28, line: 409, column: 4)
!403 = distinct !DILexicalBlock(scope: !398, file: !28, line: 409, column: 4)
!404 = !DILocation(line: 409, column: 4, scope: !403, inlinedAt: !385)
!405 = !DILocation(line: 410, column: 23, scope: !402, inlinedAt: !385)
!406 = !DILocation(line: 410, column: 30, scope: !402, inlinedAt: !385)
!407 = !DILocation(line: 409, column: 36, scope: !402, inlinedAt: !385)
!408 = distinct !{!408, !404, !409, !336}
!409 = !DILocation(line: 410, column: 33, scope: !403, inlinedAt: !385)
!410 = distinct !{!410, !411}
!411 = !{!"llvm.loop.unroll.disable"}
!412 = !DILocation(line: 406, column: 37, scope: !394, inlinedAt: !385)
!413 = distinct !{!413, !396, !414, !336}
!414 = !DILocation(line: 411, column: 3, scope: !395, inlinedAt: !385)
!415 = !DILocation(line: 404, column: 41, scope: !391, inlinedAt: !385)
!416 = !DILocation(line: 0, scope: !388, inlinedAt: !385)
!417 = distinct !{!417, !387, !418, !336}
!418 = !DILocation(line: 412, column: 2, scope: !388, inlinedAt: !385)
!419 = !DILocalVariable(name: "mol", arg: 1, scope: !420, file: !28, line: 432, type: !50)
!420 = distinct !DISubprogram(name: "clear_work", scope: !28, file: !28, line: 432, type: !377, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!421 = !{!419, !422, !423, !424, !425}
!422 = !DILocalVariable(name: "a", scope: !420, file: !28, line: 434, type: !23)
!423 = !DILocalVariable(name: "r", scope: !420, file: !28, line: 434, type: !23)
!424 = !DILocalVariable(name: "sp", scope: !420, file: !28, line: 435, type: !65)
!425 = !DILocalVariable(name: "res", scope: !420, file: !28, line: 436, type: !82)
!426 = !DILocation(line: 0, scope: !420, inlinedAt: !427)
!427 = distinct !DILocation(line: 107, column: 2, scope: !362)
!428 = !DILocation(line: 438, column: 2, scope: !429, inlinedAt: !427)
!429 = distinct !DILexicalBlock(scope: !420, file: !28, line: 438, column: 2)
!430 = !DILocation(line: 439, column: 7, scope: !431, inlinedAt: !427)
!431 = distinct !DILexicalBlock(scope: !432, file: !28, line: 438, column: 49)
!432 = distinct !DILexicalBlock(scope: !429, file: !28, line: 438, column: 2)
!433 = !DILocation(line: 439, column: 14, scope: !431, inlinedAt: !427)
!434 = !DILocation(line: 440, column: 17, scope: !435, inlinedAt: !427)
!435 = distinct !DILexicalBlock(scope: !436, file: !28, line: 440, column: 3)
!436 = distinct !DILexicalBlock(scope: !431, file: !28, line: 440, column: 3)
!437 = !DILocation(line: 440, column: 3, scope: !436, inlinedAt: !427)
!438 = !DILocation(line: 441, column: 10, scope: !439, inlinedAt: !427)
!439 = distinct !DILexicalBlock(scope: !435, file: !28, line: 440, column: 41)
!440 = !DILocation(line: 442, column: 9, scope: !439, inlinedAt: !427)
!441 = !DILocation(line: 442, column: 16, scope: !439, inlinedAt: !427)
!442 = !DILocation(line: 443, column: 18, scope: !443, inlinedAt: !427)
!443 = distinct !DILexicalBlock(scope: !444, file: !28, line: 443, column: 4)
!444 = distinct !DILexicalBlock(scope: !439, file: !28, line: 443, column: 4)
!445 = !DILocation(line: 443, column: 4, scope: !444, inlinedAt: !427)
!446 = !DILocation(line: 444, column: 23, scope: !443, inlinedAt: !427)
!447 = !DILocation(line: 444, column: 30, scope: !443, inlinedAt: !427)
!448 = !DILocation(line: 443, column: 36, scope: !443, inlinedAt: !427)
!449 = distinct !{!449, !445, !450, !336}
!450 = !DILocation(line: 444, column: 34, scope: !444, inlinedAt: !427)
!451 = distinct !{!451, !411}
!452 = !DILocation(line: 440, column: 37, scope: !435, inlinedAt: !427)
!453 = distinct !{!453, !437, !454, !336}
!454 = !DILocation(line: 445, column: 3, scope: !436, inlinedAt: !427)
!455 = !DILocation(line: 438, column: 41, scope: !432, inlinedAt: !427)
!456 = !DILocation(line: 0, scope: !429, inlinedAt: !427)
!457 = distinct !{!457, !428, !458, !336}
!458 = !DILocation(line: 446, column: 2, scope: !429, inlinedAt: !427)
!459 = !DILocation(line: 422, column: 7, scope: !460, inlinedAt: !470)
!460 = distinct !DILexicalBlock(scope: !461, file: !28, line: 421, column: 49)
!461 = distinct !DILexicalBlock(scope: !462, file: !28, line: 421, column: 2)
!462 = distinct !DILexicalBlock(scope: !463, file: !28, line: 421, column: 2)
!463 = distinct !DISubprogram(name: "clear_select", scope: !28, file: !28, line: 415, type: !377, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !464)
!464 = !{!465, !466, !467, !468, !469}
!465 = !DILocalVariable(name: "mol", arg: 1, scope: !463, file: !28, line: 415, type: !50)
!466 = !DILocalVariable(name: "a", scope: !463, file: !28, line: 417, type: !23)
!467 = !DILocalVariable(name: "r", scope: !463, file: !28, line: 417, type: !23)
!468 = !DILocalVariable(name: "sp", scope: !463, file: !28, line: 418, type: !65)
!469 = !DILocalVariable(name: "res", scope: !463, file: !28, line: 419, type: !82)
!470 = distinct !DILocation(line: 108, column: 2, scope: !362)
!471 = !DILocation(line: 422, column: 14, scope: !460, inlinedAt: !470)
!472 = !DILocation(line: 0, scope: !463, inlinedAt: !470)
!473 = !DILocation(line: 423, column: 17, scope: !474, inlinedAt: !470)
!474 = distinct !DILexicalBlock(scope: !475, file: !28, line: 423, column: 3)
!475 = distinct !DILexicalBlock(scope: !460, file: !28, line: 423, column: 3)
!476 = !DILocation(line: 423, column: 3, scope: !475, inlinedAt: !470)
!477 = !DILocation(line: 424, column: 10, scope: !478, inlinedAt: !470)
!478 = distinct !DILexicalBlock(scope: !474, file: !28, line: 423, column: 41)
!479 = !DILocation(line: 425, column: 9, scope: !478, inlinedAt: !470)
!480 = !DILocation(line: 425, column: 16, scope: !478, inlinedAt: !470)
!481 = !DILocation(line: 426, column: 18, scope: !482, inlinedAt: !470)
!482 = distinct !DILexicalBlock(scope: !483, file: !28, line: 426, column: 4)
!483 = distinct !DILexicalBlock(scope: !478, file: !28, line: 426, column: 4)
!484 = !DILocation(line: 426, column: 4, scope: !483, inlinedAt: !470)
!485 = !DILocation(line: 427, column: 23, scope: !482, inlinedAt: !470)
!486 = !DILocation(line: 427, column: 30, scope: !482, inlinedAt: !470)
!487 = !DILocation(line: 426, column: 36, scope: !482, inlinedAt: !470)
!488 = distinct !{!488, !484, !489, !336}
!489 = !DILocation(line: 427, column: 34, scope: !483, inlinedAt: !470)
!490 = distinct !{!490, !411}
!491 = !DILocation(line: 423, column: 37, scope: !474, inlinedAt: !470)
!492 = distinct !{!492, !476, !493, !336}
!493 = !DILocation(line: 428, column: 3, scope: !475, inlinedAt: !470)
!494 = !DILocation(line: 421, column: 41, scope: !461, inlinedAt: !470)
!495 = !DILocation(line: 0, scope: !462, inlinedAt: !470)
!496 = !DILocation(line: 421, column: 2, scope: !462, inlinedAt: !470)
!497 = distinct !{!497, !496, !498, !336}
!498 = !DILocation(line: 429, column: 2, scope: !462, inlinedAt: !470)
!499 = !DILocation(line: 110, column: 26, scope: !500)
!500 = distinct !DILexicalBlock(scope: !362, file: !28, line: 110, column: 2)
!501 = !DILocation(line: 110, column: 2, scope: !500)
!502 = !DILocation(line: 111, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !28, line: 111, column: 7)
!504 = distinct !DILexicalBlock(scope: !505, file: !28, line: 110, column: 52)
!505 = distinct !DILexicalBlock(scope: !500, file: !28, line: 110, column: 2)
!506 = !DILocation(line: 111, column: 7, scope: !504)
!507 = !DILocation(line: 112, column: 16, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !28, line: 111, column: 14)
!509 = !DILocation(line: 113, column: 9, scope: !508)
!510 = !DILocation(line: 114, column: 3, scope: !508)
!511 = !DILocation(line: 115, column: 10, scope: !503)
!512 = !DILocation(line: 0, scope: !500)
!513 = !DILocation(line: 0, scope: !503)
!514 = !DILocation(line: 116, column: 11, scope: !515)
!515 = distinct !DILexicalBlock(scope: !504, file: !28, line: 116, column: 7)
!516 = !DILocation(line: 116, column: 7, scope: !504)
!517 = !DILocation(line: 117, column: 13, scope: !518)
!518 = distinct !DILexicalBlock(scope: !515, file: !28, line: 116, column: 26)
!519 = !DILocation(line: 117, column: 4, scope: !518)
!520 = !DILocation(line: 119, column: 4, scope: !518)
!521 = !DILocation(line: 121, column: 24, scope: !504)
!522 = !DILocation(line: 121, column: 3, scope: !504)
!523 = !DILocation(line: 122, column: 3, scope: !504)
!524 = !DILocation(line: 122, column: 16, scope: !504)
!525 = !{!283, !283, i64 0}
!526 = !DILocalVariable(name: "mol", arg: 1, scope: !527, file: !28, line: 204, type: !50)
!527 = distinct !DISubprogram(name: "eval_1_aexpr", scope: !28, file: !28, line: 204, type: !363, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!528 = !{!526, !529, !530, !531, !532, !533}
!529 = !DILocalVariable(name: "aex", arg: 2, scope: !527, file: !28, line: 204, type: !29)
!530 = !DILocalVariable(name: "aep", scope: !527, file: !28, line: 206, type: !29)
!531 = !DILocalVariable(name: "wp", scope: !527, file: !28, line: 207, type: !29)
!532 = !DILocalVariable(name: "lo", scope: !527, file: !28, line: 208, type: !23)
!533 = !DILocalVariable(name: "hi", scope: !527, file: !28, line: 208, type: !23)
!534 = !DILocation(line: 0, scope: !527, inlinedAt: !535)
!535 = distinct !DILocation(line: 123, column: 3, scope: !504)
!536 = !DILocation(line: 208, column: 2, scope: !527, inlinedAt: !535)
!537 = !DILocation(line: 211, column: 6, scope: !538, inlinedAt: !535)
!538 = distinct !DILexicalBlock(scope: !527, file: !28, line: 211, column: 6)
!539 = !DILocation(line: 211, column: 11, scope: !538, inlinedAt: !535)
!540 = !DILocation(line: 211, column: 6, scope: !527, inlinedAt: !535)
!541 = !DILocation(line: 212, column: 9, scope: !542, inlinedAt: !535)
!542 = distinct !DILexicalBlock(scope: !538, file: !28, line: 211, column: 19)
!543 = !DILocation(line: 214, column: 2, scope: !542, inlinedAt: !535)
!544 = !DILocation(line: 215, column: 11, scope: !545, inlinedAt: !535)
!545 = distinct !DILexicalBlock(scope: !538, file: !28, line: 214, column: 7)
!546 = !DILocation(line: 215, column: 9, scope: !545, inlinedAt: !535)
!547 = !DILocation(line: 216, column: 10, scope: !545, inlinedAt: !535)
!548 = !DILocation(line: 216, column: 26, scope: !545, inlinedAt: !535)
!549 = !DILocation(line: 216, column: 7, scope: !545, inlinedAt: !535)
!550 = !DILocation(line: 0, scope: !538, inlinedAt: !535)
!551 = !DILocation(line: 218, column: 6, scope: !552, inlinedAt: !535)
!552 = distinct !DILexicalBlock(scope: !527, file: !28, line: 218, column: 6)
!553 = !DILocation(line: 218, column: 11, scope: !552, inlinedAt: !535)
!554 = !DILocation(line: 218, column: 6, scope: !527, inlinedAt: !535)
!555 = !DILocation(line: 219, column: 9, scope: !556, inlinedAt: !535)
!556 = distinct !DILexicalBlock(scope: !552, file: !28, line: 218, column: 19)
!557 = !DILocation(line: 221, column: 2, scope: !556, inlinedAt: !535)
!558 = !DILocation(line: 222, column: 11, scope: !559, inlinedAt: !535)
!559 = distinct !DILexicalBlock(scope: !552, file: !28, line: 221, column: 7)
!560 = !DILocation(line: 222, column: 9, scope: !559, inlinedAt: !535)
!561 = !DILocation(line: 223, column: 10, scope: !559, inlinedAt: !535)
!562 = !DILocation(line: 223, column: 26, scope: !559, inlinedAt: !535)
!563 = !DILocation(line: 0, scope: !552, inlinedAt: !535)
!564 = !DILocation(line: 225, column: 10, scope: !527, inlinedAt: !535)
!565 = !DILocation(line: 225, column: 8, scope: !527, inlinedAt: !535)
!566 = !DILocation(line: 227, column: 6, scope: !567, inlinedAt: !535)
!567 = distinct !DILexicalBlock(scope: !527, file: !28, line: 227, column: 6)
!568 = !DILocation(line: 227, column: 6, scope: !527, inlinedAt: !535)
!569 = !DILocation(line: 228, column: 8, scope: !570, inlinedAt: !535)
!570 = distinct !DILexicalBlock(scope: !567, file: !28, line: 227, column: 13)
!571 = !DILocation(line: 229, column: 7, scope: !572, inlinedAt: !535)
!572 = distinct !DILexicalBlock(scope: !570, file: !28, line: 229, column: 7)
!573 = !DILocation(line: 229, column: 7, scope: !570, inlinedAt: !535)
!574 = !DILocalVariable(name: "mol", arg: 1, scope: !575, file: !28, line: 493, type: !50)
!575 = distinct !DISubprogram(name: "match_str_pat", scope: !28, file: !28, line: 493, type: !576, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !50, !29}
!578 = !{!574, !579, !580}
!579 = !DILocalVariable(name: "pat", arg: 2, scope: !575, file: !28, line: 493, type: !29)
!580 = !DILocalVariable(name: "sp", scope: !575, file: !28, line: 495, type: !65)
!581 = !DILocation(line: 0, scope: !575, inlinedAt: !582)
!582 = distinct !DILocation(line: 230, column: 4, scope: !572, inlinedAt: !535)
!583 = !DILocalVariable(name: "aexpr", arg: 1, scope: !584, file: !28, line: 695, type: !29)
!584 = distinct !DISubprogram(name: "aexpr2rexpr", scope: !28, file: !28, line: 695, type: !585, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !29, !29}
!587 = !{!583, !588, !589, !590}
!588 = !DILocalVariable(name: "rexpr", arg: 2, scope: !584, file: !28, line: 695, type: !29)
!589 = !DILocalVariable(name: "aep", scope: !584, file: !28, line: 697, type: !29)
!590 = !DILocalVariable(name: "rep", scope: !584, file: !28, line: 697, type: !29)
!591 = !DILocation(line: 0, scope: !584, inlinedAt: !592)
!592 = distinct !DILocation(line: 497, column: 2, scope: !575, inlinedAt: !582)
!593 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !592)
!594 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !592)
!595 = distinct !DILexicalBlock(scope: !584, file: !28, line: 701, column: 2)
!596 = !DILocation(line: 0, scope: !595, inlinedAt: !592)
!597 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !592)
!598 = distinct !DILexicalBlock(scope: !595, file: !28, line: 701, column: 2)
!599 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !592)
!600 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !592)
!601 = distinct !DILexicalBlock(scope: !602, file: !28, line: 702, column: 20)
!602 = distinct !DILexicalBlock(scope: !603, file: !28, line: 702, column: 7)
!603 = distinct !DILexicalBlock(scope: !598, file: !28, line: 701, column: 33)
!604 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !592)
!605 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !592)
!606 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !592)
!607 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !592)
!608 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !592)
!609 = distinct !DILexicalBlock(scope: !602, file: !28, line: 705, column: 13)
!610 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !592)
!611 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !592)
!612 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !592)
!613 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !592)
!614 = !DILocation(line: 0, scope: !602, inlinedAt: !592)
!615 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !592)
!616 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !592)
!617 = distinct !{!617, !599, !618, !336}
!618 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !592)
!619 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !592)
!620 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !592)
!621 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !592)
!622 = !DILocation(line: 501, column: 2, scope: !575, inlinedAt: !582)
!623 = !DILocation(line: 0, scope: !624, inlinedAt: !582)
!624 = distinct !DILexicalBlock(scope: !575, file: !28, line: 503, column: 2)
!625 = !DILocation(line: 503, column: 2, scope: !624, inlinedAt: !582)
!626 = !DILocation(line: 507, column: 27, scope: !627, inlinedAt: !582)
!627 = distinct !DILexicalBlock(scope: !628, file: !28, line: 503, column: 49)
!628 = distinct !DILexicalBlock(scope: !624, file: !28, line: 503, column: 2)
!629 = !{!291, !282, i64 0}
!630 = !DILocation(line: 507, column: 17, scope: !627, inlinedAt: !582)
!631 = !DILocation(line: 507, column: 7, scope: !627, inlinedAt: !582)
!632 = !DILocation(line: 507, column: 14, scope: !627, inlinedAt: !582)
!633 = !DILocation(line: 503, column: 41, scope: !628, inlinedAt: !582)
!634 = distinct !{!634, !625, !635, !336}
!635 = !DILocation(line: 509, column: 2, scope: !624, inlinedAt: !582)
!636 = !DILocation(line: 232, column: 26, scope: !572, inlinedAt: !535)
!637 = !{!292, !292, i64 0}
!638 = !DILocation(line: 232, column: 30, scope: !572, inlinedAt: !535)
!639 = !DILocalVariable(name: "mol", arg: 1, scope: !640, file: !28, line: 529, type: !50)
!640 = distinct !DISubprogram(name: "match_str_range", scope: !28, file: !28, line: 529, type: !641, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !50, !23, !23}
!643 = !{!639, !644, !645, !646, !647}
!644 = !DILocalVariable(name: "lo", arg: 2, scope: !640, file: !28, line: 529, type: !23)
!645 = !DILocalVariable(name: "hi", arg: 3, scope: !640, file: !28, line: 529, type: !23)
!646 = !DILocalVariable(name: "m", scope: !640, file: !28, line: 531, type: !23)
!647 = !DILocalVariable(name: "sp", scope: !640, file: !28, line: 532, type: !65)
!648 = !DILocation(line: 0, scope: !640, inlinedAt: !649)
!649 = distinct !DILocation(line: 232, column: 4, scope: !572, inlinedAt: !535)
!650 = !DILocation(line: 534, column: 9, scope: !651, inlinedAt: !649)
!651 = distinct !DILexicalBlock(scope: !640, file: !28, line: 534, column: 6)
!652 = !{!653, !292, i64 96}
!653 = !{!"molecule_t", !283, i64 0, !292, i64 96, !282, i64 104, !292, i64 112, !292, i64 116, !292, i64 120, !282, i64 128}
!654 = !DILocation(line: 536, column: 37, scope: !655, inlinedAt: !649)
!655 = distinct !DILexicalBlock(scope: !656, file: !28, line: 536, column: 2)
!656 = distinct !DILexicalBlock(scope: !640, file: !28, line: 536, column: 2)
!657 = !DILocation(line: 536, column: 2, scope: !656, inlinedAt: !649)
!658 = !DILocation(line: 0, scope: !656, inlinedAt: !649)
!659 = !DILocation(line: 538, column: 10, scope: !660, inlinedAt: !649)
!660 = distinct !DILexicalBlock(scope: !661, file: !28, line: 538, column: 7)
!661 = distinct !DILexicalBlock(scope: !655, file: !28, line: 537, column: 25)
!662 = !DILocation(line: 538, column: 15, scope: !660, inlinedAt: !649)
!663 = !DILocation(line: 539, column: 8, scope: !660, inlinedAt: !649)
!664 = !DILocation(line: 539, column: 15, scope: !660, inlinedAt: !649)
!665 = !DILocation(line: 539, column: 4, scope: !660, inlinedAt: !649)
!666 = !DILocation(line: 537, column: 4, scope: !655, inlinedAt: !649)
!667 = !DILocation(line: 537, column: 17, scope: !655, inlinedAt: !649)
!668 = distinct !{!668, !657, !669, !336}
!669 = !DILocation(line: 540, column: 2, scope: !656, inlinedAt: !649)
!670 = !DILocation(line: 233, column: 16, scope: !570, inlinedAt: !535)
!671 = !DILocation(line: 233, column: 3, scope: !570, inlinedAt: !535)
!672 = !DILocalVariable(name: "item", arg: 1, scope: !673, file: !28, line: 357, type: !29)
!673 = distinct !DISubprogram(name: "is_pattern", scope: !28, file: !28, line: 357, type: !674, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !677)
!674 = !DISubroutineType(types: !675)
!675 = !{!23, !29, !676, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!677 = !{!672, !678, !679, !680, !681}
!678 = !DILocalVariable(name: "lo", arg: 2, scope: !673, file: !28, line: 357, type: !676)
!679 = !DILocalVariable(name: "hi", arg: 3, scope: !673, file: !28, line: 357, type: !676)
!680 = !DILocalVariable(name: "val", scope: !673, file: !28, line: 359, type: !23)
!681 = !DILocalVariable(name: "ip", scope: !673, file: !28, line: 360, type: !29)
!682 = !DILocation(line: 0, scope: !673, inlinedAt: !683)
!683 = distinct !DILocation(line: 234, column: 8, scope: !684, inlinedAt: !535)
!684 = distinct !DILexicalBlock(scope: !685, file: !28, line: 234, column: 8)
!685 = distinct !DILexicalBlock(scope: !570, file: !28, line: 233, column: 38)
!686 = !DILocation(line: 362, column: 7, scope: !687, inlinedAt: !683)
!687 = distinct !DILexicalBlock(scope: !673, file: !28, line: 362, column: 6)
!688 = !{!689, !689, i64 0}
!689 = !{!"short", !283, i64 0}
!690 = !DILocation(line: 362, column: 24, scope: !687, inlinedAt: !683)
!691 = !DILocation(line: 364, column: 6, scope: !692, inlinedAt: !683)
!692 = distinct !DILexicalBlock(scope: !673, file: !28, line: 364, column: 6)
!693 = !DILocation(line: 364, column: 6, scope: !673, inlinedAt: !683)
!694 = !DILocation(line: 365, column: 28, scope: !695, inlinedAt: !683)
!695 = distinct !DILexicalBlock(scope: !696, file: !28, line: 365, column: 3)
!696 = distinct !DILexicalBlock(scope: !697, file: !28, line: 365, column: 3)
!697 = distinct !DILexicalBlock(scope: !692, file: !28, line: 364, column: 24)
!698 = !DILocation(line: 366, column: 13, scope: !695, inlinedAt: !683)
!699 = !DILocation(line: 366, column: 19, scope: !695, inlinedAt: !683)
!700 = !DILocation(line: 366, column: 25, scope: !695, inlinedAt: !683)
!701 = !DILocation(line: 365, column: 46, scope: !695, inlinedAt: !683)
!702 = !DILocation(line: 365, column: 3, scope: !696, inlinedAt: !683)
!703 = distinct !{!703, !702, !704, !336}
!704 = !DILocation(line: 366, column: 27, scope: !696, inlinedAt: !683)
!705 = !DILocation(line: 367, column: 7, scope: !697, inlinedAt: !683)
!706 = !DILocation(line: 368, column: 7, scope: !697, inlinedAt: !683)
!707 = !DILocation(line: 369, column: 8, scope: !708, inlinedAt: !683)
!708 = distinct !DILexicalBlock(scope: !709, file: !28, line: 368, column: 13)
!709 = distinct !DILexicalBlock(scope: !697, file: !28, line: 368, column: 7)
!710 = !DILocation(line: 370, column: 4, scope: !708, inlinedAt: !683)
!711 = !DILocation(line: 372, column: 6, scope: !712, inlinedAt: !683)
!712 = distinct !DILexicalBlock(scope: !709, file: !28, line: 371, column: 13)
!713 = !DILocation(line: 373, column: 8, scope: !714, inlinedAt: !683)
!714 = distinct !DILexicalBlock(scope: !697, file: !28, line: 373, column: 7)
!715 = !DILocation(line: 372, column: 4, scope: !712, inlinedAt: !683)
!716 = !DILocation(line: 0, scope: !697, inlinedAt: !683)
!717 = !DILocation(line: 373, column: 7, scope: !697, inlinedAt: !683)
!718 = !DILocation(line: 376, column: 14, scope: !719, inlinedAt: !683)
!719 = distinct !DILexicalBlock(scope: !714, file: !28, line: 376, column: 13)
!720 = !DILocation(line: 376, column: 13, scope: !714, inlinedAt: !683)
!721 = !DILocation(line: 378, column: 17, scope: !722, inlinedAt: !683)
!722 = distinct !DILexicalBlock(scope: !723, file: !28, line: 378, column: 3)
!723 = distinct !DILexicalBlock(scope: !697, file: !28, line: 378, column: 3)
!724 = !DILocation(line: 379, column: 13, scope: !722, inlinedAt: !683)
!725 = !DILocation(line: 379, column: 19, scope: !722, inlinedAt: !683)
!726 = !DILocation(line: 379, column: 25, scope: !722, inlinedAt: !683)
!727 = !DILocation(line: 378, column: 35, scope: !722, inlinedAt: !683)
!728 = !DILocation(line: 378, column: 3, scope: !723, inlinedAt: !683)
!729 = distinct !{!729, !728, !730, !336}
!730 = !DILocation(line: 379, column: 27, scope: !723, inlinedAt: !683)
!731 = !DILocation(line: 383, column: 7, scope: !732, inlinedAt: !683)
!732 = distinct !DILexicalBlock(scope: !692, file: !28, line: 382, column: 7)
!733 = !DILocation(line: 384, column: 9, scope: !732, inlinedAt: !683)
!734 = !DILocation(line: 386, column: 7, scope: !735, inlinedAt: !683)
!735 = distinct !DILexicalBlock(scope: !673, file: !28, line: 386, column: 6)
!736 = !DILocation(line: 386, column: 6, scope: !673, inlinedAt: !683)
!737 = !DILocation(line: 389, column: 12, scope: !738, inlinedAt: !683)
!738 = distinct !DILexicalBlock(scope: !735, file: !28, line: 389, column: 12)
!739 = !DILocation(line: 389, column: 12, scope: !735, inlinedAt: !683)
!740 = !DILocation(line: 237, column: 31, scope: !684, inlinedAt: !535)
!741 = !DILocation(line: 390, column: 17, scope: !742, inlinedAt: !683)
!742 = distinct !DILexicalBlock(scope: !743, file: !28, line: 390, column: 3)
!743 = distinct !DILexicalBlock(scope: !744, file: !28, line: 390, column: 3)
!744 = distinct !DILexicalBlock(scope: !738, file: !28, line: 389, column: 28)
!745 = !DILocation(line: 391, column: 13, scope: !742, inlinedAt: !683)
!746 = !DILocation(line: 391, column: 19, scope: !742, inlinedAt: !683)
!747 = !DILocation(line: 391, column: 25, scope: !742, inlinedAt: !683)
!748 = !DILocation(line: 390, column: 35, scope: !742, inlinedAt: !683)
!749 = !DILocation(line: 390, column: 3, scope: !743, inlinedAt: !683)
!750 = distinct !{!750, !749, !751, !336}
!751 = !DILocation(line: 391, column: 27, scope: !743, inlinedAt: !683)
!752 = !DILocation(line: 234, column: 8, scope: !684, inlinedAt: !535)
!753 = !DILocation(line: 234, column: 8, scope: !685, inlinedAt: !535)
!754 = !DILocation(line: 0, scope: !575, inlinedAt: !755)
!755 = distinct !DILocation(line: 235, column: 5, scope: !684, inlinedAt: !535)
!756 = !DILocation(line: 0, scope: !584, inlinedAt: !757)
!757 = distinct !DILocation(line: 497, column: 2, scope: !575, inlinedAt: !755)
!758 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !757)
!759 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !757)
!760 = !DILocation(line: 0, scope: !595, inlinedAt: !757)
!761 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !757)
!762 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !757)
!763 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !757)
!764 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !757)
!765 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !757)
!766 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !757)
!767 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !757)
!768 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !757)
!769 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !757)
!770 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !757)
!771 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !757)
!772 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !757)
!773 = !DILocation(line: 0, scope: !602, inlinedAt: !757)
!774 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !757)
!775 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !757)
!776 = distinct !{!776, !762, !777, !336}
!777 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !757)
!778 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !757)
!779 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !757)
!780 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !757)
!781 = !DILocation(line: 501, column: 2, scope: !575, inlinedAt: !755)
!782 = !DILocation(line: 0, scope: !624, inlinedAt: !755)
!783 = !DILocation(line: 503, column: 2, scope: !624, inlinedAt: !755)
!784 = !DILocation(line: 507, column: 27, scope: !627, inlinedAt: !755)
!785 = !DILocation(line: 507, column: 17, scope: !627, inlinedAt: !755)
!786 = !DILocation(line: 507, column: 7, scope: !627, inlinedAt: !755)
!787 = !DILocation(line: 507, column: 14, scope: !627, inlinedAt: !755)
!788 = !DILocation(line: 503, column: 41, scope: !628, inlinedAt: !755)
!789 = distinct !{!789, !783, !790, !336}
!790 = !DILocation(line: 509, column: 2, scope: !624, inlinedAt: !755)
!791 = !DILocation(line: 0, scope: !640, inlinedAt: !792)
!792 = distinct !DILocation(line: 237, column: 5, scope: !684, inlinedAt: !535)
!793 = !DILocation(line: 237, column: 27, scope: !684, inlinedAt: !535)
!794 = !DILocation(line: 534, column: 9, scope: !651, inlinedAt: !792)
!795 = !DILocation(line: 536, column: 37, scope: !655, inlinedAt: !792)
!796 = !DILocation(line: 536, column: 2, scope: !656, inlinedAt: !792)
!797 = !DILocation(line: 0, scope: !656, inlinedAt: !792)
!798 = !DILocation(line: 538, column: 10, scope: !660, inlinedAt: !792)
!799 = !DILocation(line: 538, column: 15, scope: !660, inlinedAt: !792)
!800 = !DILocation(line: 539, column: 8, scope: !660, inlinedAt: !792)
!801 = !DILocation(line: 539, column: 15, scope: !660, inlinedAt: !792)
!802 = !DILocation(line: 539, column: 4, scope: !660, inlinedAt: !792)
!803 = !DILocation(line: 537, column: 4, scope: !655, inlinedAt: !792)
!804 = !DILocation(line: 537, column: 17, scope: !655, inlinedAt: !792)
!805 = distinct !{!805, !796, !806, !336}
!806 = !DILocation(line: 540, column: 2, scope: !656, inlinedAt: !792)
!807 = distinct !{!807, !671, !808, !336}
!808 = !DILocation(line: 238, column: 3, scope: !570, inlinedAt: !535)
!809 = !DILocation(line: 0, scope: !640, inlinedAt: !810)
!810 = distinct !DILocation(line: 240, column: 3, scope: !567, inlinedAt: !535)
!811 = !DILocation(line: 536, column: 37, scope: !655, inlinedAt: !810)
!812 = !DILocation(line: 536, column: 2, scope: !656, inlinedAt: !810)
!813 = !DILocation(line: 0, scope: !656, inlinedAt: !810)
!814 = !DILocation(line: 538, column: 15, scope: !660, inlinedAt: !810)
!815 = !DILocation(line: 539, column: 8, scope: !660, inlinedAt: !810)
!816 = !DILocation(line: 539, column: 15, scope: !660, inlinedAt: !810)
!817 = !DILocation(line: 539, column: 4, scope: !660, inlinedAt: !810)
!818 = !DILocation(line: 537, column: 4, scope: !655, inlinedAt: !810)
!819 = !DILocation(line: 537, column: 17, scope: !655, inlinedAt: !810)
!820 = distinct !{!820, !812, !821, !336}
!821 = !DILocation(line: 540, column: 2, scope: !656, inlinedAt: !810)
!822 = !DILocation(line: 242, column: 6, scope: !823, inlinedAt: !535)
!823 = distinct !DILexicalBlock(scope: !527, file: !28, line: 242, column: 6)
!824 = !DILocation(line: 242, column: 6, scope: !527, inlinedAt: !535)
!825 = !DILocation(line: 243, column: 8, scope: !826, inlinedAt: !535)
!826 = distinct !DILexicalBlock(scope: !823, file: !28, line: 242, column: 13)
!827 = !DILocation(line: 244, column: 7, scope: !828, inlinedAt: !535)
!828 = distinct !DILexicalBlock(scope: !826, file: !28, line: 244, column: 7)
!829 = !DILocation(line: 244, column: 7, scope: !826, inlinedAt: !535)
!830 = !DILocalVariable(name: "mol", arg: 1, scope: !831, file: !28, line: 565, type: !50)
!831 = distinct !DISubprogram(name: "match_res_pat", scope: !28, file: !28, line: 565, type: !576, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !832)
!832 = !{!830, !833, !834, !835, !836}
!833 = !DILocalVariable(name: "pat", arg: 2, scope: !831, file: !28, line: 565, type: !29)
!834 = !DILocalVariable(name: "r", scope: !831, file: !28, line: 567, type: !23)
!835 = !DILocalVariable(name: "sp", scope: !831, file: !28, line: 568, type: !65)
!836 = !DILocalVariable(name: "res", scope: !831, file: !28, line: 569, type: !82)
!837 = !DILocation(line: 0, scope: !831, inlinedAt: !838)
!838 = distinct !DILocation(line: 245, column: 4, scope: !828, inlinedAt: !535)
!839 = !DILocation(line: 0, scope: !584, inlinedAt: !840)
!840 = distinct !DILocation(line: 571, column: 2, scope: !831, inlinedAt: !838)
!841 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !840)
!842 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !840)
!843 = !DILocation(line: 0, scope: !595, inlinedAt: !840)
!844 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !840)
!845 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !840)
!846 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !840)
!847 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !840)
!848 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !840)
!849 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !840)
!850 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !840)
!851 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !840)
!852 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !840)
!853 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !840)
!854 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !840)
!855 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !840)
!856 = !DILocation(line: 0, scope: !602, inlinedAt: !840)
!857 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !840)
!858 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !840)
!859 = distinct !{!859, !845, !860, !336}
!860 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !840)
!861 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !840)
!862 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !840)
!863 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !840)
!864 = !DILocation(line: 575, column: 2, scope: !831, inlinedAt: !838)
!865 = !DILocation(line: 0, scope: !866, inlinedAt: !838)
!866 = distinct !DILexicalBlock(scope: !831, file: !28, line: 577, column: 2)
!867 = !DILocation(line: 577, column: 2, scope: !866, inlinedAt: !838)
!868 = !DILocation(line: 578, column: 23, scope: !869, inlinedAt: !838)
!869 = distinct !DILexicalBlock(scope: !870, file: !28, line: 578, column: 7)
!870 = distinct !DILexicalBlock(scope: !871, file: !28, line: 577, column: 49)
!871 = distinct !DILexicalBlock(scope: !866, file: !28, line: 577, column: 2)
!872 = !DILocation(line: 578, column: 17, scope: !869, inlinedAt: !838)
!873 = !DILocation(line: 578, column: 7, scope: !870, inlinedAt: !838)
!874 = !DILocation(line: 579, column: 24, scope: !875, inlinedAt: !838)
!875 = distinct !DILexicalBlock(scope: !876, file: !28, line: 579, column: 4)
!876 = distinct !DILexicalBlock(scope: !877, file: !28, line: 579, column: 4)
!877 = distinct !DILexicalBlock(scope: !869, file: !28, line: 578, column: 31)
!878 = !DILocation(line: 579, column: 18, scope: !875, inlinedAt: !838)
!879 = !DILocation(line: 579, column: 4, scope: !876, inlinedAt: !838)
!880 = !DILocation(line: 580, column: 15, scope: !881, inlinedAt: !838)
!881 = distinct !DILexicalBlock(scope: !875, file: !28, line: 579, column: 42)
!882 = !DILocation(line: 580, column: 11, scope: !881, inlinedAt: !838)
!883 = !DILocation(line: 585, column: 31, scope: !881, inlinedAt: !838)
!884 = !{!307, !282, i64 24}
!885 = !DILocation(line: 585, column: 20, scope: !881, inlinedAt: !838)
!886 = !DILocation(line: 585, column: 10, scope: !881, inlinedAt: !838)
!887 = !DILocation(line: 585, column: 17, scope: !881, inlinedAt: !838)
!888 = !DILocation(line: 579, column: 38, scope: !875, inlinedAt: !838)
!889 = distinct !{!889, !879, !890, !336}
!890 = !DILocation(line: 588, column: 4, scope: !876, inlinedAt: !838)
!891 = !DILocation(line: 577, column: 41, scope: !871, inlinedAt: !838)
!892 = distinct !{!892, !867, !893, !336}
!893 = !DILocation(line: 590, column: 2, scope: !866, inlinedAt: !838)
!894 = !DILocation(line: 247, column: 26, scope: !828, inlinedAt: !535)
!895 = !DILocation(line: 247, column: 30, scope: !828, inlinedAt: !535)
!896 = !DILocalVariable(name: "mol", arg: 1, scope: !897, file: !28, line: 608, type: !50)
!897 = distinct !DISubprogram(name: "match_res_range", scope: !28, file: !28, line: 608, type: !641, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !898)
!898 = !{!896, !899, !900, !901, !902, !903, !904}
!899 = !DILocalVariable(name: "lo", arg: 2, scope: !897, file: !28, line: 608, type: !23)
!900 = !DILocalVariable(name: "hi", arg: 3, scope: !897, file: !28, line: 608, type: !23)
!901 = !DILocalVariable(name: "r", scope: !897, file: !28, line: 610, type: !23)
!902 = !DILocalVariable(name: "rhi", scope: !897, file: !28, line: 610, type: !23)
!903 = !DILocalVariable(name: "sp", scope: !897, file: !28, line: 611, type: !65)
!904 = !DILocalVariable(name: "res", scope: !897, file: !28, line: 612, type: !82)
!905 = !DILocation(line: 0, scope: !897, inlinedAt: !906)
!906 = distinct !DILocation(line: 247, column: 4, scope: !828, inlinedAt: !535)
!907 = !DILocation(line: 0, scope: !908, inlinedAt: !906)
!908 = distinct !DILexicalBlock(scope: !897, file: !28, line: 614, column: 2)
!909 = !DILocation(line: 614, column: 2, scope: !908, inlinedAt: !906)
!910 = !DILocation(line: 616, column: 10, scope: !911, inlinedAt: !906)
!911 = distinct !DILexicalBlock(scope: !912, file: !28, line: 615, column: 31)
!912 = distinct !DILexicalBlock(scope: !913, file: !28, line: 615, column: 7)
!913 = distinct !DILexicalBlock(scope: !914, file: !28, line: 614, column: 49)
!914 = distinct !DILexicalBlock(scope: !908, file: !28, line: 614, column: 2)
!915 = !DILocation(line: 615, column: 23, scope: !912, inlinedAt: !906)
!916 = !DILocation(line: 615, column: 17, scope: !912, inlinedAt: !906)
!917 = !DILocation(line: 615, column: 7, scope: !913, inlinedAt: !906)
!918 = !DILocation(line: 616, column: 32, scope: !911, inlinedAt: !906)
!919 = !DILocation(line: 617, column: 18, scope: !920, inlinedAt: !906)
!920 = distinct !DILexicalBlock(scope: !921, file: !28, line: 617, column: 4)
!921 = distinct !DILexicalBlock(scope: !911, file: !28, line: 617, column: 4)
!922 = !DILocation(line: 617, column: 4, scope: !921, inlinedAt: !906)
!923 = !DILocation(line: 619, column: 17, scope: !924, inlinedAt: !906)
!924 = distinct !DILexicalBlock(scope: !925, file: !28, line: 619, column: 9)
!925 = distinct !DILexicalBlock(scope: !920, file: !28, line: 617, column: 42)
!926 = !DILocation(line: 619, column: 12, scope: !924, inlinedAt: !906)
!927 = !DILocation(line: 619, column: 21, scope: !924, inlinedAt: !906)
!928 = !DILocation(line: 618, column: 15, scope: !925, inlinedAt: !906)
!929 = !DILocation(line: 618, column: 11, scope: !925, inlinedAt: !906)
!930 = !DILocation(line: 620, column: 11, scope: !924, inlinedAt: !906)
!931 = !DILocation(line: 620, column: 18, scope: !924, inlinedAt: !906)
!932 = !DILocation(line: 620, column: 6, scope: !924, inlinedAt: !906)
!933 = distinct !{!933, !922, !934, !336}
!934 = !DILocation(line: 621, column: 4, scope: !921, inlinedAt: !906)
!935 = !DILocation(line: 614, column: 41, scope: !914, inlinedAt: !906)
!936 = distinct !{!936, !909, !937, !336}
!937 = !DILocation(line: 623, column: 2, scope: !908, inlinedAt: !906)
!938 = distinct !{!938, !922, !934, !336}
!939 = distinct !{!939, !909, !937, !336}
!940 = !DILocation(line: 248, column: 16, scope: !826, inlinedAt: !535)
!941 = !DILocation(line: 248, column: 3, scope: !826, inlinedAt: !535)
!942 = !DILocation(line: 0, scope: !673, inlinedAt: !943)
!943 = distinct !DILocation(line: 249, column: 8, scope: !944, inlinedAt: !535)
!944 = distinct !DILexicalBlock(scope: !945, file: !28, line: 249, column: 8)
!945 = distinct !DILexicalBlock(scope: !826, file: !28, line: 248, column: 38)
!946 = !DILocation(line: 362, column: 7, scope: !687, inlinedAt: !943)
!947 = !DILocation(line: 362, column: 24, scope: !687, inlinedAt: !943)
!948 = !DILocation(line: 364, column: 6, scope: !692, inlinedAt: !943)
!949 = !DILocation(line: 364, column: 6, scope: !673, inlinedAt: !943)
!950 = !DILocation(line: 365, column: 28, scope: !695, inlinedAt: !943)
!951 = !DILocation(line: 366, column: 13, scope: !695, inlinedAt: !943)
!952 = !DILocation(line: 366, column: 19, scope: !695, inlinedAt: !943)
!953 = !DILocation(line: 366, column: 25, scope: !695, inlinedAt: !943)
!954 = !DILocation(line: 365, column: 46, scope: !695, inlinedAt: !943)
!955 = !DILocation(line: 365, column: 3, scope: !696, inlinedAt: !943)
!956 = distinct !{!956, !955, !957, !336}
!957 = !DILocation(line: 366, column: 27, scope: !696, inlinedAt: !943)
!958 = !DILocation(line: 367, column: 7, scope: !697, inlinedAt: !943)
!959 = !DILocation(line: 368, column: 7, scope: !697, inlinedAt: !943)
!960 = !DILocation(line: 369, column: 8, scope: !708, inlinedAt: !943)
!961 = !DILocation(line: 370, column: 4, scope: !708, inlinedAt: !943)
!962 = !DILocation(line: 372, column: 6, scope: !712, inlinedAt: !943)
!963 = !DILocation(line: 373, column: 8, scope: !714, inlinedAt: !943)
!964 = !DILocation(line: 372, column: 4, scope: !712, inlinedAt: !943)
!965 = !DILocation(line: 0, scope: !697, inlinedAt: !943)
!966 = !DILocation(line: 373, column: 7, scope: !697, inlinedAt: !943)
!967 = !DILocation(line: 374, column: 8, scope: !968, inlinedAt: !943)
!968 = distinct !DILexicalBlock(scope: !714, file: !28, line: 373, column: 13)
!969 = !DILocation(line: 375, column: 4, scope: !968, inlinedAt: !943)
!970 = !DILocation(line: 376, column: 14, scope: !719, inlinedAt: !943)
!971 = !DILocation(line: 376, column: 13, scope: !714, inlinedAt: !943)
!972 = !DILocation(line: 378, column: 17, scope: !722, inlinedAt: !943)
!973 = !DILocation(line: 379, column: 13, scope: !722, inlinedAt: !943)
!974 = !DILocation(line: 379, column: 19, scope: !722, inlinedAt: !943)
!975 = !DILocation(line: 379, column: 25, scope: !722, inlinedAt: !943)
!976 = !DILocation(line: 378, column: 35, scope: !722, inlinedAt: !943)
!977 = !DILocation(line: 378, column: 3, scope: !723, inlinedAt: !943)
!978 = distinct !{!978, !977, !979, !336}
!979 = !DILocation(line: 379, column: 27, scope: !723, inlinedAt: !943)
!980 = !DILocation(line: 383, column: 7, scope: !732, inlinedAt: !943)
!981 = !DILocation(line: 384, column: 9, scope: !732, inlinedAt: !943)
!982 = !DILocation(line: 386, column: 7, scope: !735, inlinedAt: !943)
!983 = !DILocation(line: 386, column: 6, scope: !673, inlinedAt: !943)
!984 = !DILocation(line: 387, column: 7, scope: !985, inlinedAt: !943)
!985 = distinct !DILexicalBlock(scope: !735, file: !28, line: 386, column: 12)
!986 = !DILocation(line: 388, column: 3, scope: !985, inlinedAt: !943)
!987 = !DILocation(line: 389, column: 12, scope: !738, inlinedAt: !943)
!988 = !DILocation(line: 389, column: 12, scope: !735, inlinedAt: !943)
!989 = !DILocation(line: 252, column: 31, scope: !944, inlinedAt: !535)
!990 = !DILocation(line: 390, column: 17, scope: !742, inlinedAt: !943)
!991 = !DILocation(line: 391, column: 13, scope: !742, inlinedAt: !943)
!992 = !DILocation(line: 391, column: 19, scope: !742, inlinedAt: !943)
!993 = !DILocation(line: 391, column: 25, scope: !742, inlinedAt: !943)
!994 = !DILocation(line: 390, column: 35, scope: !742, inlinedAt: !943)
!995 = !DILocation(line: 390, column: 3, scope: !743, inlinedAt: !943)
!996 = distinct !{!996, !995, !997, !336}
!997 = !DILocation(line: 391, column: 27, scope: !743, inlinedAt: !943)
!998 = !DILocation(line: 249, column: 8, scope: !944, inlinedAt: !535)
!999 = !DILocation(line: 249, column: 8, scope: !945, inlinedAt: !535)
!1000 = !DILocation(line: 0, scope: !831, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 250, column: 5, scope: !944, inlinedAt: !535)
!1002 = !DILocation(line: 0, scope: !584, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 571, column: 2, scope: !831, inlinedAt: !1001)
!1004 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !1003)
!1005 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !1003)
!1006 = !DILocation(line: 0, scope: !595, inlinedAt: !1003)
!1007 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !1003)
!1008 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !1003)
!1009 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !1003)
!1010 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !1003)
!1011 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !1003)
!1012 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !1003)
!1013 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !1003)
!1014 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !1003)
!1015 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !1003)
!1016 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !1003)
!1017 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !1003)
!1018 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !1003)
!1019 = !DILocation(line: 0, scope: !602, inlinedAt: !1003)
!1020 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !1003)
!1021 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1003)
!1022 = distinct !{!1022, !1008, !1023, !336}
!1023 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !1003)
!1024 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !1003)
!1025 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !1003)
!1026 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !1003)
!1027 = !DILocation(line: 575, column: 2, scope: !831, inlinedAt: !1001)
!1028 = !DILocation(line: 0, scope: !866, inlinedAt: !1001)
!1029 = !DILocation(line: 577, column: 2, scope: !866, inlinedAt: !1001)
!1030 = !DILocation(line: 578, column: 23, scope: !869, inlinedAt: !1001)
!1031 = !DILocation(line: 578, column: 17, scope: !869, inlinedAt: !1001)
!1032 = !DILocation(line: 578, column: 7, scope: !870, inlinedAt: !1001)
!1033 = !DILocation(line: 579, column: 24, scope: !875, inlinedAt: !1001)
!1034 = !DILocation(line: 579, column: 18, scope: !875, inlinedAt: !1001)
!1035 = !DILocation(line: 579, column: 4, scope: !876, inlinedAt: !1001)
!1036 = !DILocation(line: 580, column: 15, scope: !881, inlinedAt: !1001)
!1037 = !DILocation(line: 580, column: 11, scope: !881, inlinedAt: !1001)
!1038 = !DILocation(line: 585, column: 31, scope: !881, inlinedAt: !1001)
!1039 = !DILocation(line: 585, column: 20, scope: !881, inlinedAt: !1001)
!1040 = !DILocation(line: 585, column: 10, scope: !881, inlinedAt: !1001)
!1041 = !DILocation(line: 585, column: 17, scope: !881, inlinedAt: !1001)
!1042 = !DILocation(line: 579, column: 38, scope: !875, inlinedAt: !1001)
!1043 = distinct !{!1043, !1035, !1044, !336}
!1044 = !DILocation(line: 588, column: 4, scope: !876, inlinedAt: !1001)
!1045 = !DILocation(line: 577, column: 41, scope: !871, inlinedAt: !1001)
!1046 = distinct !{!1046, !1029, !1047, !336}
!1047 = !DILocation(line: 590, column: 2, scope: !866, inlinedAt: !1001)
!1048 = !DILocation(line: 252, column: 27, scope: !944, inlinedAt: !535)
!1049 = !DILocation(line: 0, scope: !897, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 252, column: 5, scope: !944, inlinedAt: !535)
!1051 = !DILocation(line: 0, scope: !908, inlinedAt: !1050)
!1052 = !DILocation(line: 614, column: 2, scope: !908, inlinedAt: !1050)
!1053 = !DILocation(line: 616, column: 10, scope: !911, inlinedAt: !1050)
!1054 = !DILocation(line: 615, column: 23, scope: !912, inlinedAt: !1050)
!1055 = !DILocation(line: 615, column: 17, scope: !912, inlinedAt: !1050)
!1056 = !DILocation(line: 615, column: 7, scope: !913, inlinedAt: !1050)
!1057 = !DILocation(line: 616, column: 32, scope: !911, inlinedAt: !1050)
!1058 = !DILocation(line: 617, column: 18, scope: !920, inlinedAt: !1050)
!1059 = !DILocation(line: 617, column: 4, scope: !921, inlinedAt: !1050)
!1060 = !DILocation(line: 619, column: 17, scope: !924, inlinedAt: !1050)
!1061 = !DILocation(line: 619, column: 12, scope: !924, inlinedAt: !1050)
!1062 = !DILocation(line: 619, column: 21, scope: !924, inlinedAt: !1050)
!1063 = !DILocation(line: 618, column: 15, scope: !925, inlinedAt: !1050)
!1064 = !DILocation(line: 618, column: 11, scope: !925, inlinedAt: !1050)
!1065 = !DILocation(line: 620, column: 11, scope: !924, inlinedAt: !1050)
!1066 = !DILocation(line: 620, column: 18, scope: !924, inlinedAt: !1050)
!1067 = !DILocation(line: 620, column: 6, scope: !924, inlinedAt: !1050)
!1068 = distinct !{!1068, !1059, !1069, !336}
!1069 = !DILocation(line: 621, column: 4, scope: !921, inlinedAt: !1050)
!1070 = !DILocation(line: 614, column: 41, scope: !914, inlinedAt: !1050)
!1071 = distinct !{!1071, !1052, !1072, !336}
!1072 = !DILocation(line: 623, column: 2, scope: !908, inlinedAt: !1050)
!1073 = distinct !{!1073, !1059, !1069, !336}
!1074 = distinct !{!1074, !1052, !1072, !336}
!1075 = distinct !{!1075, !941, !1076, !336}
!1076 = !DILocation(line: 253, column: 3, scope: !826, inlinedAt: !535)
!1077 = !DILocation(line: 0, scope: !897, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 255, column: 3, scope: !823, inlinedAt: !535)
!1079 = !DILocation(line: 0, scope: !908, inlinedAt: !1078)
!1080 = !DILocation(line: 614, column: 2, scope: !908, inlinedAt: !1078)
!1081 = !DILocation(line: 615, column: 23, scope: !912, inlinedAt: !1078)
!1082 = !DILocation(line: 615, column: 17, scope: !912, inlinedAt: !1078)
!1083 = !DILocation(line: 615, column: 7, scope: !913, inlinedAt: !1078)
!1084 = !DILocation(line: 616, column: 32, scope: !911, inlinedAt: !1078)
!1085 = !DILocation(line: 617, column: 18, scope: !920, inlinedAt: !1078)
!1086 = !DILocation(line: 617, column: 4, scope: !921, inlinedAt: !1078)
!1087 = !DILocation(line: 619, column: 17, scope: !924, inlinedAt: !1078)
!1088 = !DILocation(line: 618, column: 11, scope: !925, inlinedAt: !1078)
!1089 = !DILocation(line: 620, column: 11, scope: !924, inlinedAt: !1078)
!1090 = !DILocation(line: 620, column: 18, scope: !924, inlinedAt: !1078)
!1091 = distinct !{!1091, !1086, !1092, !336}
!1092 = !DILocation(line: 621, column: 4, scope: !921, inlinedAt: !1078)
!1093 = distinct !{!1093, !411}
!1094 = !DILocation(line: 614, column: 41, scope: !914, inlinedAt: !1078)
!1095 = distinct !{!1095, !1080, !1096, !336}
!1096 = !DILocation(line: 623, column: 2, scope: !908, inlinedAt: !1078)
!1097 = !DILocation(line: 257, column: 6, scope: !1098, inlinedAt: !535)
!1098 = distinct !DILexicalBlock(scope: !527, file: !28, line: 257, column: 6)
!1099 = !DILocation(line: 257, column: 6, scope: !527, inlinedAt: !535)
!1100 = !DILocation(line: 258, column: 8, scope: !1101, inlinedAt: !535)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !28, line: 257, column: 13)
!1102 = !DILocation(line: 259, column: 7, scope: !1103, inlinedAt: !535)
!1103 = distinct !DILexicalBlock(scope: !1101, file: !28, line: 259, column: 7)
!1104 = !DILocation(line: 259, column: 7, scope: !1101, inlinedAt: !535)
!1105 = !DILocation(line: 260, column: 4, scope: !1103, inlinedAt: !535)
!1106 = !DILocation(line: 262, column: 13, scope: !1107, inlinedAt: !535)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !28, line: 261, column: 7)
!1108 = !DILocation(line: 262, column: 4, scope: !1107, inlinedAt: !535)
!1109 = !DILocation(line: 264, column: 16, scope: !1101, inlinedAt: !535)
!1110 = !DILocation(line: 264, column: 3, scope: !1101, inlinedAt: !535)
!1111 = !DILocation(line: 0, scope: !673, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 265, column: 8, scope: !1113, inlinedAt: !535)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !28, line: 265, column: 8)
!1114 = distinct !DILexicalBlock(scope: !1101, file: !28, line: 264, column: 38)
!1115 = !DILocation(line: 362, column: 7, scope: !687, inlinedAt: !1112)
!1116 = !DILocation(line: 362, column: 24, scope: !687, inlinedAt: !1112)
!1117 = !DILocation(line: 364, column: 6, scope: !692, inlinedAt: !1112)
!1118 = !DILocation(line: 364, column: 6, scope: !673, inlinedAt: !1112)
!1119 = !DILocation(line: 365, column: 28, scope: !695, inlinedAt: !1112)
!1120 = !DILocation(line: 366, column: 13, scope: !695, inlinedAt: !1112)
!1121 = !DILocation(line: 366, column: 19, scope: !695, inlinedAt: !1112)
!1122 = !DILocation(line: 366, column: 25, scope: !695, inlinedAt: !1112)
!1123 = !DILocation(line: 365, column: 46, scope: !695, inlinedAt: !1112)
!1124 = !DILocation(line: 365, column: 3, scope: !696, inlinedAt: !1112)
!1125 = distinct !{!1125, !1124, !1126, !336}
!1126 = !DILocation(line: 366, column: 27, scope: !696, inlinedAt: !1112)
!1127 = !DILocation(line: 367, column: 7, scope: !697, inlinedAt: !1112)
!1128 = !DILocation(line: 368, column: 7, scope: !697, inlinedAt: !1112)
!1129 = !DILocation(line: 369, column: 8, scope: !708, inlinedAt: !1112)
!1130 = !DILocation(line: 370, column: 4, scope: !708, inlinedAt: !1112)
!1131 = !DILocation(line: 372, column: 6, scope: !712, inlinedAt: !1112)
!1132 = !DILocation(line: 373, column: 8, scope: !714, inlinedAt: !1112)
!1133 = !DILocation(line: 372, column: 4, scope: !712, inlinedAt: !1112)
!1134 = !DILocation(line: 0, scope: !697, inlinedAt: !1112)
!1135 = !DILocation(line: 373, column: 7, scope: !697, inlinedAt: !1112)
!1136 = !DILocation(line: 374, column: 8, scope: !968, inlinedAt: !1112)
!1137 = !DILocation(line: 375, column: 4, scope: !968, inlinedAt: !1112)
!1138 = !DILocation(line: 376, column: 14, scope: !719, inlinedAt: !1112)
!1139 = !DILocation(line: 376, column: 13, scope: !714, inlinedAt: !1112)
!1140 = !DILocation(line: 378, column: 17, scope: !722, inlinedAt: !1112)
!1141 = !DILocation(line: 379, column: 13, scope: !722, inlinedAt: !1112)
!1142 = !DILocation(line: 379, column: 19, scope: !722, inlinedAt: !1112)
!1143 = !DILocation(line: 379, column: 25, scope: !722, inlinedAt: !1112)
!1144 = !DILocation(line: 378, column: 35, scope: !722, inlinedAt: !1112)
!1145 = !DILocation(line: 378, column: 3, scope: !723, inlinedAt: !1112)
!1146 = distinct !{!1146, !1145, !1147, !336}
!1147 = !DILocation(line: 379, column: 27, scope: !723, inlinedAt: !1112)
!1148 = !DILocation(line: 383, column: 7, scope: !732, inlinedAt: !1112)
!1149 = !DILocation(line: 384, column: 9, scope: !732, inlinedAt: !1112)
!1150 = !DILocation(line: 386, column: 7, scope: !735, inlinedAt: !1112)
!1151 = !DILocation(line: 386, column: 6, scope: !673, inlinedAt: !1112)
!1152 = !DILocation(line: 387, column: 7, scope: !985, inlinedAt: !1112)
!1153 = !DILocation(line: 388, column: 3, scope: !985, inlinedAt: !1112)
!1154 = !DILocation(line: 389, column: 12, scope: !738, inlinedAt: !1112)
!1155 = !DILocation(line: 389, column: 12, scope: !735, inlinedAt: !1112)
!1156 = !DILocation(line: 390, column: 17, scope: !742, inlinedAt: !1112)
!1157 = !DILocation(line: 391, column: 13, scope: !742, inlinedAt: !1112)
!1158 = !DILocation(line: 391, column: 19, scope: !742, inlinedAt: !1112)
!1159 = !DILocation(line: 391, column: 25, scope: !742, inlinedAt: !1112)
!1160 = !DILocation(line: 390, column: 35, scope: !742, inlinedAt: !1112)
!1161 = !DILocation(line: 390, column: 3, scope: !743, inlinedAt: !1112)
!1162 = distinct !{!1162, !1161, !1163, !336}
!1163 = !DILocation(line: 391, column: 27, scope: !743, inlinedAt: !1112)
!1164 = !DILocation(line: 265, column: 8, scope: !1113, inlinedAt: !535)
!1165 = !DILocation(line: 265, column: 8, scope: !1114, inlinedAt: !535)
!1166 = !DILocalVariable(name: "mol", arg: 1, scope: !1167, file: !28, line: 646, type: !50)
!1167 = distinct !DISubprogram(name: "match_atom_pat", scope: !28, file: !28, line: 646, type: !576, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1168)
!1168 = !{!1166, !1169, !1170, !1171, !1172, !1173, !1174}
!1169 = !DILocalVariable(name: "pat", arg: 2, scope: !1167, file: !28, line: 646, type: !29)
!1170 = !DILocalVariable(name: "r", scope: !1167, file: !28, line: 648, type: !23)
!1171 = !DILocalVariable(name: "a", scope: !1167, file: !28, line: 648, type: !23)
!1172 = !DILocalVariable(name: "sp", scope: !1167, file: !28, line: 649, type: !65)
!1173 = !DILocalVariable(name: "res", scope: !1167, file: !28, line: 650, type: !82)
!1174 = !DILocalVariable(name: "ap", scope: !1167, file: !28, line: 651, type: !128)
!1175 = !DILocation(line: 0, scope: !1167, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 266, column: 5, scope: !1113, inlinedAt: !535)
!1177 = !DILocation(line: 0, scope: !584, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 653, column: 2, scope: !1167, inlinedAt: !1176)
!1179 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !1178)
!1180 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !1178)
!1181 = !DILocation(line: 0, scope: !595, inlinedAt: !1178)
!1182 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !1178)
!1183 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !1178)
!1184 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !1178)
!1185 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !1178)
!1186 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !1178)
!1187 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !1178)
!1188 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !1178)
!1189 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !1178)
!1190 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !1178)
!1191 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !1178)
!1192 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !1178)
!1193 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !1178)
!1194 = !DILocation(line: 0, scope: !602, inlinedAt: !1178)
!1195 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !1178)
!1196 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1178)
!1197 = distinct !{!1197, !1183, !1198, !336}
!1198 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !1178)
!1199 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !1178)
!1200 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !1178)
!1201 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !1178)
!1202 = !DILocation(line: 657, column: 2, scope: !1167, inlinedAt: !1176)
!1203 = !DILocation(line: 0, scope: !1204, inlinedAt: !1176)
!1204 = distinct !DILexicalBlock(scope: !1167, file: !28, line: 659, column: 2)
!1205 = !DILocation(line: 659, column: 2, scope: !1204, inlinedAt: !1176)
!1206 = !DILocation(line: 660, column: 23, scope: !1207, inlinedAt: !1176)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !28, line: 660, column: 7)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !28, line: 659, column: 49)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !28, line: 659, column: 2)
!1210 = !DILocation(line: 660, column: 17, scope: !1207, inlinedAt: !1176)
!1211 = !DILocation(line: 660, column: 7, scope: !1208, inlinedAt: !1176)
!1212 = !DILocation(line: 661, column: 24, scope: !1213, inlinedAt: !1176)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !28, line: 661, column: 4)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !28, line: 661, column: 4)
!1215 = distinct !DILexicalBlock(scope: !1207, file: !28, line: 660, column: 31)
!1216 = !DILocation(line: 661, column: 18, scope: !1213, inlinedAt: !1176)
!1217 = !DILocation(line: 661, column: 4, scope: !1214, inlinedAt: !1176)
!1218 = !DILocation(line: 662, column: 15, scope: !1219, inlinedAt: !1176)
!1219 = distinct !DILexicalBlock(scope: !1213, file: !28, line: 661, column: 42)
!1220 = !DILocation(line: 662, column: 11, scope: !1219, inlinedAt: !1176)
!1221 = !DILocation(line: 663, column: 26, scope: !1222, inlinedAt: !1176)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !28, line: 663, column: 9)
!1223 = !DILocation(line: 663, column: 19, scope: !1222, inlinedAt: !1176)
!1224 = !DILocation(line: 663, column: 9, scope: !1219, inlinedAt: !1176)
!1225 = !DILocation(line: 664, column: 27, scope: !1226, inlinedAt: !1176)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !28, line: 664, column: 6)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !28, line: 664, column: 6)
!1228 = distinct !DILexicalBlock(scope: !1222, file: !28, line: 663, column: 34)
!1229 = !DILocation(line: 664, column: 20, scope: !1226, inlinedAt: !1176)
!1230 = !DILocation(line: 664, column: 6, scope: !1227, inlinedAt: !1176)
!1231 = !DILocation(line: 665, column: 18, scope: !1232, inlinedAt: !1176)
!1232 = distinct !DILexicalBlock(scope: !1226, file: !28, line: 664, column: 42)
!1233 = !DILocation(line: 672, column: 20, scope: !1232, inlinedAt: !1176)
!1234 = !{!321, !282, i64 0}
!1235 = !DILocation(line: 672, column: 11, scope: !1232, inlinedAt: !1176)
!1236 = !DILocation(line: 671, column: 11, scope: !1232, inlinedAt: !1176)
!1237 = !DILocation(line: 671, column: 18, scope: !1232, inlinedAt: !1176)
!1238 = !DILocation(line: 664, column: 38, scope: !1226, inlinedAt: !1176)
!1239 = distinct !{!1239, !1230, !1240, !336}
!1240 = !DILocation(line: 675, column: 6, scope: !1227, inlinedAt: !1176)
!1241 = !DILocation(line: 661, column: 38, scope: !1213, inlinedAt: !1176)
!1242 = distinct !{!1242, !1217, !1243, !336}
!1243 = !DILocation(line: 677, column: 4, scope: !1214, inlinedAt: !1176)
!1244 = !DILocation(line: 659, column: 41, scope: !1209, inlinedAt: !1176)
!1245 = distinct !{!1245, !1205, !1246, !336}
!1246 = !DILocation(line: 679, column: 2, scope: !1204, inlinedAt: !1176)
!1247 = !DILocation(line: 268, column: 14, scope: !1248, inlinedAt: !535)
!1248 = distinct !DILexicalBlock(scope: !1113, file: !28, line: 267, column: 8)
!1249 = !DILocation(line: 268, column: 5, scope: !1248, inlinedAt: !535)
!1250 = distinct !{!1250, !1110, !1251, !336}
!1251 = !DILocation(line: 270, column: 3, scope: !1101, inlinedAt: !535)
!1252 = !DILocation(line: 272, column: 3, scope: !1098, inlinedAt: !535)
!1253 = !DILocation(line: 274, column: 1, scope: !527, inlinedAt: !535)
!1254 = !DILocalVariable(name: "mol", arg: 1, scope: !1255, file: !28, line: 449, type: !50)
!1255 = distinct !DISubprogram(name: "or_select", scope: !28, file: !28, line: 449, type: !377, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1256)
!1256 = !{!1254, !1257, !1258, !1259, !1260, !1261}
!1257 = !DILocalVariable(name: "a", scope: !1255, file: !28, line: 451, type: !23)
!1258 = !DILocalVariable(name: "r", scope: !1255, file: !28, line: 451, type: !23)
!1259 = !DILocalVariable(name: "sp", scope: !1255, file: !28, line: 452, type: !65)
!1260 = !DILocalVariable(name: "res", scope: !1255, file: !28, line: 453, type: !82)
!1261 = !DILocalVariable(name: "ap", scope: !1255, file: !28, line: 454, type: !128)
!1262 = !DILocation(line: 0, scope: !1255, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 124, column: 3, scope: !504)
!1264 = !DILocation(line: 0, scope: !1265, inlinedAt: !1263)
!1265 = distinct !DILexicalBlock(scope: !1255, file: !28, line: 456, column: 2)
!1266 = !DILocation(line: 456, column: 2, scope: !1265, inlinedAt: !1263)
!1267 = !DILocation(line: 457, column: 23, scope: !1268, inlinedAt: !1263)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !28, line: 456, column: 49)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !28, line: 456, column: 2)
!1270 = !DILocation(line: 457, column: 17, scope: !1268, inlinedAt: !1263)
!1271 = !DILocation(line: 457, column: 14, scope: !1268, inlinedAt: !1263)
!1272 = !DILocation(line: 458, column: 17, scope: !1273, inlinedAt: !1263)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !28, line: 458, column: 3)
!1274 = distinct !DILexicalBlock(scope: !1268, file: !28, line: 458, column: 3)
!1275 = !DILocation(line: 458, column: 3, scope: !1274, inlinedAt: !1263)
!1276 = !DILocation(line: 459, column: 10, scope: !1277, inlinedAt: !1263)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !28, line: 458, column: 41)
!1278 = !DILocation(line: 460, column: 26, scope: !1277, inlinedAt: !1263)
!1279 = !DILocation(line: 460, column: 19, scope: !1277, inlinedAt: !1263)
!1280 = !DILocation(line: 460, column: 16, scope: !1277, inlinedAt: !1263)
!1281 = !DILocation(line: 462, column: 18, scope: !1282, inlinedAt: !1263)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !28, line: 462, column: 4)
!1283 = distinct !DILexicalBlock(scope: !1277, file: !28, line: 462, column: 4)
!1284 = !DILocation(line: 462, column: 4, scope: !1283, inlinedAt: !1263)
!1285 = !DILocation(line: 464, column: 25, scope: !1286, inlinedAt: !1263)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !28, line: 462, column: 40)
!1287 = !DILocation(line: 464, column: 19, scope: !1286, inlinedAt: !1263)
!1288 = !DILocation(line: 464, column: 16, scope: !1286, inlinedAt: !1263)
!1289 = !DILocation(line: 462, column: 36, scope: !1282, inlinedAt: !1263)
!1290 = distinct !{!1290, !1284, !1291, !336}
!1291 = !DILocation(line: 466, column: 4, scope: !1283, inlinedAt: !1263)
!1292 = !DILocation(line: 458, column: 37, scope: !1273, inlinedAt: !1263)
!1293 = distinct !{!1293, !1275, !1294, !336}
!1294 = !DILocation(line: 467, column: 3, scope: !1274, inlinedAt: !1263)
!1295 = !DILocation(line: 456, column: 41, scope: !1269, inlinedAt: !1263)
!1296 = distinct !{!1296, !1266, !1297, !336}
!1297 = !DILocation(line: 468, column: 2, scope: !1265, inlinedAt: !1263)
!1298 = !DILocation(line: 126, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !504, file: !28, line: 126, column: 7)
!1300 = !DILocation(line: 126, column: 7, scope: !504)
!1301 = !DILocation(line: 127, column: 12, scope: !1299)
!1302 = !DILocation(line: 127, column: 4, scope: !1299)
!1303 = !DILocation(line: 0, scope: !504)
!1304 = !DILocation(line: 0, scope: !463, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 128, column: 3, scope: !504)
!1306 = !DILocation(line: 421, column: 2, scope: !462, inlinedAt: !1305)
!1307 = !DILocation(line: 422, column: 7, scope: !460, inlinedAt: !1305)
!1308 = !DILocation(line: 422, column: 14, scope: !460, inlinedAt: !1305)
!1309 = !DILocation(line: 423, column: 17, scope: !474, inlinedAt: !1305)
!1310 = !DILocation(line: 423, column: 3, scope: !475, inlinedAt: !1305)
!1311 = !DILocation(line: 424, column: 10, scope: !478, inlinedAt: !1305)
!1312 = !DILocation(line: 425, column: 9, scope: !478, inlinedAt: !1305)
!1313 = !DILocation(line: 425, column: 16, scope: !478, inlinedAt: !1305)
!1314 = !DILocation(line: 426, column: 18, scope: !482, inlinedAt: !1305)
!1315 = !DILocation(line: 426, column: 4, scope: !483, inlinedAt: !1305)
!1316 = !DILocation(line: 427, column: 23, scope: !482, inlinedAt: !1305)
!1317 = !DILocation(line: 427, column: 30, scope: !482, inlinedAt: !1305)
!1318 = !DILocation(line: 426, column: 36, scope: !482, inlinedAt: !1305)
!1319 = distinct !{!1319, !1315, !1320, !336}
!1320 = !DILocation(line: 427, column: 34, scope: !483, inlinedAt: !1305)
!1321 = distinct !{!1321, !411}
!1322 = !DILocation(line: 423, column: 37, scope: !474, inlinedAt: !1305)
!1323 = distinct !{!1323, !1310, !1324, !336}
!1324 = !DILocation(line: 428, column: 3, scope: !475, inlinedAt: !1305)
!1325 = !DILocation(line: 421, column: 41, scope: !461, inlinedAt: !1305)
!1326 = !DILocation(line: 0, scope: !462, inlinedAt: !1305)
!1327 = distinct !{!1327, !1306, !1328, !336}
!1328 = !DILocation(line: 429, column: 2, scope: !462, inlinedAt: !1305)
!1329 = distinct !{!1329, !501, !1330, !336}
!1330 = !DILocation(line: 129, column: 2, scope: !500)
!1331 = !DILocation(line: 479, column: 23, scope: !1332, inlinedAt: !1343)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !28, line: 478, column: 49)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !28, line: 478, column: 2)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !28, line: 478, column: 2)
!1335 = distinct !DISubprogram(name: "set_select", scope: !28, file: !28, line: 471, type: !377, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342}
!1337 = !DILocalVariable(name: "mol", arg: 1, scope: !1335, file: !28, line: 471, type: !50)
!1338 = !DILocalVariable(name: "a", scope: !1335, file: !28, line: 473, type: !23)
!1339 = !DILocalVariable(name: "r", scope: !1335, file: !28, line: 473, type: !23)
!1340 = !DILocalVariable(name: "sp", scope: !1335, file: !28, line: 474, type: !65)
!1341 = !DILocalVariable(name: "res", scope: !1335, file: !28, line: 475, type: !82)
!1342 = !DILocalVariable(name: "ap", scope: !1335, file: !28, line: 476, type: !128)
!1343 = distinct !DILocation(line: 130, column: 2, scope: !362)
!1344 = !DILocation(line: 479, column: 17, scope: !1332, inlinedAt: !1343)
!1345 = !DILocation(line: 479, column: 14, scope: !1332, inlinedAt: !1343)
!1346 = !DILocation(line: 0, scope: !1335, inlinedAt: !1343)
!1347 = !DILocation(line: 480, column: 17, scope: !1348, inlinedAt: !1343)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !28, line: 480, column: 3)
!1349 = distinct !DILexicalBlock(scope: !1332, file: !28, line: 480, column: 3)
!1350 = !DILocation(line: 480, column: 3, scope: !1349, inlinedAt: !1343)
!1351 = !DILocation(line: 481, column: 10, scope: !1352, inlinedAt: !1343)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !28, line: 480, column: 41)
!1353 = !DILocation(line: 482, column: 26, scope: !1352, inlinedAt: !1343)
!1354 = !DILocation(line: 482, column: 19, scope: !1352, inlinedAt: !1343)
!1355 = !DILocation(line: 482, column: 16, scope: !1352, inlinedAt: !1343)
!1356 = !DILocation(line: 484, column: 18, scope: !1357, inlinedAt: !1343)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !28, line: 484, column: 4)
!1358 = distinct !DILexicalBlock(scope: !1352, file: !28, line: 484, column: 4)
!1359 = !DILocation(line: 484, column: 4, scope: !1358, inlinedAt: !1343)
!1360 = !DILocation(line: 486, column: 25, scope: !1361, inlinedAt: !1343)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !28, line: 484, column: 40)
!1362 = !DILocation(line: 486, column: 19, scope: !1361, inlinedAt: !1343)
!1363 = !DILocation(line: 486, column: 16, scope: !1361, inlinedAt: !1343)
!1364 = !DILocation(line: 484, column: 36, scope: !1357, inlinedAt: !1343)
!1365 = distinct !{!1365, !1359, !1366, !336}
!1366 = !DILocation(line: 488, column: 4, scope: !1358, inlinedAt: !1343)
!1367 = !DILocation(line: 480, column: 37, scope: !1348, inlinedAt: !1343)
!1368 = distinct !{!1368, !1350, !1369, !336}
!1369 = !DILocation(line: 489, column: 3, scope: !1349, inlinedAt: !1343)
!1370 = !DILocation(line: 478, column: 41, scope: !1333, inlinedAt: !1343)
!1371 = !DILocation(line: 0, scope: !1334, inlinedAt: !1343)
!1372 = !DILocation(line: 478, column: 2, scope: !1334, inlinedAt: !1343)
!1373 = distinct !{!1373, !1372, !1374, !336}
!1374 = !DILocation(line: 490, column: 2, scope: !1334, inlinedAt: !1343)
!1375 = !DILocation(line: 133, column: 1, scope: !362)
!1376 = distinct !DISubprogram(name: "atom_in_aexpr", scope: !28, file: !28, line: 135, type: !1377, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!23, !128, !29}
!1379 = !{!1380, !1381, !1382, !1383, !1384}
!1380 = !DILocalVariable(name: "ap", arg: 1, scope: !1376, file: !28, line: 135, type: !128)
!1381 = !DILocalVariable(name: "aex", arg: 2, scope: !1376, file: !28, line: 135, type: !29)
!1382 = !DILocalVariable(name: "aep", scope: !1376, file: !28, line: 137, type: !29)
!1383 = !DILocalVariable(name: "n_aep", scope: !1376, file: !28, line: 137, type: !29)
!1384 = !DILocalVariable(name: "ael", scope: !1376, file: !28, line: 138, type: !23)
!1385 = !DILocation(line: 0, scope: !1376)
!1386 = !DILocation(line: 140, column: 10, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1376, file: !28, line: 140, column: 6)
!1388 = !DILocation(line: 140, column: 6, scope: !1376)
!1389 = !DILocation(line: 143, column: 26, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1376, file: !28, line: 143, column: 2)
!1391 = !DILocation(line: 143, column: 2, scope: !1390)
!1392 = !DILocation(line: 144, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !28, line: 144, column: 7)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !28, line: 143, column: 52)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !28, line: 143, column: 2)
!1396 = !DILocation(line: 144, column: 7, scope: !1394)
!1397 = !DILocation(line: 145, column: 16, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !28, line: 144, column: 14)
!1399 = !DILocation(line: 146, column: 9, scope: !1398)
!1400 = !DILocation(line: 147, column: 3, scope: !1398)
!1401 = !DILocation(line: 148, column: 10, scope: !1393)
!1402 = !DILocation(line: 0, scope: !1390)
!1403 = !DILocation(line: 0, scope: !1393)
!1404 = !DILocation(line: 149, column: 11, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1394, file: !28, line: 149, column: 7)
!1406 = !DILocation(line: 149, column: 7, scope: !1394)
!1407 = !DILocation(line: 150, column: 13, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !28, line: 149, column: 26)
!1409 = !DILocation(line: 150, column: 4, scope: !1408)
!1410 = !DILocation(line: 152, column: 4, scope: !1408)
!1411 = !DILocation(line: 154, column: 24, scope: !1394)
!1412 = !DILocation(line: 154, column: 3, scope: !1394)
!1413 = !DILocation(line: 155, column: 3, scope: !1394)
!1414 = !DILocation(line: 155, column: 16, scope: !1394)
!1415 = !DILocalVariable(name: "ap", arg: 1, scope: !1416, file: !28, line: 276, type: !128)
!1416 = distinct !DISubprogram(name: "atom_in_1_aexpr", scope: !28, file: !28, line: 276, type: !1377, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1417)
!1417 = !{!1415, !1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1418 = !DILocalVariable(name: "aex", arg: 2, scope: !1416, file: !28, line: 276, type: !29)
!1419 = !DILocalVariable(name: "aep", scope: !1416, file: !28, line: 278, type: !29)
!1420 = !DILocalVariable(name: "wp", scope: !1416, file: !28, line: 279, type: !29)
!1421 = !DILocalVariable(name: "lo", scope: !1416, file: !28, line: 280, type: !23)
!1422 = !DILocalVariable(name: "hi", scope: !1416, file: !28, line: 280, type: !23)
!1423 = !DILabel(scope: !1416, name: "RPART", file: !28, line: 316)
!1424 = !DILabel(scope: !1416, name: "APART", file: !28, line: 333)
!1425 = !DILocation(line: 0, scope: !1416, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 156, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1394, file: !28, line: 156, column: 7)
!1428 = !DILocation(line: 280, column: 2, scope: !1416, inlinedAt: !1426)
!1429 = !DILocation(line: 283, column: 6, scope: !1430, inlinedAt: !1426)
!1430 = distinct !DILexicalBlock(scope: !1416, file: !28, line: 283, column: 6)
!1431 = !DILocation(line: 283, column: 11, scope: !1430, inlinedAt: !1426)
!1432 = !DILocation(line: 283, column: 6, scope: !1416, inlinedAt: !1426)
!1433 = !DILocation(line: 284, column: 9, scope: !1434, inlinedAt: !1426)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !28, line: 283, column: 19)
!1435 = !DILocation(line: 286, column: 2, scope: !1434, inlinedAt: !1426)
!1436 = !DILocation(line: 287, column: 11, scope: !1437, inlinedAt: !1426)
!1437 = distinct !DILexicalBlock(scope: !1430, file: !28, line: 286, column: 7)
!1438 = !DILocation(line: 287, column: 9, scope: !1437, inlinedAt: !1426)
!1439 = !DILocation(line: 288, column: 10, scope: !1437, inlinedAt: !1426)
!1440 = !DILocation(line: 288, column: 26, scope: !1437, inlinedAt: !1426)
!1441 = !DILocation(line: 288, column: 7, scope: !1437, inlinedAt: !1426)
!1442 = !DILocation(line: 0, scope: !1430, inlinedAt: !1426)
!1443 = !DILocation(line: 290, column: 6, scope: !1444, inlinedAt: !1426)
!1444 = distinct !DILexicalBlock(scope: !1416, file: !28, line: 290, column: 6)
!1445 = !DILocation(line: 290, column: 11, scope: !1444, inlinedAt: !1426)
!1446 = !DILocation(line: 290, column: 6, scope: !1416, inlinedAt: !1426)
!1447 = !DILocation(line: 291, column: 9, scope: !1448, inlinedAt: !1426)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !28, line: 290, column: 19)
!1449 = !DILocation(line: 293, column: 2, scope: !1448, inlinedAt: !1426)
!1450 = !DILocation(line: 294, column: 11, scope: !1451, inlinedAt: !1426)
!1451 = distinct !DILexicalBlock(scope: !1444, file: !28, line: 293, column: 7)
!1452 = !DILocation(line: 294, column: 9, scope: !1451, inlinedAt: !1426)
!1453 = !DILocation(line: 295, column: 10, scope: !1451, inlinedAt: !1426)
!1454 = !DILocation(line: 295, column: 26, scope: !1451, inlinedAt: !1426)
!1455 = !DILocation(line: 0, scope: !1444, inlinedAt: !1426)
!1456 = !DILocation(line: 297, column: 10, scope: !1416, inlinedAt: !1426)
!1457 = !DILocation(line: 297, column: 8, scope: !1416, inlinedAt: !1426)
!1458 = !DILocation(line: 299, column: 6, scope: !1459, inlinedAt: !1426)
!1459 = distinct !DILexicalBlock(scope: !1416, file: !28, line: 299, column: 6)
!1460 = !DILocation(line: 299, column: 6, scope: !1416, inlinedAt: !1426)
!1461 = !DILocation(line: 300, column: 8, scope: !1462, inlinedAt: !1426)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !28, line: 299, column: 13)
!1463 = !DILocation(line: 301, column: 7, scope: !1464, inlinedAt: !1426)
!1464 = distinct !DILexicalBlock(scope: !1462, file: !28, line: 301, column: 7)
!1465 = !DILocation(line: 301, column: 7, scope: !1462, inlinedAt: !1426)
!1466 = !DILocation(line: 302, column: 8, scope: !1467, inlinedAt: !1426)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !28, line: 302, column: 8)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !28, line: 301, column: 35)
!1469 = !{!321, !282, i64 56}
!1470 = !{!307, !282, i64 56}
!1471 = !DILocalVariable(name: "ap", arg: 1, scope: !1472, file: !28, line: 512, type: !128)
!1472 = distinct !DISubprogram(name: "atom_in_str_pat", scope: !28, file: !28, line: 512, type: !1377, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1473)
!1473 = !{!1471, !1474, !1475, !1476}
!1474 = !DILocalVariable(name: "pat", arg: 2, scope: !1472, file: !28, line: 512, type: !29)
!1475 = !DILocalVariable(name: "res", scope: !1472, file: !28, line: 514, type: !82)
!1476 = !DILocalVariable(name: "sp", scope: !1472, file: !28, line: 515, type: !65)
!1477 = !DILocation(line: 0, scope: !1472, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 302, column: 8, scope: !1467, inlinedAt: !1426)
!1479 = !DILocation(line: 0, scope: !584, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 519, column: 2, scope: !1472, inlinedAt: !1478)
!1481 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !1480)
!1482 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !1480)
!1483 = !DILocation(line: 0, scope: !595, inlinedAt: !1480)
!1484 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !1480)
!1485 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !1480)
!1486 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !1480)
!1487 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !1480)
!1488 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !1480)
!1489 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !1480)
!1490 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !1480)
!1491 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !1480)
!1492 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !1480)
!1493 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !1480)
!1494 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !1480)
!1495 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !1480)
!1496 = !DILocation(line: 0, scope: !602, inlinedAt: !1480)
!1497 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !1480)
!1498 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1480)
!1499 = distinct !{!1499, !1485, !1500, !336}
!1500 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !1480)
!1501 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !1480)
!1502 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !1480)
!1503 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !1480)
!1504 = !DILocation(line: 524, column: 2, scope: !1472, inlinedAt: !1478)
!1505 = !DILocation(line: 525, column: 20, scope: !1472, inlinedAt: !1478)
!1506 = !DILocation(line: 525, column: 10, scope: !1472, inlinedAt: !1478)
!1507 = !DILocation(line: 302, column: 8, scope: !1468, inlinedAt: !1426)
!1508 = !DILocation(line: 304, column: 36, scope: !1509, inlinedAt: !1426)
!1509 = distinct !DILexicalBlock(scope: !1464, file: !28, line: 304, column: 13)
!1510 = !DILocation(line: 304, column: 40, scope: !1509, inlinedAt: !1426)
!1511 = !DILocation(line: 304, column: 13, scope: !1509, inlinedAt: !1426)
!1512 = !DILocalVariable(name: "ap", arg: 1, scope: !1513, file: !28, line: 543, type: !128)
!1513 = distinct !DISubprogram(name: "atom_in_str_range", scope: !28, file: !28, line: 543, type: !1514, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1516)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!23, !128, !23, !23}
!1516 = !{!1512, !1517, !1518, !1519, !1520, !1521, !1522, !1523}
!1517 = !DILocalVariable(name: "lo", arg: 2, scope: !1513, file: !28, line: 543, type: !23)
!1518 = !DILocalVariable(name: "hi", arg: 3, scope: !1513, file: !28, line: 543, type: !23)
!1519 = !DILocalVariable(name: "m", scope: !1513, file: !28, line: 545, type: !23)
!1520 = !DILocalVariable(name: "res", scope: !1513, file: !28, line: 546, type: !82)
!1521 = !DILocalVariable(name: "sp", scope: !1513, file: !28, line: 547, type: !65)
!1522 = !DILocalVariable(name: "sp1", scope: !1513, file: !28, line: 547, type: !65)
!1523 = !DILocalVariable(name: "mol", scope: !1513, file: !28, line: 548, type: !50)
!1524 = !DILocation(line: 0, scope: !1513, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 304, column: 13, scope: !1509, inlinedAt: !1426)
!1526 = !DILocation(line: 552, column: 12, scope: !1513, inlinedAt: !1525)
!1527 = !{!291, !282, i64 16}
!1528 = !DILocation(line: 553, column: 9, scope: !1529, inlinedAt: !1525)
!1529 = distinct !DILexicalBlock(scope: !1513, file: !28, line: 553, column: 6)
!1530 = !DILocation(line: 555, column: 38, scope: !1531, inlinedAt: !1525)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !28, line: 555, column: 2)
!1532 = distinct !DILexicalBlock(scope: !1513, file: !28, line: 555, column: 2)
!1533 = !DILocation(line: 555, column: 2, scope: !1532, inlinedAt: !1525)
!1534 = !DILocation(line: 555, column: 25, scope: !1532, inlinedAt: !1525)
!1535 = !DILocation(line: 0, scope: !1532, inlinedAt: !1525)
!1536 = !DILocation(line: 557, column: 10, scope: !1537, inlinedAt: !1525)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !28, line: 557, column: 7)
!1538 = distinct !DILexicalBlock(scope: !1531, file: !28, line: 556, column: 27)
!1539 = !DILocation(line: 557, column: 7, scope: !1538, inlinedAt: !1525)
!1540 = !DILocation(line: 556, column: 4, scope: !1531, inlinedAt: !1525)
!1541 = !DILocation(line: 556, column: 19, scope: !1531, inlinedAt: !1525)
!1542 = distinct !{!1542, !1533, !1543, !336}
!1543 = !DILocation(line: 561, column: 2, scope: !1532, inlinedAt: !1525)
!1544 = !DILocation(line: 306, column: 16, scope: !1462, inlinedAt: !1426)
!1545 = !DILocation(line: 306, column: 3, scope: !1462, inlinedAt: !1426)
!1546 = !DILocation(line: 307, column: 8, scope: !1547, inlinedAt: !1426)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !28, line: 307, column: 8)
!1548 = distinct !DILexicalBlock(scope: !1462, file: !28, line: 306, column: 38)
!1549 = !DILocation(line: 307, column: 8, scope: !1548, inlinedAt: !1426)
!1550 = !DILocation(line: 308, column: 9, scope: !1551, inlinedAt: !1426)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !28, line: 308, column: 9)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !28, line: 307, column: 36)
!1553 = !DILocation(line: 0, scope: !1472, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 308, column: 9, scope: !1551, inlinedAt: !1426)
!1555 = !DILocation(line: 0, scope: !584, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 519, column: 2, scope: !1472, inlinedAt: !1554)
!1557 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !1556)
!1558 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !1556)
!1559 = !DILocation(line: 0, scope: !595, inlinedAt: !1556)
!1560 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !1556)
!1561 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !1556)
!1562 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !1556)
!1563 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !1556)
!1564 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !1556)
!1565 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !1556)
!1566 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !1556)
!1567 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !1556)
!1568 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !1556)
!1569 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !1556)
!1570 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !1556)
!1571 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !1556)
!1572 = !DILocation(line: 0, scope: !602, inlinedAt: !1556)
!1573 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !1556)
!1574 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1556)
!1575 = distinct !{!1575, !1561, !1576, !336}
!1576 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !1556)
!1577 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !1556)
!1578 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !1556)
!1579 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !1556)
!1580 = !DILocation(line: 524, column: 2, scope: !1472, inlinedAt: !1554)
!1581 = !DILocation(line: 525, column: 20, scope: !1472, inlinedAt: !1554)
!1582 = !DILocation(line: 525, column: 10, scope: !1472, inlinedAt: !1554)
!1583 = !DILocation(line: 308, column: 9, scope: !1552, inlinedAt: !1426)
!1584 = !DILocation(line: 310, column: 37, scope: !1585, inlinedAt: !1426)
!1585 = distinct !DILexicalBlock(scope: !1547, file: !28, line: 310, column: 14)
!1586 = !DILocation(line: 310, column: 41, scope: !1585, inlinedAt: !1426)
!1587 = !DILocation(line: 310, column: 14, scope: !1585, inlinedAt: !1426)
!1588 = !DILocation(line: 0, scope: !1513, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 310, column: 14, scope: !1585, inlinedAt: !1426)
!1590 = !DILocation(line: 552, column: 12, scope: !1513, inlinedAt: !1589)
!1591 = !DILocation(line: 553, column: 9, scope: !1529, inlinedAt: !1589)
!1592 = !DILocation(line: 555, column: 38, scope: !1531, inlinedAt: !1589)
!1593 = !DILocation(line: 555, column: 2, scope: !1532, inlinedAt: !1589)
!1594 = !DILocation(line: 555, column: 25, scope: !1532, inlinedAt: !1589)
!1595 = !DILocation(line: 0, scope: !1532, inlinedAt: !1589)
!1596 = !DILocation(line: 557, column: 10, scope: !1537, inlinedAt: !1589)
!1597 = !DILocation(line: 557, column: 7, scope: !1538, inlinedAt: !1589)
!1598 = !DILocation(line: 556, column: 4, scope: !1531, inlinedAt: !1589)
!1599 = !DILocation(line: 556, column: 19, scope: !1531, inlinedAt: !1589)
!1600 = distinct !{!1600, !1593, !1601, !336}
!1601 = !DILocation(line: 561, column: 2, scope: !1532, inlinedAt: !1589)
!1602 = distinct !{!1602, !1545, !1603, !336}
!1603 = !DILocation(line: 312, column: 3, scope: !1462, inlinedAt: !1426)
!1604 = !DILocation(line: 316, column: 1, scope: !1416, inlinedAt: !1426)
!1605 = !DILocation(line: 316, column: 13, scope: !1606, inlinedAt: !1426)
!1606 = distinct !DILexicalBlock(scope: !1416, file: !28, line: 316, column: 13)
!1607 = !DILocation(line: 316, column: 13, scope: !1416, inlinedAt: !1426)
!1608 = !DILocation(line: 317, column: 8, scope: !1609, inlinedAt: !1426)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !28, line: 316, column: 20)
!1610 = !DILocation(line: 318, column: 7, scope: !1611, inlinedAt: !1426)
!1611 = distinct !DILexicalBlock(scope: !1609, file: !28, line: 318, column: 7)
!1612 = !DILocation(line: 318, column: 7, scope: !1609, inlinedAt: !1426)
!1613 = !DILocation(line: 319, column: 8, scope: !1614, inlinedAt: !1426)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !28, line: 319, column: 8)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !28, line: 318, column: 35)
!1616 = !DILocalVariable(name: "ap", arg: 1, scope: !1617, file: !28, line: 593, type: !128)
!1617 = distinct !DISubprogram(name: "atom_in_res_pat", scope: !28, file: !28, line: 593, type: !1377, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1618)
!1618 = !{!1616, !1619, !1620}
!1619 = !DILocalVariable(name: "pat", arg: 2, scope: !1617, file: !28, line: 593, type: !29)
!1620 = !DILocalVariable(name: "res", scope: !1617, file: !28, line: 595, type: !82)
!1621 = !DILocation(line: 0, scope: !1617, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 319, column: 8, scope: !1614, inlinedAt: !1426)
!1623 = !DILocation(line: 0, scope: !584, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 598, column: 2, scope: !1617, inlinedAt: !1622)
!1625 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !1624)
!1626 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !1624)
!1627 = !DILocation(line: 0, scope: !595, inlinedAt: !1624)
!1628 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !1624)
!1629 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !1624)
!1630 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !1624)
!1631 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !1624)
!1632 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !1624)
!1633 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !1624)
!1634 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !1624)
!1635 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !1624)
!1636 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !1624)
!1637 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !1624)
!1638 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !1624)
!1639 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !1624)
!1640 = !DILocation(line: 0, scope: !602, inlinedAt: !1624)
!1641 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !1624)
!1642 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1624)
!1643 = distinct !{!1643, !1629, !1644, !336}
!1644 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !1624)
!1645 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !1624)
!1646 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !1624)
!1647 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !1624)
!1648 = !DILocation(line: 603, column: 2, scope: !1617, inlinedAt: !1622)
!1649 = !DILocation(line: 604, column: 21, scope: !1617, inlinedAt: !1622)
!1650 = !DILocation(line: 604, column: 10, scope: !1617, inlinedAt: !1622)
!1651 = !DILocation(line: 319, column: 8, scope: !1615, inlinedAt: !1426)
!1652 = !DILocation(line: 321, column: 36, scope: !1653, inlinedAt: !1426)
!1653 = distinct !DILexicalBlock(scope: !1611, file: !28, line: 321, column: 13)
!1654 = !DILocation(line: 321, column: 40, scope: !1653, inlinedAt: !1426)
!1655 = !DILocation(line: 321, column: 13, scope: !1653, inlinedAt: !1426)
!1656 = !DILocalVariable(name: "ap", arg: 1, scope: !1657, file: !28, line: 626, type: !128)
!1657 = distinct !DISubprogram(name: "atom_in_res_range", scope: !28, file: !28, line: 626, type: !1514, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1658)
!1658 = !{!1656, !1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1659 = !DILocalVariable(name: "lo", arg: 2, scope: !1657, file: !28, line: 626, type: !23)
!1660 = !DILocalVariable(name: "hi", arg: 3, scope: !1657, file: !28, line: 626, type: !23)
!1661 = !DILocalVariable(name: "r", scope: !1657, file: !28, line: 628, type: !23)
!1662 = !DILocalVariable(name: "rhi", scope: !1657, file: !28, line: 628, type: !23)
!1663 = !DILocalVariable(name: "sp", scope: !1657, file: !28, line: 629, type: !65)
!1664 = !DILocalVariable(name: "res", scope: !1657, file: !28, line: 630, type: !82)
!1665 = !DILocalVariable(name: "res1", scope: !1657, file: !28, line: 630, type: !82)
!1666 = !DILocation(line: 0, scope: !1657, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 321, column: 13, scope: !1653, inlinedAt: !1426)
!1668 = !DILocation(line: 633, column: 12, scope: !1657, inlinedAt: !1667)
!1669 = !DILocation(line: 635, column: 13, scope: !1657, inlinedAt: !1667)
!1670 = !DILocation(line: 635, column: 8, scope: !1657, inlinedAt: !1667)
!1671 = !DILocation(line: 636, column: 7, scope: !1672, inlinedAt: !1667)
!1672 = distinct !DILexicalBlock(scope: !1657, file: !28, line: 636, column: 2)
!1673 = !DILocation(line: 636, column: 16, scope: !1674, inlinedAt: !1667)
!1674 = distinct !DILexicalBlock(scope: !1672, file: !28, line: 636, column: 2)
!1675 = !DILocation(line: 0, scope: !1672, inlinedAt: !1667)
!1676 = !DILocation(line: 636, column: 2, scope: !1672, inlinedAt: !1667)
!1677 = !DILocation(line: 637, column: 14, scope: !1678, inlinedAt: !1667)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !28, line: 636, column: 40)
!1679 = !DILocation(line: 637, column: 10, scope: !1678, inlinedAt: !1667)
!1680 = !DILocation(line: 638, column: 11, scope: !1681, inlinedAt: !1667)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !28, line: 638, column: 7)
!1682 = !DILocation(line: 638, column: 7, scope: !1678, inlinedAt: !1667)
!1683 = distinct !{!1683, !1676, !1684, !336}
!1684 = !DILocation(line: 642, column: 2, scope: !1672, inlinedAt: !1667)
!1685 = !DILocation(line: 323, column: 16, scope: !1609, inlinedAt: !1426)
!1686 = !DILocation(line: 323, column: 3, scope: !1609, inlinedAt: !1426)
!1687 = !DILocation(line: 324, column: 8, scope: !1688, inlinedAt: !1426)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !28, line: 324, column: 8)
!1689 = distinct !DILexicalBlock(scope: !1609, file: !28, line: 323, column: 38)
!1690 = !DILocation(line: 324, column: 8, scope: !1689, inlinedAt: !1426)
!1691 = !DILocation(line: 325, column: 9, scope: !1692, inlinedAt: !1426)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !28, line: 325, column: 9)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !28, line: 324, column: 36)
!1694 = !DILocation(line: 0, scope: !1617, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 325, column: 9, scope: !1692, inlinedAt: !1426)
!1696 = !DILocation(line: 0, scope: !584, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 598, column: 2, scope: !1617, inlinedAt: !1695)
!1698 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !1697)
!1699 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !1697)
!1700 = !DILocation(line: 0, scope: !595, inlinedAt: !1697)
!1701 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !1697)
!1702 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !1697)
!1703 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !1697)
!1704 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !1697)
!1705 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !1697)
!1706 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !1697)
!1707 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !1697)
!1708 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !1697)
!1709 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !1697)
!1710 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !1697)
!1711 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !1697)
!1712 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !1697)
!1713 = !DILocation(line: 0, scope: !602, inlinedAt: !1697)
!1714 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !1697)
!1715 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1697)
!1716 = distinct !{!1716, !1702, !1717, !336}
!1717 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !1697)
!1718 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !1697)
!1719 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !1697)
!1720 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !1697)
!1721 = !DILocation(line: 603, column: 2, scope: !1617, inlinedAt: !1695)
!1722 = !DILocation(line: 604, column: 21, scope: !1617, inlinedAt: !1695)
!1723 = !DILocation(line: 604, column: 10, scope: !1617, inlinedAt: !1695)
!1724 = !DILocation(line: 325, column: 9, scope: !1693, inlinedAt: !1426)
!1725 = !DILocation(line: 327, column: 37, scope: !1726, inlinedAt: !1426)
!1726 = distinct !DILexicalBlock(scope: !1688, file: !28, line: 327, column: 14)
!1727 = !DILocation(line: 327, column: 41, scope: !1726, inlinedAt: !1426)
!1728 = !DILocation(line: 327, column: 14, scope: !1726, inlinedAt: !1426)
!1729 = !DILocation(line: 0, scope: !1657, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 327, column: 14, scope: !1726, inlinedAt: !1426)
!1731 = !DILocation(line: 633, column: 12, scope: !1657, inlinedAt: !1730)
!1732 = !DILocation(line: 635, column: 13, scope: !1657, inlinedAt: !1730)
!1733 = !DILocation(line: 635, column: 8, scope: !1657, inlinedAt: !1730)
!1734 = !DILocation(line: 636, column: 7, scope: !1672, inlinedAt: !1730)
!1735 = !DILocation(line: 636, column: 16, scope: !1674, inlinedAt: !1730)
!1736 = !DILocation(line: 0, scope: !1672, inlinedAt: !1730)
!1737 = !DILocation(line: 636, column: 2, scope: !1672, inlinedAt: !1730)
!1738 = !DILocation(line: 637, column: 14, scope: !1678, inlinedAt: !1730)
!1739 = !DILocation(line: 637, column: 10, scope: !1678, inlinedAt: !1730)
!1740 = !DILocation(line: 638, column: 11, scope: !1681, inlinedAt: !1730)
!1741 = !DILocation(line: 638, column: 7, scope: !1678, inlinedAt: !1730)
!1742 = distinct !{!1742, !1737, !1743, !336}
!1743 = !DILocation(line: 642, column: 2, scope: !1672, inlinedAt: !1730)
!1744 = distinct !{!1744, !1686, !1745, !336}
!1745 = !DILocation(line: 329, column: 3, scope: !1609, inlinedAt: !1426)
!1746 = !DILocation(line: 333, column: 1, scope: !1416, inlinedAt: !1426)
!1747 = !DILocation(line: 333, column: 13, scope: !1748, inlinedAt: !1426)
!1748 = distinct !DILexicalBlock(scope: !1416, file: !28, line: 333, column: 13)
!1749 = !DILocation(line: 333, column: 13, scope: !1416, inlinedAt: !1426)
!1750 = !DILocation(line: 334, column: 8, scope: !1751, inlinedAt: !1426)
!1751 = distinct !DILexicalBlock(scope: !1748, file: !28, line: 333, column: 20)
!1752 = !DILocation(line: 335, column: 7, scope: !1753, inlinedAt: !1426)
!1753 = distinct !DILexicalBlock(scope: !1751, file: !28, line: 335, column: 7)
!1754 = !DILocation(line: 335, column: 7, scope: !1751, inlinedAt: !1426)
!1755 = !DILocalVariable(name: "ap", arg: 1, scope: !1756, file: !28, line: 682, type: !128)
!1756 = distinct !DISubprogram(name: "atom_in_atom_pat", scope: !28, file: !28, line: 682, type: !1377, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1757)
!1757 = !{!1755, !1758}
!1758 = !DILocalVariable(name: "pat", arg: 2, scope: !1756, file: !28, line: 682, type: !29)
!1759 = !DILocation(line: 0, scope: !1756, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 336, column: 8, scope: !1761, inlinedAt: !1426)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !28, line: 336, column: 8)
!1762 = distinct !DILexicalBlock(scope: !1753, file: !28, line: 335, column: 35)
!1763 = !DILocation(line: 0, scope: !584, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 685, column: 2, scope: !1756, inlinedAt: !1760)
!1765 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !1764)
!1766 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !1764)
!1767 = !DILocation(line: 0, scope: !595, inlinedAt: !1764)
!1768 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !1764)
!1769 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !1764)
!1770 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !1764)
!1771 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !1764)
!1772 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !1764)
!1773 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !1764)
!1774 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !1764)
!1775 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !1764)
!1776 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !1764)
!1777 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !1764)
!1778 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !1764)
!1779 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !1764)
!1780 = !DILocation(line: 0, scope: !602, inlinedAt: !1764)
!1781 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !1764)
!1782 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1764)
!1783 = distinct !{!1783, !1769, !1784, !336}
!1784 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !1764)
!1785 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !1764)
!1786 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !1764)
!1787 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !1764)
!1788 = !DILocation(line: 690, column: 2, scope: !1756, inlinedAt: !1760)
!1789 = !DILocation(line: 691, column: 20, scope: !1756, inlinedAt: !1760)
!1790 = !DILocation(line: 691, column: 10, scope: !1756, inlinedAt: !1760)
!1791 = !DILocation(line: 336, column: 8, scope: !1761, inlinedAt: !1426)
!1792 = !DILocation(line: 336, column: 8, scope: !1762, inlinedAt: !1426)
!1793 = !DILocation(line: 342, column: 16, scope: !1751, inlinedAt: !1426)
!1794 = !DILocation(line: 342, column: 3, scope: !1751, inlinedAt: !1426)
!1795 = !DILocation(line: 343, column: 8, scope: !1796, inlinedAt: !1426)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !28, line: 343, column: 8)
!1797 = distinct !DILexicalBlock(scope: !1751, file: !28, line: 342, column: 38)
!1798 = !DILocation(line: 343, column: 8, scope: !1797, inlinedAt: !1426)
!1799 = !DILocation(line: 0, scope: !1756, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 344, column: 9, scope: !1801, inlinedAt: !1426)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !28, line: 344, column: 9)
!1802 = distinct !DILexicalBlock(scope: !1796, file: !28, line: 343, column: 36)
!1803 = !DILocation(line: 0, scope: !584, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 685, column: 2, scope: !1756, inlinedAt: !1800)
!1805 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !1804)
!1806 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !1804)
!1807 = !DILocation(line: 0, scope: !595, inlinedAt: !1804)
!1808 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !1804)
!1809 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !1804)
!1810 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !1804)
!1811 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !1804)
!1812 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !1804)
!1813 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !1804)
!1814 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !1804)
!1815 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !1804)
!1816 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !1804)
!1817 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !1804)
!1818 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !1804)
!1819 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !1804)
!1820 = !DILocation(line: 0, scope: !602, inlinedAt: !1804)
!1821 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !1804)
!1822 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1804)
!1823 = distinct !{!1823, !1809, !1824, !336}
!1824 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !1804)
!1825 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !1804)
!1826 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !1804)
!1827 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !1804)
!1828 = !DILocation(line: 690, column: 2, scope: !1756, inlinedAt: !1800)
!1829 = !DILocation(line: 691, column: 20, scope: !1756, inlinedAt: !1800)
!1830 = !DILocation(line: 691, column: 10, scope: !1756, inlinedAt: !1800)
!1831 = !DILocation(line: 344, column: 9, scope: !1801, inlinedAt: !1426)
!1832 = !DILocation(line: 344, column: 9, scope: !1802, inlinedAt: !1426)
!1833 = distinct !{!1833, !1794, !1834, !336}
!1834 = !DILocation(line: 350, column: 3, scope: !1751, inlinedAt: !1426)
!1835 = !DILocation(line: 0, scope: !1751, inlinedAt: !1426)
!1836 = !DILocation(line: 355, column: 1, scope: !1416, inlinedAt: !1426)
!1837 = !DILocation(line: 156, column: 7, scope: !1394)
!1838 = !DILocation(line: 159, column: 7, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1394, file: !28, line: 159, column: 7)
!1840 = !DILocation(line: 159, column: 7, scope: !1394)
!1841 = !DILocation(line: 160, column: 12, scope: !1839)
!1842 = !DILocation(line: 163, column: 1, scope: !1376)
!1843 = distinct !DISubprogram(name: "set_attr_if", scope: !28, file: !28, line: 165, type: !641, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1844)
!1844 = !{!1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852}
!1845 = !DILocalVariable(name: "mol", arg: 1, scope: !1843, file: !28, line: 165, type: !50)
!1846 = !DILocalVariable(name: "attr", arg: 2, scope: !1843, file: !28, line: 165, type: !23)
!1847 = !DILocalVariable(name: "i_attr", arg: 3, scope: !1843, file: !28, line: 165, type: !23)
!1848 = !DILocalVariable(name: "a", scope: !1843, file: !28, line: 167, type: !23)
!1849 = !DILocalVariable(name: "r", scope: !1843, file: !28, line: 167, type: !23)
!1850 = !DILocalVariable(name: "sp", scope: !1843, file: !28, line: 168, type: !65)
!1851 = !DILocalVariable(name: "res", scope: !1843, file: !28, line: 169, type: !82)
!1852 = !DILocalVariable(name: "ap", scope: !1843, file: !28, line: 170, type: !128)
!1853 = !DILocation(line: 0, scope: !1843)
!1854 = !DILocation(line: 172, column: 17, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1843, file: !28, line: 172, column: 2)
!1856 = !DILocation(line: 0, scope: !1855)
!1857 = !DILocation(line: 172, column: 2, scope: !1855)
!1858 = !DILocation(line: 173, column: 23, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !28, line: 172, column: 49)
!1860 = distinct !DILexicalBlock(scope: !1855, file: !28, line: 172, column: 2)
!1861 = !DILocation(line: 173, column: 30, scope: !1859)
!1862 = !DILocation(line: 173, column: 17, scope: !1859)
!1863 = !DILocation(line: 173, column: 14, scope: !1859)
!1864 = !DILocation(line: 174, column: 17, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !28, line: 174, column: 3)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !28, line: 174, column: 3)
!1867 = !DILocation(line: 174, column: 3, scope: !1866)
!1868 = !DILocation(line: 175, column: 10, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !28, line: 174, column: 41)
!1870 = !DILocation(line: 176, column: 26, scope: !1869)
!1871 = !DILocation(line: 176, column: 33, scope: !1869)
!1872 = !DILocation(line: 176, column: 19, scope: !1869)
!1873 = !DILocation(line: 176, column: 16, scope: !1869)
!1874 = !DILocation(line: 178, column: 18, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !28, line: 178, column: 4)
!1876 = distinct !DILexicalBlock(scope: !1869, file: !28, line: 178, column: 4)
!1877 = !DILocation(line: 178, column: 4, scope: !1876)
!1878 = !DILocation(line: 180, column: 25, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1875, file: !28, line: 178, column: 40)
!1880 = !DILocation(line: 180, column: 32, scope: !1879)
!1881 = !DILocation(line: 180, column: 19, scope: !1879)
!1882 = !DILocation(line: 180, column: 16, scope: !1879)
!1883 = !DILocation(line: 178, column: 36, scope: !1875)
!1884 = distinct !{!1884, !1877, !1885, !336}
!1885 = !DILocation(line: 182, column: 4, scope: !1876)
!1886 = !DILocation(line: 174, column: 37, scope: !1865)
!1887 = distinct !{!1887, !1867, !1888, !336}
!1888 = !DILocation(line: 183, column: 3, scope: !1866)
!1889 = !DILocation(line: 172, column: 41, scope: !1860)
!1890 = distinct !{!1890, !1857, !1891, !336}
!1891 = !DILocation(line: 184, column: 2, scope: !1855)
!1892 = !DILocation(line: 185, column: 1, scope: !1843)
!1893 = distinct !DISubprogram(name: "clear_attr", scope: !28, file: !28, line: 187, type: !1894, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !50, !23}
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902}
!1897 = !DILocalVariable(name: "mol", arg: 1, scope: !1893, file: !28, line: 187, type: !50)
!1898 = !DILocalVariable(name: "attr", arg: 2, scope: !1893, file: !28, line: 187, type: !23)
!1899 = !DILocalVariable(name: "a", scope: !1893, file: !28, line: 189, type: !23)
!1900 = !DILocalVariable(name: "r", scope: !1893, file: !28, line: 189, type: !23)
!1901 = !DILocalVariable(name: "sp", scope: !1893, file: !28, line: 190, type: !65)
!1902 = !DILocalVariable(name: "res", scope: !1893, file: !28, line: 191, type: !82)
!1903 = !DILocation(line: 0, scope: !1893)
!1904 = !DILocation(line: 193, column: 17, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1893, file: !28, line: 193, column: 2)
!1906 = !DILocation(line: 0, scope: !1905)
!1907 = !DILocation(line: 193, column: 2, scope: !1905)
!1908 = !DILocation(line: 194, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !28, line: 193, column: 49)
!1910 = distinct !DILexicalBlock(scope: !1905, file: !28, line: 193, column: 2)
!1911 = !DILocation(line: 194, column: 14, scope: !1909)
!1912 = !DILocation(line: 195, column: 17, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !28, line: 195, column: 3)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !28, line: 195, column: 3)
!1915 = !DILocation(line: 195, column: 3, scope: !1914)
!1916 = !DILocation(line: 196, column: 10, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !28, line: 195, column: 41)
!1918 = !DILocation(line: 197, column: 9, scope: !1917)
!1919 = !DILocation(line: 197, column: 16, scope: !1917)
!1920 = !DILocation(line: 198, column: 18, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !28, line: 198, column: 4)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !28, line: 198, column: 4)
!1923 = !DILocation(line: 198, column: 4, scope: !1922)
!1924 = !DILocation(line: 199, column: 23, scope: !1921)
!1925 = !DILocation(line: 199, column: 30, scope: !1921)
!1926 = !DILocation(line: 198, column: 36, scope: !1921)
!1927 = distinct !{!1927, !1923, !1928, !336}
!1928 = !DILocation(line: 199, column: 34, scope: !1922)
!1929 = distinct !{!1929, !411}
!1930 = !DILocation(line: 195, column: 37, scope: !1913)
!1931 = distinct !{!1931, !1915, !1932, !336}
!1932 = !DILocation(line: 200, column: 3, scope: !1914)
!1933 = !DILocation(line: 193, column: 41, scope: !1910)
!1934 = distinct !{!1934, !1907, !1935, !336}
!1935 = !DILocation(line: 201, column: 2, scope: !1905)
!1936 = !DILocation(line: 202, column: 1, scope: !1893)
!1937 = !DILocation(line: 0, scope: !673)
!1938 = !DILocation(line: 362, column: 7, scope: !687)
!1939 = !DILocation(line: 362, column: 24, scope: !687)
!1940 = !DILocation(line: 364, column: 6, scope: !692)
!1941 = !DILocation(line: 364, column: 6, scope: !673)
!1942 = !DILocation(line: 365, column: 28, scope: !695)
!1943 = !DILocation(line: 366, column: 13, scope: !695)
!1944 = !DILocation(line: 366, column: 19, scope: !695)
!1945 = !DILocation(line: 366, column: 25, scope: !695)
!1946 = !DILocation(line: 365, column: 46, scope: !695)
!1947 = !DILocation(line: 365, column: 3, scope: !696)
!1948 = distinct !{!1948, !1947, !1949, !336}
!1949 = !DILocation(line: 366, column: 27, scope: !696)
!1950 = !DILocation(line: 367, column: 7, scope: !697)
!1951 = !DILocation(line: 368, column: 8, scope: !709)
!1952 = !DILocation(line: 368, column: 7, scope: !697)
!1953 = !DILocation(line: 369, column: 8, scope: !708)
!1954 = !DILocation(line: 370, column: 4, scope: !708)
!1955 = !DILocation(line: 372, column: 6, scope: !712)
!1956 = !DILocation(line: 373, column: 8, scope: !714)
!1957 = !DILocation(line: 372, column: 4, scope: !712)
!1958 = !DILocation(line: 0, scope: !697)
!1959 = !DILocation(line: 373, column: 7, scope: !697)
!1960 = !DILocation(line: 374, column: 8, scope: !968)
!1961 = !DILocation(line: 375, column: 4, scope: !968)
!1962 = !DILocation(line: 376, column: 14, scope: !719)
!1963 = !DILocation(line: 376, column: 13, scope: !714)
!1964 = !DILocation(line: 378, column: 17, scope: !722)
!1965 = !DILocation(line: 379, column: 13, scope: !722)
!1966 = !DILocation(line: 379, column: 19, scope: !722)
!1967 = !DILocation(line: 379, column: 25, scope: !722)
!1968 = !DILocation(line: 378, column: 35, scope: !722)
!1969 = !DILocation(line: 378, column: 3, scope: !723)
!1970 = distinct !{!1970, !1969, !1971, !336}
!1971 = !DILocation(line: 379, column: 27, scope: !723)
!1972 = !DILocation(line: 380, column: 7, scope: !697)
!1973 = !DILocation(line: 381, column: 11, scope: !697)
!1974 = !DILocation(line: 381, column: 9, scope: !697)
!1975 = !DILocation(line: 381, column: 3, scope: !697)
!1976 = !DILocation(line: 383, column: 7, scope: !732)
!1977 = !DILocation(line: 384, column: 9, scope: !732)
!1978 = !DILocation(line: 386, column: 7, scope: !735)
!1979 = !DILocation(line: 386, column: 6, scope: !673)
!1980 = !DILocation(line: 387, column: 7, scope: !985)
!1981 = !DILocation(line: 388, column: 3, scope: !985)
!1982 = !DILocation(line: 389, column: 12, scope: !738)
!1983 = !DILocation(line: 389, column: 12, scope: !735)
!1984 = !DILocation(line: 390, column: 17, scope: !742)
!1985 = !DILocation(line: 391, column: 13, scope: !742)
!1986 = !DILocation(line: 391, column: 19, scope: !742)
!1987 = !DILocation(line: 391, column: 25, scope: !742)
!1988 = !DILocation(line: 390, column: 35, scope: !742)
!1989 = !DILocation(line: 390, column: 3, scope: !743)
!1990 = distinct !{!1990, !1989, !1991, !336}
!1991 = !DILocation(line: 391, column: 27, scope: !743)
!1992 = !DILocation(line: 392, column: 7, scope: !744)
!1993 = !DILocation(line: 393, column: 11, scope: !744)
!1994 = !DILocation(line: 393, column: 9, scope: !744)
!1995 = !DILocation(line: 393, column: 3, scope: !744)
!1996 = !DILocation(line: 396, column: 1, scope: !673)
!1997 = !DILocation(line: 0, scope: !1167)
!1998 = !DILocation(line: 0, scope: !584, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 653, column: 2, scope: !1167)
!2000 = !DILocation(line: 700, column: 9, scope: !584, inlinedAt: !1999)
!2001 = !DILocation(line: 701, column: 7, scope: !595, inlinedAt: !1999)
!2002 = !DILocation(line: 0, scope: !595, inlinedAt: !1999)
!2003 = !DILocation(line: 701, column: 20, scope: !598, inlinedAt: !1999)
!2004 = !DILocation(line: 701, column: 2, scope: !595, inlinedAt: !1999)
!2005 = !DILocation(line: 703, column: 8, scope: !601, inlinedAt: !1999)
!2006 = !DILocation(line: 703, column: 11, scope: !601, inlinedAt: !1999)
!2007 = !DILocation(line: 704, column: 8, scope: !601, inlinedAt: !1999)
!2008 = !DILocation(line: 704, column: 11, scope: !601, inlinedAt: !1999)
!2009 = !DILocation(line: 705, column: 3, scope: !601, inlinedAt: !1999)
!2010 = !DILocation(line: 706, column: 8, scope: !609, inlinedAt: !1999)
!2011 = !DILocation(line: 706, column: 11, scope: !609, inlinedAt: !1999)
!2012 = !DILocation(line: 706, column: 4, scope: !609, inlinedAt: !1999)
!2013 = !DILocation(line: 708, column: 8, scope: !609, inlinedAt: !1999)
!2014 = !DILocation(line: 708, column: 11, scope: !609, inlinedAt: !1999)
!2015 = !DILocation(line: 0, scope: !602, inlinedAt: !1999)
!2016 = !DILocation(line: 701, column: 29, scope: !598, inlinedAt: !1999)
!2017 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1999)
!2018 = distinct !{!2018, !2004, !2019, !336}
!2019 = !DILocation(line: 709, column: 2, scope: !595, inlinedAt: !1999)
!2020 = !DILocation(line: 710, column: 6, scope: !584, inlinedAt: !1999)
!2021 = !DILocation(line: 710, column: 9, scope: !584, inlinedAt: !1999)
!2022 = !DILocation(line: 711, column: 7, scope: !584, inlinedAt: !1999)
!2023 = !DILocation(line: 657, column: 2, scope: !1167)
!2024 = !DILocation(line: 659, column: 17, scope: !1204)
!2025 = !DILocation(line: 0, scope: !1204)
!2026 = !DILocation(line: 659, column: 2, scope: !1204)
!2027 = !DILocation(line: 660, column: 23, scope: !1207)
!2028 = !DILocation(line: 660, column: 17, scope: !1207)
!2029 = !DILocation(line: 660, column: 7, scope: !1208)
!2030 = !DILocation(line: 661, column: 24, scope: !1213)
!2031 = !DILocation(line: 661, column: 18, scope: !1213)
!2032 = !DILocation(line: 661, column: 4, scope: !1214)
!2033 = !DILocation(line: 662, column: 15, scope: !1219)
!2034 = !DILocation(line: 662, column: 11, scope: !1219)
!2035 = !DILocation(line: 663, column: 26, scope: !1222)
!2036 = !DILocation(line: 663, column: 19, scope: !1222)
!2037 = !DILocation(line: 663, column: 9, scope: !1219)
!2038 = !DILocation(line: 664, column: 27, scope: !1226)
!2039 = !DILocation(line: 664, column: 20, scope: !1226)
!2040 = !DILocation(line: 664, column: 6, scope: !1227)
!2041 = !DILocation(line: 665, column: 18, scope: !1232)
!2042 = !DILocation(line: 672, column: 20, scope: !1232)
!2043 = !DILocation(line: 672, column: 11, scope: !1232)
!2044 = !DILocation(line: 671, column: 11, scope: !1232)
!2045 = !DILocation(line: 671, column: 18, scope: !1232)
!2046 = !DILocation(line: 664, column: 38, scope: !1226)
!2047 = distinct !{!2047, !2040, !2048, !336}
!2048 = !DILocation(line: 675, column: 6, scope: !1227)
!2049 = !DILocation(line: 661, column: 38, scope: !1213)
!2050 = distinct !{!2050, !2032, !2051, !336}
!2051 = !DILocation(line: 677, column: 4, scope: !1214)
!2052 = !DILocation(line: 659, column: 41, scope: !1209)
!2053 = distinct !{!2053, !2026, !2054, !336}
!2054 = !DILocation(line: 679, column: 2, scope: !1204)
!2055 = !DILocation(line: 680, column: 1, scope: !1167)
!2056 = !DISubprogram(name: "compile", scope: !2057, file: !2057, line: 257, type: !2058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2060)
!2057 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nab.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "f1f252a022b516b509b78822fbdfd484")
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!29, !29, !29, !29, !23}
!2060 = !{}
!2061 = !DISubprogram(name: "step", scope: !2057, file: !2057, line: 258, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2060)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!23, !29, !29}
