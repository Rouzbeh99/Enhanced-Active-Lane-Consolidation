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
  %y.0105 = phi double [ %y.5, %for.inc28 ], [ 0.000000e+00, %entry ]
  %x.0104 = phi double [ %x.5, %for.inc28 ], [ 0.000000e+00, %entry ]
  %ta.0103 = phi i32 [ %ta.5, %for.inc28 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata double %z.0106, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %y.0105, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %x.0104, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.0103, metadata !269, metadata !DIExpression()), !dbg !276
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0107, i64 0, i32 2, !dbg !286
  %0 = load i32, i32* %s_attr, align 4, !dbg !286, !tbaa !290
  %and = and i32 %0, 1, !dbg !293
  %tobool1.not = icmp eq i32 %and, 0, !dbg !293
  br i1 %tobool1.not, label %for.inc28, label %for.cond2.preheader, !dbg !294

for.cond2.preheader:                              ; preds = %for.body
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0107, i64 0, i32 5
  %1 = load i32, i32* %s_nresidues, align 8, !tbaa !295
  call void @llvm.dbg.value(metadata double %z.0106, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %y.0105, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %x.0104, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.0103, metadata !269, metadata !DIExpression()), !dbg !276
  %cmp91 = icmp sgt i32 %1, 0, !dbg !296
  br i1 %cmp91, label %for.body3.lr.ph, label %for.inc28, !dbg !300

for.body3.lr.ph:                                  ; preds = %for.cond2.preheader
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0107, i64 0, i32 7
  %2 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !tbaa !301
  %wide.trip.count116 = zext i32 %1 to i64, !dbg !296
  br label %for.body3, !dbg !300

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc24
  %indvars.iv113 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next114, %for.inc24 ]
  %z.196 = phi double [ %z.0106, %for.body3.lr.ph ], [ %z.4, %for.inc24 ]
  %y.195 = phi double [ %y.0105, %for.body3.lr.ph ], [ %y.4, %for.inc24 ]
  %x.194 = phi double [ %x.0104, %for.body3.lr.ph ], [ %x.4, %for.inc24 ]
  %ta.192 = phi i32 [ %ta.0103, %for.body3.lr.ph ], [ %ta.4, %for.inc24 ]
  call void @llvm.dbg.value(metadata double %z.196, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %y.195, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %x.194, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i64 %indvars.iv113, metadata !267, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.192, metadata !269, metadata !DIExpression()), !dbg !276
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %2, i64 %indvars.iv113, !dbg !302
  %3 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !302, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !271, metadata !DIExpression()), !dbg !276
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 6, !dbg !304
  %4 = load i32, i32* %r_attr, align 8, !dbg !304, !tbaa !306
  %and4 = and i32 %4, 1, !dbg !308
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !308
  br i1 %tobool5.not, label %for.inc24, label %for.cond7.preheader, !dbg !309

for.cond7.preheader:                              ; preds = %for.body3
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 15
  %5 = load i32, i32* %r_natoms, align 8, !tbaa !310
  call void @llvm.dbg.value(metadata double %z.196, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %y.195, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %x.194, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.192, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 0, metadata !268, metadata !DIExpression()), !dbg !276
  %cmp882 = icmp sgt i32 %5, 0, !dbg !311
  br i1 %cmp882, label %for.body9.lr.ph, label %for.inc24, !dbg !315

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17
  %6 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !tbaa !316
  %wide.trip.count = zext i32 %5 to i64, !dbg !311
  br label %for.body9, !dbg !315

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %z.287 = phi double [ %z.196, %for.body9.lr.ph ], [ %z.3, %for.inc ]
  %y.286 = phi double [ %y.195, %for.body9.lr.ph ], [ %y.3, %for.inc ]
  %x.285 = phi double [ %x.194, %for.body9.lr.ph ], [ %x.3, %for.inc ]
  %ta.284 = phi i32 [ %ta.192, %for.body9.lr.ph ], [ %ta.3, %for.inc ]
  call void @llvm.dbg.value(metadata double %z.287, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %y.286, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %x.285, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.284, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %6, i64 %indvars.iv), metadata !272, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !276
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv, i32 2, !dbg !317
  %7 = load i32, i32* %a_attr, align 8, !dbg !317, !tbaa !320
  %and12 = and i32 %7, 1, !dbg !323
  %tobool13.not = icmp eq i32 %and12, 0, !dbg !323
  br i1 %tobool13.not, label %for.inc, label %if.then14, !dbg !324

if.then14:                                        ; preds = %for.body9
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %6, i64 %indvars.iv), metadata !272, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !276
  %arrayidx15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv, i32 17, i64 0, !dbg !325
  %8 = load double, double* %arrayidx15, align 8, !dbg !325, !tbaa !327
  %add = fadd double %x.285, %8, !dbg !328
  call void @llvm.dbg.value(metadata double %add, metadata !273, metadata !DIExpression()), !dbg !276
  %arrayidx17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv, i32 17, i64 1, !dbg !329
  %9 = load double, double* %arrayidx17, align 8, !dbg !329, !tbaa !327
  %add18 = fadd double %y.286, %9, !dbg !330
  call void @llvm.dbg.value(metadata double %add18, metadata !274, metadata !DIExpression()), !dbg !276
  %arrayidx20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv, i32 17, i64 2, !dbg !331
  %10 = load double, double* %arrayidx20, align 8, !dbg !331, !tbaa !327
  %add21 = fadd double %z.287, %10, !dbg !332
  call void @llvm.dbg.value(metadata double %add21, metadata !275, metadata !DIExpression()), !dbg !276
  %inc = add nsw i32 %ta.284, 1, !dbg !333
  call void @llvm.dbg.value(metadata i32 %inc, metadata !269, metadata !DIExpression()), !dbg !276
  br label %for.inc, !dbg !334

for.inc:                                          ; preds = %for.body9, %if.then14
  %ta.3 = phi i32 [ %inc, %if.then14 ], [ %ta.284, %for.body9 ], !dbg !280
  %x.3 = phi double [ %add, %if.then14 ], [ %x.285, %for.body9 ], !dbg !276
  %y.3 = phi double [ %add18, %if.then14 ], [ %y.286, %for.body9 ], !dbg !276
  %z.3 = phi double [ %add21, %if.then14 ], [ %z.287, %for.body9 ], !dbg !276
  call void @llvm.dbg.value(metadata double %z.3, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %y.3, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %x.3, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.3, metadata !269, metadata !DIExpression()), !dbg !276
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !335
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !268, metadata !DIExpression()), !dbg !276
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !311
  br i1 %exitcond.not, label %for.inc24, label %for.body9, !dbg !315, !llvm.loop !336

for.inc24:                                        ; preds = %for.inc, %for.cond7.preheader, %for.body3
  %ta.4 = phi i32 [ %ta.192, %for.body3 ], [ %ta.192, %for.cond7.preheader ], [ %ta.3, %for.inc ], !dbg !340
  %x.4 = phi double [ %x.194, %for.body3 ], [ %x.194, %for.cond7.preheader ], [ %x.3, %for.inc ], !dbg !341
  %y.4 = phi double [ %y.195, %for.body3 ], [ %y.195, %for.cond7.preheader ], [ %y.3, %for.inc ], !dbg !342
  %z.4 = phi double [ %z.196, %for.body3 ], [ %z.196, %for.cond7.preheader ], [ %z.3, %for.inc ], !dbg !343
  call void @llvm.dbg.value(metadata double %z.4, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %y.4, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %x.4, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.4, metadata !269, metadata !DIExpression()), !dbg !276
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1, !dbg !344
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next114, metadata !267, metadata !DIExpression()), !dbg !276
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116, !dbg !296
  br i1 %exitcond117.not, label %for.inc28, label %for.body3, !dbg !300, !llvm.loop !345

for.inc28:                                        ; preds = %for.inc24, %for.cond2.preheader, %for.body
  %ta.5 = phi i32 [ %ta.0103, %for.body ], [ %ta.0103, %for.cond2.preheader ], [ %ta.4, %for.inc24 ], !dbg !340
  %x.5 = phi double [ %x.0104, %for.body ], [ %x.0104, %for.cond2.preheader ], [ %x.4, %for.inc24 ], !dbg !341
  %y.5 = phi double [ %y.0105, %for.body ], [ %y.0105, %for.cond2.preheader ], [ %y.4, %for.inc24 ], !dbg !342
  %z.5 = phi double [ %z.0106, %for.body ], [ %z.0106, %for.cond2.preheader ], [ %z.4, %for.inc24 ], !dbg !343
  call void @llvm.dbg.value(metadata double %z.5, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %y.5, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %x.5, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %ta.5, metadata !269, metadata !DIExpression()), !dbg !276
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.0107, i64 0, i32 4, !dbg !347
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !270, metadata !DIExpression()), !dbg !276
  %sp.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !280, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0, metadata !270, metadata !DIExpression()), !dbg !276
  %tobool.not = icmp eq %struct.strand_t* %sp.0, null, !dbg !285
  br i1 %tobool.not, label %for.end29, label %for.body, !dbg !285, !llvm.loop !348

for.end29:                                        ; preds = %for.inc28
  %cmp30 = icmp eq i32 %ta.5, 0, !dbg !350
  br i1 %cmp30, label %if.then31, label %if.else, !dbg !352

if.then31:                                        ; preds = %entry, %for.end29
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !353, !tbaa !281
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef %aexpr) #13, !dbg !355
  br label %cleanup, !dbg !356

if.else:                                          ; preds = %for.end29
  %conv = sitofp i32 %ta.5 to double, !dbg !357
  %div = fdiv double %x.5, %conv, !dbg !359
  store double %div, double* %point, align 8, !dbg !360, !tbaa !327
  %div35 = fdiv double %y.5, %conv, !dbg !361
  %arrayidx36 = getelementptr inbounds double, double* %point, i64 1, !dbg !362
  store double %div35, double* %arrayidx36, align 8, !dbg !363, !tbaa !327
  %div38 = fdiv double %z.5, %conv, !dbg !364
  %arrayidx39 = getelementptr inbounds double, double* %point, i64 2, !dbg !365
  store double %div38, double* %arrayidx39, align 8, !dbg !366, !tbaa !327
  br label %cleanup, !dbg !367

cleanup:                                          ; preds = %if.else, %if.then31
  %retval.0 = phi i32 [ 1, %if.then31 ], [ 0, %if.else ], !dbg !276
  ret i32 %retval.0, !dbg !368
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* noundef readonly %mol, i8* noundef %aex) local_unnamed_addr #0 !dbg !369 {
entry:
  %lo.i = alloca i32, align 4
  %hi.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !373, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i8* %aex, metadata !374, metadata !DIExpression()), !dbg !378
  %cmp = icmp eq i8* %aex, null, !dbg !379
  %m_strands.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !378
  %sp.033.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !378, !tbaa !281
  %tobool.not34.i = icmp eq %struct.strand_t* %sp.033.i, null, !dbg !378
  br i1 %cmp, label %if.then, label %if.end, !dbg !381

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !382, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !389, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.033.i, metadata !389, metadata !DIExpression()), !dbg !391
  br i1 %tobool.not34.i, label %cleanup, label %for.body.i, !dbg !394

for.body.i:                                       ; preds = %if.then, %for.inc13.i
  %sp.035.i = phi %struct.strand_t* [ %sp.0.i, %for.inc13.i ], [ %sp.033.i, %if.then ]
  %s_attr.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i, i64 0, i32 2, !dbg !396
  %0 = load i32, i32* %s_attr.i, align 4, !dbg !399, !tbaa !290
  %or.i = or i32 %0, 1, !dbg !399
  store i32 %or.i, i32* %s_attr.i, align 4, !dbg !399, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !388, metadata !DIExpression()), !dbg !391
  %s_nresidues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i, i64 0, i32 5
  %1 = load i32, i32* %s_nresidues.i, align 8, !tbaa !295
  call void @llvm.dbg.value(metadata i32 0, metadata !388, metadata !DIExpression()), !dbg !391
  %cmp31.i = icmp sgt i32 %1, 0, !dbg !400
  br i1 %cmp31.i, label %for.body2.lr.ph.i, label %for.inc13.i, !dbg !403

for.body2.lr.ph.i:                                ; preds = %for.body.i
  %s_residues.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i, i64 0, i32 7
  %2 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i, align 8, !tbaa !301
  %wide.trip.count40.i = zext i32 %1 to i64, !dbg !400
  br label %for.body2.i, !dbg !403

for.body2.i:                                      ; preds = %for.inc10.i, %for.body2.lr.ph.i
  %indvars.iv37.i = phi i64 [ 0, %for.body2.lr.ph.i ], [ %indvars.iv.next38.i, %for.inc10.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37.i, metadata !388, metadata !DIExpression()), !dbg !391
  %arrayidx.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %2, i64 %indvars.iv37.i, !dbg !404
  %3 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i, align 8, !dbg !404, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !390, metadata !DIExpression()), !dbg !391
  %r_attr.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 6, !dbg !406
  %4 = load i32, i32* %r_attr.i, align 8, !dbg !407, !tbaa !306
  %or3.i = or i32 %4, 1, !dbg !407
  store i32 %or3.i, i32* %r_attr.i, align 8, !dbg !407, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !387, metadata !DIExpression()), !dbg !391
  %r_natoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 15
  %5 = load i32, i32* %r_natoms.i, align 8, !tbaa !310
  call void @llvm.dbg.value(metadata i32 0, metadata !387, metadata !DIExpression()), !dbg !391
  %cmp529.i = icmp sgt i32 %5, 0, !dbg !408
  br i1 %cmp529.i, label %for.body6.lr.ph.i, label %for.inc10.i, !dbg !411

for.body6.lr.ph.i:                                ; preds = %for.body2.i
  %r_atoms.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17
  %6 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i, align 8, !tbaa !316
  %wide.trip.count.i = zext i32 %5 to i64, !dbg !408
  br label %for.body6.i, !dbg !411

for.body6.i:                                      ; preds = %for.body6.i, %for.body6.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body6.lr.ph.i ], [ %indvars.iv.next.i, %for.body6.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !387, metadata !DIExpression()), !dbg !391
  %a_attr.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv.i, i32 2, !dbg !412
  %7 = load i32, i32* %a_attr.i, align 8, !dbg !413, !tbaa !320
  %or9.i = or i32 %7, 1, !dbg !413
  store i32 %or9.i, i32* %a_attr.i, align 8, !dbg !413, !tbaa !320
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !414
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !387, metadata !DIExpression()), !dbg !391
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i, !dbg !408
  br i1 %exitcond.not.i, label %for.inc10.i, label %for.body6.i, !dbg !411, !llvm.loop !415

for.inc10.i:                                      ; preds = %for.body6.i, %for.body2.i
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1, !dbg !417
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38.i, metadata !388, metadata !DIExpression()), !dbg !391
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count40.i, !dbg !400
  br i1 %exitcond41.not.i, label %for.inc13.i, label %for.body2.i, !dbg !403, !llvm.loop !418

for.inc13.i:                                      ; preds = %for.inc10.i, %for.body.i
  %s_next.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i, i64 0, i32 4, !dbg !420
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !389, metadata !DIExpression()), !dbg !391
  %sp.0.i = load %struct.strand_t*, %struct.strand_t** %s_next.i, align 8, !dbg !421, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i, metadata !389, metadata !DIExpression()), !dbg !391
  %tobool.not.i = icmp eq %struct.strand_t* %sp.0.i, null, !dbg !394
  br i1 %tobool.not.i, label %cleanup, label %for.body.i, !dbg !394, !llvm.loop !422

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !424, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !429, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.033.i, metadata !429, metadata !DIExpression()), !dbg !431
  br i1 %tobool.not34.i, label %for.body.preheader, label %for.body.i48, !dbg !433

for.body.i48:                                     ; preds = %if.end, %for.inc13.i72
  %sp.035.i44 = phi %struct.strand_t* [ %sp.0.i70, %for.inc13.i72 ], [ %sp.033.i, %if.end ]
  %s_attr.i45 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i44, i64 0, i32 2, !dbg !435
  %8 = load i32, i32* %s_attr.i45, align 4, !dbg !438, !tbaa !290
  %and.i = and i32 %8, -129, !dbg !438
  store i32 %and.i, i32* %s_attr.i45, align 4, !dbg !438, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !428, metadata !DIExpression()), !dbg !431
  %s_nresidues.i46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i44, i64 0, i32 5
  %9 = load i32, i32* %s_nresidues.i46, align 8, !tbaa !295
  %cmp31.i47 = icmp sgt i32 %9, 0, !dbg !439
  br i1 %cmp31.i47, label %for.body2.lr.ph.i51, label %for.inc13.i72, !dbg !442

for.body2.lr.ph.i51:                              ; preds = %for.body.i48
  %s_residues.i49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i44, i64 0, i32 7
  %10 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i49, align 8, !tbaa !301
  %wide.trip.count40.i50 = zext i32 %9 to i64, !dbg !439
  br label %for.body2.i57, !dbg !442

for.body2.i57:                                    ; preds = %for.inc10.i68, %for.body2.lr.ph.i51
  %indvars.iv37.i52 = phi i64 [ 0, %for.body2.lr.ph.i51 ], [ %indvars.iv.next38.i66, %for.inc10.i68 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37.i52, metadata !428, metadata !DIExpression()), !dbg !431
  %arrayidx.i53 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %10, i64 %indvars.iv37.i52, !dbg !443
  %11 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i53, align 8, !dbg !443, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %11, metadata !430, metadata !DIExpression()), !dbg !431
  %r_attr.i54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %11, i64 0, i32 6, !dbg !445
  %12 = load i32, i32* %r_attr.i54, align 8, !dbg !446, !tbaa !306
  %and3.i = and i32 %12, -129, !dbg !446
  store i32 %and3.i, i32* %r_attr.i54, align 8, !dbg !446, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !427, metadata !DIExpression()), !dbg !431
  %r_natoms.i55 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %11, i64 0, i32 15
  %13 = load i32, i32* %r_natoms.i55, align 8, !tbaa !310
  %cmp529.i56 = icmp sgt i32 %13, 0, !dbg !447
  br i1 %cmp529.i56, label %for.body6.lr.ph.i60, label %for.inc10.i68, !dbg !450

for.body6.lr.ph.i60:                              ; preds = %for.body2.i57
  %r_atoms.i58 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %11, i64 0, i32 17
  %14 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i58, align 8, !tbaa !316
  %wide.trip.count.i59 = zext i32 %13 to i64, !dbg !447
  br label %for.body6.i65, !dbg !450

for.body6.i65:                                    ; preds = %for.body6.i65, %for.body6.lr.ph.i60
  %indvars.iv.i61 = phi i64 [ 0, %for.body6.lr.ph.i60 ], [ %indvars.iv.next.i63, %for.body6.i65 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i61, metadata !427, metadata !DIExpression()), !dbg !431
  %a_attr.i62 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %14, i64 %indvars.iv.i61, i32 2, !dbg !451
  %15 = load i32, i32* %a_attr.i62, align 8, !dbg !452, !tbaa !320
  %and9.i = and i32 %15, -129, !dbg !452
  store i32 %and9.i, i32* %a_attr.i62, align 8, !dbg !452, !tbaa !320
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i61, 1, !dbg !453
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63, metadata !427, metadata !DIExpression()), !dbg !431
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, %wide.trip.count.i59, !dbg !447
  br i1 %exitcond.not.i64, label %for.inc10.i68, label %for.body6.i65, !dbg !450, !llvm.loop !454

for.inc10.i68:                                    ; preds = %for.body6.i65, %for.body2.i57
  %indvars.iv.next38.i66 = add nuw nsw i64 %indvars.iv37.i52, 1, !dbg !456
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38.i66, metadata !428, metadata !DIExpression()), !dbg !431
  %exitcond41.not.i67 = icmp eq i64 %indvars.iv.next38.i66, %wide.trip.count40.i50, !dbg !439
  br i1 %exitcond41.not.i67, label %for.inc13.i72, label %for.body2.i57, !dbg !442, !llvm.loop !457

for.inc13.i72:                                    ; preds = %for.inc10.i68, %for.body.i48
  %s_next.i69 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i44, i64 0, i32 4, !dbg !459
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !429, metadata !DIExpression()), !dbg !431
  %sp.0.i70 = load %struct.strand_t*, %struct.strand_t** %s_next.i69, align 8, !dbg !460, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i70, metadata !429, metadata !DIExpression()), !dbg !431
  %tobool.not.i71 = icmp eq %struct.strand_t* %sp.0.i70, null, !dbg !433
  br i1 %tobool.not.i71, label %for.body.i81, label %for.body.i48, !dbg !433, !llvm.loop !461

for.body.i81:                                     ; preds = %for.inc13.i72, %for.inc13.i107
  %sp.035.i76 = phi %struct.strand_t* [ %sp.0.i105, %for.inc13.i107 ], [ %sp.033.i, %for.inc13.i72 ]
  %s_attr.i77 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i76, i64 0, i32 2, !dbg !463
  %16 = load i32, i32* %s_attr.i77, align 4, !dbg !475, !tbaa !290
  %and.i78 = and i32 %16, -2, !dbg !475
  store i32 %and.i78, i32* %s_attr.i77, align 4, !dbg !475, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !471, metadata !DIExpression()), !dbg !476
  %s_nresidues.i79 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i76, i64 0, i32 5
  %17 = load i32, i32* %s_nresidues.i79, align 8, !tbaa !295
  %cmp31.i80 = icmp sgt i32 %17, 0, !dbg !477
  br i1 %cmp31.i80, label %for.body2.lr.ph.i84, label %for.inc13.i107, !dbg !480

for.body2.lr.ph.i84:                              ; preds = %for.body.i81
  %s_residues.i82 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i76, i64 0, i32 7
  %18 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i82, align 8, !tbaa !301
  %wide.trip.count40.i83 = zext i32 %17 to i64, !dbg !477
  br label %for.body2.i91, !dbg !480

for.body2.i91:                                    ; preds = %for.inc10.i103, %for.body2.lr.ph.i84
  %indvars.iv37.i85 = phi i64 [ 0, %for.body2.lr.ph.i84 ], [ %indvars.iv.next38.i101, %for.inc10.i103 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37.i85, metadata !471, metadata !DIExpression()), !dbg !476
  %arrayidx.i86 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %18, i64 %indvars.iv37.i85, !dbg !481
  %19 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i86, align 8, !dbg !481, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %19, metadata !473, metadata !DIExpression()), !dbg !476
  %r_attr.i87 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 6, !dbg !483
  %20 = load i32, i32* %r_attr.i87, align 8, !dbg !484, !tbaa !306
  %and3.i88 = and i32 %20, -2, !dbg !484
  store i32 %and3.i88, i32* %r_attr.i87, align 8, !dbg !484, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()), !dbg !476
  %r_natoms.i89 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 15
  %21 = load i32, i32* %r_natoms.i89, align 8, !tbaa !310
  %cmp529.i90 = icmp sgt i32 %21, 0, !dbg !485
  br i1 %cmp529.i90, label %for.body6.lr.ph.i94, label %for.inc10.i103, !dbg !488

for.body6.lr.ph.i94:                              ; preds = %for.body2.i91
  %r_atoms.i92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 17
  %22 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i92, align 8, !tbaa !316
  %wide.trip.count.i93 = zext i32 %21 to i64, !dbg !485
  br label %for.body6.i100, !dbg !488

for.body6.i100:                                   ; preds = %for.body6.i100, %for.body6.lr.ph.i94
  %indvars.iv.i95 = phi i64 [ 0, %for.body6.lr.ph.i94 ], [ %indvars.iv.next.i98, %for.body6.i100 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i95, metadata !470, metadata !DIExpression()), !dbg !476
  %a_attr.i96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %indvars.iv.i95, i32 2, !dbg !489
  %23 = load i32, i32* %a_attr.i96, align 8, !dbg !490, !tbaa !320
  %and9.i97 = and i32 %23, -2, !dbg !490
  store i32 %and9.i97, i32* %a_attr.i96, align 8, !dbg !490, !tbaa !320
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i95, 1, !dbg !491
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i98, metadata !470, metadata !DIExpression()), !dbg !476
  %exitcond.not.i99 = icmp eq i64 %indvars.iv.next.i98, %wide.trip.count.i93, !dbg !485
  br i1 %exitcond.not.i99, label %for.inc10.i103, label %for.body6.i100, !dbg !488, !llvm.loop !492

for.inc10.i103:                                   ; preds = %for.body6.i100, %for.body2.i91
  %indvars.iv.next38.i101 = add nuw nsw i64 %indvars.iv37.i85, 1, !dbg !494
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38.i101, metadata !471, metadata !DIExpression()), !dbg !476
  %exitcond41.not.i102 = icmp eq i64 %indvars.iv.next38.i101, %wide.trip.count40.i83, !dbg !477
  br i1 %exitcond41.not.i102, label %for.inc13.i107, label %for.body2.i91, !dbg !480, !llvm.loop !495

for.inc13.i107:                                   ; preds = %for.inc10.i103, %for.body.i81
  %s_next.i104 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i76, i64 0, i32 4, !dbg !497
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !472, metadata !DIExpression()), !dbg !476
  %sp.0.i105 = load %struct.strand_t*, %struct.strand_t** %s_next.i104, align 8, !dbg !498, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i105, metadata !472, metadata !DIExpression()), !dbg !476
  %tobool.not.i106 = icmp eq %struct.strand_t* %sp.0.i105, null, !dbg !499
  br i1 %tobool.not.i106, label %for.body.preheader, label %for.body.i81, !dbg !499, !llvm.loop !500

for.body.preheader:                               ; preds = %for.inc13.i107, %if.end
  call void @llvm.dbg.value(metadata i8* %aex, metadata !375, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i8* undef, metadata !376, metadata !DIExpression()), !dbg !378
  %24 = bitcast i32* %lo.i to i8*
  %25 = bitcast i32* %hi.i to i8*
  %m_nstrands.i.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 1
  %call = tail call i8* @strchr(i8* noundef nonnull %aex, i32 noundef 124) #14, !dbg !502
  call void @llvm.dbg.value(metadata i8* %call, metadata !376, metadata !DIExpression()), !dbg !378
  br label %for.body, !dbg !504

for.body:                                         ; preds = %for.body.backedge, %for.body.preheader
  %n_aep.0486 = phi i8* [ %call, %for.body.preheader ], [ %n_aep.2, %for.body.backedge ]
  %aep.0484 = phi i8* [ %aex, %for.body.preheader ], [ %n_aep.1, %for.body.backedge ]
  call void @llvm.dbg.value(metadata i8* %n_aep.0486, metadata !376, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i8* %aep.0484, metadata !375, metadata !DIExpression()), !dbg !378
  %tobool1.not = icmp eq i8* %n_aep.0486, null, !dbg !505
  br i1 %tobool1.not, label %if.else, label %if.then2, !dbg !509

if.then2:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8* %n_aep.0486 to i64, !dbg !510
  %sub.ptr.rhs.cast = ptrtoint i8* %aep.0484 to i64, !dbg !510
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !510
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !377, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !378
  %incdec.ptr = getelementptr inbounds i8, i8* %n_aep.0486, i64 1, !dbg !512
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !376, metadata !DIExpression()), !dbg !378
  br label %if.end5, !dbg !513

if.else:                                          ; preds = %for.body
  %call3 = tail call i64 @strlen(i8* noundef nonnull %aep.0484) #14, !dbg !514
  call void @llvm.dbg.value(metadata i64 %call3, metadata !377, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !378
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %n_aep.1 = phi i8* [ %incdec.ptr, %if.then2 ], [ null, %if.else ], !dbg !515
  %ael.0.in = phi i64 [ %sub.ptr.sub, %if.then2 ], [ %call3, %if.else ]
  %ael.0 = trunc i64 %ael.0.in to i32, !dbg !516
  call void @llvm.dbg.value(metadata i32 %ael.0, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !376, metadata !DIExpression()), !dbg !378
  %cmp6 = icmp sgt i32 %ael.0, 999, !dbg !517
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !519

if.then8:                                         ; preds = %if.end5
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !520, !tbaa !281
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %26) #13, !dbg !522
  br label %cleanup, !dbg !523

if.end10:                                         ; preds = %if.end5
  %sext = shl i64 %ael.0.in, 32, !dbg !524
  %conv11 = ashr exact i64 %sext, 32, !dbg !524
  %call12 = tail call i8* @strncpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* noundef nonnull %aep.0484, i64 noundef %conv11) #15, !dbg !525
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %conv11, !dbg !526
  store i8 0, i8* %arrayidx, align 1, !dbg !527, !tbaa !528
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !529, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !532, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #15, !dbg !539
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #15, !dbg !539
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !533, metadata !DIExpression()) #15, !dbg !537
  %28 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !540, !tbaa !528
  %cmp.i = icmp eq i8 %28, 58, !dbg !542
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !543

if.then.i:                                        ; preds = %if.end10
  store i8* null, i8** @spart, align 8, !dbg !544, !tbaa !281
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), metadata !533, metadata !DIExpression()) #15, !dbg !537
  br label %if.end.i, !dbg !546

if.else.i:                                        ; preds = %if.end10
  %call.i = tail call i8* @strtok(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !547
  store i8* %call.i, i8** @spart, align 8, !dbg !549, !tbaa !281
  %call2.i = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %call.i) #14, !dbg !550
  %add.i = add i64 %call2.i, 1, !dbg !551
  %add.ptr.i = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %add.i, !dbg !552
  call void @llvm.dbg.value(metadata i8* %add.ptr.i, metadata !533, metadata !DIExpression()) #15, !dbg !537
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %aep.0.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), %if.then.i ], [ %add.ptr.i, %if.else.i ], !dbg !553
  call void @llvm.dbg.value(metadata i8* %aep.0.i, metadata !533, metadata !DIExpression()) #15, !dbg !537
  %29 = load i8, i8* %aep.0.i, align 1, !dbg !554, !tbaa !528
  %cmp4.i = icmp eq i8 %29, 58, !dbg !556
  br i1 %cmp4.i, label %if.then6.i, label %if.else8.i, !dbg !557

if.then6.i:                                       ; preds = %if.end.i
  store i8* null, i8** @rpart, align 8, !dbg !558, !tbaa !281
  call void @llvm.dbg.value(metadata i8* undef, metadata !533, metadata !DIExpression()) #15, !dbg !537
  br label %if.end13.i, !dbg !560

if.else8.i:                                       ; preds = %if.end.i
  %call9.i = tail call i8* @strtok(i8* noundef nonnull %aep.0.i, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !561
  store i8* %call9.i, i8** @rpart, align 8, !dbg !563, !tbaa !281
  %call10.i = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %call9.i) #14, !dbg !564
  %add11.i = add i64 %call10.i, 1, !dbg !565
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else8.i, %if.then6.i
  %add11.sink.i = phi i64 [ %add11.i, %if.else8.i ], [ 1, %if.then6.i ]
  %add.ptr12.i = getelementptr inbounds i8, i8* %aep.0.i, i64 %add11.sink.i, !dbg !566
  call void @llvm.dbg.value(metadata i8* %add.ptr12.i, metadata !533, metadata !DIExpression()) #15, !dbg !537
  %call14.i = tail call i8* @strtok(i8* noundef nonnull %add.ptr12.i, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !567
  store i8* %call14.i, i8** @apart, align 8, !dbg !568, !tbaa !281
  %30 = load i8*, i8** @spart, align 8, !dbg !569, !tbaa !281
  %tobool.not.i108 = icmp eq i8* %30, null, !dbg !569
  br i1 %tobool.not.i108, label %if.else29.i, label %if.then15.i, !dbg !571

if.then15.i:                                      ; preds = %if.end13.i
  %call16.i = tail call i8* @strtok(i8* noundef nonnull %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !572
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !534, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !535, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !536, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  %call17.i = call fastcc i32 @is_pattern(i8* noundef %call16.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !574
  %tobool18.not.i = icmp eq i32 %call17.i, 0, !dbg !574
  br i1 %tobool18.not.i, label %if.else20.i, label %if.then19.i, !dbg !576

if.then19.i:                                      ; preds = %if.then15.i
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !577, metadata !DIExpression()) #15, !dbg !584
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !582, metadata !DIExpression()) #15, !dbg !584
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !586, metadata !DIExpression()) #15, !dbg !594
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !594
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !594
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !596, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !592, metadata !DIExpression()) #15, !dbg !594
  br label %for.cond.i.i.i, !dbg !597

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.then19.i
  %aep.0.i.i.i = phi i8* [ %call16.i, %if.then19.i ], [ %incdec.ptr12.i.i.i, %for.inc.i.i.i ], !dbg !599
  %rep.0.i.i.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then19.i ], [ %rep.1.i.i.i, %for.inc.i.i.i ], !dbg !594
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !594
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i.i, metadata !592, metadata !DIExpression()) #15, !dbg !594
  %31 = load i8, i8* %aep.0.i.i.i, align 1, !dbg !600, !tbaa !528
  switch i8 %31, label %if.else9.i.i.i [
    i8 0, label %aexpr2rexpr.exit.i.i
    i8 42, label %if.then.i.i.i
    i8 63, label %if.then7.i.i.i
  ], !dbg !602

if.then.i.i.i:                                    ; preds = %for.cond.i.i.i
  %incdec.ptr2.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !603
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !594
  store i8 46, i8* %rep.0.i.i.i, align 1, !dbg !607, !tbaa !528
  %incdec.ptr3.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 2, !dbg !608
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !594
  store i8 42, i8* %incdec.ptr2.i.i.i, align 1, !dbg !609, !tbaa !528
  br label %for.inc.i.i.i, !dbg !610

if.then7.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr8.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !611
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !594
  store i8 46, i8* %rep.0.i.i.i, align 1, !dbg !613, !tbaa !528
  br label %for.inc.i.i.i, !dbg !614

if.else9.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr10.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !615
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !594
  store i8 %31, i8* %rep.0.i.i.i, align 1, !dbg !616, !tbaa !528
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else9.i.i.i, %if.then7.i.i.i, %if.then.i.i.i
  %rep.1.i.i.i = phi i8* [ %incdec.ptr3.i.i.i, %if.then.i.i.i ], [ %incdec.ptr8.i.i.i, %if.then7.i.i.i ], [ %incdec.ptr10.i.i.i, %if.else9.i.i.i ], !dbg !617
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !594
  %incdec.ptr12.i.i.i = getelementptr inbounds i8, i8* %aep.0.i.i.i, i64 1, !dbg !618
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i.i, metadata !592, metadata !DIExpression()) #15, !dbg !594
  br label %for.cond.i.i.i, !dbg !619, !llvm.loop !620

aexpr2rexpr.exit.i.i:                             ; preds = %for.cond.i.i.i
  %incdec.ptr13.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !622
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !594
  store i8 36, i8* %rep.0.i.i.i, align 1, !dbg !623, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i.i, align 1, !dbg !624, !tbaa !528
  %call.i.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !625
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !583, metadata !DIExpression()) #15, !dbg !584
  %sp.07.i.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !626, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.07.i.i, metadata !583, metadata !DIExpression()) #15, !dbg !584
  %tobool.not8.i.i = icmp eq %struct.strand_t* %sp.07.i.i, null, !dbg !628
  br i1 %tobool.not8.i.i, label %if.end21.i, label %for.body.i.i, !dbg !628

for.body.i.i:                                     ; preds = %aexpr2rexpr.exit.i.i, %for.body.i.i
  %sp.09.i.i = phi %struct.strand_t* [ %sp.0.i.i, %for.body.i.i ], [ %sp.07.i.i, %aexpr2rexpr.exit.i.i ]
  %s_strandname.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i.i, i64 0, i32 0, !dbg !629
  %32 = load i8*, i8** %s_strandname.i.i, align 8, !dbg !629, !tbaa !632
  %call1.i.i = tail call i32 @step(i8* noundef %32, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !633
  %tobool2.not.i.i = icmp ne i32 %call1.i.i, 0, !dbg !633
  %cond.i.i = zext i1 %tobool2.not.i.i to i32, !dbg !633
  %s_attr.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i.i, i64 0, i32 2, !dbg !634
  %33 = load i32, i32* %s_attr.i.i, align 4, !dbg !635, !tbaa !290
  %or.i.i = or i32 %33, %cond.i.i, !dbg !635
  store i32 %or.i.i, i32* %s_attr.i.i, align 4, !dbg !635, !tbaa !290
  %s_next.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i.i, i64 0, i32 4, !dbg !636
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !583, metadata !DIExpression()) #15, !dbg !584
  %sp.0.i.i = load %struct.strand_t*, %struct.strand_t** %s_next.i.i, align 8, !dbg !626, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i.i, metadata !583, metadata !DIExpression()) #15, !dbg !584
  %tobool.not.i.i = icmp eq %struct.strand_t* %sp.0.i.i, null, !dbg !628
  br i1 %tobool.not.i.i, label %if.end21.i, label %for.body.i.i, !dbg !628, !llvm.loop !637

if.else20.i:                                      ; preds = %if.then15.i
  %34 = load i32, i32* %lo.i, align 4, !dbg !639, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %34, metadata !535, metadata !DIExpression()) #15, !dbg !537
  %35 = load i32, i32* %hi.i, align 4, !dbg !641, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %35, metadata !536, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !642, metadata !DIExpression()) #15, !dbg !651
  call void @llvm.dbg.value(metadata i32 %34, metadata !647, metadata !DIExpression()) #15, !dbg !651
  call void @llvm.dbg.value(metadata i32 %35, metadata !648, metadata !DIExpression()) #15, !dbg !651
  %cmp.i.i = icmp eq i32 %35, -1, !dbg !653
  %36 = load i32, i32* %m_nstrands.i.i, align 8, !tbaa !655
  %.hi.i.i = select i1 %cmp.i.i, i32 %36, i32 %35, !dbg !651
  call void @llvm.dbg.value(metadata i32 %.hi.i.i, metadata !648, metadata !DIExpression()) #15, !dbg !651
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !650, metadata !DIExpression()) #15, !dbg !651
  call void @llvm.dbg.value(metadata i32 1, metadata !649, metadata !DIExpression()) #15, !dbg !651
  %cmp2.not17.i.i = icmp slt i32 %36, 1, !dbg !657
  br i1 %cmp2.not17.i.i, label %if.end21.i, label %for.body.i2.i, !dbg !660

for.body.i2.i:                                    ; preds = %if.else20.i, %for.inc.i.i
  %sp.019.in.i.i = phi %struct.strand_t** [ %s_next.i5.i, %for.inc.i.i ], [ %m_strands.i, %if.else20.i ]
  %m.018.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 1, %if.else20.i ]
  %sp.019.i.i = load %struct.strand_t*, %struct.strand_t** %sp.019.in.i.i, align 8, !dbg !661, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %m.018.i.i, metadata !649, metadata !DIExpression()) #15, !dbg !651
  %cmp3.not.i.i = icmp slt i32 %m.018.i.i, %34, !dbg !662
  %cmp4.not.i.i = icmp sgt i32 %m.018.i.i, %.hi.i.i
  %or.cond.i.i = select i1 %cmp3.not.i.i, i1 true, i1 %cmp4.not.i.i, !dbg !665
  br i1 %or.cond.i.i, label %for.inc.i.i, label %if.then5.i.i, !dbg !665

if.then5.i.i:                                     ; preds = %for.body.i2.i
  %s_attr.i3.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i.i, i64 0, i32 2, !dbg !666
  %37 = load i32, i32* %s_attr.i3.i, align 4, !dbg !667, !tbaa !290
  %or.i4.i = or i32 %37, 1, !dbg !667
  store i32 %or.i4.i, i32* %s_attr.i3.i, align 4, !dbg !667, !tbaa !290
  br label %for.inc.i.i, !dbg !668

for.inc.i.i:                                      ; preds = %if.then5.i.i, %for.body.i2.i
  %inc.i.i = add nuw i32 %m.018.i.i, 1, !dbg !669
  call void @llvm.dbg.value(metadata i32 %inc.i.i, metadata !649, metadata !DIExpression()) #15, !dbg !651
  %s_next.i5.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i.i, i64 0, i32 4, !dbg !670
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !650, metadata !DIExpression()) #15, !dbg !651
  %exitcond.not.i.i = icmp eq i32 %m.018.i.i, %36, !dbg !657
  br i1 %exitcond.not.i.i, label %if.end21.i, label %for.body.i2.i, !dbg !660, !llvm.loop !671

if.end21.i:                                       ; preds = %for.body.i.i, %for.inc.i.i, %if.else20.i, %aexpr2rexpr.exit.i.i
  %call22185.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !673
  call void @llvm.dbg.value(metadata i8* %call22185.i, metadata !534, metadata !DIExpression()) #15, !dbg !537
  %tobool23.not186.i = icmp eq i8* %call22185.i, null, !dbg !674
  br i1 %tobool23.not186.i, label %if.end30.i, label %while.body.i.preheader, !dbg !674

while.body.i.preheader:                           ; preds = %if.end21.i
  %call.i381 = tail call i16** @__ctype_b_loc() #16, !dbg !378
  br label %while.body.i, !dbg !674

while.body.i:                                     ; preds = %while.body.i.preheader, %if.end28.i
  %call22187.i = phi i8* [ %call22.i, %if.end28.i ], [ %call22185.i, %while.body.i.preheader ]
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !535, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !536, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  call void @llvm.dbg.value(metadata i8* %call22187.i, metadata !675, metadata !DIExpression()) #15, !dbg !685
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !681, metadata !DIExpression()) #15, !dbg !685
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !682, metadata !DIExpression()) #15, !dbg !685
  %38 = load i16*, i16** %call.i381, align 8, !dbg !689, !tbaa !281
  %39 = load i8, i8* %call22187.i, align 1, !dbg !689, !tbaa !528
  %idxprom.i382 = sext i8 %39 to i64, !dbg !689
  %arrayidx.i383 = getelementptr inbounds i16, i16* %38, i64 %idxprom.i382, !dbg !689
  %40 = load i16, i16* %arrayidx.i383, align 2, !dbg !689, !tbaa !691
  %41 = and i16 %40, 2048, !dbg !689
  %tobool.not.i384 = icmp ne i16 %41, 0, !dbg !689
  %cmp.not.i385 = icmp eq i8 %39, 45
  %or.cond.i386 = select i1 %tobool.not.i384, i1 true, i1 %cmp.not.i385, !dbg !693
  br i1 %or.cond.i386, label %if.end.i388, label %if.then26.i, !dbg !693

if.end.i388:                                      ; preds = %while.body.i
  %tobool10.not.i387 = icmp eq i16 %41, 0, !dbg !694
  br i1 %tobool10.not.i387, label %if.else59.i428, label %for.body.i399, !dbg !696

for.body.i399:                                    ; preds = %if.end.i388, %for.body.i399
  %42 = phi i8 [ %43, %for.body.i399 ], [ %39, %if.end.i388 ]
  %ip.0133.i389 = phi i8* [ %incdec.ptr.i395, %for.body.i399 ], [ %call22187.i, %if.end.i388 ]
  %val.0132.i390 = phi i32 [ %sub.i394, %for.body.i399 ], [ 0, %if.end.i388 ]
  call void @llvm.dbg.value(metadata i8* %ip.0133.i389, metadata !684, metadata !DIExpression()) #15, !dbg !685
  call void @llvm.dbg.value(metadata i32 %val.0132.i390, metadata !683, metadata !DIExpression()) #15, !dbg !685
  %conv13.i391 = sext i8 %42 to i32, !dbg !697
  %mul.i392 = mul nsw i32 %val.0132.i390, 10, !dbg !701
  %add.i393 = add nsw i32 %conv13.i391, -48, !dbg !702
  %sub.i394 = add i32 %add.i393, %mul.i392, !dbg !703
  call void @llvm.dbg.value(metadata i32 %sub.i394, metadata !683, metadata !DIExpression()) #15, !dbg !685
  %incdec.ptr.i395 = getelementptr inbounds i8, i8* %ip.0133.i389, i64 1, !dbg !704
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i395, metadata !684, metadata !DIExpression()) #15, !dbg !685
  %43 = load i8, i8* %incdec.ptr.i395, align 1, !dbg !697, !tbaa !528
  %idxprom14.i396 = sext i8 %43 to i64, !dbg !697
  %arrayidx15.i397 = getelementptr inbounds i16, i16* %38, i64 %idxprom14.i396, !dbg !697
  %44 = load i16, i16* %arrayidx15.i397, align 2, !dbg !697, !tbaa !691
  %45 = and i16 %44, 2048, !dbg !697
  %tobool18.not.i398 = icmp eq i16 %45, 0, !dbg !705
  br i1 %tobool18.not.i398, label %for.end.i400, label %for.body.i399, !dbg !705, !llvm.loop !706

for.end.i400:                                     ; preds = %for.body.i399
  store i32 %sub.i394, i32* %lo.i, align 4, !dbg !708, !tbaa !640
  switch i8 %43, label %if.end28.i407 [
    i8 0, label %if.then21.i401
    i8 45, label %if.then25.i404
  ], !dbg !709

if.then21.i401:                                   ; preds = %for.end.i400
  store i32 %sub.i394, i32* %hi.i, align 4, !dbg !710, !tbaa !640
  br label %if.else27.i, !dbg !713

if.then25.i404:                                   ; preds = %for.end.i400
  %incdec.ptr26.i402 = getelementptr inbounds i8, i8* %ip.0133.i389, i64 2, !dbg !714
  call void @llvm.dbg.value(metadata i8* %incdec.ptr26.i402, metadata !684, metadata !DIExpression()) #15, !dbg !685
  %.pr.i403 = load i8, i8* %incdec.ptr26.i402, align 1, !dbg !716, !tbaa !528
  br label %if.end28.i407, !dbg !718

if.end28.i407:                                    ; preds = %if.then25.i404, %for.end.i400
  %46 = phi i8 [ %43, %for.end.i400 ], [ %.pr.i403, %if.then25.i404 ], !dbg !716
  %ip.1.i405 = phi i8* [ %incdec.ptr.i395, %for.end.i400 ], [ %incdec.ptr26.i402, %if.then25.i404 ], !dbg !719
  call void @llvm.dbg.value(metadata i8* %ip.1.i405, metadata !684, metadata !DIExpression()) #15, !dbg !685
  %tobool29.not.i406 = icmp eq i8 %46, 0, !dbg !716
  br i1 %tobool29.not.i406, label %if.else27.i.thread, label %if.else31.i412, !dbg !720

if.else31.i412:                                   ; preds = %if.end28.i407
  %idxprom34.i409 = sext i8 %46 to i64, !dbg !721
  %arrayidx35.i410 = getelementptr inbounds i16, i16* %38, i64 %idxprom34.i409, !dbg !721
  %47 = load i16, i16* %arrayidx35.i410, align 2, !dbg !721, !tbaa !691
  %48 = and i16 %47, 2048, !dbg !721
  %tobool38.not.i411 = icmp eq i16 %48, 0, !dbg !721
  br i1 %tobool38.not.i411, label %if.then26.i, label %for.body50.i423, !dbg !723

for.body50.i423:                                  ; preds = %if.else31.i412, %for.body50.i423
  %49 = phi i8 [ %50, %for.body50.i423 ], [ %46, %if.else31.i412 ]
  %ip.2139.i413 = phi i8* [ %incdec.ptr56.i419, %for.body50.i423 ], [ %ip.1.i405, %if.else31.i412 ]
  %val.1138.i414 = phi i32 [ %sub54.i418, %for.body50.i423 ], [ 0, %if.else31.i412 ]
  call void @llvm.dbg.value(metadata i8* %ip.2139.i413, metadata !684, metadata !DIExpression()) #15, !dbg !685
  call void @llvm.dbg.value(metadata i32 %val.1138.i414, metadata !683, metadata !DIExpression()) #15, !dbg !685
  %conv44.i415 = sext i8 %49 to i32, !dbg !724
  %mul51.i416 = mul nsw i32 %val.1138.i414, 10, !dbg !727
  %add53.i417 = add nsw i32 %conv44.i415, -48, !dbg !728
  %sub54.i418 = add i32 %add53.i417, %mul51.i416, !dbg !729
  call void @llvm.dbg.value(metadata i32 %sub54.i418, metadata !683, metadata !DIExpression()) #15, !dbg !685
  %incdec.ptr56.i419 = getelementptr inbounds i8, i8* %ip.2139.i413, i64 1, !dbg !730
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56.i419, metadata !684, metadata !DIExpression()) #15, !dbg !685
  %50 = load i8, i8* %incdec.ptr56.i419, align 1, !dbg !724, !tbaa !528
  %idxprom45.i420 = sext i8 %50 to i64, !dbg !724
  %arrayidx46.i421 = getelementptr inbounds i16, i16* %38, i64 %idxprom45.i420, !dbg !724
  %51 = load i16, i16* %arrayidx46.i421, align 2, !dbg !724, !tbaa !691
  %52 = and i16 %51, 2048, !dbg !724
  %tobool49.not.i422 = icmp eq i16 %52, 0, !dbg !731
  br i1 %tobool49.not.i422, label %is_pattern.exit448, label %for.body50.i423, !dbg !731, !llvm.loop !732

if.else59.i428:                                   ; preds = %if.end.i388
  store i32 1, i32* %lo.i, align 4, !dbg !734, !tbaa !640
  %arrayidx60.i426 = getelementptr inbounds i8, i8* %call22187.i, i64 1, !dbg !736
  call void @llvm.dbg.value(metadata i8* %arrayidx60.i426, metadata !684, metadata !DIExpression()) #15, !dbg !685
  %53 = load i8, i8* %arrayidx60.i426, align 1, !dbg !737, !tbaa !528
  %tobool62.not.i427 = icmp eq i8 %53, 0, !dbg !737
  br i1 %tobool62.not.i427, label %if.else27.i.thread, label %if.else64.i433, !dbg !739

if.else64.i433:                                   ; preds = %if.else59.i428
  %idxprom67.i430 = sext i8 %53 to i64, !dbg !740
  %arrayidx68.i431 = getelementptr inbounds i16, i16* %38, i64 %idxprom67.i430, !dbg !740
  %54 = load i16, i16* %arrayidx68.i431, align 2, !dbg !740, !tbaa !691
  %55 = and i16 %54, 2048, !dbg !740
  %tobool71.not.i432 = icmp eq i16 %55, 0, !dbg !740
  br i1 %tobool71.not.i432, label %if.else64.i433.if.else27.i_crit_edge, label %for.body81.i444, !dbg !742

if.else64.i433.if.else27.i_crit_edge:             ; preds = %if.else64.i433
  %.pre = load i32, i32* %hi.i, align 4, !dbg !743, !tbaa !640
  br label %if.else27.i, !dbg !742

for.body81.i444:                                  ; preds = %if.else64.i433, %for.body81.i444
  %56 = phi i8 [ %57, %for.body81.i444 ], [ %53, %if.else64.i433 ]
  %ip.3146.i434 = phi i8* [ %incdec.ptr87.i440, %for.body81.i444 ], [ %arrayidx60.i426, %if.else64.i433 ]
  %val.2145.i435 = phi i32 [ %sub85.i439, %for.body81.i444 ], [ 0, %if.else64.i433 ]
  call void @llvm.dbg.value(metadata i8* %ip.3146.i434, metadata !684, metadata !DIExpression()) #15, !dbg !685
  call void @llvm.dbg.value(metadata i32 %val.2145.i435, metadata !683, metadata !DIExpression()) #15, !dbg !685
  %conv75.i436 = sext i8 %56 to i32, !dbg !744
  %mul82.i437 = mul nsw i32 %val.2145.i435, 10, !dbg !748
  %add84.i438 = add nsw i32 %conv75.i436, -48, !dbg !749
  %sub85.i439 = add i32 %add84.i438, %mul82.i437, !dbg !750
  call void @llvm.dbg.value(metadata i32 %sub85.i439, metadata !683, metadata !DIExpression()) #15, !dbg !685
  %incdec.ptr87.i440 = getelementptr inbounds i8, i8* %ip.3146.i434, i64 1, !dbg !751
  call void @llvm.dbg.value(metadata i8* %incdec.ptr87.i440, metadata !684, metadata !DIExpression()) #15, !dbg !685
  %57 = load i8, i8* %incdec.ptr87.i440, align 1, !dbg !744, !tbaa !528
  %idxprom76.i441 = sext i8 %57 to i64, !dbg !744
  %arrayidx77.i442 = getelementptr inbounds i16, i16* %38, i64 %idxprom76.i441, !dbg !744
  %58 = load i16, i16* %arrayidx77.i442, align 2, !dbg !744, !tbaa !691
  %59 = and i16 %58, 2048, !dbg !744
  %tobool80.not.i443 = icmp eq i16 %59, 0, !dbg !752
  br i1 %tobool80.not.i443, label %is_pattern.exit448, label %for.body81.i444, !dbg !752, !llvm.loop !753

is_pattern.exit448:                               ; preds = %for.body50.i423, %for.body81.i444
  %60 = phi i32 [ 1, %for.body81.i444 ], [ %sub.i394, %for.body50.i423 ]
  %storemerge468 = phi i32 [ %sub85.i439, %for.body81.i444 ], [ %sub54.i418, %for.body50.i423 ], !dbg !685
  %retval.0.i447.in.in = phi i8* [ %incdec.ptr87.i440, %for.body81.i444 ], [ %incdec.ptr56.i419, %for.body50.i423 ]
  store i32 %storemerge468, i32* %hi.i, align 4, !dbg !685, !tbaa !640
  %retval.0.i447.in = load i8, i8* %retval.0.i447.in.in, align 1, !dbg !685, !tbaa !528
  %tobool25.not.i = icmp eq i8 %retval.0.i447.in, 0, !dbg !755
  br i1 %tobool25.not.i, label %if.else27.i, label %if.then26.i, !dbg !756

if.then26.i:                                      ; preds = %if.else31.i412, %while.body.i, %is_pattern.exit448
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !577, metadata !DIExpression()) #15, !dbg !757
  call void @llvm.dbg.value(metadata i8* %call22187.i, metadata !582, metadata !DIExpression()) #15, !dbg !757
  call void @llvm.dbg.value(metadata i8* %call22187.i, metadata !586, metadata !DIExpression()) #15, !dbg !759
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !759
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !759
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !761, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call22187.i, metadata !592, metadata !DIExpression()) #15, !dbg !759
  br label %for.cond.i.i8.i, !dbg !762

for.cond.i.i8.i:                                  ; preds = %for.inc.i.i18.i, %if.then26.i
  %aep.0.i.i6.i = phi i8* [ %call22187.i, %if.then26.i ], [ %incdec.ptr12.i.i17.i, %for.inc.i.i18.i ], !dbg !763
  %rep.0.i.i7.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then26.i ], [ %rep.1.i.i16.i, %for.inc.i.i18.i ], !dbg !759
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i7.i, metadata !593, metadata !DIExpression()) #15, !dbg !759
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i6.i, metadata !592, metadata !DIExpression()) #15, !dbg !759
  %61 = load i8, i8* %aep.0.i.i6.i, align 1, !dbg !764, !tbaa !528
  switch i8 %61, label %if.else9.i.i15.i [
    i8 0, label %aexpr2rexpr.exit.i24.i
    i8 42, label %if.then.i.i11.i
    i8 63, label %if.then7.i.i13.i
  ], !dbg !765

if.then.i.i11.i:                                  ; preds = %for.cond.i.i8.i
  %incdec.ptr2.i.i9.i = getelementptr inbounds i8, i8* %rep.0.i.i7.i, i64 1, !dbg !766
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i9.i, metadata !593, metadata !DIExpression()) #15, !dbg !759
  store i8 46, i8* %rep.0.i.i7.i, align 1, !dbg !767, !tbaa !528
  %incdec.ptr3.i.i10.i = getelementptr inbounds i8, i8* %rep.0.i.i7.i, i64 2, !dbg !768
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i10.i, metadata !593, metadata !DIExpression()) #15, !dbg !759
  store i8 42, i8* %incdec.ptr2.i.i9.i, align 1, !dbg !769, !tbaa !528
  br label %for.inc.i.i18.i, !dbg !770

if.then7.i.i13.i:                                 ; preds = %for.cond.i.i8.i
  %incdec.ptr8.i.i12.i = getelementptr inbounds i8, i8* %rep.0.i.i7.i, i64 1, !dbg !771
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i12.i, metadata !593, metadata !DIExpression()) #15, !dbg !759
  store i8 46, i8* %rep.0.i.i7.i, align 1, !dbg !772, !tbaa !528
  br label %for.inc.i.i18.i, !dbg !773

if.else9.i.i15.i:                                 ; preds = %for.cond.i.i8.i
  %incdec.ptr10.i.i14.i = getelementptr inbounds i8, i8* %rep.0.i.i7.i, i64 1, !dbg !774
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i14.i, metadata !593, metadata !DIExpression()) #15, !dbg !759
  store i8 %61, i8* %rep.0.i.i7.i, align 1, !dbg !775, !tbaa !528
  br label %for.inc.i.i18.i

for.inc.i.i18.i:                                  ; preds = %if.else9.i.i15.i, %if.then7.i.i13.i, %if.then.i.i11.i
  %rep.1.i.i16.i = phi i8* [ %incdec.ptr3.i.i10.i, %if.then.i.i11.i ], [ %incdec.ptr8.i.i12.i, %if.then7.i.i13.i ], [ %incdec.ptr10.i.i14.i, %if.else9.i.i15.i ], !dbg !776
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i16.i, metadata !593, metadata !DIExpression()) #15, !dbg !759
  %incdec.ptr12.i.i17.i = getelementptr inbounds i8, i8* %aep.0.i.i6.i, i64 1, !dbg !777
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i17.i, metadata !592, metadata !DIExpression()) #15, !dbg !759
  br label %for.cond.i.i8.i, !dbg !778, !llvm.loop !779

aexpr2rexpr.exit.i24.i:                           ; preds = %for.cond.i.i8.i
  %incdec.ptr13.i.i19.i = getelementptr inbounds i8, i8* %rep.0.i.i7.i, i64 1, !dbg !781
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i19.i, metadata !593, metadata !DIExpression()) #15, !dbg !759
  store i8 36, i8* %rep.0.i.i7.i, align 1, !dbg !782, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i19.i, align 1, !dbg !783, !tbaa !528
  %call.i20.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !784
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !583, metadata !DIExpression()) #15, !dbg !757
  %sp.07.i22.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !785, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.07.i22.i, metadata !583, metadata !DIExpression()) #15, !dbg !757
  %tobool.not8.i23.i = icmp eq %struct.strand_t* %sp.07.i22.i, null, !dbg !786
  br i1 %tobool.not8.i23.i, label %if.end28.i, label %for.body.i35.i, !dbg !786

for.body.i35.i:                                   ; preds = %aexpr2rexpr.exit.i24.i, %for.body.i35.i
  %sp.09.i25.i = phi %struct.strand_t* [ %sp.0.i33.i, %for.body.i35.i ], [ %sp.07.i22.i, %aexpr2rexpr.exit.i24.i ]
  %s_strandname.i26.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i25.i, i64 0, i32 0, !dbg !787
  %62 = load i8*, i8** %s_strandname.i26.i, align 8, !dbg !787, !tbaa !632
  %call1.i27.i = tail call i32 @step(i8* noundef %62, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !788
  %tobool2.not.i28.i = icmp ne i32 %call1.i27.i, 0, !dbg !788
  %cond.i29.i = zext i1 %tobool2.not.i28.i to i32, !dbg !788
  %s_attr.i30.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i25.i, i64 0, i32 2, !dbg !789
  %63 = load i32, i32* %s_attr.i30.i, align 4, !dbg !790, !tbaa !290
  %or.i31.i = or i32 %63, %cond.i29.i, !dbg !790
  store i32 %or.i31.i, i32* %s_attr.i30.i, align 4, !dbg !790, !tbaa !290
  %s_next.i32.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.09.i25.i, i64 0, i32 4, !dbg !791
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !583, metadata !DIExpression()) #15, !dbg !757
  %sp.0.i33.i = load %struct.strand_t*, %struct.strand_t** %s_next.i32.i, align 8, !dbg !785, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i33.i, metadata !583, metadata !DIExpression()) #15, !dbg !757
  %tobool.not.i34.i = icmp eq %struct.strand_t* %sp.0.i33.i, null, !dbg !786
  br i1 %tobool.not.i34.i, label %if.end28.i, label %for.body.i35.i, !dbg !786, !llvm.loop !792

if.else27.i.thread:                               ; preds = %if.else59.i428, %if.end28.i407
  %.ph = phi i32 [ %sub.i394, %if.end28.i407 ], [ 1, %if.else59.i428 ]
  store i32 -1, i32* %hi.i, align 4, !dbg !685, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %66, metadata !535, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32 %65, metadata !536, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !642, metadata !DIExpression()) #15, !dbg !794
  call void @llvm.dbg.value(metadata i32 %66, metadata !647, metadata !DIExpression()) #15, !dbg !794
  call void @llvm.dbg.value(metadata i32 %65, metadata !648, metadata !DIExpression()) #15, !dbg !794
  %64 = load i32, i32* %m_nstrands.i.i, align 8, !tbaa !655
  br label %68, !dbg !794

if.else27.i:                                      ; preds = %if.else64.i433.if.else27.i_crit_edge, %if.then21.i401, %is_pattern.exit448
  %65 = phi i32 [ %.pre, %if.else64.i433.if.else27.i_crit_edge ], [ %sub.i394, %if.then21.i401 ], [ %storemerge468, %is_pattern.exit448 ], !dbg !743
  %66 = phi i32 [ 1, %if.else64.i433.if.else27.i_crit_edge ], [ %sub.i394, %if.then21.i401 ], [ %60, %is_pattern.exit448 ], !dbg !796
  call void @llvm.dbg.value(metadata i32 %66, metadata !535, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32 %65, metadata !536, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !642, metadata !DIExpression()) #15, !dbg !794
  call void @llvm.dbg.value(metadata i32 %66, metadata !647, metadata !DIExpression()) #15, !dbg !794
  call void @llvm.dbg.value(metadata i32 %65, metadata !648, metadata !DIExpression()) #15, !dbg !794
  %cmp.i37.i = icmp eq i32 %65, -1, !dbg !797
  %67 = load i32, i32* %m_nstrands.i.i, align 8, !tbaa !655
  br i1 %cmp.i37.i, label %68, label %71, !dbg !794

68:                                               ; preds = %if.else27.i.thread, %if.else27.i
  %69 = phi i32 [ %64, %if.else27.i.thread ], [ %67, %if.else27.i ]
  %70 = phi i32 [ %.ph, %if.else27.i.thread ], [ %66, %if.else27.i ]
  br label %71, !dbg !794

71:                                               ; preds = %if.else27.i, %68
  %72 = phi i32 [ %69, %68 ], [ %67, %if.else27.i ]
  %73 = phi i32 [ %70, %68 ], [ %66, %if.else27.i ]
  %74 = phi i32 [ %69, %68 ], [ %65, %if.else27.i ]
  call void @llvm.dbg.value(metadata i32 %74, metadata !648, metadata !DIExpression()) #15, !dbg !794
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !650, metadata !DIExpression()) #15, !dbg !794
  call void @llvm.dbg.value(metadata i32 1, metadata !649, metadata !DIExpression()) #15, !dbg !794
  %cmp2.not17.i40.i = icmp slt i32 %72, 1, !dbg !798
  br i1 %cmp2.not17.i40.i, label %if.end28.i, label %for.body.i49.i, !dbg !799

for.body.i49.i:                                   ; preds = %71, %for.inc.i56.i
  %sp.019.in.i43.i = phi %struct.strand_t** [ %s_next.i54.i, %for.inc.i56.i ], [ %m_strands.i, %71 ]
  %m.018.i44.i = phi i32 [ %inc.i53.i, %for.inc.i56.i ], [ 1, %71 ]
  %sp.019.i45.i = load %struct.strand_t*, %struct.strand_t** %sp.019.in.i43.i, align 8, !dbg !800, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %m.018.i44.i, metadata !649, metadata !DIExpression()) #15, !dbg !794
  %cmp3.not.i46.i = icmp slt i32 %m.018.i44.i, %73, !dbg !801
  %cmp4.not.i47.i = icmp sgt i32 %m.018.i44.i, %74
  %or.cond.i48.i = select i1 %cmp3.not.i46.i, i1 true, i1 %cmp4.not.i47.i, !dbg !802
  br i1 %or.cond.i48.i, label %for.inc.i56.i, label %if.then5.i52.i, !dbg !802

if.then5.i52.i:                                   ; preds = %for.body.i49.i
  %s_attr.i50.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i45.i, i64 0, i32 2, !dbg !803
  %75 = load i32, i32* %s_attr.i50.i, align 4, !dbg !804, !tbaa !290
  %or.i51.i = or i32 %75, 1, !dbg !804
  store i32 %or.i51.i, i32* %s_attr.i50.i, align 4, !dbg !804, !tbaa !290
  br label %for.inc.i56.i, !dbg !805

for.inc.i56.i:                                    ; preds = %if.then5.i52.i, %for.body.i49.i
  %inc.i53.i = add nuw i32 %m.018.i44.i, 1, !dbg !806
  call void @llvm.dbg.value(metadata i32 %inc.i53.i, metadata !649, metadata !DIExpression()) #15, !dbg !794
  %s_next.i54.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i45.i, i64 0, i32 4, !dbg !807
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !650, metadata !DIExpression()) #15, !dbg !794
  %exitcond.not.i55.i = icmp eq i32 %m.018.i44.i, %72, !dbg !798
  br i1 %exitcond.not.i55.i, label %if.end28.i, label %for.body.i49.i, !dbg !799, !llvm.loop !808

if.end28.i:                                       ; preds = %for.body.i35.i, %for.inc.i56.i, %71, %aexpr2rexpr.exit.i24.i
  %call22.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !673
  call void @llvm.dbg.value(metadata i8* %call22.i, metadata !534, metadata !DIExpression()) #15, !dbg !537
  %tobool23.not.i = icmp eq i8* %call22.i, null, !dbg !674
  br i1 %tobool23.not.i, label %if.end30.i, label %while.body.i, !dbg !674, !llvm.loop !810

if.else29.i:                                      ; preds = %if.end13.i
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !642, metadata !DIExpression()) #15, !dbg !812
  call void @llvm.dbg.value(metadata i32 1, metadata !647, metadata !DIExpression()) #15, !dbg !812
  call void @llvm.dbg.value(metadata i32 -1, metadata !648, metadata !DIExpression()) #15, !dbg !812
  %76 = load i32, i32* %m_nstrands.i.i, align 8, !tbaa !655
  call void @llvm.dbg.value(metadata i32 %76, metadata !648, metadata !DIExpression()) #15, !dbg !812
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !650, metadata !DIExpression()) #15, !dbg !812
  call void @llvm.dbg.value(metadata i32 1, metadata !649, metadata !DIExpression()) #15, !dbg !812
  %cmp2.not17.i59.i = icmp slt i32 %76, 1, !dbg !814
  br i1 %cmp2.not17.i59.i, label %if.end30.i, label %for.body.i68.i, !dbg !815

for.body.i68.i:                                   ; preds = %if.else29.i, %for.inc.i75.i
  %sp.019.in.i62.i = phi %struct.strand_t** [ %s_next.i73.i, %for.inc.i75.i ], [ %m_strands.i, %if.else29.i ]
  %m.018.i63.i = phi i32 [ %inc.i72.i, %for.inc.i75.i ], [ 1, %if.else29.i ]
  %sp.019.i64.i = load %struct.strand_t*, %struct.strand_t** %sp.019.in.i62.i, align 8, !dbg !816, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %m.018.i63.i, metadata !649, metadata !DIExpression()) #15, !dbg !812
  %cmp4.not.i66.i = icmp sgt i32 %m.018.i63.i, %76
  br i1 %cmp4.not.i66.i, label %for.inc.i75.i, label %if.then5.i71.i, !dbg !817

if.then5.i71.i:                                   ; preds = %for.body.i68.i
  %s_attr.i69.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i64.i, i64 0, i32 2, !dbg !818
  %77 = load i32, i32* %s_attr.i69.i, align 4, !dbg !819, !tbaa !290
  %or.i70.i = or i32 %77, 1, !dbg !819
  store i32 %or.i70.i, i32* %s_attr.i69.i, align 4, !dbg !819, !tbaa !290
  br label %for.inc.i75.i, !dbg !820

for.inc.i75.i:                                    ; preds = %if.then5.i71.i, %for.body.i68.i
  %inc.i72.i = add nuw i32 %m.018.i63.i, 1, !dbg !821
  call void @llvm.dbg.value(metadata i32 %inc.i72.i, metadata !649, metadata !DIExpression()) #15, !dbg !812
  %s_next.i73.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.019.i64.i, i64 0, i32 4, !dbg !822
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !650, metadata !DIExpression()) #15, !dbg !812
  %exitcond.not.i74.i = icmp eq i32 %m.018.i63.i, %76, !dbg !814
  br i1 %exitcond.not.i74.i, label %if.end30.i, label %for.body.i68.i, !dbg !815, !llvm.loop !823

if.end30.i:                                       ; preds = %if.end28.i, %for.inc.i75.i, %if.else29.i, %if.end21.i
  %78 = load i8*, i8** @rpart, align 8, !dbg !825, !tbaa !281
  %tobool31.not.i = icmp eq i8* %78, null, !dbg !825
  br i1 %tobool31.not.i, label %if.else49.i, label %if.then32.i, !dbg !827

if.then32.i:                                      ; preds = %if.end30.i
  %call33.i = tail call i8* @strtok(i8* noundef nonnull %78, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !828
  call void @llvm.dbg.value(metadata i8* %call33.i, metadata !534, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !535, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !536, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  %call34.i = call fastcc i32 @is_pattern(i8* noundef %call33.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !830
  %tobool35.not.i = icmp eq i32 %call34.i, 0, !dbg !830
  br i1 %tobool35.not.i, label %if.else37.i, label %if.then36.i, !dbg !832

if.then36.i:                                      ; preds = %if.then32.i
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !833, metadata !DIExpression()) #15, !dbg !840
  call void @llvm.dbg.value(metadata i8* %call33.i, metadata !836, metadata !DIExpression()) #15, !dbg !840
  call void @llvm.dbg.value(metadata i8* %call33.i, metadata !586, metadata !DIExpression()) #15, !dbg !842
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !842
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !842
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !844, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call33.i, metadata !592, metadata !DIExpression()) #15, !dbg !842
  br label %for.cond.i.i339, !dbg !845

for.cond.i.i339:                                  ; preds = %for.inc.i.i349, %if.then36.i
  %aep.0.i.i337 = phi i8* [ %call33.i, %if.then36.i ], [ %incdec.ptr12.i.i348, %for.inc.i.i349 ], !dbg !846
  %rep.0.i.i338 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then36.i ], [ %rep.1.i.i347, %for.inc.i.i349 ], !dbg !842
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i338, metadata !593, metadata !DIExpression()) #15, !dbg !842
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i337, metadata !592, metadata !DIExpression()) #15, !dbg !842
  %79 = load i8, i8* %aep.0.i.i337, align 1, !dbg !847, !tbaa !528
  switch i8 %79, label %if.else9.i.i346 [
    i8 0, label %aexpr2rexpr.exit.i355
    i8 42, label %if.then.i.i342
    i8 63, label %if.then7.i.i344
  ], !dbg !848

if.then.i.i342:                                   ; preds = %for.cond.i.i339
  %incdec.ptr2.i.i340 = getelementptr inbounds i8, i8* %rep.0.i.i338, i64 1, !dbg !849
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i340, metadata !593, metadata !DIExpression()) #15, !dbg !842
  store i8 46, i8* %rep.0.i.i338, align 1, !dbg !850, !tbaa !528
  %incdec.ptr3.i.i341 = getelementptr inbounds i8, i8* %rep.0.i.i338, i64 2, !dbg !851
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i341, metadata !593, metadata !DIExpression()) #15, !dbg !842
  store i8 42, i8* %incdec.ptr2.i.i340, align 1, !dbg !852, !tbaa !528
  br label %for.inc.i.i349, !dbg !853

if.then7.i.i344:                                  ; preds = %for.cond.i.i339
  %incdec.ptr8.i.i343 = getelementptr inbounds i8, i8* %rep.0.i.i338, i64 1, !dbg !854
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i343, metadata !593, metadata !DIExpression()) #15, !dbg !842
  store i8 46, i8* %rep.0.i.i338, align 1, !dbg !855, !tbaa !528
  br label %for.inc.i.i349, !dbg !856

if.else9.i.i346:                                  ; preds = %for.cond.i.i339
  %incdec.ptr10.i.i345 = getelementptr inbounds i8, i8* %rep.0.i.i338, i64 1, !dbg !857
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i345, metadata !593, metadata !DIExpression()) #15, !dbg !842
  store i8 %79, i8* %rep.0.i.i338, align 1, !dbg !858, !tbaa !528
  br label %for.inc.i.i349

for.inc.i.i349:                                   ; preds = %if.else9.i.i346, %if.then7.i.i344, %if.then.i.i342
  %rep.1.i.i347 = phi i8* [ %incdec.ptr3.i.i341, %if.then.i.i342 ], [ %incdec.ptr8.i.i343, %if.then7.i.i344 ], [ %incdec.ptr10.i.i345, %if.else9.i.i346 ], !dbg !859
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i347, metadata !593, metadata !DIExpression()) #15, !dbg !842
  %incdec.ptr12.i.i348 = getelementptr inbounds i8, i8* %aep.0.i.i337, i64 1, !dbg !860
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i348, metadata !592, metadata !DIExpression()) #15, !dbg !842
  br label %for.cond.i.i339, !dbg !861, !llvm.loop !862

aexpr2rexpr.exit.i355:                            ; preds = %for.cond.i.i339
  %incdec.ptr13.i.i350 = getelementptr inbounds i8, i8* %rep.0.i.i338, i64 1, !dbg !864
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i350, metadata !593, metadata !DIExpression()) #15, !dbg !842
  store i8 36, i8* %rep.0.i.i338, align 1, !dbg !865, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i350, align 1, !dbg !866, !tbaa !528
  %call.i351 = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !867
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !838, metadata !DIExpression()) #15, !dbg !840
  %sp.020.i353 = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !868, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.020.i353, metadata !838, metadata !DIExpression()) #15, !dbg !840
  %tobool.not21.i354 = icmp eq %struct.strand_t* %sp.020.i353, null, !dbg !870
  br i1 %tobool.not21.i354, label %if.end38.i, label %for.body.i360, !dbg !870

for.body.i360:                                    ; preds = %aexpr2rexpr.exit.i355, %for.inc6.i379
  %sp.022.i356 = phi %struct.strand_t* [ %sp.0.i377, %for.inc6.i379 ], [ %sp.020.i353, %aexpr2rexpr.exit.i355 ]
  %s_attr.i357 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i356, i64 0, i32 2, !dbg !871
  %80 = load i32, i32* %s_attr.i357, align 4, !dbg !871, !tbaa !290
  %and.i358 = and i32 %80, 1, !dbg !875
  %tobool1.not.i359 = icmp eq i32 %and.i358, 0, !dbg !875
  br i1 %tobool1.not.i359, label %for.inc6.i379, label %for.cond2.preheader.i364, !dbg !876

for.cond2.preheader.i364:                         ; preds = %for.body.i360
  %s_nresidues.i361 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i356, i64 0, i32 5
  %s_residues.i362 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i356, i64 0, i32 7
  call void @llvm.dbg.value(metadata i32 0, metadata !837, metadata !DIExpression()) #15, !dbg !840
  %81 = load i32, i32* %s_nresidues.i361, align 8, !dbg !877, !tbaa !295
  %cmp18.i363 = icmp sgt i32 %81, 0, !dbg !881
  br i1 %cmp18.i363, label %for.body3.i375, label %for.inc6.i379, !dbg !882

for.body3.i375:                                   ; preds = %for.cond2.preheader.i364, %for.body3.i375
  %indvars.iv.i365 = phi i64 [ %indvars.iv.next.i373, %for.body3.i375 ], [ 0, %for.cond2.preheader.i364 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i365, metadata !837, metadata !DIExpression()) #15, !dbg !840
  %82 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i362, align 8, !dbg !883, !tbaa !301
  %arrayidx.i366 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %82, i64 %indvars.iv.i365, !dbg !885
  %83 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i366, align 8, !dbg !885, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %83, metadata !839, metadata !DIExpression()) #15, !dbg !840
  %r_resname.i367 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i64 0, i32 4, !dbg !886
  %84 = load i8*, i8** %r_resname.i367, align 8, !dbg !886, !tbaa !887
  %call4.i368 = tail call i32 @step(i8* noundef %84, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !888
  %tobool5.not.i369 = icmp ne i32 %call4.i368, 0, !dbg !888
  %cond.i370 = zext i1 %tobool5.not.i369 to i32, !dbg !888
  %r_attr.i371 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i64 0, i32 6, !dbg !889
  %85 = load i32, i32* %r_attr.i371, align 8, !dbg !890, !tbaa !306
  %or.i372 = or i32 %85, %cond.i370, !dbg !890
  store i32 %or.i372, i32* %r_attr.i371, align 8, !dbg !890, !tbaa !306
  %indvars.iv.next.i373 = add nuw nsw i64 %indvars.iv.i365, 1, !dbg !891
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i373, metadata !837, metadata !DIExpression()) #15, !dbg !840
  %86 = load i32, i32* %s_nresidues.i361, align 8, !dbg !877, !tbaa !295
  %87 = sext i32 %86 to i64, !dbg !881
  %cmp.i374 = icmp slt i64 %indvars.iv.next.i373, %87, !dbg !881
  br i1 %cmp.i374, label %for.body3.i375, label %for.inc6.i379, !dbg !882, !llvm.loop !892

for.inc6.i379:                                    ; preds = %for.body3.i375, %for.cond2.preheader.i364, %for.body.i360
  %s_next.i376 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i356, i64 0, i32 4, !dbg !894
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !838, metadata !DIExpression()) #15, !dbg !840
  %sp.0.i377 = load %struct.strand_t*, %struct.strand_t** %s_next.i376, align 8, !dbg !868, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i377, metadata !838, metadata !DIExpression()) #15, !dbg !840
  %tobool.not.i378 = icmp eq %struct.strand_t* %sp.0.i377, null, !dbg !870
  br i1 %tobool.not.i378, label %if.end38.i, label %for.body.i360, !dbg !870, !llvm.loop !895

if.else37.i:                                      ; preds = %if.then32.i
  %88 = load i32, i32* %lo.i, align 4, !dbg !897, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %88, metadata !535, metadata !DIExpression()) #15, !dbg !537
  %89 = load i32, i32* %hi.i, align 4, !dbg !898, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %89, metadata !536, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !899, metadata !DIExpression()) #15, !dbg !908
  call void @llvm.dbg.value(metadata i32 %88, metadata !902, metadata !DIExpression()) #15, !dbg !908
  call void @llvm.dbg.value(metadata i32 %89, metadata !903, metadata !DIExpression()) #15, !dbg !908
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !906, metadata !DIExpression()) #15, !dbg !908
  %sp.029.i.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !910, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.029.i.i, metadata !906, metadata !DIExpression()) #15, !dbg !908
  %tobool.not30.i.i = icmp eq %struct.strand_t* %sp.029.i.i, null, !dbg !912
  br i1 %tobool.not30.i.i, label %if.end38.i, label %for.body.lr.ph.i.i, !dbg !912

for.body.lr.ph.i.i:                               ; preds = %if.else37.i
  %cmp.i78.i = icmp eq i32 %89, -1
  br i1 %cmp.i78.i, label %for.body.us.preheader.i.i, label %for.body.preheader.i79.i, !dbg !913

for.body.preheader.i79.i:                         ; preds = %for.body.lr.ph.i.i
  %90 = sext i32 %89 to i64, !dbg !912
  %91 = sext i32 %88 to i64, !dbg !912
  br label %for.body.i81.i, !dbg !912

for.body.us.preheader.i.i:                        ; preds = %for.body.lr.ph.i.i
  %92 = sext i32 %88 to i64, !dbg !912
  br label %for.body.us.i.i, !dbg !912

for.body.us.i.i:                                  ; preds = %for.inc11.us.i.i, %for.body.us.preheader.i.i
  %sp.031.us.i.i = phi %struct.strand_t* [ %sp.0.us.i.i, %for.inc11.us.i.i ], [ %sp.029.i.i, %for.body.us.preheader.i.i ]
  %s_attr.us.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i.i, i64 0, i32 2, !dbg !918
  %93 = load i32, i32* %s_attr.us.i.i, align 4, !dbg !918, !tbaa !290
  %and.us.i.i = and i32 %93, 1, !dbg !919
  %tobool1.not.us.i.i = icmp eq i32 %and.us.i.i, 0, !dbg !919
  br i1 %tobool1.not.us.i.i, label %for.inc11.us.i.i, label %if.then.us.i.i, !dbg !920

if.then.us.i.i:                                   ; preds = %for.body.us.i.i
  %s_nresidues.us.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i.i, i64 0, i32 5, !dbg !921
  %94 = load i32, i32* %s_nresidues.us.i.i, align 8, !dbg !921, !tbaa !295
  call void @llvm.dbg.value(metadata i32 undef, metadata !905, metadata !DIExpression()) #15, !dbg !908
  call void @llvm.dbg.value(metadata i32 0, metadata !904, metadata !DIExpression()) #15, !dbg !908
  %s_residues.us.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i.i, i64 0, i32 7
  %cmp427.us.i.i = icmp sgt i32 %94, 0, !dbg !922
  br i1 %cmp427.us.i.i, label %for.body5.us.preheader.i.i, label %for.inc11.us.i.i, !dbg !925

for.body5.us.preheader.i.i:                       ; preds = %if.then.us.i.i
  %wide.trip.count37.i.i = zext i32 %94 to i64, !dbg !922
  br label %for.body5.us.i.i, !dbg !925

for.body5.us.i.i:                                 ; preds = %for.inc.us.i.i, %for.body5.us.preheader.i.i
  %indvars.iv34.i.i = phi i64 [ 0, %for.body5.us.preheader.i.i ], [ %indvars.iv.next35.i.i, %for.inc.us.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv34.i.i, metadata !904, metadata !DIExpression()) #15, !dbg !908
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !907, metadata !DIExpression()) #15, !dbg !908
  %indvars.iv.next35.i.i = add nuw nsw i64 %indvars.iv34.i.i, 1, !dbg !926
  %cmp6.not.us.not.i.i = icmp slt i64 %indvars.iv.next35.i.i, %92, !dbg !929
  br i1 %cmp6.not.us.not.i.i, label %for.inc.us.i.i, label %if.then9.us.i.i, !dbg !930

if.then9.us.i.i:                                  ; preds = %for.body5.us.i.i
  %95 = load %struct.residue_t**, %struct.residue_t*** %s_residues.us.i.i, align 8, !dbg !931, !tbaa !301
  %arrayidx.us.i.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %95, i64 %indvars.iv34.i.i, !dbg !932
  %96 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i.i, align 8, !dbg !932, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %96, metadata !907, metadata !DIExpression()) #15, !dbg !908
  %r_attr.us.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %96, i64 0, i32 6, !dbg !933
  %97 = load i32, i32* %r_attr.us.i.i, align 8, !dbg !934, !tbaa !306
  %or.us.i.i = or i32 %97, 1, !dbg !934
  store i32 %or.us.i.i, i32* %r_attr.us.i.i, align 8, !dbg !934, !tbaa !306
  br label %for.inc.us.i.i, !dbg !935

for.inc.us.i.i:                                   ; preds = %if.then9.us.i.i, %for.body5.us.i.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i.i, metadata !904, metadata !DIExpression()) #15, !dbg !908
  %exitcond38.not.i.i = icmp eq i64 %indvars.iv.next35.i.i, %wide.trip.count37.i.i, !dbg !922
  br i1 %exitcond38.not.i.i, label %for.inc11.us.i.i, label %for.body5.us.i.i, !dbg !925, !llvm.loop !936

for.inc11.us.i.i:                                 ; preds = %for.inc.us.i.i, %if.then.us.i.i, %for.body.us.i.i
  %s_next.us.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i.i, i64 0, i32 4, !dbg !938
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !906, metadata !DIExpression()) #15, !dbg !908
  %sp.0.us.i.i = load %struct.strand_t*, %struct.strand_t** %s_next.us.i.i, align 8, !dbg !910, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.us.i.i, metadata !906, metadata !DIExpression()) #15, !dbg !908
  %tobool.not.us.i.i = icmp eq %struct.strand_t* %sp.0.us.i.i, null, !dbg !912
  br i1 %tobool.not.us.i.i, label %if.end38.i, label %for.body.us.i.i, !dbg !912, !llvm.loop !939

for.body.i81.i:                                   ; preds = %for.inc11.i.i, %for.body.preheader.i79.i
  %sp.031.i.i = phi %struct.strand_t* [ %sp.0.i87.i, %for.inc11.i.i ], [ %sp.029.i.i, %for.body.preheader.i79.i ]
  %s_attr.i80.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i.i, i64 0, i32 2, !dbg !918
  %98 = load i32, i32* %s_attr.i80.i, align 4, !dbg !918, !tbaa !290
  %and.i.i = and i32 %98, 1, !dbg !919
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !919
  br i1 %tobool1.not.i.i, label %for.inc11.i.i, label %if.then.i.i, !dbg !920

if.then.i.i:                                      ; preds = %for.body.i81.i
  call void @llvm.dbg.value(metadata i32 %89, metadata !905, metadata !DIExpression()) #15, !dbg !908
  call void @llvm.dbg.value(metadata i32 0, metadata !904, metadata !DIExpression()) #15, !dbg !908
  %s_nresidues3.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i.i, i64 0, i32 5
  %99 = load i32, i32* %s_nresidues3.i.i, align 8, !tbaa !295
  %s_residues.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i.i, i64 0, i32 7
  %cmp427.i.i = icmp sgt i32 %99, 0, !dbg !922
  br i1 %cmp427.i.i, label %for.body5.preheader.i.i, label %for.inc11.i.i, !dbg !925

for.body5.preheader.i.i:                          ; preds = %if.then.i.i
  %wide.trip.count.i.i = zext i32 %99 to i64, !dbg !922
  br label %for.body5.i.i, !dbg !925

for.body5.i.i:                                    ; preds = %for.inc.i85.i, %for.body5.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body5.preheader.i.i ], [ %indvars.iv.next.i.i, %for.inc.i85.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !904, metadata !DIExpression()) #15, !dbg !908
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !907, metadata !DIExpression()) #15, !dbg !908
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !926
  %cmp6.not.i.i = icmp sge i64 %indvars.iv.next.i.i, %91, !dbg !929
  %cmp8.not.not.i.i = icmp slt i64 %indvars.iv.i.i, %90
  %or.cond.i82.i = and i1 %cmp8.not.not.i.i, %cmp6.not.i.i, !dbg !930
  br i1 %or.cond.i82.i, label %if.then9.i.i, label %for.inc.i85.i, !dbg !930

if.then9.i.i:                                     ; preds = %for.body5.i.i
  %100 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i.i, align 8, !dbg !931, !tbaa !301
  %arrayidx.i.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %100, i64 %indvars.iv.i.i, !dbg !932
  %101 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i.i, align 8, !dbg !932, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %101, metadata !907, metadata !DIExpression()) #15, !dbg !908
  %r_attr.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %101, i64 0, i32 6, !dbg !933
  %102 = load i32, i32* %r_attr.i.i, align 8, !dbg !934, !tbaa !306
  %or.i83.i = or i32 %102, 1, !dbg !934
  store i32 %or.i83.i, i32* %r_attr.i.i, align 8, !dbg !934, !tbaa !306
  br label %for.inc.i85.i, !dbg !935

for.inc.i85.i:                                    ; preds = %if.then9.i.i, %for.body5.i.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !904, metadata !DIExpression()) #15, !dbg !908
  %exitcond.not.i84.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !922
  br i1 %exitcond.not.i84.i, label %for.inc11.i.i, label %for.body5.i.i, !dbg !925, !llvm.loop !941

for.inc11.i.i:                                    ; preds = %for.inc.i85.i, %if.then.i.i, %for.body.i81.i
  %s_next.i86.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i.i, i64 0, i32 4, !dbg !938
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !906, metadata !DIExpression()) #15, !dbg !908
  %sp.0.i87.i = load %struct.strand_t*, %struct.strand_t** %s_next.i86.i, align 8, !dbg !910, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i87.i, metadata !906, metadata !DIExpression()) #15, !dbg !908
  %tobool.not.i88.i = icmp eq %struct.strand_t* %sp.0.i87.i, null, !dbg !912
  br i1 %tobool.not.i88.i, label %if.end38.i, label %for.body.i81.i, !dbg !912, !llvm.loop !942

if.end38.i:                                       ; preds = %for.inc6.i379, %for.inc11.i.i, %for.inc11.us.i.i, %aexpr2rexpr.exit.i355, %if.else37.i
  %call40188.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !943
  call void @llvm.dbg.value(metadata i8* %call40188.i, metadata !534, metadata !DIExpression()) #15, !dbg !537
  %tobool41.not189.i = icmp eq i8* %call40188.i, null, !dbg !944
  br i1 %tobool41.not189.i, label %if.end50.i, label %while.body42.i.preheader, !dbg !944

while.body42.i.preheader:                         ; preds = %if.end38.i
  %call.i269 = tail call i16** @__ctype_b_loc() #16, !dbg !378
  br label %while.body42.i, !dbg !944

while.body42.i:                                   ; preds = %while.body42.i.preheader, %if.end47.i
  %call40190.i = phi i8* [ %call40.i, %if.end47.i ], [ %call40188.i, %while.body42.i.preheader ]
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !535, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !536, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  call void @llvm.dbg.value(metadata i8* %call40190.i, metadata !675, metadata !DIExpression()) #15, !dbg !945
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !681, metadata !DIExpression()) #15, !dbg !945
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !682, metadata !DIExpression()) #15, !dbg !945
  %103 = load i16*, i16** %call.i269, align 8, !dbg !949, !tbaa !281
  %104 = load i8, i8* %call40190.i, align 1, !dbg !949, !tbaa !528
  %idxprom.i270 = sext i8 %104 to i64, !dbg !949
  %arrayidx.i271 = getelementptr inbounds i16, i16* %103, i64 %idxprom.i270, !dbg !949
  %105 = load i16, i16* %arrayidx.i271, align 2, !dbg !949, !tbaa !691
  %106 = and i16 %105, 2048, !dbg !949
  %tobool.not.i272 = icmp ne i16 %106, 0, !dbg !949
  %cmp.not.i273 = icmp eq i8 %104, 45
  %or.cond.i274 = select i1 %tobool.not.i272, i1 true, i1 %cmp.not.i273, !dbg !950
  br i1 %or.cond.i274, label %if.end.i276, label %if.then45.i, !dbg !950

if.end.i276:                                      ; preds = %while.body42.i
  %tobool10.not.i275 = icmp eq i16 %106, 0, !dbg !951
  br i1 %tobool10.not.i275, label %if.else59.i316, label %for.body.i287, !dbg !952

for.body.i287:                                    ; preds = %if.end.i276, %for.body.i287
  %107 = phi i8 [ %108, %for.body.i287 ], [ %104, %if.end.i276 ]
  %ip.0133.i277 = phi i8* [ %incdec.ptr.i283, %for.body.i287 ], [ %call40190.i, %if.end.i276 ]
  %val.0132.i278 = phi i32 [ %sub.i282, %for.body.i287 ], [ 0, %if.end.i276 ]
  call void @llvm.dbg.value(metadata i8* %ip.0133.i277, metadata !684, metadata !DIExpression()) #15, !dbg !945
  call void @llvm.dbg.value(metadata i32 %val.0132.i278, metadata !683, metadata !DIExpression()) #15, !dbg !945
  %conv13.i279 = sext i8 %107 to i32, !dbg !953
  %mul.i280 = mul nsw i32 %val.0132.i278, 10, !dbg !954
  %add.i281 = add nsw i32 %conv13.i279, -48, !dbg !955
  %sub.i282 = add i32 %add.i281, %mul.i280, !dbg !956
  call void @llvm.dbg.value(metadata i32 %sub.i282, metadata !683, metadata !DIExpression()) #15, !dbg !945
  %incdec.ptr.i283 = getelementptr inbounds i8, i8* %ip.0133.i277, i64 1, !dbg !957
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i283, metadata !684, metadata !DIExpression()) #15, !dbg !945
  %108 = load i8, i8* %incdec.ptr.i283, align 1, !dbg !953, !tbaa !528
  %idxprom14.i284 = sext i8 %108 to i64, !dbg !953
  %arrayidx15.i285 = getelementptr inbounds i16, i16* %103, i64 %idxprom14.i284, !dbg !953
  %109 = load i16, i16* %arrayidx15.i285, align 2, !dbg !953, !tbaa !691
  %110 = and i16 %109, 2048, !dbg !953
  %tobool18.not.i286 = icmp eq i16 %110, 0, !dbg !958
  br i1 %tobool18.not.i286, label %for.end.i288, label %for.body.i287, !dbg !958, !llvm.loop !959

for.end.i288:                                     ; preds = %for.body.i287
  store i32 %sub.i282, i32* %lo.i, align 4, !dbg !961, !tbaa !640
  switch i8 %108, label %if.end28.i295 [
    i8 0, label %if.then21.i289
    i8 45, label %if.then25.i292
  ], !dbg !962

if.then21.i289:                                   ; preds = %for.end.i288
  store i32 %sub.i282, i32* %hi.i, align 4, !dbg !963, !tbaa !640
  br label %if.else46.i, !dbg !964

if.then25.i292:                                   ; preds = %for.end.i288
  %incdec.ptr26.i290 = getelementptr inbounds i8, i8* %ip.0133.i277, i64 2, !dbg !965
  call void @llvm.dbg.value(metadata i8* %incdec.ptr26.i290, metadata !684, metadata !DIExpression()) #15, !dbg !945
  %.pr.i291 = load i8, i8* %incdec.ptr26.i290, align 1, !dbg !966, !tbaa !528
  br label %if.end28.i295, !dbg !967

if.end28.i295:                                    ; preds = %if.then25.i292, %for.end.i288
  %111 = phi i8 [ %108, %for.end.i288 ], [ %.pr.i291, %if.then25.i292 ], !dbg !966
  %ip.1.i293 = phi i8* [ %incdec.ptr.i283, %for.end.i288 ], [ %incdec.ptr26.i290, %if.then25.i292 ], !dbg !968
  call void @llvm.dbg.value(metadata i8* %ip.1.i293, metadata !684, metadata !DIExpression()) #15, !dbg !945
  %tobool29.not.i294 = icmp eq i8 %111, 0, !dbg !966
  br i1 %tobool29.not.i294, label %if.then30.i296, label %if.else31.i300, !dbg !969

if.then30.i296:                                   ; preds = %if.end28.i295
  store i32 -1, i32* %hi.i, align 4, !dbg !970, !tbaa !640
  br label %if.else46.i, !dbg !972

if.else31.i300:                                   ; preds = %if.end28.i295
  %idxprom34.i297 = sext i8 %111 to i64, !dbg !973
  %arrayidx35.i298 = getelementptr inbounds i16, i16* %103, i64 %idxprom34.i297, !dbg !973
  %112 = load i16, i16* %arrayidx35.i298, align 2, !dbg !973, !tbaa !691
  %113 = and i16 %112, 2048, !dbg !973
  %tobool38.not.i299 = icmp eq i16 %113, 0, !dbg !973
  br i1 %tobool38.not.i299, label %if.then45.i, label %for.body50.i311, !dbg !974

for.body50.i311:                                  ; preds = %if.else31.i300, %for.body50.i311
  %114 = phi i8 [ %115, %for.body50.i311 ], [ %111, %if.else31.i300 ]
  %ip.2139.i301 = phi i8* [ %incdec.ptr56.i307, %for.body50.i311 ], [ %ip.1.i293, %if.else31.i300 ]
  %val.1138.i302 = phi i32 [ %sub54.i306, %for.body50.i311 ], [ 0, %if.else31.i300 ]
  call void @llvm.dbg.value(metadata i8* %ip.2139.i301, metadata !684, metadata !DIExpression()) #15, !dbg !945
  call void @llvm.dbg.value(metadata i32 %val.1138.i302, metadata !683, metadata !DIExpression()) #15, !dbg !945
  %conv44.i303 = sext i8 %114 to i32, !dbg !975
  %mul51.i304 = mul nsw i32 %val.1138.i302, 10, !dbg !976
  %add53.i305 = add nsw i32 %conv44.i303, -48, !dbg !977
  %sub54.i306 = add i32 %add53.i305, %mul51.i304, !dbg !978
  call void @llvm.dbg.value(metadata i32 %sub54.i306, metadata !683, metadata !DIExpression()) #15, !dbg !945
  %incdec.ptr56.i307 = getelementptr inbounds i8, i8* %ip.2139.i301, i64 1, !dbg !979
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56.i307, metadata !684, metadata !DIExpression()) #15, !dbg !945
  %115 = load i8, i8* %incdec.ptr56.i307, align 1, !dbg !975, !tbaa !528
  %idxprom45.i308 = sext i8 %115 to i64, !dbg !975
  %arrayidx46.i309 = getelementptr inbounds i16, i16* %103, i64 %idxprom45.i308, !dbg !975
  %116 = load i16, i16* %arrayidx46.i309, align 2, !dbg !975, !tbaa !691
  %117 = and i16 %116, 2048, !dbg !975
  %tobool49.not.i310 = icmp eq i16 %117, 0, !dbg !980
  br i1 %tobool49.not.i310, label %is_pattern.exit336, label %for.body50.i311, !dbg !980, !llvm.loop !981

if.else59.i316:                                   ; preds = %if.end.i276
  store i32 1, i32* %lo.i, align 4, !dbg !983, !tbaa !640
  %arrayidx60.i314 = getelementptr inbounds i8, i8* %call40190.i, i64 1, !dbg !984
  call void @llvm.dbg.value(metadata i8* %arrayidx60.i314, metadata !684, metadata !DIExpression()) #15, !dbg !945
  %118 = load i8, i8* %arrayidx60.i314, align 1, !dbg !985, !tbaa !528
  %tobool62.not.i315 = icmp eq i8 %118, 0, !dbg !985
  br i1 %tobool62.not.i315, label %if.then63.i317, label %if.else64.i321, !dbg !986

if.then63.i317:                                   ; preds = %if.else59.i316
  store i32 -1, i32* %hi.i, align 4, !dbg !987, !tbaa !640
  br label %if.else46.i, !dbg !989

if.else64.i321:                                   ; preds = %if.else59.i316
  %idxprom67.i318 = sext i8 %118 to i64, !dbg !990
  %arrayidx68.i319 = getelementptr inbounds i16, i16* %103, i64 %idxprom67.i318, !dbg !990
  %119 = load i16, i16* %arrayidx68.i319, align 2, !dbg !990, !tbaa !691
  %120 = and i16 %119, 2048, !dbg !990
  %tobool71.not.i320 = icmp eq i16 %120, 0, !dbg !990
  br i1 %tobool71.not.i320, label %if.else64.i321.if.else46.ithread-pre-split_crit_edge, label %for.body81.i332, !dbg !991

if.else64.i321.if.else46.ithread-pre-split_crit_edge: ; preds = %if.else64.i321
  %.pr.pre = load i32, i32* %hi.i, align 4, !dbg !992, !tbaa !640
  br label %if.else46.i, !dbg !991

for.body81.i332:                                  ; preds = %if.else64.i321, %for.body81.i332
  %121 = phi i8 [ %122, %for.body81.i332 ], [ %118, %if.else64.i321 ]
  %ip.3146.i322 = phi i8* [ %incdec.ptr87.i328, %for.body81.i332 ], [ %arrayidx60.i314, %if.else64.i321 ]
  %val.2145.i323 = phi i32 [ %sub85.i327, %for.body81.i332 ], [ 0, %if.else64.i321 ]
  call void @llvm.dbg.value(metadata i8* %ip.3146.i322, metadata !684, metadata !DIExpression()) #15, !dbg !945
  call void @llvm.dbg.value(metadata i32 %val.2145.i323, metadata !683, metadata !DIExpression()) #15, !dbg !945
  %conv75.i324 = sext i8 %121 to i32, !dbg !993
  %mul82.i325 = mul nsw i32 %val.2145.i323, 10, !dbg !994
  %add84.i326 = add nsw i32 %conv75.i324, -48, !dbg !995
  %sub85.i327 = add i32 %add84.i326, %mul82.i325, !dbg !996
  call void @llvm.dbg.value(metadata i32 %sub85.i327, metadata !683, metadata !DIExpression()) #15, !dbg !945
  %incdec.ptr87.i328 = getelementptr inbounds i8, i8* %ip.3146.i322, i64 1, !dbg !997
  call void @llvm.dbg.value(metadata i8* %incdec.ptr87.i328, metadata !684, metadata !DIExpression()) #15, !dbg !945
  %122 = load i8, i8* %incdec.ptr87.i328, align 1, !dbg !993, !tbaa !528
  %idxprom76.i329 = sext i8 %122 to i64, !dbg !993
  %arrayidx77.i330 = getelementptr inbounds i16, i16* %103, i64 %idxprom76.i329, !dbg !993
  %123 = load i16, i16* %arrayidx77.i330, align 2, !dbg !993, !tbaa !691
  %124 = and i16 %123, 2048, !dbg !993
  %tobool80.not.i331 = icmp eq i16 %124, 0, !dbg !998
  br i1 %tobool80.not.i331, label %is_pattern.exit336, label %for.body81.i332, !dbg !998, !llvm.loop !999

is_pattern.exit336:                               ; preds = %for.body50.i311, %for.body81.i332
  %125 = phi i32 [ 1, %for.body81.i332 ], [ %sub.i282, %for.body50.i311 ]
  %storemerge467 = phi i32 [ %sub85.i327, %for.body81.i332 ], [ %sub54.i306, %for.body50.i311 ], !dbg !945
  %retval.0.i335.in.in = phi i8* [ %incdec.ptr87.i328, %for.body81.i332 ], [ %incdec.ptr56.i307, %for.body50.i311 ]
  store i32 %storemerge467, i32* %hi.i, align 4, !dbg !945, !tbaa !640
  %retval.0.i335.in = load i8, i8* %retval.0.i335.in.in, align 1, !dbg !945, !tbaa !528
  %tobool44.not.i = icmp eq i8 %retval.0.i335.in, 0, !dbg !1001
  br i1 %tobool44.not.i, label %if.else46.i, label %if.then45.i, !dbg !1002

if.then45.i:                                      ; preds = %if.else31.i300, %while.body42.i, %is_pattern.exit336
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !833, metadata !DIExpression()) #15, !dbg !1003
  call void @llvm.dbg.value(metadata i8* %call40190.i, metadata !836, metadata !DIExpression()) #15, !dbg !1003
  call void @llvm.dbg.value(metadata i8* %call40190.i, metadata !586, metadata !DIExpression()) #15, !dbg !1005
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !1005
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !1005
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1007, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call40190.i, metadata !592, metadata !DIExpression()) #15, !dbg !1005
  br label %for.cond.i.i235, !dbg !1008

for.cond.i.i235:                                  ; preds = %for.inc.i.i245, %if.then45.i
  %aep.0.i.i233 = phi i8* [ %call40190.i, %if.then45.i ], [ %incdec.ptr12.i.i244, %for.inc.i.i245 ], !dbg !1009
  %rep.0.i.i234 = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then45.i ], [ %rep.1.i.i243, %for.inc.i.i245 ], !dbg !1005
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i234, metadata !593, metadata !DIExpression()) #15, !dbg !1005
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i233, metadata !592, metadata !DIExpression()) #15, !dbg !1005
  %126 = load i8, i8* %aep.0.i.i233, align 1, !dbg !1010, !tbaa !528
  switch i8 %126, label %if.else9.i.i242 [
    i8 0, label %aexpr2rexpr.exit.i249
    i8 42, label %if.then.i.i238
    i8 63, label %if.then7.i.i240
  ], !dbg !1011

if.then.i.i238:                                   ; preds = %for.cond.i.i235
  %incdec.ptr2.i.i236 = getelementptr inbounds i8, i8* %rep.0.i.i234, i64 1, !dbg !1012
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i236, metadata !593, metadata !DIExpression()) #15, !dbg !1005
  store i8 46, i8* %rep.0.i.i234, align 1, !dbg !1013, !tbaa !528
  %incdec.ptr3.i.i237 = getelementptr inbounds i8, i8* %rep.0.i.i234, i64 2, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i237, metadata !593, metadata !DIExpression()) #15, !dbg !1005
  store i8 42, i8* %incdec.ptr2.i.i236, align 1, !dbg !1015, !tbaa !528
  br label %for.inc.i.i245, !dbg !1016

if.then7.i.i240:                                  ; preds = %for.cond.i.i235
  %incdec.ptr8.i.i239 = getelementptr inbounds i8, i8* %rep.0.i.i234, i64 1, !dbg !1017
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i239, metadata !593, metadata !DIExpression()) #15, !dbg !1005
  store i8 46, i8* %rep.0.i.i234, align 1, !dbg !1018, !tbaa !528
  br label %for.inc.i.i245, !dbg !1019

if.else9.i.i242:                                  ; preds = %for.cond.i.i235
  %incdec.ptr10.i.i241 = getelementptr inbounds i8, i8* %rep.0.i.i234, i64 1, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i241, metadata !593, metadata !DIExpression()) #15, !dbg !1005
  store i8 %126, i8* %rep.0.i.i234, align 1, !dbg !1021, !tbaa !528
  br label %for.inc.i.i245

for.inc.i.i245:                                   ; preds = %if.else9.i.i242, %if.then7.i.i240, %if.then.i.i238
  %rep.1.i.i243 = phi i8* [ %incdec.ptr3.i.i237, %if.then.i.i238 ], [ %incdec.ptr8.i.i239, %if.then7.i.i240 ], [ %incdec.ptr10.i.i241, %if.else9.i.i242 ], !dbg !1022
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i243, metadata !593, metadata !DIExpression()) #15, !dbg !1005
  %incdec.ptr12.i.i244 = getelementptr inbounds i8, i8* %aep.0.i.i233, i64 1, !dbg !1023
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i244, metadata !592, metadata !DIExpression()) #15, !dbg !1005
  br label %for.cond.i.i235, !dbg !1024, !llvm.loop !1025

aexpr2rexpr.exit.i249:                            ; preds = %for.cond.i.i235
  %incdec.ptr13.i.i246 = getelementptr inbounds i8, i8* %rep.0.i.i234, i64 1, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i246, metadata !593, metadata !DIExpression()) #15, !dbg !1005
  store i8 36, i8* %rep.0.i.i234, align 1, !dbg !1028, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i246, align 1, !dbg !1029, !tbaa !528
  %call.i247 = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1030
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !838, metadata !DIExpression()) #15, !dbg !1003
  %sp.020.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1031, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.020.i, metadata !838, metadata !DIExpression()) #15, !dbg !1003
  %tobool.not21.i = icmp eq %struct.strand_t* %sp.020.i, null, !dbg !1032
  br i1 %tobool.not21.i, label %if.end47.i, label %for.body.i253, !dbg !1032

for.body.i253:                                    ; preds = %aexpr2rexpr.exit.i249, %for.inc6.i
  %sp.022.i = phi %struct.strand_t* [ %sp.0.i267, %for.inc6.i ], [ %sp.020.i, %aexpr2rexpr.exit.i249 ]
  %s_attr.i250 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i, i64 0, i32 2, !dbg !1033
  %127 = load i32, i32* %s_attr.i250, align 4, !dbg !1033, !tbaa !290
  %and.i251 = and i32 %127, 1, !dbg !1034
  %tobool1.not.i252 = icmp eq i32 %and.i251, 0, !dbg !1034
  br i1 %tobool1.not.i252, label %for.inc6.i, label %for.cond2.preheader.i256, !dbg !1035

for.cond2.preheader.i256:                         ; preds = %for.body.i253
  %s_nresidues.i254 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i, i64 0, i32 5
  %s_residues.i255 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i, i64 0, i32 7
  call void @llvm.dbg.value(metadata i32 0, metadata !837, metadata !DIExpression()) #15, !dbg !1003
  %128 = load i32, i32* %s_nresidues.i254, align 8, !dbg !1036, !tbaa !295
  %cmp18.i = icmp sgt i32 %128, 0, !dbg !1037
  br i1 %cmp18.i, label %for.body3.i265, label %for.inc6.i, !dbg !1038

for.body3.i265:                                   ; preds = %for.cond2.preheader.i256, %for.body3.i265
  %indvars.iv.i257 = phi i64 [ %indvars.iv.next.i263, %for.body3.i265 ], [ 0, %for.cond2.preheader.i256 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i257, metadata !837, metadata !DIExpression()) #15, !dbg !1003
  %129 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i255, align 8, !dbg !1039, !tbaa !301
  %arrayidx.i258 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %129, i64 %indvars.iv.i257, !dbg !1040
  %130 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i258, align 8, !dbg !1040, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %130, metadata !839, metadata !DIExpression()) #15, !dbg !1003
  %r_resname.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %130, i64 0, i32 4, !dbg !1041
  %131 = load i8*, i8** %r_resname.i, align 8, !dbg !1041, !tbaa !887
  %call4.i = tail call i32 @step(i8* noundef %131, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1042
  %tobool5.not.i259 = icmp ne i32 %call4.i, 0, !dbg !1042
  %cond.i260 = zext i1 %tobool5.not.i259 to i32, !dbg !1042
  %r_attr.i261 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %130, i64 0, i32 6, !dbg !1043
  %132 = load i32, i32* %r_attr.i261, align 8, !dbg !1044, !tbaa !306
  %or.i262 = or i32 %132, %cond.i260, !dbg !1044
  store i32 %or.i262, i32* %r_attr.i261, align 8, !dbg !1044, !tbaa !306
  %indvars.iv.next.i263 = add nuw nsw i64 %indvars.iv.i257, 1, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i263, metadata !837, metadata !DIExpression()) #15, !dbg !1003
  %133 = load i32, i32* %s_nresidues.i254, align 8, !dbg !1036, !tbaa !295
  %134 = sext i32 %133 to i64, !dbg !1037
  %cmp.i264 = icmp slt i64 %indvars.iv.next.i263, %134, !dbg !1037
  br i1 %cmp.i264, label %for.body3.i265, label %for.inc6.i, !dbg !1038, !llvm.loop !1046

for.inc6.i:                                       ; preds = %for.body3.i265, %for.cond2.preheader.i256, %for.body.i253
  %s_next.i266 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.022.i, i64 0, i32 4, !dbg !1048
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !838, metadata !DIExpression()) #15, !dbg !1003
  %sp.0.i267 = load %struct.strand_t*, %struct.strand_t** %s_next.i266, align 8, !dbg !1031, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i267, metadata !838, metadata !DIExpression()) #15, !dbg !1003
  %tobool.not.i268 = icmp eq %struct.strand_t* %sp.0.i267, null, !dbg !1032
  br i1 %tobool.not.i268, label %if.end47.i, label %for.body.i253, !dbg !1032, !llvm.loop !1049

if.else46.i:                                      ; preds = %is_pattern.exit336, %if.else64.i321.if.else46.ithread-pre-split_crit_edge, %if.then63.i317, %if.then21.i289, %if.then30.i296
  %135 = phi i32 [ 1, %if.then63.i317 ], [ %sub.i282, %if.then21.i289 ], [ %sub.i282, %if.then30.i296 ], [ 1, %if.else64.i321.if.else46.ithread-pre-split_crit_edge ], [ %125, %is_pattern.exit336 ], !dbg !1051
  %136 = phi i32 [ -1, %if.then63.i317 ], [ %sub.i282, %if.then21.i289 ], [ -1, %if.then30.i296 ], [ %.pr.pre, %if.else64.i321.if.else46.ithread-pre-split_crit_edge ], [ %storemerge467, %is_pattern.exit336 ], !dbg !992
  call void @llvm.dbg.value(metadata i32 %135, metadata !535, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32 %136, metadata !536, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !899, metadata !DIExpression()) #15, !dbg !1052
  call void @llvm.dbg.value(metadata i32 %135, metadata !902, metadata !DIExpression()) #15, !dbg !1052
  call void @llvm.dbg.value(metadata i32 %136, metadata !903, metadata !DIExpression()) #15, !dbg !1052
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !906, metadata !DIExpression()) #15, !dbg !1052
  %sp.029.i90.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1054, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.029.i90.i, metadata !906, metadata !DIExpression()) #15, !dbg !1052
  %tobool.not30.i91.i = icmp eq %struct.strand_t* %sp.029.i90.i, null, !dbg !1055
  br i1 %tobool.not30.i91.i, label %if.end47.i, label %for.body.lr.ph.i93.i, !dbg !1055

for.body.lr.ph.i93.i:                             ; preds = %if.else46.i
  %cmp.i92.i = icmp eq i32 %136, -1
  br i1 %cmp.i92.i, label %for.body.us.preheader.i95.i, label %for.body.preheader.i94.i, !dbg !1056

for.body.preheader.i94.i:                         ; preds = %for.body.lr.ph.i93.i
  %137 = sext i32 %136 to i64, !dbg !1055
  %138 = sext i32 %135 to i64, !dbg !1055
  br label %for.body.i125.i, !dbg !1055

for.body.us.preheader.i95.i:                      ; preds = %for.body.lr.ph.i93.i
  %139 = sext i32 %135 to i64, !dbg !1055
  br label %for.body.us.i100.i, !dbg !1055

for.body.us.i100.i:                               ; preds = %for.inc11.us.i120.i, %for.body.us.preheader.i95.i
  %sp.031.us.i96.i = phi %struct.strand_t* [ %sp.0.us.i118.i, %for.inc11.us.i120.i ], [ %sp.029.i90.i, %for.body.us.preheader.i95.i ]
  %s_attr.us.i97.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i96.i, i64 0, i32 2, !dbg !1057
  %140 = load i32, i32* %s_attr.us.i97.i, align 4, !dbg !1057, !tbaa !290
  %and.us.i98.i = and i32 %140, 1, !dbg !1058
  %tobool1.not.us.i99.i = icmp eq i32 %and.us.i98.i, 0, !dbg !1058
  br i1 %tobool1.not.us.i99.i, label %for.inc11.us.i120.i, label %if.then.us.i104.i, !dbg !1059

if.then.us.i104.i:                                ; preds = %for.body.us.i100.i
  %s_nresidues.us.i101.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i96.i, i64 0, i32 5, !dbg !1060
  %141 = load i32, i32* %s_nresidues.us.i101.i, align 8, !dbg !1060, !tbaa !295
  call void @llvm.dbg.value(metadata i32 undef, metadata !905, metadata !DIExpression()) #15, !dbg !1052
  call void @llvm.dbg.value(metadata i32 0, metadata !904, metadata !DIExpression()) #15, !dbg !1052
  %s_residues.us.i102.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i96.i, i64 0, i32 7
  %cmp427.us.i103.i = icmp sgt i32 %141, 0, !dbg !1061
  br i1 %cmp427.us.i103.i, label %for.body5.us.preheader.i106.i, label %for.inc11.us.i120.i, !dbg !1062

for.body5.us.preheader.i106.i:                    ; preds = %if.then.us.i104.i
  %wide.trip.count37.i105.i = zext i32 %141 to i64, !dbg !1061
  br label %for.body5.us.i110.i, !dbg !1062

for.body5.us.i110.i:                              ; preds = %for.inc.us.i116.i, %for.body5.us.preheader.i106.i
  %indvars.iv34.i107.i = phi i64 [ 0, %for.body5.us.preheader.i106.i ], [ %indvars.iv.next35.i108.i, %for.inc.us.i116.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv34.i107.i, metadata !904, metadata !DIExpression()) #15, !dbg !1052
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !907, metadata !DIExpression()) #15, !dbg !1052
  %indvars.iv.next35.i108.i = add nuw nsw i64 %indvars.iv34.i107.i, 1, !dbg !1063
  %cmp6.not.us.not.i109.i = icmp slt i64 %indvars.iv.next35.i108.i, %139, !dbg !1064
  br i1 %cmp6.not.us.not.i109.i, label %for.inc.us.i116.i, label %if.then9.us.i114.i, !dbg !1065

if.then9.us.i114.i:                               ; preds = %for.body5.us.i110.i
  %142 = load %struct.residue_t**, %struct.residue_t*** %s_residues.us.i102.i, align 8, !dbg !1066, !tbaa !301
  %arrayidx.us.i111.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %142, i64 %indvars.iv34.i107.i, !dbg !1067
  %143 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i111.i, align 8, !dbg !1067, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %143, metadata !907, metadata !DIExpression()) #15, !dbg !1052
  %r_attr.us.i112.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %143, i64 0, i32 6, !dbg !1068
  %144 = load i32, i32* %r_attr.us.i112.i, align 8, !dbg !1069, !tbaa !306
  %or.us.i113.i = or i32 %144, 1, !dbg !1069
  store i32 %or.us.i113.i, i32* %r_attr.us.i112.i, align 8, !dbg !1069, !tbaa !306
  br label %for.inc.us.i116.i, !dbg !1070

for.inc.us.i116.i:                                ; preds = %if.then9.us.i114.i, %for.body5.us.i110.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i108.i, metadata !904, metadata !DIExpression()) #15, !dbg !1052
  %exitcond38.not.i115.i = icmp eq i64 %indvars.iv.next35.i108.i, %wide.trip.count37.i105.i, !dbg !1061
  br i1 %exitcond38.not.i115.i, label %for.inc11.us.i120.i, label %for.body5.us.i110.i, !dbg !1062, !llvm.loop !1071

for.inc11.us.i120.i:                              ; preds = %for.inc.us.i116.i, %if.then.us.i104.i, %for.body.us.i100.i
  %s_next.us.i117.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i96.i, i64 0, i32 4, !dbg !1073
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !906, metadata !DIExpression()) #15, !dbg !1052
  %sp.0.us.i118.i = load %struct.strand_t*, %struct.strand_t** %s_next.us.i117.i, align 8, !dbg !1054, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.us.i118.i, metadata !906, metadata !DIExpression()) #15, !dbg !1052
  %tobool.not.us.i119.i = icmp eq %struct.strand_t* %sp.0.us.i118.i, null, !dbg !1055
  br i1 %tobool.not.us.i119.i, label %if.end47.i, label %for.body.us.i100.i, !dbg !1055, !llvm.loop !1074

for.body.i125.i:                                  ; preds = %for.inc11.i147.i, %for.body.preheader.i94.i
  %sp.031.i121.i = phi %struct.strand_t* [ %sp.0.i145.i, %for.inc11.i147.i ], [ %sp.029.i90.i, %for.body.preheader.i94.i ]
  %s_attr.i122.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i121.i, i64 0, i32 2, !dbg !1057
  %145 = load i32, i32* %s_attr.i122.i, align 4, !dbg !1057, !tbaa !290
  %and.i123.i = and i32 %145, 1, !dbg !1058
  %tobool1.not.i124.i = icmp eq i32 %and.i123.i, 0, !dbg !1058
  br i1 %tobool1.not.i124.i, label %for.inc11.i147.i, label %if.then.i129.i, !dbg !1059

if.then.i129.i:                                   ; preds = %for.body.i125.i
  call void @llvm.dbg.value(metadata i32 %136, metadata !905, metadata !DIExpression()) #15, !dbg !1052
  call void @llvm.dbg.value(metadata i32 0, metadata !904, metadata !DIExpression()) #15, !dbg !1052
  %s_nresidues3.i126.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i121.i, i64 0, i32 5
  %146 = load i32, i32* %s_nresidues3.i126.i, align 8, !tbaa !295
  %s_residues.i127.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i121.i, i64 0, i32 7
  %cmp427.i128.i = icmp sgt i32 %146, 0, !dbg !1061
  br i1 %cmp427.i128.i, label %for.body5.preheader.i131.i, label %for.inc11.i147.i, !dbg !1062

for.body5.preheader.i131.i:                       ; preds = %if.then.i129.i
  %wide.trip.count.i130.i = zext i32 %146 to i64, !dbg !1061
  br label %for.body5.i137.i, !dbg !1062

for.body5.i137.i:                                 ; preds = %for.inc.i143.i, %for.body5.preheader.i131.i
  %indvars.iv.i132.i = phi i64 [ 0, %for.body5.preheader.i131.i ], [ %indvars.iv.next.i133.i, %for.inc.i143.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i132.i, metadata !904, metadata !DIExpression()) #15, !dbg !1052
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !907, metadata !DIExpression()) #15, !dbg !1052
  %indvars.iv.next.i133.i = add nuw nsw i64 %indvars.iv.i132.i, 1, !dbg !1063
  %cmp6.not.i134.i = icmp sge i64 %indvars.iv.next.i133.i, %138, !dbg !1064
  %cmp8.not.not.i135.i = icmp slt i64 %indvars.iv.i132.i, %137
  %or.cond.i136.i = and i1 %cmp8.not.not.i135.i, %cmp6.not.i134.i, !dbg !1065
  br i1 %or.cond.i136.i, label %if.then9.i141.i, label %for.inc.i143.i, !dbg !1065

if.then9.i141.i:                                  ; preds = %for.body5.i137.i
  %147 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i127.i, align 8, !dbg !1066, !tbaa !301
  %arrayidx.i138.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %147, i64 %indvars.iv.i132.i, !dbg !1067
  %148 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i138.i, align 8, !dbg !1067, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %148, metadata !907, metadata !DIExpression()) #15, !dbg !1052
  %r_attr.i139.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %148, i64 0, i32 6, !dbg !1068
  %149 = load i32, i32* %r_attr.i139.i, align 8, !dbg !1069, !tbaa !306
  %or.i140.i = or i32 %149, 1, !dbg !1069
  store i32 %or.i140.i, i32* %r_attr.i139.i, align 8, !dbg !1069, !tbaa !306
  br label %for.inc.i143.i, !dbg !1070

for.inc.i143.i:                                   ; preds = %if.then9.i141.i, %for.body5.i137.i
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i133.i, metadata !904, metadata !DIExpression()) #15, !dbg !1052
  %exitcond.not.i142.i = icmp eq i64 %indvars.iv.next.i133.i, %wide.trip.count.i130.i, !dbg !1061
  br i1 %exitcond.not.i142.i, label %for.inc11.i147.i, label %for.body5.i137.i, !dbg !1062, !llvm.loop !1076

for.inc11.i147.i:                                 ; preds = %for.inc.i143.i, %if.then.i129.i, %for.body.i125.i
  %s_next.i144.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.i121.i, i64 0, i32 4, !dbg !1073
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !906, metadata !DIExpression()) #15, !dbg !1052
  %sp.0.i145.i = load %struct.strand_t*, %struct.strand_t** %s_next.i144.i, align 8, !dbg !1054, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i145.i, metadata !906, metadata !DIExpression()) #15, !dbg !1052
  %tobool.not.i146.i = icmp eq %struct.strand_t* %sp.0.i145.i, null, !dbg !1055
  br i1 %tobool.not.i146.i, label %if.end47.i, label %for.body.i125.i, !dbg !1055, !llvm.loop !1077

if.end47.i:                                       ; preds = %for.inc6.i, %for.inc11.i147.i, %for.inc11.us.i120.i, %aexpr2rexpr.exit.i249, %if.else46.i
  %call40.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !943
  call void @llvm.dbg.value(metadata i8* %call40.i, metadata !534, metadata !DIExpression()) #15, !dbg !537
  %tobool41.not.i = icmp eq i8* %call40.i, null, !dbg !944
  br i1 %tobool41.not.i, label %if.end50.i, label %while.body42.i, !dbg !944, !llvm.loop !1078

if.else49.i:                                      ; preds = %if.end30.i
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !899, metadata !DIExpression()) #15, !dbg !1080
  call void @llvm.dbg.value(metadata i32 1, metadata !902, metadata !DIExpression()) #15, !dbg !1080
  call void @llvm.dbg.value(metadata i32 -1, metadata !903, metadata !DIExpression()) #15, !dbg !1080
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !906, metadata !DIExpression()) #15, !dbg !1080
  %sp.029.i150.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1082, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.029.i150.i, metadata !906, metadata !DIExpression()) #15, !dbg !1080
  %tobool.not30.i151.i = icmp eq %struct.strand_t* %sp.029.i150.i, null, !dbg !1083
  br i1 %tobool.not30.i151.i, label %if.end50.i, label %for.body.us.i158.i, !dbg !1083

for.body.us.i158.i:                               ; preds = %if.else49.i, %for.inc11.us.i177.i
  %sp.031.us.i154.i = phi %struct.strand_t* [ %sp.0.us.i175.i, %for.inc11.us.i177.i ], [ %sp.029.i150.i, %if.else49.i ]
  %s_attr.us.i155.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i154.i, i64 0, i32 2, !dbg !1084
  %150 = load i32, i32* %s_attr.us.i155.i, align 4, !dbg !1084, !tbaa !290
  %and.us.i156.i = and i32 %150, 1, !dbg !1085
  %tobool1.not.us.i157.i = icmp eq i32 %and.us.i156.i, 0, !dbg !1085
  br i1 %tobool1.not.us.i157.i, label %for.inc11.us.i177.i, label %if.then.us.i162.i, !dbg !1086

if.then.us.i162.i:                                ; preds = %for.body.us.i158.i
  %s_nresidues.us.i159.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i154.i, i64 0, i32 5, !dbg !1087
  %151 = load i32, i32* %s_nresidues.us.i159.i, align 8, !dbg !1087, !tbaa !295
  call void @llvm.dbg.value(metadata i32 undef, metadata !905, metadata !DIExpression()) #15, !dbg !1080
  call void @llvm.dbg.value(metadata i32 0, metadata !904, metadata !DIExpression()) #15, !dbg !1080
  %cmp427.us.i161.i = icmp sgt i32 %151, 0, !dbg !1088
  br i1 %cmp427.us.i161.i, label %for.body5.us.preheader.i164.i, label %for.inc11.us.i177.i, !dbg !1089

for.body5.us.preheader.i164.i:                    ; preds = %if.then.us.i162.i
  %s_residues.us.i160.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i154.i, i64 0, i32 7
  %wide.trip.count37.i163.i = zext i32 %151 to i64, !dbg !1088
  %152 = load %struct.residue_t**, %struct.residue_t*** %s_residues.us.i160.i, align 8, !tbaa !301
  br label %for.body5.us.i167.i, !dbg !1089

for.body5.us.i167.i:                              ; preds = %for.body5.us.i167.i, %for.body5.us.preheader.i164.i
  %indvars.iv34.i165.i = phi i64 [ 0, %for.body5.us.preheader.i164.i ], [ %indvars.iv.next35.i166.i, %for.body5.us.i167.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv34.i165.i, metadata !904, metadata !DIExpression()) #15, !dbg !1080
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !907, metadata !DIExpression()) #15, !dbg !1080
  %indvars.iv.next35.i166.i = add nuw nsw i64 %indvars.iv34.i165.i, 1, !dbg !1090
  %arrayidx.us.i168.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %152, i64 %indvars.iv34.i165.i, !dbg !1091
  %153 = load %struct.residue_t*, %struct.residue_t** %arrayidx.us.i168.i, align 8, !dbg !1091, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %153, metadata !907, metadata !DIExpression()) #15, !dbg !1080
  %r_attr.us.i169.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %153, i64 0, i32 6, !dbg !1092
  %154 = load i32, i32* %r_attr.us.i169.i, align 8, !dbg !1093, !tbaa !306
  %or.us.i170.i = or i32 %154, 1, !dbg !1093
  store i32 %or.us.i170.i, i32* %r_attr.us.i169.i, align 8, !dbg !1093, !tbaa !306
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35.i166.i, metadata !904, metadata !DIExpression()) #15, !dbg !1080
  %exitcond38.not.i172.i = icmp eq i64 %indvars.iv.next35.i166.i, %wide.trip.count37.i163.i, !dbg !1088
  br i1 %exitcond38.not.i172.i, label %for.inc11.us.i177.i, label %for.body5.us.i167.i, !dbg !1089, !llvm.loop !1094

for.inc11.us.i177.i:                              ; preds = %for.body5.us.i167.i, %if.then.us.i162.i, %for.body.us.i158.i
  %s_next.us.i174.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.031.us.i154.i, i64 0, i32 4, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !906, metadata !DIExpression()) #15, !dbg !1080
  %sp.0.us.i175.i = load %struct.strand_t*, %struct.strand_t** %s_next.us.i174.i, align 8, !dbg !1082, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.us.i175.i, metadata !906, metadata !DIExpression()) #15, !dbg !1080
  %tobool.not.us.i176.i = icmp eq %struct.strand_t* %sp.0.us.i175.i, null, !dbg !1083
  br i1 %tobool.not.us.i176.i, label %if.end50.i, label %for.body.us.i158.i, !dbg !1083, !llvm.loop !1097

if.end50.i:                                       ; preds = %if.end47.i, %for.inc11.us.i177.i, %if.else49.i, %if.end38.i
  %155 = load i8*, i8** @apart, align 8, !dbg !1099, !tbaa !281
  %tobool51.not.i = icmp eq i8* %155, null, !dbg !1099
  br i1 %tobool51.not.i, label %if.else71.i, label %if.then52.i, !dbg !1101

if.then52.i:                                      ; preds = %if.end50.i
  %call53.i = tail call i8* @strtok(i8* noundef nonnull %155, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1102
  call void @llvm.dbg.value(metadata i8* %call53.i, metadata !534, metadata !DIExpression()) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !535, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !536, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  %call54.i = call fastcc i32 @is_pattern(i8* noundef %call53.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1104
  %tobool55.not.i = icmp eq i32 %call54.i, 0, !dbg !1104
  br i1 %tobool55.not.i, label %if.else57.i, label %if.then56.i, !dbg !1106

if.then56.i:                                      ; preds = %if.then52.i
  tail call fastcc void @match_atom_pat(%struct.molecule_t* noundef %mol, i8* noundef %call53.i) #15, !dbg !1107
  br label %if.end59.i, !dbg !1107

if.else57.i:                                      ; preds = %if.then52.i
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1108, !tbaa !281
  %157 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %156) #17, !dbg !1110
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else57.i, %if.then56.i
  %call61191.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1111
  call void @llvm.dbg.value(metadata i8* %call61191.i, metadata !534, metadata !DIExpression()) #15, !dbg !537
  %tobool62.not192.i = icmp eq i8* %call61191.i, null, !dbg !1112
  br i1 %tobool62.not192.i, label %eval_1_aexpr.exit, label %while.body63.i.preheader, !dbg !1112

while.body63.i.preheader:                         ; preds = %if.end59.i
  %call.i224 = tail call i16** @__ctype_b_loc() #16, !dbg !378
  br label %while.body63.i, !dbg !1112

while.body63.i:                                   ; preds = %while.body63.i.preheader, %if.end69.i
  %call61193.i = phi i8* [ %call61.i, %if.end69.i ], [ %call61191.i, %while.body63.i.preheader ]
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !535, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !536, metadata !DIExpression(DW_OP_deref)) #15, !dbg !537
  call void @llvm.dbg.value(metadata i8* %call61193.i, metadata !675, metadata !DIExpression()) #15, !dbg !1113
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !681, metadata !DIExpression()) #15, !dbg !1113
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !682, metadata !DIExpression()) #15, !dbg !1113
  %158 = load i16*, i16** %call.i224, align 8, !dbg !1117, !tbaa !281
  %159 = load i8, i8* %call61193.i, align 1, !dbg !1117, !tbaa !528
  %idxprom.i = sext i8 %159 to i64, !dbg !1117
  %arrayidx.i225 = getelementptr inbounds i16, i16* %158, i64 %idxprom.i, !dbg !1117
  %160 = load i16, i16* %arrayidx.i225, align 2, !dbg !1117, !tbaa !691
  %161 = and i16 %160, 2048, !dbg !1117
  %tobool.not.i226 = icmp ne i16 %161, 0, !dbg !1117
  %cmp.not.i = icmp eq i8 %159, 45
  %or.cond.i = select i1 %tobool.not.i226, i1 true, i1 %cmp.not.i, !dbg !1118
  br i1 %or.cond.i, label %if.end.i227, label %if.then66.i, !dbg !1118

if.end.i227:                                      ; preds = %while.body63.i
  %tobool10.not.i = icmp eq i16 %161, 0, !dbg !1119
  br i1 %tobool10.not.i, label %if.else59.i, label %for.body.i230, !dbg !1120

for.body.i230:                                    ; preds = %if.end.i227, %for.body.i230
  %162 = phi i8 [ %163, %for.body.i230 ], [ %159, %if.end.i227 ]
  %ip.0133.i = phi i8* [ %incdec.ptr.i, %for.body.i230 ], [ %call61193.i, %if.end.i227 ]
  %val.0132.i = phi i32 [ %sub.i, %for.body.i230 ], [ 0, %if.end.i227 ]
  call void @llvm.dbg.value(metadata i8* %ip.0133.i, metadata !684, metadata !DIExpression()) #15, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %val.0132.i, metadata !683, metadata !DIExpression()) #15, !dbg !1113
  %conv13.i = sext i8 %162 to i32, !dbg !1121
  %mul.i = mul nsw i32 %val.0132.i, 10, !dbg !1122
  %add.i228 = add nsw i32 %conv13.i, -48, !dbg !1123
  %sub.i = add i32 %add.i228, %mul.i, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !683, metadata !DIExpression()) #15, !dbg !1113
  %incdec.ptr.i = getelementptr inbounds i8, i8* %ip.0133.i, i64 1, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, metadata !684, metadata !DIExpression()) #15, !dbg !1113
  %163 = load i8, i8* %incdec.ptr.i, align 1, !dbg !1121, !tbaa !528
  %idxprom14.i = sext i8 %163 to i64, !dbg !1121
  %arrayidx15.i = getelementptr inbounds i16, i16* %158, i64 %idxprom14.i, !dbg !1121
  %164 = load i16, i16* %arrayidx15.i, align 2, !dbg !1121, !tbaa !691
  %165 = and i16 %164, 2048, !dbg !1121
  %tobool18.not.i229 = icmp eq i16 %165, 0, !dbg !1126
  br i1 %tobool18.not.i229, label %for.end.i, label %for.body.i230, !dbg !1126, !llvm.loop !1127

for.end.i:                                        ; preds = %for.body.i230
  store i32 %sub.i, i32* %lo.i, align 4, !dbg !1129, !tbaa !640
  switch i8 %163, label %if.end28.i231 [
    i8 0, label %if.then21.i
    i8 45, label %if.then25.i
  ], !dbg !1130

if.then21.i:                                      ; preds = %for.end.i
  store i32 %sub.i, i32* %hi.i, align 4, !dbg !1131, !tbaa !640
  br label %if.else67.i, !dbg !1132

if.then25.i:                                      ; preds = %for.end.i
  %incdec.ptr26.i = getelementptr inbounds i8, i8* %ip.0133.i, i64 2, !dbg !1133
  call void @llvm.dbg.value(metadata i8* %incdec.ptr26.i, metadata !684, metadata !DIExpression()) #15, !dbg !1113
  %.pr.i = load i8, i8* %incdec.ptr26.i, align 1, !dbg !1134, !tbaa !528
  br label %if.end28.i231, !dbg !1135

if.end28.i231:                                    ; preds = %if.then25.i, %for.end.i
  %166 = phi i8 [ %163, %for.end.i ], [ %.pr.i, %if.then25.i ], !dbg !1134
  %ip.1.i = phi i8* [ %incdec.ptr.i, %for.end.i ], [ %incdec.ptr26.i, %if.then25.i ], !dbg !1136
  call void @llvm.dbg.value(metadata i8* %ip.1.i, metadata !684, metadata !DIExpression()) #15, !dbg !1113
  %tobool29.not.i = icmp eq i8 %166, 0, !dbg !1134
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else31.i, !dbg !1137

if.then30.i:                                      ; preds = %if.end28.i231
  store i32 -1, i32* %hi.i, align 4, !dbg !1138, !tbaa !640
  br label %if.else67.i, !dbg !1139

if.else31.i:                                      ; preds = %if.end28.i231
  %idxprom34.i = sext i8 %166 to i64, !dbg !1140
  %arrayidx35.i = getelementptr inbounds i16, i16* %158, i64 %idxprom34.i, !dbg !1140
  %167 = load i16, i16* %arrayidx35.i, align 2, !dbg !1140, !tbaa !691
  %168 = and i16 %167, 2048, !dbg !1140
  %tobool38.not.i = icmp eq i16 %168, 0, !dbg !1140
  br i1 %tobool38.not.i, label %if.then66.i, label %for.body50.i, !dbg !1141

for.body50.i:                                     ; preds = %if.else31.i, %for.body50.i
  %169 = phi i8 [ %170, %for.body50.i ], [ %166, %if.else31.i ]
  %ip.2139.i = phi i8* [ %incdec.ptr56.i, %for.body50.i ], [ %ip.1.i, %if.else31.i ]
  %val.1138.i = phi i32 [ %sub54.i, %for.body50.i ], [ 0, %if.else31.i ]
  call void @llvm.dbg.value(metadata i8* %ip.2139.i, metadata !684, metadata !DIExpression()) #15, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %val.1138.i, metadata !683, metadata !DIExpression()) #15, !dbg !1113
  %conv44.i = sext i8 %169 to i32, !dbg !1142
  %mul51.i = mul nsw i32 %val.1138.i, 10, !dbg !1143
  %add53.i = add nsw i32 %conv44.i, -48, !dbg !1144
  %sub54.i = add i32 %add53.i, %mul51.i, !dbg !1145
  call void @llvm.dbg.value(metadata i32 %sub54.i, metadata !683, metadata !DIExpression()) #15, !dbg !1113
  %incdec.ptr56.i = getelementptr inbounds i8, i8* %ip.2139.i, i64 1, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56.i, metadata !684, metadata !DIExpression()) #15, !dbg !1113
  %170 = load i8, i8* %incdec.ptr56.i, align 1, !dbg !1142, !tbaa !528
  %idxprom45.i = sext i8 %170 to i64, !dbg !1142
  %arrayidx46.i = getelementptr inbounds i16, i16* %158, i64 %idxprom45.i, !dbg !1142
  %171 = load i16, i16* %arrayidx46.i, align 2, !dbg !1142, !tbaa !691
  %172 = and i16 %171, 2048, !dbg !1142
  %tobool49.not.i = icmp eq i16 %172, 0, !dbg !1147
  br i1 %tobool49.not.i, label %is_pattern.exit, label %for.body50.i, !dbg !1147, !llvm.loop !1148

if.else59.i:                                      ; preds = %if.end.i227
  store i32 1, i32* %lo.i, align 4, !dbg !1150, !tbaa !640
  %arrayidx60.i = getelementptr inbounds i8, i8* %call61193.i, i64 1, !dbg !1151
  call void @llvm.dbg.value(metadata i8* %arrayidx60.i, metadata !684, metadata !DIExpression()) #15, !dbg !1113
  %173 = load i8, i8* %arrayidx60.i, align 1, !dbg !1152, !tbaa !528
  %tobool62.not.i232 = icmp eq i8 %173, 0, !dbg !1152
  br i1 %tobool62.not.i232, label %if.then63.i, label %if.else64.i, !dbg !1153

if.then63.i:                                      ; preds = %if.else59.i
  store i32 -1, i32* %hi.i, align 4, !dbg !1154, !tbaa !640
  br label %if.else67.i, !dbg !1155

if.else64.i:                                      ; preds = %if.else59.i
  %idxprom67.i = sext i8 %173 to i64, !dbg !1156
  %arrayidx68.i = getelementptr inbounds i16, i16* %158, i64 %idxprom67.i, !dbg !1156
  %174 = load i16, i16* %arrayidx68.i, align 2, !dbg !1156, !tbaa !691
  %175 = and i16 %174, 2048, !dbg !1156
  %tobool71.not.i = icmp eq i16 %175, 0, !dbg !1156
  br i1 %tobool71.not.i, label %if.else67.i, label %for.body81.i, !dbg !1157

for.body81.i:                                     ; preds = %if.else64.i, %for.body81.i
  %176 = phi i8 [ %177, %for.body81.i ], [ %173, %if.else64.i ]
  %ip.3146.i = phi i8* [ %incdec.ptr87.i, %for.body81.i ], [ %arrayidx60.i, %if.else64.i ]
  %val.2145.i = phi i32 [ %sub85.i, %for.body81.i ], [ 0, %if.else64.i ]
  call void @llvm.dbg.value(metadata i8* %ip.3146.i, metadata !684, metadata !DIExpression()) #15, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %val.2145.i, metadata !683, metadata !DIExpression()) #15, !dbg !1113
  %conv75.i = sext i8 %176 to i32, !dbg !1158
  %mul82.i = mul nsw i32 %val.2145.i, 10, !dbg !1159
  %add84.i = add nsw i32 %conv75.i, -48, !dbg !1160
  %sub85.i = add i32 %add84.i, %mul82.i, !dbg !1161
  call void @llvm.dbg.value(metadata i32 %sub85.i, metadata !683, metadata !DIExpression()) #15, !dbg !1113
  %incdec.ptr87.i = getelementptr inbounds i8, i8* %ip.3146.i, i64 1, !dbg !1162
  call void @llvm.dbg.value(metadata i8* %incdec.ptr87.i, metadata !684, metadata !DIExpression()) #15, !dbg !1113
  %177 = load i8, i8* %incdec.ptr87.i, align 1, !dbg !1158, !tbaa !528
  %idxprom76.i = sext i8 %177 to i64, !dbg !1158
  %arrayidx77.i = getelementptr inbounds i16, i16* %158, i64 %idxprom76.i, !dbg !1158
  %178 = load i16, i16* %arrayidx77.i, align 2, !dbg !1158, !tbaa !691
  %179 = and i16 %178, 2048, !dbg !1158
  %tobool80.not.i = icmp eq i16 %179, 0, !dbg !1163
  br i1 %tobool80.not.i, label %is_pattern.exit, label %for.body81.i, !dbg !1163, !llvm.loop !1164

is_pattern.exit:                                  ; preds = %for.body50.i, %for.body81.i
  %storemerge = phi i32 [ %sub85.i, %for.body81.i ], [ %sub54.i, %for.body50.i ], !dbg !1113
  %retval.0.i.in.in = phi i8* [ %incdec.ptr87.i, %for.body81.i ], [ %incdec.ptr56.i, %for.body50.i ]
  store i32 %storemerge, i32* %hi.i, align 4, !dbg !1113, !tbaa !640
  %retval.0.i.in = load i8, i8* %retval.0.i.in.in, align 1, !dbg !1113, !tbaa !528
  %tobool65.not.i = icmp eq i8 %retval.0.i.in, 0, !dbg !1166
  br i1 %tobool65.not.i, label %if.else67.i, label %if.then66.i, !dbg !1167

if.then66.i:                                      ; preds = %if.else31.i, %while.body63.i, %is_pattern.exit
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1168, metadata !DIExpression()) #15, !dbg !1177
  call void @llvm.dbg.value(metadata i8* %call61193.i, metadata !1171, metadata !DIExpression()) #15, !dbg !1177
  call void @llvm.dbg.value(metadata i8* %call61193.i, metadata !586, metadata !DIExpression()) #15, !dbg !1179
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !1179
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !1179
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1181, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call61193.i, metadata !592, metadata !DIExpression()) #15, !dbg !1179
  br label %for.cond.i.i, !dbg !1182

for.cond.i.i:                                     ; preds = %for.inc.i.i204, %if.then66.i
  %aep.0.i.i = phi i8* [ %call61193.i, %if.then66.i ], [ %incdec.ptr12.i.i, %for.inc.i.i204 ], !dbg !1183
  %rep.0.i.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then66.i ], [ %rep.1.i.i, %for.inc.i.i204 ], !dbg !1179
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i, metadata !592, metadata !DIExpression()) #15, !dbg !1179
  %180 = load i8, i8* %aep.0.i.i, align 1, !dbg !1184, !tbaa !528
  switch i8 %180, label %if.else9.i.i [
    i8 0, label %aexpr2rexpr.exit.i
    i8 42, label %if.then.i.i203
    i8 63, label %if.then7.i.i
  ], !dbg !1185

if.then.i.i203:                                   ; preds = %for.cond.i.i
  %incdec.ptr2.i.i = getelementptr inbounds i8, i8* %rep.0.i.i, i64 1, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1179
  store i8 46, i8* %rep.0.i.i, align 1, !dbg !1187, !tbaa !528
  %incdec.ptr3.i.i = getelementptr inbounds i8, i8* %rep.0.i.i, i64 2, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1179
  store i8 42, i8* %incdec.ptr2.i.i, align 1, !dbg !1189, !tbaa !528
  br label %for.inc.i.i204, !dbg !1190

if.then7.i.i:                                     ; preds = %for.cond.i.i
  %incdec.ptr8.i.i = getelementptr inbounds i8, i8* %rep.0.i.i, i64 1, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1179
  store i8 46, i8* %rep.0.i.i, align 1, !dbg !1192, !tbaa !528
  br label %for.inc.i.i204, !dbg !1193

if.else9.i.i:                                     ; preds = %for.cond.i.i
  %incdec.ptr10.i.i = getelementptr inbounds i8, i8* %rep.0.i.i, i64 1, !dbg !1194
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1179
  store i8 %180, i8* %rep.0.i.i, align 1, !dbg !1195, !tbaa !528
  br label %for.inc.i.i204

for.inc.i.i204:                                   ; preds = %if.else9.i.i, %if.then7.i.i, %if.then.i.i203
  %rep.1.i.i = phi i8* [ %incdec.ptr3.i.i, %if.then.i.i203 ], [ %incdec.ptr8.i.i, %if.then7.i.i ], [ %incdec.ptr10.i.i, %if.else9.i.i ], !dbg !1196
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1179
  %incdec.ptr12.i.i = getelementptr inbounds i8, i8* %aep.0.i.i, i64 1, !dbg !1197
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i, metadata !592, metadata !DIExpression()) #15, !dbg !1179
  br label %for.cond.i.i, !dbg !1198, !llvm.loop !1199

aexpr2rexpr.exit.i:                               ; preds = %for.cond.i.i
  %incdec.ptr13.i.i = getelementptr inbounds i8, i8* %rep.0.i.i, i64 1, !dbg !1201
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1179
  store i8 36, i8* %rep.0.i.i, align 1, !dbg !1202, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i, align 1, !dbg !1203, !tbaa !528
  %call.i205 = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1204
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1174, metadata !DIExpression()) #15, !dbg !1177
  %sp.040.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1205, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.040.i, metadata !1174, metadata !DIExpression()) #15, !dbg !1177
  %tobool.not41.i = icmp eq %struct.strand_t* %sp.040.i, null, !dbg !1207
  br i1 %tobool.not41.i, label %if.end69.i, label %for.body.i209, !dbg !1207

for.body.i209:                                    ; preds = %aexpr2rexpr.exit.i, %for.inc18.i
  %sp.042.i = phi %struct.strand_t* [ %sp.0.i222, %for.inc18.i ], [ %sp.040.i, %aexpr2rexpr.exit.i ]
  %s_attr.i207 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042.i, i64 0, i32 2, !dbg !1208
  %181 = load i32, i32* %s_attr.i207, align 4, !dbg !1208, !tbaa !290
  %and.i208 = and i32 %181, 1, !dbg !1212
  %tobool1.not.i = icmp eq i32 %and.i208, 0, !dbg !1212
  br i1 %tobool1.not.i, label %for.inc18.i, label %for.cond2.preheader.i, !dbg !1213

for.cond2.preheader.i:                            ; preds = %for.body.i209
  %s_nresidues.i210 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042.i, i64 0, i32 5
  %s_residues.i211 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042.i, i64 0, i32 7
  call void @llvm.dbg.value(metadata i32 0, metadata !1172, metadata !DIExpression()) #15, !dbg !1177
  %182 = load i32, i32* %s_nresidues.i210, align 8, !dbg !1214, !tbaa !295
  %cmp38.i = icmp sgt i32 %182, 0, !dbg !1218
  br i1 %cmp38.i, label %for.body3.i, label %for.inc18.i, !dbg !1219

for.body3.i:                                      ; preds = %for.cond2.preheader.i, %for.inc14.i
  %183 = phi i32 [ %193, %for.inc14.i ], [ %182, %for.cond2.preheader.i ]
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %for.inc14.i ], [ 0, %for.cond2.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv44.i, metadata !1172, metadata !DIExpression()) #15, !dbg !1177
  %184 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i211, align 8, !dbg !1220, !tbaa !301
  %arrayidx.i212 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %184, i64 %indvars.iv44.i, !dbg !1222
  %185 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i212, align 8, !dbg !1222, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %185, metadata !1175, metadata !DIExpression()) #15, !dbg !1177
  %r_attr.i213 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %185, i64 0, i32 6, !dbg !1223
  %186 = load i32, i32* %r_attr.i213, align 8, !dbg !1223, !tbaa !306
  %and4.i = and i32 %186, 1, !dbg !1225
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !1225
  br i1 %tobool5.not.i, label %for.inc14.i, label %for.cond7.preheader.i, !dbg !1226

for.cond7.preheader.i:                            ; preds = %for.body3.i
  %r_natoms.i214 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %185, i64 0, i32 15
  %r_atoms.i215 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %185, i64 0, i32 17
  call void @llvm.dbg.value(metadata i32 0, metadata !1173, metadata !DIExpression()) #15, !dbg !1177
  %187 = load i32, i32* %r_natoms.i214, align 8, !dbg !1227, !tbaa !310
  %cmp836.i = icmp sgt i32 %187, 0, !dbg !1231
  br i1 %cmp836.i, label %for.body9.i, label %for.inc14.i, !dbg !1232

for.body9.i:                                      ; preds = %for.cond7.preheader.i, %for.body9.i
  %indvars.iv.i216 = phi i64 [ %indvars.iv.next.i219, %for.body9.i ], [ 0, %for.cond7.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i216, metadata !1173, metadata !DIExpression()) #15, !dbg !1177
  %188 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i215, align 8, !dbg !1233, !tbaa !316
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %188, i64 %indvars.iv.i216), metadata !1176, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #15, !dbg !1177
  %a_atomname.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %188, i64 %indvars.iv.i216, i32 0, !dbg !1235
  %189 = load i8*, i8** %a_atomname.i, align 8, !dbg !1235, !tbaa !1236
  %call12.i = tail call i32 @step(i8* noundef %189, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1237
  %tobool13.not.i = icmp ne i32 %call12.i, 0, !dbg !1237
  %cond.i = zext i1 %tobool13.not.i to i32, !dbg !1237
  %a_attr.i217 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %188, i64 %indvars.iv.i216, i32 2, !dbg !1238
  %190 = load i32, i32* %a_attr.i217, align 8, !dbg !1239, !tbaa !320
  %or.i218 = or i32 %190, %cond.i, !dbg !1239
  store i32 %or.i218, i32* %a_attr.i217, align 8, !dbg !1239, !tbaa !320
  %indvars.iv.next.i219 = add nuw nsw i64 %indvars.iv.i216, 1, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i219, metadata !1173, metadata !DIExpression()) #15, !dbg !1177
  %191 = load i32, i32* %r_natoms.i214, align 8, !dbg !1227, !tbaa !310
  %192 = sext i32 %191 to i64, !dbg !1231
  %cmp8.i = icmp slt i64 %indvars.iv.next.i219, %192, !dbg !1231
  br i1 %cmp8.i, label %for.body9.i, label %for.inc14.loopexit.i, !dbg !1232, !llvm.loop !1241

for.inc14.loopexit.i:                             ; preds = %for.body9.i
  %.pre.i = load i32, i32* %s_nresidues.i210, align 8, !dbg !1214, !tbaa !295
  br label %for.inc14.i, !dbg !1243

for.inc14.i:                                      ; preds = %for.inc14.loopexit.i, %for.cond7.preheader.i, %for.body3.i
  %193 = phi i32 [ %.pre.i, %for.inc14.loopexit.i ], [ %183, %for.cond7.preheader.i ], [ %183, %for.body3.i ], !dbg !1214
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next45.i, metadata !1172, metadata !DIExpression()) #15, !dbg !1177
  %194 = sext i32 %193 to i64, !dbg !1218
  %cmp.i220 = icmp slt i64 %indvars.iv.next45.i, %194, !dbg !1218
  br i1 %cmp.i220, label %for.body3.i, label %for.inc18.i, !dbg !1219, !llvm.loop !1244

for.inc18.i:                                      ; preds = %for.inc14.i, %for.cond2.preheader.i, %for.body.i209
  %s_next.i221 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042.i, i64 0, i32 4, !dbg !1246
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1174, metadata !DIExpression()) #15, !dbg !1177
  %sp.0.i222 = load %struct.strand_t*, %struct.strand_t** %s_next.i221, align 8, !dbg !1205, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i222, metadata !1174, metadata !DIExpression()) #15, !dbg !1177
  %tobool.not.i223 = icmp eq %struct.strand_t* %sp.0.i222, null, !dbg !1207
  br i1 %tobool.not.i223, label %if.end69.i, label %for.body.i209, !dbg !1207, !llvm.loop !1247

if.else67.i:                                      ; preds = %if.else64.i, %if.then63.i, %if.then21.i, %if.then30.i, %is_pattern.exit
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1249, !tbaa !281
  %196 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %195) #17, !dbg !1251
  br label %if.end69.i

if.end69.i:                                       ; preds = %for.inc18.i, %aexpr2rexpr.exit.i, %if.else67.i
  %call61.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1111
  call void @llvm.dbg.value(metadata i8* %call61.i, metadata !534, metadata !DIExpression()) #15, !dbg !537
  %tobool62.not.i = icmp eq i8* %call61.i, null, !dbg !1112
  br i1 %tobool62.not.i, label %eval_1_aexpr.exit, label %while.body63.i, !dbg !1112, !llvm.loop !1252

if.else71.i:                                      ; preds = %if.end50.i
  tail call fastcc void @match_atom_pat(%struct.molecule_t* noundef %mol, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #15, !dbg !1254
  br label %eval_1_aexpr.exit

eval_1_aexpr.exit:                                ; preds = %if.end69.i, %if.end59.i, %if.else71.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #15, !dbg !1255
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #15, !dbg !1255
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1256, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1261, metadata !DIExpression()), !dbg !1264
  %sp.047.i = load %struct.strand_t*, %struct.strand_t** %m_strands.i, align 8, !dbg !1266, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.047.i, metadata !1261, metadata !DIExpression()), !dbg !1264
  %tobool.not48.i = icmp eq %struct.strand_t* %sp.047.i, null, !dbg !1268
  br i1 %tobool.not48.i, label %or_select.exit, label %for.body.i114, !dbg !1268

for.body.i114:                                    ; preds = %eval_1_aexpr.exit, %for.inc23.i
  %sp.049.i = phi %struct.strand_t* [ %sp.0.i127, %for.inc23.i ], [ %sp.047.i, %eval_1_aexpr.exit ]
  %s_attr.i110 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i, i64 0, i32 2, !dbg !1269
  %197 = load i32, i32* %s_attr.i110, align 4, !dbg !1269, !tbaa !290
  %and.i111 = shl i32 %197, 7, !dbg !1272
  %198 = and i32 %and.i111, 128, !dbg !1272
  %or.i112 = or i32 %198, %197, !dbg !1273
  store i32 %or.i112, i32* %s_attr.i110, align 4, !dbg !1273, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !1260, metadata !DIExpression()), !dbg !1264
  %s_nresidues.i113 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i, i64 0, i32 5
  %199 = load i32, i32* %s_nresidues.i113, align 8, !tbaa !295
  %cmp45.i = icmp sgt i32 %199, 0, !dbg !1274
  br i1 %cmp45.i, label %for.body4.lr.ph.i, label %for.inc23.i, !dbg !1277

for.body4.lr.ph.i:                                ; preds = %for.body.i114
  %s_residues.i115 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i, i64 0, i32 7
  %200 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i115, align 8, !tbaa !301
  %wide.trip.count54.i = zext i32 %199 to i64, !dbg !1274
  br label %for.body4.i, !dbg !1277

for.body4.i:                                      ; preds = %for.inc20.i, %for.body4.lr.ph.i
  %indvars.iv51.i = phi i64 [ 0, %for.body4.lr.ph.i ], [ %indvars.iv.next52.i, %for.inc20.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv51.i, metadata !1260, metadata !DIExpression()), !dbg !1264
  %arrayidx.i116 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %200, i64 %indvars.iv51.i, !dbg !1278
  %201 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i116, align 8, !dbg !1278, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %201, metadata !1262, metadata !DIExpression()), !dbg !1264
  %r_attr.i117 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %201, i64 0, i32 6, !dbg !1280
  %202 = load i32, i32* %r_attr.i117, align 8, !dbg !1280, !tbaa !306
  %and5.i = shl i32 %202, 7, !dbg !1281
  %203 = and i32 %and5.i, 128, !dbg !1281
  %or9.i118 = or i32 %203, %202, !dbg !1282
  store i32 %or9.i118, i32* %r_attr.i117, align 8, !dbg !1282, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !1259, metadata !DIExpression()), !dbg !1264
  %r_natoms.i119 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %201, i64 0, i32 15
  %204 = load i32, i32* %r_natoms.i119, align 8, !tbaa !310
  %cmp1143.i = icmp sgt i32 %204, 0, !dbg !1283
  br i1 %cmp1143.i, label %for.body12.lr.ph.i, label %for.inc20.i, !dbg !1286

for.body12.lr.ph.i:                               ; preds = %for.body4.i
  %r_atoms.i120 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %201, i64 0, i32 17
  %205 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i120, align 8, !tbaa !316
  %wide.trip.count.i121 = zext i32 %204 to i64, !dbg !1283
  br label %for.body12.i, !dbg !1286

for.body12.i:                                     ; preds = %for.body12.i, %for.body12.lr.ph.i
  %indvars.iv.i122 = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next.i124, %for.body12.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i122, metadata !1259, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %205, i64 %indvars.iv.i122), metadata !1263, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1264
  %a_attr.i123 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %205, i64 %indvars.iv.i122, i32 2, !dbg !1287
  %206 = load i32, i32* %a_attr.i123, align 8, !dbg !1287, !tbaa !320
  %and15.i = shl i32 %206, 7, !dbg !1289
  %207 = and i32 %and15.i, 128, !dbg !1289
  %or19.i = or i32 %207, %206, !dbg !1290
  store i32 %or19.i, i32* %a_attr.i123, align 8, !dbg !1290, !tbaa !320
  %indvars.iv.next.i124 = add nuw nsw i64 %indvars.iv.i122, 1, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i124, metadata !1259, metadata !DIExpression()), !dbg !1264
  %exitcond.not.i125 = icmp eq i64 %indvars.iv.next.i124, %wide.trip.count.i121, !dbg !1283
  br i1 %exitcond.not.i125, label %for.inc20.i, label %for.body12.i, !dbg !1286, !llvm.loop !1292

for.inc20.i:                                      ; preds = %for.body12.i, %for.body4.i
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next52.i, metadata !1260, metadata !DIExpression()), !dbg !1264
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i, !dbg !1274
  br i1 %exitcond55.not.i, label %for.inc23.i, label %for.body4.i, !dbg !1277, !llvm.loop !1295

for.inc23.i:                                      ; preds = %for.inc20.i, %for.body.i114
  %s_next.i126 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i, i64 0, i32 4, !dbg !1297
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1261, metadata !DIExpression()), !dbg !1264
  %sp.0.i127 = load %struct.strand_t*, %struct.strand_t** %s_next.i126, align 8, !dbg !1266, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i127, metadata !1261, metadata !DIExpression()), !dbg !1264
  %tobool.not.i128 = icmp eq %struct.strand_t* %sp.0.i127, null, !dbg !1268
  br i1 %tobool.not.i128, label %or_select.exit, label %for.body.i114, !dbg !1268, !llvm.loop !1298

or_select.exit:                                   ; preds = %for.inc23.i, %eval_1_aexpr.exit
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !375, metadata !DIExpression()), !dbg !378
  %tobool14.not = icmp eq i8* %n_aep.1, null, !dbg !1300
  br i1 %tobool14.not, label %if.end17, label %if.then15, !dbg !1302

if.then15:                                        ; preds = %or_select.exit
  %call16 = tail call i8* @strchr(i8* noundef nonnull %n_aep.1, i32 noundef 124) #14, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %call16, metadata !376, metadata !DIExpression()), !dbg !378
  br label %if.end17, !dbg !1304

if.end17:                                         ; preds = %if.then15, %or_select.exit
  %n_aep.2 = phi i8* [ %call16, %if.then15 ], [ null, %or_select.exit ], !dbg !1305
  call void @llvm.dbg.value(metadata i8* %n_aep.2, metadata !376, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !469, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.047.i, metadata !472, metadata !DIExpression()), !dbg !1306
  br i1 %tobool.not48.i, label %clear_select.exit164.thread, label %for.body.i137, !dbg !1308

for.body.i137:                                    ; preds = %if.end17, %for.inc13.i163
  %sp.035.i132 = phi %struct.strand_t* [ %sp.0.i161, %for.inc13.i163 ], [ %sp.047.i, %if.end17 ]
  %s_attr.i133 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i132, i64 0, i32 2, !dbg !1309
  %208 = load i32, i32* %s_attr.i133, align 4, !dbg !1310, !tbaa !290
  %and.i134 = and i32 %208, -2, !dbg !1310
  store i32 %and.i134, i32* %s_attr.i133, align 4, !dbg !1310, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !471, metadata !DIExpression()), !dbg !1306
  %s_nresidues.i135 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i132, i64 0, i32 5
  %209 = load i32, i32* %s_nresidues.i135, align 8, !tbaa !295
  %cmp31.i136 = icmp sgt i32 %209, 0, !dbg !1311
  br i1 %cmp31.i136, label %for.body2.lr.ph.i140, label %for.inc13.i163, !dbg !1312

for.body2.lr.ph.i140:                             ; preds = %for.body.i137
  %s_residues.i138 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i132, i64 0, i32 7
  %210 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i138, align 8, !tbaa !301
  %wide.trip.count40.i139 = zext i32 %209 to i64, !dbg !1311
  br label %for.body2.i147, !dbg !1312

for.body2.i147:                                   ; preds = %for.inc10.i159, %for.body2.lr.ph.i140
  %indvars.iv37.i141 = phi i64 [ 0, %for.body2.lr.ph.i140 ], [ %indvars.iv.next38.i157, %for.inc10.i159 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37.i141, metadata !471, metadata !DIExpression()), !dbg !1306
  %arrayidx.i142 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %210, i64 %indvars.iv37.i141, !dbg !1313
  %211 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i142, align 8, !dbg !1313, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %211, metadata !473, metadata !DIExpression()), !dbg !1306
  %r_attr.i143 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %211, i64 0, i32 6, !dbg !1314
  %212 = load i32, i32* %r_attr.i143, align 8, !dbg !1315, !tbaa !306
  %and3.i144 = and i32 %212, -2, !dbg !1315
  store i32 %and3.i144, i32* %r_attr.i143, align 8, !dbg !1315, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()), !dbg !1306
  %r_natoms.i145 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %211, i64 0, i32 15
  %213 = load i32, i32* %r_natoms.i145, align 8, !tbaa !310
  %cmp529.i146 = icmp sgt i32 %213, 0, !dbg !1316
  br i1 %cmp529.i146, label %for.body6.lr.ph.i150, label %for.inc10.i159, !dbg !1317

for.body6.lr.ph.i150:                             ; preds = %for.body2.i147
  %r_atoms.i148 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %211, i64 0, i32 17
  %214 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i148, align 8, !tbaa !316
  %wide.trip.count.i149 = zext i32 %213 to i64, !dbg !1316
  br label %for.body6.i156, !dbg !1317

for.body6.i156:                                   ; preds = %for.body6.i156, %for.body6.lr.ph.i150
  %indvars.iv.i151 = phi i64 [ 0, %for.body6.lr.ph.i150 ], [ %indvars.iv.next.i154, %for.body6.i156 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i151, metadata !470, metadata !DIExpression()), !dbg !1306
  %a_attr.i152 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %214, i64 %indvars.iv.i151, i32 2, !dbg !1318
  %215 = load i32, i32* %a_attr.i152, align 8, !dbg !1319, !tbaa !320
  %and9.i153 = and i32 %215, -2, !dbg !1319
  store i32 %and9.i153, i32* %a_attr.i152, align 8, !dbg !1319, !tbaa !320
  %indvars.iv.next.i154 = add nuw nsw i64 %indvars.iv.i151, 1, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i154, metadata !470, metadata !DIExpression()), !dbg !1306
  %exitcond.not.i155 = icmp eq i64 %indvars.iv.next.i154, %wide.trip.count.i149, !dbg !1316
  br i1 %exitcond.not.i155, label %for.inc10.i159, label %for.body6.i156, !dbg !1317, !llvm.loop !1321

for.inc10.i159:                                   ; preds = %for.body6.i156, %for.body2.i147
  %indvars.iv.next38.i157 = add nuw nsw i64 %indvars.iv37.i141, 1, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38.i157, metadata !471, metadata !DIExpression()), !dbg !1306
  %exitcond41.not.i158 = icmp eq i64 %indvars.iv.next38.i157, %wide.trip.count40.i139, !dbg !1311
  br i1 %exitcond41.not.i158, label %for.inc13.i163, label %for.body2.i147, !dbg !1312, !llvm.loop !1324

for.inc13.i163:                                   ; preds = %for.inc10.i159, %for.body.i137
  %s_next.i160 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.035.i132, i64 0, i32 4, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !472, metadata !DIExpression()), !dbg !1306
  %sp.0.i161 = load %struct.strand_t*, %struct.strand_t** %s_next.i160, align 8, !dbg !1327, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i161, metadata !472, metadata !DIExpression()), !dbg !1306
  %tobool.not.i162 = icmp eq %struct.strand_t* %sp.0.i161, null, !dbg !1308
  br i1 %tobool.not.i162, label %clear_select.exit164, label %for.body.i137, !dbg !1308, !llvm.loop !1328

clear_select.exit164:                             ; preds = %for.inc13.i163
  call void @llvm.dbg.value(metadata i8* %n_aep.2, metadata !376, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !375, metadata !DIExpression()), !dbg !378
  br i1 %tobool14.not, label %for.body.i174, label %for.body.backedge, !dbg !504

for.body.backedge:                                ; preds = %clear_select.exit164, %clear_select.exit164.thread
  br label %for.body, !dbg !378, !llvm.loop !1330

clear_select.exit164.thread:                      ; preds = %if.end17
  call void @llvm.dbg.value(metadata i8* %n_aep.2, metadata !376, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !375, metadata !DIExpression()), !dbg !378
  br i1 %tobool14.not, label %cleanup, label %for.body.backedge, !dbg !504

for.body.i174:                                    ; preds = %clear_select.exit164, %for.inc23.i202
  %sp.049.i168 = phi %struct.strand_t* [ %sp.0.i200, %for.inc23.i202 ], [ %sp.047.i, %clear_select.exit164 ]
  %s_attr.i169 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i168, i64 0, i32 2, !dbg !1332
  %216 = load i32, i32* %s_attr.i169, align 4, !dbg !1332, !tbaa !290
  %and.i170 = lshr i32 %216, 7, !dbg !1345
  %and.lobit.i = and i32 %and.i170, 1, !dbg !1345
  %or.i171 = or i32 %and.lobit.i, %216, !dbg !1346
  store i32 %or.i171, i32* %s_attr.i169, align 4, !dbg !1346, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1347
  %s_nresidues.i172 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i168, i64 0, i32 5
  %217 = load i32, i32* %s_nresidues.i172, align 8, !tbaa !295
  %cmp45.i173 = icmp sgt i32 %217, 0, !dbg !1348
  br i1 %cmp45.i173, label %for.body4.lr.ph.i177, label %for.inc23.i202, !dbg !1351

for.body4.lr.ph.i177:                             ; preds = %for.body.i174
  %s_residues.i175 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i168, i64 0, i32 7
  %218 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i175, align 8, !tbaa !301
  %wide.trip.count54.i176 = zext i32 %217 to i64, !dbg !1348
  br label %for.body4.i185, !dbg !1351

for.body4.i185:                                   ; preds = %for.inc20.i198, %for.body4.lr.ph.i177
  %indvars.iv51.i178 = phi i64 [ 0, %for.body4.lr.ph.i177 ], [ %indvars.iv.next52.i196, %for.inc20.i198 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv51.i178, metadata !1340, metadata !DIExpression()), !dbg !1347
  %arrayidx.i179 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %218, i64 %indvars.iv51.i178, !dbg !1352
  %219 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i179, align 8, !dbg !1352, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %219, metadata !1342, metadata !DIExpression()), !dbg !1347
  %r_attr.i180 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %219, i64 0, i32 6, !dbg !1354
  %220 = load i32, i32* %r_attr.i180, align 8, !dbg !1354, !tbaa !306
  %and5.i181 = lshr i32 %220, 7, !dbg !1355
  %and5.lobit.i = and i32 %and5.i181, 1, !dbg !1355
  %or9.i182 = or i32 %and5.lobit.i, %220, !dbg !1356
  store i32 %or9.i182, i32* %r_attr.i180, align 8, !dbg !1356, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !1339, metadata !DIExpression()), !dbg !1347
  %r_natoms.i183 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %219, i64 0, i32 15
  %221 = load i32, i32* %r_natoms.i183, align 8, !tbaa !310
  %cmp1143.i184 = icmp sgt i32 %221, 0, !dbg !1357
  br i1 %cmp1143.i184, label %for.body12.lr.ph.i188, label %for.inc20.i198, !dbg !1360

for.body12.lr.ph.i188:                            ; preds = %for.body4.i185
  %r_atoms.i186 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %219, i64 0, i32 17
  %222 = load %struct.atom_t*, %struct.atom_t** %r_atoms.i186, align 8, !tbaa !316
  %wide.trip.count.i187 = zext i32 %221 to i64, !dbg !1357
  br label %for.body12.i195, !dbg !1360

for.body12.i195:                                  ; preds = %for.body12.i195, %for.body12.lr.ph.i188
  %indvars.iv.i189 = phi i64 [ 0, %for.body12.lr.ph.i188 ], [ %indvars.iv.next.i193, %for.body12.i195 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i189, metadata !1339, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %222, i64 %indvars.iv.i189), metadata !1343, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1347
  %a_attr.i190 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %222, i64 %indvars.iv.i189, i32 2, !dbg !1361
  %223 = load i32, i32* %a_attr.i190, align 8, !dbg !1361, !tbaa !320
  %and15.i191 = lshr i32 %223, 7, !dbg !1363
  %and15.lobit.i = and i32 %and15.i191, 1, !dbg !1363
  %or19.i192 = or i32 %and15.lobit.i, %223, !dbg !1364
  store i32 %or19.i192, i32* %a_attr.i190, align 8, !dbg !1364, !tbaa !320
  %indvars.iv.next.i193 = add nuw nsw i64 %indvars.iv.i189, 1, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i193, metadata !1339, metadata !DIExpression()), !dbg !1347
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i193, %wide.trip.count.i187, !dbg !1357
  br i1 %exitcond.not.i194, label %for.inc20.i198, label %for.body12.i195, !dbg !1360, !llvm.loop !1366

for.inc20.i198:                                   ; preds = %for.body12.i195, %for.body4.i185
  %indvars.iv.next52.i196 = add nuw nsw i64 %indvars.iv51.i178, 1, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next52.i196, metadata !1340, metadata !DIExpression()), !dbg !1347
  %exitcond55.not.i197 = icmp eq i64 %indvars.iv.next52.i196, %wide.trip.count54.i176, !dbg !1348
  br i1 %exitcond55.not.i197, label %for.inc23.i202, label %for.body4.i185, !dbg !1351, !llvm.loop !1369

for.inc23.i202:                                   ; preds = %for.inc20.i198, %for.body.i174
  %s_next.i199 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.049.i168, i64 0, i32 4, !dbg !1371
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1341, metadata !DIExpression()), !dbg !1347
  %sp.0.i200 = load %struct.strand_t*, %struct.strand_t** %s_next.i199, align 8, !dbg !1372, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0.i200, metadata !1341, metadata !DIExpression()), !dbg !1347
  %tobool.not.i201 = icmp eq %struct.strand_t* %sp.0.i200, null, !dbg !1373
  br i1 %tobool.not.i201, label %cleanup, label %for.body.i174, !dbg !1373, !llvm.loop !1374

cleanup:                                          ; preds = %clear_select.exit164.thread, %for.inc23.i202, %for.inc13.i, %if.then, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 0, %if.then ], [ 0, %for.inc13.i ], [ 0, %for.inc23.i202 ], [ 0, %clear_select.exit164.thread ], !dbg !378
  ret i32 %retval.0, !dbg !1376
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
define dso_local i32 @atom_in_aexpr(%struct.atom_t* nocapture noundef readonly %ap, i8* noundef %aex) local_unnamed_addr #0 !dbg !1377 {
entry:
  %lo.i = alloca i32, align 4
  %hi.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap, metadata !1381, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %aex, metadata !1382, metadata !DIExpression()), !dbg !1386
  %cmp = icmp eq i8* %aex, null, !dbg !1387
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1389

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %aex, metadata !1383, metadata !DIExpression()), !dbg !1386
  %call = tail call i8* @strchr(i8* noundef nonnull %aex, i32 noundef 124) #14, !dbg !1390
  call void @llvm.dbg.value(metadata i8* %call, metadata !1384, metadata !DIExpression()), !dbg !1386
  %0 = bitcast i32* %lo.i to i8*
  %1 = bitcast i32* %hi.i to i8*
  %ap.idx1.i = getelementptr %struct.atom_t, %struct.atom_t* %ap, i64 0, i32 5
  %a_atomname.i.i = getelementptr inbounds %struct.atom_t, %struct.atom_t* %ap, i64 0, i32 0
  call void @llvm.dbg.value(metadata i8* %call, metadata !1384, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %aex, metadata !1383, metadata !DIExpression()), !dbg !1386
  br label %for.body, !dbg !1392

for.body:                                         ; preds = %if.end20, %if.end
  %n_aep.053 = phi i8* [ %call, %if.end ], [ %call19, %if.end20 ]
  %aep.051 = phi i8* [ %aex, %if.end ], [ %n_aep.1, %if.end20 ]
  call void @llvm.dbg.value(metadata i8* %n_aep.053, metadata !1384, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %aep.051, metadata !1383, metadata !DIExpression()), !dbg !1386
  %tobool1.not = icmp eq i8* %n_aep.053, null, !dbg !1393
  br i1 %tobool1.not, label %if.else, label %if.then2, !dbg !1397

if.then2:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8* %n_aep.053 to i64, !dbg !1398
  %sub.ptr.rhs.cast = ptrtoint i8* %aep.051 to i64, !dbg !1398
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1385, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1386
  %incdec.ptr = getelementptr inbounds i8, i8* %n_aep.053, i64 1, !dbg !1400
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1384, metadata !DIExpression()), !dbg !1386
  br label %if.end5, !dbg !1401

if.else:                                          ; preds = %for.body
  %call3 = tail call i64 @strlen(i8* noundef nonnull %aep.051) #14, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %call3, metadata !1385, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1386
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %n_aep.1 = phi i8* [ %incdec.ptr, %if.then2 ], [ null, %if.else ], !dbg !1403
  %ael.0.in = phi i64 [ %sub.ptr.sub, %if.then2 ], [ %call3, %if.else ]
  %ael.0 = trunc i64 %ael.0.in to i32, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %ael.0, metadata !1385, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !1384, metadata !DIExpression()), !dbg !1386
  %cmp6 = icmp sgt i32 %ael.0, 999, !dbg !1405
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !1407

if.then8:                                         ; preds = %if.end5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1408, !tbaa !281
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %2) #13, !dbg !1410
  br label %cleanup, !dbg !1411

if.end10:                                         ; preds = %if.end5
  %sext = shl i64 %ael.0.in, 32, !dbg !1412
  %conv11 = ashr exact i64 %sext, 32, !dbg !1412
  %call12 = tail call i8* @strncpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* noundef nonnull %aep.051, i64 noundef %conv11) #15, !dbg !1413
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %conv11, !dbg !1414
  store i8 0, i8* %arrayidx, align 1, !dbg !1415, !tbaa !528
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap, metadata !1416, metadata !DIExpression()) #15, !dbg !1426
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1419, metadata !DIExpression()) #15, !dbg !1426
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15, !dbg !1429
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #15, !dbg !1429
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), metadata !1420, metadata !DIExpression()) #15, !dbg !1426
  %4 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), align 16, !dbg !1430, !tbaa !528
  %cmp.i = icmp eq i8 %4, 58, !dbg !1432
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !1433

if.then.i:                                        ; preds = %if.end10
  store i8* null, i8** @spart, align 8, !dbg !1434, !tbaa !281
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), metadata !1420, metadata !DIExpression()) #15, !dbg !1426
  br label %if.end.i, !dbg !1436

if.else.i:                                        ; preds = %if.end10
  %call.i = tail call i8* @strtok(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1437
  store i8* %call.i, i8** @spart, align 8, !dbg !1439, !tbaa !281
  %call2.i = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %call.i) #14, !dbg !1440
  %add.i = add i64 %call2.i, 1, !dbg !1441
  %add.ptr.i = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %add.i, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %add.ptr.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1426
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %aep.0.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 1), %if.then.i ], [ %add.ptr.i, %if.else.i ], !dbg !1443
  call void @llvm.dbg.value(metadata i8* %aep.0.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1426
  %5 = load i8, i8* %aep.0.i, align 1, !dbg !1444, !tbaa !528
  %cmp4.i = icmp eq i8 %5, 58, !dbg !1446
  br i1 %cmp4.i, label %if.then6.i, label %if.else8.i, !dbg !1447

if.then6.i:                                       ; preds = %if.end.i
  store i8* null, i8** @rpart, align 8, !dbg !1448, !tbaa !281
  call void @llvm.dbg.value(metadata i8* undef, metadata !1420, metadata !DIExpression()) #15, !dbg !1426
  br label %if.end13.i, !dbg !1450

if.else8.i:                                       ; preds = %if.end.i
  %call9.i = tail call i8* @strtok(i8* noundef nonnull %aep.0.i, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1451
  store i8* %call9.i, i8** @rpart, align 8, !dbg !1453, !tbaa !281
  %call10.i = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %call9.i) #14, !dbg !1454
  %add11.i = add i64 %call10.i, 1, !dbg !1455
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else8.i, %if.then6.i
  %add11.sink.i = phi i64 [ %add11.i, %if.else8.i ], [ 1, %if.then6.i ]
  %add.ptr12.i = getelementptr inbounds i8, i8* %aep.0.i, i64 %add11.sink.i, !dbg !1456
  call void @llvm.dbg.value(metadata i8* %add.ptr12.i, metadata !1420, metadata !DIExpression()) #15, !dbg !1426
  %call14.i = tail call i8* @strtok(i8* noundef nonnull %add.ptr12.i, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1457
  store i8* %call14.i, i8** @apart, align 8, !dbg !1458, !tbaa !281
  %6 = load i8*, i8** @spart, align 8, !dbg !1459, !tbaa !281
  %tobool.not.i = icmp eq i8* %6, null, !dbg !1459
  br i1 %tobool.not.i, label %RPART.i, label %if.then15.i, !dbg !1461

if.then15.i:                                      ; preds = %if.end13.i
  %call16.i = tail call i8* @strtok(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1462
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !1421, metadata !DIExpression()) #15, !dbg !1426
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1423, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  %call17.i = call fastcc i32 @is_pattern(i8* noundef %call16.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1464
  %tobool18.not.i = icmp eq i32 %call17.i, 0, !dbg !1464
  br i1 %tobool18.not.i, label %if.else24.i, label %if.then19.i, !dbg !1466

if.then19.i:                                      ; preds = %if.then15.i
  %ap.idx1.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1467, !tbaa !1470
  %ap.idx1.val.idx.i = getelementptr %struct.residue_t, %struct.residue_t* %ap.idx1.val.i, i64 0, i32 9, !dbg !1467
  %ap.idx1.val.idx.val.i = load %struct.strand_t*, %struct.strand_t** %ap.idx1.val.idx.i, align 8, !dbg !1467, !tbaa !1471
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1472, metadata !DIExpression()) #15, !dbg !1478
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !1475, metadata !DIExpression()) #15, !dbg !1478
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1476, metadata !DIExpression()) #15, !dbg !1478
  call void @llvm.dbg.value(metadata %struct.strand_t* %ap.idx1.val.idx.val.i, metadata !1477, metadata !DIExpression()) #15, !dbg !1478
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !586, metadata !DIExpression()) #15, !dbg !1480
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !1480
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !593, metadata !DIExpression()) #15, !dbg !1480
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !1480
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1482, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call16.i, metadata !592, metadata !DIExpression()) #15, !dbg !1480
  br label %for.cond.i.i.i, !dbg !1483

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.then19.i
  %aep.0.i.i.i = phi i8* [ %call16.i, %if.then19.i ], [ %incdec.ptr12.i.i.i, %for.inc.i.i.i ], !dbg !1484
  %rep.0.i.i.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then19.i ], [ %rep.1.i.i.i, %for.inc.i.i.i ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i.i, metadata !592, metadata !DIExpression()) #15, !dbg !1480
  %7 = load i8, i8* %aep.0.i.i.i, align 1, !dbg !1485, !tbaa !528
  switch i8 %7, label %if.else9.i.i.i [
    i8 0, label %atom_in_str_pat.exit.i
    i8 42, label %if.then.i.i.i
    i8 63, label %if.then7.i.i.i
  ], !dbg !1486

if.then.i.i.i:                                    ; preds = %for.cond.i.i.i
  %incdec.ptr2.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !1487
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1480
  store i8 46, i8* %rep.0.i.i.i, align 1, !dbg !1488, !tbaa !528
  %incdec.ptr3.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 2, !dbg !1489
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1480
  store i8 42, i8* %incdec.ptr2.i.i.i, align 1, !dbg !1490, !tbaa !528
  br label %for.inc.i.i.i, !dbg !1491

if.then7.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr8.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !1492
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1480
  store i8 46, i8* %rep.0.i.i.i, align 1, !dbg !1493, !tbaa !528
  br label %for.inc.i.i.i, !dbg !1494

if.else9.i.i.i:                                   ; preds = %for.cond.i.i.i
  %incdec.ptr10.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !1495
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1480
  store i8 %7, i8* %rep.0.i.i.i, align 1, !dbg !1496, !tbaa !528
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else9.i.i.i, %if.then7.i.i.i, %if.then.i.i.i
  %rep.1.i.i.i = phi i8* [ %incdec.ptr3.i.i.i, %if.then.i.i.i ], [ %incdec.ptr8.i.i.i, %if.then7.i.i.i ], [ %incdec.ptr10.i.i.i, %if.else9.i.i.i ], !dbg !1497
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1480
  %incdec.ptr12.i.i.i = getelementptr inbounds i8, i8* %aep.0.i.i.i, i64 1, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i.i, metadata !592, metadata !DIExpression()) #15, !dbg !1480
  br label %for.cond.i.i.i, !dbg !1499, !llvm.loop !1500

atom_in_str_pat.exit.i:                           ; preds = %for.cond.i.i.i
  %incdec.ptr13.i.i.i = getelementptr inbounds i8, i8* %rep.0.i.i.i, i64 1, !dbg !1502
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i.i, metadata !593, metadata !DIExpression()) #15, !dbg !1480
  store i8 36, i8* %rep.0.i.i.i, align 1, !dbg !1503, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i.i, align 1, !dbg !1504, !tbaa !528
  %call.i.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1505
  %s_strandname.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %ap.idx1.val.idx.val.i, i64 0, i32 0, !dbg !1506
  %8 = load i8*, i8** %s_strandname.i.i, align 8, !dbg !1506, !tbaa !632
  %call1.i.i = tail call i32 @step(i8* noundef %8, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1507
  %tobool21.not.i = icmp eq i32 %call1.i.i, 0, !dbg !1467
  br i1 %tobool21.not.i, label %if.end29.i, label %RPART.i, !dbg !1508

if.else24.i:                                      ; preds = %if.then15.i
  %9 = load i32, i32* %lo.i, align 4, !dbg !1509, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %9, metadata !1422, metadata !DIExpression()) #15, !dbg !1426
  %10 = load i32, i32* %hi.i, align 4, !dbg !1511, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %10, metadata !1423, metadata !DIExpression()) #15, !dbg !1426
  %ap.idx3.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1512, !tbaa !1470
  %ap.idx3.val.idx.i = getelementptr %struct.residue_t, %struct.residue_t* %ap.idx3.val.i, i64 0, i32 9, !dbg !1512
  %ap.idx3.val.idx.val.i = load %struct.strand_t*, %struct.strand_t** %ap.idx3.val.idx.i, align 8, !dbg !1512, !tbaa !1471
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1513, metadata !DIExpression()) #15, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %9, metadata !1518, metadata !DIExpression()) #15, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %10, metadata !1519, metadata !DIExpression()) #15, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1521, metadata !DIExpression()) #15, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.strand_t* %ap.idx3.val.idx.val.i, metadata !1522, metadata !DIExpression()) #15, !dbg !1525
  %s_molecule.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %ap.idx3.val.idx.val.i, i64 0, i32 3, !dbg !1527
  %11 = load %struct.molecule_t*, %struct.molecule_t** %s_molecule.i.i, align 8, !dbg !1527, !tbaa !1528
  call void @llvm.dbg.value(metadata %struct.molecule_t* %11, metadata !1524, metadata !DIExpression()) #15, !dbg !1525
  %cmp.i.i = icmp eq i32 %10, -1, !dbg !1529
  %m_nstrands.i.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %11, i64 0, i32 1
  %12 = load i32, i32* %m_nstrands.i.i, align 8, !tbaa !655
  %.hi.i.i = select i1 %cmp.i.i, i32 %12, i32 %10, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %.hi.i.i, metadata !1519, metadata !DIExpression()) #15, !dbg !1525
  call void @llvm.dbg.value(metadata i32 1, metadata !1520, metadata !DIExpression()) #15, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1523, metadata !DIExpression()) #15, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1523, metadata !DIExpression()) #15, !dbg !1525
  call void @llvm.dbg.value(metadata i32 1, metadata !1520, metadata !DIExpression()) #15, !dbg !1525
  %cmp2.not2.i.i = icmp slt i32 %12, 1, !dbg !1531
  br i1 %cmp2.not2.i.i, label %if.end29.i, label %for.body.preheader.i.i, !dbg !1534

for.body.preheader.i.i:                           ; preds = %if.else24.i
  %m_strands.i.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %11, i64 0, i32 2, !dbg !1535
  br label %for.body.i.i, !dbg !1534

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.preheader.i.i
  %sp1.04.in.i.i = phi %struct.strand_t** [ %s_next.i.i, %for.inc.i.i ], [ %m_strands.i.i, %for.body.preheader.i.i ]
  %m.03.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 1, %for.body.preheader.i.i ]
  %sp1.04.i.i = load %struct.strand_t*, %struct.strand_t** %sp1.04.in.i.i, align 8, !dbg !1536, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %m.03.i.i, metadata !1520, metadata !DIExpression()) #15, !dbg !1525
  %cmp3.i.i = icmp ne %struct.strand_t* %sp1.04.i.i, %ap.idx3.val.idx.val.i, !dbg !1537
  %cmp5.not.i.i = icmp slt i32 %m.03.i.i, %9
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %cmp5.not.i.i, !dbg !1540
  %cmp6.not.i.i = icmp sgt i32 %m.03.i.i, %.hi.i.i
  %or.cond27.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp6.not.i.i, !dbg !1540
  br i1 %or.cond27.i.i, label %for.inc.i.i, label %RPART.i, !dbg !1540

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %m.03.i.i, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %inc.i.i, metadata !1520, metadata !DIExpression()) #15, !dbg !1525
  %s_next.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.04.i.i, i64 0, i32 4, !dbg !1542
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1523, metadata !DIExpression()) #15, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1523, metadata !DIExpression()) #15, !dbg !1525
  %exitcond.not.i.i = icmp eq i32 %m.03.i.i, %12, !dbg !1531
  br i1 %exitcond.not.i.i, label %if.end29.i, label %for.body.i.i, !dbg !1534, !llvm.loop !1543

if.end29.i:                                       ; preds = %for.inc.i.i, %if.else24.i, %atom_in_str_pat.exit.i
  %call30157.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %call30157.i, metadata !1421, metadata !DIExpression()) #15, !dbg !1426
  %tobool31.not158.i = icmp eq i8* %call30157.i, null, !dbg !1546
  br i1 %tobool31.not158.i, label %if.end16, label %while.body.i, !dbg !1546

while.body.i:                                     ; preds = %if.end29.i, %if.end44.i
  %call30159.i = phi i8* [ %call30.i, %if.end44.i ], [ %call30157.i, %if.end29.i ]
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1423, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  %call32.i = call fastcc i32 @is_pattern(i8* noundef nonnull %call30159.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1547
  %tobool33.not.i = icmp eq i32 %call32.i, 0, !dbg !1547
  br i1 %tobool33.not.i, label %if.else39.i, label %if.then34.i, !dbg !1550

if.then34.i:                                      ; preds = %while.body.i
  %ap.idx.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1551, !tbaa !1470
  %ap.idx.val.idx.i = getelementptr %struct.residue_t, %struct.residue_t* %ap.idx.val.i, i64 0, i32 9, !dbg !1551
  %ap.idx.val.idx.val.i = load %struct.strand_t*, %struct.strand_t** %ap.idx.val.idx.i, align 8, !dbg !1551, !tbaa !1471
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1472, metadata !DIExpression()) #15, !dbg !1554
  call void @llvm.dbg.value(metadata i8* %call30159.i, metadata !1475, metadata !DIExpression()) #15, !dbg !1554
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1476, metadata !DIExpression()) #15, !dbg !1554
  call void @llvm.dbg.value(metadata %struct.strand_t* %ap.idx.val.idx.val.i, metadata !1477, metadata !DIExpression()) #15, !dbg !1554
  call void @llvm.dbg.value(metadata i8* %call30159.i, metadata !586, metadata !DIExpression()) #15, !dbg !1556
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !1556
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !1556
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1558, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call30159.i, metadata !592, metadata !DIExpression()) #15, !dbg !1556
  br label %for.cond.i.i10.i, !dbg !1559

for.cond.i.i10.i:                                 ; preds = %for.inc.i.i20.i, %if.then34.i
  %aep.0.i.i8.i = phi i8* [ %call30159.i, %if.then34.i ], [ %incdec.ptr12.i.i19.i, %for.inc.i.i20.i ], !dbg !1560
  %rep.0.i.i9.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then34.i ], [ %rep.1.i.i18.i, %for.inc.i.i20.i ], !dbg !1556
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i9.i, metadata !593, metadata !DIExpression()) #15, !dbg !1556
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i8.i, metadata !592, metadata !DIExpression()) #15, !dbg !1556
  %13 = load i8, i8* %aep.0.i.i8.i, align 1, !dbg !1561, !tbaa !528
  switch i8 %13, label %if.else9.i.i17.i [
    i8 0, label %atom_in_str_pat.exit25.i
    i8 42, label %if.then.i.i13.i
    i8 63, label %if.then7.i.i15.i
  ], !dbg !1562

if.then.i.i13.i:                                  ; preds = %for.cond.i.i10.i
  %incdec.ptr2.i.i11.i = getelementptr inbounds i8, i8* %rep.0.i.i9.i, i64 1, !dbg !1563
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i11.i, metadata !593, metadata !DIExpression()) #15, !dbg !1556
  store i8 46, i8* %rep.0.i.i9.i, align 1, !dbg !1564, !tbaa !528
  %incdec.ptr3.i.i12.i = getelementptr inbounds i8, i8* %rep.0.i.i9.i, i64 2, !dbg !1565
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i12.i, metadata !593, metadata !DIExpression()) #15, !dbg !1556
  store i8 42, i8* %incdec.ptr2.i.i11.i, align 1, !dbg !1566, !tbaa !528
  br label %for.inc.i.i20.i, !dbg !1567

if.then7.i.i15.i:                                 ; preds = %for.cond.i.i10.i
  %incdec.ptr8.i.i14.i = getelementptr inbounds i8, i8* %rep.0.i.i9.i, i64 1, !dbg !1568
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i14.i, metadata !593, metadata !DIExpression()) #15, !dbg !1556
  store i8 46, i8* %rep.0.i.i9.i, align 1, !dbg !1569, !tbaa !528
  br label %for.inc.i.i20.i, !dbg !1570

if.else9.i.i17.i:                                 ; preds = %for.cond.i.i10.i
  %incdec.ptr10.i.i16.i = getelementptr inbounds i8, i8* %rep.0.i.i9.i, i64 1, !dbg !1571
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i16.i, metadata !593, metadata !DIExpression()) #15, !dbg !1556
  store i8 %13, i8* %rep.0.i.i9.i, align 1, !dbg !1572, !tbaa !528
  br label %for.inc.i.i20.i

for.inc.i.i20.i:                                  ; preds = %if.else9.i.i17.i, %if.then7.i.i15.i, %if.then.i.i13.i
  %rep.1.i.i18.i = phi i8* [ %incdec.ptr3.i.i12.i, %if.then.i.i13.i ], [ %incdec.ptr8.i.i14.i, %if.then7.i.i15.i ], [ %incdec.ptr10.i.i16.i, %if.else9.i.i17.i ], !dbg !1573
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i18.i, metadata !593, metadata !DIExpression()) #15, !dbg !1556
  %incdec.ptr12.i.i19.i = getelementptr inbounds i8, i8* %aep.0.i.i8.i, i64 1, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i19.i, metadata !592, metadata !DIExpression()) #15, !dbg !1556
  br label %for.cond.i.i10.i, !dbg !1575, !llvm.loop !1576

atom_in_str_pat.exit25.i:                         ; preds = %for.cond.i.i10.i
  %incdec.ptr13.i.i21.i = getelementptr inbounds i8, i8* %rep.0.i.i9.i, i64 1, !dbg !1578
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i21.i, metadata !593, metadata !DIExpression()) #15, !dbg !1556
  store i8 36, i8* %rep.0.i.i9.i, align 1, !dbg !1579, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i21.i, align 1, !dbg !1580, !tbaa !528
  %call.i22.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1581
  %s_strandname.i23.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %ap.idx.val.idx.val.i, i64 0, i32 0, !dbg !1582
  %14 = load i8*, i8** %s_strandname.i23.i, align 8, !dbg !1582, !tbaa !632
  %call1.i24.i = tail call i32 @step(i8* noundef %14, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1583
  %tobool36.not.i = icmp eq i32 %call1.i24.i, 0, !dbg !1551
  br i1 %tobool36.not.i, label %if.end44.i, label %RPART.i, !dbg !1584

if.else39.i:                                      ; preds = %while.body.i
  %15 = load i32, i32* %lo.i, align 4, !dbg !1585, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %15, metadata !1422, metadata !DIExpression()) #15, !dbg !1426
  %16 = load i32, i32* %hi.i, align 4, !dbg !1587, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %16, metadata !1423, metadata !DIExpression()) #15, !dbg !1426
  %ap.idx2.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1588, !tbaa !1470
  %ap.idx2.val.idx.i = getelementptr %struct.residue_t, %struct.residue_t* %ap.idx2.val.i, i64 0, i32 9, !dbg !1588
  %ap.idx2.val.idx.val.i = load %struct.strand_t*, %struct.strand_t** %ap.idx2.val.idx.i, align 8, !dbg !1588, !tbaa !1471
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1513, metadata !DIExpression()) #15, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %15, metadata !1518, metadata !DIExpression()) #15, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %16, metadata !1519, metadata !DIExpression()) #15, !dbg !1589
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1521, metadata !DIExpression()) #15, !dbg !1589
  call void @llvm.dbg.value(metadata %struct.strand_t* %ap.idx2.val.idx.val.i, metadata !1522, metadata !DIExpression()) #15, !dbg !1589
  %s_molecule.i26.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %ap.idx2.val.idx.val.i, i64 0, i32 3, !dbg !1591
  %17 = load %struct.molecule_t*, %struct.molecule_t** %s_molecule.i26.i, align 8, !dbg !1591, !tbaa !1528
  call void @llvm.dbg.value(metadata %struct.molecule_t* %17, metadata !1524, metadata !DIExpression()) #15, !dbg !1589
  %cmp.i27.i = icmp eq i32 %16, -1, !dbg !1592
  %m_nstrands.i28.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %17, i64 0, i32 1
  %18 = load i32, i32* %m_nstrands.i28.i, align 8, !tbaa !655
  %.hi.i29.i = select i1 %cmp.i27.i, i32 %18, i32 %16, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %.hi.i29.i, metadata !1519, metadata !DIExpression()) #15, !dbg !1589
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1523, metadata !DIExpression()) #15, !dbg !1589
  call void @llvm.dbg.value(metadata i32 1, metadata !1520, metadata !DIExpression()) #15, !dbg !1589
  %cmp2.not2.i30.i = icmp slt i32 %18, 1, !dbg !1593
  br i1 %cmp2.not2.i30.i, label %if.end44.i, label %for.body.preheader.i32.i, !dbg !1594

for.body.preheader.i32.i:                         ; preds = %if.else39.i
  %m_strands.i31.i = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %17, i64 0, i32 2, !dbg !1595
  br label %for.body.i41.i, !dbg !1594

for.body.i41.i:                                   ; preds = %for.inc.i45.i, %for.body.preheader.i32.i
  %sp1.04.in.i33.i = phi %struct.strand_t** [ %s_next.i43.i, %for.inc.i45.i ], [ %m_strands.i31.i, %for.body.preheader.i32.i ]
  %m.03.i34.i = phi i32 [ %inc.i42.i, %for.inc.i45.i ], [ 1, %for.body.preheader.i32.i ]
  %sp1.04.i35.i = load %struct.strand_t*, %struct.strand_t** %sp1.04.in.i33.i, align 8, !dbg !1596, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %m.03.i34.i, metadata !1520, metadata !DIExpression()) #15, !dbg !1589
  %cmp3.i36.i = icmp ne %struct.strand_t* %sp1.04.i35.i, %ap.idx2.val.idx.val.i, !dbg !1597
  %cmp5.not.i37.i = icmp slt i32 %m.03.i34.i, %15
  %or.cond.i38.i = select i1 %cmp3.i36.i, i1 true, i1 %cmp5.not.i37.i, !dbg !1598
  %cmp6.not.i39.i = icmp sgt i32 %m.03.i34.i, %.hi.i29.i
  %or.cond27.i40.i = select i1 %or.cond.i38.i, i1 true, i1 %cmp6.not.i39.i, !dbg !1598
  br i1 %or.cond27.i40.i, label %for.inc.i45.i, label %RPART.i, !dbg !1598

for.inc.i45.i:                                    ; preds = %for.body.i41.i
  %inc.i42.i = add nuw i32 %m.03.i34.i, 1, !dbg !1599
  call void @llvm.dbg.value(metadata i32 %inc.i42.i, metadata !1520, metadata !DIExpression()) #15, !dbg !1589
  %s_next.i43.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp1.04.i35.i, i64 0, i32 4, !dbg !1600
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1523, metadata !DIExpression()) #15, !dbg !1589
  %exitcond.not.i44.i = icmp eq i32 %m.03.i34.i, %18, !dbg !1593
  br i1 %exitcond.not.i44.i, label %if.end44.i, label %for.body.i41.i, !dbg !1594, !llvm.loop !1601

if.end44.i:                                       ; preds = %for.inc.i45.i, %if.else39.i, %atom_in_str_pat.exit25.i
  %call30.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %call30.i, metadata !1421, metadata !DIExpression()) #15, !dbg !1426
  %tobool31.not.i = icmp eq i8* %call30.i, null, !dbg !1546
  br i1 %tobool31.not.i, label %if.end16, label %while.body.i, !dbg !1546, !llvm.loop !1603

RPART.i:                                          ; preds = %for.body.i.i, %atom_in_str_pat.exit25.i, %for.body.i41.i, %atom_in_str_pat.exit.i, %if.end13.i
  call void @llvm.dbg.label(metadata !1424) #15, !dbg !1605
  %19 = load i8*, i8** @rpart, align 8, !dbg !1606, !tbaa !281
  %tobool46.not.i = icmp eq i8* %19, null, !dbg !1606
  br i1 %tobool46.not.i, label %APART.i, label %if.then47.i, !dbg !1608

if.then47.i:                                      ; preds = %RPART.i
  %call48.i = tail call i8* @strtok(i8* noundef nonnull %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1609
  call void @llvm.dbg.value(metadata i8* %call48.i, metadata !1421, metadata !DIExpression()) #15, !dbg !1426
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1423, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  %call49.i = call fastcc i32 @is_pattern(i8* noundef %call48.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1611
  %tobool50.not.i = icmp eq i32 %call49.i, 0, !dbg !1611
  br i1 %tobool50.not.i, label %if.else56.i, label %if.then51.i, !dbg !1613

if.then51.i:                                      ; preds = %if.then47.i
  %ap.idx5.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1614, !tbaa !1470
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1617, metadata !DIExpression()) #15, !dbg !1622
  call void @llvm.dbg.value(metadata i8* %call48.i, metadata !1620, metadata !DIExpression()) #15, !dbg !1622
  call void @llvm.dbg.value(metadata %struct.residue_t* %ap.idx5.val.i, metadata !1621, metadata !DIExpression()) #15, !dbg !1622
  call void @llvm.dbg.value(metadata i8* %call48.i, metadata !586, metadata !DIExpression()) #15, !dbg !1624
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !1624
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !1624
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1626, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call48.i, metadata !592, metadata !DIExpression()) #15, !dbg !1624
  br label %for.cond.i.i50.i, !dbg !1627

for.cond.i.i50.i:                                 ; preds = %for.inc.i.i60.i, %if.then51.i
  %aep.0.i.i48.i = phi i8* [ %call48.i, %if.then51.i ], [ %incdec.ptr12.i.i59.i, %for.inc.i.i60.i ], !dbg !1628
  %rep.0.i.i49.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then51.i ], [ %rep.1.i.i58.i, %for.inc.i.i60.i ], !dbg !1624
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i49.i, metadata !593, metadata !DIExpression()) #15, !dbg !1624
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i48.i, metadata !592, metadata !DIExpression()) #15, !dbg !1624
  %20 = load i8, i8* %aep.0.i.i48.i, align 1, !dbg !1629, !tbaa !528
  switch i8 %20, label %if.else9.i.i57.i [
    i8 0, label %atom_in_res_pat.exit.i
    i8 42, label %if.then.i.i53.i
    i8 63, label %if.then7.i.i55.i
  ], !dbg !1630

if.then.i.i53.i:                                  ; preds = %for.cond.i.i50.i
  %incdec.ptr2.i.i51.i = getelementptr inbounds i8, i8* %rep.0.i.i49.i, i64 1, !dbg !1631
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i51.i, metadata !593, metadata !DIExpression()) #15, !dbg !1624
  store i8 46, i8* %rep.0.i.i49.i, align 1, !dbg !1632, !tbaa !528
  %incdec.ptr3.i.i52.i = getelementptr inbounds i8, i8* %rep.0.i.i49.i, i64 2, !dbg !1633
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i52.i, metadata !593, metadata !DIExpression()) #15, !dbg !1624
  store i8 42, i8* %incdec.ptr2.i.i51.i, align 1, !dbg !1634, !tbaa !528
  br label %for.inc.i.i60.i, !dbg !1635

if.then7.i.i55.i:                                 ; preds = %for.cond.i.i50.i
  %incdec.ptr8.i.i54.i = getelementptr inbounds i8, i8* %rep.0.i.i49.i, i64 1, !dbg !1636
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i54.i, metadata !593, metadata !DIExpression()) #15, !dbg !1624
  store i8 46, i8* %rep.0.i.i49.i, align 1, !dbg !1637, !tbaa !528
  br label %for.inc.i.i60.i, !dbg !1638

if.else9.i.i57.i:                                 ; preds = %for.cond.i.i50.i
  %incdec.ptr10.i.i56.i = getelementptr inbounds i8, i8* %rep.0.i.i49.i, i64 1, !dbg !1639
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i56.i, metadata !593, metadata !DIExpression()) #15, !dbg !1624
  store i8 %20, i8* %rep.0.i.i49.i, align 1, !dbg !1640, !tbaa !528
  br label %for.inc.i.i60.i

for.inc.i.i60.i:                                  ; preds = %if.else9.i.i57.i, %if.then7.i.i55.i, %if.then.i.i53.i
  %rep.1.i.i58.i = phi i8* [ %incdec.ptr3.i.i52.i, %if.then.i.i53.i ], [ %incdec.ptr8.i.i54.i, %if.then7.i.i55.i ], [ %incdec.ptr10.i.i56.i, %if.else9.i.i57.i ], !dbg !1641
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i58.i, metadata !593, metadata !DIExpression()) #15, !dbg !1624
  %incdec.ptr12.i.i59.i = getelementptr inbounds i8, i8* %aep.0.i.i48.i, i64 1, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i59.i, metadata !592, metadata !DIExpression()) #15, !dbg !1624
  br label %for.cond.i.i50.i, !dbg !1643, !llvm.loop !1644

atom_in_res_pat.exit.i:                           ; preds = %for.cond.i.i50.i
  %incdec.ptr13.i.i61.i = getelementptr inbounds i8, i8* %rep.0.i.i49.i, i64 1, !dbg !1646
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i61.i, metadata !593, metadata !DIExpression()) #15, !dbg !1624
  store i8 36, i8* %rep.0.i.i49.i, align 1, !dbg !1647, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i61.i, align 1, !dbg !1648, !tbaa !528
  %call.i62.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1649
  %r_resname.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %ap.idx5.val.i, i64 0, i32 4, !dbg !1650
  %21 = load i8*, i8** %r_resname.i.i, align 8, !dbg !1650, !tbaa !887
  %call1.i63.i = tail call i32 @step(i8* noundef %21, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1651
  %tobool53.not.i = icmp eq i32 %call1.i63.i, 0, !dbg !1614
  br i1 %tobool53.not.i, label %if.end61.i, label %APART.i, !dbg !1652

if.else56.i:                                      ; preds = %if.then47.i
  %22 = load i32, i32* %lo.i, align 4, !dbg !1653, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %22, metadata !1422, metadata !DIExpression()) #15, !dbg !1426
  %23 = load i32, i32* %hi.i, align 4, !dbg !1655, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %23, metadata !1423, metadata !DIExpression()) #15, !dbg !1426
  %ap.idx7.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1656, !tbaa !1470
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1657, metadata !DIExpression()) #15, !dbg !1667
  call void @llvm.dbg.value(metadata i32 %22, metadata !1660, metadata !DIExpression()) #15, !dbg !1667
  call void @llvm.dbg.value(metadata i32 %23, metadata !1661, metadata !DIExpression()) #15, !dbg !1667
  call void @llvm.dbg.value(metadata %struct.residue_t* %ap.idx7.val.i, metadata !1665, metadata !DIExpression()) #15, !dbg !1667
  %r_strand.i.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %ap.idx7.val.i, i64 0, i32 9, !dbg !1669
  %24 = load %struct.strand_t*, %struct.strand_t** %r_strand.i.i, align 8, !dbg !1669, !tbaa !1471
  call void @llvm.dbg.value(metadata %struct.strand_t* %24, metadata !1664, metadata !DIExpression()) #15, !dbg !1667
  %cmp.i64.i = icmp eq i32 %23, -1, !dbg !1670
  %s_nresidues.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 5
  %25 = load i32, i32* %s_nresidues.i.i, align 8, !tbaa !295
  %.hi.i65.i = select i1 %cmp.i64.i, i32 %25, i32 %23, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %.hi.i65.i, metadata !1663, metadata !DIExpression()) #15, !dbg !1667
  call void @llvm.dbg.value(metadata i32 0, metadata !1662, metadata !DIExpression()) #15, !dbg !1667
  %s_residues.i.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i64 0, i32 7
  %26 = sext i32 %.hi.i65.i to i64, !dbg !1672
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #15, !dbg !1672
  %wide.trip.count.i.i = zext i32 %smax.i.i to i64, !dbg !1674
  br label %for.cond.i.i, !dbg !1672

for.cond.i.i:                                     ; preds = %for.body.i69.i, %if.else56.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i69.i ], [ 0, %if.else56.i ], !dbg !1676
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !1662, metadata !DIExpression()) #15, !dbg !1667
  %exitcond.not.i66.i = icmp eq i64 %indvars.iv.i.i, %wide.trip.count.i.i, !dbg !1674
  br i1 %exitcond.not.i66.i, label %if.end61.i, label %for.body.i69.i, !dbg !1677

for.body.i69.i:                                   ; preds = %for.cond.i.i
  %27 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i.i, align 8, !dbg !1678, !tbaa !301
  %arrayidx.i.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %27, i64 %indvars.iv.i.i, !dbg !1680
  %28 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i.i, align 8, !dbg !1680, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %28, metadata !1666, metadata !DIExpression()) #15, !dbg !1667
  %cmp3.i67.i = icmp eq %struct.residue_t* %28, %ap.idx7.val.i, !dbg !1681
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %29 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp4.not.i.i = icmp sle i32 %22, %29
  %or.cond.i68.i = select i1 %cmp3.i67.i, i1 %cmp4.not.i.i, i1 false, !dbg !1683
  %cmp6.not.not.i.i = icmp slt i64 %indvars.iv.i.i, %26
  %or.cond26.i.i = select i1 %or.cond.i68.i, i1 %cmp6.not.not.i.i, i1 false, !dbg !1683
  br i1 %or.cond26.i.i, label %APART.i, label %for.cond.i.i, !dbg !1683, !llvm.loop !1684

if.end61.i:                                       ; preds = %for.cond.i.i, %atom_in_res_pat.exit.i
  %call63160.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1686
  call void @llvm.dbg.value(metadata i8* %call63160.i, metadata !1421, metadata !DIExpression()) #15, !dbg !1426
  %tobool64.not161.i = icmp eq i8* %call63160.i, null, !dbg !1687
  br i1 %tobool64.not161.i, label %if.end16, label %while.body65.i, !dbg !1687

while.body65.i:                                   ; preds = %if.end61.i, %if.end78.i
  %call63162.i = phi i8* [ %call63.i, %if.end78.i ], [ %call63160.i, %if.end61.i ]
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1423, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  %call66.i = call fastcc i32 @is_pattern(i8* noundef nonnull %call63162.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1688
  %tobool67.not.i = icmp eq i32 %call66.i, 0, !dbg !1688
  br i1 %tobool67.not.i, label %if.else73.i, label %if.then68.i, !dbg !1691

if.then68.i:                                      ; preds = %while.body65.i
  %ap.idx4.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1692, !tbaa !1470
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1617, metadata !DIExpression()) #15, !dbg !1695
  call void @llvm.dbg.value(metadata i8* %call63162.i, metadata !1620, metadata !DIExpression()) #15, !dbg !1695
  call void @llvm.dbg.value(metadata %struct.residue_t* %ap.idx4.val.i, metadata !1621, metadata !DIExpression()) #15, !dbg !1695
  call void @llvm.dbg.value(metadata i8* %call63162.i, metadata !586, metadata !DIExpression()) #15, !dbg !1697
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !1697
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !1697
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1699, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call63162.i, metadata !592, metadata !DIExpression()) #15, !dbg !1697
  br label %for.cond.i.i73.i, !dbg !1700

for.cond.i.i73.i:                                 ; preds = %for.inc.i.i83.i, %if.then68.i
  %aep.0.i.i71.i = phi i8* [ %call63162.i, %if.then68.i ], [ %incdec.ptr12.i.i82.i, %for.inc.i.i83.i ], !dbg !1701
  %rep.0.i.i72.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then68.i ], [ %rep.1.i.i81.i, %for.inc.i.i83.i ], !dbg !1697
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i72.i, metadata !593, metadata !DIExpression()) #15, !dbg !1697
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i71.i, metadata !592, metadata !DIExpression()) #15, !dbg !1697
  %30 = load i8, i8* %aep.0.i.i71.i, align 1, !dbg !1702, !tbaa !528
  switch i8 %30, label %if.else9.i.i80.i [
    i8 0, label %atom_in_res_pat.exit88.i
    i8 42, label %if.then.i.i76.i
    i8 63, label %if.then7.i.i78.i
  ], !dbg !1703

if.then.i.i76.i:                                  ; preds = %for.cond.i.i73.i
  %incdec.ptr2.i.i74.i = getelementptr inbounds i8, i8* %rep.0.i.i72.i, i64 1, !dbg !1704
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i74.i, metadata !593, metadata !DIExpression()) #15, !dbg !1697
  store i8 46, i8* %rep.0.i.i72.i, align 1, !dbg !1705, !tbaa !528
  %incdec.ptr3.i.i75.i = getelementptr inbounds i8, i8* %rep.0.i.i72.i, i64 2, !dbg !1706
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i75.i, metadata !593, metadata !DIExpression()) #15, !dbg !1697
  store i8 42, i8* %incdec.ptr2.i.i74.i, align 1, !dbg !1707, !tbaa !528
  br label %for.inc.i.i83.i, !dbg !1708

if.then7.i.i78.i:                                 ; preds = %for.cond.i.i73.i
  %incdec.ptr8.i.i77.i = getelementptr inbounds i8, i8* %rep.0.i.i72.i, i64 1, !dbg !1709
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i77.i, metadata !593, metadata !DIExpression()) #15, !dbg !1697
  store i8 46, i8* %rep.0.i.i72.i, align 1, !dbg !1710, !tbaa !528
  br label %for.inc.i.i83.i, !dbg !1711

if.else9.i.i80.i:                                 ; preds = %for.cond.i.i73.i
  %incdec.ptr10.i.i79.i = getelementptr inbounds i8, i8* %rep.0.i.i72.i, i64 1, !dbg !1712
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i79.i, metadata !593, metadata !DIExpression()) #15, !dbg !1697
  store i8 %30, i8* %rep.0.i.i72.i, align 1, !dbg !1713, !tbaa !528
  br label %for.inc.i.i83.i

for.inc.i.i83.i:                                  ; preds = %if.else9.i.i80.i, %if.then7.i.i78.i, %if.then.i.i76.i
  %rep.1.i.i81.i = phi i8* [ %incdec.ptr3.i.i75.i, %if.then.i.i76.i ], [ %incdec.ptr8.i.i77.i, %if.then7.i.i78.i ], [ %incdec.ptr10.i.i79.i, %if.else9.i.i80.i ], !dbg !1714
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i81.i, metadata !593, metadata !DIExpression()) #15, !dbg !1697
  %incdec.ptr12.i.i82.i = getelementptr inbounds i8, i8* %aep.0.i.i71.i, i64 1, !dbg !1715
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i82.i, metadata !592, metadata !DIExpression()) #15, !dbg !1697
  br label %for.cond.i.i73.i, !dbg !1716, !llvm.loop !1717

atom_in_res_pat.exit88.i:                         ; preds = %for.cond.i.i73.i
  %incdec.ptr13.i.i84.i = getelementptr inbounds i8, i8* %rep.0.i.i72.i, i64 1, !dbg !1719
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i84.i, metadata !593, metadata !DIExpression()) #15, !dbg !1697
  store i8 36, i8* %rep.0.i.i72.i, align 1, !dbg !1720, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i84.i, align 1, !dbg !1721, !tbaa !528
  %call.i85.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1722
  %r_resname.i86.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %ap.idx4.val.i, i64 0, i32 4, !dbg !1723
  %31 = load i8*, i8** %r_resname.i86.i, align 8, !dbg !1723, !tbaa !887
  %call1.i87.i = tail call i32 @step(i8* noundef %31, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1724
  %tobool70.not.i = icmp eq i32 %call1.i87.i, 0, !dbg !1692
  br i1 %tobool70.not.i, label %if.end78.i, label %APART.i, !dbg !1725

if.else73.i:                                      ; preds = %while.body65.i
  %32 = load i32, i32* %lo.i, align 4, !dbg !1726, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %32, metadata !1422, metadata !DIExpression()) #15, !dbg !1426
  %33 = load i32, i32* %hi.i, align 4, !dbg !1728, !tbaa !640
  call void @llvm.dbg.value(metadata i32 %33, metadata !1423, metadata !DIExpression()) #15, !dbg !1426
  %ap.idx6.val.i = load %struct.residue_t*, %struct.residue_t** %ap.idx1.i, align 8, !dbg !1729, !tbaa !1470
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1657, metadata !DIExpression()) #15, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %32, metadata !1660, metadata !DIExpression()) #15, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %33, metadata !1661, metadata !DIExpression()) #15, !dbg !1730
  call void @llvm.dbg.value(metadata %struct.residue_t* %ap.idx6.val.i, metadata !1665, metadata !DIExpression()) #15, !dbg !1730
  %r_strand.i89.i = getelementptr inbounds %struct.residue_t, %struct.residue_t* %ap.idx6.val.i, i64 0, i32 9, !dbg !1732
  %34 = load %struct.strand_t*, %struct.strand_t** %r_strand.i89.i, align 8, !dbg !1732, !tbaa !1471
  call void @llvm.dbg.value(metadata %struct.strand_t* %34, metadata !1664, metadata !DIExpression()) #15, !dbg !1730
  %cmp.i90.i = icmp eq i32 %33, -1, !dbg !1733
  %s_nresidues.i91.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %34, i64 0, i32 5
  %35 = load i32, i32* %s_nresidues.i91.i, align 8, !tbaa !295
  %.hi.i92.i = select i1 %cmp.i90.i, i32 %35, i32 %33, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %.hi.i92.i, metadata !1663, metadata !DIExpression()) #15, !dbg !1730
  call void @llvm.dbg.value(metadata i32 0, metadata !1662, metadata !DIExpression()) #15, !dbg !1730
  %s_residues.i93.i = getelementptr inbounds %struct.strand_t, %struct.strand_t* %34, i64 0, i32 7
  %36 = sext i32 %.hi.i92.i to i64, !dbg !1735
  %smax.i94.i = tail call i32 @llvm.smax.i32(i32 %35, i32 0) #15, !dbg !1735
  %wide.trip.count.i95.i = zext i32 %smax.i94.i to i64, !dbg !1736
  br label %for.cond.i98.i, !dbg !1735

for.cond.i98.i:                                   ; preds = %for.body.i106.i, %if.else73.i
  %indvars.iv.i96.i = phi i64 [ %indvars.iv.next.i101.i, %for.body.i106.i ], [ 0, %if.else73.i ], !dbg !1737
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i96.i, metadata !1662, metadata !DIExpression()) #15, !dbg !1730
  %exitcond.not.i97.i = icmp eq i64 %indvars.iv.i96.i, %wide.trip.count.i95.i, !dbg !1736
  br i1 %exitcond.not.i97.i, label %if.end78.i, label %for.body.i106.i, !dbg !1738

for.body.i106.i:                                  ; preds = %for.cond.i98.i
  %37 = load %struct.residue_t**, %struct.residue_t*** %s_residues.i93.i, align 8, !dbg !1739, !tbaa !301
  %arrayidx.i99.i = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %37, i64 %indvars.iv.i96.i, !dbg !1740
  %38 = load %struct.residue_t*, %struct.residue_t** %arrayidx.i99.i, align 8, !dbg !1740, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %38, metadata !1666, metadata !DIExpression()) #15, !dbg !1730
  %cmp3.i100.i = icmp eq %struct.residue_t* %38, %ap.idx6.val.i, !dbg !1741
  %indvars.iv.next.i101.i = add nuw nsw i64 %indvars.iv.i96.i, 1
  %39 = trunc i64 %indvars.iv.next.i101.i to i32
  %cmp4.not.i102.i = icmp sle i32 %32, %39
  %or.cond.i103.i = select i1 %cmp3.i100.i, i1 %cmp4.not.i102.i, i1 false, !dbg !1742
  %cmp6.not.not.i104.i = icmp slt i64 %indvars.iv.i96.i, %36
  %or.cond26.i105.i = select i1 %or.cond.i103.i, i1 %cmp6.not.not.i104.i, i1 false, !dbg !1742
  br i1 %or.cond26.i105.i, label %APART.i, label %for.cond.i98.i, !dbg !1742, !llvm.loop !1743

if.end78.i:                                       ; preds = %for.cond.i98.i, %atom_in_res_pat.exit88.i
  %call63.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1686
  call void @llvm.dbg.value(metadata i8* %call63.i, metadata !1421, metadata !DIExpression()) #15, !dbg !1426
  %tobool64.not.i = icmp eq i8* %call63.i, null, !dbg !1687
  br i1 %tobool64.not.i, label %if.end16, label %while.body65.i, !dbg !1687, !llvm.loop !1745

APART.i:                                          ; preds = %for.body.i69.i, %atom_in_res_pat.exit88.i, %for.body.i106.i, %atom_in_res_pat.exit.i, %RPART.i
  call void @llvm.dbg.label(metadata !1425) #15, !dbg !1747
  %40 = load i8*, i8** @apart, align 8, !dbg !1748, !tbaa !281
  %tobool81.not.i = icmp eq i8* %40, null, !dbg !1748
  br i1 %tobool81.not.i, label %atom_in_1_aexpr.exit, label %if.then82.i, !dbg !1750

if.then82.i:                                      ; preds = %APART.i
  %call83.i = tail call i8* @strtok(i8* noundef nonnull %40, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1751
  call void @llvm.dbg.value(metadata i8* %call83.i, metadata !1421, metadata !DIExpression()) #15, !dbg !1426
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1423, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  %call84.i = call fastcc i32 @is_pattern(i8* noundef %call83.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1753
  %tobool85.not.i = icmp eq i32 %call84.i, 0, !dbg !1753
  br i1 %tobool85.not.i, label %cleanup.sink.split.i, label %if.then86.i, !dbg !1755

if.then86.i:                                      ; preds = %if.then82.i
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap, metadata !1756, metadata !DIExpression()) #15, !dbg !1760
  call void @llvm.dbg.value(metadata i8* %call83.i, metadata !1759, metadata !DIExpression()) #15, !dbg !1760
  call void @llvm.dbg.value(metadata i8* %call83.i, metadata !586, metadata !DIExpression()) #15, !dbg !1764
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !1764
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !1764
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1766, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call83.i, metadata !592, metadata !DIExpression()) #15, !dbg !1764
  br label %for.cond.i.i111.i, !dbg !1767

for.cond.i.i111.i:                                ; preds = %for.inc.i.i121.i, %if.then86.i
  %aep.0.i.i109.i = phi i8* [ %call83.i, %if.then86.i ], [ %incdec.ptr12.i.i120.i, %for.inc.i.i121.i ], !dbg !1768
  %rep.0.i.i110.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then86.i ], [ %rep.1.i.i119.i, %for.inc.i.i121.i ], !dbg !1764
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i110.i, metadata !593, metadata !DIExpression()) #15, !dbg !1764
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i109.i, metadata !592, metadata !DIExpression()) #15, !dbg !1764
  %41 = load i8, i8* %aep.0.i.i109.i, align 1, !dbg !1769, !tbaa !528
  switch i8 %41, label %if.else9.i.i118.i [
    i8 0, label %atom_in_atom_pat.exit.i
    i8 42, label %if.then.i.i114.i
    i8 63, label %if.then7.i.i116.i
  ], !dbg !1770

if.then.i.i114.i:                                 ; preds = %for.cond.i.i111.i
  %incdec.ptr2.i.i112.i = getelementptr inbounds i8, i8* %rep.0.i.i110.i, i64 1, !dbg !1771
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i112.i, metadata !593, metadata !DIExpression()) #15, !dbg !1764
  store i8 46, i8* %rep.0.i.i110.i, align 1, !dbg !1772, !tbaa !528
  %incdec.ptr3.i.i113.i = getelementptr inbounds i8, i8* %rep.0.i.i110.i, i64 2, !dbg !1773
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i113.i, metadata !593, metadata !DIExpression()) #15, !dbg !1764
  store i8 42, i8* %incdec.ptr2.i.i112.i, align 1, !dbg !1774, !tbaa !528
  br label %for.inc.i.i121.i, !dbg !1775

if.then7.i.i116.i:                                ; preds = %for.cond.i.i111.i
  %incdec.ptr8.i.i115.i = getelementptr inbounds i8, i8* %rep.0.i.i110.i, i64 1, !dbg !1776
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i115.i, metadata !593, metadata !DIExpression()) #15, !dbg !1764
  store i8 46, i8* %rep.0.i.i110.i, align 1, !dbg !1777, !tbaa !528
  br label %for.inc.i.i121.i, !dbg !1778

if.else9.i.i118.i:                                ; preds = %for.cond.i.i111.i
  %incdec.ptr10.i.i117.i = getelementptr inbounds i8, i8* %rep.0.i.i110.i, i64 1, !dbg !1779
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i117.i, metadata !593, metadata !DIExpression()) #15, !dbg !1764
  store i8 %41, i8* %rep.0.i.i110.i, align 1, !dbg !1780, !tbaa !528
  br label %for.inc.i.i121.i

for.inc.i.i121.i:                                 ; preds = %if.else9.i.i118.i, %if.then7.i.i116.i, %if.then.i.i114.i
  %rep.1.i.i119.i = phi i8* [ %incdec.ptr3.i.i113.i, %if.then.i.i114.i ], [ %incdec.ptr8.i.i115.i, %if.then7.i.i116.i ], [ %incdec.ptr10.i.i117.i, %if.else9.i.i118.i ], !dbg !1781
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i119.i, metadata !593, metadata !DIExpression()) #15, !dbg !1764
  %incdec.ptr12.i.i120.i = getelementptr inbounds i8, i8* %aep.0.i.i109.i, i64 1, !dbg !1782
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i120.i, metadata !592, metadata !DIExpression()) #15, !dbg !1764
  br label %for.cond.i.i111.i, !dbg !1783, !llvm.loop !1784

atom_in_atom_pat.exit.i:                          ; preds = %for.cond.i.i111.i
  %incdec.ptr13.i.i122.i = getelementptr inbounds i8, i8* %rep.0.i.i110.i, i64 1, !dbg !1786
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i122.i, metadata !593, metadata !DIExpression()) #15, !dbg !1764
  store i8 36, i8* %rep.0.i.i110.i, align 1, !dbg !1787, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i122.i, align 1, !dbg !1788, !tbaa !528
  %call.i123.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1789
  %42 = load i8*, i8** %a_atomname.i.i, align 8, !dbg !1790, !tbaa !1236
  %call1.i124.i = tail call i32 @step(i8* noundef %42, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1791
  %tobool88.not.i = icmp eq i32 %call1.i124.i, 0, !dbg !1792
  br i1 %tobool88.not.i, label %while.cond94.i, label %atom_in_1_aexpr.exit, !dbg !1793

while.cond94.i:                                   ; preds = %atom_in_atom_pat.exit.i, %atom_in_atom_pat.exit142.i
  %call95.i = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #15, !dbg !1794
  call void @llvm.dbg.value(metadata i8* %call95.i, metadata !1421, metadata !DIExpression()) #15, !dbg !1426
  %tobool96.not.i = icmp eq i8* %call95.i, null, !dbg !1795
  br i1 %tobool96.not.i, label %if.end16, label %while.body97.i, !dbg !1795

while.body97.i:                                   ; preds = %while.cond94.i
  call void @llvm.dbg.value(metadata i32* %lo.i, metadata !1422, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  call void @llvm.dbg.value(metadata i32* %hi.i, metadata !1423, metadata !DIExpression(DW_OP_deref)) #15, !dbg !1426
  %call98.i = call fastcc i32 @is_pattern(i8* noundef nonnull %call95.i, i32* noundef nonnull %lo.i, i32* noundef nonnull %hi.i) #15, !dbg !1796
  %tobool99.not.i = icmp eq i32 %call98.i, 0, !dbg !1796
  br i1 %tobool99.not.i, label %cleanup.sink.split.i, label %if.then100.i, !dbg !1799

if.then100.i:                                     ; preds = %while.body97.i
  call void @llvm.dbg.value(metadata %struct.atom_t* %ap, metadata !1756, metadata !DIExpression()) #15, !dbg !1800
  call void @llvm.dbg.value(metadata i8* %call95.i, metadata !1759, metadata !DIExpression()) #15, !dbg !1800
  call void @llvm.dbg.value(metadata i8* %call95.i, metadata !586, metadata !DIExpression()) #15, !dbg !1804
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()) #15, !dbg !1804
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()) #15, !dbg !1804
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !1806, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %call95.i, metadata !592, metadata !DIExpression()) #15, !dbg !1804
  br label %for.cond.i.i127.i, !dbg !1807

for.cond.i.i127.i:                                ; preds = %for.inc.i.i137.i, %if.then100.i
  %aep.0.i.i125.i = phi i8* [ %call95.i, %if.then100.i ], [ %incdec.ptr12.i.i136.i, %for.inc.i.i137.i ], !dbg !1808
  %rep.0.i.i126.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %if.then100.i ], [ %rep.1.i.i135.i, %for.inc.i.i137.i ], !dbg !1804
  call void @llvm.dbg.value(metadata i8* %rep.0.i.i126.i, metadata !593, metadata !DIExpression()) #15, !dbg !1804
  call void @llvm.dbg.value(metadata i8* %aep.0.i.i125.i, metadata !592, metadata !DIExpression()) #15, !dbg !1804
  %43 = load i8, i8* %aep.0.i.i125.i, align 1, !dbg !1809, !tbaa !528
  switch i8 %43, label %if.else9.i.i134.i [
    i8 0, label %atom_in_atom_pat.exit142.i
    i8 42, label %if.then.i.i130.i
    i8 63, label %if.then7.i.i132.i
  ], !dbg !1810

if.then.i.i130.i:                                 ; preds = %for.cond.i.i127.i
  %incdec.ptr2.i.i128.i = getelementptr inbounds i8, i8* %rep.0.i.i126.i, i64 1, !dbg !1811
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i.i128.i, metadata !593, metadata !DIExpression()) #15, !dbg !1804
  store i8 46, i8* %rep.0.i.i126.i, align 1, !dbg !1812, !tbaa !528
  %incdec.ptr3.i.i129.i = getelementptr inbounds i8, i8* %rep.0.i.i126.i, i64 2, !dbg !1813
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i.i129.i, metadata !593, metadata !DIExpression()) #15, !dbg !1804
  store i8 42, i8* %incdec.ptr2.i.i128.i, align 1, !dbg !1814, !tbaa !528
  br label %for.inc.i.i137.i, !dbg !1815

if.then7.i.i132.i:                                ; preds = %for.cond.i.i127.i
  %incdec.ptr8.i.i131.i = getelementptr inbounds i8, i8* %rep.0.i.i126.i, i64 1, !dbg !1816
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i.i131.i, metadata !593, metadata !DIExpression()) #15, !dbg !1804
  store i8 46, i8* %rep.0.i.i126.i, align 1, !dbg !1817, !tbaa !528
  br label %for.inc.i.i137.i, !dbg !1818

if.else9.i.i134.i:                                ; preds = %for.cond.i.i127.i
  %incdec.ptr10.i.i133.i = getelementptr inbounds i8, i8* %rep.0.i.i126.i, i64 1, !dbg !1819
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i.i133.i, metadata !593, metadata !DIExpression()) #15, !dbg !1804
  store i8 %43, i8* %rep.0.i.i126.i, align 1, !dbg !1820, !tbaa !528
  br label %for.inc.i.i137.i

for.inc.i.i137.i:                                 ; preds = %if.else9.i.i134.i, %if.then7.i.i132.i, %if.then.i.i130.i
  %rep.1.i.i135.i = phi i8* [ %incdec.ptr3.i.i129.i, %if.then.i.i130.i ], [ %incdec.ptr8.i.i131.i, %if.then7.i.i132.i ], [ %incdec.ptr10.i.i133.i, %if.else9.i.i134.i ], !dbg !1821
  call void @llvm.dbg.value(metadata i8* %rep.1.i.i135.i, metadata !593, metadata !DIExpression()) #15, !dbg !1804
  %incdec.ptr12.i.i136.i = getelementptr inbounds i8, i8* %aep.0.i.i125.i, i64 1, !dbg !1822
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i.i136.i, metadata !592, metadata !DIExpression()) #15, !dbg !1804
  br label %for.cond.i.i127.i, !dbg !1823, !llvm.loop !1824

atom_in_atom_pat.exit142.i:                       ; preds = %for.cond.i.i127.i
  %incdec.ptr13.i.i138.i = getelementptr inbounds i8, i8* %rep.0.i.i126.i, i64 1, !dbg !1826
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i.i138.i, metadata !593, metadata !DIExpression()) #15, !dbg !1804
  store i8 36, i8* %rep.0.i.i126.i, align 1, !dbg !1827, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i.i138.i, align 1, !dbg !1828, !tbaa !528
  %call.i139.i = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !1829
  %44 = load i8*, i8** %a_atomname.i.i, align 8, !dbg !1830, !tbaa !1236
  %call1.i141.i = tail call i32 @step(i8* noundef %44, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !1831
  %tobool102.not.i = icmp eq i32 %call1.i141.i, 0, !dbg !1832
  br i1 %tobool102.not.i, label %while.cond94.i, label %atom_in_1_aexpr.exit, !dbg !1833, !llvm.loop !1834

cleanup.sink.split.i:                             ; preds = %while.body97.i, %if.then82.i
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1836, !tbaa !281
  %46 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %45) #17, !dbg !1836
  br label %if.end16, !dbg !1837

atom_in_1_aexpr.exit:                             ; preds = %APART.i, %atom_in_atom_pat.exit.i, %atom_in_atom_pat.exit142.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15, !dbg !1837
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15, !dbg !1837
  br label %cleanup, !dbg !1838

if.end16:                                         ; preds = %if.end44.i, %if.end78.i, %while.cond94.i, %if.end61.i, %if.end29.i, %cleanup.sink.split.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15, !dbg !1837
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15, !dbg !1837
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !1383, metadata !DIExpression()), !dbg !1386
  %tobool17.not = icmp eq i8* %n_aep.1, null, !dbg !1839
  br i1 %tobool17.not, label %cleanup, label %if.end20, !dbg !1841

if.end20:                                         ; preds = %if.end16
  %call19 = tail call i8* @strchr(i8* noundef nonnull %n_aep.1, i32 noundef 124) #14, !dbg !1842
  call void @llvm.dbg.value(metadata i8* %call19, metadata !1384, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %n_aep.1, metadata !1383, metadata !DIExpression()), !dbg !1386
  br label %for.body, !dbg !1392

cleanup:                                          ; preds = %if.end16, %atom_in_1_aexpr.exit, %entry, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %entry ], [ 1, %atom_in_1_aexpr.exit ], [ 0, %if.end16 ], !dbg !1386
  ret i32 %retval.0, !dbg !1843
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @set_attr_if(%struct.molecule_t* nocapture noundef readonly %mol, i32 noundef %attr, i32 noundef %i_attr) local_unnamed_addr #5 !dbg !1844 {
entry:
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1846, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %attr, metadata !1847, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %i_attr, metadata !1848, metadata !DIExpression()), !dbg !1854
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1855
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1851, metadata !DIExpression()), !dbg !1854
  %sp.057 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !1857, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.057, metadata !1851, metadata !DIExpression()), !dbg !1854
  %tobool.not58 = icmp eq %struct.strand_t* %sp.057, null, !dbg !1858
  br i1 %tobool.not58, label %for.end30, label %for.body, !dbg !1858

for.body:                                         ; preds = %entry, %for.inc29
  %sp.059 = phi %struct.strand_t* [ %sp.0, %for.inc29 ], [ %sp.057, %entry ]
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.059, i64 0, i32 2, !dbg !1859
  %0 = load i32, i32* %s_attr, align 4, !dbg !1859, !tbaa !290
  %and = and i32 %0, %i_attr, !dbg !1862
  %tobool1.not = icmp eq i32 %and, 0, !dbg !1862
  %cond = select i1 %tobool1.not, i32 0, i32 %attr, !dbg !1863
  %or = or i32 %cond, %0, !dbg !1864
  store i32 %or, i32* %s_attr, align 4, !dbg !1864, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !1850, metadata !DIExpression()), !dbg !1854
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.059, i64 0, i32 5
  %1 = load i32, i32* %s_nresidues, align 8, !tbaa !295
  call void @llvm.dbg.value(metadata i32 0, metadata !1850, metadata !DIExpression()), !dbg !1854
  %cmp55 = icmp sgt i32 %1, 0, !dbg !1865
  br i1 %cmp55, label %for.body4.lr.ph, label %for.inc29, !dbg !1868

for.body4.lr.ph:                                  ; preds = %for.body
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.059, i64 0, i32 7
  %2 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !tbaa !301
  %wide.trip.count64 = zext i32 %1 to i64, !dbg !1865
  br label %for.body4, !dbg !1868

for.body4:                                        ; preds = %for.body4.lr.ph, %for.inc26
  %indvars.iv61 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next62, %for.inc26 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv61, metadata !1850, metadata !DIExpression()), !dbg !1854
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %2, i64 %indvars.iv61, !dbg !1869
  %3 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !1869, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !1852, metadata !DIExpression()), !dbg !1854
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 6, !dbg !1871
  %4 = load i32, i32* %r_attr, align 8, !dbg !1871, !tbaa !306
  %and5 = and i32 %4, %i_attr, !dbg !1872
  %tobool6.not = icmp eq i32 %and5, 0, !dbg !1872
  %cond10 = select i1 %tobool6.not, i32 0, i32 %attr, !dbg !1873
  %or12 = or i32 %cond10, %4, !dbg !1874
  store i32 %or12, i32* %r_attr, align 8, !dbg !1874, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !1849, metadata !DIExpression()), !dbg !1854
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 15
  %5 = load i32, i32* %r_natoms, align 8, !tbaa !310
  call void @llvm.dbg.value(metadata i32 0, metadata !1849, metadata !DIExpression()), !dbg !1854
  %cmp1453 = icmp sgt i32 %5, 0, !dbg !1875
  br i1 %cmp1453, label %for.body15.lr.ph, label %for.inc26, !dbg !1878

for.body15.lr.ph:                                 ; preds = %for.body4
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17
  %6 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !tbaa !316
  %wide.trip.count = zext i32 %5 to i64, !dbg !1875
  br label %for.body15, !dbg !1878

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %indvars.iv = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next, %for.body15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1849, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %6, i64 %indvars.iv), metadata !1853, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1854
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv, i32 2, !dbg !1879
  %7 = load i32, i32* %a_attr, align 8, !dbg !1879, !tbaa !320
  %and18 = and i32 %7, %i_attr, !dbg !1881
  %tobool19.not = icmp eq i32 %and18, 0, !dbg !1881
  %cond23 = select i1 %tobool19.not, i32 0, i32 %attr, !dbg !1882
  %or25 = or i32 %cond23, %7, !dbg !1883
  store i32 %or25, i32* %a_attr, align 8, !dbg !1883, !tbaa !320
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1849, metadata !DIExpression()), !dbg !1854
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1875
  br i1 %exitcond.not, label %for.inc26, label %for.body15, !dbg !1878, !llvm.loop !1885

for.inc26:                                        ; preds = %for.body15, %for.body4
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next62, metadata !1850, metadata !DIExpression()), !dbg !1854
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64, !dbg !1865
  br i1 %exitcond65.not, label %for.inc29, label %for.body4, !dbg !1868, !llvm.loop !1888

for.inc29:                                        ; preds = %for.inc26, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.059, i64 0, i32 4, !dbg !1890
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1851, metadata !DIExpression()), !dbg !1854
  %sp.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !1857, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0, metadata !1851, metadata !DIExpression()), !dbg !1854
  %tobool.not = icmp eq %struct.strand_t* %sp.0, null, !dbg !1858
  br i1 %tobool.not, label %for.end30, label %for.body, !dbg !1858, !llvm.loop !1891

for.end30:                                        ; preds = %for.inc29, %entry
  ret void, !dbg !1893
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @clear_attr(%struct.molecule_t* nocapture noundef readonly %mol, i32 noundef %attr) local_unnamed_addr #5 !dbg !1894 {
entry:
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1898, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %attr, metadata !1899, metadata !DIExpression()), !dbg !1904
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !1905
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1902, metadata !DIExpression()), !dbg !1904
  %neg = xor i32 %attr, -1
  %sp.037 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !1907, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.037, metadata !1902, metadata !DIExpression()), !dbg !1904
  %tobool.not38 = icmp eq %struct.strand_t* %sp.037, null, !dbg !1908
  br i1 %tobool.not38, label %for.end16, label %for.body, !dbg !1908

for.body:                                         ; preds = %entry, %for.inc15
  %sp.039 = phi %struct.strand_t* [ %sp.0, %for.inc15 ], [ %sp.037, %entry ]
  %s_attr = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.039, i64 0, i32 2, !dbg !1909
  %0 = load i32, i32* %s_attr, align 4, !dbg !1912, !tbaa !290
  %and = and i32 %0, %neg, !dbg !1912
  store i32 %and, i32* %s_attr, align 4, !dbg !1912, !tbaa !290
  call void @llvm.dbg.value(metadata i32 0, metadata !1901, metadata !DIExpression()), !dbg !1904
  %s_nresidues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.039, i64 0, i32 5
  %1 = load i32, i32* %s_nresidues, align 8, !tbaa !295
  call void @llvm.dbg.value(metadata i32 0, metadata !1901, metadata !DIExpression()), !dbg !1904
  %cmp35 = icmp sgt i32 %1, 0, !dbg !1913
  br i1 %cmp35, label %for.body2.lr.ph, label %for.inc15, !dbg !1916

for.body2.lr.ph:                                  ; preds = %for.body
  %s_residues = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.039, i64 0, i32 7
  %2 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !tbaa !301
  %wide.trip.count44 = zext i32 %1 to i64, !dbg !1913
  br label %for.body2, !dbg !1916

for.body2:                                        ; preds = %for.body2.lr.ph, %for.inc12
  %indvars.iv41 = phi i64 [ 0, %for.body2.lr.ph ], [ %indvars.iv.next42, %for.inc12 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv41, metadata !1901, metadata !DIExpression()), !dbg !1904
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %2, i64 %indvars.iv41, !dbg !1917
  %3 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !1917, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !1903, metadata !DIExpression()), !dbg !1904
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 6, !dbg !1919
  %4 = load i32, i32* %r_attr, align 8, !dbg !1920, !tbaa !306
  %and4 = and i32 %4, %neg, !dbg !1920
  store i32 %and4, i32* %r_attr, align 8, !dbg !1920, !tbaa !306
  call void @llvm.dbg.value(metadata i32 0, metadata !1900, metadata !DIExpression()), !dbg !1904
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 15
  %5 = load i32, i32* %r_natoms, align 8, !tbaa !310
  call void @llvm.dbg.value(metadata i32 0, metadata !1900, metadata !DIExpression()), !dbg !1904
  %cmp633 = icmp sgt i32 %5, 0, !dbg !1921
  br i1 %cmp633, label %for.body7.lr.ph, label %for.inc12, !dbg !1924

for.body7.lr.ph:                                  ; preds = %for.body2
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17
  %6 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !tbaa !316
  %wide.trip.count = zext i32 %5 to i64, !dbg !1921
  br label %for.body7, !dbg !1924

for.body7:                                        ; preds = %for.body7.lr.ph, %for.body7
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.body7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1900, metadata !DIExpression()), !dbg !1904
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv, i32 2, !dbg !1925
  %7 = load i32, i32* %a_attr, align 8, !dbg !1926, !tbaa !320
  %and11 = and i32 %7, %neg, !dbg !1926
  store i32 %and11, i32* %a_attr, align 8, !dbg !1926, !tbaa !320
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1900, metadata !DIExpression()), !dbg !1904
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1921
  br i1 %exitcond.not, label %for.inc12, label %for.body7, !dbg !1924, !llvm.loop !1928

for.inc12:                                        ; preds = %for.body7, %for.body2
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next42, metadata !1901, metadata !DIExpression()), !dbg !1904
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44, !dbg !1913
  br i1 %exitcond45.not, label %for.inc15, label %for.body2, !dbg !1916, !llvm.loop !1931

for.inc15:                                        ; preds = %for.inc12, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.039, i64 0, i32 4, !dbg !1933
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1902, metadata !DIExpression()), !dbg !1904
  %sp.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !1907, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0, metadata !1902, metadata !DIExpression()), !dbg !1904
  %tobool.not = icmp eq %struct.strand_t* %sp.0, null, !dbg !1908
  br i1 %tobool.not, label %for.end16, label %for.body, !dbg !1908, !llvm.loop !1934

for.end16:                                        ; preds = %for.inc15, %entry
  ret void, !dbg !1936
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i8* @strtok(i8* noundef, i8* nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc i32 @is_pattern(i8* nocapture noundef readonly %item, i32* nocapture noundef writeonly %lo, i32* nocapture noundef writeonly %hi) unnamed_addr #7 !dbg !676 {
entry:
  call void @llvm.dbg.value(metadata i8* %item, metadata !675, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32* %lo, metadata !681, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32* %hi, metadata !682, metadata !DIExpression()), !dbg !1937
  %call = tail call i16** @__ctype_b_loc() #16, !dbg !1938
  %0 = load i16*, i16** %call, align 8, !dbg !1938, !tbaa !281
  %1 = load i8, i8* %item, align 1, !dbg !1938, !tbaa !528
  %idxprom = sext i8 %1 to i64, !dbg !1938
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom, !dbg !1938
  %2 = load i16, i16* %arrayidx, align 2, !dbg !1938, !tbaa !691
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
  call void @llvm.dbg.value(metadata i8* %ip.0133, metadata !684, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 %val.0132, metadata !683, metadata !DIExpression()), !dbg !1937
  %conv13 = sext i8 %4 to i32, !dbg !1942
  %mul = mul nsw i32 %val.0132, 10, !dbg !1943
  %add = add i32 %mul, -48, !dbg !1944
  %sub = add i32 %add, %conv13, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %sub, metadata !683, metadata !DIExpression()), !dbg !1937
  %incdec.ptr = getelementptr inbounds i8, i8* %ip.0133, i64 1, !dbg !1946
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !684, metadata !DIExpression()), !dbg !1937
  %5 = load i8, i8* %incdec.ptr, align 1, !dbg !1942, !tbaa !528
  %idxprom14 = sext i8 %5 to i64, !dbg !1942
  %arrayidx15 = getelementptr inbounds i16, i16* %0, i64 %idxprom14, !dbg !1942
  %6 = load i16, i16* %arrayidx15, align 2, !dbg !1942, !tbaa !691
  %7 = and i16 %6, 2048, !dbg !1942
  %tobool18.not = icmp eq i16 %7, 0, !dbg !1947
  br i1 %tobool18.not, label %for.end, label %for.body, !dbg !1947, !llvm.loop !1948

for.end:                                          ; preds = %for.body
  store i32 %sub, i32* %lo, align 4, !dbg !1950, !tbaa !640
  %8 = load i8, i8* %incdec.ptr, align 1, !dbg !1951, !tbaa !528
  switch i8 %8, label %if.end28 [
    i8 0, label %if.then21
    i8 45, label %if.then25
  ], !dbg !1952

if.then21:                                        ; preds = %for.end
  store i32 %sub, i32* %hi, align 4, !dbg !1953, !tbaa !640
  br label %cleanup, !dbg !1954

if.then25:                                        ; preds = %for.end
  %incdec.ptr26 = getelementptr inbounds i8, i8* %ip.0133, i64 2, !dbg !1955
  call void @llvm.dbg.value(metadata i8* %incdec.ptr26, metadata !684, metadata !DIExpression()), !dbg !1937
  %.pr = load i8, i8* %incdec.ptr26, align 1, !dbg !1956, !tbaa !528
  br label %if.end28, !dbg !1957

if.end28:                                         ; preds = %for.end, %if.then25
  %9 = phi i8 [ %8, %for.end ], [ %.pr, %if.then25 ], !dbg !1956
  %ip.1 = phi i8* [ %incdec.ptr, %for.end ], [ %incdec.ptr26, %if.then25 ], !dbg !1958
  call void @llvm.dbg.value(metadata i8* %ip.1, metadata !684, metadata !DIExpression()), !dbg !1937
  %tobool29.not = icmp eq i8 %9, 0, !dbg !1956
  br i1 %tobool29.not, label %if.then30, label %if.else31, !dbg !1959

if.then30:                                        ; preds = %if.end28
  store i32 -1, i32* %hi, align 4, !dbg !1960, !tbaa !640
  br label %cleanup, !dbg !1961

if.else31:                                        ; preds = %if.end28
  %idxprom34 = sext i8 %9 to i64, !dbg !1962
  %arrayidx35 = getelementptr inbounds i16, i16* %0, i64 %idxprom34, !dbg !1962
  %10 = load i16, i16* %arrayidx35, align 2, !dbg !1962, !tbaa !691
  %11 = and i16 %10, 2048, !dbg !1962
  %tobool38.not = icmp eq i16 %11, 0, !dbg !1962
  br i1 %tobool38.not, label %cleanup, label %for.body50, !dbg !1963

for.body50:                                       ; preds = %if.else31, %for.body50
  %12 = phi i8 [ %13, %for.body50 ], [ %9, %if.else31 ]
  %ip.2139 = phi i8* [ %incdec.ptr56, %for.body50 ], [ %ip.1, %if.else31 ]
  %val.1138 = phi i32 [ %sub54, %for.body50 ], [ 0, %if.else31 ]
  call void @llvm.dbg.value(metadata i8* %ip.2139, metadata !684, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 %val.1138, metadata !683, metadata !DIExpression()), !dbg !1937
  %conv44 = sext i8 %12 to i32, !dbg !1964
  %mul51 = mul nsw i32 %val.1138, 10, !dbg !1965
  %add53 = add i32 %mul51, -48, !dbg !1966
  %sub54 = add i32 %add53, %conv44, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %sub54, metadata !683, metadata !DIExpression()), !dbg !1937
  %incdec.ptr56 = getelementptr inbounds i8, i8* %ip.2139, i64 1, !dbg !1968
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56, metadata !684, metadata !DIExpression()), !dbg !1937
  %13 = load i8, i8* %incdec.ptr56, align 1, !dbg !1964, !tbaa !528
  %idxprom45 = sext i8 %13 to i64, !dbg !1964
  %arrayidx46 = getelementptr inbounds i16, i16* %0, i64 %idxprom45, !dbg !1964
  %14 = load i16, i16* %arrayidx46, align 2, !dbg !1964, !tbaa !691
  %15 = and i16 %14, 2048, !dbg !1964
  %tobool49.not = icmp eq i16 %15, 0, !dbg !1969
  br i1 %tobool49.not, label %for.end57, label %for.body50, !dbg !1969, !llvm.loop !1970

for.end57:                                        ; preds = %for.body50
  store i32 %sub54, i32* %hi, align 4, !dbg !1972, !tbaa !640
  %16 = load i8, i8* %incdec.ptr56, align 1, !dbg !1973, !tbaa !528
  %conv58 = sext i8 %16 to i32, !dbg !1974
  br label %cleanup, !dbg !1975

if.else59:                                        ; preds = %if.end
  store i32 1, i32* %lo, align 4, !dbg !1976, !tbaa !640
  %arrayidx60 = getelementptr inbounds i8, i8* %item, i64 1, !dbg !1977
  call void @llvm.dbg.value(metadata i8* %arrayidx60, metadata !684, metadata !DIExpression()), !dbg !1937
  %17 = load i8, i8* %arrayidx60, align 1, !dbg !1978, !tbaa !528
  %tobool62.not = icmp eq i8 %17, 0, !dbg !1978
  br i1 %tobool62.not, label %if.then63, label %if.else64, !dbg !1979

if.then63:                                        ; preds = %if.else59
  store i32 -1, i32* %hi, align 4, !dbg !1980, !tbaa !640
  br label %cleanup, !dbg !1981

if.else64:                                        ; preds = %if.else59
  %idxprom67 = sext i8 %17 to i64, !dbg !1982
  %arrayidx68 = getelementptr inbounds i16, i16* %0, i64 %idxprom67, !dbg !1982
  %18 = load i16, i16* %arrayidx68, align 2, !dbg !1982, !tbaa !691
  %19 = and i16 %18, 2048, !dbg !1982
  %tobool71.not = icmp eq i16 %19, 0, !dbg !1982
  br i1 %tobool71.not, label %cleanup, label %for.body81, !dbg !1983

for.body81:                                       ; preds = %if.else64, %for.body81
  %20 = phi i8 [ %21, %for.body81 ], [ %17, %if.else64 ]
  %ip.3146 = phi i8* [ %incdec.ptr87, %for.body81 ], [ %arrayidx60, %if.else64 ]
  %val.2145 = phi i32 [ %sub85, %for.body81 ], [ 0, %if.else64 ]
  call void @llvm.dbg.value(metadata i8* %ip.3146, metadata !684, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 %val.2145, metadata !683, metadata !DIExpression()), !dbg !1937
  %conv75 = sext i8 %20 to i32, !dbg !1984
  %mul82 = mul nsw i32 %val.2145, 10, !dbg !1985
  %add84 = add i32 %mul82, -48, !dbg !1986
  %sub85 = add i32 %add84, %conv75, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %sub85, metadata !683, metadata !DIExpression()), !dbg !1937
  %incdec.ptr87 = getelementptr inbounds i8, i8* %ip.3146, i64 1, !dbg !1988
  call void @llvm.dbg.value(metadata i8* %incdec.ptr87, metadata !684, metadata !DIExpression()), !dbg !1937
  %21 = load i8, i8* %incdec.ptr87, align 1, !dbg !1984, !tbaa !528
  %idxprom76 = sext i8 %21 to i64, !dbg !1984
  %arrayidx77 = getelementptr inbounds i16, i16* %0, i64 %idxprom76, !dbg !1984
  %22 = load i16, i16* %arrayidx77, align 2, !dbg !1984, !tbaa !691
  %23 = and i16 %22, 2048, !dbg !1984
  %tobool80.not = icmp eq i16 %23, 0, !dbg !1989
  br i1 %tobool80.not, label %for.end88, label %for.body81, !dbg !1989, !llvm.loop !1990

for.end88:                                        ; preds = %for.body81
  store i32 %sub85, i32* %hi, align 4, !dbg !1992, !tbaa !640
  %24 = load i8, i8* %incdec.ptr87, align 1, !dbg !1993, !tbaa !528
  %conv89 = sext i8 %24 to i32, !dbg !1994
  br label %cleanup, !dbg !1995

cleanup:                                          ; preds = %if.else64, %if.else31, %entry, %for.end88, %if.then63, %for.end57, %if.then30, %if.then21
  %retval.0 = phi i32 [ %conv58, %for.end57 ], [ 0, %if.then30 ], [ 0, %if.then21 ], [ %conv89, %for.end88 ], [ 0, %if.then63 ], [ 1, %entry ], [ 1, %if.else31 ], [ 0, %if.else64 ], !dbg !1937
  ret i32 %retval.0, !dbg !1996
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_atom_pat(%struct.molecule_t* nocapture noundef readonly %mol, i8* nocapture noundef readonly %pat) unnamed_addr #0 !dbg !1169 {
entry:
  call void @llvm.dbg.value(metadata %struct.molecule_t* %mol, metadata !1168, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %pat, metadata !1171, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %pat, metadata !586, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !591, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), metadata !593, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), metadata !593, metadata !DIExpression()), !dbg !1998
  store i8 94, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), align 16, !dbg !2000, !tbaa !528
  call void @llvm.dbg.value(metadata i8* %pat, metadata !592, metadata !DIExpression()), !dbg !1998
  br label %for.cond.i, !dbg !2001

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %aep.0.i = phi i8* [ %pat, %entry ], [ %incdec.ptr12.i, %for.inc.i ], !dbg !2002
  %rep.0.i = phi i8* [ getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 1), %entry ], [ %rep.1.i, %for.inc.i ], !dbg !1998
  call void @llvm.dbg.value(metadata i8* %rep.0.i, metadata !593, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* %aep.0.i, metadata !592, metadata !DIExpression()), !dbg !1998
  %0 = load i8, i8* %aep.0.i, align 1, !dbg !2003, !tbaa !528
  switch i8 %0, label %if.else9.i [
    i8 0, label %aexpr2rexpr.exit
    i8 42, label %if.then.i
    i8 63, label %if.then7.i
  ], !dbg !2004

if.then.i:                                        ; preds = %for.cond.i
  %incdec.ptr2.i = getelementptr inbounds i8, i8* %rep.0.i, i64 1, !dbg !2005
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2.i, metadata !593, metadata !DIExpression()), !dbg !1998
  store i8 46, i8* %rep.0.i, align 1, !dbg !2006, !tbaa !528
  %incdec.ptr3.i = getelementptr inbounds i8, i8* %rep.0.i, i64 2, !dbg !2007
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3.i, metadata !593, metadata !DIExpression()), !dbg !1998
  store i8 42, i8* %incdec.ptr2.i, align 1, !dbg !2008, !tbaa !528
  br label %for.inc.i, !dbg !2009

if.then7.i:                                       ; preds = %for.cond.i
  %incdec.ptr8.i = getelementptr inbounds i8, i8* %rep.0.i, i64 1, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %incdec.ptr8.i, metadata !593, metadata !DIExpression()), !dbg !1998
  store i8 46, i8* %rep.0.i, align 1, !dbg !2011, !tbaa !528
  br label %for.inc.i, !dbg !2012

if.else9.i:                                       ; preds = %for.cond.i
  %incdec.ptr10.i = getelementptr inbounds i8, i8* %rep.0.i, i64 1, !dbg !2013
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10.i, metadata !593, metadata !DIExpression()), !dbg !1998
  store i8 %0, i8* %rep.0.i, align 1, !dbg !2014, !tbaa !528
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else9.i, %if.then7.i, %if.then.i
  %rep.1.i = phi i8* [ %incdec.ptr3.i, %if.then.i ], [ %incdec.ptr8.i, %if.then7.i ], [ %incdec.ptr10.i, %if.else9.i ], !dbg !2015
  call void @llvm.dbg.value(metadata i8* %rep.1.i, metadata !593, metadata !DIExpression()), !dbg !1998
  %incdec.ptr12.i = getelementptr inbounds i8, i8* %aep.0.i, i64 1, !dbg !2016
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12.i, metadata !592, metadata !DIExpression()), !dbg !1998
  br label %for.cond.i, !dbg !2017, !llvm.loop !2018

aexpr2rexpr.exit:                                 ; preds = %for.cond.i
  %incdec.ptr13.i = getelementptr inbounds i8, i8* %rep.0.i, i64 1, !dbg !2020
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13.i, metadata !593, metadata !DIExpression()), !dbg !1998
  store i8 36, i8* %rep.0.i, align 1, !dbg !2021, !tbaa !528
  store i8 0, i8* %incdec.ptr13.i, align 1, !dbg !2022, !tbaa !528
  %call = tail call i8* @compile(i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 noundef 0) #15, !dbg !2023
  %m_strands = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %mol, i64 0, i32 2, !dbg !2024
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1174, metadata !DIExpression()), !dbg !1997
  %sp.040 = load %struct.strand_t*, %struct.strand_t** %m_strands, align 8, !dbg !2025, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.040, metadata !1174, metadata !DIExpression()), !dbg !1997
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
  call void @llvm.dbg.value(metadata i32 0, metadata !1172, metadata !DIExpression()), !dbg !1997
  %2 = load i32, i32* %s_nresidues, align 8, !dbg !2030, !tbaa !295
  %cmp38 = icmp sgt i32 %2, 0, !dbg !2031
  br i1 %cmp38, label %for.body3, label %for.inc18, !dbg !2032

for.body3:                                        ; preds = %for.cond2.preheader, %for.inc14
  %3 = phi i32 [ %13, %for.inc14 ], [ %2, %for.cond2.preheader ]
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc14 ], [ 0, %for.cond2.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv44, metadata !1172, metadata !DIExpression()), !dbg !1997
  %4 = load %struct.residue_t**, %struct.residue_t*** %s_residues, align 8, !dbg !2033, !tbaa !301
  %arrayidx = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %4, i64 %indvars.iv44, !dbg !2034
  %5 = load %struct.residue_t*, %struct.residue_t** %arrayidx, align 8, !dbg !2034, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.residue_t* %5, metadata !1175, metadata !DIExpression()), !dbg !1997
  %r_attr = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 6, !dbg !2035
  %6 = load i32, i32* %r_attr, align 8, !dbg !2035, !tbaa !306
  %and4 = and i32 %6, 1, !dbg !2036
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !2036
  br i1 %tobool5.not, label %for.inc14, label %for.cond7.preheader, !dbg !2037

for.cond7.preheader:                              ; preds = %for.body3
  %r_natoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 15
  %r_atoms = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i64 0, i32 17
  call void @llvm.dbg.value(metadata i32 0, metadata !1173, metadata !DIExpression()), !dbg !1997
  %7 = load i32, i32* %r_natoms, align 8, !dbg !2038, !tbaa !310
  %cmp836 = icmp sgt i32 %7, 0, !dbg !2039
  br i1 %cmp836, label %for.body9, label %for.inc14, !dbg !2040

for.body9:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.cond7.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1173, metadata !DIExpression()), !dbg !1997
  %8 = load %struct.atom_t*, %struct.atom_t** %r_atoms, align 8, !dbg !2041, !tbaa !316
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %8, i64 %indvars.iv), metadata !1176, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1997
  %a_atomname = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i64 %indvars.iv, i32 0, !dbg !2042
  %9 = load i8*, i8** %a_atomname, align 8, !dbg !2042, !tbaa !1236
  %call12 = tail call i32 @step(i8* noundef %9, i8* noundef getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0)) #15, !dbg !2043
  %tobool13.not = icmp ne i32 %call12, 0, !dbg !2043
  %cond = zext i1 %tobool13.not to i32, !dbg !2043
  %a_attr = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i64 %indvars.iv, i32 2, !dbg !2044
  %10 = load i32, i32* %a_attr, align 8, !dbg !2045, !tbaa !320
  %or = or i32 %10, %cond, !dbg !2045
  store i32 %or, i32* %a_attr, align 8, !dbg !2045, !tbaa !320
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1173, metadata !DIExpression()), !dbg !1997
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
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next45, metadata !1172, metadata !DIExpression()), !dbg !1997
  %14 = sext i32 %13 to i64, !dbg !2031
  %cmp = icmp slt i64 %indvars.iv.next45, %14, !dbg !2031
  br i1 %cmp, label %for.body3, label %for.inc18, !dbg !2032, !llvm.loop !2050

for.inc18:                                        ; preds = %for.inc14, %for.cond2.preheader, %for.body
  %s_next = getelementptr inbounds %struct.strand_t, %struct.strand_t* %sp.042, i64 0, i32 4, !dbg !2052
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1174, metadata !DIExpression()), !dbg !1997
  %sp.0 = load %struct.strand_t*, %struct.strand_t** %s_next, align 8, !dbg !2025, !tbaa !281
  call void @llvm.dbg.value(metadata %struct.strand_t* %sp.0, metadata !1174, metadata !DIExpression()), !dbg !1997
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
!329 = !DILocation(line: 75, column: 13, scope: !326)
!330 = !DILocation(line: 75, column: 10, scope: !326)
!331 = !DILocation(line: 76, column: 13, scope: !326)
!332 = !DILocation(line: 76, column: 10, scope: !326)
!333 = !DILocation(line: 77, column: 10, scope: !326)
!334 = !DILocation(line: 78, column: 7, scope: !326)
!335 = !DILocation(line: 71, column: 38, scope: !312)
!336 = distinct !{!336, !315, !337, !338, !339}
!337 = !DILocation(line: 79, column: 6, scope: !313)
!338 = !{!"llvm.loop.mustprogress"}
!339 = !{!"llvm.loop.unroll.disable"}
!340 = !DILocation(line: 66, column: 10, scope: !279)
!341 = !DILocation(line: 65, column: 4, scope: !47)
!342 = !DILocation(line: 65, column: 8, scope: !47)
!343 = !DILocation(line: 65, column: 12, scope: !47)
!344 = !DILocation(line: 68, column: 38, scope: !297)
!345 = distinct !{!345, !300, !346, !338, !339}
!346 = !DILocation(line: 81, column: 4, scope: !298)
!347 = !DILocation(line: 66, column: 49, scope: !289)
!348 = distinct !{!348, !285, !349, !338, !339}
!349 = !DILocation(line: 83, column: 2, scope: !279)
!350 = !DILocation(line: 85, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !47, file: !28, line: 85, column: 6)
!352 = !DILocation(line: 85, column: 6, scope: !47)
!353 = !DILocation(line: 86, column: 12, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !28, line: 85, column: 15)
!355 = !DILocation(line: 86, column: 3, scope: !354)
!356 = !DILocation(line: 87, column: 3, scope: !354)
!357 = !DILocation(line: 89, column: 20, scope: !358)
!358 = distinct !DILexicalBlock(scope: !351, file: !28, line: 88, column: 7)
!359 = !DILocation(line: 89, column: 18, scope: !358)
!360 = !DILocation(line: 89, column: 14, scope: !358)
!361 = !DILocation(line: 90, column: 18, scope: !358)
!362 = !DILocation(line: 90, column: 3, scope: !358)
!363 = !DILocation(line: 90, column: 14, scope: !358)
!364 = !DILocation(line: 91, column: 18, scope: !358)
!365 = !DILocation(line: 91, column: 3, scope: !358)
!366 = !DILocation(line: 91, column: 14, scope: !358)
!367 = !DILocation(line: 94, column: 2, scope: !47)
!368 = !DILocation(line: 95, column: 1, scope: !47)
!369 = distinct !DISubprogram(name: "select_atoms", scope: !28, file: !28, line: 97, type: !370, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{!23, !50, !29}
!372 = !{!373, !374, !375, !376, !377}
!373 = !DILocalVariable(name: "mol", arg: 1, scope: !369, file: !28, line: 97, type: !50)
!374 = !DILocalVariable(name: "aex", arg: 2, scope: !369, file: !28, line: 97, type: !29)
!375 = !DILocalVariable(name: "aep", scope: !369, file: !28, line: 99, type: !29)
!376 = !DILocalVariable(name: "n_aep", scope: !369, file: !28, line: 99, type: !29)
!377 = !DILocalVariable(name: "ael", scope: !369, file: !28, line: 100, type: !23)
!378 = !DILocation(line: 0, scope: !369)
!379 = !DILocation(line: 102, column: 10, scope: !380)
!380 = distinct !DILexicalBlock(scope: !369, file: !28, line: 102, column: 6)
!381 = !DILocation(line: 102, column: 6, scope: !369)
!382 = !DILocalVariable(name: "mol", arg: 1, scope: !383, file: !28, line: 398, type: !50)
!383 = distinct !DISubprogram(name: "select_all", scope: !28, file: !28, line: 398, type: !384, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !50}
!386 = !{!382, !387, !388, !389, !390}
!387 = !DILocalVariable(name: "a", scope: !383, file: !28, line: 400, type: !23)
!388 = !DILocalVariable(name: "r", scope: !383, file: !28, line: 400, type: !23)
!389 = !DILocalVariable(name: "sp", scope: !383, file: !28, line: 401, type: !65)
!390 = !DILocalVariable(name: "res", scope: !383, file: !28, line: 402, type: !82)
!391 = !DILocation(line: 0, scope: !383, inlinedAt: !392)
!392 = distinct !DILocation(line: 103, column: 3, scope: !393)
!393 = distinct !DILexicalBlock(scope: !380, file: !28, line: 102, column: 19)
!394 = !DILocation(line: 404, column: 2, scope: !395, inlinedAt: !392)
!395 = distinct !DILexicalBlock(scope: !383, file: !28, line: 404, column: 2)
!396 = !DILocation(line: 405, column: 7, scope: !397, inlinedAt: !392)
!397 = distinct !DILexicalBlock(scope: !398, file: !28, line: 404, column: 49)
!398 = distinct !DILexicalBlock(scope: !395, file: !28, line: 404, column: 2)
!399 = !DILocation(line: 405, column: 14, scope: !397, inlinedAt: !392)
!400 = !DILocation(line: 406, column: 17, scope: !401, inlinedAt: !392)
!401 = distinct !DILexicalBlock(scope: !402, file: !28, line: 406, column: 3)
!402 = distinct !DILexicalBlock(scope: !397, file: !28, line: 406, column: 3)
!403 = !DILocation(line: 406, column: 3, scope: !402, inlinedAt: !392)
!404 = !DILocation(line: 407, column: 10, scope: !405, inlinedAt: !392)
!405 = distinct !DILexicalBlock(scope: !401, file: !28, line: 406, column: 41)
!406 = !DILocation(line: 408, column: 9, scope: !405, inlinedAt: !392)
!407 = !DILocation(line: 408, column: 16, scope: !405, inlinedAt: !392)
!408 = !DILocation(line: 409, column: 18, scope: !409, inlinedAt: !392)
!409 = distinct !DILexicalBlock(scope: !410, file: !28, line: 409, column: 4)
!410 = distinct !DILexicalBlock(scope: !405, file: !28, line: 409, column: 4)
!411 = !DILocation(line: 409, column: 4, scope: !410, inlinedAt: !392)
!412 = !DILocation(line: 410, column: 23, scope: !409, inlinedAt: !392)
!413 = !DILocation(line: 410, column: 30, scope: !409, inlinedAt: !392)
!414 = !DILocation(line: 409, column: 36, scope: !409, inlinedAt: !392)
!415 = distinct !{!415, !411, !416, !338, !339}
!416 = !DILocation(line: 410, column: 33, scope: !410, inlinedAt: !392)
!417 = !DILocation(line: 406, column: 37, scope: !401, inlinedAt: !392)
!418 = distinct !{!418, !403, !419, !338, !339}
!419 = !DILocation(line: 411, column: 3, scope: !402, inlinedAt: !392)
!420 = !DILocation(line: 404, column: 41, scope: !398, inlinedAt: !392)
!421 = !DILocation(line: 0, scope: !395, inlinedAt: !392)
!422 = distinct !{!422, !394, !423, !338, !339}
!423 = !DILocation(line: 412, column: 2, scope: !395, inlinedAt: !392)
!424 = !DILocalVariable(name: "mol", arg: 1, scope: !425, file: !28, line: 432, type: !50)
!425 = distinct !DISubprogram(name: "clear_work", scope: !28, file: !28, line: 432, type: !384, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!426 = !{!424, !427, !428, !429, !430}
!427 = !DILocalVariable(name: "a", scope: !425, file: !28, line: 434, type: !23)
!428 = !DILocalVariable(name: "r", scope: !425, file: !28, line: 434, type: !23)
!429 = !DILocalVariable(name: "sp", scope: !425, file: !28, line: 435, type: !65)
!430 = !DILocalVariable(name: "res", scope: !425, file: !28, line: 436, type: !82)
!431 = !DILocation(line: 0, scope: !425, inlinedAt: !432)
!432 = distinct !DILocation(line: 107, column: 2, scope: !369)
!433 = !DILocation(line: 438, column: 2, scope: !434, inlinedAt: !432)
!434 = distinct !DILexicalBlock(scope: !425, file: !28, line: 438, column: 2)
!435 = !DILocation(line: 439, column: 7, scope: !436, inlinedAt: !432)
!436 = distinct !DILexicalBlock(scope: !437, file: !28, line: 438, column: 49)
!437 = distinct !DILexicalBlock(scope: !434, file: !28, line: 438, column: 2)
!438 = !DILocation(line: 439, column: 14, scope: !436, inlinedAt: !432)
!439 = !DILocation(line: 440, column: 17, scope: !440, inlinedAt: !432)
!440 = distinct !DILexicalBlock(scope: !441, file: !28, line: 440, column: 3)
!441 = distinct !DILexicalBlock(scope: !436, file: !28, line: 440, column: 3)
!442 = !DILocation(line: 440, column: 3, scope: !441, inlinedAt: !432)
!443 = !DILocation(line: 441, column: 10, scope: !444, inlinedAt: !432)
!444 = distinct !DILexicalBlock(scope: !440, file: !28, line: 440, column: 41)
!445 = !DILocation(line: 442, column: 9, scope: !444, inlinedAt: !432)
!446 = !DILocation(line: 442, column: 16, scope: !444, inlinedAt: !432)
!447 = !DILocation(line: 443, column: 18, scope: !448, inlinedAt: !432)
!448 = distinct !DILexicalBlock(scope: !449, file: !28, line: 443, column: 4)
!449 = distinct !DILexicalBlock(scope: !444, file: !28, line: 443, column: 4)
!450 = !DILocation(line: 443, column: 4, scope: !449, inlinedAt: !432)
!451 = !DILocation(line: 444, column: 23, scope: !448, inlinedAt: !432)
!452 = !DILocation(line: 444, column: 30, scope: !448, inlinedAt: !432)
!453 = !DILocation(line: 443, column: 36, scope: !448, inlinedAt: !432)
!454 = distinct !{!454, !450, !455, !338, !339}
!455 = !DILocation(line: 444, column: 34, scope: !449, inlinedAt: !432)
!456 = !DILocation(line: 440, column: 37, scope: !440, inlinedAt: !432)
!457 = distinct !{!457, !442, !458, !338, !339}
!458 = !DILocation(line: 445, column: 3, scope: !441, inlinedAt: !432)
!459 = !DILocation(line: 438, column: 41, scope: !437, inlinedAt: !432)
!460 = !DILocation(line: 0, scope: !434, inlinedAt: !432)
!461 = distinct !{!461, !433, !462, !338, !339}
!462 = !DILocation(line: 446, column: 2, scope: !434, inlinedAt: !432)
!463 = !DILocation(line: 422, column: 7, scope: !464, inlinedAt: !474)
!464 = distinct !DILexicalBlock(scope: !465, file: !28, line: 421, column: 49)
!465 = distinct !DILexicalBlock(scope: !466, file: !28, line: 421, column: 2)
!466 = distinct !DILexicalBlock(scope: !467, file: !28, line: 421, column: 2)
!467 = distinct !DISubprogram(name: "clear_select", scope: !28, file: !28, line: 415, type: !384, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!468 = !{!469, !470, !471, !472, !473}
!469 = !DILocalVariable(name: "mol", arg: 1, scope: !467, file: !28, line: 415, type: !50)
!470 = !DILocalVariable(name: "a", scope: !467, file: !28, line: 417, type: !23)
!471 = !DILocalVariable(name: "r", scope: !467, file: !28, line: 417, type: !23)
!472 = !DILocalVariable(name: "sp", scope: !467, file: !28, line: 418, type: !65)
!473 = !DILocalVariable(name: "res", scope: !467, file: !28, line: 419, type: !82)
!474 = distinct !DILocation(line: 108, column: 2, scope: !369)
!475 = !DILocation(line: 422, column: 14, scope: !464, inlinedAt: !474)
!476 = !DILocation(line: 0, scope: !467, inlinedAt: !474)
!477 = !DILocation(line: 423, column: 17, scope: !478, inlinedAt: !474)
!478 = distinct !DILexicalBlock(scope: !479, file: !28, line: 423, column: 3)
!479 = distinct !DILexicalBlock(scope: !464, file: !28, line: 423, column: 3)
!480 = !DILocation(line: 423, column: 3, scope: !479, inlinedAt: !474)
!481 = !DILocation(line: 424, column: 10, scope: !482, inlinedAt: !474)
!482 = distinct !DILexicalBlock(scope: !478, file: !28, line: 423, column: 41)
!483 = !DILocation(line: 425, column: 9, scope: !482, inlinedAt: !474)
!484 = !DILocation(line: 425, column: 16, scope: !482, inlinedAt: !474)
!485 = !DILocation(line: 426, column: 18, scope: !486, inlinedAt: !474)
!486 = distinct !DILexicalBlock(scope: !487, file: !28, line: 426, column: 4)
!487 = distinct !DILexicalBlock(scope: !482, file: !28, line: 426, column: 4)
!488 = !DILocation(line: 426, column: 4, scope: !487, inlinedAt: !474)
!489 = !DILocation(line: 427, column: 23, scope: !486, inlinedAt: !474)
!490 = !DILocation(line: 427, column: 30, scope: !486, inlinedAt: !474)
!491 = !DILocation(line: 426, column: 36, scope: !486, inlinedAt: !474)
!492 = distinct !{!492, !488, !493, !338, !339}
!493 = !DILocation(line: 427, column: 34, scope: !487, inlinedAt: !474)
!494 = !DILocation(line: 423, column: 37, scope: !478, inlinedAt: !474)
!495 = distinct !{!495, !480, !496, !338, !339}
!496 = !DILocation(line: 428, column: 3, scope: !479, inlinedAt: !474)
!497 = !DILocation(line: 421, column: 41, scope: !465, inlinedAt: !474)
!498 = !DILocation(line: 0, scope: !466, inlinedAt: !474)
!499 = !DILocation(line: 421, column: 2, scope: !466, inlinedAt: !474)
!500 = distinct !{!500, !499, !501, !338, !339}
!501 = !DILocation(line: 429, column: 2, scope: !466, inlinedAt: !474)
!502 = !DILocation(line: 110, column: 26, scope: !503)
!503 = distinct !DILexicalBlock(scope: !369, file: !28, line: 110, column: 2)
!504 = !DILocation(line: 110, column: 2, scope: !503)
!505 = !DILocation(line: 111, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !28, line: 111, column: 7)
!507 = distinct !DILexicalBlock(scope: !508, file: !28, line: 110, column: 52)
!508 = distinct !DILexicalBlock(scope: !503, file: !28, line: 110, column: 2)
!509 = !DILocation(line: 111, column: 7, scope: !507)
!510 = !DILocation(line: 112, column: 16, scope: !511)
!511 = distinct !DILexicalBlock(scope: !506, file: !28, line: 111, column: 14)
!512 = !DILocation(line: 113, column: 9, scope: !511)
!513 = !DILocation(line: 114, column: 3, scope: !511)
!514 = !DILocation(line: 115, column: 10, scope: !506)
!515 = !DILocation(line: 0, scope: !503)
!516 = !DILocation(line: 0, scope: !506)
!517 = !DILocation(line: 116, column: 11, scope: !518)
!518 = distinct !DILexicalBlock(scope: !507, file: !28, line: 116, column: 7)
!519 = !DILocation(line: 116, column: 7, scope: !507)
!520 = !DILocation(line: 117, column: 13, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !28, line: 116, column: 26)
!522 = !DILocation(line: 117, column: 4, scope: !521)
!523 = !DILocation(line: 119, column: 4, scope: !521)
!524 = !DILocation(line: 121, column: 24, scope: !507)
!525 = !DILocation(line: 121, column: 3, scope: !507)
!526 = !DILocation(line: 122, column: 3, scope: !507)
!527 = !DILocation(line: 122, column: 16, scope: !507)
!528 = !{!283, !283, i64 0}
!529 = !DILocalVariable(name: "mol", arg: 1, scope: !530, file: !28, line: 204, type: !50)
!530 = distinct !DISubprogram(name: "eval_1_aexpr", scope: !28, file: !28, line: 204, type: !370, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !531)
!531 = !{!529, !532, !533, !534, !535, !536}
!532 = !DILocalVariable(name: "aex", arg: 2, scope: !530, file: !28, line: 204, type: !29)
!533 = !DILocalVariable(name: "aep", scope: !530, file: !28, line: 206, type: !29)
!534 = !DILocalVariable(name: "wp", scope: !530, file: !28, line: 207, type: !29)
!535 = !DILocalVariable(name: "lo", scope: !530, file: !28, line: 208, type: !23)
!536 = !DILocalVariable(name: "hi", scope: !530, file: !28, line: 208, type: !23)
!537 = !DILocation(line: 0, scope: !530, inlinedAt: !538)
!538 = distinct !DILocation(line: 123, column: 3, scope: !507)
!539 = !DILocation(line: 208, column: 2, scope: !530, inlinedAt: !538)
!540 = !DILocation(line: 211, column: 6, scope: !541, inlinedAt: !538)
!541 = distinct !DILexicalBlock(scope: !530, file: !28, line: 211, column: 6)
!542 = !DILocation(line: 211, column: 11, scope: !541, inlinedAt: !538)
!543 = !DILocation(line: 211, column: 6, scope: !530, inlinedAt: !538)
!544 = !DILocation(line: 212, column: 9, scope: !545, inlinedAt: !538)
!545 = distinct !DILexicalBlock(scope: !541, file: !28, line: 211, column: 19)
!546 = !DILocation(line: 214, column: 2, scope: !545, inlinedAt: !538)
!547 = !DILocation(line: 215, column: 11, scope: !548, inlinedAt: !538)
!548 = distinct !DILexicalBlock(scope: !541, file: !28, line: 214, column: 7)
!549 = !DILocation(line: 215, column: 9, scope: !548, inlinedAt: !538)
!550 = !DILocation(line: 216, column: 10, scope: !548, inlinedAt: !538)
!551 = !DILocation(line: 216, column: 26, scope: !548, inlinedAt: !538)
!552 = !DILocation(line: 216, column: 7, scope: !548, inlinedAt: !538)
!553 = !DILocation(line: 0, scope: !541, inlinedAt: !538)
!554 = !DILocation(line: 218, column: 6, scope: !555, inlinedAt: !538)
!555 = distinct !DILexicalBlock(scope: !530, file: !28, line: 218, column: 6)
!556 = !DILocation(line: 218, column: 11, scope: !555, inlinedAt: !538)
!557 = !DILocation(line: 218, column: 6, scope: !530, inlinedAt: !538)
!558 = !DILocation(line: 219, column: 9, scope: !559, inlinedAt: !538)
!559 = distinct !DILexicalBlock(scope: !555, file: !28, line: 218, column: 19)
!560 = !DILocation(line: 221, column: 2, scope: !559, inlinedAt: !538)
!561 = !DILocation(line: 222, column: 11, scope: !562, inlinedAt: !538)
!562 = distinct !DILexicalBlock(scope: !555, file: !28, line: 221, column: 7)
!563 = !DILocation(line: 222, column: 9, scope: !562, inlinedAt: !538)
!564 = !DILocation(line: 223, column: 10, scope: !562, inlinedAt: !538)
!565 = !DILocation(line: 223, column: 26, scope: !562, inlinedAt: !538)
!566 = !DILocation(line: 0, scope: !555, inlinedAt: !538)
!567 = !DILocation(line: 225, column: 10, scope: !530, inlinedAt: !538)
!568 = !DILocation(line: 225, column: 8, scope: !530, inlinedAt: !538)
!569 = !DILocation(line: 227, column: 6, scope: !570, inlinedAt: !538)
!570 = distinct !DILexicalBlock(scope: !530, file: !28, line: 227, column: 6)
!571 = !DILocation(line: 227, column: 6, scope: !530, inlinedAt: !538)
!572 = !DILocation(line: 228, column: 8, scope: !573, inlinedAt: !538)
!573 = distinct !DILexicalBlock(scope: !570, file: !28, line: 227, column: 13)
!574 = !DILocation(line: 229, column: 7, scope: !575, inlinedAt: !538)
!575 = distinct !DILexicalBlock(scope: !573, file: !28, line: 229, column: 7)
!576 = !DILocation(line: 229, column: 7, scope: !573, inlinedAt: !538)
!577 = !DILocalVariable(name: "mol", arg: 1, scope: !578, file: !28, line: 493, type: !50)
!578 = distinct !DISubprogram(name: "match_str_pat", scope: !28, file: !28, line: 493, type: !579, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !50, !29}
!581 = !{!577, !582, !583}
!582 = !DILocalVariable(name: "pat", arg: 2, scope: !578, file: !28, line: 493, type: !29)
!583 = !DILocalVariable(name: "sp", scope: !578, file: !28, line: 495, type: !65)
!584 = !DILocation(line: 0, scope: !578, inlinedAt: !585)
!585 = distinct !DILocation(line: 230, column: 4, scope: !575, inlinedAt: !538)
!586 = !DILocalVariable(name: "aexpr", arg: 1, scope: !587, file: !28, line: 695, type: !29)
!587 = distinct !DISubprogram(name: "aexpr2rexpr", scope: !28, file: !28, line: 695, type: !588, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !590)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !29, !29}
!590 = !{!586, !591, !592, !593}
!591 = !DILocalVariable(name: "rexpr", arg: 2, scope: !587, file: !28, line: 695, type: !29)
!592 = !DILocalVariable(name: "aep", scope: !587, file: !28, line: 697, type: !29)
!593 = !DILocalVariable(name: "rep", scope: !587, file: !28, line: 697, type: !29)
!594 = !DILocation(line: 0, scope: !587, inlinedAt: !595)
!595 = distinct !DILocation(line: 497, column: 2, scope: !578, inlinedAt: !585)
!596 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !595)
!597 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !595)
!598 = distinct !DILexicalBlock(scope: !587, file: !28, line: 701, column: 2)
!599 = !DILocation(line: 0, scope: !598, inlinedAt: !595)
!600 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !595)
!601 = distinct !DILexicalBlock(scope: !598, file: !28, line: 701, column: 2)
!602 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !595)
!603 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !595)
!604 = distinct !DILexicalBlock(scope: !605, file: !28, line: 702, column: 20)
!605 = distinct !DILexicalBlock(scope: !606, file: !28, line: 702, column: 7)
!606 = distinct !DILexicalBlock(scope: !601, file: !28, line: 701, column: 33)
!607 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !595)
!608 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !595)
!609 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !595)
!610 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !595)
!611 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !595)
!612 = distinct !DILexicalBlock(scope: !605, file: !28, line: 705, column: 13)
!613 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !595)
!614 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !595)
!615 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !595)
!616 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !595)
!617 = !DILocation(line: 0, scope: !605, inlinedAt: !595)
!618 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !595)
!619 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !595)
!620 = distinct !{!620, !602, !621, !338, !339}
!621 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !595)
!622 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !595)
!623 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !595)
!624 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !595)
!625 = !DILocation(line: 501, column: 2, scope: !578, inlinedAt: !585)
!626 = !DILocation(line: 0, scope: !627, inlinedAt: !585)
!627 = distinct !DILexicalBlock(scope: !578, file: !28, line: 503, column: 2)
!628 = !DILocation(line: 503, column: 2, scope: !627, inlinedAt: !585)
!629 = !DILocation(line: 507, column: 27, scope: !630, inlinedAt: !585)
!630 = distinct !DILexicalBlock(scope: !631, file: !28, line: 503, column: 49)
!631 = distinct !DILexicalBlock(scope: !627, file: !28, line: 503, column: 2)
!632 = !{!291, !282, i64 0}
!633 = !DILocation(line: 507, column: 17, scope: !630, inlinedAt: !585)
!634 = !DILocation(line: 507, column: 7, scope: !630, inlinedAt: !585)
!635 = !DILocation(line: 507, column: 14, scope: !630, inlinedAt: !585)
!636 = !DILocation(line: 503, column: 41, scope: !631, inlinedAt: !585)
!637 = distinct !{!637, !628, !638, !338, !339}
!638 = !DILocation(line: 509, column: 2, scope: !627, inlinedAt: !585)
!639 = !DILocation(line: 232, column: 26, scope: !575, inlinedAt: !538)
!640 = !{!292, !292, i64 0}
!641 = !DILocation(line: 232, column: 30, scope: !575, inlinedAt: !538)
!642 = !DILocalVariable(name: "mol", arg: 1, scope: !643, file: !28, line: 529, type: !50)
!643 = distinct !DISubprogram(name: "match_str_range", scope: !28, file: !28, line: 529, type: !644, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !50, !23, !23}
!646 = !{!642, !647, !648, !649, !650}
!647 = !DILocalVariable(name: "lo", arg: 2, scope: !643, file: !28, line: 529, type: !23)
!648 = !DILocalVariable(name: "hi", arg: 3, scope: !643, file: !28, line: 529, type: !23)
!649 = !DILocalVariable(name: "m", scope: !643, file: !28, line: 531, type: !23)
!650 = !DILocalVariable(name: "sp", scope: !643, file: !28, line: 532, type: !65)
!651 = !DILocation(line: 0, scope: !643, inlinedAt: !652)
!652 = distinct !DILocation(line: 232, column: 4, scope: !575, inlinedAt: !538)
!653 = !DILocation(line: 534, column: 9, scope: !654, inlinedAt: !652)
!654 = distinct !DILexicalBlock(scope: !643, file: !28, line: 534, column: 6)
!655 = !{!656, !292, i64 96}
!656 = !{!"molecule_t", !283, i64 0, !292, i64 96, !282, i64 104, !292, i64 112, !292, i64 116, !292, i64 120, !282, i64 128}
!657 = !DILocation(line: 536, column: 37, scope: !658, inlinedAt: !652)
!658 = distinct !DILexicalBlock(scope: !659, file: !28, line: 536, column: 2)
!659 = distinct !DILexicalBlock(scope: !643, file: !28, line: 536, column: 2)
!660 = !DILocation(line: 536, column: 2, scope: !659, inlinedAt: !652)
!661 = !DILocation(line: 0, scope: !659, inlinedAt: !652)
!662 = !DILocation(line: 538, column: 10, scope: !663, inlinedAt: !652)
!663 = distinct !DILexicalBlock(scope: !664, file: !28, line: 538, column: 7)
!664 = distinct !DILexicalBlock(scope: !658, file: !28, line: 537, column: 25)
!665 = !DILocation(line: 538, column: 15, scope: !663, inlinedAt: !652)
!666 = !DILocation(line: 539, column: 8, scope: !663, inlinedAt: !652)
!667 = !DILocation(line: 539, column: 15, scope: !663, inlinedAt: !652)
!668 = !DILocation(line: 539, column: 4, scope: !663, inlinedAt: !652)
!669 = !DILocation(line: 537, column: 4, scope: !658, inlinedAt: !652)
!670 = !DILocation(line: 537, column: 17, scope: !658, inlinedAt: !652)
!671 = distinct !{!671, !660, !672, !338, !339}
!672 = !DILocation(line: 540, column: 2, scope: !659, inlinedAt: !652)
!673 = !DILocation(line: 233, column: 16, scope: !573, inlinedAt: !538)
!674 = !DILocation(line: 233, column: 3, scope: !573, inlinedAt: !538)
!675 = !DILocalVariable(name: "item", arg: 1, scope: !676, file: !28, line: 357, type: !29)
!676 = distinct !DISubprogram(name: "is_pattern", scope: !28, file: !28, line: 357, type: !677, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !680)
!677 = !DISubroutineType(types: !678)
!678 = !{!23, !29, !679, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!680 = !{!675, !681, !682, !683, !684}
!681 = !DILocalVariable(name: "lo", arg: 2, scope: !676, file: !28, line: 357, type: !679)
!682 = !DILocalVariable(name: "hi", arg: 3, scope: !676, file: !28, line: 357, type: !679)
!683 = !DILocalVariable(name: "val", scope: !676, file: !28, line: 359, type: !23)
!684 = !DILocalVariable(name: "ip", scope: !676, file: !28, line: 360, type: !29)
!685 = !DILocation(line: 0, scope: !676, inlinedAt: !686)
!686 = distinct !DILocation(line: 234, column: 8, scope: !687, inlinedAt: !538)
!687 = distinct !DILexicalBlock(scope: !688, file: !28, line: 234, column: 8)
!688 = distinct !DILexicalBlock(scope: !573, file: !28, line: 233, column: 38)
!689 = !DILocation(line: 362, column: 7, scope: !690, inlinedAt: !686)
!690 = distinct !DILexicalBlock(scope: !676, file: !28, line: 362, column: 6)
!691 = !{!692, !692, i64 0}
!692 = !{!"short", !283, i64 0}
!693 = !DILocation(line: 362, column: 24, scope: !690, inlinedAt: !686)
!694 = !DILocation(line: 364, column: 6, scope: !695, inlinedAt: !686)
!695 = distinct !DILexicalBlock(scope: !676, file: !28, line: 364, column: 6)
!696 = !DILocation(line: 364, column: 6, scope: !676, inlinedAt: !686)
!697 = !DILocation(line: 365, column: 28, scope: !698, inlinedAt: !686)
!698 = distinct !DILexicalBlock(scope: !699, file: !28, line: 365, column: 3)
!699 = distinct !DILexicalBlock(scope: !700, file: !28, line: 365, column: 3)
!700 = distinct !DILexicalBlock(scope: !695, file: !28, line: 364, column: 24)
!701 = !DILocation(line: 366, column: 13, scope: !698, inlinedAt: !686)
!702 = !DILocation(line: 366, column: 19, scope: !698, inlinedAt: !686)
!703 = !DILocation(line: 366, column: 25, scope: !698, inlinedAt: !686)
!704 = !DILocation(line: 365, column: 46, scope: !698, inlinedAt: !686)
!705 = !DILocation(line: 365, column: 3, scope: !699, inlinedAt: !686)
!706 = distinct !{!706, !705, !707, !338, !339}
!707 = !DILocation(line: 366, column: 27, scope: !699, inlinedAt: !686)
!708 = !DILocation(line: 367, column: 7, scope: !700, inlinedAt: !686)
!709 = !DILocation(line: 368, column: 7, scope: !700, inlinedAt: !686)
!710 = !DILocation(line: 369, column: 8, scope: !711, inlinedAt: !686)
!711 = distinct !DILexicalBlock(scope: !712, file: !28, line: 368, column: 13)
!712 = distinct !DILexicalBlock(scope: !700, file: !28, line: 368, column: 7)
!713 = !DILocation(line: 370, column: 4, scope: !711, inlinedAt: !686)
!714 = !DILocation(line: 372, column: 6, scope: !715, inlinedAt: !686)
!715 = distinct !DILexicalBlock(scope: !712, file: !28, line: 371, column: 13)
!716 = !DILocation(line: 373, column: 8, scope: !717, inlinedAt: !686)
!717 = distinct !DILexicalBlock(scope: !700, file: !28, line: 373, column: 7)
!718 = !DILocation(line: 372, column: 4, scope: !715, inlinedAt: !686)
!719 = !DILocation(line: 0, scope: !700, inlinedAt: !686)
!720 = !DILocation(line: 373, column: 7, scope: !700, inlinedAt: !686)
!721 = !DILocation(line: 376, column: 14, scope: !722, inlinedAt: !686)
!722 = distinct !DILexicalBlock(scope: !717, file: !28, line: 376, column: 13)
!723 = !DILocation(line: 376, column: 13, scope: !717, inlinedAt: !686)
!724 = !DILocation(line: 378, column: 17, scope: !725, inlinedAt: !686)
!725 = distinct !DILexicalBlock(scope: !726, file: !28, line: 378, column: 3)
!726 = distinct !DILexicalBlock(scope: !700, file: !28, line: 378, column: 3)
!727 = !DILocation(line: 379, column: 13, scope: !725, inlinedAt: !686)
!728 = !DILocation(line: 379, column: 19, scope: !725, inlinedAt: !686)
!729 = !DILocation(line: 379, column: 25, scope: !725, inlinedAt: !686)
!730 = !DILocation(line: 378, column: 35, scope: !725, inlinedAt: !686)
!731 = !DILocation(line: 378, column: 3, scope: !726, inlinedAt: !686)
!732 = distinct !{!732, !731, !733, !338, !339}
!733 = !DILocation(line: 379, column: 27, scope: !726, inlinedAt: !686)
!734 = !DILocation(line: 383, column: 7, scope: !735, inlinedAt: !686)
!735 = distinct !DILexicalBlock(scope: !695, file: !28, line: 382, column: 7)
!736 = !DILocation(line: 384, column: 9, scope: !735, inlinedAt: !686)
!737 = !DILocation(line: 386, column: 7, scope: !738, inlinedAt: !686)
!738 = distinct !DILexicalBlock(scope: !676, file: !28, line: 386, column: 6)
!739 = !DILocation(line: 386, column: 6, scope: !676, inlinedAt: !686)
!740 = !DILocation(line: 389, column: 12, scope: !741, inlinedAt: !686)
!741 = distinct !DILexicalBlock(scope: !738, file: !28, line: 389, column: 12)
!742 = !DILocation(line: 389, column: 12, scope: !738, inlinedAt: !686)
!743 = !DILocation(line: 237, column: 31, scope: !687, inlinedAt: !538)
!744 = !DILocation(line: 390, column: 17, scope: !745, inlinedAt: !686)
!745 = distinct !DILexicalBlock(scope: !746, file: !28, line: 390, column: 3)
!746 = distinct !DILexicalBlock(scope: !747, file: !28, line: 390, column: 3)
!747 = distinct !DILexicalBlock(scope: !741, file: !28, line: 389, column: 28)
!748 = !DILocation(line: 391, column: 13, scope: !745, inlinedAt: !686)
!749 = !DILocation(line: 391, column: 19, scope: !745, inlinedAt: !686)
!750 = !DILocation(line: 391, column: 25, scope: !745, inlinedAt: !686)
!751 = !DILocation(line: 390, column: 35, scope: !745, inlinedAt: !686)
!752 = !DILocation(line: 390, column: 3, scope: !746, inlinedAt: !686)
!753 = distinct !{!753, !752, !754, !338, !339}
!754 = !DILocation(line: 391, column: 27, scope: !746, inlinedAt: !686)
!755 = !DILocation(line: 234, column: 8, scope: !687, inlinedAt: !538)
!756 = !DILocation(line: 234, column: 8, scope: !688, inlinedAt: !538)
!757 = !DILocation(line: 0, scope: !578, inlinedAt: !758)
!758 = distinct !DILocation(line: 235, column: 5, scope: !687, inlinedAt: !538)
!759 = !DILocation(line: 0, scope: !587, inlinedAt: !760)
!760 = distinct !DILocation(line: 497, column: 2, scope: !578, inlinedAt: !758)
!761 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !760)
!762 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !760)
!763 = !DILocation(line: 0, scope: !598, inlinedAt: !760)
!764 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !760)
!765 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !760)
!766 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !760)
!767 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !760)
!768 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !760)
!769 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !760)
!770 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !760)
!771 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !760)
!772 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !760)
!773 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !760)
!774 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !760)
!775 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !760)
!776 = !DILocation(line: 0, scope: !605, inlinedAt: !760)
!777 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !760)
!778 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !760)
!779 = distinct !{!779, !765, !780, !338, !339}
!780 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !760)
!781 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !760)
!782 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !760)
!783 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !760)
!784 = !DILocation(line: 501, column: 2, scope: !578, inlinedAt: !758)
!785 = !DILocation(line: 0, scope: !627, inlinedAt: !758)
!786 = !DILocation(line: 503, column: 2, scope: !627, inlinedAt: !758)
!787 = !DILocation(line: 507, column: 27, scope: !630, inlinedAt: !758)
!788 = !DILocation(line: 507, column: 17, scope: !630, inlinedAt: !758)
!789 = !DILocation(line: 507, column: 7, scope: !630, inlinedAt: !758)
!790 = !DILocation(line: 507, column: 14, scope: !630, inlinedAt: !758)
!791 = !DILocation(line: 503, column: 41, scope: !631, inlinedAt: !758)
!792 = distinct !{!792, !786, !793, !338, !339}
!793 = !DILocation(line: 509, column: 2, scope: !627, inlinedAt: !758)
!794 = !DILocation(line: 0, scope: !643, inlinedAt: !795)
!795 = distinct !DILocation(line: 237, column: 5, scope: !687, inlinedAt: !538)
!796 = !DILocation(line: 237, column: 27, scope: !687, inlinedAt: !538)
!797 = !DILocation(line: 534, column: 9, scope: !654, inlinedAt: !795)
!798 = !DILocation(line: 536, column: 37, scope: !658, inlinedAt: !795)
!799 = !DILocation(line: 536, column: 2, scope: !659, inlinedAt: !795)
!800 = !DILocation(line: 0, scope: !659, inlinedAt: !795)
!801 = !DILocation(line: 538, column: 10, scope: !663, inlinedAt: !795)
!802 = !DILocation(line: 538, column: 15, scope: !663, inlinedAt: !795)
!803 = !DILocation(line: 539, column: 8, scope: !663, inlinedAt: !795)
!804 = !DILocation(line: 539, column: 15, scope: !663, inlinedAt: !795)
!805 = !DILocation(line: 539, column: 4, scope: !663, inlinedAt: !795)
!806 = !DILocation(line: 537, column: 4, scope: !658, inlinedAt: !795)
!807 = !DILocation(line: 537, column: 17, scope: !658, inlinedAt: !795)
!808 = distinct !{!808, !799, !809, !338, !339}
!809 = !DILocation(line: 540, column: 2, scope: !659, inlinedAt: !795)
!810 = distinct !{!810, !674, !811, !338, !339}
!811 = !DILocation(line: 238, column: 3, scope: !573, inlinedAt: !538)
!812 = !DILocation(line: 0, scope: !643, inlinedAt: !813)
!813 = distinct !DILocation(line: 240, column: 3, scope: !570, inlinedAt: !538)
!814 = !DILocation(line: 536, column: 37, scope: !658, inlinedAt: !813)
!815 = !DILocation(line: 536, column: 2, scope: !659, inlinedAt: !813)
!816 = !DILocation(line: 0, scope: !659, inlinedAt: !813)
!817 = !DILocation(line: 538, column: 15, scope: !663, inlinedAt: !813)
!818 = !DILocation(line: 539, column: 8, scope: !663, inlinedAt: !813)
!819 = !DILocation(line: 539, column: 15, scope: !663, inlinedAt: !813)
!820 = !DILocation(line: 539, column: 4, scope: !663, inlinedAt: !813)
!821 = !DILocation(line: 537, column: 4, scope: !658, inlinedAt: !813)
!822 = !DILocation(line: 537, column: 17, scope: !658, inlinedAt: !813)
!823 = distinct !{!823, !815, !824, !338, !339}
!824 = !DILocation(line: 540, column: 2, scope: !659, inlinedAt: !813)
!825 = !DILocation(line: 242, column: 6, scope: !826, inlinedAt: !538)
!826 = distinct !DILexicalBlock(scope: !530, file: !28, line: 242, column: 6)
!827 = !DILocation(line: 242, column: 6, scope: !530, inlinedAt: !538)
!828 = !DILocation(line: 243, column: 8, scope: !829, inlinedAt: !538)
!829 = distinct !DILexicalBlock(scope: !826, file: !28, line: 242, column: 13)
!830 = !DILocation(line: 244, column: 7, scope: !831, inlinedAt: !538)
!831 = distinct !DILexicalBlock(scope: !829, file: !28, line: 244, column: 7)
!832 = !DILocation(line: 244, column: 7, scope: !829, inlinedAt: !538)
!833 = !DILocalVariable(name: "mol", arg: 1, scope: !834, file: !28, line: 565, type: !50)
!834 = distinct !DISubprogram(name: "match_res_pat", scope: !28, file: !28, line: 565, type: !579, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!835 = !{!833, !836, !837, !838, !839}
!836 = !DILocalVariable(name: "pat", arg: 2, scope: !834, file: !28, line: 565, type: !29)
!837 = !DILocalVariable(name: "r", scope: !834, file: !28, line: 567, type: !23)
!838 = !DILocalVariable(name: "sp", scope: !834, file: !28, line: 568, type: !65)
!839 = !DILocalVariable(name: "res", scope: !834, file: !28, line: 569, type: !82)
!840 = !DILocation(line: 0, scope: !834, inlinedAt: !841)
!841 = distinct !DILocation(line: 245, column: 4, scope: !831, inlinedAt: !538)
!842 = !DILocation(line: 0, scope: !587, inlinedAt: !843)
!843 = distinct !DILocation(line: 571, column: 2, scope: !834, inlinedAt: !841)
!844 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !843)
!845 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !843)
!846 = !DILocation(line: 0, scope: !598, inlinedAt: !843)
!847 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !843)
!848 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !843)
!849 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !843)
!850 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !843)
!851 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !843)
!852 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !843)
!853 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !843)
!854 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !843)
!855 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !843)
!856 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !843)
!857 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !843)
!858 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !843)
!859 = !DILocation(line: 0, scope: !605, inlinedAt: !843)
!860 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !843)
!861 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !843)
!862 = distinct !{!862, !848, !863, !338, !339}
!863 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !843)
!864 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !843)
!865 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !843)
!866 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !843)
!867 = !DILocation(line: 575, column: 2, scope: !834, inlinedAt: !841)
!868 = !DILocation(line: 0, scope: !869, inlinedAt: !841)
!869 = distinct !DILexicalBlock(scope: !834, file: !28, line: 577, column: 2)
!870 = !DILocation(line: 577, column: 2, scope: !869, inlinedAt: !841)
!871 = !DILocation(line: 578, column: 23, scope: !872, inlinedAt: !841)
!872 = distinct !DILexicalBlock(scope: !873, file: !28, line: 578, column: 7)
!873 = distinct !DILexicalBlock(scope: !874, file: !28, line: 577, column: 49)
!874 = distinct !DILexicalBlock(scope: !869, file: !28, line: 577, column: 2)
!875 = !DILocation(line: 578, column: 17, scope: !872, inlinedAt: !841)
!876 = !DILocation(line: 578, column: 7, scope: !873, inlinedAt: !841)
!877 = !DILocation(line: 579, column: 24, scope: !878, inlinedAt: !841)
!878 = distinct !DILexicalBlock(scope: !879, file: !28, line: 579, column: 4)
!879 = distinct !DILexicalBlock(scope: !880, file: !28, line: 579, column: 4)
!880 = distinct !DILexicalBlock(scope: !872, file: !28, line: 578, column: 31)
!881 = !DILocation(line: 579, column: 18, scope: !878, inlinedAt: !841)
!882 = !DILocation(line: 579, column: 4, scope: !879, inlinedAt: !841)
!883 = !DILocation(line: 580, column: 15, scope: !884, inlinedAt: !841)
!884 = distinct !DILexicalBlock(scope: !878, file: !28, line: 579, column: 42)
!885 = !DILocation(line: 580, column: 11, scope: !884, inlinedAt: !841)
!886 = !DILocation(line: 585, column: 31, scope: !884, inlinedAt: !841)
!887 = !{!307, !282, i64 24}
!888 = !DILocation(line: 585, column: 20, scope: !884, inlinedAt: !841)
!889 = !DILocation(line: 585, column: 10, scope: !884, inlinedAt: !841)
!890 = !DILocation(line: 585, column: 17, scope: !884, inlinedAt: !841)
!891 = !DILocation(line: 579, column: 38, scope: !878, inlinedAt: !841)
!892 = distinct !{!892, !882, !893, !338, !339}
!893 = !DILocation(line: 588, column: 4, scope: !879, inlinedAt: !841)
!894 = !DILocation(line: 577, column: 41, scope: !874, inlinedAt: !841)
!895 = distinct !{!895, !870, !896, !338, !339}
!896 = !DILocation(line: 590, column: 2, scope: !869, inlinedAt: !841)
!897 = !DILocation(line: 247, column: 26, scope: !831, inlinedAt: !538)
!898 = !DILocation(line: 247, column: 30, scope: !831, inlinedAt: !538)
!899 = !DILocalVariable(name: "mol", arg: 1, scope: !900, file: !28, line: 608, type: !50)
!900 = distinct !DISubprogram(name: "match_res_range", scope: !28, file: !28, line: 608, type: !644, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !901)
!901 = !{!899, !902, !903, !904, !905, !906, !907}
!902 = !DILocalVariable(name: "lo", arg: 2, scope: !900, file: !28, line: 608, type: !23)
!903 = !DILocalVariable(name: "hi", arg: 3, scope: !900, file: !28, line: 608, type: !23)
!904 = !DILocalVariable(name: "r", scope: !900, file: !28, line: 610, type: !23)
!905 = !DILocalVariable(name: "rhi", scope: !900, file: !28, line: 610, type: !23)
!906 = !DILocalVariable(name: "sp", scope: !900, file: !28, line: 611, type: !65)
!907 = !DILocalVariable(name: "res", scope: !900, file: !28, line: 612, type: !82)
!908 = !DILocation(line: 0, scope: !900, inlinedAt: !909)
!909 = distinct !DILocation(line: 247, column: 4, scope: !831, inlinedAt: !538)
!910 = !DILocation(line: 0, scope: !911, inlinedAt: !909)
!911 = distinct !DILexicalBlock(scope: !900, file: !28, line: 614, column: 2)
!912 = !DILocation(line: 614, column: 2, scope: !911, inlinedAt: !909)
!913 = !DILocation(line: 616, column: 10, scope: !914, inlinedAt: !909)
!914 = distinct !DILexicalBlock(scope: !915, file: !28, line: 615, column: 31)
!915 = distinct !DILexicalBlock(scope: !916, file: !28, line: 615, column: 7)
!916 = distinct !DILexicalBlock(scope: !917, file: !28, line: 614, column: 49)
!917 = distinct !DILexicalBlock(scope: !911, file: !28, line: 614, column: 2)
!918 = !DILocation(line: 615, column: 23, scope: !915, inlinedAt: !909)
!919 = !DILocation(line: 615, column: 17, scope: !915, inlinedAt: !909)
!920 = !DILocation(line: 615, column: 7, scope: !916, inlinedAt: !909)
!921 = !DILocation(line: 616, column: 32, scope: !914, inlinedAt: !909)
!922 = !DILocation(line: 617, column: 18, scope: !923, inlinedAt: !909)
!923 = distinct !DILexicalBlock(scope: !924, file: !28, line: 617, column: 4)
!924 = distinct !DILexicalBlock(scope: !914, file: !28, line: 617, column: 4)
!925 = !DILocation(line: 617, column: 4, scope: !924, inlinedAt: !909)
!926 = !DILocation(line: 619, column: 17, scope: !927, inlinedAt: !909)
!927 = distinct !DILexicalBlock(scope: !928, file: !28, line: 619, column: 9)
!928 = distinct !DILexicalBlock(scope: !923, file: !28, line: 617, column: 42)
!929 = !DILocation(line: 619, column: 12, scope: !927, inlinedAt: !909)
!930 = !DILocation(line: 619, column: 21, scope: !927, inlinedAt: !909)
!931 = !DILocation(line: 618, column: 15, scope: !928, inlinedAt: !909)
!932 = !DILocation(line: 618, column: 11, scope: !928, inlinedAt: !909)
!933 = !DILocation(line: 620, column: 11, scope: !927, inlinedAt: !909)
!934 = !DILocation(line: 620, column: 18, scope: !927, inlinedAt: !909)
!935 = !DILocation(line: 620, column: 6, scope: !927, inlinedAt: !909)
!936 = distinct !{!936, !925, !937, !338, !339}
!937 = !DILocation(line: 621, column: 4, scope: !924, inlinedAt: !909)
!938 = !DILocation(line: 614, column: 41, scope: !917, inlinedAt: !909)
!939 = distinct !{!939, !912, !940, !338, !339}
!940 = !DILocation(line: 623, column: 2, scope: !911, inlinedAt: !909)
!941 = distinct !{!941, !925, !937, !338, !339}
!942 = distinct !{!942, !912, !940, !338, !339}
!943 = !DILocation(line: 248, column: 16, scope: !829, inlinedAt: !538)
!944 = !DILocation(line: 248, column: 3, scope: !829, inlinedAt: !538)
!945 = !DILocation(line: 0, scope: !676, inlinedAt: !946)
!946 = distinct !DILocation(line: 249, column: 8, scope: !947, inlinedAt: !538)
!947 = distinct !DILexicalBlock(scope: !948, file: !28, line: 249, column: 8)
!948 = distinct !DILexicalBlock(scope: !829, file: !28, line: 248, column: 38)
!949 = !DILocation(line: 362, column: 7, scope: !690, inlinedAt: !946)
!950 = !DILocation(line: 362, column: 24, scope: !690, inlinedAt: !946)
!951 = !DILocation(line: 364, column: 6, scope: !695, inlinedAt: !946)
!952 = !DILocation(line: 364, column: 6, scope: !676, inlinedAt: !946)
!953 = !DILocation(line: 365, column: 28, scope: !698, inlinedAt: !946)
!954 = !DILocation(line: 366, column: 13, scope: !698, inlinedAt: !946)
!955 = !DILocation(line: 366, column: 19, scope: !698, inlinedAt: !946)
!956 = !DILocation(line: 366, column: 25, scope: !698, inlinedAt: !946)
!957 = !DILocation(line: 365, column: 46, scope: !698, inlinedAt: !946)
!958 = !DILocation(line: 365, column: 3, scope: !699, inlinedAt: !946)
!959 = distinct !{!959, !958, !960, !338, !339}
!960 = !DILocation(line: 366, column: 27, scope: !699, inlinedAt: !946)
!961 = !DILocation(line: 367, column: 7, scope: !700, inlinedAt: !946)
!962 = !DILocation(line: 368, column: 7, scope: !700, inlinedAt: !946)
!963 = !DILocation(line: 369, column: 8, scope: !711, inlinedAt: !946)
!964 = !DILocation(line: 370, column: 4, scope: !711, inlinedAt: !946)
!965 = !DILocation(line: 372, column: 6, scope: !715, inlinedAt: !946)
!966 = !DILocation(line: 373, column: 8, scope: !717, inlinedAt: !946)
!967 = !DILocation(line: 372, column: 4, scope: !715, inlinedAt: !946)
!968 = !DILocation(line: 0, scope: !700, inlinedAt: !946)
!969 = !DILocation(line: 373, column: 7, scope: !700, inlinedAt: !946)
!970 = !DILocation(line: 374, column: 8, scope: !971, inlinedAt: !946)
!971 = distinct !DILexicalBlock(scope: !717, file: !28, line: 373, column: 13)
!972 = !DILocation(line: 375, column: 4, scope: !971, inlinedAt: !946)
!973 = !DILocation(line: 376, column: 14, scope: !722, inlinedAt: !946)
!974 = !DILocation(line: 376, column: 13, scope: !717, inlinedAt: !946)
!975 = !DILocation(line: 378, column: 17, scope: !725, inlinedAt: !946)
!976 = !DILocation(line: 379, column: 13, scope: !725, inlinedAt: !946)
!977 = !DILocation(line: 379, column: 19, scope: !725, inlinedAt: !946)
!978 = !DILocation(line: 379, column: 25, scope: !725, inlinedAt: !946)
!979 = !DILocation(line: 378, column: 35, scope: !725, inlinedAt: !946)
!980 = !DILocation(line: 378, column: 3, scope: !726, inlinedAt: !946)
!981 = distinct !{!981, !980, !982, !338, !339}
!982 = !DILocation(line: 379, column: 27, scope: !726, inlinedAt: !946)
!983 = !DILocation(line: 383, column: 7, scope: !735, inlinedAt: !946)
!984 = !DILocation(line: 384, column: 9, scope: !735, inlinedAt: !946)
!985 = !DILocation(line: 386, column: 7, scope: !738, inlinedAt: !946)
!986 = !DILocation(line: 386, column: 6, scope: !676, inlinedAt: !946)
!987 = !DILocation(line: 387, column: 7, scope: !988, inlinedAt: !946)
!988 = distinct !DILexicalBlock(scope: !738, file: !28, line: 386, column: 12)
!989 = !DILocation(line: 388, column: 3, scope: !988, inlinedAt: !946)
!990 = !DILocation(line: 389, column: 12, scope: !741, inlinedAt: !946)
!991 = !DILocation(line: 389, column: 12, scope: !738, inlinedAt: !946)
!992 = !DILocation(line: 252, column: 31, scope: !947, inlinedAt: !538)
!993 = !DILocation(line: 390, column: 17, scope: !745, inlinedAt: !946)
!994 = !DILocation(line: 391, column: 13, scope: !745, inlinedAt: !946)
!995 = !DILocation(line: 391, column: 19, scope: !745, inlinedAt: !946)
!996 = !DILocation(line: 391, column: 25, scope: !745, inlinedAt: !946)
!997 = !DILocation(line: 390, column: 35, scope: !745, inlinedAt: !946)
!998 = !DILocation(line: 390, column: 3, scope: !746, inlinedAt: !946)
!999 = distinct !{!999, !998, !1000, !338, !339}
!1000 = !DILocation(line: 391, column: 27, scope: !746, inlinedAt: !946)
!1001 = !DILocation(line: 249, column: 8, scope: !947, inlinedAt: !538)
!1002 = !DILocation(line: 249, column: 8, scope: !948, inlinedAt: !538)
!1003 = !DILocation(line: 0, scope: !834, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 250, column: 5, scope: !947, inlinedAt: !538)
!1005 = !DILocation(line: 0, scope: !587, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 571, column: 2, scope: !834, inlinedAt: !1004)
!1007 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !1006)
!1008 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !1006)
!1009 = !DILocation(line: 0, scope: !598, inlinedAt: !1006)
!1010 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !1006)
!1011 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1006)
!1012 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !1006)
!1013 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !1006)
!1014 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !1006)
!1015 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !1006)
!1016 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !1006)
!1017 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !1006)
!1018 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !1006)
!1019 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !1006)
!1020 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !1006)
!1021 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !1006)
!1022 = !DILocation(line: 0, scope: !605, inlinedAt: !1006)
!1023 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !1006)
!1024 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !1006)
!1025 = distinct !{!1025, !1011, !1026, !338, !339}
!1026 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !1006)
!1027 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !1006)
!1028 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !1006)
!1029 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !1006)
!1030 = !DILocation(line: 575, column: 2, scope: !834, inlinedAt: !1004)
!1031 = !DILocation(line: 0, scope: !869, inlinedAt: !1004)
!1032 = !DILocation(line: 577, column: 2, scope: !869, inlinedAt: !1004)
!1033 = !DILocation(line: 578, column: 23, scope: !872, inlinedAt: !1004)
!1034 = !DILocation(line: 578, column: 17, scope: !872, inlinedAt: !1004)
!1035 = !DILocation(line: 578, column: 7, scope: !873, inlinedAt: !1004)
!1036 = !DILocation(line: 579, column: 24, scope: !878, inlinedAt: !1004)
!1037 = !DILocation(line: 579, column: 18, scope: !878, inlinedAt: !1004)
!1038 = !DILocation(line: 579, column: 4, scope: !879, inlinedAt: !1004)
!1039 = !DILocation(line: 580, column: 15, scope: !884, inlinedAt: !1004)
!1040 = !DILocation(line: 580, column: 11, scope: !884, inlinedAt: !1004)
!1041 = !DILocation(line: 585, column: 31, scope: !884, inlinedAt: !1004)
!1042 = !DILocation(line: 585, column: 20, scope: !884, inlinedAt: !1004)
!1043 = !DILocation(line: 585, column: 10, scope: !884, inlinedAt: !1004)
!1044 = !DILocation(line: 585, column: 17, scope: !884, inlinedAt: !1004)
!1045 = !DILocation(line: 579, column: 38, scope: !878, inlinedAt: !1004)
!1046 = distinct !{!1046, !1038, !1047, !338, !339}
!1047 = !DILocation(line: 588, column: 4, scope: !879, inlinedAt: !1004)
!1048 = !DILocation(line: 577, column: 41, scope: !874, inlinedAt: !1004)
!1049 = distinct !{!1049, !1032, !1050, !338, !339}
!1050 = !DILocation(line: 590, column: 2, scope: !869, inlinedAt: !1004)
!1051 = !DILocation(line: 252, column: 27, scope: !947, inlinedAt: !538)
!1052 = !DILocation(line: 0, scope: !900, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 252, column: 5, scope: !947, inlinedAt: !538)
!1054 = !DILocation(line: 0, scope: !911, inlinedAt: !1053)
!1055 = !DILocation(line: 614, column: 2, scope: !911, inlinedAt: !1053)
!1056 = !DILocation(line: 616, column: 10, scope: !914, inlinedAt: !1053)
!1057 = !DILocation(line: 615, column: 23, scope: !915, inlinedAt: !1053)
!1058 = !DILocation(line: 615, column: 17, scope: !915, inlinedAt: !1053)
!1059 = !DILocation(line: 615, column: 7, scope: !916, inlinedAt: !1053)
!1060 = !DILocation(line: 616, column: 32, scope: !914, inlinedAt: !1053)
!1061 = !DILocation(line: 617, column: 18, scope: !923, inlinedAt: !1053)
!1062 = !DILocation(line: 617, column: 4, scope: !924, inlinedAt: !1053)
!1063 = !DILocation(line: 619, column: 17, scope: !927, inlinedAt: !1053)
!1064 = !DILocation(line: 619, column: 12, scope: !927, inlinedAt: !1053)
!1065 = !DILocation(line: 619, column: 21, scope: !927, inlinedAt: !1053)
!1066 = !DILocation(line: 618, column: 15, scope: !928, inlinedAt: !1053)
!1067 = !DILocation(line: 618, column: 11, scope: !928, inlinedAt: !1053)
!1068 = !DILocation(line: 620, column: 11, scope: !927, inlinedAt: !1053)
!1069 = !DILocation(line: 620, column: 18, scope: !927, inlinedAt: !1053)
!1070 = !DILocation(line: 620, column: 6, scope: !927, inlinedAt: !1053)
!1071 = distinct !{!1071, !1062, !1072, !338, !339}
!1072 = !DILocation(line: 621, column: 4, scope: !924, inlinedAt: !1053)
!1073 = !DILocation(line: 614, column: 41, scope: !917, inlinedAt: !1053)
!1074 = distinct !{!1074, !1055, !1075, !338, !339}
!1075 = !DILocation(line: 623, column: 2, scope: !911, inlinedAt: !1053)
!1076 = distinct !{!1076, !1062, !1072, !338, !339}
!1077 = distinct !{!1077, !1055, !1075, !338, !339}
!1078 = distinct !{!1078, !944, !1079, !338, !339}
!1079 = !DILocation(line: 253, column: 3, scope: !829, inlinedAt: !538)
!1080 = !DILocation(line: 0, scope: !900, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 255, column: 3, scope: !826, inlinedAt: !538)
!1082 = !DILocation(line: 0, scope: !911, inlinedAt: !1081)
!1083 = !DILocation(line: 614, column: 2, scope: !911, inlinedAt: !1081)
!1084 = !DILocation(line: 615, column: 23, scope: !915, inlinedAt: !1081)
!1085 = !DILocation(line: 615, column: 17, scope: !915, inlinedAt: !1081)
!1086 = !DILocation(line: 615, column: 7, scope: !916, inlinedAt: !1081)
!1087 = !DILocation(line: 616, column: 32, scope: !914, inlinedAt: !1081)
!1088 = !DILocation(line: 617, column: 18, scope: !923, inlinedAt: !1081)
!1089 = !DILocation(line: 617, column: 4, scope: !924, inlinedAt: !1081)
!1090 = !DILocation(line: 619, column: 17, scope: !927, inlinedAt: !1081)
!1091 = !DILocation(line: 618, column: 11, scope: !928, inlinedAt: !1081)
!1092 = !DILocation(line: 620, column: 11, scope: !927, inlinedAt: !1081)
!1093 = !DILocation(line: 620, column: 18, scope: !927, inlinedAt: !1081)
!1094 = distinct !{!1094, !1089, !1095, !338, !339}
!1095 = !DILocation(line: 621, column: 4, scope: !924, inlinedAt: !1081)
!1096 = !DILocation(line: 614, column: 41, scope: !917, inlinedAt: !1081)
!1097 = distinct !{!1097, !1083, !1098, !338, !339}
!1098 = !DILocation(line: 623, column: 2, scope: !911, inlinedAt: !1081)
!1099 = !DILocation(line: 257, column: 6, scope: !1100, inlinedAt: !538)
!1100 = distinct !DILexicalBlock(scope: !530, file: !28, line: 257, column: 6)
!1101 = !DILocation(line: 257, column: 6, scope: !530, inlinedAt: !538)
!1102 = !DILocation(line: 258, column: 8, scope: !1103, inlinedAt: !538)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !28, line: 257, column: 13)
!1104 = !DILocation(line: 259, column: 7, scope: !1105, inlinedAt: !538)
!1105 = distinct !DILexicalBlock(scope: !1103, file: !28, line: 259, column: 7)
!1106 = !DILocation(line: 259, column: 7, scope: !1103, inlinedAt: !538)
!1107 = !DILocation(line: 260, column: 4, scope: !1105, inlinedAt: !538)
!1108 = !DILocation(line: 262, column: 13, scope: !1109, inlinedAt: !538)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !28, line: 261, column: 7)
!1110 = !DILocation(line: 262, column: 4, scope: !1109, inlinedAt: !538)
!1111 = !DILocation(line: 264, column: 16, scope: !1103, inlinedAt: !538)
!1112 = !DILocation(line: 264, column: 3, scope: !1103, inlinedAt: !538)
!1113 = !DILocation(line: 0, scope: !676, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 265, column: 8, scope: !1115, inlinedAt: !538)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !28, line: 265, column: 8)
!1116 = distinct !DILexicalBlock(scope: !1103, file: !28, line: 264, column: 38)
!1117 = !DILocation(line: 362, column: 7, scope: !690, inlinedAt: !1114)
!1118 = !DILocation(line: 362, column: 24, scope: !690, inlinedAt: !1114)
!1119 = !DILocation(line: 364, column: 6, scope: !695, inlinedAt: !1114)
!1120 = !DILocation(line: 364, column: 6, scope: !676, inlinedAt: !1114)
!1121 = !DILocation(line: 365, column: 28, scope: !698, inlinedAt: !1114)
!1122 = !DILocation(line: 366, column: 13, scope: !698, inlinedAt: !1114)
!1123 = !DILocation(line: 366, column: 19, scope: !698, inlinedAt: !1114)
!1124 = !DILocation(line: 366, column: 25, scope: !698, inlinedAt: !1114)
!1125 = !DILocation(line: 365, column: 46, scope: !698, inlinedAt: !1114)
!1126 = !DILocation(line: 365, column: 3, scope: !699, inlinedAt: !1114)
!1127 = distinct !{!1127, !1126, !1128, !338, !339}
!1128 = !DILocation(line: 366, column: 27, scope: !699, inlinedAt: !1114)
!1129 = !DILocation(line: 367, column: 7, scope: !700, inlinedAt: !1114)
!1130 = !DILocation(line: 368, column: 7, scope: !700, inlinedAt: !1114)
!1131 = !DILocation(line: 369, column: 8, scope: !711, inlinedAt: !1114)
!1132 = !DILocation(line: 370, column: 4, scope: !711, inlinedAt: !1114)
!1133 = !DILocation(line: 372, column: 6, scope: !715, inlinedAt: !1114)
!1134 = !DILocation(line: 373, column: 8, scope: !717, inlinedAt: !1114)
!1135 = !DILocation(line: 372, column: 4, scope: !715, inlinedAt: !1114)
!1136 = !DILocation(line: 0, scope: !700, inlinedAt: !1114)
!1137 = !DILocation(line: 373, column: 7, scope: !700, inlinedAt: !1114)
!1138 = !DILocation(line: 374, column: 8, scope: !971, inlinedAt: !1114)
!1139 = !DILocation(line: 375, column: 4, scope: !971, inlinedAt: !1114)
!1140 = !DILocation(line: 376, column: 14, scope: !722, inlinedAt: !1114)
!1141 = !DILocation(line: 376, column: 13, scope: !717, inlinedAt: !1114)
!1142 = !DILocation(line: 378, column: 17, scope: !725, inlinedAt: !1114)
!1143 = !DILocation(line: 379, column: 13, scope: !725, inlinedAt: !1114)
!1144 = !DILocation(line: 379, column: 19, scope: !725, inlinedAt: !1114)
!1145 = !DILocation(line: 379, column: 25, scope: !725, inlinedAt: !1114)
!1146 = !DILocation(line: 378, column: 35, scope: !725, inlinedAt: !1114)
!1147 = !DILocation(line: 378, column: 3, scope: !726, inlinedAt: !1114)
!1148 = distinct !{!1148, !1147, !1149, !338, !339}
!1149 = !DILocation(line: 379, column: 27, scope: !726, inlinedAt: !1114)
!1150 = !DILocation(line: 383, column: 7, scope: !735, inlinedAt: !1114)
!1151 = !DILocation(line: 384, column: 9, scope: !735, inlinedAt: !1114)
!1152 = !DILocation(line: 386, column: 7, scope: !738, inlinedAt: !1114)
!1153 = !DILocation(line: 386, column: 6, scope: !676, inlinedAt: !1114)
!1154 = !DILocation(line: 387, column: 7, scope: !988, inlinedAt: !1114)
!1155 = !DILocation(line: 388, column: 3, scope: !988, inlinedAt: !1114)
!1156 = !DILocation(line: 389, column: 12, scope: !741, inlinedAt: !1114)
!1157 = !DILocation(line: 389, column: 12, scope: !738, inlinedAt: !1114)
!1158 = !DILocation(line: 390, column: 17, scope: !745, inlinedAt: !1114)
!1159 = !DILocation(line: 391, column: 13, scope: !745, inlinedAt: !1114)
!1160 = !DILocation(line: 391, column: 19, scope: !745, inlinedAt: !1114)
!1161 = !DILocation(line: 391, column: 25, scope: !745, inlinedAt: !1114)
!1162 = !DILocation(line: 390, column: 35, scope: !745, inlinedAt: !1114)
!1163 = !DILocation(line: 390, column: 3, scope: !746, inlinedAt: !1114)
!1164 = distinct !{!1164, !1163, !1165, !338, !339}
!1165 = !DILocation(line: 391, column: 27, scope: !746, inlinedAt: !1114)
!1166 = !DILocation(line: 265, column: 8, scope: !1115, inlinedAt: !538)
!1167 = !DILocation(line: 265, column: 8, scope: !1116, inlinedAt: !538)
!1168 = !DILocalVariable(name: "mol", arg: 1, scope: !1169, file: !28, line: 646, type: !50)
!1169 = distinct !DISubprogram(name: "match_atom_pat", scope: !28, file: !28, line: 646, type: !579, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1170 = !{!1168, !1171, !1172, !1173, !1174, !1175, !1176}
!1171 = !DILocalVariable(name: "pat", arg: 2, scope: !1169, file: !28, line: 646, type: !29)
!1172 = !DILocalVariable(name: "r", scope: !1169, file: !28, line: 648, type: !23)
!1173 = !DILocalVariable(name: "a", scope: !1169, file: !28, line: 648, type: !23)
!1174 = !DILocalVariable(name: "sp", scope: !1169, file: !28, line: 649, type: !65)
!1175 = !DILocalVariable(name: "res", scope: !1169, file: !28, line: 650, type: !82)
!1176 = !DILocalVariable(name: "ap", scope: !1169, file: !28, line: 651, type: !128)
!1177 = !DILocation(line: 0, scope: !1169, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 266, column: 5, scope: !1115, inlinedAt: !538)
!1179 = !DILocation(line: 0, scope: !587, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 653, column: 2, scope: !1169, inlinedAt: !1178)
!1181 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !1180)
!1182 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !1180)
!1183 = !DILocation(line: 0, scope: !598, inlinedAt: !1180)
!1184 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !1180)
!1185 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1180)
!1186 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !1180)
!1187 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !1180)
!1188 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !1180)
!1189 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !1180)
!1190 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !1180)
!1191 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !1180)
!1192 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !1180)
!1193 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !1180)
!1194 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !1180)
!1195 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !1180)
!1196 = !DILocation(line: 0, scope: !605, inlinedAt: !1180)
!1197 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !1180)
!1198 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !1180)
!1199 = distinct !{!1199, !1185, !1200, !338, !339}
!1200 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !1180)
!1201 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !1180)
!1202 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !1180)
!1203 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !1180)
!1204 = !DILocation(line: 657, column: 2, scope: !1169, inlinedAt: !1178)
!1205 = !DILocation(line: 0, scope: !1206, inlinedAt: !1178)
!1206 = distinct !DILexicalBlock(scope: !1169, file: !28, line: 659, column: 2)
!1207 = !DILocation(line: 659, column: 2, scope: !1206, inlinedAt: !1178)
!1208 = !DILocation(line: 660, column: 23, scope: !1209, inlinedAt: !1178)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !28, line: 660, column: 7)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !28, line: 659, column: 49)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !28, line: 659, column: 2)
!1212 = !DILocation(line: 660, column: 17, scope: !1209, inlinedAt: !1178)
!1213 = !DILocation(line: 660, column: 7, scope: !1210, inlinedAt: !1178)
!1214 = !DILocation(line: 661, column: 24, scope: !1215, inlinedAt: !1178)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !28, line: 661, column: 4)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !28, line: 661, column: 4)
!1217 = distinct !DILexicalBlock(scope: !1209, file: !28, line: 660, column: 31)
!1218 = !DILocation(line: 661, column: 18, scope: !1215, inlinedAt: !1178)
!1219 = !DILocation(line: 661, column: 4, scope: !1216, inlinedAt: !1178)
!1220 = !DILocation(line: 662, column: 15, scope: !1221, inlinedAt: !1178)
!1221 = distinct !DILexicalBlock(scope: !1215, file: !28, line: 661, column: 42)
!1222 = !DILocation(line: 662, column: 11, scope: !1221, inlinedAt: !1178)
!1223 = !DILocation(line: 663, column: 26, scope: !1224, inlinedAt: !1178)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !28, line: 663, column: 9)
!1225 = !DILocation(line: 663, column: 19, scope: !1224, inlinedAt: !1178)
!1226 = !DILocation(line: 663, column: 9, scope: !1221, inlinedAt: !1178)
!1227 = !DILocation(line: 664, column: 27, scope: !1228, inlinedAt: !1178)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !28, line: 664, column: 6)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !28, line: 664, column: 6)
!1230 = distinct !DILexicalBlock(scope: !1224, file: !28, line: 663, column: 34)
!1231 = !DILocation(line: 664, column: 20, scope: !1228, inlinedAt: !1178)
!1232 = !DILocation(line: 664, column: 6, scope: !1229, inlinedAt: !1178)
!1233 = !DILocation(line: 665, column: 18, scope: !1234, inlinedAt: !1178)
!1234 = distinct !DILexicalBlock(scope: !1228, file: !28, line: 664, column: 42)
!1235 = !DILocation(line: 672, column: 20, scope: !1234, inlinedAt: !1178)
!1236 = !{!321, !282, i64 0}
!1237 = !DILocation(line: 672, column: 11, scope: !1234, inlinedAt: !1178)
!1238 = !DILocation(line: 671, column: 11, scope: !1234, inlinedAt: !1178)
!1239 = !DILocation(line: 671, column: 18, scope: !1234, inlinedAt: !1178)
!1240 = !DILocation(line: 664, column: 38, scope: !1228, inlinedAt: !1178)
!1241 = distinct !{!1241, !1232, !1242, !338, !339}
!1242 = !DILocation(line: 675, column: 6, scope: !1229, inlinedAt: !1178)
!1243 = !DILocation(line: 661, column: 38, scope: !1215, inlinedAt: !1178)
!1244 = distinct !{!1244, !1219, !1245, !338, !339}
!1245 = !DILocation(line: 677, column: 4, scope: !1216, inlinedAt: !1178)
!1246 = !DILocation(line: 659, column: 41, scope: !1211, inlinedAt: !1178)
!1247 = distinct !{!1247, !1207, !1248, !338, !339}
!1248 = !DILocation(line: 679, column: 2, scope: !1206, inlinedAt: !1178)
!1249 = !DILocation(line: 268, column: 14, scope: !1250, inlinedAt: !538)
!1250 = distinct !DILexicalBlock(scope: !1115, file: !28, line: 267, column: 8)
!1251 = !DILocation(line: 268, column: 5, scope: !1250, inlinedAt: !538)
!1252 = distinct !{!1252, !1112, !1253, !338, !339}
!1253 = !DILocation(line: 270, column: 3, scope: !1103, inlinedAt: !538)
!1254 = !DILocation(line: 272, column: 3, scope: !1100, inlinedAt: !538)
!1255 = !DILocation(line: 274, column: 1, scope: !530, inlinedAt: !538)
!1256 = !DILocalVariable(name: "mol", arg: 1, scope: !1257, file: !28, line: 449, type: !50)
!1257 = distinct !DISubprogram(name: "or_select", scope: !28, file: !28, line: 449, type: !384, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1258)
!1258 = !{!1256, !1259, !1260, !1261, !1262, !1263}
!1259 = !DILocalVariable(name: "a", scope: !1257, file: !28, line: 451, type: !23)
!1260 = !DILocalVariable(name: "r", scope: !1257, file: !28, line: 451, type: !23)
!1261 = !DILocalVariable(name: "sp", scope: !1257, file: !28, line: 452, type: !65)
!1262 = !DILocalVariable(name: "res", scope: !1257, file: !28, line: 453, type: !82)
!1263 = !DILocalVariable(name: "ap", scope: !1257, file: !28, line: 454, type: !128)
!1264 = !DILocation(line: 0, scope: !1257, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 124, column: 3, scope: !507)
!1266 = !DILocation(line: 0, scope: !1267, inlinedAt: !1265)
!1267 = distinct !DILexicalBlock(scope: !1257, file: !28, line: 456, column: 2)
!1268 = !DILocation(line: 456, column: 2, scope: !1267, inlinedAt: !1265)
!1269 = !DILocation(line: 457, column: 23, scope: !1270, inlinedAt: !1265)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !28, line: 456, column: 49)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !28, line: 456, column: 2)
!1272 = !DILocation(line: 457, column: 17, scope: !1270, inlinedAt: !1265)
!1273 = !DILocation(line: 457, column: 14, scope: !1270, inlinedAt: !1265)
!1274 = !DILocation(line: 458, column: 17, scope: !1275, inlinedAt: !1265)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !28, line: 458, column: 3)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !28, line: 458, column: 3)
!1277 = !DILocation(line: 458, column: 3, scope: !1276, inlinedAt: !1265)
!1278 = !DILocation(line: 459, column: 10, scope: !1279, inlinedAt: !1265)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !28, line: 458, column: 41)
!1280 = !DILocation(line: 460, column: 26, scope: !1279, inlinedAt: !1265)
!1281 = !DILocation(line: 460, column: 19, scope: !1279, inlinedAt: !1265)
!1282 = !DILocation(line: 460, column: 16, scope: !1279, inlinedAt: !1265)
!1283 = !DILocation(line: 462, column: 18, scope: !1284, inlinedAt: !1265)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !28, line: 462, column: 4)
!1285 = distinct !DILexicalBlock(scope: !1279, file: !28, line: 462, column: 4)
!1286 = !DILocation(line: 462, column: 4, scope: !1285, inlinedAt: !1265)
!1287 = !DILocation(line: 464, column: 25, scope: !1288, inlinedAt: !1265)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !28, line: 462, column: 40)
!1289 = !DILocation(line: 464, column: 19, scope: !1288, inlinedAt: !1265)
!1290 = !DILocation(line: 464, column: 16, scope: !1288, inlinedAt: !1265)
!1291 = !DILocation(line: 462, column: 36, scope: !1284, inlinedAt: !1265)
!1292 = distinct !{!1292, !1286, !1293, !338, !339}
!1293 = !DILocation(line: 466, column: 4, scope: !1285, inlinedAt: !1265)
!1294 = !DILocation(line: 458, column: 37, scope: !1275, inlinedAt: !1265)
!1295 = distinct !{!1295, !1277, !1296, !338, !339}
!1296 = !DILocation(line: 467, column: 3, scope: !1276, inlinedAt: !1265)
!1297 = !DILocation(line: 456, column: 41, scope: !1271, inlinedAt: !1265)
!1298 = distinct !{!1298, !1268, !1299, !338, !339}
!1299 = !DILocation(line: 468, column: 2, scope: !1267, inlinedAt: !1265)
!1300 = !DILocation(line: 126, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !507, file: !28, line: 126, column: 7)
!1302 = !DILocation(line: 126, column: 7, scope: !507)
!1303 = !DILocation(line: 127, column: 12, scope: !1301)
!1304 = !DILocation(line: 127, column: 4, scope: !1301)
!1305 = !DILocation(line: 0, scope: !507)
!1306 = !DILocation(line: 0, scope: !467, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 128, column: 3, scope: !507)
!1308 = !DILocation(line: 421, column: 2, scope: !466, inlinedAt: !1307)
!1309 = !DILocation(line: 422, column: 7, scope: !464, inlinedAt: !1307)
!1310 = !DILocation(line: 422, column: 14, scope: !464, inlinedAt: !1307)
!1311 = !DILocation(line: 423, column: 17, scope: !478, inlinedAt: !1307)
!1312 = !DILocation(line: 423, column: 3, scope: !479, inlinedAt: !1307)
!1313 = !DILocation(line: 424, column: 10, scope: !482, inlinedAt: !1307)
!1314 = !DILocation(line: 425, column: 9, scope: !482, inlinedAt: !1307)
!1315 = !DILocation(line: 425, column: 16, scope: !482, inlinedAt: !1307)
!1316 = !DILocation(line: 426, column: 18, scope: !486, inlinedAt: !1307)
!1317 = !DILocation(line: 426, column: 4, scope: !487, inlinedAt: !1307)
!1318 = !DILocation(line: 427, column: 23, scope: !486, inlinedAt: !1307)
!1319 = !DILocation(line: 427, column: 30, scope: !486, inlinedAt: !1307)
!1320 = !DILocation(line: 426, column: 36, scope: !486, inlinedAt: !1307)
!1321 = distinct !{!1321, !1317, !1322, !338, !339}
!1322 = !DILocation(line: 427, column: 34, scope: !487, inlinedAt: !1307)
!1323 = !DILocation(line: 423, column: 37, scope: !478, inlinedAt: !1307)
!1324 = distinct !{!1324, !1312, !1325, !338, !339}
!1325 = !DILocation(line: 428, column: 3, scope: !479, inlinedAt: !1307)
!1326 = !DILocation(line: 421, column: 41, scope: !465, inlinedAt: !1307)
!1327 = !DILocation(line: 0, scope: !466, inlinedAt: !1307)
!1328 = distinct !{!1328, !1308, !1329, !338, !339}
!1329 = !DILocation(line: 429, column: 2, scope: !466, inlinedAt: !1307)
!1330 = distinct !{!1330, !504, !1331, !338, !339}
!1331 = !DILocation(line: 129, column: 2, scope: !503)
!1332 = !DILocation(line: 479, column: 23, scope: !1333, inlinedAt: !1344)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !28, line: 478, column: 49)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !28, line: 478, column: 2)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !28, line: 478, column: 2)
!1336 = distinct !DISubprogram(name: "set_select", scope: !28, file: !28, line: 471, type: !384, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1343}
!1338 = !DILocalVariable(name: "mol", arg: 1, scope: !1336, file: !28, line: 471, type: !50)
!1339 = !DILocalVariable(name: "a", scope: !1336, file: !28, line: 473, type: !23)
!1340 = !DILocalVariable(name: "r", scope: !1336, file: !28, line: 473, type: !23)
!1341 = !DILocalVariable(name: "sp", scope: !1336, file: !28, line: 474, type: !65)
!1342 = !DILocalVariable(name: "res", scope: !1336, file: !28, line: 475, type: !82)
!1343 = !DILocalVariable(name: "ap", scope: !1336, file: !28, line: 476, type: !128)
!1344 = distinct !DILocation(line: 130, column: 2, scope: !369)
!1345 = !DILocation(line: 479, column: 17, scope: !1333, inlinedAt: !1344)
!1346 = !DILocation(line: 479, column: 14, scope: !1333, inlinedAt: !1344)
!1347 = !DILocation(line: 0, scope: !1336, inlinedAt: !1344)
!1348 = !DILocation(line: 480, column: 17, scope: !1349, inlinedAt: !1344)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !28, line: 480, column: 3)
!1350 = distinct !DILexicalBlock(scope: !1333, file: !28, line: 480, column: 3)
!1351 = !DILocation(line: 480, column: 3, scope: !1350, inlinedAt: !1344)
!1352 = !DILocation(line: 481, column: 10, scope: !1353, inlinedAt: !1344)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !28, line: 480, column: 41)
!1354 = !DILocation(line: 482, column: 26, scope: !1353, inlinedAt: !1344)
!1355 = !DILocation(line: 482, column: 19, scope: !1353, inlinedAt: !1344)
!1356 = !DILocation(line: 482, column: 16, scope: !1353, inlinedAt: !1344)
!1357 = !DILocation(line: 484, column: 18, scope: !1358, inlinedAt: !1344)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !28, line: 484, column: 4)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !28, line: 484, column: 4)
!1360 = !DILocation(line: 484, column: 4, scope: !1359, inlinedAt: !1344)
!1361 = !DILocation(line: 486, column: 25, scope: !1362, inlinedAt: !1344)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !28, line: 484, column: 40)
!1363 = !DILocation(line: 486, column: 19, scope: !1362, inlinedAt: !1344)
!1364 = !DILocation(line: 486, column: 16, scope: !1362, inlinedAt: !1344)
!1365 = !DILocation(line: 484, column: 36, scope: !1358, inlinedAt: !1344)
!1366 = distinct !{!1366, !1360, !1367, !338, !339}
!1367 = !DILocation(line: 488, column: 4, scope: !1359, inlinedAt: !1344)
!1368 = !DILocation(line: 480, column: 37, scope: !1349, inlinedAt: !1344)
!1369 = distinct !{!1369, !1351, !1370, !338, !339}
!1370 = !DILocation(line: 489, column: 3, scope: !1350, inlinedAt: !1344)
!1371 = !DILocation(line: 478, column: 41, scope: !1334, inlinedAt: !1344)
!1372 = !DILocation(line: 0, scope: !1335, inlinedAt: !1344)
!1373 = !DILocation(line: 478, column: 2, scope: !1335, inlinedAt: !1344)
!1374 = distinct !{!1374, !1373, !1375, !338, !339}
!1375 = !DILocation(line: 490, column: 2, scope: !1335, inlinedAt: !1344)
!1376 = !DILocation(line: 133, column: 1, scope: !369)
!1377 = distinct !DISubprogram(name: "atom_in_aexpr", scope: !28, file: !28, line: 135, type: !1378, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1380)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!23, !128, !29}
!1380 = !{!1381, !1382, !1383, !1384, !1385}
!1381 = !DILocalVariable(name: "ap", arg: 1, scope: !1377, file: !28, line: 135, type: !128)
!1382 = !DILocalVariable(name: "aex", arg: 2, scope: !1377, file: !28, line: 135, type: !29)
!1383 = !DILocalVariable(name: "aep", scope: !1377, file: !28, line: 137, type: !29)
!1384 = !DILocalVariable(name: "n_aep", scope: !1377, file: !28, line: 137, type: !29)
!1385 = !DILocalVariable(name: "ael", scope: !1377, file: !28, line: 138, type: !23)
!1386 = !DILocation(line: 0, scope: !1377)
!1387 = !DILocation(line: 140, column: 10, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1377, file: !28, line: 140, column: 6)
!1389 = !DILocation(line: 140, column: 6, scope: !1377)
!1390 = !DILocation(line: 143, column: 26, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1377, file: !28, line: 143, column: 2)
!1392 = !DILocation(line: 143, column: 2, scope: !1391)
!1393 = !DILocation(line: 144, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !28, line: 144, column: 7)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !28, line: 143, column: 52)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !28, line: 143, column: 2)
!1397 = !DILocation(line: 144, column: 7, scope: !1395)
!1398 = !DILocation(line: 145, column: 16, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !28, line: 144, column: 14)
!1400 = !DILocation(line: 146, column: 9, scope: !1399)
!1401 = !DILocation(line: 147, column: 3, scope: !1399)
!1402 = !DILocation(line: 148, column: 10, scope: !1394)
!1403 = !DILocation(line: 0, scope: !1391)
!1404 = !DILocation(line: 0, scope: !1394)
!1405 = !DILocation(line: 149, column: 11, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1395, file: !28, line: 149, column: 7)
!1407 = !DILocation(line: 149, column: 7, scope: !1395)
!1408 = !DILocation(line: 150, column: 13, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1406, file: !28, line: 149, column: 26)
!1410 = !DILocation(line: 150, column: 4, scope: !1409)
!1411 = !DILocation(line: 152, column: 4, scope: !1409)
!1412 = !DILocation(line: 154, column: 24, scope: !1395)
!1413 = !DILocation(line: 154, column: 3, scope: !1395)
!1414 = !DILocation(line: 155, column: 3, scope: !1395)
!1415 = !DILocation(line: 155, column: 16, scope: !1395)
!1416 = !DILocalVariable(name: "ap", arg: 1, scope: !1417, file: !28, line: 276, type: !128)
!1417 = distinct !DISubprogram(name: "atom_in_1_aexpr", scope: !28, file: !28, line: 276, type: !1378, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1418)
!1418 = !{!1416, !1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1419 = !DILocalVariable(name: "aex", arg: 2, scope: !1417, file: !28, line: 276, type: !29)
!1420 = !DILocalVariable(name: "aep", scope: !1417, file: !28, line: 278, type: !29)
!1421 = !DILocalVariable(name: "wp", scope: !1417, file: !28, line: 279, type: !29)
!1422 = !DILocalVariable(name: "lo", scope: !1417, file: !28, line: 280, type: !23)
!1423 = !DILocalVariable(name: "hi", scope: !1417, file: !28, line: 280, type: !23)
!1424 = !DILabel(scope: !1417, name: "RPART", file: !28, line: 316)
!1425 = !DILabel(scope: !1417, name: "APART", file: !28, line: 333)
!1426 = !DILocation(line: 0, scope: !1417, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 156, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1395, file: !28, line: 156, column: 7)
!1429 = !DILocation(line: 280, column: 2, scope: !1417, inlinedAt: !1427)
!1430 = !DILocation(line: 283, column: 6, scope: !1431, inlinedAt: !1427)
!1431 = distinct !DILexicalBlock(scope: !1417, file: !28, line: 283, column: 6)
!1432 = !DILocation(line: 283, column: 11, scope: !1431, inlinedAt: !1427)
!1433 = !DILocation(line: 283, column: 6, scope: !1417, inlinedAt: !1427)
!1434 = !DILocation(line: 284, column: 9, scope: !1435, inlinedAt: !1427)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !28, line: 283, column: 19)
!1436 = !DILocation(line: 286, column: 2, scope: !1435, inlinedAt: !1427)
!1437 = !DILocation(line: 287, column: 11, scope: !1438, inlinedAt: !1427)
!1438 = distinct !DILexicalBlock(scope: !1431, file: !28, line: 286, column: 7)
!1439 = !DILocation(line: 287, column: 9, scope: !1438, inlinedAt: !1427)
!1440 = !DILocation(line: 288, column: 10, scope: !1438, inlinedAt: !1427)
!1441 = !DILocation(line: 288, column: 26, scope: !1438, inlinedAt: !1427)
!1442 = !DILocation(line: 288, column: 7, scope: !1438, inlinedAt: !1427)
!1443 = !DILocation(line: 0, scope: !1431, inlinedAt: !1427)
!1444 = !DILocation(line: 290, column: 6, scope: !1445, inlinedAt: !1427)
!1445 = distinct !DILexicalBlock(scope: !1417, file: !28, line: 290, column: 6)
!1446 = !DILocation(line: 290, column: 11, scope: !1445, inlinedAt: !1427)
!1447 = !DILocation(line: 290, column: 6, scope: !1417, inlinedAt: !1427)
!1448 = !DILocation(line: 291, column: 9, scope: !1449, inlinedAt: !1427)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !28, line: 290, column: 19)
!1450 = !DILocation(line: 293, column: 2, scope: !1449, inlinedAt: !1427)
!1451 = !DILocation(line: 294, column: 11, scope: !1452, inlinedAt: !1427)
!1452 = distinct !DILexicalBlock(scope: !1445, file: !28, line: 293, column: 7)
!1453 = !DILocation(line: 294, column: 9, scope: !1452, inlinedAt: !1427)
!1454 = !DILocation(line: 295, column: 10, scope: !1452, inlinedAt: !1427)
!1455 = !DILocation(line: 295, column: 26, scope: !1452, inlinedAt: !1427)
!1456 = !DILocation(line: 0, scope: !1445, inlinedAt: !1427)
!1457 = !DILocation(line: 297, column: 10, scope: !1417, inlinedAt: !1427)
!1458 = !DILocation(line: 297, column: 8, scope: !1417, inlinedAt: !1427)
!1459 = !DILocation(line: 299, column: 6, scope: !1460, inlinedAt: !1427)
!1460 = distinct !DILexicalBlock(scope: !1417, file: !28, line: 299, column: 6)
!1461 = !DILocation(line: 299, column: 6, scope: !1417, inlinedAt: !1427)
!1462 = !DILocation(line: 300, column: 8, scope: !1463, inlinedAt: !1427)
!1463 = distinct !DILexicalBlock(scope: !1460, file: !28, line: 299, column: 13)
!1464 = !DILocation(line: 301, column: 7, scope: !1465, inlinedAt: !1427)
!1465 = distinct !DILexicalBlock(scope: !1463, file: !28, line: 301, column: 7)
!1466 = !DILocation(line: 301, column: 7, scope: !1463, inlinedAt: !1427)
!1467 = !DILocation(line: 302, column: 8, scope: !1468, inlinedAt: !1427)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !28, line: 302, column: 8)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !28, line: 301, column: 35)
!1470 = !{!321, !282, i64 56}
!1471 = !{!307, !282, i64 56}
!1472 = !DILocalVariable(name: "ap", arg: 1, scope: !1473, file: !28, line: 512, type: !128)
!1473 = distinct !DISubprogram(name: "atom_in_str_pat", scope: !28, file: !28, line: 512, type: !1378, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1474)
!1474 = !{!1472, !1475, !1476, !1477}
!1475 = !DILocalVariable(name: "pat", arg: 2, scope: !1473, file: !28, line: 512, type: !29)
!1476 = !DILocalVariable(name: "res", scope: !1473, file: !28, line: 514, type: !82)
!1477 = !DILocalVariable(name: "sp", scope: !1473, file: !28, line: 515, type: !65)
!1478 = !DILocation(line: 0, scope: !1473, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 302, column: 8, scope: !1468, inlinedAt: !1427)
!1480 = !DILocation(line: 0, scope: !587, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 519, column: 2, scope: !1473, inlinedAt: !1479)
!1482 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !1481)
!1483 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !1481)
!1484 = !DILocation(line: 0, scope: !598, inlinedAt: !1481)
!1485 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !1481)
!1486 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1481)
!1487 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !1481)
!1488 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !1481)
!1489 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !1481)
!1490 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !1481)
!1491 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !1481)
!1492 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !1481)
!1493 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !1481)
!1494 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !1481)
!1495 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !1481)
!1496 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !1481)
!1497 = !DILocation(line: 0, scope: !605, inlinedAt: !1481)
!1498 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !1481)
!1499 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !1481)
!1500 = distinct !{!1500, !1486, !1501, !338, !339}
!1501 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !1481)
!1502 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !1481)
!1503 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !1481)
!1504 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !1481)
!1505 = !DILocation(line: 524, column: 2, scope: !1473, inlinedAt: !1479)
!1506 = !DILocation(line: 525, column: 20, scope: !1473, inlinedAt: !1479)
!1507 = !DILocation(line: 525, column: 10, scope: !1473, inlinedAt: !1479)
!1508 = !DILocation(line: 302, column: 8, scope: !1469, inlinedAt: !1427)
!1509 = !DILocation(line: 304, column: 36, scope: !1510, inlinedAt: !1427)
!1510 = distinct !DILexicalBlock(scope: !1465, file: !28, line: 304, column: 13)
!1511 = !DILocation(line: 304, column: 40, scope: !1510, inlinedAt: !1427)
!1512 = !DILocation(line: 304, column: 13, scope: !1510, inlinedAt: !1427)
!1513 = !DILocalVariable(name: "ap", arg: 1, scope: !1514, file: !28, line: 543, type: !128)
!1514 = distinct !DISubprogram(name: "atom_in_str_range", scope: !28, file: !28, line: 543, type: !1515, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!23, !128, !23, !23}
!1517 = !{!1513, !1518, !1519, !1520, !1521, !1522, !1523, !1524}
!1518 = !DILocalVariable(name: "lo", arg: 2, scope: !1514, file: !28, line: 543, type: !23)
!1519 = !DILocalVariable(name: "hi", arg: 3, scope: !1514, file: !28, line: 543, type: !23)
!1520 = !DILocalVariable(name: "m", scope: !1514, file: !28, line: 545, type: !23)
!1521 = !DILocalVariable(name: "res", scope: !1514, file: !28, line: 546, type: !82)
!1522 = !DILocalVariable(name: "sp", scope: !1514, file: !28, line: 547, type: !65)
!1523 = !DILocalVariable(name: "sp1", scope: !1514, file: !28, line: 547, type: !65)
!1524 = !DILocalVariable(name: "mol", scope: !1514, file: !28, line: 548, type: !50)
!1525 = !DILocation(line: 0, scope: !1514, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 304, column: 13, scope: !1510, inlinedAt: !1427)
!1527 = !DILocation(line: 552, column: 12, scope: !1514, inlinedAt: !1526)
!1528 = !{!291, !282, i64 16}
!1529 = !DILocation(line: 553, column: 9, scope: !1530, inlinedAt: !1526)
!1530 = distinct !DILexicalBlock(scope: !1514, file: !28, line: 553, column: 6)
!1531 = !DILocation(line: 555, column: 38, scope: !1532, inlinedAt: !1526)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !28, line: 555, column: 2)
!1533 = distinct !DILexicalBlock(scope: !1514, file: !28, line: 555, column: 2)
!1534 = !DILocation(line: 555, column: 2, scope: !1533, inlinedAt: !1526)
!1535 = !DILocation(line: 555, column: 25, scope: !1533, inlinedAt: !1526)
!1536 = !DILocation(line: 0, scope: !1533, inlinedAt: !1526)
!1537 = !DILocation(line: 557, column: 10, scope: !1538, inlinedAt: !1526)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !28, line: 557, column: 7)
!1539 = distinct !DILexicalBlock(scope: !1532, file: !28, line: 556, column: 27)
!1540 = !DILocation(line: 557, column: 7, scope: !1539, inlinedAt: !1526)
!1541 = !DILocation(line: 556, column: 4, scope: !1532, inlinedAt: !1526)
!1542 = !DILocation(line: 556, column: 19, scope: !1532, inlinedAt: !1526)
!1543 = distinct !{!1543, !1534, !1544, !338, !339}
!1544 = !DILocation(line: 561, column: 2, scope: !1533, inlinedAt: !1526)
!1545 = !DILocation(line: 306, column: 16, scope: !1463, inlinedAt: !1427)
!1546 = !DILocation(line: 306, column: 3, scope: !1463, inlinedAt: !1427)
!1547 = !DILocation(line: 307, column: 8, scope: !1548, inlinedAt: !1427)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !28, line: 307, column: 8)
!1549 = distinct !DILexicalBlock(scope: !1463, file: !28, line: 306, column: 38)
!1550 = !DILocation(line: 307, column: 8, scope: !1549, inlinedAt: !1427)
!1551 = !DILocation(line: 308, column: 9, scope: !1552, inlinedAt: !1427)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !28, line: 308, column: 9)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !28, line: 307, column: 36)
!1554 = !DILocation(line: 0, scope: !1473, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 308, column: 9, scope: !1552, inlinedAt: !1427)
!1556 = !DILocation(line: 0, scope: !587, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 519, column: 2, scope: !1473, inlinedAt: !1555)
!1558 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !1557)
!1559 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !1557)
!1560 = !DILocation(line: 0, scope: !598, inlinedAt: !1557)
!1561 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !1557)
!1562 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1557)
!1563 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !1557)
!1564 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !1557)
!1565 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !1557)
!1566 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !1557)
!1567 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !1557)
!1568 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !1557)
!1569 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !1557)
!1570 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !1557)
!1571 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !1557)
!1572 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !1557)
!1573 = !DILocation(line: 0, scope: !605, inlinedAt: !1557)
!1574 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !1557)
!1575 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !1557)
!1576 = distinct !{!1576, !1562, !1577, !338, !339}
!1577 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !1557)
!1578 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !1557)
!1579 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !1557)
!1580 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !1557)
!1581 = !DILocation(line: 524, column: 2, scope: !1473, inlinedAt: !1555)
!1582 = !DILocation(line: 525, column: 20, scope: !1473, inlinedAt: !1555)
!1583 = !DILocation(line: 525, column: 10, scope: !1473, inlinedAt: !1555)
!1584 = !DILocation(line: 308, column: 9, scope: !1553, inlinedAt: !1427)
!1585 = !DILocation(line: 310, column: 37, scope: !1586, inlinedAt: !1427)
!1586 = distinct !DILexicalBlock(scope: !1548, file: !28, line: 310, column: 14)
!1587 = !DILocation(line: 310, column: 41, scope: !1586, inlinedAt: !1427)
!1588 = !DILocation(line: 310, column: 14, scope: !1586, inlinedAt: !1427)
!1589 = !DILocation(line: 0, scope: !1514, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 310, column: 14, scope: !1586, inlinedAt: !1427)
!1591 = !DILocation(line: 552, column: 12, scope: !1514, inlinedAt: !1590)
!1592 = !DILocation(line: 553, column: 9, scope: !1530, inlinedAt: !1590)
!1593 = !DILocation(line: 555, column: 38, scope: !1532, inlinedAt: !1590)
!1594 = !DILocation(line: 555, column: 2, scope: !1533, inlinedAt: !1590)
!1595 = !DILocation(line: 555, column: 25, scope: !1533, inlinedAt: !1590)
!1596 = !DILocation(line: 0, scope: !1533, inlinedAt: !1590)
!1597 = !DILocation(line: 557, column: 10, scope: !1538, inlinedAt: !1590)
!1598 = !DILocation(line: 557, column: 7, scope: !1539, inlinedAt: !1590)
!1599 = !DILocation(line: 556, column: 4, scope: !1532, inlinedAt: !1590)
!1600 = !DILocation(line: 556, column: 19, scope: !1532, inlinedAt: !1590)
!1601 = distinct !{!1601, !1594, !1602, !338, !339}
!1602 = !DILocation(line: 561, column: 2, scope: !1533, inlinedAt: !1590)
!1603 = distinct !{!1603, !1546, !1604, !338, !339}
!1604 = !DILocation(line: 312, column: 3, scope: !1463, inlinedAt: !1427)
!1605 = !DILocation(line: 316, column: 1, scope: !1417, inlinedAt: !1427)
!1606 = !DILocation(line: 316, column: 13, scope: !1607, inlinedAt: !1427)
!1607 = distinct !DILexicalBlock(scope: !1417, file: !28, line: 316, column: 13)
!1608 = !DILocation(line: 316, column: 13, scope: !1417, inlinedAt: !1427)
!1609 = !DILocation(line: 317, column: 8, scope: !1610, inlinedAt: !1427)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !28, line: 316, column: 20)
!1611 = !DILocation(line: 318, column: 7, scope: !1612, inlinedAt: !1427)
!1612 = distinct !DILexicalBlock(scope: !1610, file: !28, line: 318, column: 7)
!1613 = !DILocation(line: 318, column: 7, scope: !1610, inlinedAt: !1427)
!1614 = !DILocation(line: 319, column: 8, scope: !1615, inlinedAt: !1427)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !28, line: 319, column: 8)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !28, line: 318, column: 35)
!1617 = !DILocalVariable(name: "ap", arg: 1, scope: !1618, file: !28, line: 593, type: !128)
!1618 = distinct !DISubprogram(name: "atom_in_res_pat", scope: !28, file: !28, line: 593, type: !1378, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1619)
!1619 = !{!1617, !1620, !1621}
!1620 = !DILocalVariable(name: "pat", arg: 2, scope: !1618, file: !28, line: 593, type: !29)
!1621 = !DILocalVariable(name: "res", scope: !1618, file: !28, line: 595, type: !82)
!1622 = !DILocation(line: 0, scope: !1618, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 319, column: 8, scope: !1615, inlinedAt: !1427)
!1624 = !DILocation(line: 0, scope: !587, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 598, column: 2, scope: !1618, inlinedAt: !1623)
!1626 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !1625)
!1627 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !1625)
!1628 = !DILocation(line: 0, scope: !598, inlinedAt: !1625)
!1629 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !1625)
!1630 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1625)
!1631 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !1625)
!1632 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !1625)
!1633 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !1625)
!1634 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !1625)
!1635 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !1625)
!1636 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !1625)
!1637 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !1625)
!1638 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !1625)
!1639 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !1625)
!1640 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !1625)
!1641 = !DILocation(line: 0, scope: !605, inlinedAt: !1625)
!1642 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !1625)
!1643 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !1625)
!1644 = distinct !{!1644, !1630, !1645, !338, !339}
!1645 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !1625)
!1646 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !1625)
!1647 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !1625)
!1648 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !1625)
!1649 = !DILocation(line: 603, column: 2, scope: !1618, inlinedAt: !1623)
!1650 = !DILocation(line: 604, column: 21, scope: !1618, inlinedAt: !1623)
!1651 = !DILocation(line: 604, column: 10, scope: !1618, inlinedAt: !1623)
!1652 = !DILocation(line: 319, column: 8, scope: !1616, inlinedAt: !1427)
!1653 = !DILocation(line: 321, column: 36, scope: !1654, inlinedAt: !1427)
!1654 = distinct !DILexicalBlock(scope: !1612, file: !28, line: 321, column: 13)
!1655 = !DILocation(line: 321, column: 40, scope: !1654, inlinedAt: !1427)
!1656 = !DILocation(line: 321, column: 13, scope: !1654, inlinedAt: !1427)
!1657 = !DILocalVariable(name: "ap", arg: 1, scope: !1658, file: !28, line: 626, type: !128)
!1658 = distinct !DISubprogram(name: "atom_in_res_range", scope: !28, file: !28, line: 626, type: !1515, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!1659 = !{!1657, !1660, !1661, !1662, !1663, !1664, !1665, !1666}
!1660 = !DILocalVariable(name: "lo", arg: 2, scope: !1658, file: !28, line: 626, type: !23)
!1661 = !DILocalVariable(name: "hi", arg: 3, scope: !1658, file: !28, line: 626, type: !23)
!1662 = !DILocalVariable(name: "r", scope: !1658, file: !28, line: 628, type: !23)
!1663 = !DILocalVariable(name: "rhi", scope: !1658, file: !28, line: 628, type: !23)
!1664 = !DILocalVariable(name: "sp", scope: !1658, file: !28, line: 629, type: !65)
!1665 = !DILocalVariable(name: "res", scope: !1658, file: !28, line: 630, type: !82)
!1666 = !DILocalVariable(name: "res1", scope: !1658, file: !28, line: 630, type: !82)
!1667 = !DILocation(line: 0, scope: !1658, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 321, column: 13, scope: !1654, inlinedAt: !1427)
!1669 = !DILocation(line: 633, column: 12, scope: !1658, inlinedAt: !1668)
!1670 = !DILocation(line: 635, column: 13, scope: !1658, inlinedAt: !1668)
!1671 = !DILocation(line: 635, column: 8, scope: !1658, inlinedAt: !1668)
!1672 = !DILocation(line: 636, column: 7, scope: !1673, inlinedAt: !1668)
!1673 = distinct !DILexicalBlock(scope: !1658, file: !28, line: 636, column: 2)
!1674 = !DILocation(line: 636, column: 16, scope: !1675, inlinedAt: !1668)
!1675 = distinct !DILexicalBlock(scope: !1673, file: !28, line: 636, column: 2)
!1676 = !DILocation(line: 0, scope: !1673, inlinedAt: !1668)
!1677 = !DILocation(line: 636, column: 2, scope: !1673, inlinedAt: !1668)
!1678 = !DILocation(line: 637, column: 14, scope: !1679, inlinedAt: !1668)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !28, line: 636, column: 40)
!1680 = !DILocation(line: 637, column: 10, scope: !1679, inlinedAt: !1668)
!1681 = !DILocation(line: 638, column: 11, scope: !1682, inlinedAt: !1668)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !28, line: 638, column: 7)
!1683 = !DILocation(line: 638, column: 7, scope: !1679, inlinedAt: !1668)
!1684 = distinct !{!1684, !1677, !1685, !338, !339}
!1685 = !DILocation(line: 642, column: 2, scope: !1673, inlinedAt: !1668)
!1686 = !DILocation(line: 323, column: 16, scope: !1610, inlinedAt: !1427)
!1687 = !DILocation(line: 323, column: 3, scope: !1610, inlinedAt: !1427)
!1688 = !DILocation(line: 324, column: 8, scope: !1689, inlinedAt: !1427)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !28, line: 324, column: 8)
!1690 = distinct !DILexicalBlock(scope: !1610, file: !28, line: 323, column: 38)
!1691 = !DILocation(line: 324, column: 8, scope: !1690, inlinedAt: !1427)
!1692 = !DILocation(line: 325, column: 9, scope: !1693, inlinedAt: !1427)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !28, line: 325, column: 9)
!1694 = distinct !DILexicalBlock(scope: !1689, file: !28, line: 324, column: 36)
!1695 = !DILocation(line: 0, scope: !1618, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 325, column: 9, scope: !1693, inlinedAt: !1427)
!1697 = !DILocation(line: 0, scope: !587, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 598, column: 2, scope: !1618, inlinedAt: !1696)
!1699 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !1698)
!1700 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !1698)
!1701 = !DILocation(line: 0, scope: !598, inlinedAt: !1698)
!1702 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !1698)
!1703 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1698)
!1704 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !1698)
!1705 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !1698)
!1706 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !1698)
!1707 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !1698)
!1708 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !1698)
!1709 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !1698)
!1710 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !1698)
!1711 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !1698)
!1712 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !1698)
!1713 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !1698)
!1714 = !DILocation(line: 0, scope: !605, inlinedAt: !1698)
!1715 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !1698)
!1716 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !1698)
!1717 = distinct !{!1717, !1703, !1718, !338, !339}
!1718 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !1698)
!1719 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !1698)
!1720 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !1698)
!1721 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !1698)
!1722 = !DILocation(line: 603, column: 2, scope: !1618, inlinedAt: !1696)
!1723 = !DILocation(line: 604, column: 21, scope: !1618, inlinedAt: !1696)
!1724 = !DILocation(line: 604, column: 10, scope: !1618, inlinedAt: !1696)
!1725 = !DILocation(line: 325, column: 9, scope: !1694, inlinedAt: !1427)
!1726 = !DILocation(line: 327, column: 37, scope: !1727, inlinedAt: !1427)
!1727 = distinct !DILexicalBlock(scope: !1689, file: !28, line: 327, column: 14)
!1728 = !DILocation(line: 327, column: 41, scope: !1727, inlinedAt: !1427)
!1729 = !DILocation(line: 327, column: 14, scope: !1727, inlinedAt: !1427)
!1730 = !DILocation(line: 0, scope: !1658, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 327, column: 14, scope: !1727, inlinedAt: !1427)
!1732 = !DILocation(line: 633, column: 12, scope: !1658, inlinedAt: !1731)
!1733 = !DILocation(line: 635, column: 13, scope: !1658, inlinedAt: !1731)
!1734 = !DILocation(line: 635, column: 8, scope: !1658, inlinedAt: !1731)
!1735 = !DILocation(line: 636, column: 7, scope: !1673, inlinedAt: !1731)
!1736 = !DILocation(line: 636, column: 16, scope: !1675, inlinedAt: !1731)
!1737 = !DILocation(line: 0, scope: !1673, inlinedAt: !1731)
!1738 = !DILocation(line: 636, column: 2, scope: !1673, inlinedAt: !1731)
!1739 = !DILocation(line: 637, column: 14, scope: !1679, inlinedAt: !1731)
!1740 = !DILocation(line: 637, column: 10, scope: !1679, inlinedAt: !1731)
!1741 = !DILocation(line: 638, column: 11, scope: !1682, inlinedAt: !1731)
!1742 = !DILocation(line: 638, column: 7, scope: !1679, inlinedAt: !1731)
!1743 = distinct !{!1743, !1738, !1744, !338, !339}
!1744 = !DILocation(line: 642, column: 2, scope: !1673, inlinedAt: !1731)
!1745 = distinct !{!1745, !1687, !1746, !338, !339}
!1746 = !DILocation(line: 329, column: 3, scope: !1610, inlinedAt: !1427)
!1747 = !DILocation(line: 333, column: 1, scope: !1417, inlinedAt: !1427)
!1748 = !DILocation(line: 333, column: 13, scope: !1749, inlinedAt: !1427)
!1749 = distinct !DILexicalBlock(scope: !1417, file: !28, line: 333, column: 13)
!1750 = !DILocation(line: 333, column: 13, scope: !1417, inlinedAt: !1427)
!1751 = !DILocation(line: 334, column: 8, scope: !1752, inlinedAt: !1427)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !28, line: 333, column: 20)
!1753 = !DILocation(line: 335, column: 7, scope: !1754, inlinedAt: !1427)
!1754 = distinct !DILexicalBlock(scope: !1752, file: !28, line: 335, column: 7)
!1755 = !DILocation(line: 335, column: 7, scope: !1752, inlinedAt: !1427)
!1756 = !DILocalVariable(name: "ap", arg: 1, scope: !1757, file: !28, line: 682, type: !128)
!1757 = distinct !DISubprogram(name: "atom_in_atom_pat", scope: !28, file: !28, line: 682, type: !1378, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!1758 = !{!1756, !1759}
!1759 = !DILocalVariable(name: "pat", arg: 2, scope: !1757, file: !28, line: 682, type: !29)
!1760 = !DILocation(line: 0, scope: !1757, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 336, column: 8, scope: !1762, inlinedAt: !1427)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !28, line: 336, column: 8)
!1763 = distinct !DILexicalBlock(scope: !1754, file: !28, line: 335, column: 35)
!1764 = !DILocation(line: 0, scope: !587, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 685, column: 2, scope: !1757, inlinedAt: !1761)
!1766 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !1765)
!1767 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !1765)
!1768 = !DILocation(line: 0, scope: !598, inlinedAt: !1765)
!1769 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !1765)
!1770 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1765)
!1771 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !1765)
!1772 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !1765)
!1773 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !1765)
!1774 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !1765)
!1775 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !1765)
!1776 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !1765)
!1777 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !1765)
!1778 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !1765)
!1779 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !1765)
!1780 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !1765)
!1781 = !DILocation(line: 0, scope: !605, inlinedAt: !1765)
!1782 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !1765)
!1783 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !1765)
!1784 = distinct !{!1784, !1770, !1785, !338, !339}
!1785 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !1765)
!1786 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !1765)
!1787 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !1765)
!1788 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !1765)
!1789 = !DILocation(line: 690, column: 2, scope: !1757, inlinedAt: !1761)
!1790 = !DILocation(line: 691, column: 20, scope: !1757, inlinedAt: !1761)
!1791 = !DILocation(line: 691, column: 10, scope: !1757, inlinedAt: !1761)
!1792 = !DILocation(line: 336, column: 8, scope: !1762, inlinedAt: !1427)
!1793 = !DILocation(line: 336, column: 8, scope: !1763, inlinedAt: !1427)
!1794 = !DILocation(line: 342, column: 16, scope: !1752, inlinedAt: !1427)
!1795 = !DILocation(line: 342, column: 3, scope: !1752, inlinedAt: !1427)
!1796 = !DILocation(line: 343, column: 8, scope: !1797, inlinedAt: !1427)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !28, line: 343, column: 8)
!1798 = distinct !DILexicalBlock(scope: !1752, file: !28, line: 342, column: 38)
!1799 = !DILocation(line: 343, column: 8, scope: !1798, inlinedAt: !1427)
!1800 = !DILocation(line: 0, scope: !1757, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 344, column: 9, scope: !1802, inlinedAt: !1427)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !28, line: 344, column: 9)
!1803 = distinct !DILexicalBlock(scope: !1797, file: !28, line: 343, column: 36)
!1804 = !DILocation(line: 0, scope: !587, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 685, column: 2, scope: !1757, inlinedAt: !1801)
!1806 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !1805)
!1807 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !1805)
!1808 = !DILocation(line: 0, scope: !598, inlinedAt: !1805)
!1809 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !1805)
!1810 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1805)
!1811 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !1805)
!1812 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !1805)
!1813 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !1805)
!1814 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !1805)
!1815 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !1805)
!1816 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !1805)
!1817 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !1805)
!1818 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !1805)
!1819 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !1805)
!1820 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !1805)
!1821 = !DILocation(line: 0, scope: !605, inlinedAt: !1805)
!1822 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !1805)
!1823 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !1805)
!1824 = distinct !{!1824, !1810, !1825, !338, !339}
!1825 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !1805)
!1826 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !1805)
!1827 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !1805)
!1828 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !1805)
!1829 = !DILocation(line: 690, column: 2, scope: !1757, inlinedAt: !1801)
!1830 = !DILocation(line: 691, column: 20, scope: !1757, inlinedAt: !1801)
!1831 = !DILocation(line: 691, column: 10, scope: !1757, inlinedAt: !1801)
!1832 = !DILocation(line: 344, column: 9, scope: !1802, inlinedAt: !1427)
!1833 = !DILocation(line: 344, column: 9, scope: !1803, inlinedAt: !1427)
!1834 = distinct !{!1834, !1795, !1835, !338, !339}
!1835 = !DILocation(line: 350, column: 3, scope: !1752, inlinedAt: !1427)
!1836 = !DILocation(line: 0, scope: !1752, inlinedAt: !1427)
!1837 = !DILocation(line: 355, column: 1, scope: !1417, inlinedAt: !1427)
!1838 = !DILocation(line: 156, column: 7, scope: !1395)
!1839 = !DILocation(line: 159, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1395, file: !28, line: 159, column: 7)
!1841 = !DILocation(line: 159, column: 7, scope: !1395)
!1842 = !DILocation(line: 160, column: 12, scope: !1840)
!1843 = !DILocation(line: 163, column: 1, scope: !1377)
!1844 = distinct !DISubprogram(name: "set_attr_if", scope: !28, file: !28, line: 165, type: !644, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1845)
!1845 = !{!1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853}
!1846 = !DILocalVariable(name: "mol", arg: 1, scope: !1844, file: !28, line: 165, type: !50)
!1847 = !DILocalVariable(name: "attr", arg: 2, scope: !1844, file: !28, line: 165, type: !23)
!1848 = !DILocalVariable(name: "i_attr", arg: 3, scope: !1844, file: !28, line: 165, type: !23)
!1849 = !DILocalVariable(name: "a", scope: !1844, file: !28, line: 167, type: !23)
!1850 = !DILocalVariable(name: "r", scope: !1844, file: !28, line: 167, type: !23)
!1851 = !DILocalVariable(name: "sp", scope: !1844, file: !28, line: 168, type: !65)
!1852 = !DILocalVariable(name: "res", scope: !1844, file: !28, line: 169, type: !82)
!1853 = !DILocalVariable(name: "ap", scope: !1844, file: !28, line: 170, type: !128)
!1854 = !DILocation(line: 0, scope: !1844)
!1855 = !DILocation(line: 172, column: 17, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1844, file: !28, line: 172, column: 2)
!1857 = !DILocation(line: 0, scope: !1856)
!1858 = !DILocation(line: 172, column: 2, scope: !1856)
!1859 = !DILocation(line: 173, column: 23, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !28, line: 172, column: 49)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !28, line: 172, column: 2)
!1862 = !DILocation(line: 173, column: 30, scope: !1860)
!1863 = !DILocation(line: 173, column: 17, scope: !1860)
!1864 = !DILocation(line: 173, column: 14, scope: !1860)
!1865 = !DILocation(line: 174, column: 17, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !28, line: 174, column: 3)
!1867 = distinct !DILexicalBlock(scope: !1860, file: !28, line: 174, column: 3)
!1868 = !DILocation(line: 174, column: 3, scope: !1867)
!1869 = !DILocation(line: 175, column: 10, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !28, line: 174, column: 41)
!1871 = !DILocation(line: 176, column: 26, scope: !1870)
!1872 = !DILocation(line: 176, column: 33, scope: !1870)
!1873 = !DILocation(line: 176, column: 19, scope: !1870)
!1874 = !DILocation(line: 176, column: 16, scope: !1870)
!1875 = !DILocation(line: 178, column: 18, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !28, line: 178, column: 4)
!1877 = distinct !DILexicalBlock(scope: !1870, file: !28, line: 178, column: 4)
!1878 = !DILocation(line: 178, column: 4, scope: !1877)
!1879 = !DILocation(line: 180, column: 25, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !28, line: 178, column: 40)
!1881 = !DILocation(line: 180, column: 32, scope: !1880)
!1882 = !DILocation(line: 180, column: 19, scope: !1880)
!1883 = !DILocation(line: 180, column: 16, scope: !1880)
!1884 = !DILocation(line: 178, column: 36, scope: !1876)
!1885 = distinct !{!1885, !1878, !1886, !338, !339}
!1886 = !DILocation(line: 182, column: 4, scope: !1877)
!1887 = !DILocation(line: 174, column: 37, scope: !1866)
!1888 = distinct !{!1888, !1868, !1889, !338, !339}
!1889 = !DILocation(line: 183, column: 3, scope: !1867)
!1890 = !DILocation(line: 172, column: 41, scope: !1861)
!1891 = distinct !{!1891, !1858, !1892, !338, !339}
!1892 = !DILocation(line: 184, column: 2, scope: !1856)
!1893 = !DILocation(line: 185, column: 1, scope: !1844)
!1894 = distinct !DISubprogram(name: "clear_attr", scope: !28, file: !28, line: 187, type: !1895, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !50, !23}
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903}
!1898 = !DILocalVariable(name: "mol", arg: 1, scope: !1894, file: !28, line: 187, type: !50)
!1899 = !DILocalVariable(name: "attr", arg: 2, scope: !1894, file: !28, line: 187, type: !23)
!1900 = !DILocalVariable(name: "a", scope: !1894, file: !28, line: 189, type: !23)
!1901 = !DILocalVariable(name: "r", scope: !1894, file: !28, line: 189, type: !23)
!1902 = !DILocalVariable(name: "sp", scope: !1894, file: !28, line: 190, type: !65)
!1903 = !DILocalVariable(name: "res", scope: !1894, file: !28, line: 191, type: !82)
!1904 = !DILocation(line: 0, scope: !1894)
!1905 = !DILocation(line: 193, column: 17, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1894, file: !28, line: 193, column: 2)
!1907 = !DILocation(line: 0, scope: !1906)
!1908 = !DILocation(line: 193, column: 2, scope: !1906)
!1909 = !DILocation(line: 194, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !28, line: 193, column: 49)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !28, line: 193, column: 2)
!1912 = !DILocation(line: 194, column: 14, scope: !1910)
!1913 = !DILocation(line: 195, column: 17, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !28, line: 195, column: 3)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !28, line: 195, column: 3)
!1916 = !DILocation(line: 195, column: 3, scope: !1915)
!1917 = !DILocation(line: 196, column: 10, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !28, line: 195, column: 41)
!1919 = !DILocation(line: 197, column: 9, scope: !1918)
!1920 = !DILocation(line: 197, column: 16, scope: !1918)
!1921 = !DILocation(line: 198, column: 18, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !28, line: 198, column: 4)
!1923 = distinct !DILexicalBlock(scope: !1918, file: !28, line: 198, column: 4)
!1924 = !DILocation(line: 198, column: 4, scope: !1923)
!1925 = !DILocation(line: 199, column: 23, scope: !1922)
!1926 = !DILocation(line: 199, column: 30, scope: !1922)
!1927 = !DILocation(line: 198, column: 36, scope: !1922)
!1928 = distinct !{!1928, !1924, !1929, !338, !339}
!1929 = !DILocation(line: 199, column: 34, scope: !1923)
!1930 = !DILocation(line: 195, column: 37, scope: !1914)
!1931 = distinct !{!1931, !1916, !1932, !338, !339}
!1932 = !DILocation(line: 200, column: 3, scope: !1915)
!1933 = !DILocation(line: 193, column: 41, scope: !1911)
!1934 = distinct !{!1934, !1908, !1935, !338, !339}
!1935 = !DILocation(line: 201, column: 2, scope: !1906)
!1936 = !DILocation(line: 202, column: 1, scope: !1894)
!1937 = !DILocation(line: 0, scope: !676)
!1938 = !DILocation(line: 362, column: 7, scope: !690)
!1939 = !DILocation(line: 362, column: 24, scope: !690)
!1940 = !DILocation(line: 364, column: 6, scope: !695)
!1941 = !DILocation(line: 364, column: 6, scope: !676)
!1942 = !DILocation(line: 365, column: 28, scope: !698)
!1943 = !DILocation(line: 366, column: 13, scope: !698)
!1944 = !DILocation(line: 366, column: 19, scope: !698)
!1945 = !DILocation(line: 366, column: 25, scope: !698)
!1946 = !DILocation(line: 365, column: 46, scope: !698)
!1947 = !DILocation(line: 365, column: 3, scope: !699)
!1948 = distinct !{!1948, !1947, !1949, !338, !339}
!1949 = !DILocation(line: 366, column: 27, scope: !699)
!1950 = !DILocation(line: 367, column: 7, scope: !700)
!1951 = !DILocation(line: 368, column: 8, scope: !712)
!1952 = !DILocation(line: 368, column: 7, scope: !700)
!1953 = !DILocation(line: 369, column: 8, scope: !711)
!1954 = !DILocation(line: 370, column: 4, scope: !711)
!1955 = !DILocation(line: 372, column: 6, scope: !715)
!1956 = !DILocation(line: 373, column: 8, scope: !717)
!1957 = !DILocation(line: 372, column: 4, scope: !715)
!1958 = !DILocation(line: 0, scope: !700)
!1959 = !DILocation(line: 373, column: 7, scope: !700)
!1960 = !DILocation(line: 374, column: 8, scope: !971)
!1961 = !DILocation(line: 375, column: 4, scope: !971)
!1962 = !DILocation(line: 376, column: 14, scope: !722)
!1963 = !DILocation(line: 376, column: 13, scope: !717)
!1964 = !DILocation(line: 378, column: 17, scope: !725)
!1965 = !DILocation(line: 379, column: 13, scope: !725)
!1966 = !DILocation(line: 379, column: 19, scope: !725)
!1967 = !DILocation(line: 379, column: 25, scope: !725)
!1968 = !DILocation(line: 378, column: 35, scope: !725)
!1969 = !DILocation(line: 378, column: 3, scope: !726)
!1970 = distinct !{!1970, !1969, !1971, !338, !339}
!1971 = !DILocation(line: 379, column: 27, scope: !726)
!1972 = !DILocation(line: 380, column: 7, scope: !700)
!1973 = !DILocation(line: 381, column: 11, scope: !700)
!1974 = !DILocation(line: 381, column: 9, scope: !700)
!1975 = !DILocation(line: 381, column: 3, scope: !700)
!1976 = !DILocation(line: 383, column: 7, scope: !735)
!1977 = !DILocation(line: 384, column: 9, scope: !735)
!1978 = !DILocation(line: 386, column: 7, scope: !738)
!1979 = !DILocation(line: 386, column: 6, scope: !676)
!1980 = !DILocation(line: 387, column: 7, scope: !988)
!1981 = !DILocation(line: 388, column: 3, scope: !988)
!1982 = !DILocation(line: 389, column: 12, scope: !741)
!1983 = !DILocation(line: 389, column: 12, scope: !738)
!1984 = !DILocation(line: 390, column: 17, scope: !745)
!1985 = !DILocation(line: 391, column: 13, scope: !745)
!1986 = !DILocation(line: 391, column: 19, scope: !745)
!1987 = !DILocation(line: 391, column: 25, scope: !745)
!1988 = !DILocation(line: 390, column: 35, scope: !745)
!1989 = !DILocation(line: 390, column: 3, scope: !746)
!1990 = distinct !{!1990, !1989, !1991, !338, !339}
!1991 = !DILocation(line: 391, column: 27, scope: !746)
!1992 = !DILocation(line: 392, column: 7, scope: !747)
!1993 = !DILocation(line: 393, column: 11, scope: !747)
!1994 = !DILocation(line: 393, column: 9, scope: !747)
!1995 = !DILocation(line: 393, column: 3, scope: !747)
!1996 = !DILocation(line: 396, column: 1, scope: !676)
!1997 = !DILocation(line: 0, scope: !1169)
!1998 = !DILocation(line: 0, scope: !587, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 653, column: 2, scope: !1169)
!2000 = !DILocation(line: 700, column: 9, scope: !587, inlinedAt: !1999)
!2001 = !DILocation(line: 701, column: 7, scope: !598, inlinedAt: !1999)
!2002 = !DILocation(line: 0, scope: !598, inlinedAt: !1999)
!2003 = !DILocation(line: 701, column: 20, scope: !601, inlinedAt: !1999)
!2004 = !DILocation(line: 701, column: 2, scope: !598, inlinedAt: !1999)
!2005 = !DILocation(line: 703, column: 8, scope: !604, inlinedAt: !1999)
!2006 = !DILocation(line: 703, column: 11, scope: !604, inlinedAt: !1999)
!2007 = !DILocation(line: 704, column: 8, scope: !604, inlinedAt: !1999)
!2008 = !DILocation(line: 704, column: 11, scope: !604, inlinedAt: !1999)
!2009 = !DILocation(line: 705, column: 3, scope: !604, inlinedAt: !1999)
!2010 = !DILocation(line: 706, column: 8, scope: !612, inlinedAt: !1999)
!2011 = !DILocation(line: 706, column: 11, scope: !612, inlinedAt: !1999)
!2012 = !DILocation(line: 706, column: 4, scope: !612, inlinedAt: !1999)
!2013 = !DILocation(line: 708, column: 8, scope: !612, inlinedAt: !1999)
!2014 = !DILocation(line: 708, column: 11, scope: !612, inlinedAt: !1999)
!2015 = !DILocation(line: 0, scope: !605, inlinedAt: !1999)
!2016 = !DILocation(line: 701, column: 29, scope: !601, inlinedAt: !1999)
!2017 = !DILocation(line: 701, column: 2, scope: !601, inlinedAt: !1999)
!2018 = distinct !{!2018, !2004, !2019, !338, !339}
!2019 = !DILocation(line: 709, column: 2, scope: !598, inlinedAt: !1999)
!2020 = !DILocation(line: 710, column: 6, scope: !587, inlinedAt: !1999)
!2021 = !DILocation(line: 710, column: 9, scope: !587, inlinedAt: !1999)
!2022 = !DILocation(line: 711, column: 7, scope: !587, inlinedAt: !1999)
!2023 = !DILocation(line: 657, column: 2, scope: !1169)
!2024 = !DILocation(line: 659, column: 17, scope: !1206)
!2025 = !DILocation(line: 0, scope: !1206)
!2026 = !DILocation(line: 659, column: 2, scope: !1206)
!2027 = !DILocation(line: 660, column: 23, scope: !1209)
!2028 = !DILocation(line: 660, column: 17, scope: !1209)
!2029 = !DILocation(line: 660, column: 7, scope: !1210)
!2030 = !DILocation(line: 661, column: 24, scope: !1215)
!2031 = !DILocation(line: 661, column: 18, scope: !1215)
!2032 = !DILocation(line: 661, column: 4, scope: !1216)
!2033 = !DILocation(line: 662, column: 15, scope: !1221)
!2034 = !DILocation(line: 662, column: 11, scope: !1221)
!2035 = !DILocation(line: 663, column: 26, scope: !1224)
!2036 = !DILocation(line: 663, column: 19, scope: !1224)
!2037 = !DILocation(line: 663, column: 9, scope: !1221)
!2038 = !DILocation(line: 664, column: 27, scope: !1228)
!2039 = !DILocation(line: 664, column: 20, scope: !1228)
!2040 = !DILocation(line: 664, column: 6, scope: !1229)
!2041 = !DILocation(line: 665, column: 18, scope: !1234)
!2042 = !DILocation(line: 672, column: 20, scope: !1234)
!2043 = !DILocation(line: 672, column: 11, scope: !1234)
!2044 = !DILocation(line: 671, column: 11, scope: !1234)
!2045 = !DILocation(line: 671, column: 18, scope: !1234)
!2046 = !DILocation(line: 664, column: 38, scope: !1228)
!2047 = distinct !{!2047, !2040, !2048, !338, !339}
!2048 = !DILocation(line: 675, column: 6, scope: !1229)
!2049 = !DILocation(line: 661, column: 38, scope: !1215)
!2050 = distinct !{!2050, !2032, !2051, !338, !339}
!2051 = !DILocation(line: 677, column: 4, scope: !1216)
!2052 = !DILocation(line: 659, column: 41, scope: !1211)
!2053 = distinct !{!2053, !2026, !2054, !338, !339}
!2054 = !DILocation(line: 679, column: 2, scope: !1206)
!2055 = !DILocation(line: 680, column: 1, scope: !1169)
!2056 = !DISubprogram(name: "compile", scope: !2057, file: !2057, line: 257, type: !2058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2060)
!2057 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nab.h", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "f1f252a022b516b509b78822fbdfd484")
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!29, !29, !29, !29, !23}
!2060 = !{}
!2061 = !DISubprogram(name: "step", scope: !2057, file: !2057, line: 258, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2060)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!23, !29, !29}
